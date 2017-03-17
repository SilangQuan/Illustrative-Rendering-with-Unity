//Maya ASCII 2012 scene
//Name: center_pose.ma
//Last modified: Wed, Mar 11, 2015 12:53:46 PM
//Codeset: 1252
file -rdi 1 -ns "Rig" -rfn "RigRN" "heavy_rig.ma";
file -rdi 2 -ns "Ref" -rfn "Rig:RefRN" "heavy_reference.ma";
file -r -ns "Rig" -dr 1 -rfn "RigRN" "heavy_rig.ma";
requires maya "2012";
requires "Mayatomr" "2012.0m - 3.9.1.47 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012";
fileInfo "cutIdentifier" "201109261253-811691";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.6222148430452137 91.380006487489595 237.23522281768891 ;
	setAttr ".r" -type "double3" -12.338352708250246 3.8000000001650882 4.9805666234328723e-017 ;
	setAttr ".rp" -type "double3" 1.4210854715202004e-014 0 0 ;
	setAttr ".rpt" -type "double3" 8.5804223103621576e-016 -2.5728382093157222e-016 
		-1.1826310466235381e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 256.01030266640487;
	setAttr ".ow" 251.1443960568655;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -5.2227597220513147 57.417917352064926 13.050129643576199 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.2969448017962693 36.167025022127092 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 156.75470299812432;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RigRN";
	setAttr ".fn[0]" -type "string" "Z:/tf2/external/player/heavy/heavy_rig.ma";
	setAttr -s 326 ".phl";
	setAttr ".phl[562]" 0;
	setAttr ".phl[563]" 0;
	setAttr ".phl[564]" 0;
	setAttr ".phl[565]" 0;
	setAttr ".phl[566]" 0;
	setAttr ".phl[567]" 0;
	setAttr ".phl[568]" 0;
	setAttr ".phl[569]" 0;
	setAttr ".phl[570]" 0;
	setAttr ".phl[571]" 0;
	setAttr ".phl[572]" 0;
	setAttr ".phl[573]" 0;
	setAttr ".phl[574]" 0;
	setAttr ".phl[575]" 0;
	setAttr ".phl[576]" 0;
	setAttr ".phl[577]" 0;
	setAttr ".phl[578]" 0;
	setAttr ".phl[579]" 0;
	setAttr ".phl[580]" 0;
	setAttr ".phl[581]" 0;
	setAttr ".phl[582]" 0;
	setAttr ".phl[583]" 0;
	setAttr ".phl[584]" 0;
	setAttr ".phl[585]" 0;
	setAttr ".phl[586]" 0;
	setAttr ".phl[587]" 0;
	setAttr ".phl[588]" 0;
	setAttr ".phl[589]" 0;
	setAttr ".phl[590]" 0;
	setAttr ".phl[591]" 0;
	setAttr ".phl[592]" 0;
	setAttr ".phl[593]" 0;
	setAttr ".phl[594]" 0;
	setAttr ".phl[595]" 0;
	setAttr ".phl[596]" 0;
	setAttr ".phl[597]" 0;
	setAttr ".phl[598]" 0;
	setAttr ".phl[599]" 0;
	setAttr ".phl[600]" 0;
	setAttr ".phl[601]" 0;
	setAttr ".phl[602]" 0;
	setAttr ".phl[603]" 0;
	setAttr ".phl[604]" 0;
	setAttr ".phl[605]" 0;
	setAttr ".phl[606]" 0;
	setAttr ".phl[607]" 0;
	setAttr ".phl[608]" 0;
	setAttr ".phl[609]" 0;
	setAttr ".phl[610]" 0;
	setAttr ".phl[611]" 0;
	setAttr ".phl[612]" 0;
	setAttr ".phl[613]" 0;
	setAttr ".phl[614]" 0;
	setAttr ".phl[615]" 0;
	setAttr ".phl[616]" 0;
	setAttr ".phl[617]" 0;
	setAttr ".phl[618]" 0;
	setAttr ".phl[619]" 0;
	setAttr ".phl[620]" 0;
	setAttr ".phl[621]" 0;
	setAttr ".phl[622]" 0;
	setAttr ".phl[623]" 0;
	setAttr ".phl[624]" 0;
	setAttr ".phl[625]" 0;
	setAttr ".phl[626]" 0;
	setAttr ".phl[627]" 0;
	setAttr ".phl[628]" 0;
	setAttr ".phl[629]" 0;
	setAttr ".phl[630]" 0;
	setAttr ".phl[631]" 0;
	setAttr ".phl[632]" 0;
	setAttr ".phl[633]" 0;
	setAttr ".phl[634]" 0;
	setAttr ".phl[635]" 0;
	setAttr ".phl[636]" 0;
	setAttr ".phl[637]" 0;
	setAttr ".phl[638]" 0;
	setAttr ".phl[639]" 0;
	setAttr ".phl[640]" 0;
	setAttr ".phl[641]" 0;
	setAttr ".phl[642]" 0;
	setAttr ".phl[643]" 0;
	setAttr ".phl[644]" 0;
	setAttr ".phl[645]" 0;
	setAttr ".phl[646]" 0;
	setAttr ".phl[647]" 0;
	setAttr ".phl[648]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[650]" 0;
	setAttr ".phl[651]" 0;
	setAttr ".phl[652]" 0;
	setAttr ".phl[653]" 0;
	setAttr ".phl[654]" 0;
	setAttr ".phl[655]" 0;
	setAttr ".phl[656]" 0;
	setAttr ".phl[657]" 0;
	setAttr ".phl[658]" 0;
	setAttr ".phl[659]" 0;
	setAttr ".phl[660]" 0;
	setAttr ".phl[661]" 0;
	setAttr ".phl[662]" 0;
	setAttr ".phl[663]" 0;
	setAttr ".phl[664]" 0;
	setAttr ".phl[665]" 0;
	setAttr ".phl[666]" 0;
	setAttr ".phl[667]" 0;
	setAttr ".phl[668]" 0;
	setAttr ".phl[669]" 0;
	setAttr ".phl[670]" 0;
	setAttr ".phl[671]" 0;
	setAttr ".phl[672]" 0;
	setAttr ".phl[673]" 0;
	setAttr ".phl[674]" 0;
	setAttr ".phl[675]" 0;
	setAttr ".phl[676]" 0;
	setAttr ".phl[677]" 0;
	setAttr ".phl[678]" 0;
	setAttr ".phl[679]" 0;
	setAttr ".phl[680]" 0;
	setAttr ".phl[681]" 0;
	setAttr ".phl[682]" 0;
	setAttr ".phl[683]" 0;
	setAttr ".phl[684]" 0;
	setAttr ".phl[685]" 0;
	setAttr ".phl[686]" 0;
	setAttr ".phl[687]" 0;
	setAttr ".phl[688]" 0;
	setAttr ".phl[689]" 0;
	setAttr ".phl[690]" 0;
	setAttr ".phl[691]" 0;
	setAttr ".phl[692]" 0;
	setAttr ".phl[693]" 0;
	setAttr ".phl[694]" 0;
	setAttr ".phl[695]" 0;
	setAttr ".phl[696]" 0;
	setAttr ".phl[697]" 0;
	setAttr ".phl[698]" 0;
	setAttr ".phl[699]" 0;
	setAttr ".phl[700]" 0;
	setAttr ".phl[701]" 0;
	setAttr ".phl[702]" 0;
	setAttr ".phl[703]" 0;
	setAttr ".phl[704]" 0;
	setAttr ".phl[705]" 0;
	setAttr ".phl[706]" 0;
	setAttr ".phl[707]" 0;
	setAttr ".phl[708]" 0;
	setAttr ".phl[709]" 0;
	setAttr ".phl[710]" 0;
	setAttr ".phl[711]" 0;
	setAttr ".phl[712]" 0;
	setAttr ".phl[713]" 0;
	setAttr ".phl[714]" 0;
	setAttr ".phl[715]" 0;
	setAttr ".phl[716]" 0;
	setAttr ".phl[717]" 0;
	setAttr ".phl[718]" 0;
	setAttr ".phl[719]" 0;
	setAttr ".phl[720]" 0;
	setAttr ".phl[721]" 0;
	setAttr ".phl[722]" 0;
	setAttr ".phl[723]" 0;
	setAttr ".phl[724]" 0;
	setAttr ".phl[725]" 0;
	setAttr ".phl[726]" 0;
	setAttr ".phl[727]" 0;
	setAttr ".phl[728]" 0;
	setAttr ".phl[729]" 0;
	setAttr ".phl[730]" 0;
	setAttr ".phl[731]" 0;
	setAttr ".phl[732]" 0;
	setAttr ".phl[733]" 0;
	setAttr ".phl[734]" 0;
	setAttr ".phl[735]" 0;
	setAttr ".phl[736]" 0;
	setAttr ".phl[737]" 0;
	setAttr ".phl[738]" 0;
	setAttr ".phl[739]" 0;
	setAttr ".phl[740]" 0;
	setAttr ".phl[741]" 0;
	setAttr ".phl[742]" 0;
	setAttr ".phl[743]" 0;
	setAttr ".phl[744]" 0;
	setAttr ".phl[745]" 0;
	setAttr ".phl[746]" 0;
	setAttr ".phl[747]" 0;
	setAttr ".phl[748]" 0;
	setAttr ".phl[749]" 0;
	setAttr ".phl[750]" 0;
	setAttr ".phl[751]" 0;
	setAttr ".phl[752]" 0;
	setAttr ".phl[753]" 0;
	setAttr ".phl[754]" 0;
	setAttr ".phl[755]" 0;
	setAttr ".phl[756]" 0;
	setAttr ".phl[757]" 0;
	setAttr ".phl[758]" 0;
	setAttr ".phl[759]" 0;
	setAttr ".phl[760]" 0;
	setAttr ".phl[761]" 0;
	setAttr ".phl[762]" 0;
	setAttr ".phl[763]" 0;
	setAttr ".phl[764]" 0;
	setAttr ".phl[765]" 0;
	setAttr ".phl[766]" 0;
	setAttr ".phl[767]" 0;
	setAttr ".phl[768]" 0;
	setAttr ".phl[769]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[771]" 0;
	setAttr ".phl[772]" 0;
	setAttr ".phl[773]" 0;
	setAttr ".phl[774]" 0;
	setAttr ".phl[775]" 0;
	setAttr ".phl[776]" 0;
	setAttr ".phl[777]" 0;
	setAttr ".phl[778]" 0;
	setAttr ".phl[779]" 0;
	setAttr ".phl[780]" 0;
	setAttr ".phl[781]" 0;
	setAttr ".phl[782]" 0;
	setAttr ".phl[783]" 0;
	setAttr ".phl[784]" 0;
	setAttr ".phl[785]" 0;
	setAttr ".phl[786]" 0;
	setAttr ".phl[787]" 0;
	setAttr ".phl[788]" 0;
	setAttr ".phl[789]" 0;
	setAttr ".phl[790]" 0;
	setAttr ".phl[791]" 0;
	setAttr ".phl[792]" 0;
	setAttr ".phl[793]" 0;
	setAttr ".phl[794]" 0;
	setAttr ".phl[795]" 0;
	setAttr ".phl[796]" 0;
	setAttr ".phl[797]" 0;
	setAttr ".phl[798]" 0;
	setAttr ".phl[799]" 0;
	setAttr ".phl[800]" 0;
	setAttr ".phl[801]" 0;
	setAttr ".phl[802]" 0;
	setAttr ".phl[803]" 0;
	setAttr ".phl[804]" 0;
	setAttr ".phl[805]" 0;
	setAttr ".phl[806]" 0;
	setAttr ".phl[807]" 0;
	setAttr ".phl[808]" 0;
	setAttr ".phl[809]" 0;
	setAttr ".phl[810]" 0;
	setAttr ".phl[811]" 0;
	setAttr ".phl[812]" 0;
	setAttr ".phl[813]" 0;
	setAttr ".phl[814]" 0;
	setAttr ".phl[815]" 0;
	setAttr ".phl[816]" 0;
	setAttr ".phl[817]" 0;
	setAttr ".phl[818]" 0;
	setAttr ".phl[819]" 0;
	setAttr ".phl[820]" 0;
	setAttr ".phl[821]" 0;
	setAttr ".phl[822]" 0;
	setAttr ".phl[823]" 0;
	setAttr ".phl[824]" 0;
	setAttr ".phl[825]" 0;
	setAttr ".phl[826]" 0;
	setAttr ".phl[827]" 0;
	setAttr ".phl[828]" 0;
	setAttr ".phl[829]" 0;
	setAttr ".phl[830]" 0;
	setAttr ".phl[831]" 0;
	setAttr ".phl[832]" 0;
	setAttr ".phl[833]" 0;
	setAttr ".phl[834]" 0;
	setAttr ".phl[835]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RigRN"
		"Rig:RefRN" 206
		1 |Rig:Ref:heavyInfo "exportName" "exportName" " -ci 1 -dt \"string\""
		2 "|Rig:Ref:heavyInfo" "exportName" " -k 1 -type \"string\" \"%VCONTENT%/tf/models/player/heavy/animations/dmx/primary_idle.dmx\""
		
		2 "|Rig:Ref:heavyInfo" "exportType" " -k 1 1"
		2 "|Rig:Ref:heavyInfo" "exportName" " -type \"string\" \"%VCONTENT%/tf/models/player/heavy/animations/dmx/primary_runCenter.dmx\""
		
		2 "|Rig:Ref:heavyInfo" "exportType" " 1"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:hlp_tmb_1_anterior_L" 
		"translate" " -type \"double3\" 0 -1.703677 -1.041656"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:hlp_tmb_1_anterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:hlp_tmb_1_anterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:hlp_tmb_1_anterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:hlp_tmb_1_posterior_L" 
		"translate" " -type \"double3\" 0 -2.050596 1.418005"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:hlp_tmb_1_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:hlp_tmb_1_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:hlp_tmb_1_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L|Rig:Ref:hlp_idx_2_posterior_L" 
		"translate" " -type \"double3\" 0.0180395 -2.700368 0.91974"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L|Rig:Ref:hlp_idx_2_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L|Rig:Ref:hlp_idx_2_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L|Rig:Ref:hlp_idx_2_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_anterior_L" 
		"translate" " -type \"double3\" 0.0350733 -3.045965 -1.053772"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_anterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_anterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_anterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_anterior_L" 
		"rotate" " -type \"double3\" -31.624471 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_anterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_anterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_anterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_posterior_L" 
		"translate" " -type \"double3\" 0.0274227 -4.126166 1.222854"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_posterior_L" 
		"rotate" " -type \"double3\" -31.114796 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_posterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_posterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:hlp_idx_1_posterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:hlp_mid_2_posterior_L" 
		"translate" " -type \"double3\" -0.0497346 -3.083728 0.855658"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:hlp_mid_2_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:hlp_mid_2_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:hlp_mid_2_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:hlp_mid_2_posterior_L" 
		"rotate" " -type \"double3\" 18.965573 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:hlp_mid_2_posterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:hlp_mid_2_posterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:hlp_mid_2_posterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_anterior_L" 
		"translate" " -type \"double3\" 0.0472914 -3.132325 -1.390067"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_anterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_anterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_anterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_anterior_L" 
		"rotate" " -type \"double3\" -2.518246 3.967384 -1.301392"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_anterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_anterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_anterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_posterior_L" 
		"translate" " -type \"double3\" -0.0501915 -5.722891 0.959075"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_posterior_L" 
		"rotate" " -type \"double3\" 0.0829822 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_posterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_posterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:hlp_mid_1_posterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:hlp_rng_2_posterior_L" 
		"translate" " -type \"double3\" 0.03147 -2.645987 0.97498"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:hlp_rng_2_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:hlp_rng_2_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:hlp_rng_2_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:hlp_rng_2_posterior_L" 
		"rotate" " -type \"double3\" 5.65146 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:hlp_rng_2_posterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:hlp_rng_2_posterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:hlp_rng_2_posterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_anterior_L" 
		"translate" " -type \"double3\" -0.0721238 -2.979059 -1.189215"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_anterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_anterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_anterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_anterior_L" 
		"rotate" " -type \"double3\" -16.283272 -2.251311 0.15038"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_anterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_anterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_anterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_posterior_L" 
		"translate" " -type \"double3\" 0.00284926 -4.472144 1.008515"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_posterior_L" 
		"rotate" " -type \"double3\" -2.207802 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_posterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_posterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:hlp_rng_1_posterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:hlp_pnk_2_posterior_L" 
		"translate" " -type \"double3\" 0.0361487 -2.26892 0.719843"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:hlp_pnk_2_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:hlp_pnk_2_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:hlp_pnk_2_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:hlp_pnk_2_posterior_L" 
		"rotate" " -type \"double3\" 12.307613 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:hlp_pnk_2_posterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:hlp_pnk_2_posterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:hlp_pnk_2_posterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_anterior_L" 
		"translate" " -type \"double3\" 0.0537713 -1.997778 -1.118197"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_anterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_anterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_anterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_anterior_L" 
		"rotate" " -type \"double3\" 1.024151 5.497684 -0.312627"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_anterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_anterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_anterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_posterior_L" 
		"translate" " -type \"double3\" 0.0347888 -3.667516 0.854007"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_posterior_L" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_posterior_L" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_posterior_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_posterior_L" 
		"rotate" " -type \"double3\" 8.1173 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_posterior_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_posterior_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:hlp_pnk_1_posterior_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:hlp_tmb_1_anterior_R" 
		"translate" " -type \"double3\" 6.35717e-005 2.048844 0.970671"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:hlp_tmb_1_anterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:hlp_tmb_1_anterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:hlp_tmb_1_anterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:hlp_tmb_1_posterior_R" 
		"translate" " -type \"double3\" 5.14869e-005 1.558729 -1.484013"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:hlp_tmb_1_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:hlp_tmb_1_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:hlp_tmb_1_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:hlp_idx_2_posterior_R" 
		"translate" " -type \"double3\" -0.0118105 2.132299 -1.109959"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:hlp_idx_2_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:hlp_idx_2_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:hlp_idx_2_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_anterior_R" 
		"translate" " -type \"double3\" -0.0285049 2.518151 1.003908"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_anterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_anterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_anterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_posterior_R" 
		"translate" " -type \"double3\" -0.0252242 4.784943 -1.043266"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_posterior_R" 
		"rotate" " -type \"double3\" -10.967684 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_posterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_posterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:hlp_idx_1_posterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:hlp_mid_2_posterior_R" 
		"translate" " -type \"double3\" 0.0487457 3.127447 -0.833312"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:hlp_mid_2_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:hlp_mid_2_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:hlp_mid_2_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:hlp_mid_2_posterior_R" 
		"rotate" " -type \"double3\" 21.40933 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:hlp_mid_2_posterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:hlp_mid_2_posterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:hlp_mid_2_posterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_anterior_R" 
		"translate" " -type \"double3\" -0.0472895 3.132285 1.390129"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_anterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_anterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_anterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_anterior_R" 
		"rotate" " -type \"double3\" -2.518218 3.96738 -1.30139"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_anterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_anterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_anterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_posterior_R" 
		"translate" " -type \"double3\" 0.050188 5.722828 -0.95902"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_posterior_R" 
		"rotate" " -type \"double3\" 0.0829822 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_posterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_posterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:hlp_mid_1_posterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:hlp_rng_2_posterior_R" 
		"translate" " -type \"double3\" -0.0260676 2.77632 -0.933298"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:hlp_rng_2_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:hlp_rng_2_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:hlp_rng_2_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:hlp_rng_2_posterior_R" 
		"rotate" " -type \"double3\" 12.497376 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:hlp_rng_2_posterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:hlp_rng_2_posterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:hlp_rng_2_posterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_anterior_R" 
		"translate" " -type \"double3\" 0.0648579 2.779665 1.207856"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_anterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_anterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_anterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_anterior_R" 
		"rotate" " -type \"double3\" -12.607277 -2.734445 0.0946941"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_anterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_anterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_anterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_posterior_R" 
		"translate" " -type \"double3\" -0.00285561 4.627064 -0.963499"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_posterior_R" 
		"rotate" " -type \"double3\" 4.481896 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_posterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_posterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:hlp_rng_1_posterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:hlp_pnk_2_posterior_R" 
		"translate" " -type \"double3\" -0.0361559 2.193915 -0.747493"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:hlp_pnk_2_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:hlp_pnk_2_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:hlp_pnk_2_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:hlp_pnk_2_posterior_R" 
		"rotate" " -type \"double3\" 7.693514 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:hlp_pnk_2_posterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:hlp_pnk_2_posterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:hlp_pnk_2_posterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_anterior_R" 
		"translate" " -type \"double3\" -0.0576859 2.138448 1.122971"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_anterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_anterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_anterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_anterior_R" 
		"rotate" " -type \"double3\" -2.709389 4.815376 -0.431614"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_anterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_anterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_anterior_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_posterior_R" 
		"translate" " -type \"double3\" -0.0347807 3.577983 -0.865335"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_posterior_R" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_posterior_R" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_posterior_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_posterior_R" 
		"rotate" " -type \"double3\" 3.513853 0 0"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_posterior_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_posterior_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:hlp_pnk_1_posterior_R" 
		"rotateZ" " -av"
		5 3 "RigRN" "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[358]" ""
		5 3 "RigRN" "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[359]" ""
		5 3 "RigRN" "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivot" 
		"RigRN.placeHolderList[360]" ""
		5 3 "RigRN" "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivotTranslate" 
		"RigRN.placeHolderList[361]" ""
		5 3 "RigRN" "|Rig:Ref:heavyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateOrder" 
		"RigRN.placeHolderList[365]" ""
		"Rig:Ref:HeadRN" 0
		"RigRN" 165
		1 |Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		1 |Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1 
		"lHandAttachW1" "w1" " -ci 1 -k 1 -dv 1 -min 0 -at \"double\""
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1 
		"rHandAttachW1" "w1" " -ci 1 -k 1 -dv 1 -min 0 -at \"double\""
		2 "|Rig:main|Rig:lFootControl" "footRoll" " -k 1"
		2 "Rig:Mesh" "displayType" " 2"
		2 "Rig:Mesh" "visibility" " 1"
		2 "Rig:bones" "visibility" " 1"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 23.572408 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 23.572408 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 23.572408 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 23.572408 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" 32.543068 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" -26.136249 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 42.350268 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 18.83159 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" 32.543068 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" -26.136249 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 42.350268 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 18.83159 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" 32.543068 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 38.437242 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" -26.136249 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 42.350268 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 18.83159 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rock" "RigRN.placeHolderList[234]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.footRoll" "RigRN.placeHolderList[235]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rock" "RigRN.placeHolderList[247]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.footRoll" "RigRN.placeHolderList[248]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.scaleX" 
		"RigRN.placeHolderList[276]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.scaleY" 
		"RigRN.placeHolderList[277]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.scaleZ" 
		"RigRN.placeHolderList[278]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.visibility" 
		"RigRN.placeHolderList[279]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.scaleX" 
		"RigRN.placeHolderList[286]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.scaleY" 
		"RigRN.placeHolderList[287]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.scaleZ" 
		"RigRN.placeHolderList[288]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.visibility" 
		"RigRN.placeHolderList[289]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK.rotateY" 
		"RigRN.placeHolderList[43]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK.rotateZ" 
		"RigRN.placeHolderList[44]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK.rotateY" 
		"RigRN.placeHolderList[55]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK.rotateZ" 
		"RigRN.placeHolderList[56]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK.rotateY" 
		"RigRN.placeHolderList[67]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK.rotateZ" 
		"RigRN.placeHolderList[68]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK.rotateY" 
		"RigRN.placeHolderList[76]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK.rotateZ" 
		"RigRN.placeHolderList[77]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl.rotateY" 
		"RigRN.placeHolderList[140]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl.rotateZ" 
		"RigRN.placeHolderList[141]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl.rotateY" 
		"RigRN.placeHolderList[143]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl.rotateZ" 
		"RigRN.placeHolderList[144]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl.rotateY" 
		"RigRN.placeHolderList[149]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl.rotateZ" 
		"RigRN.placeHolderList[150]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl.rotateY" 
		"RigRN.placeHolderList[152]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl.rotateZ" 
		"RigRN.placeHolderList[153]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl.rotateY" 
		"RigRN.placeHolderList[158]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl.rotateZ" 
		"RigRN.placeHolderList[159]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl.rotateY" 
		"RigRN.placeHolderList[161]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl.rotateZ" 
		"RigRN.placeHolderList[162]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl.rotateY" 
		"RigRN.placeHolderList[179]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl.rotateZ" 
		"RigRN.placeHolderList[180]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl.rotateY" 
		"RigRN.placeHolderList[182]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl.rotateZ" 
		"RigRN.placeHolderList[183]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl.rotateY" 
		"RigRN.placeHolderList[188]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl.rotateZ" 
		"RigRN.placeHolderList[189]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl.rotateY" 
		"RigRN.placeHolderList[191]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl.rotateZ" 
		"RigRN.placeHolderList[192]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl.rotateY" 
		"RigRN.placeHolderList[197]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl.rotateZ" 
		"RigRN.placeHolderList[198]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl.rotateY" 
		"RigRN.placeHolderList[200]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl.rotateZ" 
		"RigRN.placeHolderList[201]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl.rotateY" 
		"RigRN.placeHolderList[206]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl.rotateZ" 
		"RigRN.placeHolderList[207]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl.rotateY" 
		"RigRN.placeHolderList[209]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl.rotateZ" 
		"RigRN.placeHolderList[210]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl.rotateY" 
		"RigRN.placeHolderList[215]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl.rotateZ" 
		"RigRN.placeHolderList[216]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl.rotateY" 
		"RigRN.placeHolderList[218]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl.rotateZ" 
		"RigRN.placeHolderList[219]" ""
		5 3 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup.rotateOrder" 
		"RigRN.placeHolderList[472]" ""
		5 3 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup.parentInverseMatrix" 
		"RigRN.placeHolderList[473]" ""
		5 3 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup.rotatePivot" 
		"RigRN.placeHolderList[474]" ""
		5 3 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup.rotatePivotTranslate" 
		"RigRN.placeHolderList[475]" ""
		5 3 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl.weaponParent" 
		"RigRN.placeHolderList[482]" ""
		5 3 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup.rotateOrder" 
		"RigRN.placeHolderList[551]" ""
		5 3 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup.parentInverseMatrix" 
		"RigRN.placeHolderList[552]" ""
		5 3 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup.rotatePivot" 
		"RigRN.placeHolderList[553]" ""
		5 3 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup.rotatePivotTranslate" 
		"RigRN.placeHolderList[554]" ""
		5 3 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl.weaponParent" 
		"RigRN.placeHolderList[561]" ""
		"Rig:RefRN" 33
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "translate" 
		" -type \"double3\" 0 -6.065608 0"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "translateX" 
		" -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "translateY" 
		" -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "translateZ" 
		" -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"translate" " -type \"double3\" 0 -7.446174 0"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"translate" " -type \"double3\" 0 -8.166982 0"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"translate" " -type \"double3\" 0 -7.059042 0"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"translateX" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"translateY" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"translateZ" " -av"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L" 
		"rotateX" " -av 0.000543905"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L" 
		"rotateY" " -av -0.464719"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L" 
		"rotateZ" " -av 13.519143"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:hlp_forearm_L" 
		"translateX" " -av 0"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:hlp_forearm_L" 
		"translateY" " -av -7.587749"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:hlp_forearm_L" 
		"translateZ" " -av 0"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R" 
		"rotateX" " -av 3.325624"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R" 
		"rotateY" " -av -1.729839"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R" 
		"rotateZ" " -av 11.126861"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:hlp_forearm_R" 
		"translateX" " -av 1.1859e-005"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:hlp_forearm_R" 
		"translateY" " -av 7.587767"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:hlp_forearm_R" 
		"translateZ" " -av 4.9014e-006"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"translate" " -type \"double3\" -2.348411 31.27757 4.064244"
		2 "|Rig:Ref:heavyInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"rotate" " -type \"double3\" -153.534353 17.944024 -24.137675"
		2 "Rig:Ref:mesh_layer" "visibility" " 1"
		2 "Rig:Ref:skeleton_layer" "displayType" " 2"
		2 "Rig:Ref:skeleton_layer" "visibility" " 1"
		"RigRN" 501
		1 |Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		1 |Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1 
		"lHandAttachW1" "w1" " -ci 1 -k 1 -dv 1 -min 0 -at \"double\""
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1 
		"rHandAttachW1" "w1" " -ci 1 -k 1 -dv 1 -min 0 -at \"double\""
		2 "|Rig:main" "displayHandle" " 0"
		2 "|Rig:main|Rig:UpperbodyControl" "translate" " -type \"double3\" 0.203358 -2.591128 1.345681"
		
		2 "|Rig:main|Rig:UpperbodyControl" "translateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "translateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "translateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotate" " -type \"double3\" -20.484623 -20.296046 -2.325693"
		
		2 "|Rig:main|Rig:UpperbodyControl" "rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_packControlGroup|Rig:Ref:prp_packControl" 
		"rotate" " -type \"double3\" 0 0 9"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_packControlGroup|Rig:Ref:prp_packControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotate" " -type \"double3\" 3.527802 6.00401 7.596139"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_0FKcontrolShape" 
		"divisionsU" " 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_0FKcontrolShape" 
		"divisionsV" " 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_0FKcontrolShape" 
		"curvePrecision" " 3"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_0FKcontrolShape" 
		"curvePrecisionShaded" " 1"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotate" " -type \"double3\" 16.390833 1.297896 7.850995"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_1FKcontrolShape" 
		"divisionsU" " 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_1FKcontrolShape" 
		"divisionsV" " 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_1FKcontrolShape" 
		"curvePrecision" " 3"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_1FKcontrolShape" 
		"curvePrecisionShaded" " 1"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotate" " -type \"double3\" -2.200727 1.931368 -3.835232"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_2FKcontrolShape" 
		"divisionsU" " 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_2FKcontrolShape" 
		"divisionsV" " 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_2FKcontrolShape" 
		"curvePrecision" " 3"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_2FKcontrolShape" 
		"curvePrecisionShaded" " 1"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol" 
		"rotate" " -type \"double3\" -0.417261 -6.24848 3.400015"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol|Rig:Ref:bip_spine_3FKcontrolShape" 
		"divisionsU" " 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol|Rig:Ref:bip_spine_3FKcontrolShape" 
		"divisionsV" " 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol|Rig:Ref:bip_spine_3FKcontrolShape" 
		"curvePrecision" " 3"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol|Rig:Ref:bip_spine_3FKcontrolShape" 
		"curvePrecisionShaded" " 1"
		2 "|Rig:main|Rig:ikSpine" "translate" " -type \"double3\" 6.230429 62.81791 -15.340777"
		
		2 "|Rig:main|Rig:ikSpine" "rotate" " -type \"double3\" 153.387056 -4.172607 -10.880808"
		
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotate" " -type \"double3\" 0.000543905 -0.464719 13.519143"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotate" " -type \"double3\" 3.325624 -1.729839 11.126861"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotate" " -type \"double3\" -9.29745 -4.883223 0.987282"
		
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateX" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateY" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "lock" " -av -k 1 0"
		
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotate" " -type \"double3\" 3.895387 7.046398 3.981895"
		
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateX" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateY" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup" "translate" 
		" -type \"double3\" -28.946097 22.855249 -0.885515"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup" "rotate" 
		" -type \"double3\" -22.552582 22.268582 -13.793834"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl" 
		"translate" " -type \"double3\" 2.133543 -13.687739 28.322381"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl" 
		"lock" " -av -k 1 0"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl" 
		"aim" " -av -k 1 0"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl" 
		"weaponParent" " -k 1"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControlShape" 
		"visibility" " -k 0 1"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1" 
		"enableRestPosition" " 1"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1" 
		"offset" " -type \"double3\" -24.664894 -35.628465 18.306297"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1" 
		"restRotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1" 
		"lHandAttachW1" " -k 1 1"
		2 "|Rig:main|Rig:lElbowControl" "translate" " -type \"double3\" 8.576195 -0.677078 7.664097"
		
		2 "|Rig:main|Rig:lElbowControl" "translateX" " -av"
		2 "|Rig:main|Rig:lElbowControl" "translateY" " -av"
		2 "|Rig:main|Rig:lElbowControl" "translateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L" "translate" " -type \"double3\" -8.58944e-008 -1.96449e-007 3.4895e-007"
		
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L" "rotate" " -type \"double3\" -4.46537 3.307438 -2.598189"
		
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"rotate" " -type \"double3\" -105.851688 -21.295846 35.836161"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"bip_thumb_0_LControlRoll" " -av -k 1 -0.6"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"bip_index_0_LControlRoll" " -av -k 1 13.2"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"bip_middle_0_LControlRoll" " -av -k 1 45.1"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"bip_ring_0_LControlRoll" " -av -k 1 28.9"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl" 
		"bip_pinky_0_LControlRoll" " -av -k 1 45.1"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotate" " -type \"double3\" 0 -17.843181 -19.434121"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotateX" " -av 32.543068"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotateX" " -av 38.437242"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotate" " -type \"double3\" 22.482861 -13.319003 5.331733"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotateX" " -av -26.136249"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotateX" " -av 42.350268"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotate" " -type \"double3\" 0 0 6.96902"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotate" " -type \"double3\" 6.50933 15.937689 1.912995"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotate" " -type \"double3\" 0.958392 25.564197 -13.618609"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lkneeControl" "translate" " -type \"double3\" -0.703556 0.644867 21.190085"
		
		2 "|Rig:main|Rig:lkneeControl" "translateX" " -av"
		2 "|Rig:main|Rig:lkneeControl" "translateY" " -av"
		2 "|Rig:main|Rig:lkneeControl" "translateZ" " -av"
		2 "|Rig:main|Rig:lFootControl" "translate" " -type \"double3\" 0.564908 -0.104483 10.391696"
		
		2 "|Rig:main|Rig:lFootControl" "translateX" " -av"
		2 "|Rig:main|Rig:lFootControl" "translateY" " -av"
		2 "|Rig:main|Rig:lFootControl" "translateZ" " -av"
		2 "|Rig:main|Rig:lFootControl" "rotate" " -type \"double3\" 0.675591 16.008947 0.611061"
		
		2 "|Rig:main|Rig:lFootControl" "rotateX" " -av"
		2 "|Rig:main|Rig:lFootControl" "rotateY" " -av"
		2 "|Rig:main|Rig:lFootControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:lFootControl" "heelRock" " -av -k 1 0"
		2 "|Rig:main|Rig:lFootControl" "ankleLift" " -av -k 1 0"
		2 "|Rig:main|Rig:rikHandControlGroup" "translate" " -type \"double3\" 0.557241 -0.419839 -7.125151"
		
		2 "|Rig:main|Rig:rikHandControlGroup" "translateX" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup" "translateY" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup" "translateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup" "rotate" " -type \"double3\" -20.484623 -20.296046 -2.325693"
		
		2 "|Rig:main|Rig:rikHandControlGroup" "rotateX" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup" "rotateY" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup" "rotateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translate" 
		" -type \"double3\" 15.860321 42.078605 -12.562286"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translateX" 
		" -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translateY" 
		" -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translateZ" 
		" -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "rotate" 
		" -type \"double3\" 0.963766 0.21618 3.192363"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl" 
		"translate" " -type \"double3\" 4.920627 -12.761955 -6.646554"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl" 
		"aim" " -av -k 1 0"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl" 
		"weaponParent" " -av -k 1 1"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControlShape" 
		"visibility" " -k 0 1"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1" 
		"enableRestPosition" " 1"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1" 
		"offset" " -type \"double3\" 172.142046 -8.703142 -23.386945"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1" 
		"restRotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1" 
		"rHandAttachW1" " -k 1 1"
		2 "|Rig:main|Rig:rElbowControl" "translate" " -type \"double3\" 11.871314 -4.220074 -57.137032"
		
		2 "|Rig:main|Rig:rElbowControl" "translateX" " -av"
		2 "|Rig:main|Rig:rElbowControl" "translateY" " -av"
		2 "|Rig:main|Rig:rElbowControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R" "translate" " -type \"double3\" -5.687447 5.873365 1.503037"
		
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R" "rotate" " -type \"double3\" -3.779426 -2.269394 4.261844"
		
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl" 
		"rotate" " -type \"double3\" -40.539772 -4.356452 16.468073"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl" 
		"bip_index_0_RControlRoll" " -av -k 1 26.7"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl" 
		"bip_middle_0_RControlRoll" " -av -k 1 49.7"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl" 
		"bip_ring_0_RControlRoll" " -av -k 1 42.2"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl" 
		"bip_pinky_0_RControlRoll" " -av -k 1 36"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl" 
		"rotate" " -type \"double3\" -16.926885 0 10.754766"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotateX" " -av 18.83159"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl" 
		"rotate" " -type \"double3\" 0 0 5.093911"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotateX" " -av 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotateX" " -av 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotateX" " -av 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotateX" " -av 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotate" " -type \"double3\" 0 0 -12.489333"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotateX" " -av 0"
		2 "|Rig:main|Rig:rkneeControl" "translate" " -type \"double3\" -13.244924 -6.289359 9.462862"
		
		2 "|Rig:main|Rig:rkneeControl" "translateX" " -av"
		2 "|Rig:main|Rig:rkneeControl" "translateY" " -av"
		2 "|Rig:main|Rig:rkneeControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rFootControl" "translate" " -type \"double3\" -0.0620991 0 -3.377452"
		
		2 "|Rig:main|Rig:rFootControl" "translateX" " -av"
		2 "|Rig:main|Rig:rFootControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rFootControl" "rotate" " -type \"double3\" 0 -59.191928 0"
		
		2 "|Rig:main|Rig:rFootControl" "rotateY" " -av"
		2 "|Rig:main|Rig:rFootControl" "ankleLift" " -av -k 1 0"
		2 "|Rig:main|Rig:rFootControl|Rig:rFootControlShape" "divisionsU" " 0"
		2 "|Rig:main|Rig:rFootControl|Rig:rFootControlShape" "divisionsV" " 0"
		2 "|Rig:main|Rig:rFootControl|Rig:rFootControlShape" "curvePrecision" " 3"
		
		2 "|Rig:main|Rig:rFootControl|Rig:rFootControlShape" "curvePrecisionShaded" 
		" 1"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl|Rig:rToeControlShape" 
		"divisionsU" " 0"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl|Rig:rToeControlShape" 
		"divisionsV" " 0"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl|Rig:rToeControlShape" 
		"curvePrecision" " 3"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl|Rig:rToeControlShape" 
		"curvePrecisionShaded" " 1"
		2 "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl" 
		"translate" " -type \"double3\" -1.196774 1.762152 0.853469"
		2 "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl" 
		"translate" " -type \"double3\" -3.024237 -1.376389 0.756751"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl" 
		"rotate" " -type \"double3\" 4.750625 -0.296847 -2.386519"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl" 
		"translate" " -type \"double3\" -1.300442 2.044345 -1.56227"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl" 
		"rotate" " -type \"double3\" 1.161501 4.789227 5.660047"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl" 
		"rotateZ" " -av"
		5 4 "RigRN" "|Rig:main.spineIKFK" "RigRN.placeHolderList[562]" ""
		5 4 "RigRN" "|Rig:main.translateX" "RigRN.placeHolderList[563]" ""
		5 4 "RigRN" "|Rig:main.translateY" "RigRN.placeHolderList[564]" ""
		5 4 "RigRN" "|Rig:main.translateZ" "RigRN.placeHolderList[565]" ""
		5 4 "RigRN" "|Rig:main.rotateX" "RigRN.placeHolderList[566]" ""
		5 4 "RigRN" "|Rig:main.rotateY" "RigRN.placeHolderList[567]" ""
		5 4 "RigRN" "|Rig:main.rotateZ" "RigRN.placeHolderList[568]" ""
		5 4 "RigRN" "|Rig:main.lArmIKFK" "RigRN.placeHolderList[569]" ""
		5 4 "RigRN" "|Rig:main.rArmIKFK" "RigRN.placeHolderList[570]" ""
		5 4 "RigRN" "|Rig:main.rLegIKFK" "RigRN.placeHolderList[571]" ""
		5 4 "RigRN" "|Rig:main.lLegIKFK" "RigRN.placeHolderList[572]" ""
		5 4 "RigRN" "|Rig:main.visibility" "RigRN.placeHolderList[573]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateX" "RigRN.placeHolderList[574]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateY" "RigRN.placeHolderList[575]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateZ" "RigRN.placeHolderList[576]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateX" "RigRN.placeHolderList[577]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateY" "RigRN.placeHolderList[578]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateZ" "RigRN.placeHolderList[579]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateX" 
		"RigRN.placeHolderList[580]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateY" 
		"RigRN.placeHolderList[581]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateZ" 
		"RigRN.placeHolderList[582]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_packControlGroup|Rig:Ref:prp_packControl.translateX" 
		"RigRN.placeHolderList[583]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_packControlGroup|Rig:Ref:prp_packControl.translateY" 
		"RigRN.placeHolderList[584]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_packControlGroup|Rig:Ref:prp_packControl.translateZ" 
		"RigRN.placeHolderList[585]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_packControlGroup|Rig:Ref:prp_packControl.rotateX" 
		"RigRN.placeHolderList[586]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_packControlGroup|Rig:Ref:prp_packControl.rotateY" 
		"RigRN.placeHolderList[587]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_packControlGroup|Rig:Ref:prp_packControl.rotateZ" 
		"RigRN.placeHolderList[588]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateX" 
		"RigRN.placeHolderList[589]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateY" 
		"RigRN.placeHolderList[590]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateZ" 
		"RigRN.placeHolderList[591]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateX" 
		"RigRN.placeHolderList[592]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateY" 
		"RigRN.placeHolderList[593]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateZ" 
		"RigRN.placeHolderList[594]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateX" 
		"RigRN.placeHolderList[595]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateY" 
		"RigRN.placeHolderList[596]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateZ" 
		"RigRN.placeHolderList[597]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateX" 
		"RigRN.placeHolderList[598]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateY" 
		"RigRN.placeHolderList[599]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateZ" 
		"RigRN.placeHolderList[600]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateY" "RigRN.placeHolderList[601]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateX" "RigRN.placeHolderList[602]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateZ" "RigRN.placeHolderList[603]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateX" 
		"RigRN.placeHolderList[604]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateY" 
		"RigRN.placeHolderList[605]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateZ" 
		"RigRN.placeHolderList[606]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateX" 
		"RigRN.placeHolderList[607]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateY" 
		"RigRN.placeHolderList[608]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateZ" 
		"RigRN.placeHolderList[609]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK.rotateX" 
		"RigRN.placeHolderList[610]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateX" 
		"RigRN.placeHolderList[611]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateY" 
		"RigRN.placeHolderList[612]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateZ" 
		"RigRN.placeHolderList[613]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateX" 
		"RigRN.placeHolderList[614]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateY" 
		"RigRN.placeHolderList[615]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateZ" 
		"RigRN.placeHolderList[616]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateX" 
		"RigRN.placeHolderList[617]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateY" 
		"RigRN.placeHolderList[618]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateZ" 
		"RigRN.placeHolderList[619]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK.rotateX" 
		"RigRN.placeHolderList[620]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateX" 
		"RigRN.placeHolderList[621]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateY" 
		"RigRN.placeHolderList[622]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateZ" 
		"RigRN.placeHolderList[623]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateX" 
		"RigRN.placeHolderList[624]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateY" 
		"RigRN.placeHolderList[625]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateZ" 
		"RigRN.placeHolderList[626]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateX" 
		"RigRN.placeHolderList[627]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateY" 
		"RigRN.placeHolderList[628]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateZ" 
		"RigRN.placeHolderList[629]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateX" 
		"RigRN.placeHolderList[630]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateY" 
		"RigRN.placeHolderList[631]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateZ" 
		"RigRN.placeHolderList[632]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK.rotateX" 
		"RigRN.placeHolderList[633]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateX" 
		"RigRN.placeHolderList[634]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateY" 
		"RigRN.placeHolderList[635]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateZ" 
		"RigRN.placeHolderList[636]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateX" 
		"RigRN.placeHolderList[637]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateY" 
		"RigRN.placeHolderList[638]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateZ" 
		"RigRN.placeHolderList[639]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateX" 
		"RigRN.placeHolderList[640]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateY" 
		"RigRN.placeHolderList[641]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateZ" 
		"RigRN.placeHolderList[642]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK.rotateX" 
		"RigRN.placeHolderList[643]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateX" 
		"RigRN.placeHolderList[644]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateY" 
		"RigRN.placeHolderList[645]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateZ" 
		"RigRN.placeHolderList[646]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:prp_bullet_shoulderControlGroup|Rig:Ref:prp_bullet_shoulderControl.translateX" 
		"RigRN.placeHolderList[647]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:prp_bullet_shoulderControlGroup|Rig:Ref:prp_bullet_shoulderControl.translateY" 
		"RigRN.placeHolderList[648]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:prp_bullet_shoulderControlGroup|Rig:Ref:prp_bullet_shoulderControl.translateZ" 
		"RigRN.placeHolderList[649]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:prp_bullet_shoulderControlGroup|Rig:Ref:prp_bullet_shoulderControl.rotateX" 
		"RigRN.placeHolderList[650]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:prp_bullet_shoulderControlGroup|Rig:Ref:prp_bullet_shoulderControl.rotateY" 
		"RigRN.placeHolderList[651]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:prp_bullet_shoulderControlGroup|Rig:Ref:prp_bullet_shoulderControl.rotateZ" 
		"RigRN.placeHolderList[652]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateX" 
		"RigRN.placeHolderList[653]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateY" 
		"RigRN.placeHolderList[654]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateZ" 
		"RigRN.placeHolderList[655]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.lock" 
		"RigRN.placeHolderList[656]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateX" 
		"RigRN.placeHolderList[657]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateY" 
		"RigRN.placeHolderList[658]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateZ" 
		"RigRN.placeHolderList[659]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.lock" 
		"RigRN.placeHolderList[660]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl.translateX" 
		"RigRN.placeHolderList[661]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl.translateY" 
		"RigRN.placeHolderList[662]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl.translateZ" 
		"RigRN.placeHolderList[663]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl.aim" 
		"RigRN.placeHolderList[664]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl.lock" 
		"RigRN.placeHolderList[665]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl.weaponParent" 
		"RigRN.placeHolderList[666]" ""
		5 0 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1.lHandAttachW1" 
		"|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1.target[1].targetWeight" 
		"RigRN.placeHolderList[667]" "RigRN.placeHolderList[668]" ""
		5 2 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1.target[1].targetRotate" 
		"RigRN.placeHolderList[669]" ""
		5 2 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1.target[1].targetRotateOrder" 
		"RigRN.placeHolderList[670]" ""
		5 2 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControl|Rig:likHandControl_orientConstraint1.target[1].targetParentMatrix" 
		"RigRN.placeHolderList[671]" ""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateX" "RigRN.placeHolderList[672]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateY" "RigRN.placeHolderList[673]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateZ" "RigRN.placeHolderList[674]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.rotateX" 
		"RigRN.placeHolderList[675]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.rotateY" 
		"RigRN.placeHolderList[676]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.rotateZ" 
		"RigRN.placeHolderList[677]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.bip_thumb_0_LControlRoll" 
		"RigRN.placeHolderList[678]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.bip_index_0_LControlRoll" 
		"RigRN.placeHolderList[679]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.bip_middle_0_LControlRoll" 
		"RigRN.placeHolderList[680]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.bip_ring_0_LControlRoll" 
		"RigRN.placeHolderList[681]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.bip_pinky_0_LControlRoll" 
		"RigRN.placeHolderList[682]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.visibility" 
		"RigRN.placeHolderList[683]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateX" 
		"RigRN.placeHolderList[684]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateY" 
		"RigRN.placeHolderList[685]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateZ" 
		"RigRN.placeHolderList[686]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl.rotateX" 
		"RigRN.placeHolderList[687]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl.rotateX" 
		"RigRN.placeHolderList[688]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateX" 
		"RigRN.placeHolderList[689]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateY" 
		"RigRN.placeHolderList[690]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateZ" 
		"RigRN.placeHolderList[691]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl.rotateX" 
		"RigRN.placeHolderList[692]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl.rotateX" 
		"RigRN.placeHolderList[693]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateX" 
		"RigRN.placeHolderList[694]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateY" 
		"RigRN.placeHolderList[695]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateZ" 
		"RigRN.placeHolderList[696]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl.rotateX" 
		"RigRN.placeHolderList[697]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl.rotateX" 
		"RigRN.placeHolderList[698]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateX" 
		"RigRN.placeHolderList[699]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateY" 
		"RigRN.placeHolderList[700]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateZ" 
		"RigRN.placeHolderList[701]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl.rotateX" 
		"RigRN.placeHolderList[702]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl.rotateX" 
		"RigRN.placeHolderList[703]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateX" 
		"RigRN.placeHolderList[704]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateY" 
		"RigRN.placeHolderList[705]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateZ" 
		"RigRN.placeHolderList[706]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl.rotateX" 
		"RigRN.placeHolderList[707]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl.rotateX" 
		"RigRN.placeHolderList[708]" ""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateX" "RigRN.placeHolderList[709]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateY" "RigRN.placeHolderList[710]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateZ" "RigRN.placeHolderList[711]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleLift" "RigRN.placeHolderList[712]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateX" "RigRN.placeHolderList[713]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateY" "RigRN.placeHolderList[714]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateZ" "RigRN.placeHolderList[715]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateX" "RigRN.placeHolderList[716]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateY" "RigRN.placeHolderList[717]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateZ" "RigRN.placeHolderList[718]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.heelRock" "RigRN.placeHolderList[719]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.toeLift" "RigRN.placeHolderList[720]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleBank" "RigRN.placeHolderList[721]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockR" "RigRN.placeHolderList[722]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockL" "RigRN.placeHolderList[723]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ballPivot" "RigRN.placeHolderList[724]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateX" 
		"RigRN.placeHolderList[725]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateY" 
		"RigRN.placeHolderList[726]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateZ" 
		"RigRN.placeHolderList[727]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl.translateX" 
		"RigRN.placeHolderList[728]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl.translateY" 
		"RigRN.placeHolderList[729]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl.translateZ" 
		"RigRN.placeHolderList[730]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl.aim" 
		"RigRN.placeHolderList[731]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl.lock" 
		"RigRN.placeHolderList[732]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl.weaponParent" 
		"RigRN.placeHolderList[733]" ""
		5 0 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1.rHandAttachW1" 
		"|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1.target[1].targetWeight" 
		"RigRN.placeHolderList[734]" "RigRN.placeHolderList[735]" ""
		5 2 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1.target[1].targetRotate" 
		"RigRN.placeHolderList[736]" ""
		5 2 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1.target[1].targetRotateOrder" 
		"RigRN.placeHolderList[737]" ""
		5 2 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1.target[1].targetParentMatrix" 
		"RigRN.placeHolderList[738]" ""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateX" "RigRN.placeHolderList[739]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateY" "RigRN.placeHolderList[740]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateZ" "RigRN.placeHolderList[741]" 
		""
		5 3 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.message" 
		"RigRN.placeHolderList[742]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.rotateX" 
		"RigRN.placeHolderList[743]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.rotateY" 
		"RigRN.placeHolderList[744]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.rotateZ" 
		"RigRN.placeHolderList[745]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.bip_thumb_0_RControlRoll" 
		"RigRN.placeHolderList[746]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.bip_index_0_RControlRoll" 
		"RigRN.placeHolderList[747]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.bip_middle_0_RControlRoll" 
		"RigRN.placeHolderList[748]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.bip_ring_0_RControlRoll" 
		"RigRN.placeHolderList[749]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.bip_pinky_0_RControlRoll" 
		"RigRN.placeHolderList[750]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.visibility" 
		"RigRN.placeHolderList[751]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateX" 
		"RigRN.placeHolderList[752]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateY" 
		"RigRN.placeHolderList[753]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateZ" 
		"RigRN.placeHolderList[754]" ""
		5 3 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup.message" 
		"RigRN.placeHolderList[755]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl.rotateX" 
		"RigRN.placeHolderList[756]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl.rotateX" 
		"RigRN.placeHolderList[757]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateX" 
		"RigRN.placeHolderList[758]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateY" 
		"RigRN.placeHolderList[759]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateZ" 
		"RigRN.placeHolderList[760]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl.rotateX" 
		"RigRN.placeHolderList[761]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl.rotateX" 
		"RigRN.placeHolderList[762]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateX" 
		"RigRN.placeHolderList[763]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateY" 
		"RigRN.placeHolderList[764]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateZ" 
		"RigRN.placeHolderList[765]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl.rotateX" 
		"RigRN.placeHolderList[766]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl.rotateX" 
		"RigRN.placeHolderList[767]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateX" 
		"RigRN.placeHolderList[768]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateY" 
		"RigRN.placeHolderList[769]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateZ" 
		"RigRN.placeHolderList[770]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl.rotateX" 
		"RigRN.placeHolderList[771]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl.rotateX" 
		"RigRN.placeHolderList[772]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateX" 
		"RigRN.placeHolderList[773]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateY" 
		"RigRN.placeHolderList[774]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateZ" 
		"RigRN.placeHolderList[775]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl.rotateX" 
		"RigRN.placeHolderList[776]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl.rotateX" 
		"RigRN.placeHolderList[777]" ""
		5 3 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControlGroup_parentConstraint1.message" 
		"RigRN.placeHolderList[778]" ""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateX" "RigRN.placeHolderList[779]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateY" "RigRN.placeHolderList[780]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateZ" "RigRN.placeHolderList[781]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleLift" "RigRN.placeHolderList[782]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateX" "RigRN.placeHolderList[783]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateY" "RigRN.placeHolderList[784]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateZ" "RigRN.placeHolderList[785]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateX" "RigRN.placeHolderList[786]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateY" "RigRN.placeHolderList[787]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateZ" "RigRN.placeHolderList[788]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.heelRock" "RigRN.placeHolderList[789]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.toeLift" "RigRN.placeHolderList[790]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleBank" "RigRN.placeHolderList[791]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockR" "RigRN.placeHolderList[792]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockL" "RigRN.placeHolderList[793]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ballPivot" "RigRN.placeHolderList[794]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateX" 
		"RigRN.placeHolderList[795]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateY" 
		"RigRN.placeHolderList[796]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateZ" 
		"RigRN.placeHolderList[797]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl.translateX" 
		"RigRN.placeHolderList[798]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl.translateY" 
		"RigRN.placeHolderList[799]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl.translateZ" 
		"RigRN.placeHolderList[800]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl.rotateX" 
		"RigRN.placeHolderList[801]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl.rotateY" 
		"RigRN.placeHolderList[802]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backUpperControlGroup|Rig:Ref:prp_bullet_backUpperControl.rotateZ" 
		"RigRN.placeHolderList[803]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backLowerControlGroup|Rig:Ref:prp_bullet_backLowerControl.translateX" 
		"RigRN.placeHolderList[804]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backLowerControlGroup|Rig:Ref:prp_bullet_backLowerControl.translateY" 
		"RigRN.placeHolderList[805]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backLowerControlGroup|Rig:Ref:prp_bullet_backLowerControl.translateZ" 
		"RigRN.placeHolderList[806]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backLowerControlGroup|Rig:Ref:prp_bullet_backLowerControl.rotateX" 
		"RigRN.placeHolderList[807]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backLowerControlGroup|Rig:Ref:prp_bullet_backLowerControl.rotateY" 
		"RigRN.placeHolderList[808]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_backLowerControlGroup|Rig:Ref:prp_bullet_backLowerControl.rotateZ" 
		"RigRN.placeHolderList[809]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_sideControlGroup|Rig:Ref:prp_bullet_sideControl.translateX" 
		"RigRN.placeHolderList[810]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_sideControlGroup|Rig:Ref:prp_bullet_sideControl.translateY" 
		"RigRN.placeHolderList[811]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_sideControlGroup|Rig:Ref:prp_bullet_sideControl.translateZ" 
		"RigRN.placeHolderList[812]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_sideControlGroup|Rig:Ref:prp_bullet_sideControl.rotateX" 
		"RigRN.placeHolderList[813]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_sideControlGroup|Rig:Ref:prp_bullet_sideControl.rotateY" 
		"RigRN.placeHolderList[814]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_sideControlGroup|Rig:Ref:prp_bullet_sideControl.rotateZ" 
		"RigRN.placeHolderList[815]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.translateX" 
		"RigRN.placeHolderList[816]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.translateY" 
		"RigRN.placeHolderList[817]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.translateZ" 
		"RigRN.placeHolderList[818]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.rotateX" 
		"RigRN.placeHolderList[819]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.rotateY" 
		"RigRN.placeHolderList[820]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestLowerControlGroup|Rig:Ref:prp_bullet_chestLowerControl.rotateZ" 
		"RigRN.placeHolderList[821]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.translateX" 
		"RigRN.placeHolderList[822]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.translateY" 
		"RigRN.placeHolderList[823]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.translateZ" 
		"RigRN.placeHolderList[824]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.rotateX" 
		"RigRN.placeHolderList[825]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.rotateY" 
		"RigRN.placeHolderList[826]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_bullet_chestUpperControlGroup|Rig:Ref:prp_bullet_chestUpperControl.rotateZ" 
		"RigRN.placeHolderList[827]" ""
		5 0 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.instObjGroups" 
		"Rig:plotted.dagSetMembers" "RigRN.placeHolderList[828]" "RigRN.placeHolderList[829]" 
		""
		5 0 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.instObjGroups" 
		"Rig:plotted.dagSetMembers" "RigRN.placeHolderList[830]" "RigRN.placeHolderList[831]" 
		""
		5 0 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:sub_space_grp_L|Rig:lHandControl.instObjGroups" 
		"Rig:plotted.dagSetMembers" "RigRN.placeHolderList[832]" "RigRN.placeHolderList[833]" 
		""
		5 0 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:sub_space_grp_R|Rig:rHandControl.instObjGroups" 
		"Rig:plotted.dagSetMembers" "RigRN.placeHolderList[834]" "RigRN.placeHolderList[835]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "WepRN";
	setAttr ".fn[0]" -type "string" "%VCONTENT%/tf/models/weapons/w_models/w_minigun/parts/maya/w_minigun_reference.ma";
	setAttr -s 44 ".phl";
	setAttr ".phl[0]" -0.5016152274063107;
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" -type "matrix" 0.99255082801997685 -0.12018262435410035 -0.019974749065244626 0
		 0.11938981243959906 0.99215686552892612 -0.037024679194473838 0 0.024267807533760483 0.034364094447221404 0.99911469938657538 0
		 -15.377073331393946 41.364925680370987 -9.9356447249975481 1;
	setAttr ".phl[3]" -type "double3" -0.25217943211607008 0 0 ;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" -type "matrix" 0.99255082801997685 -0.12018262435410035 -0.019974749065244626 0
		 0.11938981243959906 0.99215686552892612 -0.037024679194473838 0 0.024267807533760483 0.034364094447221404 0.99911469938657538 0
		 -15.377073331393946 41.364925680370987 -9.9356447249975481 1;
	setAttr ".phl[23]" -type "double3" -0.16872933894194775 0.23164891616040811 -7.6951704624030173 ;
	setAttr ".phl[30]" -type "matrix" 0.99255082801997685 -0.12018262435410035 -0.019974749065244626 0
		 0.11938981243959906 0.99215686552892612 -0.037024679194473838 0 0.024267807533760483 0.034364094447221404 0.99911469938657538 0
		 -15.377073331393946 41.364925680370987 -9.9356447249975481 1;
	setAttr ".phl[31]" -type "double3" -0.12439370560952323 2.4579077525811699 -2.1318459962210712 ;
	setAttr ".phl[32]" -type "double3" 0 0 0 ;
	setAttr ".phl[34]" -type "double3" 5.7391499922303071 5.6013598765964421 -0.14807339321279667 ;
	setAttr ".phl[41]" -type "matrix" 0.99255082801997685 -0.12018262435410035 -0.019974749065244626 0
		 0.11938981243959906 0.99215686552892612 -0.037024679194473838 0 0.024267807533760483 0.034364094447221404 0.99911469938657538 0
		 -15.377073331393946 41.364925680370987 -9.9356447249975481 1;
	setAttr ".phl[42]" -type "double3" 0 4.8151698246408277 24.696150220125766 ;
	setAttr ".phl[43]" -type "double3" 0 0 0 ;
	setAttr ".ed" -type "dataReferenceEdits" 
		"WepRN"
		"WepRN" 86
		2 "|Wep:minigun|Wep:lHandAttach" "scale" " -type \"double3\" 4.449541 4.449541 4.449541"
		
		2 "|Wep:minigun" "translate" " -type \"double3\" -18.988685 45.518792 1.772578"
		
		2 "|Wep:minigun" "translateY" " -av"
		2 "|Wep:minigun" "translateZ" " -av"
		2 "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach" "translate" 
		" -type \"double3\" -0.168729 0.231649 -7.69517"
		2 "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach" "translateX" 
		" -av"
		2 "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach" "translateZ" 
		" -av"
		2 "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach" "translateY" 
		" -av"
		2 "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach" "translate" 
		" -type \"double3\" 5.73915 5.60136 -0.148073"
		2 "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach" "translateX" 
		" -av"
		2 "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach" "translateY" 
		" -av"
		2 "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach" "translateZ" 
		" -av"
		2 "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach" "rotate" " -type \"double3\" -39.006044 -28.740435 -3.526109"
		
		2 "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach" "rotateZ" " -av"
		
		2 "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach" "rotateX" " -av"
		
		2 "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach" "rotateY" " -av"
		
		2 "|Wep:miniGunControl" "translate" " -type \"double3\" -46.343899 67.295589 11.469578"
		
		2 "|Wep:miniGunControl" "translateX" " -av"
		2 "|Wep:miniGunControl" "translateY" " -av"
		2 "|Wep:miniGunControl" "translateZ" " -av"
		2 "|Wep:miniGunControl" "rotate" " -type \"double3\" -36.224874 -2.93591 -22.187664"
		
		2 "|Wep:miniGunControl" "rotateX" " -av"
		2 "|Wep:miniGunControl" "rotateY" " -av"
		2 "|Wep:miniGunControl" "rotateZ" " -av"
		2 "|Wep:miniGunControl|Wep:barrelControl" "translate" " -type \"double3\" -4.175553 -0.63672 46.330562"
		
		2 "|Wep:miniGunControl|Wep:barrelControl" "translateX" " -k 0"
		2 "|Wep:miniGunControl|Wep:barrelControl" "translateY" " -k 0"
		2 "|Wep:miniGunControl|Wep:barrelControl" "translateZ" " -k 0"
		5 4 "WepRN" "|Wep:minigun.translateY" "WepRN.placeHolderList[6]" ""
		5 4 "WepRN" "|Wep:minigun.translateZ" "WepRN.placeHolderList[7]" ""
		5 4 "WepRN" "|Wep:minigun.translateX" "WepRN.placeHolderList[8]" ""
		5 4 "WepRN" "|Wep:minigun.rotateX" "WepRN.placeHolderList[9]" ""
		5 4 "WepRN" "|Wep:minigun.rotateY" "WepRN.placeHolderList[10]" ""
		5 4 "WepRN" "|Wep:minigun.rotateZ" "WepRN.placeHolderList[11]" ""
		5 1 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.rotate" 
		"WepRN.placeHolderList[0]" ""
		5 1 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.rotateOrder" 
		"WepRN.placeHolderList[1]" ""
		5 1 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.parentMatrix" 
		"WepRN.placeHolderList[2]" ""
		5 1 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.rotate" 
		"WepRN.placeHolderList[3]" ""
		5 1 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.rotateOrder" 
		"WepRN.placeHolderList[4]" ""
		5 1 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.parentMatrix" 
		"WepRN.placeHolderList[5]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.parentToGun" 
		"WepRN.placeHolderList[22]" ""
		5 3 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.translate" 
		"WepRN.placeHolderList[23]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.translateX" 
		"WepRN.placeHolderList[24]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.translateZ" 
		"WepRN.placeHolderList[25]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.translateY" 
		"WepRN.placeHolderList[26]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.rotateX" 
		"WepRN.placeHolderList[27]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.rotateY" 
		"WepRN.placeHolderList[28]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.rotateZ" 
		"WepRN.placeHolderList[29]" ""
		5 3 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.parentMatrix" 
		"WepRN.placeHolderList[30]" ""
		5 3 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.rotatePivot" 
		"WepRN.placeHolderList[31]" ""
		5 3 "WepRN" "|Wep:miniGunControl|Wep:rHandAttachGroup|Wep:rHandAttach.rotatePivotTranslate" 
		"WepRN.placeHolderList[32]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.parentToGun" 
		"WepRN.placeHolderList[33]" ""
		5 3 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.translate" 
		"WepRN.placeHolderList[34]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.translateX" 
		"WepRN.placeHolderList[35]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.translateY" 
		"WepRN.placeHolderList[36]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.translateZ" 
		"WepRN.placeHolderList[37]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.rotateZ" 
		"WepRN.placeHolderList[38]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.rotateX" 
		"WepRN.placeHolderList[39]" ""
		5 4 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.rotateY" 
		"WepRN.placeHolderList[40]" ""
		5 3 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.parentMatrix" 
		"WepRN.placeHolderList[41]" ""
		5 3 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.rotatePivot" 
		"WepRN.placeHolderList[42]" ""
		5 3 "WepRN" "|Wep:miniGunControl|Wep:lHandAttachGroup|Wep:lHandAttach.rotatePivotTranslate" 
		"WepRN.placeHolderList[43]" ""
		5 3 "WepRN" "|Wep:miniGunControl.translate" "WepRN.placeHolderList[75]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.translate" "WepRN.placeHolderList[76]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.rotatePivot" "WepRN.placeHolderList[80]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.rotatePivot" "WepRN.placeHolderList[81]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.rotatePivotTranslate" "WepRN.placeHolderList[82]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.rotatePivotTranslate" "WepRN.placeHolderList[83]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.rotate" "WepRN.placeHolderList[84]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.rotate" "WepRN.placeHolderList[85]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.rotateOrder" "WepRN.placeHolderList[89]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.rotateOrder" "WepRN.placeHolderList[90]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.scale" "WepRN.placeHolderList[91]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.scale" "WepRN.placeHolderList[92]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.parentMatrix" "WepRN.placeHolderList[96]" 
		""
		5 3 "WepRN" "|Wep:miniGunControl.parentMatrix" "WepRN.placeHolderList[97]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.translateX" "WepRN.placeHolderList[98]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.translateY" "WepRN.placeHolderList[99]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.translateZ" "WepRN.placeHolderList[100]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.rotateX" "WepRN.placeHolderList[101]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.rotateY" "WepRN.placeHolderList[102]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.rotateZ" "WepRN.placeHolderList[103]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.scaleX" "WepRN.placeHolderList[104]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.scaleY" "WepRN.placeHolderList[105]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.scaleZ" "WepRN.placeHolderList[106]" 
		""
		5 4 "WepRN" "|Wep:miniGunControl.visibility" "WepRN.placeHolderList[107]" 
		""
		"Wep:GunRN" 1
		2 "Wep:Gun:minigunMesh" "visibility" " 1"
		"Wep:RefRN" 13
		2 "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone" "rotate" " -type \"double3\" -36.224874 -2.93591 -22.187664"
		
		2 "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone" "rotateX" " -av"
		2 "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone" "rotateY" " -av"
		2 "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone" "rotateZ" " -av"
		2 "Wep:Ref:mesh_layer" "visibility" " 1"
		5 3 "WepRN" "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone.rotate" "WepRN.placeHolderList[67]" 
		""
		5 3 "WepRN" "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone.translate" "WepRN.placeHolderList[68]" 
		""
		5 3 "WepRN" "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone.rotateOrder" "WepRN.placeHolderList[69]" 
		""
		5 3 "WepRN" "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone.rotatePivot" "WepRN.placeHolderList[70]" 
		""
		5 3 "WepRN" "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone.rotatePivotTranslate" 
		"WepRN.placeHolderList[71]" ""
		5 3 "WepRN" "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone.jointOrient" "WepRN.placeHolderList[72]" 
		""
		5 3 "WepRN" "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone.parentMatrix" 
		"WepRN.placeHolderList[73]" ""
		5 3 "WepRN" "|Wep:Ref:minigunInfo|Wep:Ref:weapon_bone.parentMatrix" 
		"WepRN.placeHolderList[74]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast -20 -aet 60 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTL -n "Wep:rHandAttach_translateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -0.16872933894194775;
createNode animCurveTL -n "Wep:rHandAttach_translateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0.23164891616040811;
createNode animCurveTL -n "Wep:rHandAttach_translateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -7.6951704624030173;
createNode animCurveTL -n "Wep:lHandAttach_translateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 5.7391499922303071;
createNode animCurveTL -n "Wep:lHandAttach_translateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 5.6013598765964421;
createNode animCurveTL -n "Wep:lHandAttach_translateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -0.14807339321279667;
createNode animCurveTL -n "Wep:minigun_translateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1.25 -18.988685288421259;
createNode animCurveTL -n "Wep:minigun_translateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1.25 45.518791746055761;
createNode animCurveTL -n "Wep:minigun_translateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1.25 1.772578289389803;
createNode animCurveTA -n "Wep:minigun_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1.25 2.3610025374795285;
createNode animCurveTA -n "Wep:minigun_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1.25 15.053590280743474;
createNode animCurveTA -n "Wep:minigun_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1.25 5.4964663946846084;
createNode animCurveTA -n "Rig:Ref:bip_knee_LFK_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_knee_LFK_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_knee_RFK_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_knee_RFK_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_LFK_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_LFK_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_RFK_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_RFK_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_LControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 7.9513867036587939e-016;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_LControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 3.1805546814635176e-015;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_LControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 7.9513867036587939e-016;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_LControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -7.9513867036587939e-016;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_LControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.5902773407317584e-015;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_LControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_LControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_LControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -1.5902773407317588e-015;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_LControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.5902773407317576e-015;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_LControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -2.3854160110976364e-015;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_LControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 7.9513867036587899e-016;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_LControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -7.9513867036587899e-016;
createNode animCurveTA -n "Rig:Ref:bip_index_1_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_index_1_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -7.9513867036587959e-016;
createNode animCurveTA -n "Rig:Ref:bip_index_2_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.9878466759146964e-015;
createNode animCurveTA -n "Rig:Ref:bip_index_2_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.9878466759146984e-015;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 2.782985346280578e-015;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -1.192708005548818e-015;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.192708005548818e-015;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.590277340731758e-015;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.590277340731758e-015;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -7.9513867036587939e-016;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.5902773407317588e-015;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.5902773407317588e-015;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -3.5781240166464536e-015;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 7.951386703658785e-016;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 7.9513867036587939e-016;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_RControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_RControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Wep:lHandAttach_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -39.006044259588698;
createNode animCurveTA -n "Wep:lHandAttach_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -28.740435469876626;
createNode animCurveTA -n "Wep:lHandAttach_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -3.5261087247495868;
createNode animCurveTU -n "Wep:lHandAttach_parentToGun";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "Wep:rHandAttach_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -14.448817140256663;
createNode animCurveTA -n "Wep:rHandAttach_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Wep:rHandAttach_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Wep:rHandAttach_parentToGun";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:rFootControl_footRoll";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_rock";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_footRoll";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_rock";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:Ref:prp_bullet_chestLowerControl_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Rig:Ref:prp_bullet_chestLowerControl_scaleX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:Ref:prp_bullet_chestLowerControl_scaleY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:Ref:prp_bullet_chestLowerControl_scaleZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:Ref:prp_bullet_chestUpperControl_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Rig:Ref:prp_bullet_chestUpperControl_scaleX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:Ref:prp_bullet_chestUpperControl_scaleY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:Ref:prp_bullet_chestUpperControl_scaleZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
createNode time -n "assetsNode";
	addAttr -ci true -sn "zooAssetNode" -ln "zooAssetNode" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "globalcreator" -ln "globalcreator" -dt "string";
	setAttr ".o" 0;
	setAttr ".globalcreator" -type "string" "johnm";
createNode animCurveTU -n "Rig:main_spineIKFK";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_lArmIKFK";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_rArmIKFK";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_rLegIKFK";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_lLegIKFK";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:main_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:main_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:main_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_visibility";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:main_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:main_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:main_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:UpperbodyControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -2.5911278977825312;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:UpperbodyControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0.20335783988875722;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:UpperbodyControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1.3456806008131625;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -2.3256932009564131;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -20.484622927173451;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -20.296046002934279;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:PelvisControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:PelvisControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:PelvisControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_packControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_packControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_packControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_packControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 9;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_packControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_packControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 3.527802410918004;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 7.5961390674404479;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 6.004010263279933;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 16.390833446327711;
	setAttr ".kix[0]"  0.66613203287124634;
	setAttr ".kiy[0]"  0.015555305406451225;
	setAttr ".kox[0]"  0.66613191366195679;
	setAttr ".koy[0]"  0.015555303543806076;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1.297896476734224;
	setAttr ".kix[0]"  0.65390270948410034;
	setAttr ".kiy[0]"  -0.010024547576904297;
	setAttr ".kox[0]"  0.65390264987945557;
	setAttr ".koy[0]"  -0.010024548508226871;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 7.8509948326512777;
	setAttr ".kix[0]"  0.66654694080352783;
	setAttr ".kiy[0]"  0.0083157084882259369;
	setAttr ".kox[0]"  0.66654676198959351;
	setAttr ".koy[0]"  0.0083157112821936607;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -2.2007268087664986;
	setAttr ".kix[0]"  0.66613203287124634;
	setAttr ".kiy[0]"  0.015555305406451225;
	setAttr ".kox[0]"  0.66613191366195679;
	setAttr ".koy[0]"  0.015555303543806076;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1.9313681133637814;
	setAttr ".kix[0]"  0.64823168516159058;
	setAttr ".kiy[0]"  -0.00057372113224118948;
	setAttr ".kox[0]"  0.64823180437088013;
	setAttr ".koy[0]"  -0.00057372136507183313;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -3.8352315730399611;
	setAttr ".kix[0]"  0.66654694080352783;
	setAttr ".kiy[0]"  0.0083157084882259369;
	setAttr ".kox[0]"  0.66654676198959351;
	setAttr ".koy[0]"  0.0083157112821936607;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -0.41726091910905311;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 3.4000154622932306;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -6.2484803154341098;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:ikChest_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:ikChest_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:ikChest_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:ikChest_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:ikChest_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:ikChest_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_knee_LFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_knee_RFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lShoulderControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0.00054390517919978318;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lShoulderControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 13.519143288752018;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lShoulderControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -0.46471902809785887;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_LFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rShoulderControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 11.126861064754284;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rShoulderControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 3.3256238047835982;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rShoulderControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -1.7298391617605675;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_RFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_shoulderControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_shoulderControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_shoulderControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_shoulderControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_shoulderControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_shoulderControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:neckControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -9.2974504741539405;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:neckControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -4.8832231183968702;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:neckControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0.98728246446034951;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:neckControl_lock";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:headControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 3.8953873134581287;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:headControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 7.0463982391357147;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:headControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 3.9818947390023327;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:headControl_lock";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:likHandControl_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.133543;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:likHandControl_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -13.687739;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:likHandControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.322381;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:likHandControl_aim";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:likHandControl_lock";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:likHandControl_weaponParent";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lElbowControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 8.5761946313896598;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lElbowControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 7.6640970983010188;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lElbowControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -0.67707800520743056;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lHandControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -105.85168800000002;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lHandControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -21.295846;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lHandControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 35.836161;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_thumb_0_LControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -0.60000000000000142;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_index_0_LControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 13.2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_middle_0_LControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 45.1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_ring_0_LControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 28.900000000000002;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_pinky_0_LControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 45.1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_visibility";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1.7890620080000001e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -17.843180539999999;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -19.434120629999999;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 32.543067986630938;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 38.43724229;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 22.482861037225302;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -13.319003165533172;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 5.3317332145246841;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_1_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -26.136249009865484;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_2_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 42.350268126452342;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 7.9513867039999989e-016;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 6.9690203543952336;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 6.3611093630000008e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 6.5093299417509085;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 15.937689219034391;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1.91299482872032;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0.9583919211239994;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 25.564197173920469;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -13.6186089071334;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 6.3611093630000008e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_LControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -3.1805546809999998e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lkneeControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -0.70355602640000003;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lkneeControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0.64486718180000002;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lkneeControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 21.190085;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lFootControl_ankleLift";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lFootControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0.56490835360000002;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lFootControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 10.391696120000001;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lFootControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -0.10448266126542993;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lFootControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 16.0089465;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lFootControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0.67559113640000001;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lFootControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0.61106082849999999;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lFootControl_heelRock";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lFootControl_toeLift";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lFootControl_ankleBank";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lFootControl_rockR";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lFootControl_rockL";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lFootControl_ballPivot";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lToeControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lToeControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lToeControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rikHandControl_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.9206269975217687;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rikHandControl_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.761954684286177;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rikHandControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.6465543493506711;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rikHandControl_aim";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rikHandControl_lock";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rikHandControl_weaponParent";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rElbowControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 11.871314492809184;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rElbowControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -4.2200743999999997;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rElbowControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -57.137032063700822;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rHandControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -40.53977247212692;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rHandControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 16.468072735751374;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rHandControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -4.3564515364796241;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rHandControl_bip_thumb_0_RControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rHandControl_bip_index_0_RControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 26.7;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rHandControl_bip_middle_0_RControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 49.7;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rHandControl_bip_ring_0_RControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 42.2;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rHandControl_bip_pinky_0_RControlRoll";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 36;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rHandControl_visibility";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -16.926884524168848;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 7.9513867039999989e-016;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 10.754765730000001;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 18.831589600346625;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 2.8823776800000001e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -7.9513867039999989e-016;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 5.0939109095593356;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_1_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 6.3611093630000008e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_2_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -3.1805546809999998e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -7.9513867039999989e-016;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -7.9513867039999989e-016;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -2.9817700140000002e-016;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -6.3611093630000008e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1.5902773409999999e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1.5902773409999999e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 4.9696166900000003e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -3.1805546809999998e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -1.5902773409999999e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -12.489333090085625;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 3.1805546809999998e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_RControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -3.1805546809999998e-015;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rkneeControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -13.244924462675648;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rkneeControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -6.2893589859999999;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rkneeControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 9.4628617500000001;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ankleLift";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rFootControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -0.062099135615218515;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rFootControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -3.3774516125506375;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rFootControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rFootControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -59.191928231296728;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rFootControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rFootControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_heelRock";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_toeLift";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ankleBank";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_rockR";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_rockL";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ballPivot";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rToeControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rToeControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rToeControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_backUpperControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 -1.1967740600000001;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_backUpperControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 1.7621519889999999;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_backUpperControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0.85346913300000005;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_backUpperControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_backUpperControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_backUpperControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_backLowerControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_backLowerControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_backLowerControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_backLowerControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_backLowerControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_backLowerControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_sideControl_translateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_sideControl_translateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_sideControl_translateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_sideControl_rotateX";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_sideControl_rotateY";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_sideControl_rotateZ";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_chestLowerControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -3.0242369391422188;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_chestLowerControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -1.3763893575979209;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_chestLowerControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0.75675114264372823;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_chestLowerControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 4.7506254701783801;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_chestLowerControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -0.29684704335672235;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_chestLowerControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -2.386518673958375;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_chestUpperControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -1.3004424219999999;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_chestUpperControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 2.0443449949999999;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_bullet_chestUpperControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -1.562270225;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_chestUpperControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1.1615007788526539;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_chestUpperControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 4.7892267968763713;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_bullet_chestUpperControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 5.6600472289724415;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Wep:miniGunControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 11.46957750555482;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Wep:miniGunControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 67.295589244198879;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Wep:miniGunControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -46.343899049906412;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Wep:miniGunControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -36.224873993864655;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Wep:miniGunControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -2.9359102934197963;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Wep:miniGunControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -22.187663715851993;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Wep:miniGunControl_scaleX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Wep:miniGunControl_scaleY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Wep:miniGunControl_scaleZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Wep:miniGunControl_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".maxr" 2;
	setAttr -s 27 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "raster use opacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode mentalrayOptions -s -n "miContourPreset";
createNode mentalrayOptions -s -n "Draft";
	setAttr ".maxr" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".scan" 0;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" no;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "surfaceSamplingMiOptionsNode";
	setAttr ".splck" no;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 3;
	setAttr ".jit" yes;
	setAttr ".rflr" 6;
	setAttr ".rfrr" 6;
	setAttr ".maxr" 6;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".splck" no;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".ray" no;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".splck" no;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n"
		+ "            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n"
		+ "                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 75 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr ".mcfr" 30;
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr ".hwfr" 30;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :ikSystem;
	setAttr -s 2 ".sol";
select -ne :hyperGraphLayout;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].isc" yes;
	setAttr ".hyp[34].isc" yes;
	setAttr ".hyp[36].isc" yes;
	setAttr ".hyp[37].isc" yes;
connectAttr "Rig:main_spineIKFK.o" "RigRN.phl[562]";
connectAttr "Rig:main_translateX.o" "RigRN.phl[563]";
connectAttr "Rig:main_translateY.o" "RigRN.phl[564]";
connectAttr "Rig:main_translateZ.o" "RigRN.phl[565]";
connectAttr "Rig:main_rotateX.o" "RigRN.phl[566]";
connectAttr "Rig:main_rotateY.o" "RigRN.phl[567]";
connectAttr "Rig:main_rotateZ.o" "RigRN.phl[568]";
connectAttr "Rig:main_lArmIKFK.o" "RigRN.phl[569]";
connectAttr "Rig:main_rArmIKFK.o" "RigRN.phl[570]";
connectAttr "Rig:main_rLegIKFK.o" "RigRN.phl[571]";
connectAttr "Rig:main_lLegIKFK.o" "RigRN.phl[572]";
connectAttr "Rig:main_visibility.o" "RigRN.phl[573]";
connectAttr "Rig:UpperbodyControl_translateX.o" "RigRN.phl[574]";
connectAttr "Rig:UpperbodyControl_translateY.o" "RigRN.phl[575]";
connectAttr "Rig:UpperbodyControl_translateZ.o" "RigRN.phl[576]";
connectAttr "Rig:UpperbodyControl_rotateX.o" "RigRN.phl[577]";
connectAttr "Rig:UpperbodyControl_rotateY.o" "RigRN.phl[578]";
connectAttr "Rig:UpperbodyControl_rotateZ.o" "RigRN.phl[579]";
connectAttr "Rig:PelvisControl_rotateX.o" "RigRN.phl[580]";
connectAttr "Rig:PelvisControl_rotateY.o" "RigRN.phl[581]";
connectAttr "Rig:PelvisControl_rotateZ.o" "RigRN.phl[582]";
connectAttr "Rig:Ref:prp_packControl_translateX.o" "RigRN.phl[583]";
connectAttr "Rig:Ref:prp_packControl_translateY.o" "RigRN.phl[584]";
connectAttr "Rig:Ref:prp_packControl_translateZ.o" "RigRN.phl[585]";
connectAttr "Rig:Ref:prp_packControl_rotateX.o" "RigRN.phl[586]";
connectAttr "Rig:Ref:prp_packControl_rotateY.o" "RigRN.phl[587]";
connectAttr "Rig:Ref:prp_packControl_rotateZ.o" "RigRN.phl[588]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateX.o" "RigRN.phl[589]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateY.o" "RigRN.phl[590]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateZ.o" "RigRN.phl[591]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateX.o" "RigRN.phl[592]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateY.o" "RigRN.phl[593]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateZ.o" "RigRN.phl[594]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateX.o" "RigRN.phl[595]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateY.o" "RigRN.phl[596]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateZ.o" "RigRN.phl[597]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateX.o" "RigRN.phl[598]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateY.o" "RigRN.phl[599]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateZ.o" "RigRN.phl[600]";
connectAttr "Rig:ikChest_rotateY.o" "RigRN.phl[601]";
connectAttr "Rig:ikChest_rotateX.o" "RigRN.phl[602]";
connectAttr "Rig:ikChest_rotateZ.o" "RigRN.phl[603]";
connectAttr "Rig:ikChest_translateX.o" "RigRN.phl[604]";
connectAttr "Rig:ikChest_translateY.o" "RigRN.phl[605]";
connectAttr "Rig:ikChest_translateZ.o" "RigRN.phl[606]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateX.o" "RigRN.phl[607]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateY.o" "RigRN.phl[608]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateZ.o" "RigRN.phl[609]";
connectAttr "Rig:Ref:bip_knee_LFK_rotateX.o" "RigRN.phl[610]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateX.o" "RigRN.phl[611]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateY.o" "RigRN.phl[612]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateZ.o" "RigRN.phl[613]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateX.o" "RigRN.phl[614]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateY.o" "RigRN.phl[615]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateZ.o" "RigRN.phl[616]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateX.o" "RigRN.phl[617]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateY.o" "RigRN.phl[618]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateZ.o" "RigRN.phl[619]";
connectAttr "Rig:Ref:bip_knee_RFK_rotateX.o" "RigRN.phl[620]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateX.o" "RigRN.phl[621]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateY.o" "RigRN.phl[622]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateZ.o" "RigRN.phl[623]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateX.o" "RigRN.phl[624]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateY.o" "RigRN.phl[625]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateZ.o" "RigRN.phl[626]";
connectAttr "Rig:lShoulderControl_rotateX.o" "RigRN.phl[627]";
connectAttr "Rig:lShoulderControl_rotateY.o" "RigRN.phl[628]";
connectAttr "Rig:lShoulderControl_rotateZ.o" "RigRN.phl[629]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateX.o" "RigRN.phl[630]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateY.o" "RigRN.phl[631]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateZ.o" "RigRN.phl[632]";
connectAttr "Rig:Ref:bip_lowerArm_LFK_rotateX.o" "RigRN.phl[633]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateX.o" "RigRN.phl[634]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateY.o" "RigRN.phl[635]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateZ.o" "RigRN.phl[636]";
connectAttr "Rig:rShoulderControl_rotateX.o" "RigRN.phl[637]";
connectAttr "Rig:rShoulderControl_rotateY.o" "RigRN.phl[638]";
connectAttr "Rig:rShoulderControl_rotateZ.o" "RigRN.phl[639]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateX.o" "RigRN.phl[640]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateY.o" "RigRN.phl[641]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateZ.o" "RigRN.phl[642]";
connectAttr "Rig:Ref:bip_lowerArm_RFK_rotateX.o" "RigRN.phl[643]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateX.o" "RigRN.phl[644]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateY.o" "RigRN.phl[645]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateZ.o" "RigRN.phl[646]";
connectAttr "Rig:Ref:prp_bullet_shoulderControl_translateX.o" "RigRN.phl[647]";
connectAttr "Rig:Ref:prp_bullet_shoulderControl_translateY.o" "RigRN.phl[648]";
connectAttr "Rig:Ref:prp_bullet_shoulderControl_translateZ.o" "RigRN.phl[649]";
connectAttr "Rig:Ref:prp_bullet_shoulderControl_rotateX.o" "RigRN.phl[650]";
connectAttr "Rig:Ref:prp_bullet_shoulderControl_rotateY.o" "RigRN.phl[651]";
connectAttr "Rig:Ref:prp_bullet_shoulderControl_rotateZ.o" "RigRN.phl[652]";
connectAttr "Rig:neckControl_rotateX.o" "RigRN.phl[653]";
connectAttr "Rig:neckControl_rotateY.o" "RigRN.phl[654]";
connectAttr "Rig:neckControl_rotateZ.o" "RigRN.phl[655]";
connectAttr "Rig:neckControl_lock.o" "RigRN.phl[656]";
connectAttr "Rig:headControl_rotateX.o" "RigRN.phl[657]";
connectAttr "Rig:headControl_rotateY.o" "RigRN.phl[658]";
connectAttr "Rig:headControl_rotateZ.o" "RigRN.phl[659]";
connectAttr "Rig:headControl_lock.o" "RigRN.phl[660]";
connectAttr "Rig:likHandControl_translateX.o" "RigRN.phl[661]";
connectAttr "Rig:likHandControl_translateY.o" "RigRN.phl[662]";
connectAttr "Rig:likHandControl_translateZ.o" "RigRN.phl[663]";
connectAttr "Rig:likHandControl_aim.o" "RigRN.phl[664]";
connectAttr "Rig:likHandControl_lock.o" "RigRN.phl[665]";
connectAttr "Rig:likHandControl_weaponParent.o" "RigRN.phl[666]";
connectAttr "RigRN.phl[667]" "RigRN.phl[668]";
connectAttr "WepRN.phl[0]" "RigRN.phl[669]";
connectAttr "WepRN.phl[1]" "RigRN.phl[670]";
connectAttr "WepRN.phl[2]" "RigRN.phl[671]";
connectAttr "Rig:lElbowControl_translateX.o" "RigRN.phl[672]";
connectAttr "Rig:lElbowControl_translateY.o" "RigRN.phl[673]";
connectAttr "Rig:lElbowControl_translateZ.o" "RigRN.phl[674]";
connectAttr "Rig:lHandControl_rotateX.o" "RigRN.phl[675]";
connectAttr "Rig:lHandControl_rotateY.o" "RigRN.phl[676]";
connectAttr "Rig:lHandControl_rotateZ.o" "RigRN.phl[677]";
connectAttr "Rig:lHandControl_bip_thumb_0_LControlRoll.o" "RigRN.phl[678]";
connectAttr "Rig:lHandControl_bip_index_0_LControlRoll.o" "RigRN.phl[679]";
connectAttr "Rig:lHandControl_bip_middle_0_LControlRoll.o" "RigRN.phl[680]";
connectAttr "Rig:lHandControl_bip_ring_0_LControlRoll.o" "RigRN.phl[681]";
connectAttr "Rig:lHandControl_bip_pinky_0_LControlRoll.o" "RigRN.phl[682]";
connectAttr "Rig:lHandControl_visibility.o" "RigRN.phl[683]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateX.o" "RigRN.phl[684]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateY.o" "RigRN.phl[685]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateZ.o" "RigRN.phl[686]";
connectAttr "Rig:Ref:bip_thumb_1_LControl_rotateX.o" "RigRN.phl[687]";
connectAttr "Rig:Ref:bip_thumb_2_LControl_rotateX.o" "RigRN.phl[688]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateX.o" "RigRN.phl[689]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateY.o" "RigRN.phl[690]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateZ.o" "RigRN.phl[691]";
connectAttr "Rig:Ref:bip_index_1_LControl_rotateX.o" "RigRN.phl[692]";
connectAttr "Rig:Ref:bip_index_2_LControl_rotateX.o" "RigRN.phl[693]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateX.o" "RigRN.phl[694]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateY.o" "RigRN.phl[695]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateZ.o" "RigRN.phl[696]";
connectAttr "Rig:Ref:bip_middle_1_LControl_rotateX.o" "RigRN.phl[697]";
connectAttr "Rig:Ref:bip_middle_2_LControl_rotateX.o" "RigRN.phl[698]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateX.o" "RigRN.phl[699]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateY.o" "RigRN.phl[700]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateZ.o" "RigRN.phl[701]";
connectAttr "Rig:Ref:bip_ring_1_LControl_rotateX.o" "RigRN.phl[702]";
connectAttr "Rig:Ref:bip_ring_2_LControl_rotateX.o" "RigRN.phl[703]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateX.o" "RigRN.phl[704]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateY.o" "RigRN.phl[705]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateZ.o" "RigRN.phl[706]";
connectAttr "Rig:Ref:bip_pinky_1_LControl_rotateX.o" "RigRN.phl[707]";
connectAttr "Rig:Ref:bip_pinky_2_LControl_rotateX.o" "RigRN.phl[708]";
connectAttr "Rig:lkneeControl_translateX.o" "RigRN.phl[709]";
connectAttr "Rig:lkneeControl_translateY.o" "RigRN.phl[710]";
connectAttr "Rig:lkneeControl_translateZ.o" "RigRN.phl[711]";
connectAttr "Rig:lFootControl_ankleLift.o" "RigRN.phl[712]";
connectAttr "Rig:lFootControl_translateX.o" "RigRN.phl[713]";
connectAttr "Rig:lFootControl_translateY.o" "RigRN.phl[714]";
connectAttr "Rig:lFootControl_translateZ.o" "RigRN.phl[715]";
connectAttr "Rig:lFootControl_rotateX.o" "RigRN.phl[716]";
connectAttr "Rig:lFootControl_rotateY.o" "RigRN.phl[717]";
connectAttr "Rig:lFootControl_rotateZ.o" "RigRN.phl[718]";
connectAttr "Rig:lFootControl_heelRock.o" "RigRN.phl[719]";
connectAttr "Rig:lFootControl_toeLift.o" "RigRN.phl[720]";
connectAttr "Rig:lFootControl_ankleBank.o" "RigRN.phl[721]";
connectAttr "Rig:lFootControl_rockR.o" "RigRN.phl[722]";
connectAttr "Rig:lFootControl_rockL.o" "RigRN.phl[723]";
connectAttr "Rig:lFootControl_ballPivot.o" "RigRN.phl[724]";
connectAttr "Rig:lToeControl_rotateX.o" "RigRN.phl[725]";
connectAttr "Rig:lToeControl_rotateY.o" "RigRN.phl[726]";
connectAttr "Rig:lToeControl_rotateZ.o" "RigRN.phl[727]";
connectAttr "Rig:rikHandControl_translateX.o" "RigRN.phl[728]";
connectAttr "Rig:rikHandControl_translateY.o" "RigRN.phl[729]";
connectAttr "Rig:rikHandControl_translateZ.o" "RigRN.phl[730]";
connectAttr "Rig:rikHandControl_aim.o" "RigRN.phl[731]";
connectAttr "Rig:rikHandControl_lock.o" "RigRN.phl[732]";
connectAttr "Rig:rikHandControl_weaponParent.o" "RigRN.phl[733]";
connectAttr "RigRN.phl[734]" "RigRN.phl[735]";
connectAttr "WepRN.phl[3]" "RigRN.phl[736]";
connectAttr "WepRN.phl[4]" "RigRN.phl[737]";
connectAttr "WepRN.phl[5]" "RigRN.phl[738]";
connectAttr "Rig:rElbowControl_translateX.o" "RigRN.phl[739]";
connectAttr "Rig:rElbowControl_translateY.o" "RigRN.phl[740]";
connectAttr "Rig:rElbowControl_translateZ.o" "RigRN.phl[741]";
connectAttr "RigRN.phl[742]" ":hyperGraphLayout.hyp[36].dn";
connectAttr "Rig:rHandControl_rotateX.o" "RigRN.phl[743]";
connectAttr "Rig:rHandControl_rotateY.o" "RigRN.phl[744]";
connectAttr "Rig:rHandControl_rotateZ.o" "RigRN.phl[745]";
connectAttr "Rig:rHandControl_bip_thumb_0_RControlRoll.o" "RigRN.phl[746]";
connectAttr "Rig:rHandControl_bip_index_0_RControlRoll.o" "RigRN.phl[747]";
connectAttr "Rig:rHandControl_bip_middle_0_RControlRoll.o" "RigRN.phl[748]";
connectAttr "Rig:rHandControl_bip_ring_0_RControlRoll.o" "RigRN.phl[749]";
connectAttr "Rig:rHandControl_bip_pinky_0_RControlRoll.o" "RigRN.phl[750]";
connectAttr "Rig:rHandControl_visibility.o" "RigRN.phl[751]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateX.o" "RigRN.phl[752]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateY.o" "RigRN.phl[753]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateZ.o" "RigRN.phl[754]";
connectAttr "RigRN.phl[755]" ":hyperGraphLayout.hyp[34].dn";
connectAttr "Rig:Ref:bip_thumb_1_RControl_rotateX.o" "RigRN.phl[756]";
connectAttr "Rig:Ref:bip_thumb_2_RControl_rotateX.o" "RigRN.phl[757]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateX.o" "RigRN.phl[758]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateY.o" "RigRN.phl[759]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateZ.o" "RigRN.phl[760]";
connectAttr "Rig:Ref:bip_index_1_RControl_rotateX.o" "RigRN.phl[761]";
connectAttr "Rig:Ref:bip_index_2_RControl_rotateX.o" "RigRN.phl[762]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateX.o" "RigRN.phl[763]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateY.o" "RigRN.phl[764]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateZ.o" "RigRN.phl[765]";
connectAttr "Rig:Ref:bip_middle_1_RControl_rotateX.o" "RigRN.phl[766]";
connectAttr "Rig:Ref:bip_middle_2_RControl_rotateX.o" "RigRN.phl[767]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateX.o" "RigRN.phl[768]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateY.o" "RigRN.phl[769]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateZ.o" "RigRN.phl[770]";
connectAttr "Rig:Ref:bip_ring_1_RControl_rotateX.o" "RigRN.phl[771]";
connectAttr "Rig:Ref:bip_ring_2_RControl_rotateX.o" "RigRN.phl[772]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateX.o" "RigRN.phl[773]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateY.o" "RigRN.phl[774]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateZ.o" "RigRN.phl[775]";
connectAttr "Rig:Ref:bip_pinky_1_RControl_rotateX.o" "RigRN.phl[776]";
connectAttr "Rig:Ref:bip_pinky_2_RControl_rotateX.o" "RigRN.phl[777]";
connectAttr "RigRN.phl[778]" ":hyperGraphLayout.hyp[37].dn";
connectAttr "Rig:rkneeControl_translateX.o" "RigRN.phl[779]";
connectAttr "Rig:rkneeControl_translateY.o" "RigRN.phl[780]";
connectAttr "Rig:rkneeControl_translateZ.o" "RigRN.phl[781]";
connectAttr "Rig:rFootControl_ankleLift.o" "RigRN.phl[782]";
connectAttr "Rig:rFootControl_translateX.o" "RigRN.phl[783]";
connectAttr "Rig:rFootControl_translateY.o" "RigRN.phl[784]";
connectAttr "Rig:rFootControl_translateZ.o" "RigRN.phl[785]";
connectAttr "Rig:rFootControl_rotateX.o" "RigRN.phl[786]";
connectAttr "Rig:rFootControl_rotateY.o" "RigRN.phl[787]";
connectAttr "Rig:rFootControl_rotateZ.o" "RigRN.phl[788]";
connectAttr "Rig:rFootControl_heelRock.o" "RigRN.phl[789]";
connectAttr "Rig:rFootControl_toeLift.o" "RigRN.phl[790]";
connectAttr "Rig:rFootControl_ankleBank.o" "RigRN.phl[791]";
connectAttr "Rig:rFootControl_rockR.o" "RigRN.phl[792]";
connectAttr "Rig:rFootControl_rockL.o" "RigRN.phl[793]";
connectAttr "Rig:rFootControl_ballPivot.o" "RigRN.phl[794]";
connectAttr "Rig:rToeControl_rotateX.o" "RigRN.phl[795]";
connectAttr "Rig:rToeControl_rotateY.o" "RigRN.phl[796]";
connectAttr "Rig:rToeControl_rotateZ.o" "RigRN.phl[797]";
connectAttr "Rig:Ref:prp_bullet_backUpperControl_translateX.o" "RigRN.phl[798]";
connectAttr "Rig:Ref:prp_bullet_backUpperControl_translateY.o" "RigRN.phl[799]";
connectAttr "Rig:Ref:prp_bullet_backUpperControl_translateZ.o" "RigRN.phl[800]";
connectAttr "Rig:Ref:prp_bullet_backUpperControl_rotateX.o" "RigRN.phl[801]";
connectAttr "Rig:Ref:prp_bullet_backUpperControl_rotateY.o" "RigRN.phl[802]";
connectAttr "Rig:Ref:prp_bullet_backUpperControl_rotateZ.o" "RigRN.phl[803]";
connectAttr "Rig:Ref:prp_bullet_backLowerControl_translateX.o" "RigRN.phl[804]";
connectAttr "Rig:Ref:prp_bullet_backLowerControl_translateY.o" "RigRN.phl[805]";
connectAttr "Rig:Ref:prp_bullet_backLowerControl_translateZ.o" "RigRN.phl[806]";
connectAttr "Rig:Ref:prp_bullet_backLowerControl_rotateX.o" "RigRN.phl[807]";
connectAttr "Rig:Ref:prp_bullet_backLowerControl_rotateY.o" "RigRN.phl[808]";
connectAttr "Rig:Ref:prp_bullet_backLowerControl_rotateZ.o" "RigRN.phl[809]";
connectAttr "Rig:Ref:prp_bullet_sideControl_translateX.o" "RigRN.phl[810]";
connectAttr "Rig:Ref:prp_bullet_sideControl_translateY.o" "RigRN.phl[811]";
connectAttr "Rig:Ref:prp_bullet_sideControl_translateZ.o" "RigRN.phl[812]";
connectAttr "Rig:Ref:prp_bullet_sideControl_rotateX.o" "RigRN.phl[813]";
connectAttr "Rig:Ref:prp_bullet_sideControl_rotateY.o" "RigRN.phl[814]";
connectAttr "Rig:Ref:prp_bullet_sideControl_rotateZ.o" "RigRN.phl[815]";
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_translateX.o" "RigRN.phl[816]"
		;
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_translateY.o" "RigRN.phl[817]"
		;
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_translateZ.o" "RigRN.phl[818]"
		;
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_rotateX.o" "RigRN.phl[819]";
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_rotateY.o" "RigRN.phl[820]";
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_rotateZ.o" "RigRN.phl[821]";
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_translateX.o" "RigRN.phl[822]"
		;
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_translateY.o" "RigRN.phl[823]"
		;
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_translateZ.o" "RigRN.phl[824]"
		;
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_rotateX.o" "RigRN.phl[825]";
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_rotateY.o" "RigRN.phl[826]";
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_rotateZ.o" "RigRN.phl[827]";
connectAttr "RigRN.phl[828]" "RigRN.phl[829]";
connectAttr "RigRN.phl[830]" "RigRN.phl[831]";
connectAttr "RigRN.phl[832]" "RigRN.phl[833]";
connectAttr "RigRN.phl[834]" "RigRN.phl[835]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Rig:Ref:bip_knee_LFK_rotateY.o" "RigRN.phl[43]";
connectAttr "Rig:Ref:bip_knee_LFK_rotateZ.o" "RigRN.phl[44]";
connectAttr "Rig:Ref:bip_knee_RFK_rotateY.o" "RigRN.phl[55]";
connectAttr "Rig:Ref:bip_knee_RFK_rotateZ.o" "RigRN.phl[56]";
connectAttr "Rig:Ref:bip_lowerArm_LFK_rotateY.o" "RigRN.phl[67]";
connectAttr "Rig:Ref:bip_lowerArm_LFK_rotateZ.o" "RigRN.phl[68]";
connectAttr "Rig:Ref:bip_lowerArm_RFK_rotateY.o" "RigRN.phl[76]";
connectAttr "Rig:Ref:bip_lowerArm_RFK_rotateZ.o" "RigRN.phl[77]";
connectAttr "Rig:Ref:bip_pinky_1_LControl_rotateY.o" "RigRN.phl[140]";
connectAttr "Rig:Ref:bip_pinky_1_LControl_rotateZ.o" "RigRN.phl[141]";
connectAttr "Rig:Ref:bip_pinky_2_LControl_rotateY.o" "RigRN.phl[143]";
connectAttr "Rig:Ref:bip_pinky_2_LControl_rotateZ.o" "RigRN.phl[144]";
connectAttr "Rig:Ref:bip_ring_1_LControl_rotateY.o" "RigRN.phl[149]";
connectAttr "Rig:Ref:bip_ring_1_LControl_rotateZ.o" "RigRN.phl[150]";
connectAttr "Rig:Ref:bip_ring_2_LControl_rotateY.o" "RigRN.phl[152]";
connectAttr "Rig:Ref:bip_ring_2_LControl_rotateZ.o" "RigRN.phl[153]";
connectAttr "Rig:Ref:bip_middle_1_LControl_rotateY.o" "RigRN.phl[158]";
connectAttr "Rig:Ref:bip_middle_1_LControl_rotateZ.o" "RigRN.phl[159]";
connectAttr "Rig:Ref:bip_middle_2_LControl_rotateY.o" "RigRN.phl[161]";
connectAttr "Rig:Ref:bip_middle_2_LControl_rotateZ.o" "RigRN.phl[162]";
connectAttr "Rig:Ref:bip_pinky_1_RControl_rotateY.o" "RigRN.phl[179]";
connectAttr "Rig:Ref:bip_pinky_1_RControl_rotateZ.o" "RigRN.phl[180]";
connectAttr "Rig:Ref:bip_pinky_2_RControl_rotateY.o" "RigRN.phl[182]";
connectAttr "Rig:Ref:bip_pinky_2_RControl_rotateZ.o" "RigRN.phl[183]";
connectAttr "Rig:Ref:bip_ring_1_RControl_rotateY.o" "RigRN.phl[188]";
connectAttr "Rig:Ref:bip_ring_1_RControl_rotateZ.o" "RigRN.phl[189]";
connectAttr "Rig:Ref:bip_ring_2_RControl_rotateY.o" "RigRN.phl[191]";
connectAttr "Rig:Ref:bip_ring_2_RControl_rotateZ.o" "RigRN.phl[192]";
connectAttr "Rig:Ref:bip_middle_1_RControl_rotateY.o" "RigRN.phl[197]";
connectAttr "Rig:Ref:bip_middle_1_RControl_rotateZ.o" "RigRN.phl[198]";
connectAttr "Rig:Ref:bip_middle_2_RControl_rotateY.o" "RigRN.phl[200]";
connectAttr "Rig:Ref:bip_middle_2_RControl_rotateZ.o" "RigRN.phl[201]";
connectAttr "Rig:Ref:bip_index_1_RControl_rotateY.o" "RigRN.phl[206]";
connectAttr "Rig:Ref:bip_index_1_RControl_rotateZ.o" "RigRN.phl[207]";
connectAttr "Rig:Ref:bip_index_2_RControl_rotateY.o" "RigRN.phl[209]";
connectAttr "Rig:Ref:bip_index_2_RControl_rotateZ.o" "RigRN.phl[210]";
connectAttr "Rig:Ref:bip_thumb_1_RControl_rotateY.o" "RigRN.phl[215]";
connectAttr "Rig:Ref:bip_thumb_1_RControl_rotateZ.o" "RigRN.phl[216]";
connectAttr "Rig:Ref:bip_thumb_2_RControl_rotateY.o" "RigRN.phl[218]";
connectAttr "Rig:Ref:bip_thumb_2_RControl_rotateZ.o" "RigRN.phl[219]";
connectAttr "Rig:lFootControl_rock.o" "RigRN.phl[234]";
connectAttr "Rig:lFootControl_footRoll.o" "RigRN.phl[235]";
connectAttr "Rig:rFootControl_rock.o" "RigRN.phl[247]";
connectAttr "Rig:rFootControl_footRoll.o" "RigRN.phl[248]";
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_scaleX.o" "RigRN.phl[276]";
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_scaleY.o" "RigRN.phl[277]";
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_scaleZ.o" "RigRN.phl[278]";
connectAttr "Rig:Ref:prp_bullet_chestLowerControl_visibility.o" "RigRN.phl[279]"
		;
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_scaleX.o" "RigRN.phl[286]";
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_scaleY.o" "RigRN.phl[287]";
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_scaleZ.o" "RigRN.phl[288]";
connectAttr "Rig:Ref:prp_bullet_chestUpperControl_visibility.o" "RigRN.phl[289]"
		;
connectAttr "sharedReferenceNode.sr" "RigRN.sr";
connectAttr "Wep:minigun_translateY.o" "WepRN.phl[6]";
connectAttr "Wep:minigun_translateZ.o" "WepRN.phl[7]";
connectAttr "Wep:minigun_translateX.o" "WepRN.phl[8]";
connectAttr "Wep:minigun_rotateX.o" "WepRN.phl[9]";
connectAttr "Wep:minigun_rotateY.o" "WepRN.phl[10]";
connectAttr "Wep:minigun_rotateZ.o" "WepRN.phl[11]";
connectAttr "Wep:rHandAttach_parentToGun.o" "WepRN.phl[22]";
connectAttr "Wep:rHandAttach_translateX.o" "WepRN.phl[24]";
connectAttr "Wep:rHandAttach_translateZ.o" "WepRN.phl[25]";
connectAttr "Wep:rHandAttach_translateY.o" "WepRN.phl[26]";
connectAttr "Wep:rHandAttach_rotateX.o" "WepRN.phl[27]";
connectAttr "Wep:rHandAttach_rotateY.o" "WepRN.phl[28]";
connectAttr "Wep:rHandAttach_rotateZ.o" "WepRN.phl[29]";
connectAttr "Wep:lHandAttach_parentToGun.o" "WepRN.phl[33]";
connectAttr "Wep:lHandAttach_translateX.o" "WepRN.phl[35]";
connectAttr "Wep:lHandAttach_translateY.o" "WepRN.phl[36]";
connectAttr "Wep:lHandAttach_translateZ.o" "WepRN.phl[37]";
connectAttr "Wep:lHandAttach_rotateZ.o" "WepRN.phl[38]";
connectAttr "Wep:lHandAttach_rotateX.o" "WepRN.phl[39]";
connectAttr "Wep:lHandAttach_rotateY.o" "WepRN.phl[40]";
connectAttr "Wep:miniGunControl_translateX.o" "WepRN.phl[98]";
connectAttr "Wep:miniGunControl_translateY.o" "WepRN.phl[99]";
connectAttr "Wep:miniGunControl_translateZ.o" "WepRN.phl[100]";
connectAttr "Wep:miniGunControl_rotateX.o" "WepRN.phl[101]";
connectAttr "Wep:miniGunControl_rotateY.o" "WepRN.phl[102]";
connectAttr "Wep:miniGunControl_rotateZ.o" "WepRN.phl[103]";
connectAttr "Wep:miniGunControl_scaleX.o" "WepRN.phl[104]";
connectAttr "Wep:miniGunControl_scaleY.o" "WepRN.phl[105]";
connectAttr "Wep:miniGunControl_scaleZ.o" "WepRN.phl[106]";
connectAttr "Wep:miniGunControl_visibility.o" "WepRN.phl[107]";
connectAttr "sharedReferenceNode.sr" "WepRN.sr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of center_pose.ma
