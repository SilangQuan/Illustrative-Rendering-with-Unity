//Maya ASCII 2012 scene
//Name: center_pose.ma
//Last modified: Wed, Mar 11, 2015 01:22:24 PM
//Codeset: 1252
file -rdi 1 -ns "Rig" -rfn "RigRN" "pyro_rig.ma";
file -rdi 2 -ns "Ref" -rfn "Rig:RefRN" "pyro_reference.ma";
file -r -ns "Rig" -dr 1 -rfn "RigRN" "pyro_rig.ma";
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
	setAttr ".t" -type "double3" -200.33873588499523 48.371912532108325 73.208142239673734 ;
	setAttr ".r" -type "double3" -12.938352730048559 1007.4000000000857 2.6589638970764746e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 218.367821478747;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -9.3970778083441964 53.301072299530084 -15.343354287958014 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.5647676414096878 1515.7566263865403 18.140114126861732 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 132.03857772935692;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 135.08523686814596 42.726893631863113 1506.5994843071571 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 2.1052631578947367;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1501.3807452165361 42.726893631863113 -40.896517280150313 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 2.1052631578947367;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RigRN";
	setAttr -s 217 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"RigRN"
		"Rig:RefRN" 7
		1 |Rig:Ref:pyroInfo "exportName" "exportName" " -ci 1 -dt \"string\""
		2 "|Rig:Ref:pyroInfo" "exportName" " -type \"string\" \"%VCONTENT%/tf/models/player/pyro/animations/dmx/primary_runCenter.dmx\""
		
		2 "|Rig:Ref:pyroInfo" "exportType" " 1"
		5 3 "RigRN" "|Rig:Ref:pyroInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_fuelTank|Rig:Ref:hose_tank.translate" 
		"RigRN.placeHolderList[130]" ""
		5 3 "RigRN" "|Rig:Ref:pyroInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_fuelTank|Rig:Ref:hose_tank.rotatePivot" 
		"RigRN.placeHolderList[131]" ""
		5 3 "RigRN" "|Rig:Ref:pyroInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_fuelTank|Rig:Ref:hose_tank.rotatePivotTranslate" 
		"RigRN.placeHolderList[132]" ""
		5 3 "RigRN" "|Rig:Ref:pyroInfo|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:prp_fuelTank|Rig:Ref:hose_tank.parentMatrix" 
		"RigRN.placeHolderList[133]" ""
		"RigRN" 216
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotate" " -type \"double3\" -36.804683 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotate" " -type \"double3\" 9.440083 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotate" " -type \"double3\" 36.385681 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotate" " -type \"double3\" 24.937231 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotate" " -type \"double3\" 45.788917 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotate" " -type \"double3\" 36.930668 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotate" " -type \"double3\" 22.928121 0 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotate" " -type \"double3\" 43.042592 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotate" " -type \"double3\" 18.694455 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotate" " -type \"double3\" 16.371695 0 0"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotate" " -type \"double3\" 17.184807 0 0"
		"Rig:RefRN" 32
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:weapon_bone_L" 
		"translate" " -type \"double3\" 2.975137 12.80222 -48.490699"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_L|Rig:Ref:bip_upperArm_L|Rig:Ref:bip_lowerArm_L|Rig:Ref:bip_hand_L|Rig:Ref:weapon_bone_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"translate" " -type \"double3\" 35.751994 19.612882 7.972994"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0" 
		"rotate" " -type \"double3\" 90 -90 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2" 
		"translateX" " -av"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2" 
		"translateY" " -av"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2" 
		"translateZ" " -av"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3|Rig:Ref:hose_4" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3|Rig:Ref:hose_4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3|Rig:Ref:hose_4|Rig:Ref:hose_5" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3|Rig:Ref:hose_4|Rig:Ref:hose_5" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3|Rig:Ref:hose_4|Rig:Ref:hose_5|Rig:Ref:hose_6" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3|Rig:Ref:hose_4|Rig:Ref:hose_5|Rig:Ref:hose_6" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3|Rig:Ref:hose_4|Rig:Ref:hose_5|Rig:Ref:hose_6|Rig:Ref:hose_7" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone|Rig:Ref:hose_0|Rig:Ref:hose_1|Rig:Ref:hose_2|Rig:Ref:hose_3|Rig:Ref:hose_4|Rig:Ref:hose_5|Rig:Ref:hose_6|Rig:Ref:hose_7" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone_1" 
		"translate" " -type \"double3\" 35.751994 19.612882 7.972994"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone_1" 
		"translateX" " -av"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone_1" 
		"translateY" " -av"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone_1" 
		"translateZ" " -av"
		2 "|Rig:Ref:pyroInfo_group|Rig:Ref:bip_pelvis|Rig:Ref:bip_spine_0|Rig:Ref:bip_spine_1|Rig:Ref:bip_spine_2|Rig:Ref:bip_spine_3|Rig:Ref:bip_collar_R|Rig:Ref:bip_upperArm_R|Rig:Ref:bip_lowerArm_R|Rig:Ref:bip_hand_R|Rig:Ref:weapon_bone_1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "Rig:Ref:mesh_layer" "displayType" " 2"
		2 "Rig:Ref:mesh_layer" "visibility" " 1"
		2 "Rig:Ref:skeleton_layer" "displayType" " 2"
		2 "Rig:Ref:skeleton_layer" "visibility" " 1"
		"RigRN" 353
		1 |Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		1 |Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl 
		"weaponParent" "weaponParent" " -ci 1 -k 1 -dv 1 -min 0 -max 1 -at \"double\""
		2 "|Rig:main|Rig:UpperbodyControl" "translate" " -type \"double3\" 1.505891 -3.964498 -0.501441"
		
		2 "|Rig:main|Rig:UpperbodyControl" "translateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "translateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "translateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotate" " -type \"double3\" -12.48783 -31.493433 5.089803"
		
		2 "|Rig:main|Rig:UpperbodyControl" "rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl" "rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotate" " -type \"double3\" 31.895193 10.646463 6.237907"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol" 
		"stretchSpine" " -av -k 1 1"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotate" " -type \"double3\" 1.476875 5.894902 0"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol" 
		"rotate" " -type \"double3\" 0 0 0"
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
		2 "|Rig:main|Rig:ikSpine" "translate" " -type \"double3\" 3.29645 63.014834 -4.099599"
		
		2 "|Rig:main|Rig:ikSpine" "rotate" " -type \"double3\" -175.456642 -1.434514 7.765352"
		
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotate" " -type \"double3\" -16.971848 -0.830486 5.432417"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotate" " -type \"double3\" -0.414942 7.582566 3.505032"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotate" " -type \"double3\" -10.523921 -33.650841 -7.144363"
		
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateX" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateY" " -av"
		2 "|Rig:main|Rig:neckControlLockParent|Rig:neckControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotate" " -type \"double3\" 10.465505 10.357569 -11.335639"
		
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateX" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateY" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:headControlLockParent|Rig:headControl" "lock" " -av -k 1 1"
		
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup" "translate" 
		" -type \"double3\" -30.661285 -2.028878 10.081335"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup" "rotate" 
		" -type \"double3\" -16.648577 30.708114 -17.245423"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translate" " -type \"double3\" 6.53285 4.690654 23.868926"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl" 
		"weaponParent" " -k 1"
		2 "|Rig:main|Rig:lElbowControl" "translate" " -type \"double3\" 111.878154 -9.515101 -33.62945"
		
		2 "|Rig:main|Rig:lElbowControl" "translateX" " -av"
		2 "|Rig:main|Rig:lElbowControl" "translateY" " -av"
		2 "|Rig:main|Rig:lElbowControl" "translateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotate" " -type \"double3\" -36.926727 -11.831785 -40.923035"
		
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotate" " -type \"double3\" 11.894811 -4.310746 9.736379"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl" 
		"rotateX" " -av -36.804683"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl" 
		"rotateX" " -av 0"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotate" " -type \"double3\" -20.074791 20.329374 16.241381"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl" 
		"rotateX" " -av 9.440083"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl" 
		"rotateX" " -av 36.385681"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotate" " -type \"double3\" 7.533329 19.729911 9.05046"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl" 
		"rotateX" " -av 24.937231"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl" 
		"rotateX" " -av 45.788917"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotate" " -type \"double3\" 7.325949 16.883751 -1.120332"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl" 
		"rotateX" " -av 36.930668"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl" 
		"rotateX" " -av 22.928121"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotate" " -type \"double3\" 0 20.100708 -18.111963"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl" 
		"rotateX" " -av 43.042592"
		2 "|Rig:main|Rig:lkneeControl" "translate" " -type \"double3\" 3.732332 -4.391312 29.269451"
		
		2 "|Rig:main|Rig:lkneeControl" "translateX" " -av"
		2 "|Rig:main|Rig:lkneeControl" "translateY" " -av"
		2 "|Rig:main|Rig:lkneeControl" "translateZ" " -av"
		2 "|Rig:main|Rig:lFootControl" "translate" " -type \"double3\" 3.096527 0 7.879555"
		
		2 "|Rig:main|Rig:lFootControl" "translateX" " -av"
		2 "|Rig:main|Rig:lFootControl" "translateY" " -av"
		2 "|Rig:main|Rig:lFootControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "translate" 
		" -type \"double3\" 3.627736 -2.028866 10.081334"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup" "rotate" 
		" -type \"double3\" -16.648577 30.708114 -17.245423"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translate" " -type \"double3\" 0.404408 6.233148 -5.02554"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateX" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateY" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"translateZ" " -av"
		2 "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl" 
		"weaponParent" " -k 1"
		2 "|Rig:main|Rig:rElbowControl" "translate" " -type \"double3\" 6.724932 -3.717917 -11.943482"
		
		2 "|Rig:main|Rig:rElbowControl" "translateX" " -av"
		2 "|Rig:main|Rig:rElbowControl" "translateY" " -av"
		2 "|Rig:main|Rig:rElbowControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotate" " -type \"double3\" -11.282545 -7.094676 7.729188"
		
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl" "rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl" 
		"rotateX" " -av 18.694455"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl" 
		"rotateX" " -av 16.371695"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl" 
		"rotate" " -type \"double3\" 4.88802 15.068063 -11.872739"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl" 
		"rotateX" " -av 17.184807"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotate" " -type \"double3\" -11.660595 24.283488 -23.022452"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateX" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateY" " -av"
		2 "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl" 
		"rotateZ" " -av"
		2 "|Rig:main|Rig:rkneeControl" "translate" " -type \"double3\" -5.075394 -4.271566 3.30893"
		
		2 "|Rig:main|Rig:rkneeControl" "translateX" " -av"
		2 "|Rig:main|Rig:rkneeControl" "translateY" " -av"
		2 "|Rig:main|Rig:rkneeControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rFootControl" "translate" " -type \"double3\" -4.991408 0 -2.248651"
		
		2 "|Rig:main|Rig:rFootControl" "translateX" " -av"
		2 "|Rig:main|Rig:rFootControl" "translateY" " -av"
		2 "|Rig:main|Rig:rFootControl" "translateZ" " -av"
		2 "|Rig:main|Rig:rFootControl" "rotate" " -type \"double3\" 0 -50.684297 0"
		
		2 "|Rig:main|Rig:rFootControl" "rotateY" " -av"
		2 "|Rig:main|Rig:rFootControl" "ankleLift" " -av -k 1 0"
		2 "|Rig:main|Rig:rFootControl" "rockL" " -av -k 1 10.2"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl" 
		"rotateX" " -av"
		5 4 "RigRN" "|Rig:main.spineIKFK" "RigRN.placeHolderList[134]" ""
		5 4 "RigRN" "|Rig:main.translateX" "RigRN.placeHolderList[135]" ""
		5 4 "RigRN" "|Rig:main.translateY" "RigRN.placeHolderList[136]" ""
		5 4 "RigRN" "|Rig:main.translateZ" "RigRN.placeHolderList[137]" ""
		5 4 "RigRN" "|Rig:main.rotateX" "RigRN.placeHolderList[138]" ""
		5 4 "RigRN" "|Rig:main.rotateY" "RigRN.placeHolderList[139]" ""
		5 4 "RigRN" "|Rig:main.rotateZ" "RigRN.placeHolderList[140]" ""
		5 4 "RigRN" "|Rig:main.lArmIKFK" "RigRN.placeHolderList[141]" ""
		5 4 "RigRN" "|Rig:main.rArmIKFK" "RigRN.placeHolderList[142]" ""
		5 4 "RigRN" "|Rig:main.rLegIKFK" "RigRN.placeHolderList[143]" ""
		5 4 "RigRN" "|Rig:main.lLegIKFK" "RigRN.placeHolderList[144]" ""
		5 4 "RigRN" "|Rig:main.visibility" "RigRN.placeHolderList[145]" ""
		5 4 "RigRN" "|Rig:main|Rig:mainShape.visibility" "RigRN.placeHolderList[146]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateX" "RigRN.placeHolderList[147]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateY" "RigRN.placeHolderList[148]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.translateZ" "RigRN.placeHolderList[149]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateX" "RigRN.placeHolderList[150]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateY" "RigRN.placeHolderList[151]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl.rotateZ" "RigRN.placeHolderList[152]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateX" 
		"RigRN.placeHolderList[153]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateY" 
		"RigRN.placeHolderList[154]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:PelvisControl.rotateZ" 
		"RigRN.placeHolderList[155]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.stretchSpine" 
		"RigRN.placeHolderList[156]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateX" 
		"RigRN.placeHolderList[157]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateY" 
		"RigRN.placeHolderList[158]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol.rotateZ" 
		"RigRN.placeHolderList[159]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateX" 
		"RigRN.placeHolderList[160]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateY" 
		"RigRN.placeHolderList[161]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol.rotateZ" 
		"RigRN.placeHolderList[162]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateX" 
		"RigRN.placeHolderList[163]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateY" 
		"RigRN.placeHolderList[164]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol.rotateZ" 
		"RigRN.placeHolderList[165]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateX" 
		"RigRN.placeHolderList[166]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateY" 
		"RigRN.placeHolderList[167]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_spine_0FKcontrolZeroGroup|Rig:Ref:bip_spine_0FKcontrol|Rig:Ref:bip_spine_1FKcontrolZeroGroup|Rig:Ref:bip_spine_1FKcontrol|Rig:Ref:bip_spine_2FKcontrolZeroGroup|Rig:Ref:bip_spine_2FKcontrol|Rig:Ref:bip_spine_3FKcontrolZeroGroup|Rig:Ref:bip_spine_3FKcontrol.rotateZ" 
		"RigRN.placeHolderList[168]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateY" "RigRN.placeHolderList[169]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateX" "RigRN.placeHolderList[170]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.rotateZ" "RigRN.placeHolderList[171]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateX" 
		"RigRN.placeHolderList[172]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateY" 
		"RigRN.placeHolderList[173]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:ikChest.translateZ" 
		"RigRN.placeHolderList[174]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateX" 
		"RigRN.placeHolderList[175]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateY" 
		"RigRN.placeHolderList[176]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK.rotateZ" 
		"RigRN.placeHolderList[177]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK.rotateX" 
		"RigRN.placeHolderList[178]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateX" 
		"RigRN.placeHolderList[179]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateY" 
		"RigRN.placeHolderList[180]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK.rotateZ" 
		"RigRN.placeHolderList[181]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateX" 
		"RigRN.placeHolderList[182]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateY" 
		"RigRN.placeHolderList[183]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_LFKZeroGroup|Rig:Ref:bip_hip_LFK|Rig:Ref:bip_knee_LFKZeroGroup|Rig:Ref:bip_knee_LFK|Rig:Ref:bip_foot_LFKZeroGroup|Rig:Ref:bip_foot_LFK|Rig:Ref:bip_toe_LFKZeroGroup|Rig:Ref:bip_toe_LFK.rotateZ" 
		"RigRN.placeHolderList[184]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateX" 
		"RigRN.placeHolderList[185]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateY" 
		"RigRN.placeHolderList[186]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK.rotateZ" 
		"RigRN.placeHolderList[187]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK.rotateX" 
		"RigRN.placeHolderList[188]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateX" 
		"RigRN.placeHolderList[189]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateY" 
		"RigRN.placeHolderList[190]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK.rotateZ" 
		"RigRN.placeHolderList[191]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateX" 
		"RigRN.placeHolderList[192]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateY" 
		"RigRN.placeHolderList[193]" ""
		5 4 "RigRN" "|Rig:main|Rig:UpperbodyControl|Rig:Ref:bip_hip_RFKZeroGroup|Rig:Ref:bip_hip_RFK|Rig:Ref:bip_knee_RFKZeroGroup|Rig:Ref:bip_knee_RFK|Rig:Ref:bip_foot_RFKZeroGroup|Rig:Ref:bip_foot_RFK|Rig:Ref:bip_toe_RFKZeroGroup|Rig:Ref:bip_toe_RFK.rotateZ" 
		"RigRN.placeHolderList[194]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateX" 
		"RigRN.placeHolderList[195]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateY" 
		"RigRN.placeHolderList[196]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl.rotateZ" 
		"RigRN.placeHolderList[197]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateX" 
		"RigRN.placeHolderList[198]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateY" 
		"RigRN.placeHolderList[199]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK.rotateZ" 
		"RigRN.placeHolderList[200]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK.rotateX" 
		"RigRN.placeHolderList[201]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateX" 
		"RigRN.placeHolderList[202]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateY" 
		"RigRN.placeHolderList[203]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:lShoulderControlZeroGroup|Rig:lShoulderControl|Rig:Ref:bip_upperArm_LFKZeroGroup|Rig:Ref:bip_upperArm_LFK|Rig:Ref:bip_lowerArm_LFKZeroGroup|Rig:Ref:bip_lowerArm_LFK|Rig:Ref:bip_hand_LFKZeroGroup|Rig:Ref:bip_hand_LFK.rotateZ" 
		"RigRN.placeHolderList[204]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateX" 
		"RigRN.placeHolderList[205]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateY" 
		"RigRN.placeHolderList[206]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl.rotateZ" 
		"RigRN.placeHolderList[207]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateX" 
		"RigRN.placeHolderList[208]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateY" 
		"RigRN.placeHolderList[209]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK.rotateZ" 
		"RigRN.placeHolderList[210]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK.rotateX" 
		"RigRN.placeHolderList[211]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateX" 
		"RigRN.placeHolderList[212]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateY" 
		"RigRN.placeHolderList[213]" ""
		5 4 "RigRN" "|Rig:main|Rig:chestParent|Rig:rShoulderControlZeroGroup|Rig:rShoulderControl|Rig:Ref:bip_upperArm_RFKZeroGroup|Rig:Ref:bip_upperArm_RFK|Rig:Ref:bip_lowerArm_RFKZeroGroup|Rig:Ref:bip_lowerArm_RFK|Rig:Ref:bip_hand_RFKZeroGroup|Rig:Ref:bip_hand_RFK.rotateZ" 
		"RigRN.placeHolderList[214]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateX" 
		"RigRN.placeHolderList[215]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateY" 
		"RigRN.placeHolderList[216]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.rotateZ" 
		"RigRN.placeHolderList[217]" ""
		5 4 "RigRN" "|Rig:main|Rig:neckControlLockParent|Rig:neckControl.lock" 
		"RigRN.placeHolderList[218]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateX" 
		"RigRN.placeHolderList[219]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateY" 
		"RigRN.placeHolderList[220]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.rotateZ" 
		"RigRN.placeHolderList[221]" ""
		5 4 "RigRN" "|Rig:main|Rig:headControlLockParent|Rig:headControl.lock" 
		"RigRN.placeHolderList[222]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateX" 
		"RigRN.placeHolderList[223]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateY" 
		"RigRN.placeHolderList[224]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.translateZ" 
		"RigRN.placeHolderList[225]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.aim" 
		"RigRN.placeHolderList[226]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.lock" 
		"RigRN.placeHolderList[227]" ""
		5 4 "RigRN" "|Rig:main|Rig:likHandControlGroup|Rig:likHandControlWeaponGroup|Rig:likHandControlZeroGroup|Rig:likHandControl.weaponParent" 
		"RigRN.placeHolderList[228]" ""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateX" "RigRN.placeHolderList[229]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateY" "RigRN.placeHolderList[230]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lElbowControl.translateZ" "RigRN.placeHolderList[231]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateX" 
		"RigRN.placeHolderList[232]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateY" 
		"RigRN.placeHolderList[233]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.rotateZ" 
		"RigRN.placeHolderList[234]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_thumb_0_LControlRoll" 
		"RigRN.placeHolderList[235]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_index_0_LControlRoll" 
		"RigRN.placeHolderList[236]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_middle_0_LControlRoll" 
		"RigRN.placeHolderList[237]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_ring_0_LControlRoll" 
		"RigRN.placeHolderList[238]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.bip_pinky_0_LControlRoll" 
		"RigRN.placeHolderList[239]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl.visibility" 
		"RigRN.placeHolderList[240]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateX" 
		"RigRN.placeHolderList[241]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateY" 
		"RigRN.placeHolderList[242]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl.rotateZ" 
		"RigRN.placeHolderList[243]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl.rotateX" 
		"RigRN.placeHolderList[244]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_thumb_0_LControlZeroGroup|Rig:Ref:bip_thumb_0_LControlrollGroup|Rig:Ref:bip_thumb_0_LControl|Rig:Ref:bip_thumb_1_LControlZeroGroup|Rig:Ref:bip_thumb_1_LControlrollGroup|Rig:Ref:bip_thumb_1_LControl|Rig:Ref:bip_thumb_2_LControlZeroGroup|Rig:Ref:bip_thumb_2_LControlrollGroup|Rig:Ref:bip_thumb_2_LControl.rotateX" 
		"RigRN.placeHolderList[245]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateX" 
		"RigRN.placeHolderList[246]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateY" 
		"RigRN.placeHolderList[247]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl.rotateZ" 
		"RigRN.placeHolderList[248]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl.rotateX" 
		"RigRN.placeHolderList[249]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_index_0_LControlZeroGroup|Rig:Ref:bip_index_0_LControlrollGroup|Rig:Ref:bip_index_0_LControlLiftGroup|Rig:Ref:bip_index_0_LControl|Rig:Ref:bip_index_1_LControlZeroGroup|Rig:Ref:bip_index_1_LControlrollGroup|Rig:Ref:bip_index_1_LControl|Rig:Ref:bip_index_2_LControlZeroGroup|Rig:Ref:bip_index_2_LControlrollGroup|Rig:Ref:bip_index_2_LControl.rotateX" 
		"RigRN.placeHolderList[250]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateX" 
		"RigRN.placeHolderList[251]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateY" 
		"RigRN.placeHolderList[252]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl.rotateZ" 
		"RigRN.placeHolderList[253]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl.rotateX" 
		"RigRN.placeHolderList[254]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_middle_0_LControlZeroGroup|Rig:Ref:bip_middle_0_LControlrollGroup|Rig:Ref:bip_middle_0_LControlLiftGroup|Rig:Ref:bip_middle_0_LControl|Rig:Ref:bip_middle_1_LControlZeroGroup|Rig:Ref:bip_middle_1_LControlrollGroup|Rig:Ref:bip_middle_1_LControl|Rig:Ref:bip_middle_2_LControlZeroGroup|Rig:Ref:bip_middle_2_LControlrollGroup|Rig:Ref:bip_middle_2_LControl.rotateX" 
		"RigRN.placeHolderList[255]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateX" 
		"RigRN.placeHolderList[256]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateY" 
		"RigRN.placeHolderList[257]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl.rotateZ" 
		"RigRN.placeHolderList[258]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl.rotateX" 
		"RigRN.placeHolderList[259]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_ring_0_LControlZeroGroup|Rig:Ref:bip_ring_0_LControlrollGroup|Rig:Ref:bip_ring_0_LControlLiftGroup|Rig:Ref:bip_ring_0_LControl|Rig:Ref:bip_ring_1_LControlZeroGroup|Rig:Ref:bip_ring_1_LControlrollGroup|Rig:Ref:bip_ring_1_LControl|Rig:Ref:bip_ring_2_LControlZeroGroup|Rig:Ref:bip_ring_2_LControlrollGroup|Rig:Ref:bip_ring_2_LControl.rotateX" 
		"RigRN.placeHolderList[260]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateX" 
		"RigRN.placeHolderList[261]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateY" 
		"RigRN.placeHolderList[262]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl.rotateZ" 
		"RigRN.placeHolderList[263]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl.rotateX" 
		"RigRN.placeHolderList[264]" ""
		5 4 "RigRN" "|Rig:main|Rig:lHandControlGroup|Rig:lHandControl|Rig:Ref:bip_pinky_0_LControlZeroGroup|Rig:Ref:bip_pinky_0_LControlrollGroup|Rig:Ref:bip_pinky_0_LControlLiftGroup|Rig:Ref:bip_pinky_0_LControl|Rig:Ref:bip_pinky_1_LControlZeroGroup|Rig:Ref:bip_pinky_1_LControlrollGroup|Rig:Ref:bip_pinky_1_LControl|Rig:Ref:bip_pinky_2_LControlZeroGroup|Rig:Ref:bip_pinky_2_LControlrollGroup|Rig:Ref:bip_pinky_2_LControl.rotateX" 
		"RigRN.placeHolderList[265]" ""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateX" "RigRN.placeHolderList[266]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateY" "RigRN.placeHolderList[267]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lkneeControl.translateZ" "RigRN.placeHolderList[268]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateX" "RigRN.placeHolderList[269]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateY" "RigRN.placeHolderList[270]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.translateZ" "RigRN.placeHolderList[271]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateX" "RigRN.placeHolderList[272]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateY" "RigRN.placeHolderList[273]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rotateZ" "RigRN.placeHolderList[274]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.heelRock" "RigRN.placeHolderList[275]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleLift" "RigRN.placeHolderList[276]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.toeLift" "RigRN.placeHolderList[277]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ankleBank" "RigRN.placeHolderList[278]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockR" "RigRN.placeHolderList[279]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.rockL" "RigRN.placeHolderList[280]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lFootControl.ballPivot" "RigRN.placeHolderList[281]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateX" 
		"RigRN.placeHolderList[282]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateY" 
		"RigRN.placeHolderList[283]" ""
		5 4 "RigRN" "|Rig:main|Rig:lReverseControlZeroGroup|Rig:lReverseControl|Rig:lReverseBallZeroGroup|Rig:lReverseBall|Rig:lReverseLrollZeroGroup|Rig:lReverseLroll|Rig:lReverseRrollZeroGroup|Rig:lReverseRroll|Rig:lReverseHeelLiftZeroGroup|Rig:lReverseHeelLift|Rig:lToeControlZeroGroup|Rig:lToeControl.rotateZ" 
		"RigRN.placeHolderList[284]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateX" 
		"RigRN.placeHolderList[285]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateY" 
		"RigRN.placeHolderList[286]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.translateZ" 
		"RigRN.placeHolderList[287]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.aim" 
		"RigRN.placeHolderList[288]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.lock" 
		"RigRN.placeHolderList[289]" ""
		5 4 "RigRN" "|Rig:main|Rig:rikHandControlGroup|Rig:rikHandControlWeaponGroup|Rig:rikHandControlZeroGroup|Rig:rikHandControl.weaponParent" 
		"RigRN.placeHolderList[290]" ""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateX" "RigRN.placeHolderList[291]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateY" "RigRN.placeHolderList[292]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rElbowControl.translateZ" "RigRN.placeHolderList[293]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateX" 
		"RigRN.placeHolderList[294]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateY" 
		"RigRN.placeHolderList[295]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.rotateZ" 
		"RigRN.placeHolderList[296]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_thumb_0_RControlRoll" 
		"RigRN.placeHolderList[297]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_index_0_RControlRoll" 
		"RigRN.placeHolderList[298]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_middle_0_RControlRoll" 
		"RigRN.placeHolderList[299]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_ring_0_RControlRoll" 
		"RigRN.placeHolderList[300]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.bip_pinky_0_RControlRoll" 
		"RigRN.placeHolderList[301]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl.visibility" 
		"RigRN.placeHolderList[302]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateX" 
		"RigRN.placeHolderList[303]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateY" 
		"RigRN.placeHolderList[304]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl.rotateZ" 
		"RigRN.placeHolderList[305]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl.rotateX" 
		"RigRN.placeHolderList[306]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_thumb_0_RControlZeroGroup|Rig:Ref:bip_thumb_0_RControlrollGroup|Rig:Ref:bip_thumb_0_RControl|Rig:Ref:bip_thumb_1_RControlZeroGroup|Rig:Ref:bip_thumb_1_RControlrollGroup|Rig:Ref:bip_thumb_1_RControl|Rig:Ref:bip_thumb_2_RControlZeroGroup|Rig:Ref:bip_thumb_2_RControlrollGroup|Rig:Ref:bip_thumb_2_RControl.rotateX" 
		"RigRN.placeHolderList[307]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateX" 
		"RigRN.placeHolderList[308]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateY" 
		"RigRN.placeHolderList[309]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl.rotateZ" 
		"RigRN.placeHolderList[310]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl.rotateX" 
		"RigRN.placeHolderList[311]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_index_0_RControlZeroGroup|Rig:Ref:bip_index_0_RControlrollGroup|Rig:Ref:bip_index_0_RControlLiftGroup|Rig:Ref:bip_index_0_RControl|Rig:Ref:bip_index_1_RControlZeroGroup|Rig:Ref:bip_index_1_RControlrollGroup|Rig:Ref:bip_index_1_RControl|Rig:Ref:bip_index_2_RControlZeroGroup|Rig:Ref:bip_index_2_RControlrollGroup|Rig:Ref:bip_index_2_RControl.rotateX" 
		"RigRN.placeHolderList[312]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateX" 
		"RigRN.placeHolderList[313]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateY" 
		"RigRN.placeHolderList[314]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl.rotateZ" 
		"RigRN.placeHolderList[315]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl.rotateX" 
		"RigRN.placeHolderList[316]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_middle_0_RControlZeroGroup|Rig:Ref:bip_middle_0_RControlrollGroup|Rig:Ref:bip_middle_0_RControlLiftGroup|Rig:Ref:bip_middle_0_RControl|Rig:Ref:bip_middle_1_RControlZeroGroup|Rig:Ref:bip_middle_1_RControlrollGroup|Rig:Ref:bip_middle_1_RControl|Rig:Ref:bip_middle_2_RControlZeroGroup|Rig:Ref:bip_middle_2_RControlrollGroup|Rig:Ref:bip_middle_2_RControl.rotateX" 
		"RigRN.placeHolderList[317]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateX" 
		"RigRN.placeHolderList[318]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateY" 
		"RigRN.placeHolderList[319]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl.rotateZ" 
		"RigRN.placeHolderList[320]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl.rotateX" 
		"RigRN.placeHolderList[321]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_ring_0_RControlZeroGroup|Rig:Ref:bip_ring_0_RControlrollGroup|Rig:Ref:bip_ring_0_RControlLiftGroup|Rig:Ref:bip_ring_0_RControl|Rig:Ref:bip_ring_1_RControlZeroGroup|Rig:Ref:bip_ring_1_RControlrollGroup|Rig:Ref:bip_ring_1_RControl|Rig:Ref:bip_ring_2_RControlZeroGroup|Rig:Ref:bip_ring_2_RControlrollGroup|Rig:Ref:bip_ring_2_RControl.rotateX" 
		"RigRN.placeHolderList[322]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateX" 
		"RigRN.placeHolderList[323]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateY" 
		"RigRN.placeHolderList[324]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl.rotateZ" 
		"RigRN.placeHolderList[325]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl.rotateX" 
		"RigRN.placeHolderList[326]" ""
		5 4 "RigRN" "|Rig:main|Rig:rHandControlGroup|Rig:rHandControl|Rig:Ref:bip_pinky_0_RControlZeroGroup|Rig:Ref:bip_pinky_0_RControlrollGroup|Rig:Ref:bip_pinky_0_RControlLiftGroup|Rig:Ref:bip_pinky_0_RControl|Rig:Ref:bip_pinky_1_RControlZeroGroup|Rig:Ref:bip_pinky_1_RControlrollGroup|Rig:Ref:bip_pinky_1_RControl|Rig:Ref:bip_pinky_2_RControlZeroGroup|Rig:Ref:bip_pinky_2_RControlrollGroup|Rig:Ref:bip_pinky_2_RControl.rotateX" 
		"RigRN.placeHolderList[327]" ""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateX" "RigRN.placeHolderList[328]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateY" "RigRN.placeHolderList[329]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rkneeControl.translateZ" "RigRN.placeHolderList[330]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateX" "RigRN.placeHolderList[331]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateY" "RigRN.placeHolderList[332]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.translateZ" "RigRN.placeHolderList[333]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateX" "RigRN.placeHolderList[334]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateY" "RigRN.placeHolderList[335]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rotateZ" "RigRN.placeHolderList[336]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.heelRock" "RigRN.placeHolderList[337]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleLift" "RigRN.placeHolderList[338]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.toeLift" "RigRN.placeHolderList[339]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ankleBank" "RigRN.placeHolderList[340]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockR" "RigRN.placeHolderList[341]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.rockL" "RigRN.placeHolderList[342]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rFootControl.ballPivot" "RigRN.placeHolderList[343]" 
		""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateX" 
		"RigRN.placeHolderList[344]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateY" 
		"RigRN.placeHolderList[345]" ""
		5 4 "RigRN" "|Rig:main|Rig:rReverseControlZeroGroup|Rig:rReverseControl|Rig:rReverseBallZeroGroup|Rig:rReverseBall|Rig:rReverseLrollZeroGroup|Rig:rReverseLroll|Rig:rReverseRrollZeroGroup|Rig:rReverseRroll|Rig:rReverseHeelLiftZeroGroup|Rig:rReverseHeelLift|Rig:rToeControlZeroGroup|Rig:rToeControl.rotateZ" 
		"RigRN.placeHolderList[346]" "";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode animCurveTU -n "Rig:mainShape_visibility";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  0 1 24 1 55 1 60 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
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
createNode animCurveTU -n "Rig:main_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Rig:main_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:main_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:main_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:main_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:main_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:main_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:main_rArmIKFK";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:main_lArmIKFK";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:main_rLegIKFK";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:main_lLegIKFK";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Rig:main_spineIKFK";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:UpperbodyControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1.5058913599999999;
createNode animCurveTL -n "Rig:UpperbodyControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -3.9644975766891193;
createNode animCurveTL -n "Rig:UpperbodyControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -0.501441;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -12.48783;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -31.493433;
createNode animCurveTA -n "Rig:UpperbodyControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 5.0898028030000004;
createNode animCurveTA -n "Rig:PelvisControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:PelvisControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:PelvisControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 31.89519267845337;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 10.646463;
createNode animCurveTA -n "Rig:Ref:bip_spine_0FKcontrol_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 6.237907;
createNode animCurveTU -n "Rig:Ref:bip_spine_0FKcontrol_stretchSpine";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1.476875;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 5.8949019665980842;
createNode animCurveTA -n "Rig:Ref:bip_spine_1FKcontrol_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_2FKcontrol_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_spine_3FKcontrol_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lShoulderControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -16.97184777;
createNode animCurveTA -n "Rig:lShoulderControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -0.83048613839999996;
createNode animCurveTA -n "Rig:lShoulderControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 5.4324170550000002;
createNode animCurveTA -n "Rig:rShoulderControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -0.41494249779999998;
createNode animCurveTA -n "Rig:rShoulderControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 7.5825663580000011;
createNode animCurveTA -n "Rig:rShoulderControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 3.5050322299999999;
createNode animCurveTA -n "Rig:neckControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -10.5239212;
createNode animCurveTA -n "Rig:neckControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -33.65084073378074;
createNode animCurveTA -n "Rig:neckControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -7.1443625229999999;
createNode animCurveTU -n "Rig:neckControl_lock";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Rig:headControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 10.465505271074633;
createNode animCurveTA -n "Rig:headControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 10.357568542293677;
createNode animCurveTA -n "Rig:headControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -11.335639308101355;
createNode animCurveTU -n "Rig:headControl_lock";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Rig:likHandControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 6.5328497099999998;
createNode animCurveTL -n "Rig:likHandControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 4.6906544869999998;
createNode animCurveTL -n "Rig:likHandControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 23.868925690000001;
createNode animCurveTU -n "Rig:likHandControl_lock";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:likHandControl_aim";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:likHandControl_weaponParent";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "Rig:lElbowControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 111.878154;
createNode animCurveTL -n "Rig:lElbowControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -9.515101;
createNode animCurveTL -n "Rig:lElbowControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -33.62945;
createNode animCurveTU -n "Rig:lHandControl_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Rig:lHandControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -36.926726540473013;
createNode animCurveTA -n "Rig:lHandControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -11.831784854072676;
createNode animCurveTA -n "Rig:lHandControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -40.923034573745113;
createNode animCurveTU -n "Rig:lHandControl_bip_thumb_0_LControlRoll";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_bip_index_0_LControlRoll";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_bip_middle_0_LControlRoll";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_bip_ring_0_LControlRoll";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lHandControl_bip_pinky_0_LControlRoll";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 11.894811239999999;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -4.3107463330000009;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_LControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 9.7363786129999994;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -36.804682640000003;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -20.07479099;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 20.329374;
createNode animCurveTA -n "Rig:Ref:bip_index_0_LControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 16.241381;
createNode animCurveTA -n "Rig:Ref:bip_index_1_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 9.4400829759999993;
createNode animCurveTA -n "Rig:Ref:bip_index_2_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 36.385680809999997;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 7.5333288010000006;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 19.729910530000002;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_LControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 9.0504595279999993;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 24.937231180000001;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 45.78891728;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 7.3259490380000001;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 16.883751090000001;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_LControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -1.1203322950000001;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 36.930668160000003;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 22.928121449999999;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 20.100707920000001;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_LControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -18.111963;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 43.04259235;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_LControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 6.3611093630000008e-015;
createNode animCurveTL -n "Rig:lkneeControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 3.7323324680000001;
createNode animCurveTL -n "Rig:lkneeControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -4.391312;
createNode animCurveTL -n "Rig:lkneeControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 29.269451;
createNode animCurveTL -n "Rig:lFootControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 3.0965272160000001;
createNode animCurveTL -n "Rig:lFootControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:lFootControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 7.879554959;
createNode animCurveTA -n "Rig:lFootControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lFootControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 27.556535;
createNode animCurveTA -n "Rig:lFootControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_heelRock";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_ankleLift";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_toeLift";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_ankleBank";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_rockL";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_rockR";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:lFootControl_ballPivot";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lToeControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lToeControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:lToeControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:rikHandControl_translateX";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 0.40440836169829353 60 0.40440836169829353;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTL -n "Rig:rikHandControl_translateY";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 6.2331480298016775 60 6.2331480298016775;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTL -n "Rig:rikHandControl_translateZ";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 -5.0255396299102282 60 -5.0255396299102282;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Rig:rikHandControl_lock";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Rig:rikHandControl_aim";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Rig:rikHandControl_weaponParent";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTL -n "Rig:rElbowControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 6.7249317499999997;
createNode animCurveTL -n "Rig:rElbowControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -3.717917;
createNode animCurveTL -n "Rig:rElbowControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -11.943482;
createNode animCurveTU -n "Rig:rHandControl_visibility";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Rig:rHandControl_rotateX";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 -11.28254506399942 60 -11.28254506399942;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTA -n "Rig:rHandControl_rotateY";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 -7.0946759498543432 60 -7.0946759498543432;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTA -n "Rig:rHandControl_rotateZ";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 7.7291883621171387 60 7.7291883621171387;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Rig:rHandControl_bip_thumb_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Rig:rHandControl_bip_index_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 -0.75405405405405412 60 -0.75405405405405412;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Rig:rHandControl_bip_middle_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 1.7383783783783779 60 1.7383783783783779;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Rig:rHandControl_bip_ring_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 14.3 60 14.3;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Rig:rHandControl_bip_pinky_0_RControlRoll";
	setAttr ".tan" 16;
	setAttr -s 2 ".ktv[0:1]"  0 14.3 60 14.3;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_thumb_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_index_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_index_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_index_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 18.694455310000002 60 18.694455310000002;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_middle_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 -5.704917 60 -5.704917;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_middle_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_middle_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 16.371695330000005 60 16.371695330000005;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 4.8880203140000003 60 4.8880203140000003;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 15.068063069999999 60 15.068063069999999;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_ring_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 -11.87273937 60 -11.87273937;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_ring_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 17.184807249999999 60 17.184807249999999;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_ring_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 -11.660595020000001 60 -11.660595020000001;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateY";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 24.283488470000002 60 24.283488470000002;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_0_RControl_rotateZ";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 -23.022451799999999 60 -23.022451799999999;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_1_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "Rig:Ref:bip_pinky_2_RControl_rotateX";
	setAttr ".tan" 1;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
	setAttr -s 2 ".kix[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0.033333331346511841 2;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Rig:rkneeControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -5.075394;
createNode animCurveTL -n "Rig:rkneeControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -4.271566;
createNode animCurveTL -n "Rig:rkneeControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 3.308930127;
createNode animCurveTL -n "Rig:rFootControl_translateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -4.9914081389999998;
createNode animCurveTL -n "Rig:rFootControl_translateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Rig:rFootControl_translateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -2.248651;
createNode animCurveTA -n "Rig:rFootControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rFootControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 -50.684297;
createNode animCurveTA -n "Rig:rFootControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_heelRock";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_ankleLift";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_toeLift";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_ankleBank";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_rockL";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 10.2;
createNode animCurveTU -n "Rig:rFootControl_rockR";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Rig:rFootControl_ballPivot";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rToeControl_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rToeControl_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Rig:rToeControl_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
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
		+ "\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
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
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 68 ".dsm";
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
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
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
	setAttr -s 2 ".sol";
connectAttr "Rig:main_spineIKFK.o" "RigRN.phl[134]";
connectAttr "Rig:main_translateX.o" "RigRN.phl[135]";
connectAttr "Rig:main_translateY.o" "RigRN.phl[136]";
connectAttr "Rig:main_translateZ.o" "RigRN.phl[137]";
connectAttr "Rig:main_rotateX.o" "RigRN.phl[138]";
connectAttr "Rig:main_rotateY.o" "RigRN.phl[139]";
connectAttr "Rig:main_rotateZ.o" "RigRN.phl[140]";
connectAttr "Rig:main_lArmIKFK.o" "RigRN.phl[141]";
connectAttr "Rig:main_rArmIKFK.o" "RigRN.phl[142]";
connectAttr "Rig:main_rLegIKFK.o" "RigRN.phl[143]";
connectAttr "Rig:main_lLegIKFK.o" "RigRN.phl[144]";
connectAttr "Rig:main_visibility.o" "RigRN.phl[145]";
connectAttr "Rig:mainShape_visibility.o" "RigRN.phl[146]";
connectAttr "Rig:UpperbodyControl_translateX.o" "RigRN.phl[147]";
connectAttr "Rig:UpperbodyControl_translateY.o" "RigRN.phl[148]";
connectAttr "Rig:UpperbodyControl_translateZ.o" "RigRN.phl[149]";
connectAttr "Rig:UpperbodyControl_rotateX.o" "RigRN.phl[150]";
connectAttr "Rig:UpperbodyControl_rotateY.o" "RigRN.phl[151]";
connectAttr "Rig:UpperbodyControl_rotateZ.o" "RigRN.phl[152]";
connectAttr "Rig:PelvisControl_rotateX.o" "RigRN.phl[153]";
connectAttr "Rig:PelvisControl_rotateY.o" "RigRN.phl[154]";
connectAttr "Rig:PelvisControl_rotateZ.o" "RigRN.phl[155]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_stretchSpine.o" "RigRN.phl[156]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateX.o" "RigRN.phl[157]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateY.o" "RigRN.phl[158]";
connectAttr "Rig:Ref:bip_spine_0FKcontrol_rotateZ.o" "RigRN.phl[159]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateX.o" "RigRN.phl[160]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateY.o" "RigRN.phl[161]";
connectAttr "Rig:Ref:bip_spine_1FKcontrol_rotateZ.o" "RigRN.phl[162]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateX.o" "RigRN.phl[163]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateY.o" "RigRN.phl[164]";
connectAttr "Rig:Ref:bip_spine_2FKcontrol_rotateZ.o" "RigRN.phl[165]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateX.o" "RigRN.phl[166]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateY.o" "RigRN.phl[167]";
connectAttr "Rig:Ref:bip_spine_3FKcontrol_rotateZ.o" "RigRN.phl[168]";
connectAttr "Rig:ikChest_rotateY.o" "RigRN.phl[169]";
connectAttr "Rig:ikChest_rotateX.o" "RigRN.phl[170]";
connectAttr "Rig:ikChest_rotateZ.o" "RigRN.phl[171]";
connectAttr "Rig:ikChest_translateX.o" "RigRN.phl[172]";
connectAttr "Rig:ikChest_translateY.o" "RigRN.phl[173]";
connectAttr "Rig:ikChest_translateZ.o" "RigRN.phl[174]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateX.o" "RigRN.phl[175]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateY.o" "RigRN.phl[176]";
connectAttr "Rig:Ref:bip_hip_LFK_rotateZ.o" "RigRN.phl[177]";
connectAttr "Rig:Ref:bip_knee_LFK_rotateX.o" "RigRN.phl[178]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateX.o" "RigRN.phl[179]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateY.o" "RigRN.phl[180]";
connectAttr "Rig:Ref:bip_foot_LFK_rotateZ.o" "RigRN.phl[181]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateX.o" "RigRN.phl[182]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateY.o" "RigRN.phl[183]";
connectAttr "Rig:Ref:bip_toe_LFK_rotateZ.o" "RigRN.phl[184]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateX.o" "RigRN.phl[185]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateY.o" "RigRN.phl[186]";
connectAttr "Rig:Ref:bip_hip_RFK_rotateZ.o" "RigRN.phl[187]";
connectAttr "Rig:Ref:bip_knee_RFK_rotateX.o" "RigRN.phl[188]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateX.o" "RigRN.phl[189]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateY.o" "RigRN.phl[190]";
connectAttr "Rig:Ref:bip_foot_RFK_rotateZ.o" "RigRN.phl[191]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateX.o" "RigRN.phl[192]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateY.o" "RigRN.phl[193]";
connectAttr "Rig:Ref:bip_toe_RFK_rotateZ.o" "RigRN.phl[194]";
connectAttr "Rig:lShoulderControl_rotateX.o" "RigRN.phl[195]";
connectAttr "Rig:lShoulderControl_rotateY.o" "RigRN.phl[196]";
connectAttr "Rig:lShoulderControl_rotateZ.o" "RigRN.phl[197]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateX.o" "RigRN.phl[198]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateY.o" "RigRN.phl[199]";
connectAttr "Rig:Ref:bip_upperArm_LFK_rotateZ.o" "RigRN.phl[200]";
connectAttr "Rig:Ref:bip_lowerArm_LFK_rotateX.o" "RigRN.phl[201]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateX.o" "RigRN.phl[202]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateY.o" "RigRN.phl[203]";
connectAttr "Rig:Ref:bip_hand_LFK_rotateZ.o" "RigRN.phl[204]";
connectAttr "Rig:rShoulderControl_rotateX.o" "RigRN.phl[205]";
connectAttr "Rig:rShoulderControl_rotateY.o" "RigRN.phl[206]";
connectAttr "Rig:rShoulderControl_rotateZ.o" "RigRN.phl[207]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateX.o" "RigRN.phl[208]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateY.o" "RigRN.phl[209]";
connectAttr "Rig:Ref:bip_upperArm_RFK_rotateZ.o" "RigRN.phl[210]";
connectAttr "Rig:Ref:bip_lowerArm_RFK_rotateX.o" "RigRN.phl[211]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateX.o" "RigRN.phl[212]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateY.o" "RigRN.phl[213]";
connectAttr "Rig:Ref:bip_hand_RFK_rotateZ.o" "RigRN.phl[214]";
connectAttr "Rig:neckControl_rotateX.o" "RigRN.phl[215]";
connectAttr "Rig:neckControl_rotateY.o" "RigRN.phl[216]";
connectAttr "Rig:neckControl_rotateZ.o" "RigRN.phl[217]";
connectAttr "Rig:neckControl_lock.o" "RigRN.phl[218]";
connectAttr "Rig:headControl_rotateX.o" "RigRN.phl[219]";
connectAttr "Rig:headControl_rotateY.o" "RigRN.phl[220]";
connectAttr "Rig:headControl_rotateZ.o" "RigRN.phl[221]";
connectAttr "Rig:headControl_lock.o" "RigRN.phl[222]";
connectAttr "Rig:likHandControl_translateX.o" "RigRN.phl[223]";
connectAttr "Rig:likHandControl_translateY.o" "RigRN.phl[224]";
connectAttr "Rig:likHandControl_translateZ.o" "RigRN.phl[225]";
connectAttr "Rig:likHandControl_aim.o" "RigRN.phl[226]";
connectAttr "Rig:likHandControl_lock.o" "RigRN.phl[227]";
connectAttr "Rig:likHandControl_weaponParent.o" "RigRN.phl[228]";
connectAttr "Rig:lElbowControl_translateX.o" "RigRN.phl[229]";
connectAttr "Rig:lElbowControl_translateY.o" "RigRN.phl[230]";
connectAttr "Rig:lElbowControl_translateZ.o" "RigRN.phl[231]";
connectAttr "Rig:lHandControl_rotateX.o" "RigRN.phl[232]";
connectAttr "Rig:lHandControl_rotateY.o" "RigRN.phl[233]";
connectAttr "Rig:lHandControl_rotateZ.o" "RigRN.phl[234]";
connectAttr "Rig:lHandControl_bip_thumb_0_LControlRoll.o" "RigRN.phl[235]";
connectAttr "Rig:lHandControl_bip_index_0_LControlRoll.o" "RigRN.phl[236]";
connectAttr "Rig:lHandControl_bip_middle_0_LControlRoll.o" "RigRN.phl[237]";
connectAttr "Rig:lHandControl_bip_ring_0_LControlRoll.o" "RigRN.phl[238]";
connectAttr "Rig:lHandControl_bip_pinky_0_LControlRoll.o" "RigRN.phl[239]";
connectAttr "Rig:lHandControl_visibility.o" "RigRN.phl[240]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateX.o" "RigRN.phl[241]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateY.o" "RigRN.phl[242]";
connectAttr "Rig:Ref:bip_thumb_0_LControl_rotateZ.o" "RigRN.phl[243]";
connectAttr "Rig:Ref:bip_thumb_1_LControl_rotateX.o" "RigRN.phl[244]";
connectAttr "Rig:Ref:bip_thumb_2_LControl_rotateX.o" "RigRN.phl[245]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateX.o" "RigRN.phl[246]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateY.o" "RigRN.phl[247]";
connectAttr "Rig:Ref:bip_index_0_LControl_rotateZ.o" "RigRN.phl[248]";
connectAttr "Rig:Ref:bip_index_1_LControl_rotateX.o" "RigRN.phl[249]";
connectAttr "Rig:Ref:bip_index_2_LControl_rotateX.o" "RigRN.phl[250]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateX.o" "RigRN.phl[251]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateY.o" "RigRN.phl[252]";
connectAttr "Rig:Ref:bip_middle_0_LControl_rotateZ.o" "RigRN.phl[253]";
connectAttr "Rig:Ref:bip_middle_1_LControl_rotateX.o" "RigRN.phl[254]";
connectAttr "Rig:Ref:bip_middle_2_LControl_rotateX.o" "RigRN.phl[255]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateX.o" "RigRN.phl[256]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateY.o" "RigRN.phl[257]";
connectAttr "Rig:Ref:bip_ring_0_LControl_rotateZ.o" "RigRN.phl[258]";
connectAttr "Rig:Ref:bip_ring_1_LControl_rotateX.o" "RigRN.phl[259]";
connectAttr "Rig:Ref:bip_ring_2_LControl_rotateX.o" "RigRN.phl[260]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateX.o" "RigRN.phl[261]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateY.o" "RigRN.phl[262]";
connectAttr "Rig:Ref:bip_pinky_0_LControl_rotateZ.o" "RigRN.phl[263]";
connectAttr "Rig:Ref:bip_pinky_1_LControl_rotateX.o" "RigRN.phl[264]";
connectAttr "Rig:Ref:bip_pinky_2_LControl_rotateX.o" "RigRN.phl[265]";
connectAttr "Rig:lkneeControl_translateX.o" "RigRN.phl[266]";
connectAttr "Rig:lkneeControl_translateY.o" "RigRN.phl[267]";
connectAttr "Rig:lkneeControl_translateZ.o" "RigRN.phl[268]";
connectAttr "Rig:lFootControl_translateX.o" "RigRN.phl[269]";
connectAttr "Rig:lFootControl_translateY.o" "RigRN.phl[270]";
connectAttr "Rig:lFootControl_translateZ.o" "RigRN.phl[271]";
connectAttr "Rig:lFootControl_rotateX.o" "RigRN.phl[272]";
connectAttr "Rig:lFootControl_rotateY.o" "RigRN.phl[273]";
connectAttr "Rig:lFootControl_rotateZ.o" "RigRN.phl[274]";
connectAttr "Rig:lFootControl_heelRock.o" "RigRN.phl[275]";
connectAttr "Rig:lFootControl_ankleLift.o" "RigRN.phl[276]";
connectAttr "Rig:lFootControl_toeLift.o" "RigRN.phl[277]";
connectAttr "Rig:lFootControl_ankleBank.o" "RigRN.phl[278]";
connectAttr "Rig:lFootControl_rockR.o" "RigRN.phl[279]";
connectAttr "Rig:lFootControl_rockL.o" "RigRN.phl[280]";
connectAttr "Rig:lFootControl_ballPivot.o" "RigRN.phl[281]";
connectAttr "Rig:lToeControl_rotateX.o" "RigRN.phl[282]";
connectAttr "Rig:lToeControl_rotateY.o" "RigRN.phl[283]";
connectAttr "Rig:lToeControl_rotateZ.o" "RigRN.phl[284]";
connectAttr "Rig:rikHandControl_translateX.o" "RigRN.phl[285]";
connectAttr "Rig:rikHandControl_translateY.o" "RigRN.phl[286]";
connectAttr "Rig:rikHandControl_translateZ.o" "RigRN.phl[287]";
connectAttr "Rig:rikHandControl_aim.o" "RigRN.phl[288]";
connectAttr "Rig:rikHandControl_lock.o" "RigRN.phl[289]";
connectAttr "Rig:rikHandControl_weaponParent.o" "RigRN.phl[290]";
connectAttr "Rig:rElbowControl_translateX.o" "RigRN.phl[291]";
connectAttr "Rig:rElbowControl_translateY.o" "RigRN.phl[292]";
connectAttr "Rig:rElbowControl_translateZ.o" "RigRN.phl[293]";
connectAttr "Rig:rHandControl_rotateX.o" "RigRN.phl[294]";
connectAttr "Rig:rHandControl_rotateY.o" "RigRN.phl[295]";
connectAttr "Rig:rHandControl_rotateZ.o" "RigRN.phl[296]";
connectAttr "Rig:rHandControl_bip_thumb_0_RControlRoll.o" "RigRN.phl[297]";
connectAttr "Rig:rHandControl_bip_index_0_RControlRoll.o" "RigRN.phl[298]";
connectAttr "Rig:rHandControl_bip_middle_0_RControlRoll.o" "RigRN.phl[299]";
connectAttr "Rig:rHandControl_bip_ring_0_RControlRoll.o" "RigRN.phl[300]";
connectAttr "Rig:rHandControl_bip_pinky_0_RControlRoll.o" "RigRN.phl[301]";
connectAttr "Rig:rHandControl_visibility.o" "RigRN.phl[302]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateX.o" "RigRN.phl[303]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateY.o" "RigRN.phl[304]";
connectAttr "Rig:Ref:bip_thumb_0_RControl_rotateZ.o" "RigRN.phl[305]";
connectAttr "Rig:Ref:bip_thumb_1_RControl_rotateX.o" "RigRN.phl[306]";
connectAttr "Rig:Ref:bip_thumb_2_RControl_rotateX.o" "RigRN.phl[307]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateX.o" "RigRN.phl[308]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateY.o" "RigRN.phl[309]";
connectAttr "Rig:Ref:bip_index_0_RControl_rotateZ.o" "RigRN.phl[310]";
connectAttr "Rig:Ref:bip_index_1_RControl_rotateX.o" "RigRN.phl[311]";
connectAttr "Rig:Ref:bip_index_2_RControl_rotateX.o" "RigRN.phl[312]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateX.o" "RigRN.phl[313]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateY.o" "RigRN.phl[314]";
connectAttr "Rig:Ref:bip_middle_0_RControl_rotateZ.o" "RigRN.phl[315]";
connectAttr "Rig:Ref:bip_middle_1_RControl_rotateX.o" "RigRN.phl[316]";
connectAttr "Rig:Ref:bip_middle_2_RControl_rotateX.o" "RigRN.phl[317]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateX.o" "RigRN.phl[318]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateY.o" "RigRN.phl[319]";
connectAttr "Rig:Ref:bip_ring_0_RControl_rotateZ.o" "RigRN.phl[320]";
connectAttr "Rig:Ref:bip_ring_1_RControl_rotateX.o" "RigRN.phl[321]";
connectAttr "Rig:Ref:bip_ring_2_RControl_rotateX.o" "RigRN.phl[322]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateX.o" "RigRN.phl[323]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateY.o" "RigRN.phl[324]";
connectAttr "Rig:Ref:bip_pinky_0_RControl_rotateZ.o" "RigRN.phl[325]";
connectAttr "Rig:Ref:bip_pinky_1_RControl_rotateX.o" "RigRN.phl[326]";
connectAttr "Rig:Ref:bip_pinky_2_RControl_rotateX.o" "RigRN.phl[327]";
connectAttr "Rig:rkneeControl_translateX.o" "RigRN.phl[328]";
connectAttr "Rig:rkneeControl_translateY.o" "RigRN.phl[329]";
connectAttr "Rig:rkneeControl_translateZ.o" "RigRN.phl[330]";
connectAttr "Rig:rFootControl_translateX.o" "RigRN.phl[331]";
connectAttr "Rig:rFootControl_translateY.o" "RigRN.phl[332]";
connectAttr "Rig:rFootControl_translateZ.o" "RigRN.phl[333]";
connectAttr "Rig:rFootControl_rotateX.o" "RigRN.phl[334]";
connectAttr "Rig:rFootControl_rotateY.o" "RigRN.phl[335]";
connectAttr "Rig:rFootControl_rotateZ.o" "RigRN.phl[336]";
connectAttr "Rig:rFootControl_heelRock.o" "RigRN.phl[337]";
connectAttr "Rig:rFootControl_ankleLift.o" "RigRN.phl[338]";
connectAttr "Rig:rFootControl_toeLift.o" "RigRN.phl[339]";
connectAttr "Rig:rFootControl_ankleBank.o" "RigRN.phl[340]";
connectAttr "Rig:rFootControl_rockR.o" "RigRN.phl[341]";
connectAttr "Rig:rFootControl_rockL.o" "RigRN.phl[342]";
connectAttr "Rig:rFootControl_ballPivot.o" "RigRN.phl[343]";
connectAttr "Rig:rToeControl_rotateX.o" "RigRN.phl[344]";
connectAttr "Rig:rToeControl_rotateY.o" "RigRN.phl[345]";
connectAttr "Rig:rToeControl_rotateZ.o" "RigRN.phl[346]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of center_pose.ma
