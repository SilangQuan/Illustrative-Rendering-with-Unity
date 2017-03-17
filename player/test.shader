Shader "Custom/TF2" {
	Properties{
		_MainTex("Base (RGB)", 2D) = "white" {}
		_RampTex("Ramp Tex (RGB)", 2D) = "white" {}
		_DiffuseCubeMap("Diffuse Convolution Cubemap", Cube) = ""{}
		_Amount("Diffuse Amount", Range(-10,10)) = 1

		_RimColor("Rim Color", Color) = (0.26,0.19,0.16,0.0)
		_RimPower("Rim Power", Range(0.5,8.0)) = 3.0

		_SpecularColor("Specular Color", Color) = (1,1,1,1)
		_SpecularPower("Specular Power", Range(-50, 50)) = 1
		_SpecularFresnel("Specular Fresnel Value", Range(0,1)) = 0.28
	}
		SubShader{
		Tags{ "RenderType" = "Opaque" }
		LOD 200

		CGPROGRAM
#pragma surface surf NoLight  
#pragma target 3.0 
	samplerCUBE _DiffuseCubeMap;
	sampler2D _MainTex;
	sampler2D _RampTex;
	float _Amount;


	float4 _RimColor;
	float _RimPower;
	float _RimFresnel;
	float4 _SpecularColor;
	float _SpecularPower;
	float _SpecularFresnel;

	inline float CalcFresnel(float3 viewDir, float3 h, float fresnelValue)
	{
		float fresnel = pow(1.0 - dot(viewDir, h), 5.0);
		fresnel += fresnelValue * (1.0 - fresnel);
		return fresnel;
	}


	inline float4 LightingNoLight(SurfaceOutput s, fixed3 lightDir, half3 viewDir, fixed3 atten)
	{
		//Specular term
		float3 halfVector = normalize(lightDir + viewDir);
		float3 specBase = pow(saturate(dot(halfVector, s.Normal)), _SpecularPower);// *s.Specular * specFresnel;
		float fresnel = 1.0 - dot(viewDir, halfVector);
		fresnel = pow(fresnel, 5.0);
		fresnel += _SpecularFresnel * (1.0 - fresnel);

		//float3 finalSpec = _SpecularColor * spec* fresnel;;
		float3 finalSpec = specBase * fresnel * _LightColor0.rgb;

		//wrapped diffuse term
		half NdotL = dot(s.Normal, lightDir);
		float diff = NdotL * 0.5 + 0.5;
		half3 ramp = tex2D(_RampTex, float2(diff, diff)).rgb;

		//ambientCube term
		float3 ambientCube = texCUBE(_DiffuseCubeMap, s.Normal).rgb * _Amount;

		half4 c;
		//c.rgb = finalSpec * _LightColor0.rgb;
		c.rgb = s.Albedo * _LightColor0.rgb * ramp * (atten * 2) * ambientCube + finalSpec * _LightColor0.rgb;
		//c.rgb = finalSpec * _LightColor0.rgb;
		//c.rgb =  s.Normal;
		//c.rgb =  finalSpec;
		c.a = s.Alpha;
		return c;
	}


	struct Input {
		float2 uv_MainTex;
		float3 viewDir;
		INTERNAL_DATA
	};

	void surf(Input IN, inout SurfaceOutput o) {
		half4 c = tex2D(_MainTex, IN.uv_MainTex);
		o.Albedo = c.rgb;
		//rim light term
		half rim = 1.0 - saturate(dot(normalize(IN.viewDir), o.Normal));
		o.Emission = _RimColor.rgb * pow(rim, _RimPower) * 0.5;
		//o.Albedo = float3(0,0,0);
		o.Alpha = c.a;
	}
	ENDCG
	}
		FallBack "Diffuse"
}