//Maya ASCII 2012 scene
//Name: center_pose.ma
//Last modified: Wed, Mar 11, 2015 12:10:52 PM
//Codeset: 1252
file -rdi 1 -ns "Rig" -rfn "RigRN" "spy_rig.ma";
file -rdi 2 -ns "Ref" -rfn "Rig:RefRN" "spy_reference.ma";
file -r -ns "Rig" -dr 1 -rfn "RigRN" "spy_rig.ma";
requires maya "2012";
requires "vsMaster" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012";
fileInfo "cutIdentifier" "201109261253-811691";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -167.35098031433429 52.091717119132497 112.11946811251917 ;
	setAttr ".r" -type "double3" -9.3383527282456438 -59.399999999999245 0 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 2.55351295663786e-015 -8.8817841970012523e-016 ;
	setAttr ".rpt" -type "double3" 1.304296723168893e-016 1.3220492154205762e-014 1.0731646276469604e-013 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 187.82582373099746;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -7.7414014241870239 48.426921998322143 22.816729036971509 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1500.0999999999999 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.2856906645484969 48.194109558883355 1500.0999999999999 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1498.770784124788;
	setAttr ".ow" 195.7086521480841;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 2.2856906645484969 48.194109558883355 1.3292158752119576 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1500.0999999999999 43.311 -2.832 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 2.2204460492482936e-017 0 0 ;
	setAttr ".rpt" -type "double3" -2.220446049248293e-017 0 -2.2204460492482936e-017 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1482.7827581991125;
	setAttr ".ow" 112.06860088826778;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 17.317241800887359 43.31094427629418 -2.8324772026012668 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "RigRNfosterParent1";
createNode pointConstraint -n "Rig:Ref:weapon_bone_pointConstraint1" -p "RigRNfosterParent1";
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
	setAttr ".lo" yes;
	setAttr ".rst" -type "double3" 1.5007213048983168 4.7924057427829139 -1.6935367574336908 ;
createNode orientConstraint -n "Rig:Ref:weapon_bone_orientConstraint1" -p "RigRNfosterParent1";
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
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -83.597360004521704 24.933914004619304 -11.041645223552932 ;
	setAttr ".rsrr" -type "double3" -74.473807741707148 17.672158514704137 -20.158475023563707 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 12 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RigRN";
	setAttr -s 231 ".phl";
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"RigRN"
		"Rig:RefRN" 7
		2 "|Rig:Ref:spyInfo" "exportName" " -type \"string\" \"%VCONTENT%/tf/models/player/spy/animations/dmx/primary_runCenter.dmx\""
		
		2 "|Rig:Ref:spyInfo" "exportType" " 1"
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[231]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[232]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivot" 
		"RigRN.placeHolderList[233]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivotTranslate" 
		"RigRN.placeHolderList[234]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateOrder" 
		"RigRN.placeHolderList[238]" ""
		"Rig:Ref:HeadRN" 0
		"RigRN" 4
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		3 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1.constraintRotateX" 
		"|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.rotateX" 
		""
		3 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1.constraintRotateX" 
		"|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.rotateX" 
		""
		3 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl|Rig:rikHandControl_orientConstraint1.constraintRotateX" 
		"|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.rotateX" 
		""
		"Rig:RefRN" 55
		0 "|RigRNfosterParent1|Rig:Ref:weapon_bone_orientConstraint1" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"-s -r "
		0 "|RigRNfosterParent1|Rig:Ref:weapon_bone_pointConstraint1" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"-s -r "
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"translate" " -type \"double3\" 2.08143e-006 2.021689 1.05164e-005"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"translate" " -type \"double3\" 6.08479e-006 1.754608 7.42818e-005"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"translate" " -type \"double3\" -3.87174e-005 1.22694 3.15755e-005"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"translate" " -type \"double3\" 6.84782e-005 2.372336 -1.13923e-005"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"translate" " -type \"double3\" -6.60395e-005 1.580065 2.60083e-005"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"translate" " -type \"double3\" 1.02944e-005 1.690671 3.33901e-005"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"translate" " -type \"double3\" -3.13436e-005 1.423406 -2.36993e-005"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"translate" " -type \"double3\" -3.54969e-005 1.437795 -5.67393e-006"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"translate" " -type \"double3\" -7.12717e-006 1.059421 2.06545e-005"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_0_R" "translate" 
		" -type \"double3\" -8.061433 -0.727441 -1.153581"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_0_R" "translateX" 
		" -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_0_R" "translateY" 
		" -av"
		2 "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_0_R" "translateZ" 
		" -av"
		2 "Rig:Ref:mesh_layer" "displayType" " 2"
		2 "Rig:Ref:skeleton_layer" "displayType" " 2"
		5 4 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateX" 
		"RigRN.placeHolderList[239]" ""
		5 4 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateY" 
		"RigRN.placeHolderList[240]" ""
		5 4 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateZ" 
		"RigRN.placeHolderList[241]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[242]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[243]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivot" 
		"RigRN.placeHolderList[244]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivotTranslate" 
		"RigRN.placeHolderList[245]" ""
		5 4 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateX" 
		"RigRN.placeHolderList[246]" ""
		5 4 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateY" 
		"RigRN.placeHolderList[247]" ""
		5 4 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateZ" 
		"RigRN.placeHolderList[248]" ""
		5 3 "RigRN" "|Rig:Ref:spyInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateOrder" 
		"RigRN.placeHolderList[249]" ""
		"RigRN" 262
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		2 "|Rig:main|Rig:UpperbodyControl" "translate" " -type \"double3\" 0 -3.866919 -0.020043"
		
		2 "|Rig:main|Rig:UpperbodyControl" "translateY" " -av"
		2 "|Rig:main|Rig:ikSpine" "translate" " -type \"double3\" -0.948757 64.802381 -3.761912"
		
		2 "|Rig:main|Rig:ikSpine" "rotate" " -type \"double3\" 177.7114 1.325686 2.093601"
		
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translate" " -type \"double3\" -5.589699 3.458951 -7.756313"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotate" " -type \"double3\" -12.270238 -30.62905 -6.978395"
		
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_thumb_0_LControlRoll" 
		" -av -k 1 12.9"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_index_0_LControlRoll" 
		" -av -k 1 58"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_middle_0_LControlRoll" 
		" -av -k 1 58"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_ring_0_LControlRoll" 
		" -av -k 1 58"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "bip_pinky_0_LControlRoll" 
		" -av -k 1 58"
		2 "|Rig:main|Rig:lkneeControl" "translate" " -type \"double3\" -3.689978 1.852788 75.000008"
		
		2 "|Rig:main|Rig:lkneeControl" "translateX" " -av"
		2 "|Rig:main|Rig:lkneeControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translate" 
		" -type \"double3\" 7.115515 5.762864 7.865711"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translateX" 
		" -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translateY" 
		" -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translateZ" 
		" -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "rotate" 
		" -type \"double3\" 65.708688 -14.276548 19.870354"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup" 
		"translate" " -type \"double3\" -19.1141 46.7392 5.62414"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translate" " -type \"double3\" -0.886746 -4.442315 1.257539"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"aim" " -av -k 1 0"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"weaponParent" " -k 1"
		2 "|Rig:main|Rig:rElbowControl" "translate" " -type \"double3\" -6.286502 -18.890935 -38.698355"
		
		2 "|Rig:main|Rig:rElbowControl" "translateX" " -av"
		2 "|Rig:main|Rig:rElbowControl" "translateY" " -av"
		2 "|Rig:main|Rig:rElbowControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotate" " -type \"double3\" -114.968024 56.271219 19.795275"
		
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "bip_middle_0_RControlRoll" 
		" -av -k 1 20.1"
		5 4 "RigRN" "|Rig:main.spineIKFK" "RigRN.placeHolderList[250]" ""
		5 4 "RigRN" "|Rig:main.lArmIKFK" "RigRN.placeHolderList[251]" ""
		5 4 "RigRN" "|Rig:main.rArmIKFK" "RigRN.placeHolderList[252]" ""
		5 4 "RigRN" "|Rig:main.rLegIKFK" "RigRN.placeHolderList[253]" ""
		5 4 "RigRN" "|Rig:main.lLegIKFK" "RigRN.placeHolderList[254]" ""
		5 4 "RigRN" "|Rig:main.visibility" "RigRN.placeHolderList[255]" ""
		5 4 "RigRN" "|Rig:main.translateX" "RigRN.placeHolderList[256]" ""
		5 4 "RigRN" "|Rig:main.translateY" "RigRN.placeHolderList[257]" ""
		5 4 "RigRN" "|Rig:main.translateZ" "RigRN.placeHolderList[258]" ""
		5 4 "RigRN" "|Rig:main.rotateX" "RigRN.placeHolderList[259]" ""
		5 4 "RigRN" "|Rig:main.rotateY" "RigRN.placeHolderList[260]" ""
		5 4 "RigRN" "|Rig:main.rotateZ" "RigRN.placeHolderList[261]" ""
		5 4 "RigRN" "|Rig:main|Rig:mainShape.visibility" "RigRN.placeHolderList[262]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateX" "RigRN.placeHolderList[263]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateY" "RigRN.placeHolderList[264]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateZ" "RigRN.placeHolderList[265]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateX" "RigRN.placeHolderList[266]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateY" "RigRN.placeHolderList[267]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateZ" "RigRN.placeHolderList[268]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateX" 
		"RigRN.placeHolderList[269]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateY" 
		"RigRN.placeHolderList[270]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateZ" 
		"RigRN.placeHolderList[271]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.stretchSpine" 
		"RigRN.placeHolderList[272]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateX" 
		"RigRN.placeHolderList[273]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateY" 
		"RigRN.placeHolderList[274]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateZ" 
		"RigRN.placeHolderList[275]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateX" 
		"RigRN.placeHolderList[276]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateY" 
		"RigRN.placeHolderList[277]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateZ" 
		"RigRN.placeHolderList[278]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateX" 
		"RigRN.placeHolderList[279]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateY" 
		"RigRN.placeHolderList[280]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateZ" 
		"RigRN.placeHolderList[281]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateX" 
		"RigRN.placeHolderList[282]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateY" 
		"RigRN.placeHolderList[283]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateZ" 
		"RigRN.placeHolderList[284]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateY" "RigRN.placeHolderList[285]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateX" "RigRN.placeHolderList[286]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateZ" "RigRN.placeHolderList[287]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateX" 
		"RigRN.placeHolderList[288]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateY" 
		"RigRN.placeHolderList[289]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateZ" 
		"RigRN.placeHolderList[290]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateX" 
		"RigRN.placeHolderList[291]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateY" 
		"RigRN.placeHolderList[292]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateZ" 
		"RigRN.placeHolderList[293]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK.rotateX" 
		"RigRN.placeHolderList[294]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateX" 
		"RigRN.placeHolderList[295]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateY" 
		"RigRN.placeHolderList[296]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateZ" 
		"RigRN.placeHolderList[297]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateX" 
		"RigRN.placeHolderList[298]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateY" 
		"RigRN.placeHolderList[299]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateZ" 
		"RigRN.placeHolderList[300]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateX" 
		"RigRN.placeHolderList[301]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateY" 
		"RigRN.placeHolderList[302]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateZ" 
		"RigRN.placeHolderList[303]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK.rotateX" 
		"RigRN.placeHolderList[304]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateX" 
		"RigRN.placeHolderList[305]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateY" 
		"RigRN.placeHolderList[306]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateZ" 
		"RigRN.placeHolderList[307]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateX" 
		"RigRN.placeHolderList[308]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateY" 
		"RigRN.placeHolderList[309]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateZ" 
		"RigRN.placeHolderList[310]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateX" 
		"RigRN.placeHolderList[311]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateY" 
		"RigRN.placeHolderList[312]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateZ" 
		"RigRN.placeHolderList[313]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateX" 
		"RigRN.placeHolderList[314]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateY" 
		"RigRN.placeHolderList[315]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateZ" 
		"RigRN.placeHolderList[316]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK.rotateX" 
		"RigRN.placeHolderList[317]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateX" 
		"RigRN.placeHolderList[318]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateY" 
		"RigRN.placeHolderList[319]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateZ" 
		"RigRN.placeHolderList[320]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateX" 
		"RigRN.placeHolderList[321]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateY" 
		"RigRN.placeHolderList[322]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateZ" 
		"RigRN.placeHolderList[323]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateX" 
		"RigRN.placeHolderList[324]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateY" 
		"RigRN.placeHolderList[325]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateZ" 
		"RigRN.placeHolderList[326]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK.rotateX" 
		"RigRN.placeHolderList[327]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateX" 
		"RigRN.placeHolderList[328]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateY" 
		"RigRN.placeHolderList[329]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateZ" 
		"RigRN.placeHolderList[330]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateX" 
		"RigRN.placeHolderList[331]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateY" 
		"RigRN.placeHolderList[332]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateZ" 
		"RigRN.placeHolderList[333]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.lock" 
		"RigRN.placeHolderList[334]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateX" 
		"RigRN.placeHolderList[335]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateY" 
		"RigRN.placeHolderList[336]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateZ" 
		"RigRN.placeHolderList[337]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.lock" 
		"RigRN.placeHolderList[338]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_cigControlZeroGroup|Rig:Ref:prp_cigControl.translateX" 
		"RigRN.placeHolderList[339]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_cigControlZeroGroup|Rig:Ref:prp_cigControl.translateY" 
		"RigRN.placeHolderList[340]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_cigControlZeroGroup|Rig:Ref:prp_cigControl.translateZ" 
		"RigRN.placeHolderList[341]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_cigControlZeroGroup|Rig:Ref:prp_cigControl.rotateX" 
		"RigRN.placeHolderList[342]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_cigControlZeroGroup|Rig:Ref:prp_cigControl.rotateY" 
		"RigRN.placeHolderList[343]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_cigControlZeroGroup|Rig:Ref:prp_cigControl.rotateZ" 
		"RigRN.placeHolderList[344]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateX" 
		"RigRN.placeHolderList[345]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateY" 
		"RigRN.placeHolderList[346]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateZ" 
		"RigRN.placeHolderList[347]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.aim" 
		"RigRN.placeHolderList[348]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.lock" 
		"RigRN.placeHolderList[349]" ""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateX" "RigRN.placeHolderList[350]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateY" "RigRN.placeHolderList[351]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateZ" "RigRN.placeHolderList[352]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateX" 
		"RigRN.placeHolderList[353]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateY" 
		"RigRN.placeHolderList[354]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateZ" 
		"RigRN.placeHolderList[355]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_thumb_0_LControlRoll" 
		"RigRN.placeHolderList[356]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_index_0_LControlRoll" 
		"RigRN.placeHolderList[357]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_middle_0_LControlRoll" 
		"RigRN.placeHolderList[358]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_ring_0_LControlRoll" 
		"RigRN.placeHolderList[359]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_pinky_0_LControlRoll" 
		"RigRN.placeHolderList[360]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.visibility" 
		"RigRN.placeHolderList[361]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:lHandControlShape.visibility" 
		"RigRN.placeHolderList[362]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateX" 
		"RigRN.placeHolderList[363]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateY" 
		"RigRN.placeHolderList[364]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateZ" 
		"RigRN.placeHolderList[365]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl.rotateX" 
		"RigRN.placeHolderList[366]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl.rotateX" 
		"RigRN.placeHolderList[367]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateX" 
		"RigRN.placeHolderList[368]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateY" 
		"RigRN.placeHolderList[369]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateZ" 
		"RigRN.placeHolderList[370]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl.rotateX" 
		"RigRN.placeHolderList[371]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl.rotateX" 
		"RigRN.placeHolderList[372]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateX" 
		"RigRN.placeHolderList[373]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateY" 
		"RigRN.placeHolderList[374]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateZ" 
		"RigRN.placeHolderList[375]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl.rotateX" 
		"RigRN.placeHolderList[376]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl.rotateX" 
		"RigRN.placeHolderList[377]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateX" 
		"RigRN.placeHolderList[378]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateY" 
		"RigRN.placeHolderList[379]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateZ" 
		"RigRN.placeHolderList[380]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl.rotateX" 
		"RigRN.placeHolderList[381]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl.rotateX" 
		"RigRN.placeHolderList[382]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateX" 
		"RigRN.placeHolderList[383]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateY" 
		"RigRN.placeHolderList[384]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateZ" 
		"RigRN.placeHolderList[385]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl.rotateX" 
		"RigRN.placeHolderList[386]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl.rotateX" 
		"RigRN.placeHolderList[387]" ""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateX" "RigRN.placeHolderList[388]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateY" "RigRN.placeHolderList[389]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateZ" "RigRN.placeHolderList[390]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateX" "RigRN.placeHolderList[391]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateY" "RigRN.placeHolderList[392]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateZ" "RigRN.placeHolderList[393]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateX" "RigRN.placeHolderList[394]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateY" "RigRN.placeHolderList[395]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateZ" "RigRN.placeHolderList[396]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.heelRock" "RigRN.placeHolderList[397]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleLift" "RigRN.placeHolderList[398]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.toeLift" "RigRN.placeHolderList[399]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleBank" "RigRN.placeHolderList[400]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockR" "RigRN.placeHolderList[401]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockL" "RigRN.placeHolderList[402]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ballPivot" "RigRN.placeHolderList[403]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateX" 
		"RigRN.placeHolderList[404]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateY" 
		"RigRN.placeHolderList[405]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateZ" 
		"RigRN.placeHolderList[406]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateX" 
		"RigRN.placeHolderList[407]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateY" 
		"RigRN.placeHolderList[408]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateZ" 
		"RigRN.placeHolderList[409]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.aim" 
		"RigRN.placeHolderList[410]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.lock" 
		"RigRN.placeHolderList[411]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.weaponParent" 
		"RigRN.placeHolderList[412]" ""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateX" "RigRN.placeHolderList[413]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateY" "RigRN.placeHolderList[414]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateZ" "RigRN.placeHolderList[415]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateX" 
		"RigRN.placeHolderList[416]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateY" 
		"RigRN.placeHolderList[417]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateZ" 
		"RigRN.placeHolderList[418]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_thumb_0_RControlRoll" 
		"RigRN.placeHolderList[419]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_index_0_RControlRoll" 
		"RigRN.placeHolderList[420]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_middle_0_RControlRoll" 
		"RigRN.placeHolderList[421]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_ring_0_RControlRoll" 
		"RigRN.placeHolderList[422]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_pinky_0_RControlRoll" 
		"RigRN.placeHolderList[423]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.visibility" 
		"RigRN.placeHolderList[424]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:rHandControlShape.visibility" 
		"RigRN.placeHolderList[425]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateX" 
		"RigRN.placeHolderList[426]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateY" 
		"RigRN.placeHolderList[427]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateZ" 
		"RigRN.placeHolderList[428]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl.rotateX" 
		"RigRN.placeHolderList[429]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl.rotateX" 
		"RigRN.placeHolderList[430]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateX" 
		"RigRN.placeHolderList[431]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateY" 
		"RigRN.placeHolderList[432]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateZ" 
		"RigRN.placeHolderList[433]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl.rotateX" 
		"RigRN.placeHolderList[434]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl.rotateX" 
		"RigRN.placeHolderList[435]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateX" 
		"RigRN.placeHolderList[436]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateY" 
		"RigRN.placeHolderList[437]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateZ" 
		"RigRN.placeHolderList[438]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl.rotateX" 
		"RigRN.placeHolderList[439]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl.rotateX" 
		"RigRN.placeHolderList[440]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateX" 
		"RigRN.placeHolderList[441]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateY" 
		"RigRN.placeHolderList[442]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateZ" 
		"RigRN.placeHolderList[443]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl.rotateX" 
		"RigRN.placeHolderList[444]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl.rotateX" 
		"RigRN.placeHolderList[445]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateX" 
		"RigRN.placeHolderList[446]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateY" 
		"RigRN.placeHolderList[447]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateZ" 
		"RigRN.placeHolderList[448]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl.rotateX" 
		"RigRN.placeHolderList[449]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl.rotateX" 
		"RigRN.placeHolderList[450]" ""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateX" "RigRN.placeHolderList[451]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateY" "RigRN.placeHolderList[452]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateZ" "RigRN.placeHolderList[453]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateX" "RigRN.placeHolderList[454]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateY" "RigRN.placeHolderList[455]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateZ" "RigRN.placeHolderList[456]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateX" "RigRN.placeHolderList[457]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateY" "RigRN.placeHolderList[458]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateZ" "RigRN.placeHolderList[459]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.heelRock" "RigRN.placeHolderList[460]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleLift" "RigRN.placeHolderList[461]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.toeLift" "RigRN.placeHolderList[462]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleBank" "RigRN.placeHolderList[463]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockR" "RigRN.placeHolderList[464]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockL" "RigRN.placeHolderList[465]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ballPivot" "RigRN.placeHolderList[466]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateX" 
		"RigRN.placeHolderList[467]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateY" 
		"RigRN.placeHolderList[468]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateZ" 
		"RigRN.placeHolderList[469]" "";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 40 -ast 0 -aet 44 ";
	setAttr ".st" 6;
createNode animCurveTU -n "Rig:main_visibility";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:mainShape_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Rig:main_translateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:main_translateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:main_translateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:main_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:main_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:main_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_rArmIKFK";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:main_lArmIKFK";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_rLegIKFK";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_lLegIKFK";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:main_spineIKFK";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:UpperbodyControl_translateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:UpperbodyControl_translateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -3.8669193184787067;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:UpperbodyControl_translateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -0.020042958956953516;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1.120658844362064;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 13.97308123076923;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0.58274134556295043;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:PelvisControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -0.2883064682;
	setAttr ".kix[0]"  0.099201381206512451;
	setAttr ".kiy[0]"  0.0066041252575814724;
	setAttr ".kox[0]"  0.099201381206512451;
	setAttr ".koy[0]"  0.0066041275858879089;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:PelvisControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -12.709665340000001;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:PelvisControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -1.2462933389999999;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 5.712212909444899;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 6.337477075138251;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -1.1582736483878875;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:Ref:bip_spine_0FKcontrol_stretchSpine";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 19.352349545090924;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -1.7067878351927008;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -1.2393883465698108;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -0.46786152229994954;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -6.7316461574002071;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -2.8143885895170975;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 3.8057986811883651;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -1.5950213765384635;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 2.5435904530000002;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:ikChest_translateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:ikChest_translateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:ikChest_translateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:ikChest_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:ikChest_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:ikChest_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_knee_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_knee_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lShoulderControl_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 4.4257549724736229;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lShoulderControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0.16662473097416114;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lShoulderControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 12.099342149587105;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rShoulderControl_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -14.002826813231993;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rShoulderControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 3.1090858422535832;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rShoulderControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -2.7506922291456517;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:neckControl_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 20.308043106131212;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:neckControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -17.522553222802571;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:neckControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -1.0005594504906017;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:neckControl_lock";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:headControl_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 12.331735040364457;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:headControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 2.1653932306011292;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:headControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -2.1063511367555563;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:headControl_lock";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:Ref:prp_cigControl_translateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1.0819373409999999;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_cigControl_translateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 74.754624199999995;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_cigControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 2.4876542009999998;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_cigControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_cigControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_cigControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:lElbowControl_translateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -4.1126810901767978;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lElbowControl_translateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 3.0737739651683667;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lElbowControl_translateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -38.87749223249763;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControlShape_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Rig:lHandControl_rotateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -12.270238385905877;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lHandControl_rotateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -30.629050418662125;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lHandControl_rotateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -6.9783949689847669;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_thumb_0_LControlRoll";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 12.9;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_index_0_LControlRoll";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 58;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_middle_0_LControlRoll";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 58;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_ring_0_LControlRoll";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 58;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lHandControl_bip_pinky_0_LControlRoll";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 58;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -17.286761210000002;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 4.6368781849999996;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -13.13497218;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -6.6592443970000001;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 47.041100849999999;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0.074244170060000003;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 4.351481358;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -4.5259978710000004;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -2.006379806;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 16.670815579999999;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -14.453981050000001;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lkneeControl_translateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -3.6899780930000001;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lkneeControl_translateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1.8527880830000001;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lkneeControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 75.000008019999996;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig:lFootControl_translateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -2.0550796290000002;
	setAttr ".kix[0]"  0.058106664568185806;
	setAttr ".kiy[0]"  -1.1762435436248779;
	setAttr ".kox[0]"  0.058106664568185806;
	setAttr ".koy[0]"  -1.1762434244155884;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig:lFootControl_translateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.012014451436698437;
	setAttr ".kiy[0]"  -2.9782693386077881;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig:lFootControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 11.51920153;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.063546828925609589;
	setAttr ".koy[0]"  2.3163807392120361;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig:lFootControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig:lFootControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 15.096004760000001;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig:lFootControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.011591597460210323;
	setAttr ".kiy[0]"  0.05200691893696785;
	setAttr ".kox[0]"  0.011591588146984577;
	setAttr ".koy[0]"  0.052006922662258148;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTU -n "Rig:lFootControl_heelRock";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTU -n "Rig:lFootControl_ankleLift";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTU -n "Rig:lFootControl_toeLift";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTU -n "Rig:lFootControl_ankleBank";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTU -n "Rig:lFootControl_rockL";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTU -n "Rig:lFootControl_rockR";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTU -n "Rig:lFootControl_ballPivot";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig:lToeControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -4.9255672610000003;
	setAttr ".kix[0]"  0.012939349748194218;
	setAttr ".kiy[0]"  0.051919706165790558;
	setAttr ".kox[0]"  0.012939352542161942;
	setAttr ".koy[0]"  0.051919706165790558;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lToeControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lToeControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rElbowControl_translateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -6.2865016913971106;
	setAttr ".kix[0]"  0.29999998211860657;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.29999998211860657;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rElbowControl_translateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -18.890935460000001;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rElbowControl_translateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -38.69835455999997;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTU -n "Rig:rHandControl_visibility";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControlShape_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Rig:rHandControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -114.96802444466935;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rHandControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 56.27121906748517;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rHandControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 19.79527463190092;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_thumb_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_index_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -1.5;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_middle_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 20.1;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_ring_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 19.9;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_pinky_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 36;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -9.3174666500000001;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -56.927854879999998;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -17.609978430000002;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 28.85440084;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 37.176191030000005;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -6.8645189520000001;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_index_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 17.675145059999998;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -8.9774861870000002;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 6.0944095340000004;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 46.904019750000003;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 21.64870874;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 15.345112480000001;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 34.386057129999998;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 22.608451290000001;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 13.31897779;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -8.3375187719999992;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 29.532643;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 31.700526589999999;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rkneeControl_translateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -15.406491770000001;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rkneeControl_translateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rkneeControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 35.518624900346161;
	setAttr ".kix[0]"  0.039630793035030365;
	setAttr ".kiy[0]"  2.7543530464172363;
	setAttr ".kox[0]"  0.03963080421090126;
	setAttr ".koy[0]"  2.7543528079986572;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig:rFootControl_translateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -0.21459679640000001;
	setAttr ".kix[0]"  0.064120158553123474;
	setAttr ".kiy[0]"  -1.0129314661026001;
	setAttr ".kox[0]"  0.064120158553123474;
	setAttr ".koy[0]"  -1.0129314661026001;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rFootControl_translateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.00049999996554106474;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.00049999996554106474;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rFootControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -4.994303285;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.007016932126134634;
	setAttr ".koy[0]"  2.9926052093505859;
	setAttr ".pre" 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig:rFootControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rFootControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 -42.823752730000002;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rFootControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_heelRock";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ankleLift";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_toeLift";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ankleBank";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_rockL";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_rockR";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ballPivot";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rToeControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rToeControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rToeControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0.10000000149011612;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0.10000000149011612;
	setAttr ".koy[0]"  0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:likHandControl_translateY";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 3.4589507989742199;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:likHandControl_translateZ";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -7.7563128690250576;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:likHandControl_translateX";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 -5.5896987280956507;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rikHandControl_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.88674581715009992;
createNode animCurveTL -n "Rig:rikHandControl_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.4423148763537244;
createNode animCurveTL -n "Rig:rikHandControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.2575389385934042;
createNode animCurveTU -n "Rig:rikHandControl_lock";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rikHandControl_aim";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rikHandControl_weaponParent";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:likHandControl_lock";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:likHandControl_aim";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
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
	setAttr -s 9 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 83 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 2 ".gn";
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
	setAttr -s 8 ".s";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".tx";
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
	setAttr -s 6 ".u";
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
connectAttr "Rig:Ref:weapon_bone_pointConstraint1.ctx" "RigRN.phl[239]";
connectAttr "Rig:Ref:weapon_bone_pointConstraint1.cty" "RigRN.phl[240]";
connectAttr "Rig:Ref:weapon_bone_pointConstraint1.ctz" "RigRN.phl[241]";
connectAttr "RigRN.phl[242]" "Rig:Ref:weapon_bone_orientConstraint1.cpim";
connectAttr "RigRN.phl[243]" "Rig:Ref:weapon_bone_pointConstraint1.cpim";
connectAttr "RigRN.phl[244]" "Rig:Ref:weapon_bone_pointConstraint1.crp";
connectAttr "RigRN.phl[245]" "Rig:Ref:weapon_bone_pointConstraint1.crt";
connectAttr "Rig:Ref:weapon_bone_orientConstraint1.crx" "RigRN.phl[246]";
connectAttr "Rig:Ref:weapon_bone_orientConstraint1.cry" "RigRN.phl[247]";
connectAttr "Rig:Ref:weapon_bone_orientConstraint1.crz" "RigRN.phl[248]";
connectAttr "RigRN.phl[249]" "Rig:Ref:weapon_bone_orientConstraint1.cro";
connectAttr "Rig:main_spineIKFK.o" "RigRN.phl[250]";
connectAttr "Rig:main_lArmIKFK.o" "RigRN.phl[251]";
connectAttr "Rig:main_rArmIKFK.o" "RigRN.phl[252]";
connectAttr "Rig:main_rLegIKFK.o" "RigRN.phl[253]";
connectAttr "Rig:main_lLegIKFK.o" "RigRN.phl[254]";
connectAttr "Rig:main_visibility.o" "RigRN.phl[255]";
connectAttr "Rig:main_translateX.o" "RigRN.phl[256]";
connectAttr "Rig:main_translateY.o" "RigRN.phl[257]";
connectAttr "Rig:main_translateZ.o" "RigRN.phl[258]";
connectAttr "Rig:main_rotateX.o" "RigRN.phl[259]";
connectAttr "Rig:main_rotateY.o" "RigRN.phl[260]";
connectAttr "Rig:main_rotateZ.o" "RigRN.phl[261]";
connectAttr "Rig:mainShape_visibility.o" "RigRN.phl[262]";
connectAttr "Rig:UpperbodyControl_translateX.o" "RigRN.phl[263]";
connectAttr "Rig:UpperbodyControl_translateY.o" "RigRN.phl[264]";
connectAttr "Rig:UpperbodyControl_translateZ.o" "RigRN.phl[265]";
connectAttr "Rig:UpperbodyControl_rotateX.o" "RigRN.phl[266]";
connectAttr "Rig:UpperbodyControl_rotateY.o" "RigRN.phl[267]";
connectAttr "Rig:UpperbodyControl_rotateZ.o" "RigRN.phl[268]";
connectAttr "Rig:PelvisControl_rotateX.o" "RigRN.phl[269]";
connectAttr "Rig:PelvisControl_rotateY.o" "RigRN.phl[270]";
connectAttr "Rig:PelvisControl_rotateZ.o" "RigRN.phl[271]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_stretchSpine.o" "RigRN.phl[272]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateX.o" "RigRN.phl[273]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateY.o" "RigRN.phl[274]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateZ.o" "RigRN.phl[275]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateX.o" "RigRN.phl[276]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateY.o" "RigRN.phl[277]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateZ.o" "RigRN.phl[278]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateX.o" "RigRN.phl[279]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateY.o" "RigRN.phl[280]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateZ.o" "RigRN.phl[281]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateX.o" "RigRN.phl[282]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateY.o" "RigRN.phl[283]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateZ.o" "RigRN.phl[284]";
connectAttr "Rig:ikChest_rotateY.o" "RigRN.phl[285]";
connectAttr "Rig:ikChest_rotateX.o" "RigRN.phl[286]";
connectAttr "Rig:ikChest_rotateZ.o" "RigRN.phl[287]";
connectAttr "Rig:ikChest_translateX.o" "RigRN.phl[288]";
connectAttr "Rig:ikChest_translateY.o" "RigRN.phl[289]";
connectAttr "Rig:ikChest_translateZ.o" "RigRN.phl[290]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateX.o" "RigRN.phl[291]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateY.o" "RigRN.phl[292]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateZ.o" "RigRN.phl[293]";
connectAttr "Rig:Ref:bip_knee_LFK_rotateX.o" "RigRN.phl[294]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateX.o" "RigRN.phl[295]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateY.o" "RigRN.phl[296]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateZ.o" "RigRN.phl[297]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateX.o" "RigRN.phl[298]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateY.o" "RigRN.phl[299]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateZ.o" "RigRN.phl[300]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateX.o" "RigRN.phl[301]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateY.o" "RigRN.phl[302]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateZ.o" "RigRN.phl[303]";
connectAttr "Rig:Ref:bip_knee_RFK_rotateX.o" "RigRN.phl[304]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateX.o" "RigRN.phl[305]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateY.o" "RigRN.phl[306]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateZ.o" "RigRN.phl[307]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateX.o" "RigRN.phl[308]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateY.o" "RigRN.phl[309]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateZ.o" "RigRN.phl[310]";
connectAttr "Rig:lShoulderControl_rotateX.o" "RigRN.phl[311]";
connectAttr "Rig:lShoulderControl_rotateY.o" "RigRN.phl[312]";
connectAttr "Rig:lShoulderControl_rotateZ.o" "RigRN.phl[313]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateX.o" "RigRN.phl[314]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateY.o" "RigRN.phl[315]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateZ.o" "RigRN.phl[316]";
connectAttr "Rig:Ref:bip_lowerArm_LFK_rotateX.o" "RigRN.phl[317]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateX.o" "RigRN.phl[318]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateY.o" "RigRN.phl[319]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateZ.o" "RigRN.phl[320]";
connectAttr "Rig:rShoulderControl_rotateX.o" "RigRN.phl[321]";
connectAttr "Rig:rShoulderControl_rotateY.o" "RigRN.phl[322]";
connectAttr "Rig:rShoulderControl_rotateZ.o" "RigRN.phl[323]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateX.o" "RigRN.phl[324]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateY.o" "RigRN.phl[325]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateZ.o" "RigRN.phl[326]";
connectAttr "Rig:Ref:bip_lowerArm_RFK_rotateX.o" "RigRN.phl[327]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateX.o" "RigRN.phl[328]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateY.o" "RigRN.phl[329]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateZ.o" "RigRN.phl[330]";
connectAttr "Rig:neckControl_rotateX.o" "RigRN.phl[331]";
connectAttr "Rig:neckControl_rotateY.o" "RigRN.phl[332]";
connectAttr "Rig:neckControl_rotateZ.o" "RigRN.phl[333]";
connectAttr "Rig:neckControl_lock.o" "RigRN.phl[334]";
connectAttr "Rig:headControl_rotateX.o" "RigRN.phl[335]";
connectAttr "Rig:headControl_rotateY.o" "RigRN.phl[336]";
connectAttr "Rig:headControl_rotateZ.o" "RigRN.phl[337]";
connectAttr "Rig:headControl_lock.o" "RigRN.phl[338]";
connectAttr "Rig:Ref:prp_cigControl_translateX.o" "RigRN.phl[339]";
connectAttr "Rig:Ref:prp_cigControl_translateY.o" "RigRN.phl[340]";
connectAttr "Rig:Ref:prp_cigControl_translateZ.o" "RigRN.phl[341]";
connectAttr "Rig:Ref:prp_cigControl_rotateX.o" "RigRN.phl[342]";
connectAttr "Rig:Ref:prp_cigControl_rotateY.o" "RigRN.phl[343]";
connectAttr "Rig:Ref:prp_cigControl_rotateZ.o" "RigRN.phl[344]";
connectAttr "Rig:likHandControl_translateX.o" "RigRN.phl[345]";
connectAttr "Rig:likHandControl_translateY.o" "RigRN.phl[346]";
connectAttr "Rig:likHandControl_translateZ.o" "RigRN.phl[347]";
connectAttr "Rig:likHandControl_aim.o" "RigRN.phl[348]";
connectAttr "Rig:likHandControl_lock.o" "RigRN.phl[349]";
connectAttr "Rig:lElbowControl_translateX.o" "RigRN.phl[350]";
connectAttr "Rig:lElbowControl_translateY.o" "RigRN.phl[351]";
connectAttr "Rig:lElbowControl_translateZ.o" "RigRN.phl[352]";
connectAttr "Rig:lHandControl_rotateX.o" "RigRN.phl[353]";
connectAttr "Rig:lHandControl_rotateY.o" "RigRN.phl[354]";
connectAttr "Rig:lHandControl_rotateZ.o" "RigRN.phl[355]";
connectAttr "Rig:lHandControl_bip_thumb_0_LControlRoll.o" "RigRN.phl[356]";
connectAttr "Rig:lHandControl_bip_index_0_LControlRoll.o" "RigRN.phl[357]";
connectAttr "Rig:lHandControl_bip_middle_0_LControlRoll.o" "RigRN.phl[358]";
connectAttr "Rig:lHandControl_bip_ring_0_LControlRoll.o" "RigRN.phl[359]";
connectAttr "Rig:lHandControl_bip_pinky_0_LControlRoll.o" "RigRN.phl[360]";
connectAttr "Rig:lHandControl_visibility.o" "RigRN.phl[361]";
connectAttr "Rig:lHandControlShape_visibility.o" "RigRN.phl[362]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateX.o" "RigRN.phl[363]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateY.o" "RigRN.phl[364]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateZ.o" "RigRN.phl[365]";
connectAttr "Rig:Ref:bip_thumb_1_LControl_rotateX.o" "RigRN.phl[366]";
connectAttr "Rig:Ref:bip_thumb_2_LControl_rotateX.o" "RigRN.phl[367]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateX.o" "RigRN.phl[368]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateY.o" "RigRN.phl[369]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateZ.o" "RigRN.phl[370]";
connectAttr "Rig:Ref:bip_index_1_LControl_rotateX.o" "RigRN.phl[371]";
connectAttr "Rig:Ref:bip_index_2_LControl_rotateX.o" "RigRN.phl[372]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateX.o" "RigRN.phl[373]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateY.o" "RigRN.phl[374]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateZ.o" "RigRN.phl[375]";
connectAttr "Rig:Ref:bip_middle_1_LControl_rotateX.o" "RigRN.phl[376]";
connectAttr "Rig:Ref:bip_middle_2_LControl_rotateX.o" "RigRN.phl[377]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateX.o" "RigRN.phl[378]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateY.o" "RigRN.phl[379]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateZ.o" "RigRN.phl[380]";
connectAttr "Rig:Ref:bip_ring_1_LControl_rotateX.o" "RigRN.phl[381]";
connectAttr "Rig:Ref:bip_ring_2_LControl_rotateX.o" "RigRN.phl[382]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateX.o" "RigRN.phl[383]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateY.o" "RigRN.phl[384]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateZ.o" "RigRN.phl[385]";
connectAttr "Rig:Ref:bip_pinky_1_LControl_rotateX.o" "RigRN.phl[386]";
connectAttr "Rig:Ref:bip_pinky_2_LControl_rotateX.o" "RigRN.phl[387]";
connectAttr "Rig:lkneeControl_translateX.o" "RigRN.phl[388]";
connectAttr "Rig:lkneeControl_translateY.o" "RigRN.phl[389]";
connectAttr "Rig:lkneeControl_translateZ.o" "RigRN.phl[390]";
connectAttr "Rig:lFootControl_translateX.o" "RigRN.phl[391]";
connectAttr "Rig:lFootControl_translateY.o" "RigRN.phl[392]";
connectAttr "Rig:lFootControl_translateZ.o" "RigRN.phl[393]";
connectAttr "Rig:lFootControl_rotateX.o" "RigRN.phl[394]";
connectAttr "Rig:lFootControl_rotateY.o" "RigRN.phl[395]";
connectAttr "Rig:lFootControl_rotateZ.o" "RigRN.phl[396]";
connectAttr "Rig:lFootControl_heelRock.o" "RigRN.phl[397]";
connectAttr "Rig:lFootControl_ankleLift.o" "RigRN.phl[398]";
connectAttr "Rig:lFootControl_toeLift.o" "RigRN.phl[399]";
connectAttr "Rig:lFootControl_ankleBank.o" "RigRN.phl[400]";
connectAttr "Rig:lFootControl_rockR.o" "RigRN.phl[401]";
connectAttr "Rig:lFootControl_rockL.o" "RigRN.phl[402]";
connectAttr "Rig:lFootControl_ballPivot.o" "RigRN.phl[403]";
connectAttr "Rig:lToeControl_rotateX.o" "RigRN.phl[404]";
connectAttr "Rig:lToeControl_rotateY.o" "RigRN.phl[405]";
connectAttr "Rig:lToeControl_rotateZ.o" "RigRN.phl[406]";
connectAttr "Rig:rikHandControl_translateX.o" "RigRN.phl[407]";
connectAttr "Rig:rikHandControl_translateY.o" "RigRN.phl[408]";
connectAttr "Rig:rikHandControl_translateZ.o" "RigRN.phl[409]";
connectAttr "Rig:rikHandControl_aim.o" "RigRN.phl[410]";
connectAttr "Rig:rikHandControl_lock.o" "RigRN.phl[411]";
connectAttr "Rig:rikHandControl_weaponParent.o" "RigRN.phl[412]";
connectAttr "Rig:rElbowControl_translateX.o" "RigRN.phl[413]";
connectAttr "Rig:rElbowControl_translateY.o" "RigRN.phl[414]";
connectAttr "Rig:rElbowControl_translateZ.o" "RigRN.phl[415]";
connectAttr "Rig:rHandControl_rotateX.o" "RigRN.phl[416]";
connectAttr "Rig:rHandControl_rotateY.o" "RigRN.phl[417]";
connectAttr "Rig:rHandControl_rotateZ.o" "RigRN.phl[418]";
connectAttr "Rig:rHandControl_bip_thumb_0_RControlRoll.o" "RigRN.phl[419]";
connectAttr "Rig:rHandControl_bip_index_0_RControlRoll.o" "RigRN.phl[420]";
connectAttr "Rig:rHandControl_bip_middle_0_RControlRoll.o" "RigRN.phl[421]";
connectAttr "Rig:rHandControl_bip_ring_0_RControlRoll.o" "RigRN.phl[422]";
connectAttr "Rig:rHandControl_bip_pinky_0_RControlRoll.o" "RigRN.phl[423]";
connectAttr "Rig:rHandControl_visibility.o" "RigRN.phl[424]";
connectAttr "Rig:rHandControlShape_visibility.o" "RigRN.phl[425]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateX.o" "RigRN.phl[426]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateY.o" "RigRN.phl[427]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateZ.o" "RigRN.phl[428]";
connectAttr "Rig:Ref:bip_thumb_1_RControl_rotateX.o" "RigRN.phl[429]";
connectAttr "Rig:Ref:bip_thumb_2_RControl_rotateX.o" "RigRN.phl[430]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateX.o" "RigRN.phl[431]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateY.o" "RigRN.phl[432]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateZ.o" "RigRN.phl[433]";
connectAttr "Rig:Ref:bip_index_1_RControl_rotateX.o" "RigRN.phl[434]";
connectAttr "Rig:Ref:bip_index_2_RControl_rotateX.o" "RigRN.phl[435]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateX.o" "RigRN.phl[436]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateY.o" "RigRN.phl[437]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateZ.o" "RigRN.phl[438]";
connectAttr "Rig:Ref:bip_middle_1_RControl_rotateX.o" "RigRN.phl[439]";
connectAttr "Rig:Ref:bip_middle_2_RControl_rotateX.o" "RigRN.phl[440]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateX.o" "RigRN.phl[441]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateY.o" "RigRN.phl[442]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateZ.o" "RigRN.phl[443]";
connectAttr "Rig:Ref:bip_ring_1_RControl_rotateX.o" "RigRN.phl[444]";
connectAttr "Rig:Ref:bip_ring_2_RControl_rotateX.o" "RigRN.phl[445]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateX.o" "RigRN.phl[446]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateY.o" "RigRN.phl[447]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateZ.o" "RigRN.phl[448]";
connectAttr "Rig:Ref:bip_pinky_1_RControl_rotateX.o" "RigRN.phl[449]";
connectAttr "Rig:Ref:bip_pinky_2_RControl_rotateX.o" "RigRN.phl[450]";
connectAttr "Rig:rkneeControl_translateX.o" "RigRN.phl[451]";
connectAttr "Rig:rkneeControl_translateY.o" "RigRN.phl[452]";
connectAttr "Rig:rkneeControl_translateZ.o" "RigRN.phl[453]";
connectAttr "Rig:rFootControl_translateX.o" "RigRN.phl[454]";
connectAttr "Rig:rFootControl_translateY.o" "RigRN.phl[455]";
connectAttr "Rig:rFootControl_translateZ.o" "RigRN.phl[456]";
connectAttr "Rig:rFootControl_rotateX.o" "RigRN.phl[457]";
connectAttr "Rig:rFootControl_rotateY.o" "RigRN.phl[458]";
connectAttr "Rig:rFootControl_rotateZ.o" "RigRN.phl[459]";
connectAttr "Rig:rFootControl_heelRock.o" "RigRN.phl[460]";
connectAttr "Rig:rFootControl_ankleLift.o" "RigRN.phl[461]";
connectAttr "Rig:rFootControl_toeLift.o" "RigRN.phl[462]";
connectAttr "Rig:rFootControl_ankleBank.o" "RigRN.phl[463]";
connectAttr "Rig:rFootControl_rockR.o" "RigRN.phl[464]";
connectAttr "Rig:rFootControl_rockL.o" "RigRN.phl[465]";
connectAttr "Rig:rFootControl_ballPivot.o" "RigRN.phl[466]";
connectAttr "Rig:rToeControl_rotateX.o" "RigRN.phl[467]";
connectAttr "Rig:rToeControl_rotateY.o" "RigRN.phl[468]";
connectAttr "Rig:rToeControl_rotateZ.o" "RigRN.phl[469]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RigRNfosterParent1.msg" "RigRN.fp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of center_pose.ma
