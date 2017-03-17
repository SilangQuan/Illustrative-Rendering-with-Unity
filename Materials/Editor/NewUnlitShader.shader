Shader "Cell Shading/Team Fortress 2"
{
	Properties
	{
		_DiffTex("Diffuse Texture", 2D) = "white" {}
	_NormalMap("Normal Map", 2D) = "bump" {}
	_RampTex("Ramp Texture", 2D) = "white" {}
	_SpecExp("Specular Exponent", Range(0.1, 150)) = 20.0
		_SpecBoost("Specular Boost", Float) = 0.3
		_RimExp("Rim Light Exponent", Range(0.1, 150)) = 4.0
		_RimBoost("Rim Light Boost", Float) = 2.0
	}

		Subshader
	{
		Pass
	{

		Tags{ "LightMode" = "ForwardBase" }

		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#pragma multi_compile_fwdbase
#include "AutoLight.cginc"
#include "UnityCG.cginc"

		// Properties
		uniform sampler2D _DiffTex;
	uniform float4 _DiffTex_ST;
	uniform sampler2D _NormalMap;
	uniform float4 _NormalMap_ST;
	uniform sampler2D _RampTex;
	uniform float _SpecExp;
	uniform float _SpecBoost;
	uniform float _RimExp;
	uniform float _RimBoost;

	// Unity
	uniform float4 _LightColor0;

	struct a2v
	{
		float4 vertex : POSITION;
		float3 normal : NORMAL;
		float4 tangent : TANGENT;
		float4 texcoord : TEXCOORD0;
	};

	struct v2f
	{
		float4 pos : SV_POSITION;
		float4 tex : TEXCOORD0;
		float3 posWorld : TEXCOORD1;
		float3 normal : TEXCOORD2;
		float3 tangent : TEXCOORD3;
		float3 binormal : TEXCOORD4;
		float3 viewDir : TEXCOORD5;
		float3 lightDir : TEXCOORD6;
		LIGHTING_COORDS(7, 8)
	};

	v2f vert(a2v v)
	{
		v2f o;

		o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
		o.tex = v.texcoord;
		o.posWorld = mul(_Object2World, v.vertex);

		o.normal = mul(float4(v.normal, 0.0), _World2Object).xyz;
		o.tangent = mul(_Object2World, v.tangent).xyz;
		float tangentSign = v.tangent.w * unity_WorldTransformParams.w;
		o.binormal = cross(o.normal, o.tangent) * tangentSign;
		o.viewDir = _WorldSpaceCameraPos.xyz - o.posWorld;
		o.lightDir = UnityWorldSpaceLightDir(o.posWorld);

		TRANSFER_VERTEX_TO_FRAGMENT(o);

		return o;
	}

	float4 frag(v2f i) : COLOR
	{
		// Directions
		i.normal = normalize(i.normal);
	i.tangent = normalize(i.tangent);
	i.binormal = normalize(i.binormal);
	i.lightDir = normalize(i.lightDir);
	i.viewDir = normalize(i.viewDir);
	float3 reflViewDir = reflect(-i.viewDir, i.normal);
	float3 reflLightDir = reflect(-i.lightDir, i.normal);

	// Normal
	float3 normalTangentSpace = UnpackNormal(tex2D(_NormalMap, i.tex * _NormalMap_ST.xy + _NormalMap_ST.zw));
	float3x3 tangentToWorldSpace = float3x3(i.tangent, i.binormal, i.normal);
	float3 normal = mul(normalTangentSpace, tangentToWorldSpace);

	// Albedo
	float4 albedo = tex2D(_DiffTex, i.tex.xy * _DiffTex_ST.xy + _DiffTex_ST.zw);

	// Lighting
	float atten = LIGHT_ATTENUATION(i);

	//// Diffuse
	float nDotL = dot(normal, i.lightDir);
	float4 ramp = tex2D(_RampTex, float2(nDotL * 0.5 + 0.5, 0.5));
	float4 diffuse = atten * _LightColor0 * ramp;

	//// Specular
	float vDotR = max(0.0, dot(i.viewDir, reflLightDir));
	float4 specular = atten * _LightColor0 * _SpecBoost * pow(vDotR, _SpecExp);

	//// Rim
	float fr = pow(1 - max(0.0, dot(normal, i.viewDir)), 4);
	float rim = fr * _RimBoost * pow(vDotR, _RimExp);

	//// Dedicated Rim
	float4 drim = max(0.0, dot(normal, float3(0, 1, 0))) * fr * _RimBoost;

	float4 lighting = UNITY_LIGHTMODEL_AMBIENT + diffuse + specular + rim + drim;
	float4 final = albedo * lighting;
	return float4(final.rgb, 1.0);
	}

		ENDCG
	}

		Pass
	{
		Tags{ "LightMode" = "ForwardAdd" }
		Blend One One

		CGPROGRAM
#pragma vertex vert
#pragma fragment frag
#pragma multi_compile_fwdadd
#include "AutoLight.cginc"
#include "UnityCG.cginc"

		// Properties
		uniform sampler2D _DiffTex;
	uniform float4 _DiffTex_ST;
	uniform sampler2D _NormalMap;
	uniform float4 _NormalMap_ST;
	uniform sampler2D _RampTex;
	uniform float _SpecExp;
	uniform float _SpecBoost;
	uniform float _RimExp;
	uniform float _RimBoost;

	// Unity
	uniform float4 _LightColor0;

	struct a2v
	{
		float4 vertex : POSITION;
		float3 normal : NORMAL;
		float4 tangent : TANGENT;
		float4 texcoord : TEXCOORD0;
	};

	struct v2f
	{
		float4 pos : SV_POSITION;
		float4 tex : TEXCOORD0;
		float3 posWorld : TEXCOORD1;
		float3 normal : TEXCOORD2;
		float3 tangent : TEXCOORD3;
		float3 binormal : TEXCOORD4;
		float3 viewDir : TEXCOORD5;
		float3 lightDir : TEXCOORD6;
		LIGHTING_COORDS(7, 8)
	};

	v2f vert(a2v v)
	{
		v2f o;

		o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
		o.tex = v.texcoord;
		o.posWorld = mul(_Object2World, v.vertex);

		o.normal = mul(float4(v.normal, 0.0), _World2Object).xyz;
		o.tangent = mul(_Object2World, v.tangent).xyz;
		float tangentSign = v.tangent.w * unity_WorldTransformParams.w;
		o.binormal = cross(o.normal, o.tangent) * tangentSign;
		o.viewDir = _WorldSpaceCameraPos.xyz - o.posWorld;
		o.lightDir = UnityWorldSpaceLightDir(o.posWorld);

		TRANSFER_VERTEX_TO_FRAGMENT(o);

		return o;
	}

	float4 frag(v2f i) : COLOR
	{
		// Directions
		i.normal = normalize(i.normal);
	i.tangent = normalize(i.tangent);
	i.binormal = normalize(i.binormal);
	i.lightDir = normalize(i.lightDir);
	i.viewDir = normalize(i.viewDir);
	float3 reflViewDir = reflect(-i.viewDir, i.normal);
	float3 reflLightDir = reflect(-i.lightDir, i.normal);

	// Normal
	float3 normalTangentSpace = UnpackNormal(tex2D(_NormalMap, i.tex * _NormalMap_ST.xy + _NormalMap_ST.zw));
	float3x3 tangentToWorldSpace = float3x3(i.tangent, i.binormal, i.normal);
	float3 normal = mul(normalTangentSpace, tangentToWorldSpace);

	// Albedo
	float4 albedo = tex2D(_DiffTex, i.tex.xy * _DiffTex_ST.xy + _DiffTex_ST.zw);

	// Lighting
	float atten = LIGHT_ATTENUATION(i);

	//// Diffuse
	float nDotL = dot(normal, i.lightDir);
	float4 ramp = tex2D(_RampTex, float2(nDotL * 0.5 + 0.5, 0.5));
	float4 diffuse = atten * _LightColor0 * ramp;

	//// Specular
	float vDotR = max(0.0, dot(i.viewDir, reflLightDir));
	float4 specular = atten * _LightColor0 * _SpecBoost * pow(vDotR, _SpecExp);

	//// Rim
	float fr = pow(1 - max(0.0, dot(normal, i.viewDir)), 4);
	float rim = atten * fr * _RimBoost * pow(vDotR, _RimExp);

	float4 lighting = diffuse + specular + rim;
	float4 final = albedo * lighting;
	return float4(final.rgb, 1.0);
	}

		ENDCG
	}
	}
		Fallback "Diffuse"
}