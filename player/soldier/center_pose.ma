//Maya ASCII 2012 scene
//Name: center_pose.ma
//Last modified: Wed, Mar 11, 2015 12:09:15 PM
//Codeset: 1252
file -rdi 1 -ns "Rig" -rfn "RigRN" "soldier_rig.ma";
file -rdi 2 -ns "Ref" -rfn "Rig:RefRN" "soldier_reference.ma";
file -r -ns "Rig" -dr 1 -rfn "RigRN" "soldier_rig.ma";
requires maya "2012";
requires "Mayatomr" "2012.0m - 3.9.1.47 ";
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
	setAttr ".t" -type "double3" -188.84706178179476 26.208286661783077 38.939363451842858 ;
	setAttr ".r" -type "double3" -4.5383527309457339 -81.800000000108298 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 195.73172389591102;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 10.68662335043434 4.9906673226466296 14.190389901545128 ;
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
	setAttr ".t" -type "double3" 0 0 1500.0999999999999 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1500.0999999999999 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
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
	setAttr ".rst" -type "double3" 1.5577892683227077 7.0480202716833835 -3.1912341613299842 ;
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
	setAttr ".lr" -type "double3" -76.903053452525384 7.8681226965223789 37.443928355561631 ;
	setAttr ".rsrr" -type "double3" -77.654559148070817 5.6827733033642192 40.402910904489126 ;
createNode transform -n "shoulderPointConstraint" -p "RigRNfosterParent1";
	setAttr ".t" -type "double3" -3.109254 8.960953 2.619694 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -9.7699626167013776e-015 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -9.7699626167013776e-015 -1.7763568394002505e-015 ;
createNode locator -n "shoulderPointConstraintShape" -p "shoulderPointConstraint";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 1.7763568394002505e-015 -1.1546319456101628e-014 8.8817841970012523e-016 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 17 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RigRN";
	setAttr -s 287 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"RigRN"
		"Rig:RefRN" 2
		2 "|Rig:Ref:soldierInfo" "exportName" " -k 1 -type \"string\" \"%VCONTENT%/tf/models/player/soldier/animations/dmx/primary_runCenter.dmx\""
		
		2 "|Rig:Ref:soldierInfo" "exportType" " 1"
		"Rig:Ref:HeadRN" 0
		"RigRN" 0
		"Rig:RefRN" 354
		0 "|RigRNfosterParent1|Rig:Ref:weapon_bone_orientConstraint1" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"-s -r "
		0 "|RigRNfosterParent1|Rig:Ref:weapon_bone_pointConstraint1" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"-s -r "
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "translate" 
		" -type \"double3\" -0.0879245 -7.631194 -0.782383"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "translateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "translateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "translateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "rotate" 
		" -type \"double3\" 27.917141 -3.989358 -1.641719"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "rotateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "rotateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0" "rotateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"translate" " -type \"double3\" 0 -4.790933 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"rotate" " -type \"double3\" 13.234164 2.359655 0.919457"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"translate" " -type \"double3\" 0 -5.565575 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"rotate" " -type \"double3\" 10.265102 1.736075 -1.790697"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"translate" " -type \"double3\" 0 -6.472758 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"rotate" " -type \"double3\" -3.908241 2.974605 -1.178574"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck" 
		"rotateX" " -av -13.053538"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck" 
		"rotateY" " -av -2.051393"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck" 
		"rotateZ" " -av 7.062407"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head" 
		"rotateX" " -av -30.950326"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head" 
		"rotateY" " -av -0.909908"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head" 
		"rotateZ" " -av -1.60876"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head|Rig:Ref:prp_helmet" 
		"translate" " -type \"double3\" -0.458765 -5.36619 -0.53522"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head|Rig:Ref:prp_helmet" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head|Rig:Ref:prp_helmet" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head|Rig:Ref:prp_helmet" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head|Rig:Ref:prp_helmet" 
		"rotate" " -type \"double3\" 0 0 6.12"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_neck|Rig:Ref:bip_head|Rig:Ref:prp_helmet" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L" 
		"rotateX" " -av -25.538208"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L" 
		"rotateY" " -av 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L" 
		"rotateZ" " -av 15.982797"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L" 
		"rotateX" " -av -21.244341"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L" 
		"rotateX" " -av 13.543199"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L" 
		"rotateY" " -av 24.702842"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L" 
		"rotateZ" " -av 4.341556"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L" 
		"translate" " -type \"double3\" -1.604509 -3.299336 3.457884"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L" 
		"rotate" " -type \"double3\" 15.075886 -23.586019 -34.316148"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L" 
		"translate" " -type \"double3\" 0 -2.446849 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L" 
		"rotate" " -type \"double3\" 1.070597 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:bip_thumb_2_L" 
		"translate" " -type \"double3\" 0 -1.546305 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:bip_thumb_2_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:bip_thumb_2_L" 
		"rotate" " -type \"double3\" 84.834854 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_thumb_0_L|Rig:Ref:bip_thumb_1_L|Rig:Ref:bip_thumb_2_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L" 
		"translate" " -type \"double3\" 0.657029 -6.745141 4.10573"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L" 
		"rotate" " -type \"double3\" 13.80144 -11.578084 10.383488"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L" 
		"translate" " -type \"double3\" 0 -2.405657 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L" 
		"rotate" " -type \"double3\" 43.08445 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L|Rig:Ref:bip_index_2_L" 
		"translate" " -type \"double3\" 0 -1.633955 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L|Rig:Ref:bip_index_2_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L|Rig:Ref:bip_index_2_L" 
		"rotate" " -type \"double3\" 8.654884 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_index_0_L|Rig:Ref:bip_index_1_L|Rig:Ref:bip_index_2_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L" 
		"translate" " -type \"double3\" 0.36281 -7.317844 1.928731"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L" 
		"rotate" " -type \"double3\" 41.961899 -8.936487 3.545626"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L" 
		"translate" " -type \"double3\" 0 -2.651718 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L" 
		"rotate" " -type \"double3\" 29.952508 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:bip_middle_2_L" 
		"translate" " -type \"double3\" 0 -2.231073 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:bip_middle_2_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:bip_middle_2_L" 
		"rotate" " -type \"double3\" -4.247961 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_middle_0_L|Rig:Ref:bip_middle_1_L|Rig:Ref:bip_middle_2_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L" 
		"translate" " -type \"double3\" -0.0277449 -7.288503 -0.139499"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L" 
		"rotate" " -type \"double3\" 46.895857 -4.106805 1.370343"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L" 
		"translate" " -type \"double3\" 0 -2.369031 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L" 
		"rotate" " -type \"double3\" 22.932952 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:bip_ring_2_L" 
		"translate" " -type \"double3\" 0 -1.636527 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:bip_ring_2_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:bip_ring_2_L" 
		"rotate" " -type \"double3\" 0.787389 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_ring_0_L|Rig:Ref:bip_ring_1_L|Rig:Ref:bip_ring_2_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L" 
		"translate" " -type \"double3\" -0.506013 -7.080648 -1.742908"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L" 
		"rotate" " -type \"double3\" 35.662397 1.481887 -4.295642"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L" 
		"translate" " -type \"double3\" 0 -1.968757 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L" 
		"rotate" " -type \"double3\" 32.329594 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:bip_pinky_2_L" 
		"translate" " -type \"double3\" 0 -1.322314 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:bip_pinky_2_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:bip_pinky_2_L" 
		"rotate" " -type \"double3\" -0.814096 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:bip_pinky_0_L|Rig:Ref:bip_pinky_1_L|Rig:Ref:bip_pinky_2_L" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R" 
		"rotateX" " -av 15.810266"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R" 
		"rotateY" " -av 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R" 
		"rotateZ" " -av 10.334559"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R" 
		"rotateX" " -av -84.563666"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R" 
		"rotateY" " -av -0.000327239"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R" 
		"rotateZ" " -av 3.04429e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R" 
		"rotateX" " -av -1.864648"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R" 
		"rotateY" " -av 46.056398"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R" 
		"rotateZ" " -av -9.144876"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R" 
		"translate" " -type \"double3\" 1.604583 3.299327 -3.457899"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R" 
		"rotate" " -type \"double3\" -3.808152 -26.320871 -14.423595"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"translate" " -type \"double3\" -6.54321e-005 2.446821 -8.55684e-006"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"rotate" " -type \"double3\" -6.666947 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:bip_thumb_2_R" 
		"translate" " -type \"double3\" 4.63332e-005 1.546301 -1.93382e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:bip_thumb_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:bip_thumb_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:bip_thumb_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:bip_thumb_2_R" 
		"rotate" " -type \"double3\" 85.714054 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_thumb_0_R|Rig:Ref:bip_thumb_1_R|Rig:Ref:bip_thumb_2_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R" 
		"translate" " -type \"double3\" -0.656988 6.745103 -4.105749"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R" 
		"rotate" " -type \"double3\" -22.89434 0.843538 0.408481"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"translate" " -type \"double3\" -5.05922e-006 2.405675 -3.22795e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"rotate" " -type \"double3\" 25.710835 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"translate" " -type \"double3\" 6.68754e-006 1.633948 5.32215e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"rotate" " -type \"double3\" 51.280124 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_index_0_R|Rig:Ref:bip_index_1_R|Rig:Ref:bip_index_2_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R" 
		"translate" " -type \"double3\" -0.362735 7.317841 -1.928744"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R" 
		"rotate" " -type \"double3\" 17.589358 -2.42841 8.362369"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"translate" " -type \"double3\" 1.21282e-005 2.651696 -3.57031e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"rotate" " -type \"double3\" 46.90402 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"translate" " -type \"double3\" 2.30249e-007 2.231042 -2.29902e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"rotate" " -type \"double3\" 21.996072 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_middle_0_R|Rig:Ref:bip_middle_1_R|Rig:Ref:bip_middle_2_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R" 
		"translate" " -type \"double3\" 0.0277559 7.288547 0.13951"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R" 
		"rotate" " -type \"double3\" 23.013992 -1.176235 5.232124"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"translate" " -type \"double3\" 2.47298e-005 2.368963 5.37252e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"rotate" " -type \"double3\" 19.10983 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"translate" " -type \"double3\" -2.24579e-005 1.636565 -4.37288e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"rotate" " -type \"double3\" 47.866001 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_ring_0_R|Rig:Ref:bip_ring_1_R|Rig:Ref:bip_ring_2_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R" 
		"translate" " -type \"double3\" 0.506048 7.080653 1.742899"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R" 
		"rotate" " -type \"double3\" 8.019782 -1.292594 -7.921846"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"translate" " -type \"double3\" -6.68842e-006 1.968743 2.94368e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"rotate" " -type \"double3\" 29.532643 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"translate" " -type \"double3\" 1.03913e-005 1.322278 -9.4541e-006"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"rotate" " -type \"double3\" 35.458749 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:bip_pinky_0_R|Rig:Ref:bip_pinky_1_R|Rig:Ref:bip_pinky_2_R" 
		"rotateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_L" 
		"translate" " -type \"double3\" 4.169267 -4.539653 -3.588535"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_L" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_L" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_R" 
		"translate" " -type \"double3\" -3.794637 -4.682609 -3.67259"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_back" 
		"translate" " -type \"double3\" 0.018135 -7.561849 4.388219"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_back" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_back" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:prp_coatCollar_back" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_grenade_top" 
		"translate" " -type \"double3\" -2.605288 -1.928132 -9.736345"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_grenade_top" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_grenade_top" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_grenade_top" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_grenade_top" 
		"rotate" " -type \"double3\" 0 -19.624227 -48.210373"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_grenade_top" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_grenade_top" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:prp_grenade_bottom" 
		"translate" " -type \"double3\" 1.286221 -2.232756 -10.676204"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:prp_grenade_bottom" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:prp_grenade_bottom" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:prp_grenade_bottom" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:prp_grenade_bottom" 
		"rotate" " -type \"double3\" 0 -19.624227 -48.210373"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:prp_grenade_bottom" 
		"rotateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:prp_grenade_bottom" 
		"rotateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_L" "rotateX" " -av -54.677825"
		
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_L" "rotateY" " -av 2.359772"
		
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_L" "rotateZ" " -av 2.404901"
		
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_L|Rig:Ref:bip_knee_L" 
		"rotateX" " -av 41.052196"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_L|Rig:Ref:bip_knee_L|Rig:Ref:bip_foot_L" 
		"rotateX" " -av 12.655795"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_L|Rig:Ref:bip_knee_L|Rig:Ref:bip_foot_L" 
		"rotateY" " -av 3.728815"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_L|Rig:Ref:bip_knee_L|Rig:Ref:bip_foot_L" 
		"rotateZ" " -av 3.589414"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R" "rotateX" " -av -28.271471"
		
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R" "rotateY" " -av 8.906781"
		
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R" "rotateZ" " -av 10.677163"
		
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R" 
		"rotateX" " -av 56.493044"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R" 
		"rotateY" " -av 6.52043e-006"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R" 
		"rotateZ" " -av -7.78496e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R|Rig:Ref:bip_foot_R" 
		"rotateX" " -av -26.710477"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R|Rig:Ref:bip_foot_R" 
		"rotateY" " -av 17.072163"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R|Rig:Ref:bip_foot_R" 
		"rotateZ" " -av -7.145188"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R|Rig:Ref:bip_foot_R|Rig:Ref:bip_toe_R" 
		"rotateX" " -av -0.000107178"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R|Rig:Ref:bip_foot_R|Rig:Ref:bip_toe_R" 
		"rotateY" " -av 2.61345e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_hip_R|Rig:Ref:bip_knee_R|Rig:Ref:bip_foot_R|Rig:Ref:bip_toe_R" 
		"rotateZ" " -av -4.63891e-005"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L" "translate" 
		" -type \"double3\" 4.342446 -2.527351 -7.623852"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L" "translateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L" "translateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L" "translateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L" "rotate" 
		" -type \"double3\" -27.662034 5.993406 7.521756"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L" "rotateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L" "rotateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L" "rotateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L|Rig:Ref:prp_coat_front_1_L" 
		"translate" " -type \"double3\" 0 -14.341735 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_L|Rig:Ref:prp_coat_front_1_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_L" "translate" 
		" -type \"double3\" 4.152844 -4.620484 3.068598"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_L" "translateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_L" "translateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_L" "translateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_L" "rotate" 
		" -type \"double3\" 9.218951 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_L" "rotateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_L|Rig:Ref:prp_coat_back_1_L" 
		"translate" " -type \"double3\" 0 -12.891378 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_L|Rig:Ref:prp_coat_back_1_L" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R" "translate" 
		" -type \"double3\" -4.34245 -2.527346 -7.623848"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R" "translateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R" "translateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R" "rotate" 
		" -type \"double3\" -13.25636 -5.683195 1.641916"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R" "rotateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R" "rotateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R" "rotateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R|Rig:Ref:prp_coat_front_1_R" 
		"translate" " -type \"double3\" 4.04158e-006 14.341751 -2.53885e-006"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R|Rig:Ref:prp_coat_front_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R|Rig:Ref:prp_coat_front_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_front_R|Rig:Ref:prp_coat_front_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R" "translate" 
		" -type \"double3\" -4.15284 -4.620451 3.068605"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R" "translateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R" "translateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R" "rotate" 
		" -type \"double3\" 4.970772 0 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R" "rotateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R|Rig:Ref:prp_coat_back_1_R" 
		"translate" " -type \"double3\" 3.18354e-006 12.891367 -6.00532e-006"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R|Rig:Ref:prp_coat_back_1_R" 
		"translateX" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R|Rig:Ref:prp_coat_back_1_R" 
		"translateY" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_coat_back_R|Rig:Ref:prp_coat_back_1_R" 
		"translateZ" " -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_L" "translate" 
		" -type \"double3\" 8.5 -8.300458 -4.307282"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_L" "translateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_L" "translateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_L" "rotate" " -type \"double3\" -10.439302 5.177331 4.650814"
		
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_L" "rotateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_L" "rotateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_L" "rotateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_R" "translate" 
		" -type \"double3\" -8.5 -8.300458 -4.307282"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_R" "translateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_R" "translateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_R" "rotate" " -type \"double3\" -2.628122 -1.790496 5.077705"
		
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_R" "rotateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_R" "rotateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_R" "rotateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_back" "translate" 
		" -type \"double3\" -2.726153 -11.008242 2.802623"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_back" "translateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_back" "translateY" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_back" "translateZ" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_back" "rotate" 
		" -type \"double3\" 0 -172.21937 0"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_back" "rotateX" 
		" -av"
		2 "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:prp_pack_back" "rotateY" 
		" -av"
		5 4 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateX" 
		"RigRN.placeHolderList[1]" ""
		5 4 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateY" 
		"RigRN.placeHolderList[2]" ""
		5 4 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.translateZ" 
		"RigRN.placeHolderList[3]" ""
		5 3 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[4]" ""
		5 3 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.parentInverseMatrix" 
		"RigRN.placeHolderList[5]" ""
		5 3 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivot" 
		"RigRN.placeHolderList[6]" ""
		5 3 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotatePivotTranslate" 
		"RigRN.placeHolderList[7]" ""
		5 4 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateX" 
		"RigRN.placeHolderList[8]" ""
		5 4 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateY" 
		"RigRN.placeHolderList[9]" ""
		5 4 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateZ" 
		"RigRN.placeHolderList[10]" ""
		5 3 "RigRN" "|Rig:Ref:soldierInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone.rotateOrder" 
		"RigRN.placeHolderList[11]" ""
		"RigRN" 303
		0 "|RigRNfosterParent1|shoulderPointConstraint" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"-s -r "
		1 |Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		2 "|Rig:main|Rig:ikSpine" "translate" " -type \"double3\" -0.865517 60.935312 0.0268436"
		
		2 "|Rig:main|Rig:ikSpine" "rotate" " -type \"double3\" -173.413222 0.175843 2.736019"
		
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup" "translate" 
		" -type \"double3\" -30.426869 27.361718 3.702459"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup" "rotate" 
		" -type \"double3\" -6.906451 -0.464425 -1.980837"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translate" " -type \"double3\" 6.42537 -8.870552 27.389915"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"weaponParent" " -k 1"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotate" " -type \"double3\" -87.924672 -34.730451 -20.839284"
		
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translate" 
		" -type \"double3\" 10.136702 27.361706 3.702462"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "rotate" 
		" -type \"double3\" -6.906451 -0.464425 -1.980837"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translate" " -type \"double3\" -6.042167 -8.633153 14.516655"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"weaponParent" " -k 1"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotate" " -type \"double3\" -87.102573 -26.271577 -14.350646"
		
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateZ" " -av"
		5 4 "RigRN" "|Rig:main.spineIKFK" "RigRN.placeHolderList[12]" ""
		5 4 "RigRN" "|Rig:main.translateX" "RigRN.placeHolderList[13]" ""
		5 4 "RigRN" "|Rig:main.translateY" "RigRN.placeHolderList[14]" ""
		5 4 "RigRN" "|Rig:main.translateZ" "RigRN.placeHolderList[15]" ""
		5 4 "RigRN" "|Rig:main.rotateX" "RigRN.placeHolderList[16]" ""
		5 4 "RigRN" "|Rig:main.rotateY" "RigRN.placeHolderList[17]" ""
		5 4 "RigRN" "|Rig:main.rotateZ" "RigRN.placeHolderList[18]" ""
		5 4 "RigRN" "|Rig:main.lArmIKFK" "RigRN.placeHolderList[19]" ""
		5 4 "RigRN" "|Rig:main.rArmIKFK" "RigRN.placeHolderList[20]" ""
		5 4 "RigRN" "|Rig:main.rLegIKFK" "RigRN.placeHolderList[21]" ""
		5 4 "RigRN" "|Rig:main.lLegIKFK" "RigRN.placeHolderList[22]" ""
		5 4 "RigRN" "|Rig:main.visibility" "RigRN.placeHolderList[23]" ""
		5 4 "RigRN" "|Rig:main|Rig:mainShape.visibility" "RigRN.placeHolderList[24]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateX" "RigRN.placeHolderList[25]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateY" "RigRN.placeHolderList[26]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateZ" "RigRN.placeHolderList[27]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateY" "RigRN.placeHolderList[28]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateZ" "RigRN.placeHolderList[29]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateX" "RigRN.placeHolderList[30]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateY" 
		"RigRN.placeHolderList[31]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateZ" 
		"RigRN.placeHolderList[32]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateX" 
		"RigRN.placeHolderList[33]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_back_LControlZeroGroup|Rig:Ref:prp_coat_back_LControl.rotateX" 
		"RigRN.placeHolderList[34]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_back_LControlZeroGroup|Rig:Ref:prp_coat_back_LControl.rotateY" 
		"RigRN.placeHolderList[35]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_back_LControlZeroGroup|Rig:Ref:prp_coat_back_LControl.rotateZ" 
		"RigRN.placeHolderList[36]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_back_LControlZeroGroup|Rig:Ref:prp_coat_back_LControl|Rig:Ref:prp_coat_back_1_LControlGroup|Rig:Ref:prp_coat_back_1_LControl.translateY" 
		"RigRN.placeHolderList[37]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_back_RControlZeroGroup|Rig:Ref:prp_coat_back_RControl.rotateX" 
		"RigRN.placeHolderList[38]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_back_RControlZeroGroup|Rig:Ref:prp_coat_back_RControl.rotateY" 
		"RigRN.placeHolderList[39]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_back_RControlZeroGroup|Rig:Ref:prp_coat_back_RControl.rotateZ" 
		"RigRN.placeHolderList[40]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_back_RControlZeroGroup|Rig:Ref:prp_coat_back_RControl|Rig:Ref:prp_coat_back_1_RControlGroup|Rig:Ref:prp_coat_back_1_RControl.translateY" 
		"RigRN.placeHolderList[41]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_front_LControlZeroGroup|Rig:Ref:prp_coat_front_LControl.rotateX" 
		"RigRN.placeHolderList[42]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_front_LControlZeroGroup|Rig:Ref:prp_coat_front_LControl.rotateY" 
		"RigRN.placeHolderList[43]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_front_LControlZeroGroup|Rig:Ref:prp_coat_front_LControl.rotateZ" 
		"RigRN.placeHolderList[44]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_front_LControlZeroGroup|Rig:Ref:prp_coat_front_LControl|Rig:Ref:prp_coat_front_1_LControlGroup|Rig:Ref:prp_coat_front_1_LControl.translateY" 
		"RigRN.placeHolderList[45]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_front_RControlZeroGroup|Rig:Ref:prp_coat_front_RControl.rotateX" 
		"RigRN.placeHolderList[46]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_front_RControlZeroGroup|Rig:Ref:prp_coat_front_RControl.rotateY" 
		"RigRN.placeHolderList[47]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_front_RControlZeroGroup|Rig:Ref:prp_coat_front_RControl.rotateZ" 
		"RigRN.placeHolderList[48]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_coat_front_RControlZeroGroup|Rig:Ref:prp_coat_front_RControl|Rig:Ref:prp_coat_front_1_RControlGroup|Rig:Ref:prp_coat_front_1_RControl.translateY" 
		"RigRN.placeHolderList[49]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_LControlGroup|Rig:Ref:prp_pack_LControl.rotateX" 
		"RigRN.placeHolderList[50]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_LControlGroup|Rig:Ref:prp_pack_LControl.rotateY" 
		"RigRN.placeHolderList[51]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_LControlGroup|Rig:Ref:prp_pack_LControl.rotateZ" 
		"RigRN.placeHolderList[52]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_RControlGroup|Rig:Ref:prp_pack_RControl.rotateX" 
		"RigRN.placeHolderList[53]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_RControlGroup|Rig:Ref:prp_pack_RControl.rotateY" 
		"RigRN.placeHolderList[54]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_RControlGroup|Rig:Ref:prp_pack_RControl.rotateZ" 
		"RigRN.placeHolderList[55]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_backControlGroup|Rig:Ref:prp_pack_backControl.rotateX" 
		"RigRN.placeHolderList[56]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_backControlGroup|Rig:Ref:prp_pack_backControl.rotateY" 
		"RigRN.placeHolderList[57]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl|Rig:Ref:prp_pack_backControlGroup|Rig:Ref:prp_pack_backControl.rotateZ" 
		"RigRN.placeHolderList[58]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.stretchSpine" 
		"RigRN.placeHolderList[59]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateX" 
		"RigRN.placeHolderList[60]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateY" 
		"RigRN.placeHolderList[61]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateZ" 
		"RigRN.placeHolderList[62]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateX" 
		"RigRN.placeHolderList[63]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateY" 
		"RigRN.placeHolderList[64]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateZ" 
		"RigRN.placeHolderList[65]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateX" 
		"RigRN.placeHolderList[66]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateY" 
		"RigRN.placeHolderList[67]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateZ" 
		"RigRN.placeHolderList[68]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateX" 
		"RigRN.placeHolderList[69]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateY" 
		"RigRN.placeHolderList[70]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateZ" 
		"RigRN.placeHolderList[71]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateY" "RigRN.placeHolderList[72]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateX" "RigRN.placeHolderList[73]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateZ" "RigRN.placeHolderList[74]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateX" 
		"RigRN.placeHolderList[75]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateY" 
		"RigRN.placeHolderList[76]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateZ" 
		"RigRN.placeHolderList[77]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateX" 
		"RigRN.placeHolderList[78]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateY" 
		"RigRN.placeHolderList[79]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateZ" 
		"RigRN.placeHolderList[80]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK.rotateX" 
		"RigRN.placeHolderList[81]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateX" 
		"RigRN.placeHolderList[82]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateY" 
		"RigRN.placeHolderList[83]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateZ" 
		"RigRN.placeHolderList[84]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateX" 
		"RigRN.placeHolderList[85]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateY" 
		"RigRN.placeHolderList[86]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateZ" 
		"RigRN.placeHolderList[87]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateX" 
		"RigRN.placeHolderList[88]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateY" 
		"RigRN.placeHolderList[89]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateZ" 
		"RigRN.placeHolderList[90]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK.rotateX" 
		"RigRN.placeHolderList[91]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateX" 
		"RigRN.placeHolderList[92]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateY" 
		"RigRN.placeHolderList[93]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateZ" 
		"RigRN.placeHolderList[94]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateX" 
		"RigRN.placeHolderList[95]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateY" 
		"RigRN.placeHolderList[96]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateZ" 
		"RigRN.placeHolderList[97]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateX" 
		"RigRN.placeHolderList[98]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateY" 
		"RigRN.placeHolderList[99]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateZ" 
		"RigRN.placeHolderList[100]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateX" 
		"RigRN.placeHolderList[101]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateY" 
		"RigRN.placeHolderList[102]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateZ" 
		"RigRN.placeHolderList[103]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK.rotateX" 
		"RigRN.placeHolderList[104]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateX" 
		"RigRN.placeHolderList[105]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateY" 
		"RigRN.placeHolderList[106]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateZ" 
		"RigRN.placeHolderList[107]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateX" 
		"RigRN.placeHolderList[108]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateZ" 
		"RigRN.placeHolderList[109]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateY" 
		"RigRN.placeHolderList[110]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateX" 
		"RigRN.placeHolderList[111]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateY" 
		"RigRN.placeHolderList[112]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateZ" 
		"RigRN.placeHolderList[113]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK.rotateX" 
		"RigRN.placeHolderList[114]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateX" 
		"RigRN.placeHolderList[115]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateY" 
		"RigRN.placeHolderList[116]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateZ" 
		"RigRN.placeHolderList[117]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_backControlGroup|Rig:Ref:prp_coatCollar_backControl.translateX" 
		"RigRN.placeHolderList[118]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_backControlGroup|Rig:Ref:prp_coatCollar_backControl.translateY" 
		"RigRN.placeHolderList[119]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_backControlGroup|Rig:Ref:prp_coatCollar_backControl.translateZ" 
		"RigRN.placeHolderList[120]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_backControlGroup|Rig:Ref:prp_coatCollar_backControl.rotateX" 
		"RigRN.placeHolderList[121]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_backControlGroup|Rig:Ref:prp_coatCollar_backControl.rotateY" 
		"RigRN.placeHolderList[122]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_backControlGroup|Rig:Ref:prp_coatCollar_backControl.rotateZ" 
		"RigRN.placeHolderList[123]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_LControlGroup|Rig:Ref:prp_coatCollar_LControl.translateX" 
		"RigRN.placeHolderList[124]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_LControlGroup|Rig:Ref:prp_coatCollar_LControl.translateY" 
		"RigRN.placeHolderList[125]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_LControlGroup|Rig:Ref:prp_coatCollar_LControl.translateZ" 
		"RigRN.placeHolderList[126]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_LControlGroup|Rig:Ref:prp_coatCollar_LControl.rotateX" 
		"RigRN.placeHolderList[127]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_LControlGroup|Rig:Ref:prp_coatCollar_LControl.rotateY" 
		"RigRN.placeHolderList[128]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_LControlGroup|Rig:Ref:prp_coatCollar_LControl.rotateZ" 
		"RigRN.placeHolderList[129]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_RControlGroup|Rig:Ref:prp_coatCollar_RControl.translateX" 
		"RigRN.placeHolderList[130]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_RControlGroup|Rig:Ref:prp_coatCollar_RControl.translateY" 
		"RigRN.placeHolderList[131]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_RControlGroup|Rig:Ref:prp_coatCollar_RControl.translateZ" 
		"RigRN.placeHolderList[132]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_RControlGroup|Rig:Ref:prp_coatCollar_RControl.rotateX" 
		"RigRN.placeHolderList[133]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_RControlGroup|Rig:Ref:prp_coatCollar_RControl.rotateY" 
		"RigRN.placeHolderList[134]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:Ref:prp_coatCollar_RControlGroup|Rig:Ref:prp_coatCollar_RControl.rotateZ" 
		"RigRN.placeHolderList[135]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateX" 
		"RigRN.placeHolderList[136]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateZ" 
		"RigRN.placeHolderList[137]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateY" 
		"RigRN.placeHolderList[138]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.lock" 
		"RigRN.placeHolderList[139]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateX" 
		"RigRN.placeHolderList[140]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateY" 
		"RigRN.placeHolderList[141]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateZ" 
		"RigRN.placeHolderList[142]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.lock" 
		"RigRN.placeHolderList[143]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_helmetControlGroup|Rig:Ref:prp_helmetControl.translateX" 
		"RigRN.placeHolderList[144]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_helmetControlGroup|Rig:Ref:prp_helmetControl.translateZ" 
		"RigRN.placeHolderList[145]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_helmetControlGroup|Rig:Ref:prp_helmetControl.translateY" 
		"RigRN.placeHolderList[146]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_helmetControlGroup|Rig:Ref:prp_helmetControl.rotateX" 
		"RigRN.placeHolderList[147]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_helmetControlGroup|Rig:Ref:prp_helmetControl.rotateY" 
		"RigRN.placeHolderList[148]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl|Rig:Ref:prp_helmetControlGroup|Rig:Ref:prp_helmetControl.rotateZ" 
		"RigRN.placeHolderList[149]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateX" 
		"RigRN.placeHolderList[150]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateY" 
		"RigRN.placeHolderList[151]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateZ" 
		"RigRN.placeHolderList[152]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.aim" 
		"RigRN.placeHolderList[153]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.lock" 
		"RigRN.placeHolderList[154]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.weaponParent" 
		"RigRN.placeHolderList[155]" ""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateZ" "RigRN.placeHolderList[156]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateX" "RigRN.placeHolderList[157]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateY" "RigRN.placeHolderList[158]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateX" 
		"RigRN.placeHolderList[159]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateY" 
		"RigRN.placeHolderList[160]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateZ" 
		"RigRN.placeHolderList[161]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_thumb_0_LControlRoll" 
		"RigRN.placeHolderList[162]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_index_0_LControlRoll" 
		"RigRN.placeHolderList[163]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_middle_0_LControlRoll" 
		"RigRN.placeHolderList[164]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_ring_0_LControlRoll" 
		"RigRN.placeHolderList[165]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_pinky_0_LControlRoll" 
		"RigRN.placeHolderList[166]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.visibility" 
		"RigRN.placeHolderList[167]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:lHandControlShape.visibility" 
		"RigRN.placeHolderList[168]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateX" 
		"RigRN.placeHolderList[169]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateY" 
		"RigRN.placeHolderList[170]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateZ" 
		"RigRN.placeHolderList[171]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl.rotateX" 
		"RigRN.placeHolderList[172]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl.rotateX" 
		"RigRN.placeHolderList[173]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateX" 
		"RigRN.placeHolderList[174]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateY" 
		"RigRN.placeHolderList[175]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateZ" 
		"RigRN.placeHolderList[176]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl.rotateX" 
		"RigRN.placeHolderList[177]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl.rotateX" 
		"RigRN.placeHolderList[178]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateX" 
		"RigRN.placeHolderList[179]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateY" 
		"RigRN.placeHolderList[180]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateZ" 
		"RigRN.placeHolderList[181]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl.rotateX" 
		"RigRN.placeHolderList[182]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl.rotateX" 
		"RigRN.placeHolderList[183]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateX" 
		"RigRN.placeHolderList[184]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateY" 
		"RigRN.placeHolderList[185]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateZ" 
		"RigRN.placeHolderList[186]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl.rotateX" 
		"RigRN.placeHolderList[187]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl.rotateX" 
		"RigRN.placeHolderList[188]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateX" 
		"RigRN.placeHolderList[189]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateY" 
		"RigRN.placeHolderList[190]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateZ" 
		"RigRN.placeHolderList[191]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl.rotateX" 
		"RigRN.placeHolderList[192]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl.rotateX" 
		"RigRN.placeHolderList[193]" ""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateX" "RigRN.placeHolderList[194]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateY" "RigRN.placeHolderList[195]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateZ" "RigRN.placeHolderList[196]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateX" "RigRN.placeHolderList[197]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateY" "RigRN.placeHolderList[198]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateZ" "RigRN.placeHolderList[199]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateX" "RigRN.placeHolderList[200]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateY" "RigRN.placeHolderList[201]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateZ" "RigRN.placeHolderList[202]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.heelRock" "RigRN.placeHolderList[203]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleLift" "RigRN.placeHolderList[204]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.toeLift" "RigRN.placeHolderList[205]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleBank" "RigRN.placeHolderList[206]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockR" "RigRN.placeHolderList[207]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockL" "RigRN.placeHolderList[208]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ballPivot" "RigRN.placeHolderList[209]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateX" 
		"RigRN.placeHolderList[210]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateZ" 
		"RigRN.placeHolderList[211]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateY" 
		"RigRN.placeHolderList[212]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateX" 
		"RigRN.placeHolderList[213]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateY" 
		"RigRN.placeHolderList[214]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateZ" 
		"RigRN.placeHolderList[215]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.aim" 
		"RigRN.placeHolderList[216]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.lock" 
		"RigRN.placeHolderList[217]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.weaponParent" 
		"RigRN.placeHolderList[218]" ""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateX" "RigRN.placeHolderList[219]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateY" "RigRN.placeHolderList[220]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateZ" "RigRN.placeHolderList[221]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateX" 
		"RigRN.placeHolderList[222]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateY" 
		"RigRN.placeHolderList[223]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateZ" 
		"RigRN.placeHolderList[224]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_thumb_0_RControlRoll" 
		"RigRN.placeHolderList[225]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_index_0_RControlRoll" 
		"RigRN.placeHolderList[226]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_middle_0_RControlRoll" 
		"RigRN.placeHolderList[227]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_ring_0_RControlRoll" 
		"RigRN.placeHolderList[228]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_pinky_0_RControlRoll" 
		"RigRN.placeHolderList[229]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.visibility" 
		"RigRN.placeHolderList[230]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:rHandControlShape.visibility" 
		"RigRN.placeHolderList[231]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateX" 
		"RigRN.placeHolderList[232]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateY" 
		"RigRN.placeHolderList[233]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateZ" 
		"RigRN.placeHolderList[234]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl.rotateX" 
		"RigRN.placeHolderList[235]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl.rotateX" 
		"RigRN.placeHolderList[236]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateX" 
		"RigRN.placeHolderList[237]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateY" 
		"RigRN.placeHolderList[238]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateZ" 
		"RigRN.placeHolderList[239]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl.rotateX" 
		"RigRN.placeHolderList[240]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl.rotateX" 
		"RigRN.placeHolderList[241]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateX" 
		"RigRN.placeHolderList[242]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateY" 
		"RigRN.placeHolderList[243]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateZ" 
		"RigRN.placeHolderList[244]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl.rotateX" 
		"RigRN.placeHolderList[245]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl.rotateX" 
		"RigRN.placeHolderList[246]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateX" 
		"RigRN.placeHolderList[247]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateY" 
		"RigRN.placeHolderList[248]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateZ" 
		"RigRN.placeHolderList[249]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl.rotateX" 
		"RigRN.placeHolderList[250]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl.rotateX" 
		"RigRN.placeHolderList[251]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateX" 
		"RigRN.placeHolderList[252]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateY" 
		"RigRN.placeHolderList[253]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateZ" 
		"RigRN.placeHolderList[254]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl.rotateX" 
		"RigRN.placeHolderList[255]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl.rotateX" 
		"RigRN.placeHolderList[256]" ""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateX" "RigRN.placeHolderList[257]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateY" "RigRN.placeHolderList[258]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateZ" "RigRN.placeHolderList[259]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateX" "RigRN.placeHolderList[260]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateY" "RigRN.placeHolderList[261]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateZ" "RigRN.placeHolderList[262]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateX" "RigRN.placeHolderList[263]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateY" "RigRN.placeHolderList[264]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateZ" "RigRN.placeHolderList[265]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.heelRock" "RigRN.placeHolderList[266]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleLift" "RigRN.placeHolderList[267]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.toeLift" "RigRN.placeHolderList[268]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleBank" "RigRN.placeHolderList[269]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockR" "RigRN.placeHolderList[270]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockL" "RigRN.placeHolderList[271]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ballPivot" "RigRN.placeHolderList[272]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateX" 
		"RigRN.placeHolderList[273]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateY" 
		"RigRN.placeHolderList[274]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateZ" 
		"RigRN.placeHolderList[275]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_topControlGroup|Rig:Ref:prp_grenade_topControl.translateX" 
		"RigRN.placeHolderList[276]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_topControlGroup|Rig:Ref:prp_grenade_topControl.translateY" 
		"RigRN.placeHolderList[277]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_topControlGroup|Rig:Ref:prp_grenade_topControl.translateZ" 
		"RigRN.placeHolderList[278]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_topControlGroup|Rig:Ref:prp_grenade_topControl.rotateY" 
		"RigRN.placeHolderList[279]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_topControlGroup|Rig:Ref:prp_grenade_topControl.rotateX" 
		"RigRN.placeHolderList[280]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_topControlGroup|Rig:Ref:prp_grenade_topControl.rotateZ" 
		"RigRN.placeHolderList[281]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_bottomControlGroup|Rig:Ref:prp_grenade_bottomControl.translateX" 
		"RigRN.placeHolderList[282]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_bottomControlGroup|Rig:Ref:prp_grenade_bottomControl.translateY" 
		"RigRN.placeHolderList[283]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_bottomControlGroup|Rig:Ref:prp_grenade_bottomControl.translateZ" 
		"RigRN.placeHolderList[284]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_bottomControlGroup|Rig:Ref:prp_grenade_bottomControl.rotateY" 
		"RigRN.placeHolderList[285]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_bottomControlGroup|Rig:Ref:prp_grenade_bottomControl.rotateX" 
		"RigRN.placeHolderList[286]" ""
		5 4 "RigRN" "|Rig:main|Rig:Ref:prp_grenade_bottomControlGroup|Rig:Ref:prp_grenade_bottomControl.rotateZ" 
		"RigRN.placeHolderList[287]" "";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 21 -ast 0 -aet 21 ";
	setAttr ".st" 6;
createNode animCurveTU -n "Rig:mainShape_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Rig:lHandControlShape_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Rig:rHandControlShape_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Rig:main_visibility";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:main_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:main_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:main_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:main_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:main_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:main_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:main_rArmIKFK";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:main_lArmIKFK";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:main_rLegIKFK";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:main_lLegIKFK";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:main_spineIKFK";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:UpperbodyControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:UpperbodyControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9765272600000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:UpperbodyControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.061056876429999997;
	setAttr ".kix[0]"  0.97897756099700928;
	setAttr ".kiy[0]"  -0.20396794378757477;
	setAttr ".kox[0]"  0.9789775013923645;
	setAttr ".koy[0]"  -0.20396813750267029;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.9859231820000005;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.1886439409;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.0261158479999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:PelvisControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.8345321129999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:PelvisControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.5796131039999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:PelvisControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.25830062390000003;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.2189511989999993;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_LControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.9707718170000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_back_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coat_back_1_RControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -27.662033690000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.9934063149999997;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.5217564260000005;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_1_LControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -13.25635984;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.6831951309999997;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coat_front_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6419159210000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coat_front_1_RControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -10.43930157;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.1773312249999996;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.6508143100000003;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.6281223109999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.790496393;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.0777048310000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_backControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_backControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_pack_backControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 21.98877804;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4247809709999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.70053370000000004;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:Ref:bip_spine_0FKcontrol_stretchSpine";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.234164059999999;
	setAttr ".kix[0]"  0.99991673231124878;
	setAttr ".kiy[0]"  -0.012905629351735115;
	setAttr ".kox[0]"  0.99991673231124878;
	setAttr ".koy[0]"  -0.012905643321573734;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.3596554429999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.91945739520000014;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.26510163;
	setAttr ".kix[0]"  0.99995595216751099;
	setAttr ".kiy[0]"  0.0093854740262031555;
	setAttr ".kox[0]"  0.99995595216751099;
	setAttr ".koy[0]"  0.009385465644299984;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.7360745780000002;
	setAttr ".kix[0]"  0.99989986419677734;
	setAttr ".kiy[0]"  0.014151887036859989;
	setAttr ".kox[0]"  0.99989986419677734;
	setAttr ".koy[0]"  0.014151888899505138;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.7906973279999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.9082413480000002;
	setAttr ".kix[0]"  0.99996626377105713;
	setAttr ".kiy[0]"  0.0082157924771308899;
	setAttr ".kox[0]"  0.99996626377105713;
	setAttr ".koy[0]"  0.0082157906144857407;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.9746046380000002;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1785739449999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:ikChest_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:ikChest_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:ikChest_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:ikChest_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:ikChest_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:ikChest_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_knee_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hip_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_knee_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_foot_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_toe_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lShoulderControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -25.538208279999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:lShoulderControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lShoulderControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.982797099999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_LFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rShoulderControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.810265940000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rShoulderControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rShoulderControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.334559069999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_upperArm_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_lowerArm_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_hand_RFK_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_backControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_backControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_backControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_backControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_backControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_backControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_LControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_LControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_LControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_RControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_RControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_coatCollar_RControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_coatCollar_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:neckControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 37.06707523;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:neckControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.093187913;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:neckControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6729310550000003;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:neckControl_lock";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:headControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.0751240500000012;
	setAttr ".kix[0]"  0.99762660264968872;
	setAttr ".kiy[0]"  -0.068855881690979004;
	setAttr ".kox[0]"  0.99762660264968872;
	setAttr ".koy[0]"  -0.068855874240398407;
createNode animCurveTA -n "Rig:headControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.83093099790000002;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:headControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.077616082840000017;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:headControl_lock";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_helmetControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_helmetControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_helmetControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:Ref:prp_helmetControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_helmetControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_helmetControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:lElbowControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.0552001080000002;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:lElbowControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -13.876990749999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:lElbowControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 35.896971829999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:lkneeControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.1493531419999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lkneeControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8872697500000002;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lkneeControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 44.35264411;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig:lFootControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.9703456160000004;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:lFootControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:lFootControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.311513600000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lFootControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lFootControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 22.776829899999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lFootControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lFootControl_heelRock";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lFootControl_ankleLift";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:lFootControl_toeLift";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lFootControl_ankleBank";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lFootControl_rockL";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lFootControl_rockR";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lFootControl_ballPivot";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lToeControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lToeControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lToeControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rElbowControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -26.707078410000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rElbowControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.78391815;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rElbowControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.344174039999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rkneeControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -21.383630149999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rkneeControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.28810224870000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rkneeControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 40.876684019999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 4;
createNode animCurveTL -n "Rig:rFootControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.4092891569999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rFootControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTL -n "Rig:rFootControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.8933605739999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 4;
createNode animCurveTA -n "Rig:rFootControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rFootControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -45.461763509999997;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rFootControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_heelRock";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ankleLift";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rFootControl_toeLift";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ankleBank";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rFootControl_rockL";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_rockR";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTU -n "Rig:rFootControl_ballPivot";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
	setAttr ".pst" 3;
createNode animCurveTA -n "Rig:rToeControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rToeControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rToeControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_grenade_topControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_grenade_topControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_grenade_topControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_grenade_topControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_grenade_topControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_grenade_topControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_grenade_bottomControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_grenade_bottomControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:Ref:prp_grenade_bottomControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_grenade_bottomControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_grenade_bottomControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:prp_grenade_bottomControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.8140956707;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 32.329593750000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 35.662397239999997;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4818873889999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.295641904;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.7873890697;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 22.932952109999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 46.895856680000009;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.106805144;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.370343369;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.2479606150000002;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 29.952508159999997;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 41.961898900000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.9364870179999993;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.5456264150000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.6548836940000005;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 43.08445038;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.801440250000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.578083810000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.383487580000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 84.834853570000007;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0705966979999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.075885980000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -23.586019149999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -34.316147919999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lHandControl_visibility";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lHandControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -87.924672049999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lHandControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -34.73045084000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:lHandControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -20.83928401;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lHandControl_bip_thumb_0_LControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lHandControl_bip_index_0_LControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lHandControl_bip_middle_0_LControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lHandControl_bip_ring_0_LControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:lHandControl_bip_pinky_0_LControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:likHandControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.4253696830000004;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:likHandControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.8705521120000004;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:likHandControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.389914770000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:likHandControl_lock";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:likHandControl_aim";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:likHandControl_weaponParent";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 51.280124469999997;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 25.710834760000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.894339689999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.84353781670000005;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.40848131050000003;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 21.996072099999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 47.866000600000007;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 35.458748510000007;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 29.532643;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 19.10982967;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 46.904019750000003;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.0197820929999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.2925938260000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.9218461199999997;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 23.01399237;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1762346939999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.2321239759999996;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.589357570000001;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.4284096650000002;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.3623688400000002;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 85.71405378;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.6669467469999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.808151568;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -26.320870560000003;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -14.423594559999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_visibility";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rHandControl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -87.102573149999998;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rHandControl_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -26.271577189999999;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "Rig:rHandControl_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -14.350645640000002;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_thumb_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_index_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_middle_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_ring_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rHandControl_bip_pinky_0_RControlRoll";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rikHandControl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.0421673269999996;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rikHandControl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.6331534649999995;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "Rig:rikHandControl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 14.51665483;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rikHandControl_lock";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rikHandControl_aim";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "Rig:rikHandControl_weaponParent";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 5;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".splck" no;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 3;
	setAttr ".jit" yes;
	setAttr ".rflr" 6;
	setAttr ".rfrr" 6;
	setAttr ".maxr" 6;
	setAttr -s 28 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
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
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	setAttr ".dat" 3;
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
	setAttr -s 85 ".dsm";
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
	setAttr -s 7 ".s";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".tx";
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
	setAttr -s 17 ".u";
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
select -ne :hyperGraphLayout;
connectAttr "Rig:Ref:weapon_bone_pointConstraint1.ctx" "RigRN.phl[1]";
connectAttr "Rig:Ref:weapon_bone_pointConstraint1.cty" "RigRN.phl[2]";
connectAttr "Rig:Ref:weapon_bone_pointConstraint1.ctz" "RigRN.phl[3]";
connectAttr "RigRN.phl[4]" "Rig:Ref:weapon_bone_pointConstraint1.cpim";
connectAttr "RigRN.phl[5]" "Rig:Ref:weapon_bone_orientConstraint1.cpim";
connectAttr "RigRN.phl[6]" "Rig:Ref:weapon_bone_pointConstraint1.crp";
connectAttr "RigRN.phl[7]" "Rig:Ref:weapon_bone_pointConstraint1.crt";
connectAttr "Rig:Ref:weapon_bone_orientConstraint1.crx" "RigRN.phl[8]";
connectAttr "Rig:Ref:weapon_bone_orientConstraint1.cry" "RigRN.phl[9]";
connectAttr "Rig:Ref:weapon_bone_orientConstraint1.crz" "RigRN.phl[10]";
connectAttr "RigRN.phl[11]" "Rig:Ref:weapon_bone_orientConstraint1.cro";
connectAttr "Rig:main_spineIKFK.o" "RigRN.phl[12]";
connectAttr "Rig:main_translateX.o" "RigRN.phl[13]";
connectAttr "Rig:main_translateY.o" "RigRN.phl[14]";
connectAttr "Rig:main_translateZ.o" "RigRN.phl[15]";
connectAttr "Rig:main_rotateX.o" "RigRN.phl[16]";
connectAttr "Rig:main_rotateY.o" "RigRN.phl[17]";
connectAttr "Rig:main_rotateZ.o" "RigRN.phl[18]";
connectAttr "Rig:main_lArmIKFK.o" "RigRN.phl[19]";
connectAttr "Rig:main_rArmIKFK.o" "RigRN.phl[20]";
connectAttr "Rig:main_rLegIKFK.o" "RigRN.phl[21]";
connectAttr "Rig:main_lLegIKFK.o" "RigRN.phl[22]";
connectAttr "Rig:main_visibility.o" "RigRN.phl[23]";
connectAttr "Rig:mainShape_visibility.o" "RigRN.phl[24]";
connectAttr "Rig:UpperbodyControl_translateX.o" "RigRN.phl[25]";
connectAttr "Rig:UpperbodyControl_translateY.o" "RigRN.phl[26]";
connectAttr "Rig:UpperbodyControl_translateZ.o" "RigRN.phl[27]";
connectAttr "Rig:UpperbodyControl_rotateY.o" "RigRN.phl[28]";
connectAttr "Rig:UpperbodyControl_rotateZ.o" "RigRN.phl[29]";
connectAttr "Rig:UpperbodyControl_rotateX.o" "RigRN.phl[30]";
connectAttr "Rig:PelvisControl_rotateY.o" "RigRN.phl[31]";
connectAttr "Rig:PelvisControl_rotateZ.o" "RigRN.phl[32]";
connectAttr "Rig:PelvisControl_rotateX.o" "RigRN.phl[33]";
connectAttr "Rig:Ref:prp_coat_back_LControl_rotateX.o" "RigRN.phl[34]";
connectAttr "Rig:Ref:prp_coat_back_LControl_rotateY.o" "RigRN.phl[35]";
connectAttr "Rig:Ref:prp_coat_back_LControl_rotateZ.o" "RigRN.phl[36]";
connectAttr "Rig:Ref:prp_coat_back_1_LControl_translateY.o" "RigRN.phl[37]";
connectAttr "Rig:Ref:prp_coat_back_RControl_rotateX.o" "RigRN.phl[38]";
connectAttr "Rig:Ref:prp_coat_back_RControl_rotateY.o" "RigRN.phl[39]";
connectAttr "Rig:Ref:prp_coat_back_RControl_rotateZ.o" "RigRN.phl[40]";
connectAttr "Rig:Ref:prp_coat_back_1_RControl_translateY.o" "RigRN.phl[41]";
connectAttr "Rig:Ref:prp_coat_front_LControl_rotateX.o" "RigRN.phl[42]";
connectAttr "Rig:Ref:prp_coat_front_LControl_rotateY.o" "RigRN.phl[43]";
connectAttr "Rig:Ref:prp_coat_front_LControl_rotateZ.o" "RigRN.phl[44]";
connectAttr "Rig:Ref:prp_coat_front_1_LControl_translateY.o" "RigRN.phl[45]";
connectAttr "Rig:Ref:prp_coat_front_RControl_rotateX.o" "RigRN.phl[46]";
connectAttr "Rig:Ref:prp_coat_front_RControl_rotateY.o" "RigRN.phl[47]";
connectAttr "Rig:Ref:prp_coat_front_RControl_rotateZ.o" "RigRN.phl[48]";
connectAttr "Rig:Ref:prp_coat_front_1_RControl_translateY.o" "RigRN.phl[49]";
connectAttr "Rig:Ref:prp_pack_LControl_rotateX.o" "RigRN.phl[50]";
connectAttr "Rig:Ref:prp_pack_LControl_rotateY.o" "RigRN.phl[51]";
connectAttr "Rig:Ref:prp_pack_LControl_rotateZ.o" "RigRN.phl[52]";
connectAttr "Rig:Ref:prp_pack_RControl_rotateX.o" "RigRN.phl[53]";
connectAttr "Rig:Ref:prp_pack_RControl_rotateY.o" "RigRN.phl[54]";
connectAttr "Rig:Ref:prp_pack_RControl_rotateZ.o" "RigRN.phl[55]";
connectAttr "Rig:Ref:prp_pack_backControl_rotateX.o" "RigRN.phl[56]";
connectAttr "Rig:Ref:prp_pack_backControl_rotateY.o" "RigRN.phl[57]";
connectAttr "Rig:Ref:prp_pack_backControl_rotateZ.o" "RigRN.phl[58]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_stretchSpine.o" "RigRN.phl[59]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateX.o" "RigRN.phl[60]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateY.o" "RigRN.phl[61]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateZ.o" "RigRN.phl[62]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateX.o" "RigRN.phl[63]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateY.o" "RigRN.phl[64]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateZ.o" "RigRN.phl[65]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateX.o" "RigRN.phl[66]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateY.o" "RigRN.phl[67]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateZ.o" "RigRN.phl[68]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateX.o" "RigRN.phl[69]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateY.o" "RigRN.phl[70]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateZ.o" "RigRN.phl[71]";
connectAttr "Rig:ikChest_rotateY.o" "RigRN.phl[72]";
connectAttr "Rig:ikChest_rotateX.o" "RigRN.phl[73]";
connectAttr "Rig:ikChest_rotateZ.o" "RigRN.phl[74]";
connectAttr "Rig:ikChest_translateX.o" "RigRN.phl[75]";
connectAttr "Rig:ikChest_translateY.o" "RigRN.phl[76]";
connectAttr "Rig:ikChest_translateZ.o" "RigRN.phl[77]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateX.o" "RigRN.phl[78]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateY.o" "RigRN.phl[79]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateZ.o" "RigRN.phl[80]";
connectAttr "Rig:Ref:bip_knee_LFK_rotateX.o" "RigRN.phl[81]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateX.o" "RigRN.phl[82]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateY.o" "RigRN.phl[83]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateZ.o" "RigRN.phl[84]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateX.o" "RigRN.phl[85]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateY.o" "RigRN.phl[86]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateZ.o" "RigRN.phl[87]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateX.o" "RigRN.phl[88]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateY.o" "RigRN.phl[89]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateZ.o" "RigRN.phl[90]";
connectAttr "Rig:Ref:bip_knee_RFK_rotateX.o" "RigRN.phl[91]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateX.o" "RigRN.phl[92]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateY.o" "RigRN.phl[93]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateZ.o" "RigRN.phl[94]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateX.o" "RigRN.phl[95]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateY.o" "RigRN.phl[96]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateZ.o" "RigRN.phl[97]";
connectAttr "Rig:lShoulderControl_rotateX.o" "RigRN.phl[98]";
connectAttr "Rig:lShoulderControl_rotateY.o" "RigRN.phl[99]";
connectAttr "Rig:lShoulderControl_rotateZ.o" "RigRN.phl[100]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateX.o" "RigRN.phl[101]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateY.o" "RigRN.phl[102]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateZ.o" "RigRN.phl[103]";
connectAttr "Rig:Ref:bip_lowerArm_LFK_rotateX.o" "RigRN.phl[104]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateX.o" "RigRN.phl[105]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateY.o" "RigRN.phl[106]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateZ.o" "RigRN.phl[107]";
connectAttr "Rig:rShoulderControl_rotateX.o" "RigRN.phl[108]";
connectAttr "Rig:rShoulderControl_rotateZ.o" "RigRN.phl[109]";
connectAttr "Rig:rShoulderControl_rotateY.o" "RigRN.phl[110]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateX.o" "RigRN.phl[111]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateY.o" "RigRN.phl[112]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateZ.o" "RigRN.phl[113]";
connectAttr "Rig:Ref:bip_lowerArm_RFK_rotateX.o" "RigRN.phl[114]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateX.o" "RigRN.phl[115]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateY.o" "RigRN.phl[116]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateZ.o" "RigRN.phl[117]";
connectAttr "Rig:Ref:prp_coatCollar_backControl_translateX.o" "RigRN.phl[118]";
connectAttr "Rig:Ref:prp_coatCollar_backControl_translateY.o" "RigRN.phl[119]";
connectAttr "Rig:Ref:prp_coatCollar_backControl_translateZ.o" "RigRN.phl[120]";
connectAttr "Rig:Ref:prp_coatCollar_backControl_rotateX.o" "RigRN.phl[121]";
connectAttr "Rig:Ref:prp_coatCollar_backControl_rotateY.o" "RigRN.phl[122]";
connectAttr "Rig:Ref:prp_coatCollar_backControl_rotateZ.o" "RigRN.phl[123]";
connectAttr "Rig:Ref:prp_coatCollar_LControl_translateX.o" "RigRN.phl[124]";
connectAttr "Rig:Ref:prp_coatCollar_LControl_translateY.o" "RigRN.phl[125]";
connectAttr "Rig:Ref:prp_coatCollar_LControl_translateZ.o" "RigRN.phl[126]";
connectAttr "Rig:Ref:prp_coatCollar_LControl_rotateX.o" "RigRN.phl[127]";
connectAttr "Rig:Ref:prp_coatCollar_LControl_rotateY.o" "RigRN.phl[128]";
connectAttr "Rig:Ref:prp_coatCollar_LControl_rotateZ.o" "RigRN.phl[129]";
connectAttr "Rig:Ref:prp_coatCollar_RControl_translateX.o" "RigRN.phl[130]";
connectAttr "Rig:Ref:prp_coatCollar_RControl_translateY.o" "RigRN.phl[131]";
connectAttr "Rig:Ref:prp_coatCollar_RControl_translateZ.o" "RigRN.phl[132]";
connectAttr "Rig:Ref:prp_coatCollar_RControl_rotateX.o" "RigRN.phl[133]";
connectAttr "Rig:Ref:prp_coatCollar_RControl_rotateY.o" "RigRN.phl[134]";
connectAttr "Rig:Ref:prp_coatCollar_RControl_rotateZ.o" "RigRN.phl[135]";
connectAttr "Rig:neckControl_rotateX.o" "RigRN.phl[136]";
connectAttr "Rig:neckControl_rotateZ.o" "RigRN.phl[137]";
connectAttr "Rig:neckControl_rotateY.o" "RigRN.phl[138]";
connectAttr "Rig:neckControl_lock.o" "RigRN.phl[139]";
connectAttr "Rig:headControl_rotateX.o" "RigRN.phl[140]";
connectAttr "Rig:headControl_rotateY.o" "RigRN.phl[141]";
connectAttr "Rig:headControl_rotateZ.o" "RigRN.phl[142]";
connectAttr "Rig:headControl_lock.o" "RigRN.phl[143]";
connectAttr "Rig:Ref:prp_helmetControl_translateX.o" "RigRN.phl[144]";
connectAttr "Rig:Ref:prp_helmetControl_translateZ.o" "RigRN.phl[145]";
connectAttr "Rig:Ref:prp_helmetControl_translateY.o" "RigRN.phl[146]";
connectAttr "Rig:Ref:prp_helmetControl_rotateX.o" "RigRN.phl[147]";
connectAttr "Rig:Ref:prp_helmetControl_rotateY.o" "RigRN.phl[148]";
connectAttr "Rig:Ref:prp_helmetControl_rotateZ.o" "RigRN.phl[149]";
connectAttr "Rig:likHandControl_translateX.o" "RigRN.phl[150]";
connectAttr "Rig:likHandControl_translateY.o" "RigRN.phl[151]";
connectAttr "Rig:likHandControl_translateZ.o" "RigRN.phl[152]";
connectAttr "Rig:likHandControl_aim.o" "RigRN.phl[153]";
connectAttr "Rig:likHandControl_lock.o" "RigRN.phl[154]";
connectAttr "Rig:likHandControl_weaponParent.o" "RigRN.phl[155]";
connectAttr "Rig:lElbowControl_translateZ.o" "RigRN.phl[156]";
connectAttr "Rig:lElbowControl_translateX.o" "RigRN.phl[157]";
connectAttr "Rig:lElbowControl_translateY.o" "RigRN.phl[158]";
connectAttr "Rig:lHandControl_rotateX.o" "RigRN.phl[159]";
connectAttr "Rig:lHandControl_rotateY.o" "RigRN.phl[160]";
connectAttr "Rig:lHandControl_rotateZ.o" "RigRN.phl[161]";
connectAttr "Rig:lHandControl_bip_thumb_0_LControlRoll.o" "RigRN.phl[162]";
connectAttr "Rig:lHandControl_bip_index_0_LControlRoll.o" "RigRN.phl[163]";
connectAttr "Rig:lHandControl_bip_middle_0_LControlRoll.o" "RigRN.phl[164]";
connectAttr "Rig:lHandControl_bip_ring_0_LControlRoll.o" "RigRN.phl[165]";
connectAttr "Rig:lHandControl_bip_pinky_0_LControlRoll.o" "RigRN.phl[166]";
connectAttr "Rig:lHandControl_visibility.o" "RigRN.phl[167]";
connectAttr "Rig:lHandControlShape_visibility.o" "RigRN.phl[168]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateX.o" "RigRN.phl[169]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateY.o" "RigRN.phl[170]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateZ.o" "RigRN.phl[171]";
connectAttr "Rig:Ref:bip_thumb_1_LControl_rotateX.o" "RigRN.phl[172]";
connectAttr "Rig:Ref:bip_thumb_2_LControl_rotateX.o" "RigRN.phl[173]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateX.o" "RigRN.phl[174]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateY.o" "RigRN.phl[175]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateZ.o" "RigRN.phl[176]";
connectAttr "Rig:Ref:bip_index_1_LControl_rotateX.o" "RigRN.phl[177]";
connectAttr "Rig:Ref:bip_index_2_LControl_rotateX.o" "RigRN.phl[178]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateX.o" "RigRN.phl[179]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateY.o" "RigRN.phl[180]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateZ.o" "RigRN.phl[181]";
connectAttr "Rig:Ref:bip_middle_1_LControl_rotateX.o" "RigRN.phl[182]";
connectAttr "Rig:Ref:bip_middle_2_LControl_rotateX.o" "RigRN.phl[183]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateX.o" "RigRN.phl[184]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateY.o" "RigRN.phl[185]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateZ.o" "RigRN.phl[186]";
connectAttr "Rig:Ref:bip_ring_1_LControl_rotateX.o" "RigRN.phl[187]";
connectAttr "Rig:Ref:bip_ring_2_LControl_rotateX.o" "RigRN.phl[188]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateX.o" "RigRN.phl[189]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateY.o" "RigRN.phl[190]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateZ.o" "RigRN.phl[191]";
connectAttr "Rig:Ref:bip_pinky_1_LControl_rotateX.o" "RigRN.phl[192]";
connectAttr "Rig:Ref:bip_pinky_2_LControl_rotateX.o" "RigRN.phl[193]";
connectAttr "Rig:lkneeControl_translateX.o" "RigRN.phl[194]";
connectAttr "Rig:lkneeControl_translateY.o" "RigRN.phl[195]";
connectAttr "Rig:lkneeControl_translateZ.o" "RigRN.phl[196]";
connectAttr "Rig:lFootControl_translateX.o" "RigRN.phl[197]";
connectAttr "Rig:lFootControl_translateY.o" "RigRN.phl[198]";
connectAttr "Rig:lFootControl_translateZ.o" "RigRN.phl[199]";
connectAttr "Rig:lFootControl_rotateX.o" "RigRN.phl[200]";
connectAttr "Rig:lFootControl_rotateY.o" "RigRN.phl[201]";
connectAttr "Rig:lFootControl_rotateZ.o" "RigRN.phl[202]";
connectAttr "Rig:lFootControl_heelRock.o" "RigRN.phl[203]";
connectAttr "Rig:lFootControl_ankleLift.o" "RigRN.phl[204]";
connectAttr "Rig:lFootControl_toeLift.o" "RigRN.phl[205]";
connectAttr "Rig:lFootControl_ankleBank.o" "RigRN.phl[206]";
connectAttr "Rig:lFootControl_rockR.o" "RigRN.phl[207]";
connectAttr "Rig:lFootControl_rockL.o" "RigRN.phl[208]";
connectAttr "Rig:lFootControl_ballPivot.o" "RigRN.phl[209]";
connectAttr "Rig:lToeControl_rotateX.o" "RigRN.phl[210]";
connectAttr "Rig:lToeControl_rotateZ.o" "RigRN.phl[211]";
connectAttr "Rig:lToeControl_rotateY.o" "RigRN.phl[212]";
connectAttr "Rig:rikHandControl_translateX.o" "RigRN.phl[213]";
connectAttr "Rig:rikHandControl_translateY.o" "RigRN.phl[214]";
connectAttr "Rig:rikHandControl_translateZ.o" "RigRN.phl[215]";
connectAttr "Rig:rikHandControl_aim.o" "RigRN.phl[216]";
connectAttr "Rig:rikHandControl_lock.o" "RigRN.phl[217]";
connectAttr "Rig:rikHandControl_weaponParent.o" "RigRN.phl[218]";
connectAttr "Rig:rElbowControl_translateX.o" "RigRN.phl[219]";
connectAttr "Rig:rElbowControl_translateY.o" "RigRN.phl[220]";
connectAttr "Rig:rElbowControl_translateZ.o" "RigRN.phl[221]";
connectAttr "Rig:rHandControl_rotateX.o" "RigRN.phl[222]";
connectAttr "Rig:rHandControl_rotateY.o" "RigRN.phl[223]";
connectAttr "Rig:rHandControl_rotateZ.o" "RigRN.phl[224]";
connectAttr "Rig:rHandControl_bip_thumb_0_RControlRoll.o" "RigRN.phl[225]";
connectAttr "Rig:rHandControl_bip_index_0_RControlRoll.o" "RigRN.phl[226]";
connectAttr "Rig:rHandControl_bip_middle_0_RControlRoll.o" "RigRN.phl[227]";
connectAttr "Rig:rHandControl_bip_ring_0_RControlRoll.o" "RigRN.phl[228]";
connectAttr "Rig:rHandControl_bip_pinky_0_RControlRoll.o" "RigRN.phl[229]";
connectAttr "Rig:rHandControl_visibility.o" "RigRN.phl[230]";
connectAttr "Rig:rHandControlShape_visibility.o" "RigRN.phl[231]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateX.o" "RigRN.phl[232]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateY.o" "RigRN.phl[233]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateZ.o" "RigRN.phl[234]";
connectAttr "Rig:Ref:bip_thumb_1_RControl_rotateX.o" "RigRN.phl[235]";
connectAttr "Rig:Ref:bip_thumb_2_RControl_rotateX.o" "RigRN.phl[236]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateX.o" "RigRN.phl[237]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateY.o" "RigRN.phl[238]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateZ.o" "RigRN.phl[239]";
connectAttr "Rig:Ref:bip_index_1_RControl_rotateX.o" "RigRN.phl[240]";
connectAttr "Rig:Ref:bip_index_2_RControl_rotateX.o" "RigRN.phl[241]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateX.o" "RigRN.phl[242]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateY.o" "RigRN.phl[243]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateZ.o" "RigRN.phl[244]";
connectAttr "Rig:Ref:bip_middle_1_RControl_rotateX.o" "RigRN.phl[245]";
connectAttr "Rig:Ref:bip_middle_2_RControl_rotateX.o" "RigRN.phl[246]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateX.o" "RigRN.phl[247]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateY.o" "RigRN.phl[248]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateZ.o" "RigRN.phl[249]";
connectAttr "Rig:Ref:bip_ring_1_RControl_rotateX.o" "RigRN.phl[250]";
connectAttr "Rig:Ref:bip_ring_2_RControl_rotateX.o" "RigRN.phl[251]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateX.o" "RigRN.phl[252]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateY.o" "RigRN.phl[253]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateZ.o" "RigRN.phl[254]";
connectAttr "Rig:Ref:bip_pinky_1_RControl_rotateX.o" "RigRN.phl[255]";
connectAttr "Rig:Ref:bip_pinky_2_RControl_rotateX.o" "RigRN.phl[256]";
connectAttr "Rig:rkneeControl_translateX.o" "RigRN.phl[257]";
connectAttr "Rig:rkneeControl_translateY.o" "RigRN.phl[258]";
connectAttr "Rig:rkneeControl_translateZ.o" "RigRN.phl[259]";
connectAttr "Rig:rFootControl_translateX.o" "RigRN.phl[260]";
connectAttr "Rig:rFootControl_translateY.o" "RigRN.phl[261]";
connectAttr "Rig:rFootControl_translateZ.o" "RigRN.phl[262]";
connectAttr "Rig:rFootControl_rotateX.o" "RigRN.phl[263]";
connectAttr "Rig:rFootControl_rotateY.o" "RigRN.phl[264]";
connectAttr "Rig:rFootControl_rotateZ.o" "RigRN.phl[265]";
connectAttr "Rig:rFootControl_heelRock.o" "RigRN.phl[266]";
connectAttr "Rig:rFootControl_ankleLift.o" "RigRN.phl[267]";
connectAttr "Rig:rFootControl_toeLift.o" "RigRN.phl[268]";
connectAttr "Rig:rFootControl_ankleBank.o" "RigRN.phl[269]";
connectAttr "Rig:rFootControl_rockR.o" "RigRN.phl[270]";
connectAttr "Rig:rFootControl_rockL.o" "RigRN.phl[271]";
connectAttr "Rig:rFootControl_ballPivot.o" "RigRN.phl[272]";
connectAttr "Rig:rToeControl_rotateX.o" "RigRN.phl[273]";
connectAttr "Rig:rToeControl_rotateY.o" "RigRN.phl[274]";
connectAttr "Rig:rToeControl_rotateZ.o" "RigRN.phl[275]";
connectAttr "Rig:Ref:prp_grenade_topControl_translateX.o" "RigRN.phl[276]";
connectAttr "Rig:Ref:prp_grenade_topControl_translateY.o" "RigRN.phl[277]";
connectAttr "Rig:Ref:prp_grenade_topControl_translateZ.o" "RigRN.phl[278]";
connectAttr "Rig:Ref:prp_grenade_topControl_rotateY.o" "RigRN.phl[279]";
connectAttr "Rig:Ref:prp_grenade_topControl_rotateX.o" "RigRN.phl[280]";
connectAttr "Rig:Ref:prp_grenade_topControl_rotateZ.o" "RigRN.phl[281]";
connectAttr "Rig:Ref:prp_grenade_bottomControl_translateX.o" "RigRN.phl[282]";
connectAttr "Rig:Ref:prp_grenade_bottomControl_translateY.o" "RigRN.phl[283]";
connectAttr "Rig:Ref:prp_grenade_bottomControl_translateZ.o" "RigRN.phl[284]";
connectAttr "Rig:Ref:prp_grenade_bottomControl_rotateY.o" "RigRN.phl[285]";
connectAttr "Rig:Ref:prp_grenade_bottomControl_rotateX.o" "RigRN.phl[286]";
connectAttr "Rig:Ref:prp_grenade_bottomControl_rotateZ.o" "RigRN.phl[287]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RigRNfosterParent1.msg" "RigRN.fp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of center_pose.ma
