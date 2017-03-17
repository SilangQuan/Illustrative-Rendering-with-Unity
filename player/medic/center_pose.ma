//Maya ASCII 2012 scene
//Name: center_pose.ma
//Last modified: Wed, Mar 11, 2015 01:23:35 PM
//Codeset: 1252
file -rdi 1 -ns "Rig" -rfn "RigRN" "medic_rig.ma";
file -rdi 2 -ns "Ref" -rfn "Rig:RefRN" "medic_reference.ma";
file -r -ns "Rig" -dr 1 -rfn "RigRN" "medic_rig.ma";
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
	setAttr ".t" -type "double3" -205.37208327521424 73.838314164065736 36.56729930779062 ;
	setAttr ".r" -type "double3" 344.06164725858889 -2602.5999999986911 -1.2347295891395702e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 229.35025942771171;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 38.821109220964708 45.732852683677677 -4.7121186784064175 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 450.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 450.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 450.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 450.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 450.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 450.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "RigRNfosterParent1";
createNode parentConstraint -n "Rig:Ref:weapon_bone_parentConstraint1" -p "RigRNfosterParent1";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -103.76667541902104 3.8983788056209723 -24.596819183017793 ;
	setAttr ".rst" -type "double3" 3.1104602576518996 7.0903823772615304 -0.60933194077912756 ;
	setAttr ".rsrr" -type "double3" -103.76667541902104 3.8983788056209741 -24.596819183017793 ;
createNode parentConstraint -n "Rig:Ref:weapon_bone_1_parentConstraint1" -p "RigRNfosterParent1";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -45.272731320319103 -2.2009971674646014 1.741435825292182 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 9.5621534441635703 4.9075455996864452 ;
	setAttr ".rsrr" -type "double3" -45.27273132031911 -2.2009971674646014 1.7414358252921818 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RigRN";
	setAttr -s 331 ".phl";
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" -type "matrix" 0.99181079571583375 -0.12771587803215481 7.1894490696455909e-017 0
		 0.12771587803215476 0.99181079571583419 -1.2366967238014179e-016 0 -1.3814036593228839e-016 2.3117209772899787e-016 1.0000000000000002 0
		 3.3925374640301795 -50.539796575785893 -1.8522320002571733 1;
	setAttr ".phl[6]" -type "double3" -1.5707963267948166 1.5638519939798892 -1.5707963267948166 ;
	setAttr ".phl[7]" 1;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" -type "double3" 0 0 0 ;
	setAttr ".phl[12]" -type "double3" 0 0 0 ;
	setAttr ".phl[13]" 2.5324501090479845e-016;
	setAttr ".phl[14]" -2.7979289480449267e-017;
	setAttr ".phl[15]" 0.0017666920820387079;
	setAttr ".phl[16]" 0;
	setAttr ".phl[18]" 1;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[28]" -type "double3" -32.282781233038314 54.516307506880764 29.580601773734479 ;
	setAttr ".phl[29]" -type "double3" 0 0 0 ;
	setAttr ".phl[30]" -type "double3" 0 0 0 ;
	setAttr ".phl[31]" -type "double3" -0.0034736641001445368 0 -0.053636960458146705 ;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" -type "double3" 1 1 1 ;
	setAttr ".phl[34]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".phl[556]" 0;
	setAttr ".phl[557]" 0;
	setAttr ".phl[558]" 0;
	setAttr ".phl[559]" 0;
	setAttr ".phl[560]" 0;
	setAttr ".phl[561]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"RigRN"
		"Rig:Ref:PWep:RefRN" 40
		0 "|RigRNfosterParent1|Rig:Ref:PWep:Ref:joint_hose01_parentConstraint1" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01" 
		"-s -nc -r "
		1 |Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01 
		"blendParent1" "blendParent1" " -ci 1 -k 1 -bt \"aDBL\" -dv 1 -smn 0 -smx 1 -at \"double\""
		
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone" 
		"translate" " -type \"double3\" 3.11046 7.090382 -0.609332"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone" 
		"translateX" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone" 
		"translateY" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone" 
		"translateZ" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01" 
		"blendParent1" " -k 1 1"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02" 
		"translate" " -type \"double3\" -12.383393 -2.951904 -20.402424"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02" 
		"translateX" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02" 
		"translateY" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02" 
		"translateZ" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03" 
		"translate" " -type \"double3\" 33.00311 2.2105e-006 -1.72759e-006"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03" 
		"translateX" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03" 
		"translateY" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03" 
		"translateZ" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03|Rig:Ref:PWep:Ref:joint_hose04" 
		"translate" " -type \"double3\" 33.003813 -5.06224e-007 -6.59209e-008"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03|Rig:Ref:PWep:Ref:joint_hose04" 
		"translateX" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03|Rig:Ref:PWep:Ref:joint_hose04" 
		"translateY" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03|Rig:Ref:PWep:Ref:joint_hose04" 
		"translateZ" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03|Rig:Ref:PWep:Ref:joint_hose04" 
		"rotate" " -type \"double3\" -29.077767 142.284365 -122.048759"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03|Rig:Ref:PWep:Ref:joint_hose04" 
		"rotateX" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03|Rig:Ref:PWep:Ref:joint_hose04" 
		"rotateY" " -av"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose02|Rig:Ref:PWep:Ref:joint_hose03|Rig:Ref:PWep:Ref:joint_hose04" 
		"rotateZ" " -av"
		2 "Rig:Ref:PWep:Ref:w_medigun_meshLayer" "visibility" " 0"
		3 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose01_orientConstraint1.constraintRotateX" 
		"|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotateX" 
		""
		3 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose01_orientConstraint1.constraintRotateY" 
		"|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotateY" 
		""
		3 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose01_orientConstraint1.constraintRotateZ" 
		"|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotateZ" 
		""
		5 4 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotateX" 
		"RigRN.placeHolderList[0]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotateY" 
		"RigRN.placeHolderList[1]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotateZ" 
		"RigRN.placeHolderList[2]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotateOrder" 
		"RigRN.placeHolderList[3]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotateOrder" 
		"RigRN.placeHolderList[4]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.parentInverseMatrix" 
		"RigRN.placeHolderList[5]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.jointOrient" 
		"RigRN.placeHolderList[6]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.blendParent1" 
		"RigRN.placeHolderList[7]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.translateX" 
		"RigRN.placeHolderList[8]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.translateY" 
		"RigRN.placeHolderList[9]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.translateZ" 
		"RigRN.placeHolderList[10]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotatePivot" 
		"RigRN.placeHolderList[11]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01.rotatePivotTranslate" 
		"RigRN.placeHolderList[12]" ""
		"Rig:RefRN" 5
		1 |Rig:Ref:medicInfo "exportType" "exportType" " -ci 1 -min 0 -max 2 -en \"Model:Animation:Physics\" -at \"enum\""
		
		1 |Rig:Ref:medicInfo "advancedOptions" "advancedOptions" " -ci 1 -dt \"string\""
		
		2 "|Rig:Ref:medicInfo" "exportType" " -k 1 1"
		2 "|Rig:Ref:medicInfo" "exportName" " -type \"string\" \"%VCONTENT%/tf/models/player/Medic/animations/dmx/primary_runCenter.dmx\""
		
		2 "|Rig:Ref:medicInfo" "exportType" " 1"
		"Rig:Ref:HeadRN" 0
		"Rig:Ref:PWepRN" 55
		1 |Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1 
		"weapon_boneW1" "w1" " -ci 1 -k 1 -bt \"W001\" -dv 1 -min 0 -at \"double\""
		1 |Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1 
		"joint_leverW1" "w1" " -ci 1 -k 1 -bt \"W001\" -dv 1 -min 0 -at \"double\""
		2 "|Rig:Ref:PWep:nozzleControl" "visibility" " 0"
		2 "|Rig:Ref:PWep:nozzleControl" "translate" " -type \"double3\" -22.921407 54.480441 21.180111"
		
		2 "|Rig:Ref:PWep:nozzleControl" "rotate" " -type \"double3\" 0 0 15.167822"
		
		2 "|Rig:Ref:PWep:nozzleControl" "scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Ref:PWep:nozzleControl|Rig:Ref:PWep:leverControl" "visibility" " 0"
		
		2 "|Rig:Ref:PWep:nozzleControl|Rig:Ref:PWep:leverControl|Rig:Ref:PWep:locator_gripControl" 
		"visibility" " 0"
		2 "|Rig:Ref:PWep:nozzleControl|Rig:Ref:PWep:nozzleGripControl" "visibility" 
		" 0"
		2 "|Rig:Ref:PWep:nozzleControl|Rig:Ref:PWep:leverGripControl" "visibility" 
		" 0"
		2 "|Rig:Ref:PWep:nozzleControl|Rig:Ref:PWep:hose_startControl" "visibility" 
		" 0"
		2 "|Rig:Ref:PWep:nozzleControl|Rig:Ref:PWep:hose_startControl|Rig:Ref:PWep:locator_hoseNear" 
		"visibility" " 0"
		2 "|Rig:Ref:PWep:group_hoseEnd|Rig:Ref:PWep:hose_endControl" "visibility" 
		" 0"
		2 "|Rig:Ref:PWep:group_hoseEnd|Rig:Ref:PWep:hose_endControl|Rig:Ref:PWep:locator_hoseFar" 
		"visibility" " 0"
		2 "|Rig:Ref:PWep:group_hoseEnd|Rig:Ref:PWep:group_hoseMidTweener|Rig:Ref:PWep:locator_hoseMid" 
		"visibility" " 0"
		2 "|Rig:Ref:PWep:group_hoseEnd|Rig:Ref:PWep:group_hoseMidTweener|Rig:Ref:PWep:locator_hoseMid|Rig:Ref:PWep:locator_hoseUpVMid" 
		"visibility" " 0"
		2 "|Rig:Ref:PWep:group_hoseEnd|Rig:Ref:PWep:group_hoseMidTweener|Rig:Ref:PWep:locator_hoseMid|Rig:Ref:PWep:locator_hoseUpVNear" 
		"visibility" " 0"
		2 "|Rig:Ref:PWep:group_hoseEnd|Rig:Ref:PWep:group_hoseMidTweener|Rig:Ref:PWep:locator_hoseMid|Rig:Ref:PWep:locator_hoseUpVFar" 
		"visibility" " 0"
		2 "|Rig:Ref:PWep:joint3" "translate" " -type \"double3\" -22.930016 54.5122 5.873486"
		
		2 "|Rig:Ref:PWep:joint3" "translateX" " -av"
		2 "|Rig:Ref:PWep:joint3" "translateY" " -av"
		2 "|Rig:Ref:PWep:joint3" "translateZ" " -av"
		2 "|Rig:Ref:PWep:joint4|Rig:Ref:PWep:joint5" "translate" " -type \"double3\" 7.70047 0.111952 -1.240151"
		
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1" 
		"enableRestPosition" " 1"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1" 
		"restTranslate" " -type \"double3\" 17.348188 -30.217104 -56.678264"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1" 
		"restRotate" " -type \"double3\" -11.17928 15.790525 -3.476307"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1" 
		"nozzleControlW0" " -k 1 0"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1" 
		"weapon_boneW1" " -k 1 1"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1" 
		"enableRestPosition" " 1"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1" 
		"restTranslate" " -type \"double3\" 0 9.562153 4.907546"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1" 
		"restRotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1" 
		"leverControlW0" " -k 1 0"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1" 
		"joint_leverW1" " -k 1 1"
		2 "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose01_orientConstraint1" 
		"joint3W0" " -k 1 0"
		2 "Rig:Ref:PWep:w_medigun_jointLayer" "visibility" " 0"
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose01_orientConstraint1.constraintRotateX" 
		"RigRN.placeHolderList[13]" "Rig:Ref:PWep:Ref:joint_hose01.rx"
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose01_orientConstraint1.constraintRotateY" 
		"RigRN.placeHolderList[14]" "Rig:Ref:PWep:Ref:joint_hose01.ry"
		5 3 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_hose01|Rig:Ref:PWep:Ref:joint_hose01_orientConstraint1.constraintRotateZ" 
		"RigRN.placeHolderList[15]" "Rig:Ref:PWep:Ref:joint_hose01.rz"
		5 0 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.joint_leverW1" 
		"|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetWeight" 
		"RigRN.placeHolderList[16]" "RigRN.placeHolderList[17]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetTranslate" 
		"RigRN.placeHolderList[18]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetRotatePivot" 
		"RigRN.placeHolderList[19]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetRotateTranslate" 
		"RigRN.placeHolderList[20]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetRotate" 
		"RigRN.placeHolderList[21]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetRotateOrder" 
		"RigRN.placeHolderList[22]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetScale" 
		"RigRN.placeHolderList[23]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetParentMatrix" 
		"RigRN.placeHolderList[24]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:joint_lever|Rig:Ref:PWep:Ref:joint_lever_parentConstraint1.target[1].targetJointOrient" 
		"RigRN.placeHolderList[25]" ""
		5 0 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.weapon_boneW1" 
		"|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.target[1].targetWeight" 
		"RigRN.placeHolderList[26]" "RigRN.placeHolderList[27]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.target[1].targetTranslate" 
		"RigRN.placeHolderList[28]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.target[1].targetRotatePivot" 
		"RigRN.placeHolderList[29]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.target[1].targetRotateTranslate" 
		"RigRN.placeHolderList[30]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.target[1].targetRotate" 
		"RigRN.placeHolderList[31]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.target[1].targetRotateOrder" 
		"RigRN.placeHolderList[32]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.target[1].targetScale" 
		"RigRN.placeHolderList[33]" ""
		5 2 "RigRN" "|Rig:Ref:medicInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:PWep:Ref:weapon_bone|Rig:Ref:PWep:Ref:weapon_bone_parentConstraint1.target[1].targetParentMatrix" 
		"RigRN.placeHolderList[34]" ""
		"RigRN" 419
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 12.215143 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 30.905471 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" 46.908087 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 31.510023 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 12.215143 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 30.905471 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" 46.908087 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 31.510023 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 12.215143 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 30.905471 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" 46.908087 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 31.510023 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 12.215143 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 30.905471 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" 46.908087 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 31.510023 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 12.215143 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 30.905471 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" 46.908087 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 31.510023 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 12.215143 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 30.905471 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" 46.908087 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 31.510023 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 12.215143 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 30.905471 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" 46.908087 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 31.510023 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 20.277993 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" -10.653232 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" -36.436436 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 29.470924 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 20.277993 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" -10.653232 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" -36.436436 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 29.470924 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 20.277993 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" -10.653232 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" -36.436436 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 29.470924 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 20.277993 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" -10.653232 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" -36.436436 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 29.470924 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -16.228769 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" -0.912652 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 14.833082 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 43.829833 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 19.231524 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 26.151372 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 28.250474 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 7.323003 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 0.182254 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotate" " -type \"double3\" 13.564877 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotate" " -type \"double3\" 21.652429 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotate" " -type \"double3\" 20.557647 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 29.148558 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotate" " -type \"double3\" 20.277993 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 34.27151 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" -10.653232 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotate" " -type \"double3\" 51.648703 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotate" " -type \"double3\" -36.436436 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotate" " -type \"double3\" 29.470924 0 0"
		2 "|Rig:nurbsCircle1" "rotate" " -type \"double3\" -1.667976 -23.380409 2.743753"
		
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl" 
		"translate" " -type \"double3\" 0.839233 -0.0402803 -0.720442"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl" 
		"rotate" " -type \"double3\" 2.116647 10.843816 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl" 
		"rotate" " -type \"double3\" 0 -7.851005 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl" 
		"translate" " -type \"double3\" 1.058569 -1.065209 -2.471609"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl" 
		"rotate" " -type \"double3\" 3.381567 0 -1.913758"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl" 
		"rotate" " -type \"double3\" 1.169765 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl" 
		"rotate" " -type \"double3\" 1.145493 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl" 
		"rotateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl" 
		"translateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl" 
		"translateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl" 
		"translateZ" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl" 
		"rotateX" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl" 
		"rotateY" " -av"
		2 "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl" 
		"rotateZ" " -av"
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.rotateX" 
		"RigRN.placeHolderList[151]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.rotateY" 
		"RigRN.placeHolderList[152]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.rotateZ" 
		"RigRN.placeHolderList[153]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.translateX" 
		"RigRN.placeHolderList[154]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.translateY" 
		"RigRN.placeHolderList[155]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.translateZ" 
		"RigRN.placeHolderList[156]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.visibility" 
		"RigRN.placeHolderList[157]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.scaleX" 
		"RigRN.placeHolderList[158]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.scaleY" 
		"RigRN.placeHolderList[159]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:prp_backpackControl.scaleZ" 
		"RigRN.placeHolderList[160]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl.translateX" 
		"RigRN.placeHolderList[385]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl.translateY" 
		"RigRN.placeHolderList[386]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl.translateZ" 
		"RigRN.placeHolderList[387]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl.rotateX" 
		"RigRN.placeHolderList[388]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl.rotateY" 
		"RigRN.placeHolderList[389]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl.rotateZ" 
		"RigRN.placeHolderList[390]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl.translateX" 
		"RigRN.placeHolderList[391]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl.translateY" 
		"RigRN.placeHolderList[392]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl.translateZ" 
		"RigRN.placeHolderList[393]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl.rotateX" 
		"RigRN.placeHolderList[394]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl.rotateY" 
		"RigRN.placeHolderList[395]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_LControlZeroGroup|Rig:Ref:prp_coat_front_1_LControl|Rig:Ref:prp_coat_front_2_LControlZeroGroup|Rig:Ref:prp_coat_front_2_LControl.rotateZ" 
		"RigRN.placeHolderList[396]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl.translateX" 
		"RigRN.placeHolderList[397]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl.translateY" 
		"RigRN.placeHolderList[398]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl.translateZ" 
		"RigRN.placeHolderList[399]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl.rotateX" 
		"RigRN.placeHolderList[400]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl.rotateY" 
		"RigRN.placeHolderList[401]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl.rotateZ" 
		"RigRN.placeHolderList[402]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl.translateX" 
		"RigRN.placeHolderList[403]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl.translateY" 
		"RigRN.placeHolderList[404]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl.translateZ" 
		"RigRN.placeHolderList[405]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl.rotateX" 
		"RigRN.placeHolderList[406]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl.rotateY" 
		"RigRN.placeHolderList[407]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_front_1_RControlZeroGroup|Rig:Ref:prp_coat_front_1_RControl|Rig:Ref:prp_coat_front_2_RControlZeroGroup|Rig:Ref:prp_coat_front_2_RControl.rotateZ" 
		"RigRN.placeHolderList[408]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl.rotateX" 
		"RigRN.placeHolderList[409]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl.rotateY" 
		"RigRN.placeHolderList[410]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl.rotateZ" 
		"RigRN.placeHolderList[411]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl.translateX" 
		"RigRN.placeHolderList[412]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl.translateY" 
		"RigRN.placeHolderList[413]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl.translateZ" 
		"RigRN.placeHolderList[414]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl.rotateX" 
		"RigRN.placeHolderList[415]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl.rotateY" 
		"RigRN.placeHolderList[416]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl.rotateZ" 
		"RigRN.placeHolderList[417]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl.translateX" 
		"RigRN.placeHolderList[418]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl.translateY" 
		"RigRN.placeHolderList[419]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl.translateZ" 
		"RigRN.placeHolderList[420]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl.rotateX" 
		"RigRN.placeHolderList[421]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl.rotateY" 
		"RigRN.placeHolderList[422]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_LControlZeroGroup|Rig:Ref:prp_coat_back_0_LControl|Rig:Ref:prp_coat_back_1_LControlZeroGroup|Rig:Ref:prp_coat_back_1_LControl|Rig:Ref:prp_coat_back_2_LControlZeroGroup|Rig:Ref:prp_coat_back_2_LControl.rotateZ" 
		"RigRN.placeHolderList[423]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl.rotateX" 
		"RigRN.placeHolderList[424]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl.rotateY" 
		"RigRN.placeHolderList[425]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl.rotateZ" 
		"RigRN.placeHolderList[426]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl.translateX" 
		"RigRN.placeHolderList[427]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl.translateY" 
		"RigRN.placeHolderList[428]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl.translateZ" 
		"RigRN.placeHolderList[429]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl.rotateX" 
		"RigRN.placeHolderList[430]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl.rotateY" 
		"RigRN.placeHolderList[431]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl.rotateZ" 
		"RigRN.placeHolderList[432]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl.translateX" 
		"RigRN.placeHolderList[433]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl.translateY" 
		"RigRN.placeHolderList[434]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl.translateZ" 
		"RigRN.placeHolderList[435]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl.rotateX" 
		"RigRN.placeHolderList[436]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl.rotateY" 
		"RigRN.placeHolderList[437]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_MControlZeroGroup|Rig:Ref:prp_coat_back_0_MControl|Rig:Ref:prp_coat_back_1_MControlZeroGroup|Rig:Ref:prp_coat_back_1_MControl|Rig:Ref:prp_coat_back_2_MControlZeroGroup|Rig:Ref:prp_coat_back_2_MControl.rotateZ" 
		"RigRN.placeHolderList[438]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl.rotateX" 
		"RigRN.placeHolderList[439]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl.rotateY" 
		"RigRN.placeHolderList[440]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl.rotateZ" 
		"RigRN.placeHolderList[441]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl.translateX" 
		"RigRN.placeHolderList[442]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl.translateY" 
		"RigRN.placeHolderList[443]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl.translateZ" 
		"RigRN.placeHolderList[444]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl.rotateX" 
		"RigRN.placeHolderList[445]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl.rotateY" 
		"RigRN.placeHolderList[446]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl.rotateZ" 
		"RigRN.placeHolderList[447]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl.translateX" 
		"RigRN.placeHolderList[448]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl.translateY" 
		"RigRN.placeHolderList[449]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl.translateZ" 
		"RigRN.placeHolderList[450]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl.rotateX" 
		"RigRN.placeHolderList[451]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl.rotateY" 
		"RigRN.placeHolderList[452]" ""
		5 4 "RigRN" "|Rig:nurbsCircle1|Rig:Ref:prp_coat_back_0_RControlZeroGroup|Rig:Ref:prp_coat_back_0_RControl|Rig:Ref:prp_coat_back_1_RControlZeroGroup|Rig:Ref:prp_coat_back_1_RControl|Rig:Ref:prp_coat_back_2_RControlZeroGroup|Rig:Ref:prp_coat_back_2_RControl.rotateZ" 
		"RigRN.placeHolderList[453]" ""
		"Rig:RefRN" 40
		0 "|RigRNfosterParent1|Rig:Ref:weapon_bone_1_parentConstraint1" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1" 
		"-s -r "
		0 "|RigRNfosterParent1|Rig:Ref:weapon_bone_parentConstraint1" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"-s -r "
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis" "rotateX" " -av -0.0856405"
		
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis" "rotateY" " -av 35.070727"
		
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis" "rotateZ" " -av 3.511097"
		
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"rotate" " -type \"double3\" 10.195765 -0.597272 2.90071"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"rotateX" " -av"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"rotateY" " -av"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"rotateZ" " -av"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"rotate" " -type \"double3\" 8.778056 8.876558 1.331687"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"rotateX" " -av"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"rotateY" " -av"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"rotateZ" " -av"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:weapon_bone_L|Rig:Ref:joint_hose01" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:weapon_bone_L|Rig:Ref:joint_hose01" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:weapon_bone_L|Rig:Ref:joint_lever" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:weapon_bone_L|Rig:Ref:joint_lever" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "Rig:Ref:skeleton_layer" "displayType" " 0"
		2 "Rig:Ref:skeleton_layer" "visibility" " 1"
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateX" 
		"RigRN.placeHolderList[454]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateY" 
		"RigRN.placeHolderList[455]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateZ" 
		"RigRN.placeHolderList[456]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateX" 
		"RigRN.placeHolderList[457]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateY" 
		"RigRN.placeHolderList[458]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateZ" 
		"RigRN.placeHolderList[459]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateOrder" 
		"RigRN.placeHolderList[460]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[461]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivot" 
		"RigRN.placeHolderList[462]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivotTranslate" 
		"RigRN.placeHolderList[463]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.translateX" 
		"RigRN.placeHolderList[464]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.translateY" 
		"RigRN.placeHolderList[465]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.translateZ" 
		"RigRN.placeHolderList[466]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.rotateX" 
		"RigRN.placeHolderList[467]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.rotateY" 
		"RigRN.placeHolderList[468]" ""
		5 4 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.rotateZ" 
		"RigRN.placeHolderList[469]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.rotateOrder" 
		"RigRN.placeHolderList[470]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.parentInverseMatrix" 
		"RigRN.placeHolderList[471]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.rotatePivot" 
		"RigRN.placeHolderList[472]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.rotatePivotTranslate" 
		"RigRN.placeHolderList[473]" ""
		5 3 "RigRN" "|Rig:Ref:medicInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:weapon_bone_1.jointOrient" 
		"RigRN.placeHolderList[474]" ""
		"RigRN" 461
		1 |Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		2 "|Rig:main" "visibility" " -av 1"
		2 "|Rig:main" "translate" " -type \"double3\" 0 0 0"
		2 "|Rig:main" "translateX" " -av"
		2 "|Rig:main" "translateY" " -av"
		2 "|Rig:main" "translateZ" " -av"
		2 "|Rig:main" "rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main" "rotateX" " -av"
		2 "|Rig:main" "rotateY" " -av"
		2 "|Rig:main" "rotateZ" " -av"
		2 "|Rig:main" "rArmIKFK" " -av -k 1 1"
		2 "|Rig:main" "lArmIKFK" " -av -k 1 1"
		2 "|Rig:main" "rLegIKFK" " -av -k 1 1"
		2 "|Rig:main" "lLegIKFK" " -av -k 1 1"
		2 "|Rig:main" "spineIKFK" " -av -k 1 0"
		2 "|Rig:main|Rig:UpperbodyControl" "translate" " -type \"double3\" 0.814289 -0.674329 -3.371031"
		
		2 "|Rig:main|Rig:UpperbodyControl" "translateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "translateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "translateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotate" " -type \"double3\" -0.991767 -35.21854 -0.641507"
		
		2 "|Rig:main|Rig:UpperbodyControl" "rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_LControlZeroGroup|Rig:Ref:prp_hippouch_0_LControl" 
		"rotate" " -type \"double3\" 7.545385 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_LControlZeroGroup|Rig:Ref:prp_hippouch_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_LControlZeroGroup|Rig:Ref:prp_hippouch_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_LControlZeroGroup|Rig:Ref:prp_hippouch_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_BControlZeroGroup|Rig:Ref:prp_hippouch_0_BControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_BControlZeroGroup|Rig:Ref:prp_hippouch_0_BControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_BControlZeroGroup|Rig:Ref:prp_hippouch_0_BControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_BControlZeroGroup|Rig:Ref:prp_hippouch_0_BControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotate" " -type \"double3\" 6.662535 6.66265 1.16309"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"stretchSpine" " -av -k 1 1"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotate" " -type \"double3\" 10.195765 -0.597272 2.90071"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotate" " -type \"double3\" 8.778056 8.876558 1.331687"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:ikChest" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:main|Rig:UpperbodyControl|Rig:ikChest" "rotate" " -type \"double3\" 5.2784 -14.153918 -1.294158"
		
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "visibility" " 1"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "translate" " -type \"double3\" 4.067968 0.820105 6.268602"
		
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "translateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "translateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "translateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "rotate" " -type \"double3\" -19.633118 16.881345 8.722559"
		
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl" "translateX" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl" "translateY" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl" "translateZ" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl" "rotateX" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl" "rotateY" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl" "rotateZ" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl" "translateX" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl" "translateY" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl" "translateZ" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl" "rotateX" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl" "rotateY" 
		" -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl" "rotateZ" 
		" -av"
		2 "|Rig:main|Rig:ikSpine" "translate" " -type \"double3\" 2.177941 69.313167 -4.967227"
		
		2 "|Rig:main|Rig:ikSpine" "rotate" " -type \"double3\" -176.15373 -15.895258 2.640628"
		
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotate" " -type \"double3\" -8.998462 0 -2.198402"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotate" " -type \"double3\" -4.09164 0 7.213353"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotate" " -type \"double3\" -1.69226 -5.855527 -4.341453"
		
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateX" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateY" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "lock" " -av -k 1 0"
		
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotate" " -type \"double3\" -30.216887 -40.777906 10.012698"
		
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateX" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateY" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "lock" " -av -k 1 0"
		
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup" "translate" 
		" -type \"double3\" -21.183779 9.529982 14.198106"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup" "rotate" 
		" -type \"double3\" -0.702025 35.227571 -2.276569"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translate" " -type \"double3\" 5.02884 -1.433004 6.363488"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"lock" " -av -k 1 0"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"aim" " -av -k 1 0"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"weaponParent" " -av -k 1 1"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "visibility" " -av 1"
		
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotate" " -type \"double3\" -27.015416 9.640492 -100.526211"
		
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateOrder" " 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_thumb_0_LControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_index_0_LControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_middle_0_LControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_ring_0_LControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_pinky_0_LControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotate" " -type \"double3\" -25.768791 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotateX" " -av -16.228769"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotateX" " -av -0.912652"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotate" " -type \"double3\" 4.700333 -2.699669 5.660415"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotateX" " -av 14.833082"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotateX" " -av 43.829833"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotate" " -type \"double3\" 16.925028 -4.218677 -1.127869"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotateX" " -av 19.231524"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotateX" " -av 26.151372"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotate" " -type \"double3\" 19.959424 0 -4.317882"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotateX" " -av 28.250474"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotateX" " -av 7.323003"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotate" " -type \"double3\" 37.548783 7.600421 -4.317882"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotateX" " -av 0.182254"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl" 
		"rotateX" " -av 13.564877"
		2 "|Rig:main|Rig:lFootControl" "translate" " -type \"double3\" 0.918699 0 9.248412"
		
		2 "|Rig:main|Rig:lFootControl" "translateX" " -av"
		2 "|Rig:main|Rig:lFootControl" "translateY" " -av"
		2 "|Rig:main|Rig:lFootControl" "translateZ" " -av"
		2 "|Rig:main|Rig:lFootControl" "rotate" " -type \"double3\" 0 9.436731 0"
		
		2 "|Rig:main|Rig:lFootControl" "rotateX" " -av"
		2 "|Rig:main|Rig:lFootControl" "rotateY" " -av"
		2 "|Rig:main|Rig:lFootControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:lFootControl" "heelRock" " -av -k 1 0"
		2 "|Rig:main|Rig:lFootControl" "ankleLift" " -av -k 1 0"
		2 "|Rig:main|Rig:lFootControl" "toeLift" " -av -k 1 0"
		2 "|Rig:main|Rig:lFootControl" "ankleBank" " -av -k 1 0"
		2 "|Rig:main|Rig:lFootControl" "rockL" " -av -k 1 0"
		2 "|Rig:main|Rig:lFootControl" "rockR" " -av -k 1 0"
		2 "|Rig:main|Rig:lFootControl" "ballPivot" " -av -k 1 0"
		2 "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translate" 
		" -type \"double3\" 15.869609 9.52999 14.198108"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "rotate" 
		" -type \"double3\" -0.702025 35.227571 -2.276569"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translate" " -type \"double3\" 0.0813061 -0.388313 -9.95764"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"lock" " -av -k 1 0"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"aim" " -av -k 1 0"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"weaponParent" " -av -k 1 1"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "visibility" " -av 1"
		
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotate" " -type \"double3\" -55.203424 21.282509 -7.199209"
		
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateOrder" " 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "bip_thumb_0_RControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "bip_index_0_RControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "bip_middle_0_RControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "bip_ring_0_RControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "bip_pinky_0_RControlRoll" 
		" -av -k 1 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl" 
		"rotate" " -type \"double3\" -0.0470593 0 -12.27158"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl" 
		"rotateX" " -av 21.652429"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl" 
		"rotateX" " -av 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl" 
		"rotate" " -type \"double3\" -0.535915 0 -11.876976"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl" 
		"rotateX" " -av 20.557647"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotateX" " -av 29.148558"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl" 
		"rotate" " -type \"double3\" -2.353419 -0.880445 -19.297945"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl" 
		"rotateX" " -av 20.277993"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotateX" " -av 34.27151"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl" 
		"rotate" " -type \"double3\" -2.398117 -1.080541 -22.389035"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotateX" " -av -10.653232"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl" 
		"rotateX" " -av 51.648703"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotate" " -type \"double3\" -3.311062 4.062263 -33.279826"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl" 
		"rotateX" " -av -36.436436"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl" 
		"rotateX" " -av 29.470924"
		2 "|Rig:main|Rig:rFootControl" "translate" " -type \"double3\" -3.28092 0 -5.216114"
		
		2 "|Rig:main|Rig:rFootControl" "translateX" " -av"
		2 "|Rig:main|Rig:rFootControl" "translateY" " -av"
		2 "|Rig:main|Rig:rFootControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rFootControl" "rotate" " -type \"double3\" 0 -20.298398 0"
		
		2 "|Rig:main|Rig:rFootControl" "rotateX" " -av"
		2 "|Rig:main|Rig:rFootControl" "rotateY" " -av"
		2 "|Rig:main|Rig:rFootControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:rFootControl" "heelRock" " -av -k 1 0"
		2 "|Rig:main|Rig:rFootControl" "ankleLift" " -av -k 1 0"
		2 "|Rig:main|Rig:rFootControl" "toeLift" " -av -k 1 0"
		2 "|Rig:main|Rig:rFootControl" "ankleBank" " -av -k 1 0"
		2 "|Rig:main|Rig:rFootControl" "rockL" " -av -k 1 0"
		2 "|Rig:main|Rig:rFootControl" "rockR" " -av -k 1 0"
		2 "|Rig:main|Rig:rFootControl" "ballPivot" " -av -k 1 0"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:rkneeControl" "translate" " -type \"double3\" -18.15206 2.0374 25.093441"
		
		2 "|Rig:main|Rig:poleVectorGroup|Rig:rkneeControl" "translateX" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:rkneeControl" "translateY" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:rkneeControl" "translateZ" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:lkneeControl" "translate" " -type \"double3\" -0.825781 -4.197576 33.810386"
		
		2 "|Rig:main|Rig:poleVectorGroup|Rig:lkneeControl" "translateX" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:lkneeControl" "translateY" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:lkneeControl" "translateZ" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:lElbowControl" "translate" " -type \"double3\" 24.733795 -10.310186 4.195032"
		
		2 "|Rig:main|Rig:poleVectorGroup|Rig:lElbowControl" "translateX" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:lElbowControl" "translateY" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:lElbowControl" "translateZ" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:rElbowControl" "translate" " -type \"double3\" 3.867293 3.092344 -35.037033"
		
		2 "|Rig:main|Rig:poleVectorGroup|Rig:rElbowControl" "translateX" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:rElbowControl" "translateY" " -av"
		2 "|Rig:main|Rig:poleVectorGroup|Rig:rElbowControl" "translateZ" " -av"
		5 4 "RigRN" "|Rig:main.spineIKFK" "RigRN.placeHolderList[475]" ""
		5 4 "RigRN" "|Rig:main.translateX" "RigRN.placeHolderList[476]" ""
		5 4 "RigRN" "|Rig:main.translateY" "RigRN.placeHolderList[477]" ""
		5 4 "RigRN" "|Rig:main.translateZ" "RigRN.placeHolderList[478]" ""
		5 4 "RigRN" "|Rig:main.rotateX" "RigRN.placeHolderList[479]" ""
		5 4 "RigRN" "|Rig:main.rotateY" "RigRN.placeHolderList[480]" ""
		5 4 "RigRN" "|Rig:main.rotateZ" "RigRN.placeHolderList[481]" ""
		5 4 "RigRN" "|Rig:main.lArmIKFK" "RigRN.placeHolderList[482]" ""
		5 4 "RigRN" "|Rig:main.rArmIKFK" "RigRN.placeHolderList[483]" ""
		5 4 "RigRN" "|Rig:main.rLegIKFK" "RigRN.placeHolderList[484]" ""
		5 4 "RigRN" "|Rig:main.lLegIKFK" "RigRN.placeHolderList[485]" ""
		5 4 "RigRN" "|Rig:main.visibility" "RigRN.placeHolderList[486]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateX" "RigRN.placeHolderList[487]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateY" "RigRN.placeHolderList[488]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateZ" "RigRN.placeHolderList[489]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateX" "RigRN.placeHolderList[490]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateY" "RigRN.placeHolderList[491]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateZ" "RigRN.placeHolderList[492]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateX" 
		"RigRN.placeHolderList[493]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateY" 
		"RigRN.placeHolderList[494]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateZ" 
		"RigRN.placeHolderList[495]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_LControlZeroGroup|Rig:Ref:prp_hippouch_0_LControl.rotateX" 
		"RigRN.placeHolderList[496]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_LControlZeroGroup|Rig:Ref:prp_hippouch_0_LControl.rotateY" 
		"RigRN.placeHolderList[497]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_LControlZeroGroup|Rig:Ref:prp_hippouch_0_LControl.rotateZ" 
		"RigRN.placeHolderList[498]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_BControlZeroGroup|Rig:Ref:prp_hippouch_0_BControl.rotateX" 
		"RigRN.placeHolderList[499]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_BControlZeroGroup|Rig:Ref:prp_hippouch_0_BControl.rotateY" 
		"RigRN.placeHolderList[500]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_hippouch_0_BControlZeroGroup|Rig:Ref:prp_hippouch_0_BControl.rotateZ" 
		"RigRN.placeHolderList[501]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.stretchSpine" 
		"RigRN.placeHolderList[502]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateX" 
		"RigRN.placeHolderList[503]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateY" 
		"RigRN.placeHolderList[504]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateZ" 
		"RigRN.placeHolderList[505]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateX" 
		"RigRN.placeHolderList[506]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateY" 
		"RigRN.placeHolderList[507]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateZ" 
		"RigRN.placeHolderList[508]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateX" 
		"RigRN.placeHolderList[509]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateY" 
		"RigRN.placeHolderList[510]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateZ" 
		"RigRN.placeHolderList[511]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateX" 
		"RigRN.placeHolderList[512]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateY" 
		"RigRN.placeHolderList[513]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateZ" 
		"RigRN.placeHolderList[514]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl.translateX" 
		"RigRN.placeHolderList[515]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl.translateY" 
		"RigRN.placeHolderList[516]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl.translateZ" 
		"RigRN.placeHolderList[517]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl.rotateX" 
		"RigRN.placeHolderList[518]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl.rotateY" 
		"RigRN.placeHolderList[519]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeL|Rig:coatLControl.rotateZ" 
		"RigRN.placeHolderList[520]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl.translateX" 
		"RigRN.placeHolderList[521]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl.translateY" 
		"RigRN.placeHolderList[522]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl.translateZ" 
		"RigRN.placeHolderList[523]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl.rotateX" 
		"RigRN.placeHolderList[524]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl.rotateY" 
		"RigRN.placeHolderList[525]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:locatorKneeR|Rig:coatRControl.rotateZ" 
		"RigRN.placeHolderList[526]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateX" 
		"RigRN.placeHolderList[527]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateY" 
		"RigRN.placeHolderList[528]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateZ" 
		"RigRN.placeHolderList[529]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateX" 
		"RigRN.placeHolderList[530]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateY" 
		"RigRN.placeHolderList[531]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateZ" 
		"RigRN.placeHolderList[532]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateX" 
		"RigRN.placeHolderList[533]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateY" 
		"RigRN.placeHolderList[534]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateZ" 
		"RigRN.placeHolderList[535]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.lock" 
		"RigRN.placeHolderList[536]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateX" 
		"RigRN.placeHolderList[537]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateY" 
		"RigRN.placeHolderList[538]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateZ" 
		"RigRN.placeHolderList[539]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.lock" 
		"RigRN.placeHolderList[540]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_glassesControlGroup|Rig:Ref:prp_glassesControl.translateX" 
		"RigRN.placeHolderList[541]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_glassesControlGroup|Rig:Ref:prp_glassesControl.translateY" 
		"RigRN.placeHolderList[542]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_glassesControlGroup|Rig:Ref:prp_glassesControl.translateZ" 
		"RigRN.placeHolderList[543]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_glassesControlGroup|Rig:Ref:prp_glassesControl.rotateX" 
		"RigRN.placeHolderList[544]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_glassesControlGroup|Rig:Ref:prp_glassesControl.rotateY" 
		"RigRN.placeHolderList[545]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_glassesControlGroup|Rig:Ref:prp_glassesControl.rotateZ" 
		"RigRN.placeHolderList[546]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateX" 
		"RigRN.placeHolderList[547]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateY" 
		"RigRN.placeHolderList[548]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateZ" 
		"RigRN.placeHolderList[549]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.aim" 
		"RigRN.placeHolderList[550]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.lock" 
		"RigRN.placeHolderList[551]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.weaponParent" 
		"RigRN.placeHolderList[552]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateX" 
		"RigRN.placeHolderList[553]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateY" 
		"RigRN.placeHolderList[554]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateZ" 
		"RigRN.placeHolderList[555]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_thumb_0_LControlRoll" 
		"RigRN.placeHolderList[556]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_index_0_LControlRoll" 
		"RigRN.placeHolderList[557]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_middle_0_LControlRoll" 
		"RigRN.placeHolderList[558]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_ring_0_LControlRoll" 
		"RigRN.placeHolderList[559]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_pinky_0_LControlRoll" 
		"RigRN.placeHolderList[560]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.visibility" 
		"RigRN.placeHolderList[561]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateX" 
		"RigRN.placeHolderList[562]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateY" 
		"RigRN.placeHolderList[563]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateZ" 
		"RigRN.placeHolderList[564]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl.rotateX" 
		"RigRN.placeHolderList[565]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl.rotateX" 
		"RigRN.placeHolderList[566]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateX" 
		"RigRN.placeHolderList[567]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateY" 
		"RigRN.placeHolderList[568]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateZ" 
		"RigRN.placeHolderList[569]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl.rotateX" 
		"RigRN.placeHolderList[570]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl.rotateX" 
		"RigRN.placeHolderList[571]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateX" 
		"RigRN.placeHolderList[572]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateY" 
		"RigRN.placeHolderList[573]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateZ" 
		"RigRN.placeHolderList[574]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl.rotateX" 
		"RigRN.placeHolderList[575]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl.rotateX" 
		"RigRN.placeHolderList[576]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateX" 
		"RigRN.placeHolderList[577]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateY" 
		"RigRN.placeHolderList[578]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateZ" 
		"RigRN.placeHolderList[579]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl.rotateX" 
		"RigRN.placeHolderList[580]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl.rotateX" 
		"RigRN.placeHolderList[581]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateX" 
		"RigRN.placeHolderList[582]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateY" 
		"RigRN.placeHolderList[583]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateZ" 
		"RigRN.placeHolderList[584]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl.rotateX" 
		"RigRN.placeHolderList[585]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl.rotateX" 
		"RigRN.placeHolderList[586]" ""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateX" "RigRN.placeHolderList[587]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateY" "RigRN.placeHolderList[588]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateZ" "RigRN.placeHolderList[589]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateX" "RigRN.placeHolderList[590]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateY" "RigRN.placeHolderList[591]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateZ" "RigRN.placeHolderList[592]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.heelRock" "RigRN.placeHolderList[593]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleLift" "RigRN.placeHolderList[594]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.toeLift" "RigRN.placeHolderList[595]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleBank" "RigRN.placeHolderList[596]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockR" "RigRN.placeHolderList[597]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockL" "RigRN.placeHolderList[598]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ballPivot" "RigRN.placeHolderList[599]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateX" 
		"RigRN.placeHolderList[600]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateY" 
		"RigRN.placeHolderList[601]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateZ" 
		"RigRN.placeHolderList[602]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateX" 
		"RigRN.placeHolderList[603]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateY" 
		"RigRN.placeHolderList[604]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateZ" 
		"RigRN.placeHolderList[605]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.aim" 
		"RigRN.placeHolderList[606]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.lock" 
		"RigRN.placeHolderList[607]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.weaponParent" 
		"RigRN.placeHolderList[608]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateX" 
		"RigRN.placeHolderList[609]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateY" 
		"RigRN.placeHolderList[610]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateZ" 
		"RigRN.placeHolderList[611]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_thumb_0_RControlRoll" 
		"RigRN.placeHolderList[612]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_index_0_RControlRoll" 
		"RigRN.placeHolderList[613]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_middle_0_RControlRoll" 
		"RigRN.placeHolderList[614]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_ring_0_RControlRoll" 
		"RigRN.placeHolderList[615]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_pinky_0_RControlRoll" 
		"RigRN.placeHolderList[616]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.visibility" 
		"RigRN.placeHolderList[617]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateX" 
		"RigRN.placeHolderList[618]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateY" 
		"RigRN.placeHolderList[619]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateZ" 
		"RigRN.placeHolderList[620]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl.rotateX" 
		"RigRN.placeHolderList[621]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl.rotateX" 
		"RigRN.placeHolderList[622]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateX" 
		"RigRN.placeHolderList[623]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateY" 
		"RigRN.placeHolderList[624]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateZ" 
		"RigRN.placeHolderList[625]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl.rotateX" 
		"RigRN.placeHolderList[626]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl.rotateX" 
		"RigRN.placeHolderList[627]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateX" 
		"RigRN.placeHolderList[628]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateY" 
		"RigRN.placeHolderList[629]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateZ" 
		"RigRN.placeHolderList[630]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl.rotateX" 
		"RigRN.placeHolderList[631]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl.rotateX" 
		"RigRN.placeHolderList[632]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateX" 
		"RigRN.placeHolderList[633]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateY" 
		"RigRN.placeHolderList[634]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateZ" 
		"RigRN.placeHolderList[635]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl.rotateX" 
		"RigRN.placeHolderList[636]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl.rotateX" 
		"RigRN.placeHolderList[637]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateX" 
		"RigRN.placeHolderList[638]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateY" 
		"RigRN.placeHolderList[639]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateZ" 
		"RigRN.placeHolderList[640]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl.rotateX" 
		"RigRN.placeHolderList[641]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl.rotateX" 
		"RigRN.placeHolderList[642]" ""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateX" "RigRN.placeHolderList[643]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateY" "RigRN.placeHolderList[644]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateZ" "RigRN.placeHolderList[645]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateX" "RigRN.placeHolderList[646]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateY" "RigRN.placeHolderList[647]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateZ" "RigRN.placeHolderList[648]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.heelRock" "RigRN.placeHolderList[649]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleLift" "RigRN.placeHolderList[650]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.toeLift" "RigRN.placeHolderList[651]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleBank" "RigRN.placeHolderList[652]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockR" "RigRN.placeHolderList[653]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockL" "RigRN.placeHolderList[654]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ballPivot" "RigRN.placeHolderList[655]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateX" 
		"RigRN.placeHolderList[656]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateY" 
		"RigRN.placeHolderList[657]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateZ" 
		"RigRN.placeHolderList[658]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:rkneeControl.translateX" 
		"RigRN.placeHolderList[659]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:rkneeControl.translateY" 
		"RigRN.placeHolderList[660]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:rkneeControl.translateZ" 
		"RigRN.placeHolderList[661]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:lkneeControl.translateX" 
		"RigRN.placeHolderList[662]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:lkneeControl.translateY" 
		"RigRN.placeHolderList[663]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:lkneeControl.translateZ" 
		"RigRN.placeHolderList[664]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:lElbowControl.translateX" 
		"RigRN.placeHolderList[665]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:lElbowControl.translateY" 
		"RigRN.placeHolderList[666]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:lElbowControl.translateZ" 
		"RigRN.placeHolderList[667]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:rElbowControl.translateX" 
		"RigRN.placeHolderList[668]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:rElbowControl.translateY" 
		"RigRN.placeHolderList[669]" ""
		5 4 "RigRN" "|Rig:main|Rig:poleVectorGroup|Rig:rElbowControl.translateZ" 
		"RigRN.placeHolderList[670]" "";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 48 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode animCurveTA -n "Rig:main_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:main_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:main_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99176676582853818;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -35.218539758190346;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.64150665771811188;
createNode animCurveTA -n "Rig:PelvisControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:PelvisControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:PelvisControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_MControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_MControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_MControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_MControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_MControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_MControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_MControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_MControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_MControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.169764944;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_0_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.1454933460000001;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_1_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_2_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_1_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1166467880000002;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_1_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.84381576;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_1_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_2_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_2_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.8510051809999997;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_2_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_1_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3815671319999998;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_1_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_1_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.913758294;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_2_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_2_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_2_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_hippouch_0_BControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_hippouch_0_BControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_hippouch_0_BControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_hippouch_0_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.5453850000000005;
createNode animCurveTA -n "Rig:Ref:prp_hippouch_0_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_hippouch_0_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.6625352183761111;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.6626504674965563;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.1630901721245734;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.195764744211765;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.59727199367263928;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.9007102144543988;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.7780562907155275;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.8765575765326261;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3316867411558591;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:prp_backpackControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTA -n "Rig:prp_backpackControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTA -n "Rig:prp_backpackControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTA -n "Rig:coatLControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:coatLControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:coatLControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:coatRControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:coatRControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:coatRControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lShoulderControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.99846246585013;
createNode animCurveTA -n "Rig:lShoulderControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lShoulderControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.198402;
createNode animCurveTA -n "Rig:rShoulderControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.0916396800140857;
createNode animCurveTA -n "Rig:rShoulderControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rShoulderControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.2133528121563497;
createNode animCurveTA -n "Rig:headControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.216886978447949;
createNode animCurveTA -n "Rig:headControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -40.777906134044429;
createNode animCurveTA -n "Rig:headControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.012698265612118;
createNode animCurveTA -n "Rig:Ref:prp_glassesControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_glassesControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:prp_glassesControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lFootControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lFootControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.436731194;
createNode animCurveTA -n "Rig:lFootControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lHandControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -27.015415893898332;
createNode animCurveTA -n "Rig:lHandControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.640492319288521;
createNode animCurveTA -n "Rig:lHandControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -100.52621084116505;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.7003331112271889;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.6996685770756925;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.6604149304353539;
createNode animCurveTA -n "Rig:Ref:bip_index_1_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 14.833081797645114;
createNode animCurveTA -n "Rig:Ref:bip_index_2_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 43.829832669277948;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.925027600846555;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.2186769059779001;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1278689598416338;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 19.231524459976754;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 26.151371963668741;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 37.548782734854349;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.6004213118152046;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.3178824038729102;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.18225367820029523;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.564876522586291;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 19.959424126691133;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.3178824038729129;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.250474395413498;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.323002920371926;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -25.768790740063668;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.9513867036587939e-016;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -16.228768809869781;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_LControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.91265214633993885;
createNode animCurveTA -n "Rig:lToeControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lToeControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lToeControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:neckControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.6922600628592004;
createNode animCurveTA -n "Rig:neckControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.8555269474922715;
createNode animCurveTA -n "Rig:neckControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.3414533702962927;
createNode animCurveTA -n "Rig:rFootControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rFootControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -20.29839815929811;
createNode animCurveTA -n "Rig:rFootControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rHandControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -55.2034241174035;
createNode animCurveTA -n "Rig:rHandControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 21.282508919006169;
createNode animCurveTA -n "Rig:rHandControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.1992087872164516;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.53591461246612404;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.876975866528946;
createNode animCurveTA -n "Rig:Ref:bip_index_1_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 20.557647013413373;
createNode animCurveTA -n "Rig:Ref:bip_index_2_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 29.148558039661637;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.3534190544085187;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.88044547363398074;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -19.29794465964882;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 20.277993104344855;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 34.271510344111398;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.3110619773460992;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0622629888654016;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -33.279826035347561;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -36.436436076098644;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 29.470924172344031;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.3981170701824888;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.0805412130173748;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.389035379504755;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -10.653232405867813;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 51.648702886382395;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.047059262216878374;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.271580172983043;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 21.652429109523872;
createNode animCurveTA -n "Rig:rToeControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rToeControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rToeControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Wep:w_syringegunControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.19902629238439082;
createNode animCurveTA -n "Wep:w_syringegunControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Wep:w_syringegunControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.0731714601618876;
createNode animCurveTU -n "Rig:main_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "Rig:main_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:main_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:main_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:main_lArmIKFK";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:main_rLegIKFK";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:main_lLegIKFK";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:main_spineIKFK";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:UpperbodyControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.81428868908872931;
createNode animCurveTL -n "Rig:UpperbodyControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.6743294859600879;
createNode animCurveTL -n "Rig:UpperbodyControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.3710309223747501;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_1_LControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.83923301979999998;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_1_LControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.040280345090000003;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_1_LControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72044162430000003;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_2_LControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_2_LControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_2_LControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_1_RControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.058568765;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_1_RControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.065209259;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_1_RControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.471608706;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_2_RControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_2_RControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_2_RControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_LControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_LControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_LControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_LControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_LControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_LControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_MControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_MControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_MControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_MControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_MControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_MControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_RControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_RControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_RControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_RControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_RControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_2_RControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:Ref:bip_spine_0FKcontrol_stretchSpine";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:prp_backpackControl_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
createNode animCurveTL -n "Rig:prp_backpackControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTL -n "Rig:prp_backpackControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTL -n "Rig:prp_backpackControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 48 0;
createNode animCurveTU -n "Rig:prp_backpackControl_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
createNode animCurveTU -n "Rig:prp_backpackControl_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
createNode animCurveTU -n "Rig:prp_backpackControl_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 48 1;
createNode animCurveTL -n "Rig:coatLControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:coatLControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:coatLControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:coatRControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:coatRControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:coatRControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:neckControl_lock";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:headControl_lock";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_glassesControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_glassesControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:Ref:prp_glassesControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:likHandControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.0288396472574108;
createNode animCurveTL -n "Rig:likHandControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4330039762414259;
createNode animCurveTL -n "Rig:likHandControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3634883574970891;
createNode animCurveTU -n "Rig:likHandControl_lock";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:likHandControl_aim";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:lHandControl_bip_thumb_0_LControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_bip_index_0_LControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_bip_middle_0_LControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_bip_ring_0_LControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_bip_pinky_0_LControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:lFootControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.91869879391400566;
createNode animCurveTL -n "Rig:lFootControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:lFootControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.2484122329106846;
createNode animCurveTU -n "Rig:lFootControl_heelRock";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_ankleLift";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_toeLift";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_ankleBank";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_rockL";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_rockR";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_ballPivot";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:rikHandControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.08130610220670903;
createNode animCurveTL -n "Rig:rikHandControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.38831349336273646;
createNode animCurveTL -n "Rig:rikHandControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.9576398472014773;
createNode animCurveTL -n "Rig:rFootControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.2809197069029885;
createNode animCurveTL -n "Rig:rFootControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:rFootControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.2161144908310426;
createNode animCurveTU -n "Rig:rFootControl_heelRock";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_ankleLift";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_toeLift";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_ankleBank";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_rockL";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_rockR";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_ballPivot";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:rElbowControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.8672934268770316;
createNode animCurveTL -n "Rig:rElbowControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.0923443815698324;
createNode animCurveTL -n "Rig:rElbowControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -35.037032576101467;
createNode animCurveTL -n "Rig:lElbowControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 24.733794596736239;
createNode animCurveTL -n "Rig:lElbowControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -10.310185668065779;
createNode animCurveTL -n "Rig:lElbowControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.195031695811771;
createNode animCurveTL -n "Rig:lkneeControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.825781;
createNode animCurveTL -n "Rig:lkneeControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.197576;
createNode animCurveTL -n "Rig:lkneeControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 33.810386;
createNode animCurveTL -n "Rig:rkneeControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -18.152059530654306;
createNode animCurveTL -n "Rig:rkneeControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.0374;
createNode animCurveTL -n "Rig:rkneeControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 25.093441;
createNode animCurveTU -n "Wep:w_syringegunControl_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "Wep:w_syringegunControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -45.609460075549499;
createNode animCurveTL -n "Wep:w_syringegunControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.676249159604168;
createNode animCurveTL -n "Wep:w_syringegunControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 55.666650949807178;
createNode animCurveTU -n "Wep:w_syringegunControl_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Wep:w_syringegunControl_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Wep:w_syringegunControl_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Wep:w_syringegunControl_parentTrans";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Wep:w_syringegunControl_parentRot";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Wep:cartridgeControl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rikHandControl_lock";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rikHandControl_aim";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rikHandControl_weaponParent";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:rHandControl_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:rHandControl_bip_thumb_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rHandControl_bip_index_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rHandControl_bip_middle_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rHandControl_bip_ring_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rHandControl_bip_pinky_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_RControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.1372058942474653e-015;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Wep:cartridgeControl_visibility";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "Wep:cartridgeControl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Wep:cartridgeControl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Wep:cartridgeControl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Wep:cartridgeControl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Wep:cartridgeControl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Wep:cartridgeControl_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Wep:cartridgeControl_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Wep:cartridgeControl_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:likHandControl_weaponParent";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:main_rArmIKFK";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
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
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n"
		+ "            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n"
		+ "                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" (localizedPanelLabel(\"Web Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
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
	setAttr -s 74 ".dsm";
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
	setAttr -s 6 ".s";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".tx";
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
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -l on -av -k on ".bfs";
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
	setAttr -l on -av -k on ".ef";
	setAttr -l on -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -l on -av -k on ".sf";
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
	setAttr -s 3 ".sol";
connectAttr "Rig:Ref:weapon_bone_parentConstraint1.ctx" "RigRN.phl[454]";
connectAttr "Rig:Ref:weapon_bone_parentConstraint1.cty" "RigRN.phl[455]";
connectAttr "Rig:Ref:weapon_bone_parentConstraint1.ctz" "RigRN.phl[456]";
connectAttr "Rig:Ref:weapon_bone_parentConstraint1.crx" "RigRN.phl[457]";
connectAttr "Rig:Ref:weapon_bone_parentConstraint1.cry" "RigRN.phl[458]";
connectAttr "Rig:Ref:weapon_bone_parentConstraint1.crz" "RigRN.phl[459]";
connectAttr "RigRN.phl[460]" "Rig:Ref:weapon_bone_parentConstraint1.cro";
connectAttr "RigRN.phl[461]" "Rig:Ref:weapon_bone_parentConstraint1.cpim";
connectAttr "RigRN.phl[462]" "Rig:Ref:weapon_bone_parentConstraint1.crp";
connectAttr "RigRN.phl[463]" "Rig:Ref:weapon_bone_parentConstraint1.crt";
connectAttr "Rig:Ref:weapon_bone_1_parentConstraint1.ctx" "RigRN.phl[464]";
connectAttr "Rig:Ref:weapon_bone_1_parentConstraint1.cty" "RigRN.phl[465]";
connectAttr "Rig:Ref:weapon_bone_1_parentConstraint1.ctz" "RigRN.phl[466]";
connectAttr "Rig:Ref:weapon_bone_1_parentConstraint1.crx" "RigRN.phl[467]";
connectAttr "Rig:Ref:weapon_bone_1_parentConstraint1.cry" "RigRN.phl[468]";
connectAttr "Rig:Ref:weapon_bone_1_parentConstraint1.crz" "RigRN.phl[469]";
connectAttr "RigRN.phl[470]" "Rig:Ref:weapon_bone_1_parentConstraint1.cro";
connectAttr "RigRN.phl[471]" "Rig:Ref:weapon_bone_1_parentConstraint1.cpim";
connectAttr "RigRN.phl[472]" "Rig:Ref:weapon_bone_1_parentConstraint1.crp";
connectAttr "RigRN.phl[473]" "Rig:Ref:weapon_bone_1_parentConstraint1.crt";
connectAttr "RigRN.phl[474]" "Rig:Ref:weapon_bone_1_parentConstraint1.cjo";
connectAttr "Rig:main_spineIKFK.o" "RigRN.phl[475]";
connectAttr "Rig:main_translateX.o" "RigRN.phl[476]";
connectAttr "Rig:main_translateY.o" "RigRN.phl[477]";
connectAttr "Rig:main_translateZ.o" "RigRN.phl[478]";
connectAttr "Rig:main_rotateX.o" "RigRN.phl[479]";
connectAttr "Rig:main_rotateY.o" "RigRN.phl[480]";
connectAttr "Rig:main_rotateZ.o" "RigRN.phl[481]";
connectAttr "Rig:main_lArmIKFK.o" "RigRN.phl[482]";
connectAttr "Rig:main_rArmIKFK.o" "RigRN.phl[483]";
connectAttr "Rig:main_rLegIKFK.o" "RigRN.phl[484]";
connectAttr "Rig:main_lLegIKFK.o" "RigRN.phl[485]";
connectAttr "Rig:main_visibility.o" "RigRN.phl[486]";
connectAttr "Rig:UpperbodyControl_translateX.o" "RigRN.phl[487]";
connectAttr "Rig:UpperbodyControl_translateY.o" "RigRN.phl[488]";
connectAttr "Rig:UpperbodyControl_translateZ.o" "RigRN.phl[489]";
connectAttr "Rig:UpperbodyControl_rotateX.o" "RigRN.phl[490]";
connectAttr "Rig:UpperbodyControl_rotateY.o" "RigRN.phl[491]";
connectAttr "Rig:UpperbodyControl_rotateZ.o" "RigRN.phl[492]";
connectAttr "Rig:PelvisControl_rotateX.o" "RigRN.phl[493]";
connectAttr "Rig:PelvisControl_rotateY.o" "RigRN.phl[494]";
connectAttr "Rig:PelvisControl_rotateZ.o" "RigRN.phl[495]";
connectAttr "Rig:Ref:prp_hippouch_0_LControl_rotateX.o" "RigRN.phl[496]";
connectAttr "Rig:Ref:prp_hippouch_0_LControl_rotateY.o" "RigRN.phl[497]";
connectAttr "Rig:Ref:prp_hippouch_0_LControl_rotateZ.o" "RigRN.phl[498]";
connectAttr "Rig:Ref:prp_hippouch_0_BControl_rotateX.o" "RigRN.phl[499]";
connectAttr "Rig:Ref:prp_hippouch_0_BControl_rotateY.o" "RigRN.phl[500]";
connectAttr "Rig:Ref:prp_hippouch_0_BControl_rotateZ.o" "RigRN.phl[501]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_stretchSpine.o" "RigRN.phl[502]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateX.o" "RigRN.phl[503]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateY.o" "RigRN.phl[504]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateZ.o" "RigRN.phl[505]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateX.o" "RigRN.phl[506]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateY.o" "RigRN.phl[507]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateZ.o" "RigRN.phl[508]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateX.o" "RigRN.phl[509]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateY.o" "RigRN.phl[510]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateZ.o" "RigRN.phl[511]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateX.o" "RigRN.phl[512]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateY.o" "RigRN.phl[513]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateZ.o" "RigRN.phl[514]";
connectAttr "Rig:coatLControl_translateX.o" "RigRN.phl[515]";
connectAttr "Rig:coatLControl_translateY.o" "RigRN.phl[516]";
connectAttr "Rig:coatLControl_translateZ.o" "RigRN.phl[517]";
connectAttr "Rig:coatLControl_rotateX.o" "RigRN.phl[518]";
connectAttr "Rig:coatLControl_rotateY.o" "RigRN.phl[519]";
connectAttr "Rig:coatLControl_rotateZ.o" "RigRN.phl[520]";
connectAttr "Rig:coatRControl_translateX.o" "RigRN.phl[521]";
connectAttr "Rig:coatRControl_translateY.o" "RigRN.phl[522]";
connectAttr "Rig:coatRControl_translateZ.o" "RigRN.phl[523]";
connectAttr "Rig:coatRControl_rotateX.o" "RigRN.phl[524]";
connectAttr "Rig:coatRControl_rotateY.o" "RigRN.phl[525]";
connectAttr "Rig:coatRControl_rotateZ.o" "RigRN.phl[526]";
connectAttr "Rig:lShoulderControl_rotateX.o" "RigRN.phl[527]";
connectAttr "Rig:lShoulderControl_rotateY.o" "RigRN.phl[528]";
connectAttr "Rig:lShoulderControl_rotateZ.o" "RigRN.phl[529]";
connectAttr "Rig:rShoulderControl_rotateX.o" "RigRN.phl[530]";
connectAttr "Rig:rShoulderControl_rotateY.o" "RigRN.phl[531]";
connectAttr "Rig:rShoulderControl_rotateZ.o" "RigRN.phl[532]";
connectAttr "Rig:neckControl_rotateX.o" "RigRN.phl[533]";
connectAttr "Rig:neckControl_rotateY.o" "RigRN.phl[534]";
connectAttr "Rig:neckControl_rotateZ.o" "RigRN.phl[535]";
connectAttr "Rig:neckControl_lock.o" "RigRN.phl[536]";
connectAttr "Rig:headControl_rotateX.o" "RigRN.phl[537]";
connectAttr "Rig:headControl_rotateY.o" "RigRN.phl[538]";
connectAttr "Rig:headControl_rotateZ.o" "RigRN.phl[539]";
connectAttr "Rig:headControl_lock.o" "RigRN.phl[540]";
connectAttr "Rig:Ref:prp_glassesControl_translateX.o" "RigRN.phl[541]";
connectAttr "Rig:Ref:prp_glassesControl_translateY.o" "RigRN.phl[542]";
connectAttr "Rig:Ref:prp_glassesControl_translateZ.o" "RigRN.phl[543]";
connectAttr "Rig:Ref:prp_glassesControl_rotateX.o" "RigRN.phl[544]";
connectAttr "Rig:Ref:prp_glassesControl_rotateY.o" "RigRN.phl[545]";
connectAttr "Rig:Ref:prp_glassesControl_rotateZ.o" "RigRN.phl[546]";
connectAttr "Rig:likHandControl_translateX.o" "RigRN.phl[547]";
connectAttr "Rig:likHandControl_translateY.o" "RigRN.phl[548]";
connectAttr "Rig:likHandControl_translateZ.o" "RigRN.phl[549]";
connectAttr "Rig:likHandControl_aim.o" "RigRN.phl[550]";
connectAttr "Rig:likHandControl_lock.o" "RigRN.phl[551]";
connectAttr "Rig:likHandControl_weaponParent.o" "RigRN.phl[552]";
connectAttr "Rig:lHandControl_rotateX.o" "RigRN.phl[553]";
connectAttr "Rig:lHandControl_rotateY.o" "RigRN.phl[554]";
connectAttr "Rig:lHandControl_rotateZ.o" "RigRN.phl[555]";
connectAttr "Rig:lHandControl_bip_thumb_0_LControlRoll.o" "RigRN.phl[556]";
connectAttr "Rig:lHandControl_bip_index_0_LControlRoll.o" "RigRN.phl[557]";
connectAttr "Rig:lHandControl_bip_middle_0_LControlRoll.o" "RigRN.phl[558]";
connectAttr "Rig:lHandControl_bip_ring_0_LControlRoll.o" "RigRN.phl[559]";
connectAttr "Rig:lHandControl_bip_pinky_0_LControlRoll.o" "RigRN.phl[560]";
connectAttr "Rig:lHandControl_visibility.o" "RigRN.phl[561]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateX.o" "RigRN.phl[562]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateY.o" "RigRN.phl[563]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateZ.o" "RigRN.phl[564]";
connectAttr "Rig:Ref:bip_thumb_1_LControl_rotateX.o" "RigRN.phl[565]";
connectAttr "Rig:Ref:bip_thumb_2_LControl_rotateX.o" "RigRN.phl[566]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateX.o" "RigRN.phl[567]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateY.o" "RigRN.phl[568]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateZ.o" "RigRN.phl[569]";
connectAttr "Rig:Ref:bip_index_1_LControl_rotateX.o" "RigRN.phl[570]";
connectAttr "Rig:Ref:bip_index_2_LControl_rotateX.o" "RigRN.phl[571]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateX.o" "RigRN.phl[572]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateY.o" "RigRN.phl[573]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateZ.o" "RigRN.phl[574]";
connectAttr "Rig:Ref:bip_middle_1_LControl_rotateX.o" "RigRN.phl[575]";
connectAttr "Rig:Ref:bip_middle_2_LControl_rotateX.o" "RigRN.phl[576]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateX.o" "RigRN.phl[577]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateY.o" "RigRN.phl[578]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateZ.o" "RigRN.phl[579]";
connectAttr "Rig:Ref:bip_ring_1_LControl_rotateX.o" "RigRN.phl[580]";
connectAttr "Rig:Ref:bip_ring_2_LControl_rotateX.o" "RigRN.phl[581]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateX.o" "RigRN.phl[582]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateY.o" "RigRN.phl[583]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateZ.o" "RigRN.phl[584]";
connectAttr "Rig:Ref:bip_pinky_1_LControl_rotateX.o" "RigRN.phl[585]";
connectAttr "Rig:Ref:bip_pinky_2_LControl_rotateX.o" "RigRN.phl[586]";
connectAttr "Rig:lFootControl_translateX.o" "RigRN.phl[587]";
connectAttr "Rig:lFootControl_translateY.o" "RigRN.phl[588]";
connectAttr "Rig:lFootControl_translateZ.o" "RigRN.phl[589]";
connectAttr "Rig:lFootControl_rotateX.o" "RigRN.phl[590]";
connectAttr "Rig:lFootControl_rotateY.o" "RigRN.phl[591]";
connectAttr "Rig:lFootControl_rotateZ.o" "RigRN.phl[592]";
connectAttr "Rig:lFootControl_heelRock.o" "RigRN.phl[593]";
connectAttr "Rig:lFootControl_ankleLift.o" "RigRN.phl[594]";
connectAttr "Rig:lFootControl_toeLift.o" "RigRN.phl[595]";
connectAttr "Rig:lFootControl_ankleBank.o" "RigRN.phl[596]";
connectAttr "Rig:lFootControl_rockR.o" "RigRN.phl[597]";
connectAttr "Rig:lFootControl_rockL.o" "RigRN.phl[598]";
connectAttr "Rig:lFootControl_ballPivot.o" "RigRN.phl[599]";
connectAttr "Rig:lToeControl_rotateX.o" "RigRN.phl[600]";
connectAttr "Rig:lToeControl_rotateY.o" "RigRN.phl[601]";
connectAttr "Rig:lToeControl_rotateZ.o" "RigRN.phl[602]";
connectAttr "Rig:rikHandControl_translateX.o" "RigRN.phl[603]";
connectAttr "Rig:rikHandControl_translateY.o" "RigRN.phl[604]";
connectAttr "Rig:rikHandControl_translateZ.o" "RigRN.phl[605]";
connectAttr "Rig:rikHandControl_aim.o" "RigRN.phl[606]";
connectAttr "Rig:rikHandControl_lock.o" "RigRN.phl[607]";
connectAttr "Rig:rikHandControl_weaponParent.o" "RigRN.phl[608]";
connectAttr "Rig:rHandControl_rotateX.o" "RigRN.phl[609]";
connectAttr "Rig:rHandControl_rotateY.o" "RigRN.phl[610]";
connectAttr "Rig:rHandControl_rotateZ.o" "RigRN.phl[611]";
connectAttr "Rig:rHandControl_bip_thumb_0_RControlRoll.o" "RigRN.phl[612]";
connectAttr "Rig:rHandControl_bip_index_0_RControlRoll.o" "RigRN.phl[613]";
connectAttr "Rig:rHandControl_bip_middle_0_RControlRoll.o" "RigRN.phl[614]";
connectAttr "Rig:rHandControl_bip_ring_0_RControlRoll.o" "RigRN.phl[615]";
connectAttr "Rig:rHandControl_bip_pinky_0_RControlRoll.o" "RigRN.phl[616]";
connectAttr "Rig:rHandControl_visibility.o" "RigRN.phl[617]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateX.o" "RigRN.phl[618]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateY.o" "RigRN.phl[619]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateZ.o" "RigRN.phl[620]";
connectAttr "Rig:Ref:bip_thumb_1_RControl_rotateX.o" "RigRN.phl[621]";
connectAttr "Rig:Ref:bip_thumb_2_RControl_rotateX.o" "RigRN.phl[622]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateX.o" "RigRN.phl[623]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateY.o" "RigRN.phl[624]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateZ.o" "RigRN.phl[625]";
connectAttr "Rig:Ref:bip_index_1_RControl_rotateX.o" "RigRN.phl[626]";
connectAttr "Rig:Ref:bip_index_2_RControl_rotateX.o" "RigRN.phl[627]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateX.o" "RigRN.phl[628]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateY.o" "RigRN.phl[629]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateZ.o" "RigRN.phl[630]";
connectAttr "Rig:Ref:bip_middle_1_RControl_rotateX.o" "RigRN.phl[631]";
connectAttr "Rig:Ref:bip_middle_2_RControl_rotateX.o" "RigRN.phl[632]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateX.o" "RigRN.phl[633]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateY.o" "RigRN.phl[634]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateZ.o" "RigRN.phl[635]";
connectAttr "Rig:Ref:bip_ring_1_RControl_rotateX.o" "RigRN.phl[636]";
connectAttr "Rig:Ref:bip_ring_2_RControl_rotateX.o" "RigRN.phl[637]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateX.o" "RigRN.phl[638]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateY.o" "RigRN.phl[639]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateZ.o" "RigRN.phl[640]";
connectAttr "Rig:Ref:bip_pinky_1_RControl_rotateX.o" "RigRN.phl[641]";
connectAttr "Rig:Ref:bip_pinky_2_RControl_rotateX.o" "RigRN.phl[642]";
connectAttr "Rig:rFootControl_translateX.o" "RigRN.phl[643]";
connectAttr "Rig:rFootControl_translateY.o" "RigRN.phl[644]";
connectAttr "Rig:rFootControl_translateZ.o" "RigRN.phl[645]";
connectAttr "Rig:rFootControl_rotateX.o" "RigRN.phl[646]";
connectAttr "Rig:rFootControl_rotateY.o" "RigRN.phl[647]";
connectAttr "Rig:rFootControl_rotateZ.o" "RigRN.phl[648]";
connectAttr "Rig:rFootControl_heelRock.o" "RigRN.phl[649]";
connectAttr "Rig:rFootControl_ankleLift.o" "RigRN.phl[650]";
connectAttr "Rig:rFootControl_toeLift.o" "RigRN.phl[651]";
connectAttr "Rig:rFootControl_ankleBank.o" "RigRN.phl[652]";
connectAttr "Rig:rFootControl_rockR.o" "RigRN.phl[653]";
connectAttr "Rig:rFootControl_rockL.o" "RigRN.phl[654]";
connectAttr "Rig:rFootControl_ballPivot.o" "RigRN.phl[655]";
connectAttr "Rig:rToeControl_rotateX.o" "RigRN.phl[656]";
connectAttr "Rig:rToeControl_rotateY.o" "RigRN.phl[657]";
connectAttr "Rig:rToeControl_rotateZ.o" "RigRN.phl[658]";
connectAttr "Rig:rkneeControl_translateX.o" "RigRN.phl[659]";
connectAttr "Rig:rkneeControl_translateY.o" "RigRN.phl[660]";
connectAttr "Rig:rkneeControl_translateZ.o" "RigRN.phl[661]";
connectAttr "Rig:lkneeControl_translateX.o" "RigRN.phl[662]";
connectAttr "Rig:lkneeControl_translateY.o" "RigRN.phl[663]";
connectAttr "Rig:lkneeControl_translateZ.o" "RigRN.phl[664]";
connectAttr "Rig:lElbowControl_translateX.o" "RigRN.phl[665]";
connectAttr "Rig:lElbowControl_translateY.o" "RigRN.phl[666]";
connectAttr "Rig:lElbowControl_translateZ.o" "RigRN.phl[667]";
connectAttr "Rig:rElbowControl_translateX.o" "RigRN.phl[668]";
connectAttr "Rig:rElbowControl_translateY.o" "RigRN.phl[669]";
connectAttr "Rig:rElbowControl_translateZ.o" "RigRN.phl[670]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RigRN.phl[13]" "RigRN.phl[0]";
connectAttr "RigRN.phl[14]" "RigRN.phl[1]";
connectAttr "RigRN.phl[15]" "RigRN.phl[2]";
connectAttr "RigRN.phl[16]" "RigRN.phl[17]";
connectAttr "RigRN.phl[26]" "RigRN.phl[27]";
connectAttr "Rig:prp_backpackControl_rotateX.o" "RigRN.phl[151]";
connectAttr "Rig:prp_backpackControl_rotateY.o" "RigRN.phl[152]";
connectAttr "Rig:prp_backpackControl_rotateZ.o" "RigRN.phl[153]";
connectAttr "Rig:prp_backpackControl_translateX.o" "RigRN.phl[154]";
connectAttr "Rig:prp_backpackControl_translateY.o" "RigRN.phl[155]";
connectAttr "Rig:prp_backpackControl_translateZ.o" "RigRN.phl[156]";
connectAttr "Rig:prp_backpackControl_visibility.o" "RigRN.phl[157]";
connectAttr "Rig:prp_backpackControl_scaleX.o" "RigRN.phl[158]";
connectAttr "Rig:prp_backpackControl_scaleY.o" "RigRN.phl[159]";
connectAttr "Rig:prp_backpackControl_scaleZ.o" "RigRN.phl[160]";
connectAttr "Rig:Ref:prp_coat_front_1_LControl_translateX.o" "RigRN.phl[385]";
connectAttr "Rig:Ref:prp_coat_front_1_LControl_translateY.o" "RigRN.phl[386]";
connectAttr "Rig:Ref:prp_coat_front_1_LControl_translateZ.o" "RigRN.phl[387]";
connectAttr "Rig:Ref:prp_coat_front_1_LControl_rotateX.o" "RigRN.phl[388]";
connectAttr "Rig:Ref:prp_coat_front_1_LControl_rotateY.o" "RigRN.phl[389]";
connectAttr "Rig:Ref:prp_coat_front_1_LControl_rotateZ.o" "RigRN.phl[390]";
connectAttr "Rig:Ref:prp_coat_front_2_LControl_translateX.o" "RigRN.phl[391]";
connectAttr "Rig:Ref:prp_coat_front_2_LControl_translateY.o" "RigRN.phl[392]";
connectAttr "Rig:Ref:prp_coat_front_2_LControl_translateZ.o" "RigRN.phl[393]";
connectAttr "Rig:Ref:prp_coat_front_2_LControl_rotateX.o" "RigRN.phl[394]";
connectAttr "Rig:Ref:prp_coat_front_2_LControl_rotateY.o" "RigRN.phl[395]";
connectAttr "Rig:Ref:prp_coat_front_2_LControl_rotateZ.o" "RigRN.phl[396]";
connectAttr "Rig:Ref:prp_coat_front_1_RControl_translateX.o" "RigRN.phl[397]";
connectAttr "Rig:Ref:prp_coat_front_1_RControl_translateY.o" "RigRN.phl[398]";
connectAttr "Rig:Ref:prp_coat_front_1_RControl_translateZ.o" "RigRN.phl[399]";
connectAttr "Rig:Ref:prp_coat_front_1_RControl_rotateX.o" "RigRN.phl[400]";
connectAttr "Rig:Ref:prp_coat_front_1_RControl_rotateY.o" "RigRN.phl[401]";
connectAttr "Rig:Ref:prp_coat_front_1_RControl_rotateZ.o" "RigRN.phl[402]";
connectAttr "Rig:Ref:prp_coat_front_2_RControl_translateX.o" "RigRN.phl[403]";
connectAttr "Rig:Ref:prp_coat_front_2_RControl_translateY.o" "RigRN.phl[404]";
connectAttr "Rig:Ref:prp_coat_front_2_RControl_translateZ.o" "RigRN.phl[405]";
connectAttr "Rig:Ref:prp_coat_front_2_RControl_rotateX.o" "RigRN.phl[406]";
connectAttr "Rig:Ref:prp_coat_front_2_RControl_rotateY.o" "RigRN.phl[407]";
connectAttr "Rig:Ref:prp_coat_front_2_RControl_rotateZ.o" "RigRN.phl[408]";
connectAttr "Rig:Ref:prp_coat_back_0_LControl_rotateX.o" "RigRN.phl[409]";
connectAttr "Rig:Ref:prp_coat_back_0_LControl_rotateY.o" "RigRN.phl[410]";
connectAttr "Rig:Ref:prp_coat_back_0_LControl_rotateZ.o" "RigRN.phl[411]";
connectAttr "Rig:Ref:prp_coat_back_1_LControl_translateX.o" "RigRN.phl[412]";
connectAttr "Rig:Ref:prp_coat_back_1_LControl_translateY.o" "RigRN.phl[413]";
connectAttr "Rig:Ref:prp_coat_back_1_LControl_translateZ.o" "RigRN.phl[414]";
connectAttr "Rig:Ref:prp_coat_back_1_LControl_rotateX.o" "RigRN.phl[415]";
connectAttr "Rig:Ref:prp_coat_back_1_LControl_rotateY.o" "RigRN.phl[416]";
connectAttr "Rig:Ref:prp_coat_back_1_LControl_rotateZ.o" "RigRN.phl[417]";
connectAttr "Rig:Ref:prp_coat_back_2_LControl_translateX.o" "RigRN.phl[418]";
connectAttr "Rig:Ref:prp_coat_back_2_LControl_translateY.o" "RigRN.phl[419]";
connectAttr "Rig:Ref:prp_coat_back_2_LControl_translateZ.o" "RigRN.phl[420]";
connectAttr "Rig:Ref:prp_coat_back_2_LControl_rotateX.o" "RigRN.phl[421]";
connectAttr "Rig:Ref:prp_coat_back_2_LControl_rotateY.o" "RigRN.phl[422]";
connectAttr "Rig:Ref:prp_coat_back_2_LControl_rotateZ.o" "RigRN.phl[423]";
connectAttr "Rig:Ref:prp_coat_back_0_MControl_rotateX.o" "RigRN.phl[424]";
connectAttr "Rig:Ref:prp_coat_back_0_MControl_rotateY.o" "RigRN.phl[425]";
connectAttr "Rig:Ref:prp_coat_back_0_MControl_rotateZ.o" "RigRN.phl[426]";
connectAttr "Rig:Ref:prp_coat_back_1_MControl_translateX.o" "RigRN.phl[427]";
connectAttr "Rig:Ref:prp_coat_back_1_MControl_translateY.o" "RigRN.phl[428]";
connectAttr "Rig:Ref:prp_coat_back_1_MControl_translateZ.o" "RigRN.phl[429]";
connectAttr "Rig:Ref:prp_coat_back_1_MControl_rotateX.o" "RigRN.phl[430]";
connectAttr "Rig:Ref:prp_coat_back_1_MControl_rotateY.o" "RigRN.phl[431]";
connectAttr "Rig:Ref:prp_coat_back_1_MControl_rotateZ.o" "RigRN.phl[432]";
connectAttr "Rig:Ref:prp_coat_back_2_MControl_translateX.o" "RigRN.phl[433]";
connectAttr "Rig:Ref:prp_coat_back_2_MControl_translateY.o" "RigRN.phl[434]";
connectAttr "Rig:Ref:prp_coat_back_2_MControl_translateZ.o" "RigRN.phl[435]";
connectAttr "Rig:Ref:prp_coat_back_2_MControl_rotateX.o" "RigRN.phl[436]";
connectAttr "Rig:Ref:prp_coat_back_2_MControl_rotateY.o" "RigRN.phl[437]";
connectAttr "Rig:Ref:prp_coat_back_2_MControl_rotateZ.o" "RigRN.phl[438]";
connectAttr "Rig:Ref:prp_coat_back_0_RControl_rotateX.o" "RigRN.phl[439]";
connectAttr "Rig:Ref:prp_coat_back_0_RControl_rotateY.o" "RigRN.phl[440]";
connectAttr "Rig:Ref:prp_coat_back_0_RControl_rotateZ.o" "RigRN.phl[441]";
connectAttr "Rig:Ref:prp_coat_back_1_RControl_translateX.o" "RigRN.phl[442]";
connectAttr "Rig:Ref:prp_coat_back_1_RControl_translateY.o" "RigRN.phl[443]";
connectAttr "Rig:Ref:prp_coat_back_1_RControl_translateZ.o" "RigRN.phl[444]";
connectAttr "Rig:Ref:prp_coat_back_1_RControl_rotateX.o" "RigRN.phl[445]";
connectAttr "Rig:Ref:prp_coat_back_1_RControl_rotateY.o" "RigRN.phl[446]";
connectAttr "Rig:Ref:prp_coat_back_1_RControl_rotateZ.o" "RigRN.phl[447]";
connectAttr "Rig:Ref:prp_coat_back_2_RControl_translateX.o" "RigRN.phl[448]";
connectAttr "Rig:Ref:prp_coat_back_2_RControl_translateY.o" "RigRN.phl[449]";
connectAttr "Rig:Ref:prp_coat_back_2_RControl_translateZ.o" "RigRN.phl[450]";
connectAttr "Rig:Ref:prp_coat_back_2_RControl_rotateX.o" "RigRN.phl[451]";
connectAttr "Rig:Ref:prp_coat_back_2_RControl_rotateY.o" "RigRN.phl[452]";
connectAttr "Rig:Ref:prp_coat_back_2_RControl_rotateZ.o" "RigRN.phl[453]";
connectAttr "RigRNfosterParent1.msg" "RigRN.fp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of center_pose.ma
