//Maya ASCII 2012 scene
//Name: engineer_rig.ma
//Last modified: Wed, Mar 11, 2015 12:43:54 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "engineer_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "engineer_reference.ma";
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
	setAttr ".t" -type "double3" -67.49053980409532 66.417204002296742 199.06109003134486 ;
	setAttr ".r" -type "double3" -14.738352730408934 2860.599999999476 -4.2150104414296959e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 221.22447640575677;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 21.302051544189453 41.565906524658203 2.2515992224216461 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.3562500000000011 1500.0999999999999 1.5397786458333345 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 22.274999999999995;
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
createNode transform -n "main";
	addAttr -ci true -k true -sn "rArmIKFK" -ln "rArmIKFK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "lArmIKFK" -ln "lArmIKFK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "rLegIKFK" -ln "rLegIKFK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "lLegIKFK" -ln "lLegIKFK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "spineIKFK" -ln "spineIKFK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "main" -ln "main" -at "message";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 5;
	setAttr -k on ".rArmIKFK";
	setAttr -k on ".lArmIKFK";
	setAttr -k on ".rLegIKFK";
	setAttr -k on ".lLegIKFK";
	setAttr -k on ".spineIKFK";
createNode nurbsSurface -n "mainShape" -p "main";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 1 1 no 
		2 0 2
		9 0 0.76536686473017945 1.5307337294603589 2.2961005941905386 3.0614674589207183
		 3.8268343236508975 4.5922011883810772 5.3575680531112564 6.1229349178414356
		
		18
		18 -1.7999999999999999e-011 -2.2042914368802791e-015
		12.727922061357857 -1.7999999999999999e-011 12.727922061357853
		5.0989486070907031e-015 -1.7999999999999999e-011 18
		-12.727922061357852 -1.7999999999999999e-011 12.727922061357857
		-18 -1.7999999999999999e-011 4.9960036108132044e-015
		-12.727922061357861 -1.7999999999999999e-011 -12.727922061357852
		-9.0957514957412666e-015 -1.7999999999999999e-011 -18
		12.727922061357848 -1.7999999999999999e-011 -12.727922061357864
		18 -1.7999999999999999e-011 -1.419470010283197e-014
		18 -1.7999999999999999e-011 -2.2042914368802791e-015
		12.727922061357857 1.7999999999999999e-011 12.727922061357857
		5.0989486070907031e-015 1.7999999999999999e-011 18
		-12.727922061357852 1.7999999999999999e-011 12.727922061357861
		-18 1.7999999999999999e-011 7.2002950476934835e-015
		-12.727922061357861 1.7999999999999999e-011 -12.727922061357848
		-9.0957514957412666e-015 1.7999999999999999e-011 -18
		12.727922061357848 1.7999999999999999e-011 -12.727922061357861
		18 -1.7999999999999999e-011 -1.419470010283197e-014
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "UpperbodyControl" -p "main";
	addAttr -ci true -sn "upperBodyControl" -ln "upperBodyControl" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 41.365335543497515 0 ;
	setAttr ".sp" -type "double3" 0 41.365335543497515 0 ;
	setAttr ".hdl" -type "double3" 0 41.365335543497515 0 ;
	setAttr ".dh" yes;
	setAttr ".smd" 5;
createNode nurbsSurface -n "UpperbodyControlShape" -p "UpperbodyControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 0.25 0.25 0.25
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		7.0525046240210143 40.240335543497515 -7.0525046240210258
		9.9737476879894906 40.240335543497515 1.069021416875454e-015
		7.0525046240210187 40.240335543497515 7.0525046240210187
		3.1086975449132614e-015 40.240335543497515 9.9737476879894906
		-7.052504624021017 40.240335543497515 7.0525046240210205
		-9.9737476879894942 40.240335543497515 3.2896136180514129e-015
		-7.0525046240210196 40.240335543497515 -7.0525046240210152
		-5.3568991697792034e-015 40.240335543497515 -9.9737476879894906
		7.0525046240210143 40.240335543497515 -7.0525046240210258
		9.9737476879894906 40.240335543497515 1.069021416875454e-015
		7.0525046240210187 40.240335543497515 7.0525046240210187
		7.0525046240210143 40.990335543497515 -7.0525046240210258
		9.9737476879894906 40.990335543497515 1.1149441551437931e-015
		7.0525046240210187 40.990335543497515 7.0525046240210187
		3.1086975449132614e-015 40.990335543497515 9.9737476879894906
		-7.052504624021017 40.990335543497515 7.0525046240210205
		-9.9737476879894942 40.990335543497515 3.3355363563197521e-015
		-7.0525046240210196 40.990335543497515 -7.0525046240210152
		-5.3568991697792034e-015 40.990335543497515 -9.9737476879894906
		7.0525046240210143 40.990335543497515 -7.0525046240210258
		9.9737476879894906 40.990335543497515 1.1149441551437931e-015
		7.0525046240210187 40.990335543497515 7.0525046240210187
		7.0525046240210143 41.740335543497515 -7.0525046240210258
		9.9737476879894906 41.740335543497515 1.1608668934121323e-015
		7.0525046240210187 41.740335543497515 7.0525046240210187
		3.1086975449132614e-015 41.740335543497515 9.9737476879894906
		-7.052504624021017 41.740335543497515 7.0525046240210205
		-9.9737476879894942 41.740335543497515 3.3814590945880912e-015
		-7.0525046240210196 41.740335543497515 -7.0525046240210152
		-5.3568991697792034e-015 41.740335543497515 -9.9737476879894906
		7.0525046240210143 41.740335543497515 -7.0525046240210258
		9.9737476879894906 41.740335543497515 1.1608668934121323e-015
		7.0525046240210187 41.740335543497515 7.0525046240210187
		7.0525046240210143 42.490335543497515 -7.0525046240210258
		9.9737476879894906 42.490335543497515 1.2067896316804714e-015
		7.0525046240210187 42.490335543497515 7.0525046240210187
		3.1086975449132614e-015 42.490335543497515 9.9737476879894906
		-7.052504624021017 42.490335543497515 7.0525046240210205
		-9.9737476879894942 42.490335543497515 3.4273818328564304e-015
		-7.0525046240210196 42.490335543497515 -7.0525046240210152
		-5.3568991697792034e-015 42.490335543497515 -9.9737476879894906
		7.0525046240210143 42.490335543497515 -7.0525046240210258
		9.9737476879894906 42.490335543497515 1.2067896316804714e-015
		7.0525046240210187 42.490335543497515 7.0525046240210187
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "PelvisControl" -p "UpperbodyControl";
	addAttr -ci true -sn "pelvisControl" -ln "pelvisControl" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 41.365335543497515 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 0 2.5 0 ;
	setAttr ".dh" yes;
	setAttr ".smd" 2;
createNode nurbsSurface -n "PelvisControlShape" -p "PelvisControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1.5 1.5 1.5
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-2.3449274790324385e-015 -4.5885517213451052 -9.1771034426902123
		9.1771034426902123 -4.5885517213451061 -8.4287543892027349e-016
		1.2411590620429466e-015 -4.588551721345107 9.1771034426902123
		-9.1771034426902123 -4.5885517213451061 1.2998216337842377e-015
		-2.3449274790324385e-015 -4.5885517213451052 -9.1771034426902123
		9.1771034426902123 -4.5885517213451061 -8.4287543892027349e-016
		1.2411590620429466e-015 -4.588551721345107 9.1771034426902123
		-2.3449274790324385e-015 -1.5295172404483681 -9.1771034426902123
		9.1771034426902123 -1.5295172404483688 -6.5556978582687943e-016
		1.2411590620429466e-015 -1.5295172404483695 9.1771034426902123
		-9.1771034426902123 -1.5295172404483688 1.4871272868776318e-015
		-2.3449274790324385e-015 -1.5295172404483681 -9.1771034426902123
		9.1771034426902123 -1.5295172404483688 -6.5556978582687943e-016
		1.2411590620429466e-015 -1.5295172404483695 9.1771034426902123
		-2.3449274790324385e-015 1.5295172404483695 -9.1771034426902123
		9.1771034426902123 1.5295172404483688 -4.6826413273348536e-016
		1.2411590620429466e-015 1.5295172404483681 9.1771034426902123
		-9.1771034426902123 1.5295172404483688 1.6744329399710259e-015
		-2.3449274790324385e-015 1.5295172404483695 -9.1771034426902123
		9.1771034426902123 1.5295172404483688 -4.6826413273348536e-016
		1.2411590620429466e-015 1.5295172404483681 9.1771034426902123
		-2.3449274790324385e-015 4.588551721345107 -9.1771034426902123
		9.1771034426902123 4.5885517213451061 -2.8095847964009125e-016
		1.2411590620429466e-015 4.5885517213451052 9.1771034426902123
		-9.1771034426902123 4.5885517213451061 1.8617385930644201e-015
		-2.3449274790324385e-015 4.588551721345107 -9.1771034426902123
		9.1771034426902123 4.5885517213451061 -2.8095847964009125e-016
		1.2411590620429466e-015 4.5885517213451052 9.1771034426902123
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 4.0958788662176318 -0.33988184184853243 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -45.461214409715147 0.33988184184853243 ;
	setAttr ".rp" -type "double3" 0 45.461214409715147 -0.33988184184853243 ;
	setAttr ".sp" -type "double3" 0 45.461214409715147 -0.33988184184853243 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 48.314856598086749 -1.4184227946691295 ;
createNode transform -n "Ref:bip_spine_0FKcontrolZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 162.17732399053909 0 0 ;
	setAttr ".rp" -type "double3" 0 45.461214409715147 -0.33988184184853215 ;
	setAttr ".sp" -type "double3" 0 45.461214409715147 -0.33988184184853215 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -k true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0.1 -max 
		2 -at "double";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 45.461214409715147 -0.33988184184853215 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".sy";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 2;
	setAttr -k on ".stretchSpine";
createNode nurbsSurface -n "Ref:bip_spine_0FKcontrolShape" -p "Ref:bip_spine_0FKcontrol";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-5.0000000000000009 -2.1439081521364145e-015 10
		-1.8369095307335659e-015 -1.2500000000000022 10
		4.9999999999999991 -2.4500597405920088e-015 10
		-3.0814879110195774e-032 1.2499999999999978 10
		-5.0000000000000009 -1.8377565636808202e-015 10
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_1FKcontrolZeroGroup" -p "Ref:bip_spine_0FKcontrol";
	setAttr ".r" -type "double3" 10.813602897740063 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.9495568513513319 -2.6645352591003757e-015 ;
	setAttr ".sp" -type "double3" 0 -6.9495568513513319 -2.6645352591003757e-015 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -6.9495568513513319 -2.6645352591003757e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 2;
createNode nurbsSurface -n "Ref:bip_spine_1FKcontrolShape" -p "Ref:bip_spine_1FKcontrol";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-5.0000000000000009 -2.1439081521364145e-015 10
		-1.8369095307335659e-015 -1.2500000000000022 10
		4.9999999999999991 -2.4500597405920088e-015 10
		-3.0814879110195774e-032 1.2499999999999978 10
		-5.0000000000000009 -1.8377565636808202e-015 10
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_2FKcontrolZeroGroup" -p "Ref:bip_spine_1FKcontrol";
	setAttr ".r" -type "double3" 2.5055895976754967 0 0 ;
	setAttr ".rp" -type "double3" 0 -5.956680530427171 3.9968028886505635e-015 ;
	setAttr ".sp" -type "double3" 0 -5.956680530427171 3.9968028886505635e-015 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -5.956680530427171 3.9968028886505635e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 2;
createNode nurbsSurface -n "Ref:bip_spine_2FKcontrolShape" -p "Ref:bip_spine_2FKcontrol";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-5.0000000000000009 -2.1439081521364145e-015 10
		-1.8369095307335659e-015 -1.2500000000000022 10
		4.9999999999999991 -2.4500597405920088e-015 10
		-3.0814879110195774e-032 1.2499999999999978 10
		-5.0000000000000009 -1.8377565636808202e-015 10
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_3FKcontrolZeroGroup" -p "Ref:bip_spine_2FKcontrol";
	setAttr ".r" -type "double3" 39.110155357276859 0 0 ;
	setAttr ".rp" -type "double3" 0 -4.7038657668930739 8.8817841970012523e-016 ;
	setAttr ".sp" -type "double3" 0 -4.7038657668930739 8.8817841970012523e-016 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -4.7038657668930739 8.8817841970012523e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr ".smd" 2;
createNode nurbsSurface -n "Ref:bip_spine_3FKcontrolShape" -p "Ref:bip_spine_3FKcontrol";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-5.0000000000000009 -2.1439081521364145e-015 10
		-1.8369095307335659e-015 -1.2500000000000022 10
		4.9999999999999991 -2.4500597405920088e-015 10
		-3.0814879110195774e-032 1.2499999999999978 10
		-5.0000000000000009 -1.8377565636808202e-015 10
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		3.7736096750614187e-048 -1.5307579422779716e-016 -3.3989654252896608e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikChest" -p "UpperbodyControl";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 62.678758619832891 -3.5631664854606759 ;
	setAttr ".sp" -type "double3" 0 62.678758619832891 -3.5631664854606759 ;
createNode nurbsSurface -n "ikChestShape" -p "ikChest";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikChestCluster" -p "ikChest";
	setAttr ".v" no;
createNode clusterHandle -n "ikChestClusterShape" -p "ikChestCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 59.657972858001699 -3.3257014505930727 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.15440773695969054 -10.61029414918705 -1.6627249573138099 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8917515391163224 11.969208094447259 3.9695107159361713 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -15.99351598654685 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 17.033452612617364 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.5198295894313105e-008 -17.104239672148935 2.350763805836209e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0.39046974759342434 6.7675977563140606 8.3561695675323548 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.100638246908069 3.6829561789654393 -1.0962009555312695 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -0.08184421129616215 -8.4838597951368246 2.2221181707511346 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.6480519978656464e-008 -1.2068669552495401e-006 4.4950631754658016e-010 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -45.17948128631938 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.081844211296159486 -2.707611463234517 0.001008470314959653 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
createNode ikEffector -n "effector5" -p "Ref:bip_toe_LIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector4" -p "Ref:bip_foot_LIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "Ref:bip_knee_LIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Ref:bip_hip_LIK_pointConstraint1" -p "Ref:bip_hip_LIK";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 4.5885534426896335 38.122298230332277 1.5161872595801793 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -1.8917515391163224 11.969208094447264 3.9695107159361691 ;
	setAttr ".rp" -type "double3" 4.5885534426896335 38.122298230332277 1.5161872595801793 ;
	setAttr ".sp" -type "double3" 4.5885534426896335 38.122298230332277 1.5161872595801793 ;
createNode transform -n "Ref:bip_hip_LFK" -p "Ref:bip_hip_LFKZeroGroup";
	addAttr -ci true -sn "lFKupLeg" -ln "lFKupLeg" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_hip_LFKShape" -p "Ref:bip_hip_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -8.8781848464874201e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -8.8781848464874201e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -5.3311719955156178 -6
		6 -5.3311719955156178 -4.4902232973487166e-016
		8.1147111599677579e-016 -5.331171995515616 6
		-6 -5.3311719955156178 9.5187529733364862e-016
		-1.5331160820031275e-015 -5.3311719955156178 -6
		6 -5.3311719955156178 -4.4902232973487166e-016
		8.1147111599677579e-016 -5.331171995515616 6
		-1.5331160820031275e-015 -10.662343991031236 -6
		6 -10.662343991031234 -2.8574148255855469e-016
		8.1147111599677579e-016 -10.662343991031234 6
		-6 -10.662343991031234 1.1151561445099656e-015
		-1.5331160820031275e-015 -10.662343991031236 -6
		6 -10.662343991031234 -2.8574148255855469e-016
		8.1147111599677579e-016 -10.662343991031234 6
		-1.5331160820031275e-015 -15.993515986546852 -6
		6 -15.993515986546852 -1.2246063538223773e-016
		8.1147111599677579e-016 -15.993515986546852 6
		-6 -15.993515986546852 1.2784369916862826e-015
		-1.5331160820031275e-015 -15.993515986546852 -6
		6 -15.993515986546852 -1.2246063538223773e-016
		8.1147111599677579e-016 -15.993515986546852 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 17.033452612617364 1.5902773407317584e-015 -7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -9.4368957093138306e-016 -15.993515986546857 0 ;
	setAttr ".sp" -type "double3" -9.4368957093138306e-016 -15.993515986546857 0 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -9.4368957093138306e-016 -15.993515986546857 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_knee_LFKShape" -p "Ref:bip_knee_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -9.4947603513633875e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -9.4947603513633875e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -5.7014132240496425 -6
		6 -5.7014132240496425 -4.4902232973487166e-016
		8.1147111599677579e-016 -5.7014132240496407 6
		-6 -5.7014132240496425 9.5187529733364862e-016
		-1.5331160820031275e-015 -5.7014132240496425 -6
		6 -5.7014132240496425 -4.4902232973487166e-016
		8.1147111599677579e-016 -5.7014132240496407 6
		-1.5331160820031275e-015 -11.402826448099285 -6
		6 -11.402826448099283 -2.8574148255855469e-016
		8.1147111599677579e-016 -11.402826448099283 6
		-6 -11.402826448099283 1.1151561445099656e-015
		-1.5331160820031275e-015 -11.402826448099285 -6
		6 -11.402826448099283 -2.8574148255855469e-016
		8.1147111599677579e-016 -11.402826448099283 6
		-1.5331160820031275e-015 -17.104239672148925 -6
		6 -17.104239672148925 -1.2246063538223773e-016
		8.1147111599677579e-016 -17.104239672148925 6
		-6 -17.104239672148925 1.2784369916862826e-015
		-1.5331160820031275e-015 -17.104239672148925 -6
		6 -17.104239672148925 -1.2246063538223773e-016
		8.1147111599677579e-016 -17.104239672148925 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -59.100638246908069 3.6829561789654393 -1.0962009555312708 ;
	setAttr ".rp" -type "double3" 2.5198298614359516e-008 -17.104239672148932 2.3507635837916041e-009 ;
	setAttr ".sp" -type "double3" 2.5198298614359516e-008 -17.104239672148932 2.3507635837916041e-009 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.5198298614359516e-008 -17.104239672148932 2.3507635837916041e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_foot_LFKShape" -p "Ref:bip_foot_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -4.8685648342274601e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -4.8685648342274601e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.9234755697674522 -6
		6 -2.9234755697674522 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.9234755697674513 6
		-6 -2.9234755697674522 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.9234755697674522 -6
		6 -2.9234755697674522 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.9234755697674513 6
		-1.5331160820031275e-015 -5.8469511395349043 -6
		6 -5.8469511395349034 -2.8574148255855469e-016
		8.1147111599677579e-016 -5.8469511395349034 6
		-6 -5.8469511395349034 1.1151561445099656e-015
		-1.5331160820031275e-015 -5.8469511395349043 -6
		6 -5.8469511395349034 -2.8574148255855469e-016
		8.1147111599677579e-016 -5.8469511395349034 6
		-1.5331160820031275e-015 -8.770426709302356 -6
		6 -8.770426709302356 -1.2246063538223773e-016
		8.1147111599677579e-016 -8.770426709302356 6
		-6 -8.770426709302356 1.2784369916862826e-015
		-1.5331160820031275e-015 -8.770426709302356 -6
		6 -8.770426709302356 -1.2246063538223773e-016
		8.1147111599677579e-016 -8.770426709302356 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -45.17948128631938 1.5902773407317588e-015 -1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" -0.081844211296166369 -8.4838597951368282 2.2221181707511297 ;
	setAttr ".sp" -type "double3" -0.081844211296166369 -8.4838597951368282 2.2221181707511297 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -0.081844211296166369 -8.4838597951368282 2.2221181707511297 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_toe_LFKShape" -p "Ref:bip_toe_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -1.5037128985048276e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.5037128985048276e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -0.90294944658380683 -6
		6 -0.90294944658380683 -4.4902232973487166e-016
		8.1147111599677579e-016 -0.90294944658380649 6
		-6 -0.90294944658380683 9.5187529733364862e-016
		-1.5331160820031275e-015 -0.90294944658380683 -6
		6 -0.90294944658380683 -4.4902232973487166e-016
		8.1147111599677579e-016 -0.90294944658380649 6
		-1.5331160820031275e-015 -1.8058988931676137 -6
		6 -1.8058988931676132 -2.8574148255855469e-016
		8.1147111599677579e-016 -1.8058988931676132 6
		-6 -1.8058988931676132 1.1151561445099656e-015
		-1.5331160820031275e-015 -1.8058988931676137 -6
		6 -1.8058988931676132 -2.8574148255855469e-016
		8.1147111599677579e-016 -1.8058988931676132 6
		-1.5331160820031275e-015 -2.70884833975142 -6
		6 -2.70884833975142 -1.2246063538223773e-016
		8.1147111599677579e-016 -2.70884833975142 6
		-6 -2.70884833975142 1.2784369916862826e-015
		-1.5331160820031275e-015 -2.70884833975142 -6
		6 -2.70884833975142 -1.2246063538223773e-016
		8.1147111599677579e-016 -2.70884833975142 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "Ref:bip_hip_LFK_pointConstraint1" -p "Ref:bip_hip_LFK";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 4.5885534426896317 38.122298230332269 1.5161872595801789 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.15440772158965851 -10.610250934420247 -1.6627184559909363 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 178.1082484608838 -11.969208094447257 -3.969510715936166 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.6262350577278539e-007 15.993543711579356 -8.4523376098211145e-007 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.6185833161704944e-014 8.2481287908010595e-021 2.817824748045123e-020 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 17.033452612617292 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.8987086812269922e-006 17.104210709459203 1.0259273668822289e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0.39046476822082915 6.7675664291448987 8.35613521196432 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.100638246908105 3.6829561789654255 -1.0962009555312198 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.17926979968464973 8.4722047780415828 -2.0311560425938033 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -2.0025929353984311e-007 3.1850702428964396e-006 -1.4225298317626214e-007 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -45.179481286319373 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -0.17927211674363264 2.8512748928971652 -0.12734486605825013 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.7075472925031873e-006 0 0 ;
	setAttr ".radi" 2;
createNode ikEffector -n "effector9" -p "Ref:bip_toe_RIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector8" -p "Ref:bip_foot_RIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "effector7" -p "Ref:bip_knee_RIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Ref:bip_hip_RIK_pointConstraint1" -p "Ref:bip_hip_RIK";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -4.58855 38.1223 1.5161899999999995 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 178.1082484608838 -11.969208094447259 -3.969510715936166 ;
	setAttr ".rp" -type "double3" -4.58855 38.1223 1.5161899999999995 ;
	setAttr ".sp" -type "double3" -4.58855 38.1223 1.5161899999999995 ;
createNode transform -n "Ref:bip_hip_RFK" -p "Ref:bip_hip_RFKZeroGroup";
	addAttr -ci true -sn "rFKupLeg" -ln "rFKupLeg" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_hip_RFKShape" -p "Ref:bip_hip_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 8.8782002369721544e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 8.8782002369721544e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 5.3311812371931264 -6
		6 5.3311812371931264 -4.4902232973487166e-016
		8.1147111599677579e-016 5.3311812371931246 6
		-6 5.3311812371931264 9.5187529733364862e-016
		-1.5331160820031275e-015 5.3311812371931264 -6
		6 5.3311812371931264 -4.4902232973487166e-016
		8.1147111599677579e-016 5.3311812371931246 6
		-1.5331160820031275e-015 10.662362474386253 -6
		6 10.662362474386251 -2.8574148255855469e-016
		8.1147111599677579e-016 10.662362474386251 6
		-6 10.662362474386251 1.1151561445099656e-015
		-1.5331160820031275e-015 10.662362474386253 -6
		6 10.662362474386251 -2.8574148255855469e-016
		8.1147111599677579e-016 10.662362474386251 6
		-1.5331160820031275e-015 15.993543711579377 -6
		6 15.993543711579377 -1.2246063538223773e-016
		8.1147111599677579e-016 15.993543711579377 6
		-6 15.993543711579377 1.2784369916862826e-015
		-1.5331160820031275e-015 15.993543711579377 -6
		6 15.993543711579377 -1.2246063538223773e-016
		8.1147111599677579e-016 15.993543711579377 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 17.033452612617285 0 0 ;
	setAttr ".rp" -type "double3" 1.6262350555074079e-007 15.993543711579356 -8.4523376053802224e-007 ;
	setAttr ".sp" -type "double3" 1.6262350555074079e-007 15.993543711579356 -8.4523376053802224e-007 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.6262350555074079e-007 15.993543711579356 -8.4523376053802224e-007 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_knee_RFKShape" -p "Ref:bip_knee_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 9.4947442738428576e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 9.4947442738428576e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 5.7014035698209131 -6
		6 5.7014035698209131 -4.4902232973487166e-016
		8.1147111599677579e-016 5.7014035698209113 6
		-6 5.7014035698209131 9.5187529733364862e-016
		-1.5331160820031275e-015 5.7014035698209131 -6
		6 5.7014035698209131 -4.4902232973487166e-016
		8.1147111599677579e-016 5.7014035698209113 6
		-1.5331160820031275e-015 11.402807139641826 -6
		6 11.402807139641824 -2.8574148255855469e-016
		8.1147111599677579e-016 11.402807139641824 6
		-6 11.402807139641824 1.1151561445099656e-015
		-1.5331160820031275e-015 11.402807139641826 -6
		6 11.402807139641824 -2.8574148255855469e-016
		8.1147111599677579e-016 11.402807139641824 6
		-1.5331160820031275e-015 17.104210709462738 -6
		6 17.104210709462738 -1.2246063538223773e-016
		8.1147111599677579e-016 17.104210709462738 6
		-6 17.104210709462738 1.2784369916862826e-015
		-1.5331160820031275e-015 17.104210709462738 -6
		6 17.104210709462738 -1.2246063538223773e-016
		8.1147111599677579e-016 17.104210709462738 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -59.100638246908105 3.6829561789654264 -1.09620095553122 ;
	setAttr ".rp" -type "double3" -3.8987086812825034e-006 17.104210709459196 1.0259273671042735e-005 ;
	setAttr ".sp" -type "double3" -3.8987086812825034e-006 17.104210709459196 1.0259273671042735e-005 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.8987086812825034e-006 17.104210709459196 1.0259273671042735e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999933 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_foot_RFKShape" -p "Ref:bip_foot_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 4.8373114835816703e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 4.8373114835816703e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.9047085593244577 -6
		6 2.9047085593244577 -4.4902232973487166e-016
		8.1147111599677579e-016 2.9047085593244568 6
		-6 2.9047085593244577 9.5187529733364862e-016
		-1.5331160820031275e-015 2.9047085593244577 -6
		6 2.9047085593244577 -4.4902232973487166e-016
		8.1147111599677579e-016 2.9047085593244568 6
		-1.5331160820031275e-015 5.8094171186489154 -6
		6 5.8094171186489145 -2.8574148255855469e-016
		8.1147111599677579e-016 5.8094171186489145 6
		-6 5.8094171186489145 1.1151561445099656e-015
		-1.5331160820031275e-015 5.8094171186489154 -6
		6 5.8094171186489145 -2.8574148255855469e-016
		8.1147111599677579e-016 5.8094171186489145 6
		-1.5331160820031275e-015 8.7141256779733727 -6
		6 8.7141256779733727 -1.2246063538223773e-016
		8.1147111599677579e-016 8.7141256779733727 6
		-6 8.7141256779733727 1.2784369916862826e-015
		-1.5331160820031275e-015 8.7141256779733727 -6
		6 8.7141256779733727 -1.2246063538223773e-016
		8.1147111599677579e-016 8.7141256779733727 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -45.179481286319373 -1.590277340731758e-015 0 ;
	setAttr ".rp" -type "double3" 0.17926979968464551 8.4722047780415828 -2.0311560425938109 ;
	setAttr ".sp" -type "double3" 0.17926979968464551 8.4722047780415828 -2.0311560425938109 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.17926979968464551 8.4722047780415828 -2.0311560425938109 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_toe_RFKShape" -p "Ref:bip_toe_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 1.5874756496712322e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.5874756496712322e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 0.95324729924254648 -6
		6 0.95324729924254648 -4.4902232973487166e-016
		8.1147111599677579e-016 0.95324729924254614 6
		-6 0.95324729924254648 9.5187529733364862e-016
		-1.5331160820031275e-015 0.95324729924254648 -6
		6 0.95324729924254648 -4.4902232973487166e-016
		8.1147111599677579e-016 0.95324729924254614 6
		-1.5331160820031275e-015 1.906494598485093 -6
		6 1.9064945984850925 -2.8574148255855469e-016
		8.1147111599677579e-016 1.9064945984850925 6
		-6 1.9064945984850925 1.1151561445099656e-015
		-1.5331160820031275e-015 1.906494598485093 -6
		6 1.9064945984850925 -2.8574148255855469e-016
		8.1147111599677579e-016 1.9064945984850925 6
		-1.5331160820031275e-015 2.859741897727639 -6
		6 2.859741897727639 -1.2246063538223773e-016
		8.1147111599677579e-016 2.859741897727639 6
		-6 2.859741897727639 1.2784369916862826e-015
		-1.5331160820031275e-015 2.859741897727639 -6
		6 2.859741897727639 -1.2246063538223773e-016
		8.1147111599677579e-016 2.859741897727639 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "Ref:bip_hip_RFK_pointConstraint1" -p "Ref:bip_hip_RFK";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -4.58855 38.1223 1.51619 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 45.461214409715147 -0.33988184184853271 ;
	setAttr ".r" -type "double3" 1.8817838815447612 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 162.17732399053909 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -6.9495568513513319 -1.7763568394002505e-015 ;
	setAttr ".r" -type "double3" -3.4778642951670617 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 10.813602897740058 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" 0 -5.9566805304271782 5.3290705182007514e-015 ;
	setAttr ".r" -type "double3" 0.89846476260051222 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5055895976754972 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 0 -4.7038657668930597 -6.2172489379008766e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 39.110155357276859 0 0 ;
	setAttr ".radi" 2;
createNode orientConstraint -n "Ref:bip_spine_3ik_orientConstraint1" -p "Ref:bip_spine_3ik";
	addAttr -ci true -k true -sn "w0" -ln "ikChestW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 146.09094380893129 0 0 ;
	setAttr ".o" -type "double3" -146.09094380893129 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 62.717653897651054 -3.5662240569773052 ;
	setAttr ".r" -type "double3" 174.79890083493288 0 0 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "SpineCurve" -p "main";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".it" no;
createNode nurbsCurve -n "SpineCurveShape" -p "SpineCurve";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode nurbsCurve -n "SpineCurveShapeOrig" -p "SpineCurve";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 17.61010314867157 17.61010314867157 17.61010314867157
		4
		0 45.461214409715147 -0.33988184184853271
		0 51.168498786458358 -2.4969637474897262
		0 56.637187096170514 -3.0882364157254698
		0 62.678758619832884 -3.5631664854606759
		;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 0 62.678758619832891 -3.5631664854606742 ;
	setAttr ".sp" -type "double3" 0 62.678758619832891 -3.5631664854606742 ;
createNode parentConstraint -n "chestParent_parentConstraint1" -p "chestParent";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_3FKcontrolW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_3ikW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 -1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 145.39332815676849 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0.030574382431304059 -0.024236305782309842 ;
	setAttr ".tg[1].tor" -type "double3" 146.09094381408002 0 0 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" 0 131.22305721606543 1.8085058404470704 ;
	setAttr ".r" -type "double3" -175.77410517956295 0 0 ;
	setAttr ".rp" -type "double3" 0 65.644890672330931 -1.5164592358228273 ;
	setAttr ".rpt" -type "double3" 0 -131.22305721606546 -1.8085058404470695 ;
	setAttr ".sp" -type "double3" 0 65.644890672330931 -1.5164592358228273 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" 2.6757912697271315 1.2520841165023529 63.181862010844 ;
	setAttr ".rp" -type "double3" 3.5358765249616768 63.537515433774082 -2.6359846565601912 ;
	setAttr ".sp" -type "double3" 3.5358765249616768 63.537515433774082 -2.6359846565601912 ;
createNode transform -n "lShoulderControl" -p "lShoulderControlZeroGroup";
	addAttr -ci true -sn "lFKshoulderControl" -ln "lFKshoulderControl" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "lShoulderControlShape" -p "lShoulderControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 -2.2574031255608036 -6.75
		6.75 -2.2574031255608036 -5.0515012095173062e-016
		9.1290500549637277e-016 -2.2574031255608031 6.75
		-6.75 -2.2574031255608036 1.0708597095003547e-015
		-1.7247555922535185e-015 -2.2574031255608036 -6.75
		6.75 -2.2574031255608036 -5.0515012095173062e-016
		9.1290500549637277e-016 -2.2574031255608031 6.75
		-1.7247555922535185e-015 -4.5148062511216072 -6.75
		6.75 -4.5148062511216072 -3.2145916787837403e-016
		9.1290500549637277e-016 -4.5148062511216072 6.75
		-6.75 -4.5148062511216072 1.2545506625737113e-015
		-1.7247555922535185e-015 -4.5148062511216072 -6.75
		6.75 -4.5148062511216072 -3.2145916787837403e-016
		9.1290500549637277e-016 -4.5148062511216072 6.75
		-1.7247555922535185e-015 -6.7722093766824099 -6.75
		6.75 -6.7722093766824099 -1.3776821480501744e-016
		9.1290500549637277e-016 -6.7722093766824099 6.75
		-6.75 -6.7722093766824099 1.4382416156470679e-015
		-1.7247555922535185e-015 -6.7722093766824099 -6.75
		6.75 -6.7722093766824099 -1.3776821480501744e-016
		9.1290500549637277e-016 -6.7722093766824099 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "lShoulderControl_pointConstraint1" -p "lShoulderControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_collar_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3.5358765249616853 63.537515433774075 -2.6359846565601903 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".t" -type "double3" 9.1177065897340981e-015 1.0658141036401503e-014 9.4368957093138306e-016 ;
	setAttr ".rp" -type "double3" 2.2583141884302549e-009 -6.7722093766824063 2.4585278257660548e-011 ;
	setAttr ".sp" -type "double3" 2.2583141884302549e-009 -6.7722093766824063 2.4585278257660548e-011 ;
createNode transform -n "Ref:bip_upperArm_LFK" -p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKshoulder" -ln "lFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "clavicle:chest:root:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".parent";
	setAttr ".zooCmd0" -type "string" "parent to clavicle^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 0\" #;";
	setAttr ".zooCmd1" -type "string" "parent to chest^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 1\" #;";
	setAttr ".zooCmd2" -type "string" "parent to root^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 2\" #;";
	setAttr ".zooCmd3" -type "string" "parent to world^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 3\" #;";
createNode nurbsSurface -n "Ref:bip_upperArm_LFKShape" -p "Ref:bip_upperArm_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 -3.8019237380946613 -6.75
		6.75 -3.8019237380946609 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.8019237380946604 6.75
		-6.75 -3.8019237380946609 1.0708597095003547e-015
		-1.7247555922535185e-015 -3.8019237380946613 -6.75
		6.75 -3.8019237380946609 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.8019237380946604 6.75
		-1.7247555922535185e-015 -7.6038474761893218 -6.75
		6.75 -7.6038474761893218 -3.2145916787837403e-016
		9.1290500549637277e-016 -7.6038474761893218 6.75
		-6.75 -7.6038474761893218 1.2545506625737113e-015
		-1.7247555922535185e-015 -7.6038474761893218 -6.75
		6.75 -7.6038474761893218 -3.2145916787837403e-016
		9.1290500549637277e-016 -7.6038474761893218 6.75
		-1.7247555922535185e-015 -11.405771214283982 -6.75
		6.75 -11.405771214283982 -1.3776821480501744e-016
		9.1290500549637277e-016 -11.405771214283982 6.75
		-6.75 -11.405771214283982 1.4382416156470679e-015
		-1.7247555922535185e-015 -11.405771214283982 -6.75
		6.75 -11.405771214283982 -1.3776821480501744e-016
		9.1290500549637277e-016 -11.405771214283982 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -27.511755037847248 -1.9878466759146975e-016 -3.180554681463516e-015 ;
	setAttr ".rp" -type "double3" -5.773159728050814e-015 -11.405771214283989 2.1649348980190553e-015 ;
	setAttr ".sp" -type "double3" -5.773159728050814e-015 -11.405771214283989 2.1649348980190553e-015 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.773159728050814e-015 -11.405771214283989 2.1649348980190553e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_lowerArm_LFKShape" -p "Ref:bip_lowerArm_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 -4.0664319242784472 -6.75
		6.75 -4.0664319242784464 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.0664319242784464 6.75
		-6.75 -4.0664319242784464 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.0664319242784472 -6.75
		6.75 -4.0664319242784464 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.0664319242784464 6.75
		-1.7247555922535185e-015 -8.1328638485568927 -6.75
		6.75 -8.1328638485568927 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.1328638485568927 6.75
		-6.75 -8.1328638485568927 1.2545506625737113e-015
		-1.7247555922535185e-015 -8.1328638485568927 -6.75
		6.75 -8.1328638485568927 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.1328638485568927 6.75
		-1.7247555922535185e-015 -12.19929577283534 -6.75
		6.75 -12.19929577283534 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.19929577283534 6.75
		-6.75 -12.19929577283534 1.4382416156470679e-015
		-1.7247555922535185e-015 -12.19929577283534 -6.75
		6.75 -12.19929577283534 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.19929577283534 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" -7.9513867036587899e-016 1.5902773407317584e-015 3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" -1.5931700403370996e-014 -12.199295772835342 -1.1546319456101628e-014 ;
	setAttr ".sp" -type "double3" -1.5931700403370996e-014 -12.199295772835342 -1.1546319456101628e-014 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.5931700403370996e-014 -12.199295772835342 -1.1546319456101628e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_hand_LFKShape" -p "Ref:bip_hand_LFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.4999999999999991 3.1819805153394647 5.6115844257056846e-016
		-4.4999999999999991 2.1847096657386672e-016 -3.1819805153394651
		-4.4999999999999991 -3.1819805153394647 -7.2952126498646792e-016
		-4.4999999999999991 -5.7174176977771623e-016 3.1819805153394642
		-4.4999999999999991 3.1819805153394647 5.6115844257056846e-016
		-4.4999999999999991 2.1847096657386672e-016 -3.1819805153394651
		-4.4999999999999991 -3.1819805153394647 -7.2952126498646792e-016
		9.2078410174059989e-016 10.318019484660535 1.3729023790812763e-015
		1.5525597127295189e-015 -6.3177561098891937e-016 -10.318019484660535
		9.2078410174059989e-016 -10.318019484660535 -1.3191124237115521e-016
		2.8900849075168082e-016 -5.1375466905119268e-016 10.318019484660535
		9.2078410174059989e-016 10.318019484660535 1.3729023790812763e-015
		1.5525597127295189e-015 -6.3177561098891937e-016 -10.318019484660535
		9.2078410174059989e-016 -10.318019484660535 -1.3191124237115521e-016
		4.5 3.1819805153394638 2.8562201296053342e-016
		4.5 -6.081383222562378e-016 -3.1819805153394634
		4.5 -3.1819805153394638 6.481608830637064e-016
		4.5 2.5486751905238842e-016 3.1819805153394642
		4.5 3.1819805153394638 2.8562201296053342e-016
		4.5 -6.081383222562378e-016 -3.1819805153394634
		4.5 -3.1819805153394638 6.481608830637064e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "Ref:bip_upperArm_LFK_pointConstraint1" -p "Ref:bip_upperArm_LFK";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 2.258316200709487e-009 -6.7722093766823974 2.4585194990933701e-011 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1" 
		-p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "lShoulderControlW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_2FKcontrolW1" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w2" -ln "UpperbodyControlW2" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w3" -ln "mainW3" -dv 1 -min 0 -at "double";
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
	setAttr -s 4 ".tg";
	setAttr ".tg[0].tot" -type "double3" 2.2583188673755369e-009 -6.7722093766824001 
		2.4586662038480301e-011 ;
	setAttr ".tg[0].tor" -type "double3" 2.2155106074733939 -5.6947034275985304 -35.192646244348943 ;
	setAttr ".tg[1].tot" -type "double3" 9.569981220127838 -2.4632451003653903 -0.43651566618500648 ;
	setAttr ".tg[1].tor" -type "double3" -172.32062005152989 5.2220071821852558 -27.555971271596405 ;
	setAttr ".tg[2].tot" -type "double3" 9.569981220127838 19.113995270118828 -2.9520656563520205 ;
	setAttr ".tg[2].tor" -type "double3" 3.6816917319205822 -3.1276374108013698 27.847168852670595 ;
	setAttr ".tg[3].tot" -type "double3" 9.569981220127838 60.47933081361635 -2.9520656563520205 ;
	setAttr ".tg[3].tor" -type "double3" 3.6816917319205822 -3.1276374108013698 27.847168852670595 ;
	setAttr ".lr" -type "double3" 2.2155106074733939 -5.6947034275985313 -35.192646244348936 ;
	setAttr ".rst" -type "double3" 8.2295281700339729e-015 1.2434497875801753e-014 1.2212453270876722e-015 ;
	setAttr ".rsrr" -type "double3" 2.2155106074733939 -5.6947034275985322 -35.192646244348929 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -177.32420873027291 -1.2520841165023546 -63.181862010844036 ;
	setAttr ".rp" -type "double3" -3.53588 63.53749999999998 -2.6359799999999951 ;
	setAttr ".sp" -type "double3" -3.53588 63.53749999999998 -2.6359799999999951 ;
createNode transform -n "rShoulderControl" -p "rShoulderControlZeroGroup";
	addAttr -ci true -sn "rFKshoulderControl" -ln "rFKshoulderControl" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "rShoulderControlShape" -p "rShoulderControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 2.257404186181307 -6.75
		6.75 2.2574041861813066 -5.0515012095173062e-016
		9.1290500549637277e-016 2.2574041861813061 6.75
		-6.75 2.2574041861813066 1.0708597095003547e-015
		-1.7247555922535185e-015 2.257404186181307 -6.75
		6.75 2.2574041861813066 -5.0515012095173062e-016
		9.1290500549637277e-016 2.2574041861813061 6.75
		-1.7247555922535185e-015 4.5148083723626131 -6.75
		6.75 4.5148083723626131 -3.2145916787837403e-016
		9.1290500549637277e-016 4.5148083723626131 6.75
		-6.75 4.5148083723626131 1.2545506625737113e-015
		-1.7247555922535185e-015 4.5148083723626131 -6.75
		6.75 4.5148083723626131 -3.2145916787837403e-016
		9.1290500549637277e-016 4.5148083723626131 6.75
		-1.7247555922535185e-015 6.7722125585439192 -6.75
		6.75 6.7722125585439192 -1.3776821480501744e-016
		9.1290500549637277e-016 6.7722125585439192 6.75
		-6.75 6.7722125585439192 1.4382416156470679e-015
		-1.7247555922535185e-015 6.7722125585439192 -6.75
		6.75 6.7722125585439192 -1.3776821480501744e-016
		9.1290500549637277e-016 6.7722125585439192 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "rShoulderControl_pointConstraint1" -p "rShoulderControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_collar_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -3.5358799999999961 63.53749999999998 -2.6359799999999947 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".t" -type "double3" 4.3576253716537394e-015 -1.7763568394002505e-015 -5.5511151231257827e-017 ;
	setAttr ".rp" -type "double3" 1.5641197593202483e-005 6.7722125585196054 9.2057387802713109e-006 ;
	setAttr ".sp" -type "double3" 1.5641197593202483e-005 6.7722125585196054 9.2057387802713109e-006 ;
createNode transform -n "Ref:bip_upperArm_RFK" -p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKshoulder" -ln "rFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "clavicle:chest:root:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".parent";
	setAttr ".zooCmd0" -type "string" "parent to clavicle^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 0\" #;";
	setAttr ".zooCmd1" -type "string" "parent to chest^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 1\" #;";
	setAttr ".zooCmd2" -type "string" "parent to root^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 2\" #;";
	setAttr ".zooCmd3" -type "string" "parent to world^zooFlags;\nzooUtils;\nzooChangeSpace \"-attr parent 3\" #;";
createNode nurbsSurface -n "Ref:bip_upperArm_RFKShape" -p "Ref:bip_upperArm_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 3.8019010445141466 -6.75
		6.75 3.8019010445141461 -5.0515012095173062e-016
		9.1290500549637277e-016 3.8019010445141457 6.75
		-6.75 3.8019010445141461 1.0708597095003547e-015
		-1.7247555922535185e-015 3.8019010445141466 -6.75
		6.75 3.8019010445141461 -5.0515012095173062e-016
		9.1290500549637277e-016 3.8019010445141457 6.75
		-1.7247555922535185e-015 7.6038020890282922 -6.75
		6.75 7.6038020890282922 -3.2145916787837403e-016
		9.1290500549637277e-016 7.6038020890282922 6.75
		-6.75 7.6038020890282922 1.2545506625737113e-015
		-1.7247555922535185e-015 7.6038020890282922 -6.75
		6.75 7.6038020890282922 -3.2145916787837403e-016
		9.1290500549637277e-016 7.6038020890282922 6.75
		-1.7247555922535185e-015 11.405703133542438 -6.75
		6.75 11.405703133542438 -1.3776821480501744e-016
		9.1290500549637277e-016 11.405703133542438 6.75
		-6.75 11.405703133542438 1.4382416156470679e-015
		-1.7247555922535185e-015 11.405703133542438 -6.75
		6.75 11.405703133542438 -1.3776821480501744e-016
		9.1290500549637277e-016 11.405703133542438 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -27.511755037848573 -1.987846675914697e-016 6.3611093629270304e-015 ;
	setAttr ".rp" -type "double3" -1.2646051992359908e-005 11.405703133535187 2.2937207200812715e-006 ;
	setAttr ".sp" -type "double3" -1.2646051992359908e-005 11.405703133535187 2.2937207200812715e-006 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.2646051992359908e-005 11.405703133535187 2.2937207200812715e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999956 0.99999999999999956 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_lowerArm_RFKShape" -p "Ref:bip_lowerArm_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-6.75 0 8.8716875642699811e-016
		-1.7247555922535185e-015 0 -6.75
		6.75 0 -6.8884107402508721e-016
		9.1290500549637277e-016 0 6.75
		-1.7247555922535185e-015 4.06642964009243 -6.75
		6.75 4.06642964009243 -5.0515012095173062e-016
		9.1290500549637277e-016 4.0664296400924291 6.75
		-6.75 4.06642964009243 1.0708597095003547e-015
		-1.7247555922535185e-015 4.06642964009243 -6.75
		6.75 4.06642964009243 -5.0515012095173062e-016
		9.1290500549637277e-016 4.0664296400924291 6.75
		-1.7247555922535185e-015 8.13285928018486 -6.75
		6.75 8.13285928018486 -3.2145916787837403e-016
		9.1290500549637277e-016 8.13285928018486 6.75
		-6.75 8.13285928018486 1.2545506625737113e-015
		-1.7247555922535185e-015 8.13285928018486 -6.75
		6.75 8.13285928018486 -3.2145916787837403e-016
		9.1290500549637277e-016 8.13285928018486 6.75
		-1.7247555922535185e-015 12.199288920277288 -6.75
		6.75 12.199288920277288 -1.3776821480501744e-016
		9.1290500549637277e-016 12.199288920277288 6.75
		-6.75 12.199288920277288 1.4382416156470679e-015
		-1.7247555922535185e-015 12.199288920277288 -6.75
		6.75 12.199288920277288 -1.3776821480501744e-016
		9.1290500549637277e-016 12.199288920277288 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 2.3854160110976364e-015 1.5902773407317588e-015 6.3611093629270351e-015 ;
	setAttr ".rp" -type "double3" -1.8540565861716041e-005 12.19928892026314 1.1262108134957316e-006 ;
	setAttr ".sp" -type "double3" -1.8540565861716041e-005 12.19928892026314 1.1262108134957316e-006 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.8540565861716041e-005 12.19928892026314 1.1262108134957316e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_hand_RFKShape" -p "Ref:bip_hand_RFK";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.5 1.239913933245157e-015 1.3776821480501759e-016
		-4.4999999999999991 3.1819805153394647 5.6115844257056846e-016
		-4.4999999999999991 2.1847096657386672e-016 -3.1819805153394651
		-4.4999999999999991 -3.1819805153394647 -7.2952126498646792e-016
		-4.4999999999999991 -5.7174176977771623e-016 3.1819805153394642
		-4.4999999999999991 3.1819805153394647 5.6115844257056846e-016
		-4.4999999999999991 2.1847096657386672e-016 -3.1819805153394651
		-4.4999999999999991 -3.1819805153394647 -7.2952126498646792e-016
		9.2078410174059989e-016 10.318019484660535 1.3729023790812763e-015
		1.5525597127295189e-015 -6.3177561098891937e-016 -10.318019484660535
		9.2078410174059989e-016 -10.318019484660535 -1.3191124237115521e-016
		2.8900849075168082e-016 -5.1375466905119268e-016 10.318019484660535
		9.2078410174059989e-016 10.318019484660535 1.3729023790812763e-015
		1.5525597127295189e-015 -6.3177561098891937e-016 -10.318019484660535
		9.2078410174059989e-016 -10.318019484660535 -1.3191124237115521e-016
		4.5 3.1819805153394638 2.8562201296053342e-016
		4.5 -6.081383222562378e-016 -3.1819805153394634
		4.5 -3.1819805153394638 6.481608830637064e-016
		4.5 2.5486751905238842e-016 3.1819805153394642
		4.5 3.1819805153394638 2.8562201296053342e-016
		4.5 -6.081383222562378e-016 -3.1819805153394634
		4.5 -3.1819805153394638 6.481608830637064e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		4.5 -4.1330464441505232e-016 -1.3776821480501744e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "Ref:bip_upperArm_RFK_pointConstraint1" -p "Ref:bip_upperArm_RFK";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 1.5641197604665535e-005 6.772212558519616 9.2057387804655999e-006 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1" 
		-p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "rShoulderControlW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_2FKcontrolW1" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w2" -ln "UpperbodyControlW2" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w3" -ln "mainW3" -dv 1 -min 0 -at "double";
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
	setAttr -s 4 ".tg";
	setAttr ".tg[0].tot" -type "double3" 1.5641197596156015e-005 6.7722125585195956 
		9.2057387803716284e-006 ;
	setAttr ".tg[0].tor" -type "double3" 2.2155106074746671 -5.6947034275985393 -35.192646244348985 ;
	setAttr ".tg[1].tot" -type "double3" -9.5699799999999975 -2.463214722946121 -0.43650891647164525 ;
	setAttr ".tg[1].tor" -type "double3" 7.6793799484713627 -5.2220071821852878 27.555971271596398 ;
	setAttr ".tg[2].tot" -type "double3" -9.5699799999999975 19.113964456502462 -2.9520699999999991 ;
	setAttr ".tg[2].tor" -type "double3" -176.3183082680782 3.1276374108014027 -27.847168852670588 ;
	setAttr ".tg[3].tot" -type "double3" -9.5699799999999975 60.479299999999967 -2.9520699999999991 ;
	setAttr ".tg[3].tor" -type "double3" -176.3183082680782 3.1276374108014027 -27.847168852670588 ;
	setAttr ".lr" -type "double3" 2.2155106074746667 -5.6947034275985402 -35.192646244348985 ;
	setAttr ".rst" -type "double3" 1.2351231148954867e-014 0 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" 2.2155106074746662 -5.6947034275985384 -35.192646244348978 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 131.22305721606543 1.8085058404470704 ;
	setAttr ".sp" -type "double3" 0 131.22305721606543 1.8085058404470704 ;
createNode orientConstraint -n "neckControlLockParent_orientConstraint1" -p "neckControlLockParent";
	addAttr -ci true -k true -sn "w0" -ln "neckControlZeroGroupW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -175.77410517956295 0 0 ;
	setAttr ".rsrr" -type "double3" -175.77410517956295 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neckControlLockParent_pointConstraint1" -p "neckControlLockParent";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 68.544298596232537 5.3716723259077446 ;
	setAttr -k on ".w0";
createNode transform -n "neckControl" -p "neckControlLockParent";
	addAttr -ci true -sn "neckControl" -ln "neckControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -7.9513867036587939e-016 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\nzooChangeSpace ( \"-attr lock \"+ $other ) #;\n";
createNode nurbsSurface -n "neckControlShape" -p "neckControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-4.0000000000000009 -1.7151265217091316e-015 7.9999999999999991
		-1.4695276245868527e-015 -1.0000000000000018 8
		3.9999999999999991 -1.9600477924736071e-015 8
		-2.4651903288156619e-032 0.99999999999999822 8
		-4.0000000000000009 -1.4702052509446562e-015 7.9999999999999991
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		3.018887740049135e-048 -1.2246063538223773e-016 -2.7191723402317286e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "neckControl_pointConstraint1" -p "neckControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_neckW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 65.644890672330931 -1.5164592358228255 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0 -72.288323112770897 -5.1370109956579562 ;
	setAttr ".r" -type "double3" 5.3149469787955157 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 69.051829073004356 -1.2647211984549538 ;
	setAttr ".rpt" -type "double3" 0 -0.17973213913918867 6.4017321941129044 ;
	setAttr ".sp" -type "double3" 0 69.051829073004342 -1.2647211984549536 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 -2.2204460492503136e-016 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 -72.288323112770897 -5.1370109956579562 ;
	setAttr ".sp" -type "double3" 0 -72.288323112770897 -5.1370109956579562 ;
createNode orientConstraint -n "headControlLockParent_orientConstraint1" -p "headControlLockParent";
	addAttr -ci true -k true -sn "w0" -ln "headControlZeroGroupW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -170.45915820076743 0 0 ;
	setAttr ".rsrr" -type "double3" -170.45915820076743 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "headControlLockParent_pointConstraint1" -p "headControlLockParent";
	addAttr -ci true -k true -sn "w0" -ln "bip_neckW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 -137.93321378510183 -3.6205517598351289 ;
	setAttr -k on ".w0";
createNode transform -n "headControl" -p "headControlLockParent";
	addAttr -ci true -sn "headControl" -ln "headControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\nzooChangeSpace ( \"-attr lock \"+ $other ) #;\n";
createNode nurbsSurface -n "headControlShape" -p "headControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		2 0 2.2360679774997898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		10
		-3.0000000000000009 -1.2863448912818487e-015 6
		-1.1021457184401395e-015 -0.75000000000000133 6
		2.9999999999999991 -1.4700358443552053e-015 6
		-1.8488927466117464e-032 0.74999999999999867 6
		-3.0000000000000009 -1.1026539382084921e-015 6
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		2.2641658050368512e-048 -9.1845476536678294e-017 -2.0393792551737965e-032
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "headControl_pointConstraint1" -p "headControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_headW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 69.051829073004342 -1.2647211984549518 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_LIK" -p "main";
	addAttr -ci true -sn "lIKshoulder" -ln "lIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.016133455741040151 2.698992349380235 -0.68484594710318514 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.6816917319205822 -3.1276374108013671 27.847168852670571 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" -5.3290705182007514e-015 -11.405771214284009 2.9420910152566648e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -27.511755037847252 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" 7.1054273576010019e-015 -12.199295772835329 -7.9936057773011271e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector2" -p "Ref:bip_lowerArm_LIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Ref:bip_upperArm_LIK_pointConstraint1" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 9.5699812201278469 60.479330813616343 -2.9520656563520222 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 14.012006788646818 3.2498568350732242 3.0534590495057654 ;
	setAttr ".sp" -type "double3" 14.012006788646737 3.2498568350732384 3.0534590495057548 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "Ref:bip_hand_LIKikHandle_pointConstraint1" -p "Ref:bip_hand_LIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "likHandControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 5.8850014413409184 37.191394102110856 -1.8153546872893989 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "Ref:bip_hand_LIKikHandle_poleVectorConstraint1" 
		-p "Ref:bip_hand_LIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "lElbowControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 5.3521407402196282 -10.045466048049455 -0.73131276958354441 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 19.897008229987737 40.44125093718408 1.2381043622163668 ;
	setAttr ".sp" -type "double3" 19.897008229987737 40.44125093718408 1.2381043622163668 ;
createNode parentConstraint -n "likHandControlGroup_parentConstraint1" -p "likHandControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "UpperbodyControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 19.897008229987737 -0.92408460631344114 1.2381043622163668 ;
	setAttr ".rst" -type "double3" 0 -7.1054273576010019e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-016 ;
	setAttr ".rp" -type "double3" 19.897008229987737 40.44125093718408 1.2381043622163663 ;
	setAttr ".sp" -type "double3" 19.897008229987737 40.44125093718408 1.2381043622163663 ;
createNode transform -n "likHandControlZeroGroup" -p "likHandControlWeaponGroup";
	setAttr ".t" -type "double3" 19.897008229987737 40.44125093718408 1.2381043622163663 ;
	setAttr ".rp" -type "double3" 19.897008229987737 40.44125093718408 1.2381043622163663 ;
	setAttr ".sp" -type "double3" 19.897008229987737 40.44125093718408 1.2381043622163663 ;
createNode transform -n "likHandControl" -p "likHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lIKcontrol" -ln "lIKcontrol" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\nzooChangeSpace ( \"-attr lock \"+ $other +\"-objs %1\" ) #;\n";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\nzooChangeSpace ( \"-attr aim \"+ $other +\"-objs %1\" ) #;\n";
	setAttr ".zooCmd2" -type "string" "toggle weapon parent^int $other = !`getAttr #.weaponParent`;\nzooChangeSpace ( \"-attr weaponParent \"+ $other +\"-objs %1\" ) #;\n";
createNode nurbsSurface -n "likHandControlShape" -p "likHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-1.9999999999999996 -2.4494897427831783 -2.4494897427831779
		-1.9999999999999998 -2.4494897427831779 2.4494897427831783
		-2 2.4494897427831779 2.4494897427831783
		-1.9999999999999998 2.4494897427831783 -2.4494897427831779
		-1.9999999999999996 -2.4494897427831779 -2.4494897427831783
		2 -2.4494897427831792 -2.4494897427831779
		2 -2.4494897427831783 2.4494897427831788
		1.9999999999999998 2.4494897427831788 2.4494897427831783
		2 2.4494897427831788 -2.4494897427831783
		2 -2.4494897427831783 -2.4494897427831788
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode orientConstraint -n "likHandControl_orientConstraint1" -p "likHandControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -23.814422624514268 -0.39011982563394049 27.337739634094728 ;
	setAttr ".rsrr" -type "double3" -23.830063305926668 -3.1276374108013685 27.847168852670549 ;
	setAttr -k on ".w0";
createNode transform -n "lElbowControl" -p "main";
	addAttr -ci true -sn "lElbowControl" -ln "lElbowControl" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 14.922121960347475 50.433864765566888 -3.6833784259355666 ;
	setAttr ".sp" -type "double3" 14.922121960347475 50.433864765566888 -3.6833784259355666 ;
	setAttr ".hdl" -type "double3" 14.922121960347475 50.433864765566888 -3.6833784259355666 ;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "place sensibly^float $pos[] = `zooFindPolePosition \"-start %1 -mid %2 -end %3\"`;\nmove -ws -a -rpr $pos[0] $pos[1] $pos[2];\n";
createNode nurbsSurface -n "lElbowControlShape" -p "lElbowControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		13.922121960347475 50.433864765566888 -3.6833784259355671
		13.922121960347475 50.433864765566888 -3.6833784259355671
		13.922121960347475 50.433864765566888 -3.6833784259355671
		13.922121960347475 50.433864765566888 -3.6833784259355671
		13.922121960347475 50.433864765566888 -3.6833784259355671
		14.922121960347475 50.433864765566888 -4.6833784259355671
		14.922121960347475 49.433864765566888 -3.6833784259355666
		14.922121960347475 50.433864765566888 -2.6833784259355666
		14.922121960347475 51.433864765566888 -3.6833784259355666
		14.922121960347475 50.433864765566888 -4.6833784259355671
		15.922121960347475 50.433864765566888 -3.6833784259355666
		15.922121960347475 50.433864765566888 -3.6833784259355666
		15.922121960347475 50.433864765566888 -3.6833784259355666
		15.922121960347475 50.433864765566888 -3.6833784259355666
		15.922121960347475 50.433864765566888 -3.6833784259355666
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 19.897008123500505 37.887100894058612 1.2381043556356346 ;
	setAttr ".rpt" -type "double3" -18.069044634404136 2.84052845109637 -14.306195502580819 ;
	setAttr ".sp" -type "double3" 19.897008123500509 37.887100894058619 1.2381043556356346 ;
	setAttr ".spt" -type "double3" -3.5527136788005005e-015 -7.1054273576010011e-015 
		0 ;
createNode transform -n "lHandControl" -p "lHandControlGroup";
	addAttr -ci true -k true -sn "bip_thumb_0_LControlRoll" -ln "bip_thumb_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_index_0_LControlRoll" -ln "bip_index_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_middle_0_LControlRoll" -ln "bip_middle_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_ring_0_LControlRoll" -ln "bip_ring_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_pinky_0_LControlRoll" -ln "bip_pinky_0_LControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 1.590277340731758e-015 -3.180554681463516e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -1.2355754050855254 -3.6676125271313418 1.7383819399593958 ;
	setAttr ".dh" yes;
	setAttr -k on ".bip_thumb_0_LControlRoll";
	setAttr -k on ".bip_index_0_LControlRoll";
	setAttr -k on ".bip_middle_0_LControlRoll";
	setAttr -k on ".bip_ring_0_LControlRoll";
	setAttr -k on ".bip_pinky_0_LControlRoll";
createNode nurbsSurface -n "lHandControlShape" -p "lHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 -3.7809014983573956e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 3.7809014983573956e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -3.7809014983573956e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 3.7809014983573956e-016 4.5
		-1.1498370615023457e-015 -1.7027666579126917 -4.5
		4.5 -1.7027666579126917 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.7027666579126914 4.5
		-4.5 -1.7027666579126917 7.1390647300023646e-016
		-1.1498370615023457e-015 -1.7027666579126917 -4.5
		4.5 -1.7027666579126917 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.7027666579126914 4.5
		-1.1498370615023457e-015 -3.4055333158253833 -4.5
		4.5 -3.4055333158253833 -2.1430611191891602e-016
		6.0860333699758185e-016 -3.4055333158253833 4.5
		-4.5 -3.4055333158253833 8.3636710838247419e-016
		-1.1498370615023457e-015 -3.4055333158253833 -4.5
		4.5 -3.4055333158253833 -2.1430611191891602e-016
		6.0860333699758185e-016 -3.4055333158253833 4.5
		-1.1498370615023457e-015 -5.1082999737380748 -4.5
		4.5 -5.1082999737380748 -9.1845476536678294e-017
		6.0860333699758185e-016 -5.1082999737380748 4.5
		-4.5 -5.1082999737380748 9.5882774376471192e-016
		-1.1498370615023457e-015 -5.1082999737380748 -4.5
		4.5 -5.1082999737380748 -9.1845476536678294e-017
		6.0860333699758185e-016 -5.1082999737380748 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -31.825484476350216 -2.9891484547336336 -20.471739752678083 ;
	setAttr ".rp" -type "double3" -1.7067528656018975 -2.3126350068830339 4.0889919874328138 ;
	setAttr ".sp" -type "double3" -1.7067528656018975 -2.3126350068830339 4.0889919874328138 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7067528656018955 -2.312635006883037 4.0889919874328173 ;
	setAttr ".sp" -type "double3" -1.7067528656018955 -2.312635006883037 4.0889919874328173 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.7067528656018955 -2.312635006883037 4.0889919874328173 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.5538173684758535e-015 0 -1.5902773407317588e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_0_LControlShape" -p "Ref:bip_thumb_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3484329786731899e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3484329786731899e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3484329786731899e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3484329786731899e-016 2.25
		-5.7491853075117283e-016 -0.6072802260286666 -2.25
		2.25 -0.6072802260286666 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.60728022602866649 2.25
		-2.25 -0.6072802260286666 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.6072802260286666 -2.25
		2.25 -0.6072802260286666 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.60728022602866649 2.25
		-5.7491853075117283e-016 -1.2145604520573332 -2.25
		2.25 -1.2145604520573332 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2145604520573332 2.25
		-2.25 -1.2145604520573332 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2145604520573332 -2.25
		2.25 -1.2145604520573332 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2145604520573332 2.25
		-5.7491853075117283e-016 -1.8218406780859997 -2.25
		2.25 -1.8218406780859997 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8218406780859997 2.25
		-2.25 -1.8218406780859997 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8218406780859997 -2.25
		2.25 -1.8218406780859997 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8218406780859997 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 17.258509211629423 0 7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-016 -1.8218406780860057 -8.8817841970012523e-016 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-016 -1.8218406780860057 -8.8817841970012523e-016 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 7.1054273576010019e-015 -1.8218406780860066 -2.6645352591003757e-015 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-015 -1.8218406780860066 -2.6645352591003757e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-015 -1.8218406780860066 -2.6645352591003757e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.4209000637260321e-015 0 -2.1555712391950008e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_1_LControlShape" -p "Ref:bip_thumb_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -9.8058500134803605e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 9.8058500134803605e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -9.8058500134803605e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 9.8058500134803605e-017 2.25
		-5.7491853075117283e-016 -0.44161622466761125 -2.25
		2.25 -0.44161622466761125 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.44161622466761119 2.25
		-2.25 -0.44161622466761125 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.44161622466761125 -2.25
		2.25 -0.44161622466761125 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.44161622466761119 2.25
		-5.7491853075117283e-016 -0.88323244933522249 -2.25
		2.25 -0.88323244933522249 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.88323244933522249 2.25
		-2.25 -0.88323244933522249 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.88323244933522249 -2.25
		2.25 -0.88323244933522249 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.88323244933522249 2.25
		-5.7491853075117283e-016 -1.3248486740028338 -2.25
		2.25 -1.3248486740028338 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3248486740028338 2.25
		-2.25 -1.3248486740028338 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3248486740028338 -2.25
		2.25 -1.3248486740028338 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3248486740028338 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -5.2156871478047853 3.1805546814635168e-015 -5.6218788803212549e-016 ;
	setAttr ".rp" -type "double3" -1.1102230246251565e-015 -1.3248486740028382 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-015 -1.3248486740028382 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.7747582837255322e-015 -1.3248486740028347 4.4408920985006262e-015 ;
	setAttr ".sp" -type "double3" 3.7747582837255322e-015 -1.3248486740028347 4.4408920985006262e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.7747582837255322e-015 -1.3248486740028347 4.4408920985006262e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.5902773407317584e-015 -3.1805546814635168e-015 2.1866313435061676e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_2_LControlShape" -p "Ref:bip_thumb_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.14010957327855e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.14010957327855e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.14010957327855e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.14010957327855e-016 2.25
		-5.7491853075117283e-016 -0.51345970493788129 -2.25
		2.25 -0.51345970493788129 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.51345970493788118 2.25
		-2.25 -0.51345970493788129 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.51345970493788129 -2.25
		2.25 -0.51345970493788129 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.51345970493788118 2.25
		-5.7491853075117283e-016 -1.0269194098757626 -2.25
		2.25 -1.0269194098757626 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0269194098757626 2.25
		-2.25 -1.0269194098757626 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.0269194098757626 -2.25
		2.25 -1.0269194098757626 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0269194098757626 2.25
		-5.7491853075117283e-016 -1.5403791148136439 -2.25
		2.25 -1.5403791148136439 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.5403791148136439 2.25
		-2.25 -1.5403791148136439 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.5403791148136439 -2.25
		2.25 -1.5403791148136439 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.5403791148136439 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -50.389100798915791 87.502843682037195 -63.700594191873989 ;
	setAttr ".rp" -type "double3" 0.93837317315526203 -5.097868935187412 3.2359131501908216 ;
	setAttr ".sp" -type "double3" 0.93837317315526203 -5.097868935187412 3.2359131501908216 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0.93837317315526647 -5.0978689351874165 3.2359131501908145 ;
	setAttr ".sp" -type "double3" 0.93837317315526647 -5.0978689351874165 3.2359131501908145 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" 0.93837317315526914 -8.6214076623503644 2.1202853110320654 ;
	setAttr ".sp" -type "double3" 0.93837317315526914 -8.6214076623503644 2.1202853110320654 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.93837317315526647 -5.0978689351874156 3.2359131501908074 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 3.1805546814635168e-015 2.3854160110976376e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_0_LControlShape" -p "Ref:bip_index_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9708700074575472e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9708700074575472e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9708700074575472e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9708700074575472e-016 2.25
		-5.7491853075117283e-016 -0.88760094311814963 -2.25
		2.25 -0.88760094311814963 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.88760094311814952 2.25
		-2.25 -0.88760094311814963 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.88760094311814963 -2.25
		2.25 -0.88760094311814963 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.88760094311814952 2.25
		-5.7491853075117283e-016 -1.7752018862362993 -2.25
		2.25 -1.7752018862362993 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7752018862362993 2.25
		-2.25 -1.7752018862362993 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7752018862362993 -2.25
		2.25 -1.7752018862362993 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7752018862362993 2.25
		-5.7491853075117283e-016 -2.6628028293544488 -2.25
		2.25 -2.6628028293544488 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6628028293544488 2.25
		-2.25 -2.6628028293544488 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6628028293544488 -2.25
		2.25 -2.6628028293544488 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6628028293544488 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 43.026611314257167 0 -1.987846675914698e-015 ;
	setAttr ".rp" -type "double3" 2.6645352591003757e-015 -2.6628028293544492 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-015 -2.6628028293544492 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 5.3290705182007514e-015 -2.6628028293544546 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 5.3290705182007514e-015 -2.6628028293544546 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -2.6628028293544546 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 -3.1805546814635168e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_1_LControlShape" -p "Ref:bip_index_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3521261600354558e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3521261600354558e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3521261600354558e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3521261600354558e-016 2.25
		-5.7491853075117283e-016 -0.60894348704935786 -2.25
		2.25 -0.60894348704935786 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.60894348704935775 2.25
		-2.25 -0.60894348704935786 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.60894348704935786 -2.25
		2.25 -0.60894348704935786 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.60894348704935775 2.25
		-5.7491853075117283e-016 -1.2178869740987157 -2.25
		2.25 -1.2178869740987157 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2178869740987157 2.25
		-2.25 -1.2178869740987157 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2178869740987157 -2.25
		2.25 -1.2178869740987157 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2178869740987157 2.25
		-5.7491853075117283e-016 -1.8268304611480737 -2.25
		2.25 -1.8268304611480737 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8268304611480737 2.25
		-2.25 -1.8268304611480737 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8268304611480737 -2.25
		2.25 -1.8268304611480737 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8268304611480737 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" 8.8882207617830531 1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -1.8268304611480861 1.7763568394002505e-014 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 -1.8268304611480861 1.7763568394002505e-014 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -2.6645352591003757e-015 -1.8268304611480861 2.1316282072803006e-014 ;
	setAttr ".sp" -type "double3" -2.6645352591003757e-015 -1.8268304611480861 2.1316282072803006e-014 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.6645352591003757e-015 -1.8268304611480861 2.1316282072803006e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 -1.5902773407317584e-015 1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_2_LControlShape" -p "Ref:bip_index_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.2905903945863493e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2905903945863493e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2905903945863493e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2905903945863493e-016 2.25
		-5.7491853075117283e-016 -0.58123024201470241 -2.25
		2.25 -0.58123024201470241 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.5812302420147023 2.25
		-2.25 -0.58123024201470241 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58123024201470241 -2.25
		2.25 -0.58123024201470241 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.5812302420147023 2.25
		-5.7491853075117283e-016 -1.1624604840294048 -2.25
		2.25 -1.1624604840294048 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1624604840294048 2.25
		-2.25 -1.1624604840294048 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1624604840294048 -2.25
		2.25 -1.1624604840294048 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1624604840294048 2.25
		-5.7491853075117283e-016 -1.7436907260441072 -2.25
		2.25 -1.7436907260441072 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7436907260441072 2.25
		-2.25 -1.7436907260441072 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7436907260441072 -2.25
		2.25 -1.7436907260441072 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7436907260441072 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 169.08952739939909 82.863767544694895 156.31731831963776 ;
	setAttr ".rp" -type "double3" 0.78184337599198961 -4.8289839324282173 1.4711776702560728 ;
	setAttr ".sp" -type "double3" 0.78184337599198961 -4.8289839324282173 1.4711776702560728 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0.78184337599199161 -4.8289839324282244 1.4711776702560684 ;
	setAttr ".sp" -type "double3" 0.78184337599199161 -4.8289839324282244 1.4711776702560684 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" 0.78184337599199027 -9.0333439752229534 0.0037119532456644233 ;
	setAttr ".sp" -type "double3" 0.78184337599199027 -9.0333439752229534 0.0037119532456644233 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.7818433759919925 -4.8289839324282307 1.4711776702560613 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587939e-016 5.9635400277440959e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999944 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_0_LControlShape" -p "Ref:bip_middle_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.7138870024997636e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.7138870024997636e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.7138870024997636e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.7138870024997636e-016 2.25
		-5.7491853075117283e-016 -1.2222260493183568 -2.25
		2.25 -1.2222260493183568 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2222260493183565 2.25
		-2.25 -1.2222260493183568 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.2222260493183568 -2.25
		2.25 -1.2222260493183568 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2222260493183565 2.25
		-5.7491853075117283e-016 -2.4444520986367135 -2.25
		2.25 -2.4444520986367135 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.4444520986367135 2.25
		-2.25 -2.4444520986367135 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.4444520986367135 -2.25
		2.25 -2.4444520986367135 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.4444520986367135 2.25
		-5.7491853075117283e-016 -3.6666781479550705 -2.25
		2.25 -3.6666781479550705 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.6666781479550705 2.25
		-2.25 -3.6666781479550705 4.7941387188235596e-016
		-5.7491853075117283e-016 -3.6666781479550705 -2.25
		2.25 -3.6666781479550705 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.6666781479550705 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 47.104021267881457 -7.9513867036587919e-016 0 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -3.6666781479550679 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -3.6666781479550679 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -4.4408920985006262e-015 -3.6666781479550554 0 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-015 -3.6666781479550554 0 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-015 -3.6666781479550554 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.1805546814635168e-015 -3.1805546814635168e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_1_LControlShape" -p "Ref:bip_middle_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.4700159419973096e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4700159419973096e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4700159419973096e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4700159419973096e-016 2.25
		-5.7491853075117283e-016 -0.66203632486077724 -2.25
		2.25 -0.66203632486077724 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.66203632486077713 2.25
		-2.25 -0.66203632486077724 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.66203632486077724 -2.25
		2.25 -0.66203632486077724 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.66203632486077713 2.25
		-5.7491853075117283e-016 -1.3240726497215545 -2.25
		2.25 -1.3240726497215545 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3240726497215545 2.25
		-2.25 -1.3240726497215545 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.3240726497215545 -2.25
		2.25 -1.3240726497215545 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3240726497215545 2.25
		-5.7491853075117283e-016 -1.9861089745823317 -2.25
		2.25 -1.9861089745823317 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9861089745823317 2.25
		-2.25 -1.9861089745823317 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.9861089745823317 -2.25
		2.25 -1.9861089745823317 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9861089745823317 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 16.467219474647791 -7.9513867036587899e-016 2.3854160110976368e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.9861089745823346 1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.9861089745823346 1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.9861089745823435 1.4210854715202004e-014 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.9861089745823435 1.4210854715202004e-014 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -1.9861089745823435 1.4210854715202004e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 3.180554681463516e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_2_LControlShape" -p "Ref:bip_middle_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.4827902649476255e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4827902649476255e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4827902649476255e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4827902649476255e-016 2.25
		-5.7491853075117283e-016 -0.66778936846867254 -2.25
		2.25 -0.66778936846867254 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.66778936846867243 2.25
		-2.25 -0.66778936846867254 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.66778936846867254 -2.25
		2.25 -0.66778936846867254 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.66778936846867243 2.25
		-5.7491853075117283e-016 -1.3355787369373451 -2.25
		2.25 -1.3355787369373451 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3355787369373451 2.25
		-2.25 -1.3355787369373451 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.3355787369373451 -2.25
		2.25 -1.3355787369373451 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3355787369373451 2.25
		-5.7491853075117283e-016 -2.0033681054060177 -2.25
		2.25 -2.0033681054060177 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0033681054060177 2.25
		-2.25 -2.0033681054060177 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.0033681054060177 -2.25
		2.25 -2.0033681054060177 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0033681054060177 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 173.69265918617106 72.067620399211734 147.53326013495632 ;
	setAttr ".rp" -type "double3" 0.83752626101473726 -5.1652777435662554 -0.47290920591820385 ;
	setAttr ".sp" -type "double3" 0.83752626101473726 -5.1652777435662554 -0.47290920591820385 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0.83752626101473338 -5.1652777435662607 -0.47290920591820296 ;
	setAttr ".sp" -type "double3" 0.83752626101473338 -5.1652777435662607 -0.47290920591820296 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" 0.8375262610147316 -8.9406136888272414 -1.545416444432584 ;
	setAttr ".sp" -type "double3" 0.8375262610147316 -8.9406136888272414 -1.545416444432584 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.83752626101473027 -5.1652777435662678 -0.47290920591820296 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.9878466759146985e-016 7.9513867036587899e-016 2.1245111348838332e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_0_LControlShape" -p "Ref:bip_ring_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.0351883783349648e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0351883783349648e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.0351883783349648e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0351883783349648e-016 2.25
		-5.7491853075117283e-016 -0.91656736222981117 -2.25
		2.25 -0.91656736222981117 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.91656736222981106 2.25
		-2.25 -0.91656736222981117 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.91656736222981117 -2.25
		2.25 -0.91656736222981117 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.91656736222981106 2.25
		-5.7491853075117283e-016 -1.8331347244596223 -2.25
		2.25 -1.8331347244596223 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8331347244596223 2.25
		-2.25 -1.8331347244596223 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8331347244596223 -2.25
		2.25 -1.8331347244596223 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8331347244596223 2.25
		-5.7491853075117283e-016 -2.7497020866894335 -2.25
		2.25 -2.7497020866894335 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7497020866894335 2.25
		-2.25 -2.7497020866894335 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.7497020866894335 -2.25
		2.25 -2.7497020866894335 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7497020866894335 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 27.63200602987331 0 2.0748149679859665e-015 ;
	setAttr ".rp" -type "double3" 3.9968028886505635e-015 -2.7497020866894357 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 3.9968028886505635e-015 -2.7497020866894357 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -2.7497020866894371 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -2.7497020866894371 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -2.7497020866894371 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317588e-015 -7.9513867036587939e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_1_LControlShape" -p "Ref:bip_ring_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.2979610195789523e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2979610195789523e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2979610195789523e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2979610195789523e-016 2.25
		-5.7491853075117283e-016 -0.58454967641171984 -2.25
		2.25 -0.58454967641171984 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58454967641171973 2.25
		-2.25 -0.58454967641171984 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58454967641171984 -2.25
		2.25 -0.58454967641171984 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58454967641171973 2.25
		-5.7491853075117283e-016 -1.1690993528234397 -2.25
		2.25 -1.1690993528234397 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1690993528234397 2.25
		-2.25 -1.1690993528234397 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1690993528234397 -2.25
		2.25 -1.1690993528234397 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1690993528234397 2.25
		-5.7491853075117283e-016 -1.7536490292351594 -2.25
		2.25 -1.7536490292351594 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7536490292351594 2.25
		-2.25 -1.7536490292351594 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7536490292351594 -2.25
		2.25 -1.7536490292351594 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7536490292351594 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 20.139855905940252 0 -3.975693351829394e-016 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -1.7536490292351594 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -1.7536490292351594 -1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -1.7536490292351594 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 -1.7536490292351594 -1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -1.7536490292351594 -1.0658141036401503e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 0 1.1927080055488184e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_2_LControlShape" -p "Ref:bip_ring_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3503020417399044e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3503020417399044e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3503020417399044e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3503020417399044e-016 2.25
		-5.7491853075117283e-016 -0.60812197720174532 -2.25
		2.25 -0.60812197720174532 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.60812197720174521 2.25
		-2.25 -0.60812197720174532 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.60812197720174532 -2.25
		2.25 -0.60812197720174532 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.60812197720174521 2.25
		-5.7491853075117283e-016 -1.2162439544034906 -2.25
		2.25 -1.2162439544034906 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2162439544034906 2.25
		-2.25 -1.2162439544034906 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2162439544034906 -2.25
		2.25 -1.2162439544034906 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2162439544034906 2.25
		-5.7491853075117283e-016 -1.8243659316052359 -2.25
		2.25 -1.8243659316052359 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8243659316052359 2.25
		-2.25 -1.8243659316052359 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8243659316052359 -2.25
		2.25 -1.8243659316052359 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8243659316052359 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 167.30326823714444 73.811838255953589 141.81417926385203 ;
	setAttr ".rp" -type "double3" 0.068713341144764045 -4.878183571019262 -2.1447895257226257 ;
	setAttr ".sp" -type "double3" 0.068713341144764045 -4.878183571019262 -2.1447895257226257 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0.068713341144763351 -4.8781835710192629 -2.1447895257226257 ;
	setAttr ".sp" -type "double3" 0.068713341144763351 -4.8781835710192629 -2.1447895257226257 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" 0.068713341144760243 -8.0699462811072493 -2.9975635475450617 ;
	setAttr ".sp" -type "double3" 0.068713341144760243 -8.0699462811072493 -2.9975635475450617 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.068713341144762463 -4.8781835710192629 -2.1447895257226257 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.4908850069360245e-016 7.9513867036587959e-016 -3.2069557701280104e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_0_LControlShape" -p "Ref:bip_pinky_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.740899141087078e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.740899141087078e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.740899141087078e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.740899141087078e-016 2.25
		-5.7491853075117283e-016 -0.7840312723089381 -2.25
		2.25 -0.7840312723089381 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.78403127230893799 2.25
		-2.25 -0.7840312723089381 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.7840312723089381 -2.25
		2.25 -0.7840312723089381 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.78403127230893799 2.25
		-5.7491853075117283e-016 -1.5680625446178762 -2.25
		2.25 -1.5680625446178762 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5680625446178762 2.25
		-2.25 -1.5680625446178762 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5680625446178762 -2.25
		2.25 -1.5680625446178762 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5680625446178762 2.25
		-5.7491853075117283e-016 -2.3520938169268142 -2.25
		2.25 -2.3520938169268142 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3520938169268142 2.25
		-2.25 -2.3520938169268142 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3520938169268142 -2.25
		2.25 -2.3520938169268142 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3520938169268142 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 32.378059125879453 0 -3.2613109526725515e-017 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -2.3520938169267973 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -2.3520938169267973 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -4.6629367034256575e-015 -2.3520938169267911 0 ;
	setAttr ".sp" -type "double3" -4.6629367034256575e-015 -2.3520938169267911 0 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.6629367034256575e-015 -2.3520938169267911 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 -3.975693351829396e-016 -2.1866313435061676e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_1_LControlShape" -p "Ref:bip_pinky_1_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.0020242930961632e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0020242930961632e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0020242930961632e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0020242930961632e-016 2.25
		-5.7491853075117283e-016 -0.45127162330040654 -2.25
		2.25 -0.45127162330040654 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45127162330040649 2.25
		-2.25 -0.45127162330040654 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.45127162330040654 -2.25
		2.25 -0.45127162330040654 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45127162330040649 2.25
		-5.7491853075117283e-016 -0.90254324660081309 -2.25
		2.25 -0.90254324660081309 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.90254324660081309 2.25
		-2.25 -0.90254324660081309 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.90254324660081309 -2.25
		2.25 -0.90254324660081309 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.90254324660081309 2.25
		-5.7491853075117283e-016 -1.3538148699012196 -2.25
		2.25 -1.3538148699012196 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3538148699012196 2.25
		-2.25 -1.3538148699012196 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3538148699012196 -2.25
		2.25 -1.3538148699012196 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3538148699012196 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" 17.956323137477376 -1.1927080055488188e-015 -1.987846675914698e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.35381486990123 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.35381486990123 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.1086244689504383e-015 -1.3538148699012318 0 ;
	setAttr ".sp" -type "double3" 3.1086244689504383e-015 -1.3538148699012318 0 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 -1.3538148699012318 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270351e-015 -7.9513867036587919e-016 -7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_2_LControlShape" -p "Ref:bip_pinky_2_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.0109975719565199e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0109975719565199e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0109975719565199e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0109975719565199e-016 2.25
		-5.7491853075117283e-016 -0.45531282883358593 -2.25
		2.25 -0.45531282883358593 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45531282883358587 2.25
		-2.25 -0.45531282883358593 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.45531282883358593 -2.25
		2.25 -0.45531282883358593 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45531282883358587 2.25
		-5.7491853075117283e-016 -0.91062565766717185 -2.25
		2.25 -0.91062565766717185 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.91062565766717185 2.25
		-2.25 -0.91062565766717185 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.91062565766717185 -2.25
		2.25 -0.91062565766717185 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.91062565766717185 2.25
		-5.7491853075117283e-016 -1.3659384865007578 -2.25
		2.25 -1.3659384865007578 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3659384865007578 2.25
		-2.25 -1.3659384865007578 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3659384865007578 -2.25
		2.25 -1.3659384865007578 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3659384865007578 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "lHandControl_pointConstraint1" -p "lHandControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_hand_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 19.897008123500513 40.441250880927662 1.2381043556356355 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lHandControlGroup_parentConstraint1" -p "lHandControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_hand_LFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "likHandControlW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 -2.5541499868690241 
		2.0844234497077233e-015 ;
	setAttr ".tg[0].tor" -type "double3" -5.5659706925611528e-015 2.0673605429512864e-014 
		-3.8166656177562214e-014 ;
	setAttr ".tg[1].tot" -type "double3" -1.206135245013229e-007 -2.5541499868690272 
		-5.3535208535689946e-015 ;
	setAttr ".tg[1].tor" -type "double3" -1.4312496066585827e-014 1.590277340731758e-015 
		3.180554681463516e-015 ;
	setAttr ".lr" -type "double3" -23.814422624514261 -0.39011982563394126 27.337739634094731 ;
	setAttr ".rst" -type "double3" 19.110629793490659 -2.3785184612811676 15.336599668198049 ;
	setAttr ".rsrr" -type "double3" -23.830063305926661 -3.1276374108013685 27.847168852670556 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lkneeControl" -p "main";
	addAttr -ci true -sn "lKneeControl" -ln "lKneeControl" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 5.8043413209646637 22.183425831688901 2.0326755041061615 ;
	setAttr ".sp" -type "double3" 5.8043413209646637 22.183425831688901 2.0326755041061615 ;
	setAttr ".hdl" -type "double3" 5.8043413209646637 22.183425831688901 2.0326755041061615 ;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "place sensibly^float $pos[] = `zooFindPolePosition \"-start %1 -mid %2 -end %3\"`;\nmove -ws -a -rpr $pos[0] $pos[1] $pos[2];\n";
createNode nurbsSurface -n "lkneeControlShape" -p "lkneeControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		4.8043413209646637 22.183425831688901 2.032675504106161
		4.8043413209646637 22.183425831688901 2.032675504106161
		4.8043413209646637 22.183425831688901 2.032675504106161
		4.8043413209646637 22.183425831688901 2.032675504106161
		4.8043413209646637 22.183425831688901 2.032675504106161
		5.8043413209646637 22.183425831688901 1.0326755041061615
		5.8043413209646637 21.183425831688901 2.0326755041061615
		5.8043413209646637 22.183425831688901 3.0326755041061615
		5.8043413209646637 23.183425831688901 2.0326755041061615
		5.8043413209646637 22.183425831688901 1.0326755041061615
		6.8043413209646637 22.183425831688901 2.0326755041061615
		6.8043413209646637 22.183425831688901 2.0326755041061615
		6.8043413209646637 22.183425831688901 2.0326755041061615
		6.8043413209646637 22.183425831688901 2.0326755041061615
		6.8043413209646637 22.183425831688901 2.0326755041061615
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "ankleLift" -ln "ankleLift" -min 0 -max 55 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "lFootControl" -ln "lFootControl" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 0 15.810442638960174 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 6.4320869012751913 5.6484650388717812 -0.60850391774175061 ;
	setAttr ".rpt" -type "double3" -0.4091267554692849 0 -1.7294374856079235 ;
	setAttr ".sp" -type "double3" 6.4320869012751913 5.6484650388717812 -0.60850391774175061 ;
	setAttr ".hdl" -type "double3" 6.4320869012751913 5.6484650388717812 -0.60850391774175061 ;
	setAttr ".dh" yes;
	setAttr -k on ".heelRock";
	setAttr -k on ".ankleLift";
	setAttr -k on ".toeLift";
	setAttr -k on ".ankleBank";
	setAttr -k on ".rockL";
	setAttr -k on ".rockR";
	setAttr -k on ".ballPivot";
createNode nurbsSurface -n "lFootControlShape" -p "lFootControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		3.9830766644461666 5.6484650388717812 -0.60850391774175117
		3.9830766644461666 5.6484650388717812 -0.60850391774175117
		3.9830766644461666 5.6484650388717812 -0.60850391774175117
		3.9830766644461666 5.6484650388717812 -0.60850391774175117
		3.9830766644461666 5.6484650388717812 -0.60850391774175117
		5.2075817828606787 1.3245261556649659 -3.7277812651001394
		5.2075817828606787 1.3245261556649668 4.6778735509875125
		5.2075817828606787 9.9724039220785947 4.6778735509875125
		5.2075817828606787 9.9724039220785965 -3.7277812651001394
		5.2075817828606787 1.3245261556649668 -3.7277812651001394
		7.6565920196897022 1.3245261556649659 -3.7277812651001394
		7.6565920196897022 1.3245261556649659 4.6778735509875125
		7.6565920196897022 9.9724039220785965 4.6778735509875125
		7.6565920196897022 9.9724039220785965 -3.7277812651001394
		7.6565920196897022 1.3245261556649659 -3.7277812651001403
		8.8810971381042147 5.6484650388717812 -0.60850391774175072
		8.8810971381042147 5.6484650388717812 -0.60850391774175072
		8.8810971381042147 5.6484650388717812 -0.60850391774175072
		8.8810971381042147 5.6484650388717812 -0.60850391774175072
		8.8810971381042147 5.6484650388717812 -0.60850391774175072
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 6.0229601458059072 5.648465038871767 -2.3379414033496775 ;
	setAttr ".sp" -type "double3" 6.0229601458059072 5.648465038871767 -2.3379414033496775 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 6.0229601458059072 5.648465038871767 -2.3379414033496775 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 45.212477950226436 6.1371167254568633 0.88700641551619563 ;
	setAttr ".rp" -type "double3" -0.16143675237488675 -9.3483559546557675 1.3575156146052538 ;
	setAttr ".sp" -type "double3" -0.16143675237488675 -9.3483559546557675 1.3575156146052538 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" -0.16143675237488675 -9.3483559546557675 1.3575156146052538 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".rp" -type "double3" -2.5800002001021807 8.4772225241555065e-016 -0.21240598175884351 ;
	setAttr ".sp" -type "double3" -2.5800002001021807 8.4772225241555065e-016 -0.21240598175884351 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.5800002001021807 8.4772225241555065e-016 -0.21240598175884351 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".rp" -type "double3" 4.8892104582376597 6.7087343642226877e-017 0.29364205324322823 ;
	setAttr ".sp" -type "double3" 4.8892104582376597 6.7087343642226877e-017 0.29364205324322823 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 4.8892104582376597 6.7087343642226877e-017 0.29364205324322823 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" 0 -3.1805546814635168e-015 1.7655625192200634e-031 ;
	setAttr ".rp" -type "double3" -1.6601612729776003 5.2562719183758535e-018 -10.87421643213278 ;
	setAttr ".sp" -type "double3" -1.6601612729776003 5.2562719183758535e-018 -10.87421643213278 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -1.6601612729776003 5.2562719183758535e-018 -10.87421643213278 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" 0 -3.1805546814635168e-015 1.7655625192200634e-031 ;
	setAttr ".rp" -type "double3" -0.84421782670817347 -4.9092750166346136e-017 14.364200719913653 ;
	setAttr ".sp" -type "double3" -0.84421782670817347 -4.9092750166346136e-017 14.364200719913653 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" -0.84421782670817347 -4.9092750166346136e-017 14.364200719913653 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -90.506071069747748 -4.9503557229528292 3.738549828123932 ;
	setAttr ".rp" -type "double3" 0.19516884155029723 1.2252453478843963 -3.5712203592652592 ;
	setAttr ".sp" -type "double3" 0.19516884155029723 1.2252453478843963 -3.5712203592652592 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 0.19516884155029723 1.2252453478843963 -3.5712203592652592 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 45.17948128631938 -3.975693351829395e-016 0 ;
	setAttr ".rp" -type "double3" 0.081844211296163816 7.5563624916391383 4.4514123694924734 ;
	setAttr ".sp" -type "double3" 0.081844211296163816 7.5563624916391383 4.4514123694924734 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 0.081844211296163816 7.5563624916391383 4.4514123694924734 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.8886899722133146 -0.67835768265875307 0.70856616721350996 ;
	setAttr ".r" -type "double3" 45.529190443225659 -8.560846957816354 -13.882653289325322 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 5.3865583947914439 0.36115646737466828 -2.5482264701207837 ;
	setAttr ".rpt" -type "double3" 0.50213146833915712 0.31720122023491748 1.8396602975067999 ;
	setAttr ".sp" -type "double3" 5.3865583870022782 0.36115646824027614 -2.5482264683123192 ;
	setAttr ".spt" -type "double3" -2.6645352591003749e-015 1.6653345369377356e-016 
		-4.4408920985006271e-016 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode poleVectorConstraint -n "Ref:bip_foot_LIKikHandle_poleVectorConstraint1" 
		-p "Ref:bip_foot_LIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "lkneeControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.0089936211894467988 -11.879327031117489 -10.708597574587873 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.9579717187708487 -0.12415701727255397 -11.084060508249321 ;
	setAttr ".r" -type "double3" -1.9878466759146972e-016 -20.805645299005995 -1.5525105283630475e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 8.4204523509220088 1.3494023689792682 4.8373431599320247 ;
	setAttr ".rpt" -type "double3" -2.2673117252311608 0 2.6754969875462886 ;
	setAttr ".sp" -type "double3" 8.4204523509220142 1.3494023689792658 4.8373431599320256 ;
	setAttr ".spt" -type "double3" -3.5527136788004997e-015 2.2204460492503136e-016 
		-8.8817841970012513e-016 ;
	setAttr ".pv" -type "double3" -0.19903920238966802 1.72280802477497 0.99615054368456435 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -90.506071069747748 -4.9503557229528257 3.738549828123932 ;
	setAttr ".rp" -type "double3" -0.6490489851578749 1.2252453478843961 10.792980360648395 ;
	setAttr ".sp" -type "double3" -0.6490489851578749 1.2252453478843961 10.792980360648395 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -0.6490489851578749 1.2252453478843961 10.792980360648395 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 90.505233427981906 3.6947352849233908 4.9831062625599758 ;
	setAttr ".rp" -type "double3" 0.03455011905115235 -3.5707726274446991 -1.2414995070560242 ;
	setAttr ".sp" -type "double3" 0.03455011905115235 -3.5707726274446991 -1.2414995070560242 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" 0.03455011905115235 -3.5707726274446991 -1.2414995070560242 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4834898162514627 0.88308534043649511 -5.6695269984152681 ;
	setAttr ".r" -type "double3" 3.084328345717773e-014 -20.805645299005995 -8.044331034535593e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 3.1317366110816622 0.35711301711033988 3.9478108539160921 ;
	setAttr ".rpt" -type "double3" -1.6064771404918738 0 0.85495587858957012 ;
	setAttr ".sp" -type "double3" 3.1317366110816636 0.35711301711033983 3.9478108539160912 ;
	setAttr ".spt" -type "double3" -1.3322676295501875e-015 1.6653345369377356e-016 
		8.8817841970012543e-016 ;
	setAttr ".pv" -type "double3" -1.9926297044218617 -0.12966907365711183 -0.11230668899295171 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode orientConstraint -n "lReverseToeWiggle_orientConstraint1" -p "lReverseToeWiggle";
	addAttr -ci true -k true -sn "w0" -ln "lToeControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 90.181158492471127 3.7246749609805008 -0.022503089434237816 ;
	setAttr ".o" -type "double3" -90.180775868668121 0.034271387466691283 3.7245853953648864 ;
	setAttr ".rsrr" -type "double3" -2.7531676461418566e-014 7.9513867036587939e-016 
		3.975693351829394e-016 ;
	setAttr -k on ".w0";
createNode transform -n "lToeControlZeroGroup" -p "lReverseHeelLift";
	setAttr ".t" -type "double3" -0.64904891494135564 1.225245354333782 10.79298036859683 ;
	setAttr ".r" -type "double3" -1.8653049997457729e-016 -4.9952039764404885 -1.5815900216783031e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 0.99999999999999989 ;
createNode transform -n "lToeControl" -p "lToeControlZeroGroup";
	addAttr -ci true -sn "lToeControl" -ln "lToeControl" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "lToeControlShape" -p "lToeControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-2.4490102368290243 -3.1809978100807438e-016 -5.3016630168012382e-016
		-2.4490102368290243 -3.1809978100807438e-016 -5.3016630168012382e-016
		-2.4490102368290243 -3.1809978100807438e-016 -5.3016630168012382e-016
		-2.4490102368290243 -3.1809978100807438e-016 -5.3016630168012382e-016
		-2.4490102368290243 -3.1809978100807438e-016 -5.3016630168012382e-016
		-1.2245051184145117 -1.5011868356094655 -0.27520124535641188
		-1.2245051184145119 -1.5011868356094653 3.2879810721940159
		-1.2245051184145122 1.5011868356094653 3.2879810721940159
		-1.2245051184145119 1.5011868356094655 -0.27520124535641188
		-1.2245051184145117 -1.5011868356094653 -0.27520124535641211
		1.2245051184145124 -1.501186835609466 -0.27520124535641188
		1.2245051184145122 -1.5011868356094655 3.2879810721940164
		1.2245051184145119 1.5011868356094658 3.2879810721940159
		1.2245051184145122 1.5011868356094658 -0.27520124535641211
		1.2245051184145124 -1.5011868356094655 -0.27520124535641233
		2.4490102368290243 -3.7461330267455237e-016 -1.6254678200250274e-016
		2.4490102368290243 -3.7461330267455237e-016 -1.6254678200250274e-016
		2.4490102368290243 -3.7461330267455237e-016 -1.6254678200250274e-016
		2.4490102368290243 -3.7461330267455237e-016 -1.6254678200250274e-016
		2.4490102368290243 -3.7461330267455237e-016 -1.6254678200250274e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "lReverseControlZeroGroup_parentConstraint1" -p "lReverseControlZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "lFootControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -1.4654943925052066e-014 
		-3.2660506243953336e-015 ;
	setAttr ".tg[0].tor" -type "double3" -45.001294667862417 0.034270073852464625 3.7245853953137398 ;
	setAttr ".lr" -type "double3" -43.947293226737045 15.8104413225655 3.8712512483032349 ;
	setAttr ".rst" -type "double3" 0 -8.8817841970012523e-016 -4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -43.947293226737045 15.8104413225655 3.8712512483032349 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.016136643787917161 2.6989391068648048 -0.68483399591518324 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -176.3183082680782 3.1276374108013987 -27.847168852670574 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" -1.2646051990472529e-005 11.40570313353518 2.2937207189155373e-006 ;
	setAttr ".r" -type "double3" -7.6183179362696751e-013 -7.7583298239629389e-019 -3.5794300937290023e-019 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -27.511755037848548 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" -1.8540565868363501e-005 12.199288920263195 1.1262108055021258e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "effector6" -p "Ref:bip_lowerArm_RIK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Ref:bip_upperArm_RIK_pointConstraint1" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -9.56998 60.479299999999981 -2.9520699999999973 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -14.011989543866635 3.2498625174108966 3.0534604100779643 ;
	setAttr ".sp" -type "double3" -14.01198954386664 3.2498625174109108 3.0534604100779648 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "Ref:bip_hand_RIKikHandle_pointConstraint1" -p "Ref:bip_hand_RIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "rikHandControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -5.8850102454820554 37.191437371303437 -1.815360423094535 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "Ref:bip_hand_RIKikHandle_poleVectorConstraint1" 
		-p "Ref:bip_hand_RIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "rElbowControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -5.3521199999999922 -10.045400000000015 -0.73131000000000013 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -19.896999789348691 40.441299888714333 1.2380999869834293 ;
	setAttr ".sp" -type "double3" -19.896999789348691 40.441299888714333 1.2380999869834293 ;
createNode parentConstraint -n "rikHandControlGroup_parentConstraint1" -p "rikHandControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "UpperbodyControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -19.896999789348687 -0.92403565478318073 1.238099986983429 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-016 ;
	setAttr ".rp" -type "double3" -19.896999789348691 40.441299888714333 1.2380999869834288 ;
	setAttr ".sp" -type "double3" -19.896999789348691 40.441299888714333 1.2380999869834288 ;
createNode transform -n "rikHandControlZeroGroup" -p "rikHandControlWeaponGroup";
	setAttr ".t" -type "double3" -19.896999789348691 40.441299888714333 1.2380999869834288 ;
	setAttr ".rp" -type "double3" -19.896999789348691 40.441299888714333 1.2380999869834288 ;
	setAttr ".sp" -type "double3" -19.896999789348691 40.441299888714333 1.2380999869834288 ;
createNode transform -n "rikHandControl" -p "rikHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other +\"-objs %1\" ) #;";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\r\nzooChangeSpace ( \"-attr aim \"+ $other +\"-objs %1\" ) #;";
createNode nurbsSurface -n "rikHandControlShape" -p "rikHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-4 -5.1955647424316137e-016 -8.6592745707193539e-016
		-1.9999999999999996 -2.4494897427831783 -2.4494897427831779
		-1.9999999999999998 -2.4494897427831779 2.4494897427831783
		-2 2.4494897427831779 2.4494897427831783
		-1.9999999999999998 2.4494897427831783 -2.4494897427831779
		-1.9999999999999996 -2.4494897427831779 -2.4494897427831783
		2 -2.4494897427831792 -2.4494897427831779
		2 -2.4494897427831783 2.4494897427831788
		1.9999999999999998 2.4494897427831788 2.4494897427831783
		2 2.4494897427831788 -2.4494897427831783
		2 -2.4494897427831783 -2.4494897427831788
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		4 -6.118607379275005e-016 -2.6548975509872614e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode orientConstraint -n "rikHandControl_orientConstraint1" -p "rikHandControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 156.18557356703755 0.39017372954470653 -27.337748098808085 ;
	setAttr ".rsrr" -type "double3" 156.16993670196538 3.1276396554417909 -27.847168708020952 ;
	setAttr -k on ".w0";
createNode transform -n "rElbowControl" -p "main";
	addAttr -ci true -sn "rElbowControl" -ln "rElbowControl" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -14.922099999999991 50.433899999999966 -3.6833799999999974 ;
	setAttr ".sp" -type "double3" -14.922099999999991 50.433899999999966 -3.6833799999999974 ;
	setAttr ".hdl" -type "double3" -14.922099999999991 50.433899999999966 -3.6833799999999974 ;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "place sensibly^float $pos[] = `zooFindPolePosition \"-start %1 -mid %2 -end %3\"`;\nmove -ws -a -rpr $pos[0] $pos[1] $pos[2];\n";
createNode nurbsSurface -n "rElbowControlShape" -p "rElbowControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-15.922099999999991 50.433899999999966 -3.6833799999999979
		-15.922099999999991 50.433899999999966 -3.6833799999999979
		-15.922099999999991 50.433899999999966 -3.6833799999999979
		-15.922099999999991 50.433899999999966 -3.6833799999999979
		-15.922099999999991 50.433899999999966 -3.6833799999999979
		-14.922099999999991 50.433899999999966 -4.6833799999999979
		-14.922099999999991 49.433899999999966 -3.6833799999999974
		-14.922099999999991 50.433899999999966 -2.6833799999999974
		-14.922099999999991 51.433899999999966 -3.6833799999999974
		-14.922099999999991 50.433899999999966 -4.6833799999999979
		-13.922099999999991 50.433899999999966 -3.6833799999999974
		-13.922099999999991 50.433899999999966 -3.6833799999999974
		-13.922099999999991 50.433899999999966 -3.6833799999999974
		-13.922099999999991 50.433899999999966 -3.6833799999999974
		-13.922099999999991 50.433899999999966 -3.6833799999999974
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -19.897 42.62133860415932 1.2381000000000177 ;
	setAttr ".rpt" -type "double3" -15.338984091609436 -68.66616804565372 15.911077516129259 ;
	setAttr ".sp" -type "double3" -19.897 42.621338604159327 1.238100000000018 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010003e-015 -2.2204460492503126e-016 ;
createNode transform -n "rHandControl" -p "rHandControlGroup";
	addAttr -ci true -k true -sn "bip_thumb_0_RControlRoll" -ln "bip_thumb_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_index_0_RControlRoll" -ln "bip_index_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_middle_0_RControlRoll" -ln "bip_middle_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_ring_0_RControlRoll" -ln "bip_ring_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -k true -sn "bip_pinky_0_RControlRoll" -ln "bip_pinky_0_RControlRoll" 
		-min -100 -max 100 -at "double";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587939e-016 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 1.2355754050855245 3.6676125271313471 -1.7383819399593914 ;
	setAttr ".dh" yes;
	setAttr -k on ".bip_thumb_0_RControlRoll";
	setAttr -k on ".bip_index_0_RControlRoll";
	setAttr -k on ".bip_middle_0_RControlRoll";
	setAttr -k on ".bip_ring_0_RControlRoll";
	setAttr -k on ".bip_pinky_0_RControlRoll";
createNode nurbsSurface -n "rHandControlShape" -p "rHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 3.2271054038791759e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -3.2271054038791759e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 3.2271054038791759e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -3.2271054038791759e-016 4.5
		-1.1498370615023457e-015 1.4533590694395571 -4.5
		4.5 1.4533590694395571 -3.3676674730115375e-016
		6.0860333699758185e-016 1.4533590694395568 4.5
		-4.5 1.4533590694395571 7.1390647300023646e-016
		-1.1498370615023457e-015 1.4533590694395571 -4.5
		4.5 1.4533590694395571 -3.3676674730115375e-016
		6.0860333699758185e-016 1.4533590694395568 4.5
		-1.1498370615023457e-015 2.9067181388791141 -4.5
		4.5 2.9067181388791141 -2.1430611191891602e-016
		6.0860333699758185e-016 2.9067181388791141 4.5
		-4.5 2.9067181388791141 8.3636710838247419e-016
		-1.1498370615023457e-015 2.9067181388791141 -4.5
		4.5 2.9067181388791141 -2.1430611191891602e-016
		6.0860333699758185e-016 2.9067181388791141 4.5
		-1.1498370615023457e-015 4.3600772083186712 -4.5
		4.5 4.3600772083186712 -9.1845476536678294e-017
		6.0860333699758185e-016 4.3600772083186712 4.5
		-4.5 4.3600772083186712 9.5882774376471192e-016
		-1.1498370615023457e-015 4.3600772083186712 -4.5
		4.5 4.3600772083186712 -9.1845476536678294e-017
		6.0860333699758185e-016 4.3600772083186712 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -7.2397072980849408 13.274530607732274 -10.097078435413481 ;
	setAttr ".rp" -type "double3" 1.3306706490034208 1.4947023221126994 -3.3399202899248452 ;
	setAttr ".sp" -type "double3" 1.3306706490034208 1.4947023221126994 -3.3399202899248452 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.3306706490034157 1.494702322112702 -3.3399202899248408 ;
	setAttr ".sp" -type "double3" 1.3306706490034157 1.494702322112702 -3.3399202899248408 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.3306706490034157 1.494702322112702 -3.3399202899248408 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.7769086842379244e-015 3.975693351829396e-016 1.5902773407317584e-015 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_0_RControlShape" -p "Ref:bip_thumb_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3484292295949425e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3484292295949425e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3484292295949425e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3484292295949425e-016 2.25
		-5.7491853075117283e-016 0.6072785375939268 -2.25
		2.25 0.6072785375939268 -1.6838337365057687e-016
		3.0430166849879092e-016 0.60727853759392669 2.25
		-2.25 0.6072785375939268 3.5695323650011823e-016
		-5.7491853075117283e-016 0.6072785375939268 -2.25
		2.25 0.6072785375939268 -1.6838337365057687e-016
		3.0430166849879092e-016 0.60727853759392669 2.25
		-5.7491853075117283e-016 1.2145570751878536 -2.25
		2.25 1.2145570751878536 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2145570751878536 2.25
		-2.25 1.2145570751878536 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2145570751878536 -2.25
		2.25 1.2145570751878536 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2145570751878536 2.25
		-5.7491853075117283e-016 1.8218356127817805 -2.25
		2.25 1.8218356127817805 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8218356127817805 2.25
		-2.25 1.8218356127817805 4.7941387188235596e-016
		-5.7491853075117283e-016 1.8218356127817805 -2.25
		2.25 1.8218356127817805 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8218356127817805 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 17.258509211629462 0 3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 2.6094032034795767e-005 1.821835612584688 -6.1014781159718368e-006 ;
	setAttr ".sp" -type "double3" 2.6094032034795767e-005 1.821835612584688 -6.1014781159718368e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.6094032038459503e-005 1.8218356125846853 -6.1014781173041044e-006 ;
	setAttr ".sp" -type "double3" 2.6094032038459503e-005 1.8218356125846853 -6.1014781173041044e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.6094032038459503e-005 1.8218356125846853 -6.1014781173041044e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.981770013872048e-016 0 -1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_1_RControlShape" -p "Ref:bip_thumb_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 9.8058672346223352e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -9.8058672346223352e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 9.8058672346223352e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -9.8058672346223352e-017 2.25
		-5.7491853075117283e-016 0.44161700023889705 -2.25
		2.25 0.44161700023889705 -1.6838337365057687e-016
		3.0430166849879092e-016 0.441617000238897 2.25
		-2.25 0.44161700023889705 3.5695323650011823e-016
		-5.7491853075117283e-016 0.44161700023889705 -2.25
		2.25 0.44161700023889705 -1.6838337365057687e-016
		3.0430166849879092e-016 0.441617000238897 2.25
		-5.7491853075117283e-016 0.8832340004777941 -2.25
		2.25 0.8832340004777941 -1.0715305595945801e-016
		3.0430166849879092e-016 0.8832340004777941 2.25
		-2.25 0.8832340004777941 4.1818355419123709e-016
		-5.7491853075117283e-016 0.8832340004777941 -2.25
		2.25 0.8832340004777941 -1.0715305595945801e-016
		3.0430166849879092e-016 0.8832340004777941 2.25
		-5.7491853075117283e-016 1.3248510007166912 -2.25
		2.25 1.3248510007166912 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3248510007166912 2.25
		-2.25 1.3248510007166912 4.7941387188235596e-016
		-5.7491853075117283e-016 1.3248510007166912 -2.25
		2.25 1.3248510007166912 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3248510007166912 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -5.2156871478049798 3.975693351829396e-016 -1.5902773407317584e-015 ;
	setAttr ".rp" -type "double3" 9.9331246994349698e-006 1.3248510006780458 1.9356690996730208e-006 ;
	setAttr ".sp" -type "double3" 9.9331246994349698e-006 1.3248510006780458 1.9356690996730208e-006 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 9.9331247029876835e-006 1.3248510006780529 1.9356690994509762e-006 ;
	setAttr ".sp" -type "double3" 9.9331247029876835e-006 1.3248510006780529 1.9356690994509762e-006 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.9331247029876835e-006 1.3248510006780529 1.9356690994509762e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.7890620083232276e-015 -8.9453100416161419e-016 1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_2_RControlShape" -p "Ref:bip_thumb_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.1401018797740708e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.1401018797740708e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.1401018797740708e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.1401018797740708e-016 2.25
		-5.7491853075117283e-016 0.51345624009149071 -2.25
		2.25 0.51345624009149071 -1.6838337365057687e-016
		3.0430166849879092e-016 0.5134562400914906 2.25
		-2.25 0.51345624009149071 3.5695323650011823e-016
		-5.7491853075117283e-016 0.51345624009149071 -2.25
		2.25 0.51345624009149071 -1.6838337365057687e-016
		3.0430166849879092e-016 0.5134562400914906 2.25
		-5.7491853075117283e-016 1.0269124801829814 -2.25
		2.25 1.0269124801829814 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0269124801829814 2.25
		-2.25 1.0269124801829814 4.1818355419123709e-016
		-5.7491853075117283e-016 1.0269124801829814 -2.25
		2.25 1.0269124801829814 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0269124801829814 2.25
		-5.7491853075117283e-016 1.540368720274472 -2.25
		2.25 1.540368720274472 -4.5922738268339147e-017
		3.0430166849879092e-016 1.540368720274472 2.25
		-2.25 1.540368720274472 4.7941387188235596e-016
		-5.7491853075117283e-016 1.540368720274472 -2.25
		2.25 1.540368720274472 -4.5922738268339147e-017
		3.0430166849879092e-016 1.540368720274472 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 104.01912674518174 82.660032659621322 103.70044698026682 ;
	setAttr ".rp" -type "double3" -1.7471187995452764 3.8545417414940442 -1.6507312777843444 ;
	setAttr ".sp" -type "double3" -1.7471187995452764 3.8545417414940442 -1.6507312777843444 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7471187995452757 3.8545417414940424 -1.6507312777843453 ;
	setAttr ".sp" -type "double3" -1.7471187995452757 3.8545417414940424 -1.6507312777843453 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" -1.7471275923109659 7.827853163141123 -0.45536308431289396 ;
	setAttr ".sp" -type "double3" -1.7471275923109659 7.827853163141123 -0.45536308431289396 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -1.7471187995452757 3.8545417414940424 -1.6507312777843453 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317584e-015 7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_0_RControlShape" -p "Ref:bip_index_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.2809311478311872e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.2809311478311872e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.2809311478311872e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.2809311478311872e-016 2.25
		-5.7491853075117283e-016 1.0272400667430293 -2.25
		2.25 1.0272400667430293 -1.6838337365057687e-016
		3.0430166849879092e-016 1.027240066743029 2.25
		-2.25 1.0272400667430293 3.5695323650011823e-016
		-5.7491853075117283e-016 1.0272400667430293 -2.25
		2.25 1.0272400667430293 -1.6838337365057687e-016
		3.0430166849879092e-016 1.027240066743029 2.25
		-5.7491853075117283e-016 2.0544801334860585 -2.25
		2.25 2.0544801334860585 -1.0715305595945801e-016
		3.0430166849879092e-016 2.0544801334860585 2.25
		-2.25 2.0544801334860585 4.1818355419123709e-016
		-5.7491853075117283e-016 2.0544801334860585 -2.25
		2.25 2.0544801334860585 -1.0715305595945801e-016
		3.0430166849879092e-016 2.0544801334860585 2.25
		-5.7491853075117283e-016 3.0817202002290878 -2.25
		2.25 3.0817202002290878 -4.5922738268339147e-017
		3.0430166849879092e-016 3.0817202002290878 2.25
		-2.25 3.0817202002290878 4.7941387188235596e-016
		-5.7491853075117283e-016 3.0817202002290878 -2.25
		2.25 3.0817202002290878 -4.5922738268339147e-017
		3.0430166849879092e-016 3.0817202002290878 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 36.919053125332596 0 -7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -1.7585531380426289e-005 3.0817202001749902 -4.9175511307453235e-006 ;
	setAttr ".sp" -type "double3" -1.7585531380426289e-005 3.0817202001749902 -4.9175511307453235e-006 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7585531380426289e-005 3.0817202001749893 -4.9175511271926098e-006 ;
	setAttr ".sp" -type "double3" -1.7585531380426289e-005 3.0817202001749893 -4.9175511271926098e-006 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7585531380426289e-005 3.0817202001749893 -4.9175511271926098e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317584e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_1_RControlShape" -p "Ref:bip_index_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.5671543923748739e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.5671543923748739e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.5671543923748739e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.5671543923748739e-016 2.25
		-5.7491853075117283e-016 0.70578359375315181 -2.25
		2.25 0.70578359375315181 -1.6838337365057687e-016
		3.0430166849879092e-016 0.70578359375315169 2.25
		-2.25 0.70578359375315181 3.5695323650011823e-016
		-5.7491853075117283e-016 0.70578359375315181 -2.25
		2.25 0.70578359375315181 -1.6838337365057687e-016
		3.0430166849879092e-016 0.70578359375315169 2.25
		-5.7491853075117283e-016 1.4115671875063036 -2.25
		2.25 1.4115671875063036 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4115671875063036 2.25
		-2.25 1.4115671875063036 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4115671875063036 -2.25
		2.25 1.4115671875063036 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4115671875063036 2.25
		-5.7491853075117283e-016 2.1173507812594554 -2.25
		2.25 2.1173507812594554 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1173507812594554 2.25
		-2.25 2.1173507812594554 4.7941387188235596e-016
		-5.7491853075117283e-016 2.1173507812594554 -2.25
		2.25 2.1173507812594554 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1173507812594554 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" 7.9477062224685584 0 1.3914926731402886e-015 ;
	setAttr ".rp" -type "double3" 1.3427422488554441e-005 2.1173507812163681 1.4753135069156542e-006 ;
	setAttr ".sp" -type "double3" 1.3427422488554441e-005 2.1173507812163681 1.4753135069156542e-006 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.3427422485889906e-005 2.1173507812163654 1.4753135033629405e-006 ;
	setAttr ".sp" -type "double3" 1.3427422485889906e-005 2.1173507812163654 1.4753135033629405e-006 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.3427422485889906e-005 2.1173507812163654 1.4753135033629405e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317584e-015 7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_index_2_RControlShape" -p "Ref:bip_index_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.4692981640064693e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4692981640064693e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4692981640064693e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4692981640064693e-016 2.25
		-5.7491853075117283e-016 0.6617130663915689 -2.25
		2.25 0.6617130663915689 -1.6838337365057687e-016
		3.0430166849879092e-016 0.66171306639156879 2.25
		-2.25 0.6617130663915689 3.5695323650011823e-016
		-5.7491853075117283e-016 0.6617130663915689 -2.25
		2.25 0.6617130663915689 -1.6838337365057687e-016
		3.0430166849879092e-016 0.66171306639156879 2.25
		-5.7491853075117283e-016 1.3234261327831378 -2.25
		2.25 1.3234261327831378 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3234261327831378 2.25
		-2.25 1.3234261327831378 4.1818355419123709e-016
		-5.7491853075117283e-016 1.3234261327831378 -2.25
		2.25 1.3234261327831378 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3234261327831378 2.25
		-5.7491853075117283e-016 1.9851391991747067 -2.25
		2.25 1.9851391991747067 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9851391991747067 2.25
		-2.25 1.9851391991747067 4.7941387188235596e-016
		-5.7491853075117283e-016 1.9851391991747067 -2.25
		2.25 1.9851391991747067 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9851391991747067 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 154.91933916315361 75.524119889944458 142.15030572581017 ;
	setAttr ".rp" -type "double3" -2.3786806754345178 3.6282788307778056 0.43329462602719193 ;
	setAttr ".sp" -type "double3" -2.3786806754345178 3.6282788307778056 0.43329462602719193 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" -2.3786806754345173 3.6282788307777913 0.43329462602718749 ;
	setAttr ".sp" -type "double3" -2.3786806754345173 3.6282788307777913 0.43329462602718749 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" -2.3786721423128454 8.1623817213983454 1.7705505185706503 ;
	setAttr ".sp" -type "double3" -2.3786721423128454 8.1623817213983454 1.7705505185706503 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -2.3786806754345196 3.6282788307777842 0.43329462602718749 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 4.969616689786744e-016 -3.1308585145656485e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_0_RControlShape" -p "Ref:bip_middle_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.7138465168720583e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.7138465168720583e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.7138465168720583e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.7138465168720583e-016 2.25
		-5.7491853075117283e-016 1.222207816212572 -2.25
		2.25 1.222207816212572 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2222078162125718 2.25
		-2.25 1.222207816212572 3.5695323650011823e-016
		-5.7491853075117283e-016 1.222207816212572 -2.25
		2.25 1.222207816212572 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2222078162125718 2.25
		-5.7491853075117283e-016 2.444415632425144 -2.25
		2.25 2.444415632425144 -1.0715305595945801e-016
		3.0430166849879092e-016 2.444415632425144 2.25
		-2.25 2.444415632425144 4.1818355419123709e-016
		-5.7491853075117283e-016 2.444415632425144 -2.25
		2.25 2.444415632425144 -1.0715305595945801e-016
		3.0430166849879092e-016 2.444415632425144 2.25
		-5.7491853075117283e-016 3.6666234486377158 -2.25
		2.25 3.6666234486377158 -4.5922738268339147e-017
		3.0430166849879092e-016 3.6666234486377158 2.25
		-2.25 3.6666234486377158 4.7941387188235596e-016
		-5.7491853075117283e-016 3.6666234486377158 -2.25
		2.25 3.6666234486377158 -4.5922738268339147e-017
		3.0430166849879092e-016 3.6666234486377158 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 33.212037155383449 -6.9574633657014469e-016 3.1060104311167171e-015 ;
	setAttr ".rp" -type "double3" 1.6171283197419228e-005 3.6666234485883571 1.002839037411718e-005 ;
	setAttr ".sp" -type "double3" 1.6171283197419228e-005 3.6666234485883571 1.002839037411718e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.6171283197419228e-005 3.66662344858835 1.0028390370564466e-005 ;
	setAttr ".sp" -type "double3" 1.6171283197419228e-005 3.66662344858835 1.0028390370564466e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.6171283197419228e-005 3.66662344858835 1.0028390370564466e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.1927080055488194e-015 -8.4483483726374699e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999967 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_1_RControlShape" -p "Ref:bip_middle_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.0194485840926563e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0194485840926563e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0194485840926563e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0194485840926563e-016 2.25
		-5.7491853075117283e-016 0.90947878908135626 -2.25
		2.25 0.90947878908135626 -1.6838337365057687e-016
		3.0430166849879092e-016 0.90947878908135615 2.25
		-2.25 0.90947878908135626 3.5695323650011823e-016
		-5.7491853075117283e-016 0.90947878908135626 -2.25
		2.25 0.90947878908135626 -1.6838337365057687e-016
		3.0430166849879092e-016 0.90947878908135615 2.25
		-5.7491853075117283e-016 1.8189575781627125 -2.25
		2.25 1.8189575781627125 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8189575781627125 2.25
		-2.25 1.8189575781627125 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8189575781627125 -2.25
		2.25 1.8189575781627125 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8189575781627125 2.25
		-5.7491853075117283e-016 2.7284363672440688 -2.25
		2.25 2.7284363672440688 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7284363672440688 2.25
		-2.25 2.7284363672440688 4.7941387188235596e-016
		-5.7491853075117283e-016 2.7284363672440688 -2.25
		2.25 2.7284363672440688 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7284363672440688 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 15.200702665302714 6.957463365701441e-016 2.3357198441997697e-015 ;
	setAttr ".rp" -type "double3" 8.949601539853802e-007 2.7284363671127814 -2.6751516109868589e-005 ;
	setAttr ".sp" -type "double3" 8.949601539853802e-007 2.7284363671127814 -2.6751516109868589e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 8.9496015132084494e-007 2.7284363671127814 -2.6751516106315876e-005 ;
	setAttr ".sp" -type "double3" 8.9496015132084494e-007 2.7284363671127814 -2.6751516106315876e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.9496015132084494e-007 2.7284363671127814 -2.6751516106315876e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.590277340731758e-015 -1.9878466759146975e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_middle_2_RControlShape" -p "Ref:bip_middle_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.2768625739241408e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2768625739241408e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2768625739241408e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2768625739241408e-016 2.25
		-5.7491853075117283e-016 0.57504778121280931 -2.25
		2.25 0.57504778121280931 -1.6838337365057687e-016
		3.0430166849879092e-016 0.57504778121280919 2.25
		-2.25 0.57504778121280931 3.5695323650011823e-016
		-5.7491853075117283e-016 0.57504778121280931 -2.25
		2.25 0.57504778121280931 -1.6838337365057687e-016
		3.0430166849879092e-016 0.57504778121280919 2.25
		-5.7491853075117283e-016 1.1500955624256186 -2.25
		2.25 1.1500955624256186 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1500955624256186 2.25
		-2.25 1.1500955624256186 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1500955624256186 -2.25
		2.25 1.1500955624256186 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1500955624256186 2.25
		-5.7491853075117283e-016 1.725143343638428 -2.25
		2.25 1.725143343638428 -4.5922738268339147e-017
		3.0430166849879092e-016 1.725143343638428 2.25
		-2.25 1.725143343638428 4.7941387188235596e-016
		-5.7491853075117283e-016 1.725143343638428 -2.25
		2.25 1.725143343638428 -4.5922738268339147e-017
		3.0430166849879092e-016 1.725143343638428 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 150.98687333229302 72.067620352311181 147.53326135942379 ;
	setAttr ".rp" -type "double3" -1.1056620429971191 3.5123946537058952 2.1982509813616753 ;
	setAttr ".sp" -type "double3" -1.1056620429971191 3.5123946537058952 2.1982509813616753 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.1056620429971165 3.5123946537058952 2.1982509813616709 ;
	setAttr ".sp" -type "double3" -1.1056620429971165 3.5123946537058952 2.1982509813616709 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" -1.105661557321258 7.2189845495071694 3.5871124925834019 ;
	setAttr ".sp" -type "double3" -1.105661557321258 7.2189845495071694 3.5871124925834019 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -1.1056620429971145 3.512394653705897 2.1982509813616637 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 -3.180554681463516e-015 3.379339349054986e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_0_RControlShape" -p "Ref:bip_ring_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.7751059665544375e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7751059665544375e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7751059665544375e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7751059665544375e-016 2.25
		-5.7491853075117283e-016 0.79943665695177091 -2.25
		2.25 0.79943665695177091 -1.6838337365057687e-016
		3.0430166849879092e-016 0.7994366569517708 2.25
		-2.25 0.79943665695177091 3.5695323650011823e-016
		-5.7491853075117283e-016 0.79943665695177091 -2.25
		2.25 0.79943665695177091 -1.6838337365057687e-016
		3.0430166849879092e-016 0.7994366569517708 2.25
		-5.7491853075117283e-016 1.5988733139035418 -2.25
		2.25 1.5988733139035418 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5988733139035418 2.25
		-2.25 1.5988733139035418 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5988733139035418 -2.25
		2.25 1.5988733139035418 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5988733139035418 2.25
		-5.7491853075117283e-016 2.3983099708553128 -2.25
		2.25 2.3983099708553128 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3983099708553128 2.25
		-2.25 2.3983099708553128 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3983099708553128 -2.25
		2.25 2.3983099708553128 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3983099708553128 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 39.6445248164273 1.590277340731758e-015 1.7890620083232284e-015 ;
	setAttr ".rp" -type "double3" 1.2659413073379255e-005 2.3983099704796071 4.0519907365421659e-005 ;
	setAttr ".sp" -type "double3" 1.2659413073379255e-005 2.3983099704796071 4.0519907365421659e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.2659413071380854e-005 2.398309970479616 4.0519907354763518e-005 ;
	setAttr ".sp" -type "double3" 1.2659413071380854e-005 2.398309970479616 4.0519907354763518e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2659413071380854e-005 2.398309970479616 4.0519907354763518e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 7.951386703658788e-016 -1.987846675914697e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_1_RControlShape" -p "Ref:bip_ring_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6703379392968258e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6703379392968258e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6703379392968258e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6703379392968258e-016 2.25
		-5.7491853075117283e-016 0.75225333209999867 -2.25
		2.25 0.75225333209999867 -1.6838337365057687e-016
		3.0430166849879092e-016 0.75225333209999856 2.25
		-2.25 0.75225333209999867 3.5695323650011823e-016
		-5.7491853075117283e-016 0.75225333209999867 -2.25
		2.25 0.75225333209999867 -1.6838337365057687e-016
		3.0430166849879092e-016 0.75225333209999856 2.25
		-5.7491853075117283e-016 1.5045066641999973 -2.25
		2.25 1.5045066641999973 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5045066641999973 2.25
		-2.25 1.5045066641999973 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5045066641999973 -2.25
		2.25 1.5045066641999973 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5045066641999973 2.25
		-5.7491853075117283e-016 2.256759996299996 -2.25
		2.25 2.256759996299996 -4.5922738268339147e-017
		3.0430166849879092e-016 2.256759996299996 2.25
		-2.25 2.256759996299996 4.7941387188235596e-016
		-5.7491853075117283e-016 2.256759996299996 -2.25
		2.25 2.256759996299996 -4.5922738268339147e-017
		3.0430166849879092e-016 2.256759996299996 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 16.618437198470719 -7.9513867036587939e-016 -2.782985346280578e-015 ;
	setAttr ".rp" -type "double3" -2.4347474430808091e-005 2.2567599961671441 -2.6085803845887767e-006 ;
	setAttr ".sp" -type "double3" -2.4347474430808091e-005 2.2567599961671441 -2.6085803845887767e-006 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -2.4347474429919913e-005 2.2567599961671405 -2.608580381036063e-006 ;
	setAttr ".sp" -type "double3" -2.4347474429919913e-005 2.2567599961671405 -2.608580381036063e-006 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.4347474429919913e-005 2.2567599961671405 -2.608580381036063e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 3.5781240166464568e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_ring_2_RControlShape" -p "Ref:bip_ring_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3502586035956874e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3502586035956874e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3502586035956874e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3502586035956874e-016 2.25
		-5.7491853075117283e-016 0.60810241440073443 -2.25
		2.25 0.60810241440073443 -1.6838337365057687e-016
		3.0430166849879092e-016 0.60810241440073431 2.25
		-2.25 0.60810241440073443 3.5695323650011823e-016
		-5.7491853075117283e-016 0.60810241440073443 -2.25
		2.25 0.60810241440073443 -1.6838337365057687e-016
		3.0430166849879092e-016 0.60810241440073431 2.25
		-5.7491853075117283e-016 1.2162048288014689 -2.25
		2.25 1.2162048288014689 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2162048288014689 2.25
		-2.25 1.2162048288014689 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2162048288014689 -2.25
		2.25 1.2162048288014689 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2162048288014689 2.25
		-5.7491853075117283e-016 1.8243072432022034 -2.25
		2.25 1.8243072432022034 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8243072432022034 2.25
		-2.25 1.8243072432022034 4.7941387188235596e-016
		-5.7491853075117283e-016 1.8243072432022034 -2.25
		2.25 1.8243072432022034 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8243072432022034 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 132.65283399666993 70.845349774681623 119.47081942990438 ;
	setAttr ".rp" -type "double3" -0.79683783957351439 3.2120125235480348 3.2673718022989564 ;
	setAttr ".sp" -type "double3" -0.79683783957351439 3.2120125235480348 3.2673718022989564 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" -0.79683783957351317 3.2120125235480268 3.2673718022989569 ;
	setAttr ".sp" -type "double3" -0.79683783957351317 3.2120125235480268 3.2673718022989569 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" -0.79684082020296043 6.4037977401344541 4.1201686717460104 ;
	setAttr ".sp" -type "double3" -0.79684082020296043 6.4037977401344541 4.1201686717460104 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.79683783957351206 3.2120125235480197 3.2673718022989569 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 3.9756933518293915e-016 -6.957463365701435e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000011 1.0000000000000009 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_0_RControlShape" -p "Ref:bip_pinky_0_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.7409208683723558e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7409208683723558e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7409208683723558e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7409208683723558e-016 2.25
		-5.7491853075117283e-016 0.78404105740832619 -2.25
		2.25 0.78404105740832619 -1.6838337365057687e-016
		3.0430166849879092e-016 0.78404105740832608 2.25
		-2.25 0.78404105740832619 3.5695323650011823e-016
		-5.7491853075117283e-016 0.78404105740832619 -2.25
		2.25 0.78404105740832619 -1.6838337365057687e-016
		3.0430166849879092e-016 0.78404105740832608 2.25
		-5.7491853075117283e-016 1.5680821148166524 -2.25
		2.25 1.5680821148166524 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5680821148166524 2.25
		-2.25 1.5680821148166524 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5680821148166524 -2.25
		2.25 1.5680821148166524 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5680821148166524 2.25
		-5.7491853075117283e-016 2.3521231722249785 -2.25
		2.25 2.3521231722249785 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3521231722249785 2.25
		-2.25 2.3521231722249785 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3521231722249785 -2.25
		2.25 2.3521231722249785 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3521231722249785 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 32.37805912587951 -7.9513867036587939e-016 2.981770013872048e-016 ;
	setAttr ".rp" -type "double3" -5.9612588986512893e-006 2.3521231720760287 2.5790668193081956e-005 ;
	setAttr ".sp" -type "double3" -5.9612588986512893e-006 2.3521231720760287 2.5790668193081956e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -5.9612588974855552e-006 2.3521231720760323 2.5790668193081956e-005 ;
	setAttr ".sp" -type "double3" -5.9612588974855552e-006 2.3521231720760323 2.5790668193081956e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.9612588974855552e-006 2.3521231720760323 2.5790668193081956e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 3.9756933518293979e-016 1.987846675914699e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_1_RControlShape" -p "Ref:bip_pinky_1_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.002007102979353e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.002007102979353e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.002007102979353e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.002007102979353e-016 2.25
		-5.7491853075117283e-016 0.45126388156004044 -2.25
		2.25 0.45126388156004044 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45126388156004038 2.25
		-2.25 0.45126388156004044 3.5695323650011823e-016
		-5.7491853075117283e-016 0.45126388156004044 -2.25
		2.25 0.45126388156004044 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45126388156004038 2.25
		-5.7491853075117283e-016 0.90252776312008087 -2.25
		2.25 0.90252776312008087 -1.0715305595945801e-016
		3.0430166849879092e-016 0.90252776312008087 2.25
		-2.25 0.90252776312008087 4.1818355419123709e-016
		-5.7491853075117283e-016 0.90252776312008087 -2.25
		2.25 0.90252776312008087 -1.0715305595945801e-016
		3.0430166849879092e-016 0.90252776312008087 2.25
		-5.7491853075117283e-016 1.3537916446801213 -2.25
		2.25 1.3537916446801213 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3537916446801213 2.25
		-2.25 1.3537916446801213 4.7941387188235596e-016
		-5.7491853075117283e-016 1.3537916446801213 -2.25
		2.25 1.3537916446801213 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3537916446801213 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" 17.956323137477348 3.9756933518293969e-016 -1.4908850069360238e-015 ;
	setAttr ".rp" -type "double3" 3.4114386399664021e-006 1.3537916446747316 -1.722530615921869e-006 ;
	setAttr ".sp" -type "double3" 3.4114386399664021e-006 1.3537916446747316 -1.722530615921869e-006 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 3.4114386413264253e-006 1.3537916446747307 -1.7225306088164416e-006 ;
	setAttr ".sp" -type "double3" 3.4114386413264253e-006 1.3537916446747307 -1.7225306088164416e-006 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.4114386413264253e-006 1.3537916446747307 -1.7225306088164416e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270351e-015 -7.9513867036587939e-016 5.9635400277440959e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_pinky_2_RControlShape" -p "Ref:bip_pinky_2_RControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.0110300674082257e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0110300674082257e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0110300674082257e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0110300674082257e-016 2.25
		-5.7491853075117283e-016 0.45532746348400527 -2.25
		2.25 0.45532746348400527 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45532746348400521 2.25
		-2.25 0.45532746348400527 3.5695323650011823e-016
		-5.7491853075117283e-016 0.45532746348400527 -2.25
		2.25 0.45532746348400527 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45532746348400521 2.25
		-5.7491853075117283e-016 0.91065492696801054 -2.25
		2.25 0.91065492696801054 -1.0715305595945801e-016
		3.0430166849879092e-016 0.91065492696801054 2.25
		-2.25 0.91065492696801054 4.1818355419123709e-016
		-5.7491853075117283e-016 0.91065492696801054 -2.25
		2.25 0.91065492696801054 -1.0715305595945801e-016
		3.0430166849879092e-016 0.91065492696801054 2.25
		-5.7491853075117283e-016 1.3659823904520159 -2.25
		2.25 1.3659823904520159 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3659823904520159 2.25
		-2.25 1.3659823904520159 4.7941387188235596e-016
		-5.7491853075117283e-016 1.3659823904520159 -2.25
		2.25 1.3659823904520159 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3659823904520159 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "rHandControl_pointConstraint1" -p "rHandControl";
	addAttr -ci true -k true -sn "w0" -ln "bip_hand_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -19.897000000000006 40.441299999999984 1.2381000000000109 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "rHandControlGroup_parentConstraint1" -p "rHandControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_hand_RFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "rikHandControlW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 2.1800386041593445 
		-1.3481512276038989e-014 ;
	setAttr ".tg[0].tor" -type "double3" 7.9513867036587888e-015 9.5416640443905503e-015 
		-2.8624992133171654e-014 ;
	setAttr ".tg[1].tot" -type "double3" -2.3859569253659174e-007 2.1800386041587378 
		1.168257028080708e-012 ;
	setAttr ".tg[1].tor" -type "double3" -7.9513867036587919e-016 -3.180554681463516e-015 
		3.180554681463516e-015 ;
	setAttr ".lr" -type "double3" 156.18557356703755 0.39017372954470736 -27.337748098808088 ;
	setAttr ".rst" -type "double3" 14.449961963699252 64.700429313337807 -15.031598679537607 ;
	setAttr ".rsrr" -type "double3" 156.16993669407324 3.1276374108014067 -27.847168852670585 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "rkneeControl" -p "main";
	addAttr -ci true -sn "rKneeControl" -ln "rKneeControl" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -5.8043399999999608 22.183399999999992 2.0326800000000018 ;
	setAttr ".sp" -type "double3" -5.8043399999999608 22.183399999999992 2.0326800000000018 ;
	setAttr ".hdl" -type "double3" -5.8043399999999608 22.183399999999992 2.0326800000000018 ;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "place sensibly^float $pos[] = `zooFindPolePosition \"-start %1 -mid %2 -end %3\"`;\nmove -ws -a -rpr $pos[0] $pos[1] $pos[2];\n";
createNode nurbsSurface -n "rkneeControlShape" -p "rkneeControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-6.8043399999999608 22.183399999999992 2.0326800000000014
		-6.8043399999999608 22.183399999999992 2.0326800000000014
		-6.8043399999999608 22.183399999999992 2.0326800000000014
		-6.8043399999999608 22.183399999999992 2.0326800000000014
		-6.8043399999999608 22.183399999999992 2.0326800000000014
		-5.8043399999999608 22.183399999999992 1.0326800000000018
		-5.8043399999999608 21.183399999999992 2.0326800000000018
		-5.8043399999999608 22.183399999999992 3.0326800000000018
		-5.8043399999999608 23.183399999999992 2.0326800000000018
		-5.8043399999999608 22.183399999999992 1.0326800000000018
		-4.8043399999999608 22.183399999999992 2.0326800000000018
		-4.8043399999999608 22.183399999999992 2.0326800000000018
		-4.8043399999999608 22.183399999999992 2.0326800000000018
		-4.8043399999999608 22.183399999999992 2.0326800000000018
		-4.8043399999999608 22.183399999999992 2.0326800000000018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "ankleLift" -ln "ankleLift" -min 0 -max 55 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "rFootControl" -ln "rFootControl" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 0 -15.810439187456621 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -6.4320864508145945 5.6484700074037928 -0.60850298742397513 ;
	setAttr ".rpt" -type "double3" 0.4091263441195625 0 -1.7294370352491375 ;
	setAttr ".sp" -type "double3" -6.4320864508145945 5.6484700074037928 -0.60850298742397513 ;
	setAttr ".hdl" -type "double3" -6.4320864508145945 5.6484700074037928 -0.60850298742397513 ;
	setAttr ".dh" yes;
	setAttr -k on ".heelRock";
	setAttr -k on ".ankleLift";
	setAttr -k on ".toeLift";
	setAttr -k on ".ankleBank";
	setAttr -k on ".rockL";
	setAttr -k on ".rockR";
	setAttr -k on ".ballPivot";
createNode nurbsSurface -n "rFootControlShape" -p "rFootControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-8.8810966876436179 5.6484700074037928 -0.60850298742397568
		-8.8810966876436179 5.6484700074037928 -0.60850298742397568
		-8.8810966876436179 5.6484700074037928 -0.60850298742397568
		-8.8810966876436179 5.6484700074037928 -0.60850298742397568
		-8.8810966876436179 5.6484700074037928 -0.60850298742397568
		-7.6565915692291062 1.3245286399309721 -3.727780988177138
		-7.6565915692291062 1.324528639930973 4.6778738284159171
		-7.6565915692291062 9.9724113748766126 4.6778738284159171
		-7.6565915692291062 9.9724113748766143 -3.727780988177138
		-7.6565915692291062 1.324528639930973 -3.7277809881771384
		-5.2075813324000819 1.3245286399309713 -3.7277809881771384
		-5.2075813324000828 1.3245286399309721 4.6778738284159171
		-5.2075813324000828 9.9724113748766143 4.6778738284159171
		-5.2075813324000828 9.9724113748766143 -3.7277809881771384
		-5.2075813324000819 1.3245286399309721 -3.7277809881771384
		-3.9830762139855707 5.6484700074037928 -0.60850298742397524
		-3.9830762139855707 5.6484700074037928 -0.60850298742397524
		-3.9830762139855707 5.6484700074037928 -0.60850298742397524
		-3.9830762139855707 5.6484700074037928 -0.60850298742397524
		-3.9830762139855707 5.6484700074037928 -0.60850298742397524
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -6.0229600000000021 5.6484700000000148 -2.337939999999997 ;
	setAttr ".sp" -type "double3" -6.0229600000000021 5.6484700000000148 -2.337939999999997 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -6.0229600000000021 5.6484700000000148 -2.337939999999997 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -134.3131004748675 9.5306356605665723 4.3651136048635468 ;
	setAttr ".rp" -type "double3" 0.16143655233202647 9.3483585525976611 -1.3575111632993886 ;
	setAttr ".sp" -type "double3" 0.16143655233202647 9.3483585525976611 -1.3575111632993886 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" 0.16143655233202647 9.3483585525976611 -1.3575111632993886 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" 8.8278125961003172e-032 0 7.062250076880252e-031 ;
	setAttr ".rp" -type "double3" -2.2941422292629587 -8.9350660960055793e-016 0.2756134022516159 ;
	setAttr ".sp" -type "double3" -2.2941422292629587 -8.9350660960055793e-016 0.2756134022516159 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.2941422292629587 -8.9350660960055793e-016 0.2756134022516159 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" 4.4139062980501586e-032 3.1805546814635168e-015 0 ;
	setAttr ".rp" -type "double3" 4.8470528736717018 -2.2866980215655517e-016 -0.70475740521423047 ;
	setAttr ".sp" -type "double3" 4.8470528736717018 -2.2866980215655517e-016 -0.70475740521423047 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 4.8470528736717018 -2.2866980215655517e-016 -0.70475740521423047 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" 0 0 -3.531125038440126e-031 ;
	setAttr ".rp" -type "double3" -4.109497869314338 -1.2578344008736682e-015 -10.270702998828442 ;
	setAttr ".sp" -type "double3" -4.109497869314338 -1.2578344008736682e-015 -10.270702998828442 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -4.109497869314338 -1.2578344008736682e-015 -10.270702998828442 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" -1.7655625192200634e-031 0 0 ;
	setAttr ".rp" -type "double3" 2.052115335246345 1.8453860874320204e-015 14.241902566432145 ;
	setAttr ".sp" -type "double3" 2.052115335246345 1.8453860874320204e-015 14.241902566432145 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 2.052115335246345 1.8453860874320204e-015 14.241902566432145 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 89.174350703163725 9.7757397353202116 -3.7795421391484321 ;
	setAttr ".rp" -type "double3" -0.43221861659682714 1.0923912232459192 -3.6983700174494083 ;
	setAttr ".sp" -type "double3" -0.43221861659682714 1.0923912232459192 -3.6983700174494083 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -0.43221861659682714 1.0923912232459192 -3.6983700174494083 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 45.179481286319373 0 -3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" -0.1792697996846464 -7.4126940654493749 -4.5777522172445684 ;
	setAttr ".sp" -type "double3" -0.1792697996846464 -7.4126940654493749 -4.5777522172445684 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" -0.1792697996846464 -7.4126940654493749 -4.5777522172445684 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.8886896313160388 0.67835865359903136 -0.70856394974842551 ;
	setAttr ".r" -type "double3" -134.47080955677436 -8.560846957816306 -13.882653289325322 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
	setAttr ".rp" -type "double3" -5.3865584333640824 0.36115871353025142 -2.5482255459977483 ;
	setAttr ".rpt" -type "double3" -0.50213136092409205 -1.0395173597325407 3.2567894876776537 ;
	setAttr ".sp" -type "double3" -5.3865584235307544 0.36115871462304572 -2.5482255437146883 ;
	setAttr ".spt" -type "double3" 2.6645352591003749e-015 0 1.3322676295501873e-015 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode poleVectorConstraint -n "Ref:bip_foot_RIKikHandle_poleVectorConstraint1" 
		-p "Ref:bip_foot_RIKikHandle";
	addAttr -ci true -k true -sn "w0" -ln "rkneeControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0.0089938556773301315 11.879348181407035 10.708615519742114 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.9601150222526016 -0.087098177172184765 -11.543591445261724 ;
	setAttr ".r" -type "double3" 1.5109758721706944e-016 25.641420455589422 -2.1310406660851021e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -8.2562183602945964 1.1794893947073797 4.739158000581325 ;
	setAttr ".rpt" -type "double3" 2.8638848152648722 0 3.1060634179948727 ;
	setAttr ".sp" -type "double3" -8.2562183602945964 1.1794893947073801 4.7391580005813259 ;
	setAttr ".spt" -type "double3" 3.5527136788004997e-015 0 -1.7763568394002499e-015 ;
	setAttr ".pv" -type "double3" 0.28702555388459955 1.7014120407477735 1.0113423747750978 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 89.174350703163725 9.7757397353202116 -3.7795421391484316 ;
	setAttr ".rp" -type "double3" 1.6198967186495148 1.092391223245921 10.543532548982739 ;
	setAttr ".sp" -type "double3" 1.6198967186495148 1.092391223245921 10.543532548982739 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 1.6198967186495148 1.092391223245921 10.543532548982739 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -89.184696101490289 3.6389764092699415 9.8284855855230777 ;
	setAttr ".rp" -type "double3" -0.1319759074824951 3.7144397275003262 1.1151646397450941 ;
	setAttr ".sp" -type "double3" -0.1319759074824951 3.7144397275003262 1.1151646397450941 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -0.1319759074824951 3.7144397275003262 1.1151646397450941 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1577134683613854 0.7642548797945421 -6.0526356272078363 ;
	setAttr ".r" -type "double3" 6.043018495034758e-016 25.641420455589437 -4.6595842928295422e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -3.3940787696287638 0.47594510257040312 4.1305055546218741 ;
	setAttr ".rpt" -type "double3" 2.1216741545391375 0 1.0619729794411672 ;
	setAttr ".sp" -type "double3" -3.3940787696287638 0.47594510257040312 4.1305055546218759 ;
	setAttr ".spt" -type "double3" 8.8817841970012513e-016 0 -8.8817841970012513e-016 ;
	setAttr ".pv" -type "double3" 1.9841769652839865 -0.12926486182568026 -0.215249543399335 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode orientConstraint -n "rReverseToeWiggle_orientConstraint1" -p "rReverseToeWiggle";
	addAttr -ci true -k true -sn "w0" -ln "rToeControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -89.81884150752893 3.7246749609805438 -0.022503089434243784 ;
	setAttr ".o" -type "double3" 89.81922413133195 -0.034271387466698437 -3.7245853953649277 ;
	setAttr ".rsrr" -type "double3" -9.2931832099012128e-015 7.9513867036587909e-016 
		-7.9513867036587919e-016 ;
	setAttr -k on ".w0";
createNode transform -n "rToeControlZeroGroup" -p "rReverseHeelLift";
	setAttr ".t" -type "double3" 1.6198968083171708 1.0923912148107713 10.543532534258693 ;
	setAttr ".r" -type "double3" 1.3824755079211202e-016 9.830979133023952 2.4685324247667739e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999956 ;
createNode transform -n "rToeControl" -p "rToeControlZeroGroup";
	addAttr -ci true -sn "rToeControl" -ln "rToeControl" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "rToeControlShape" -p "rToeControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-2.4490102368290239 -3.1809978100807433e-016 -5.3016630168012372e-016
		-2.4490102368290239 -3.1809978100807433e-016 -5.3016630168012372e-016
		-2.4490102368290239 -3.1809978100807433e-016 -5.3016630168012372e-016
		-2.4490102368290239 -3.1809978100807433e-016 -5.3016630168012372e-016
		-2.4490102368290239 -3.1809978100807433e-016 -5.3016630168012372e-016
		-1.2245051184145115 -1.2354785565634419 -0.27520124535641166
		-1.2245051184145117 -1.2354785565634416 3.2879810721940137
		-1.2245051184145119 1.2354785565634416 3.2879810721940137
		-1.2245051184145117 1.2354785565634419 -0.27520124535641166
		-1.2245051184145115 -1.2354785565634416 -0.27520124535641188
		1.2245051184145122 -1.2354785565634425 -0.27520124535641188
		1.2245051184145119 -1.2354785565634421 3.2879810721940137
		1.2245051184145117 1.2354785565634423 3.2879810721940137
		1.2245051184145119 1.2354785565634423 -0.27520124535641211
		1.2245051184145122 -1.2354785565634421 -0.27520124535641233
		2.4490102368290239 -3.7461330267455232e-016 -1.6254678200250274e-016
		2.4490102368290239 -3.7461330267455232e-016 -1.6254678200250274e-016
		2.4490102368290239 -3.7461330267455232e-016 -1.6254678200250274e-016
		2.4490102368290239 -3.7461330267455232e-016 -1.6254678200250274e-016
		2.4490102368290239 -3.7461330267455232e-016 -1.6254678200250274e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "rReverseControlZeroGroup_parentConstraint1" -p "rReverseControlZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "rFootControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.0883599887989703e-007 -7.4037775910085202e-009 
		-7.2542985646295577e-009 ;
	setAttr ".tg[0].tor" -type "double3" 134.99870555634905 -0.034273518065847455 -3.7245853954478925 ;
	setAttr ".lr" -type "double3" 136.05270677326297 -15.810441322565472 -3.8712512483032762 ;
	setAttr ".rst" -type "double3" 0 8.8817841970012523e-016 0 ;
	setAttr ".rsrr" -type "double3" 136.05270677326297 -15.810441322565472 -3.8712512483032762 ;
	setAttr -k on ".w0";
createNode transform -n "null1" -p "main";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	setAttr ".ovc" 17;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "select -d #;\nselect -add @;";
createNode pointConstraint -n "null1_pointConstraint1" -p "null1";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 14.801454482947255 50.37080206759466 -3.6875594250869677 ;
	setAttr -k on ".w0";
createNode transform -n "null2" -p "main";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	setAttr ".ovc" 17;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "select -d #;\nselect -add @;";
createNode pointConstraint -n "null2_pointConstraint1" -p "null2";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -14.801435341567688 50.370838582296123 -3.6875608201162278 ;
	setAttr -k on ".w0";
createNode transform -n "null3" -p "main";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	setAttr ".ovc" 17;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "select -d #;\nselect -add @;";
createNode pointConstraint -n "null3_pointConstraint1" -p "null3";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_LW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 5.3500339494019755 22.157072693764498 2.0856384131930237 ;
	setAttr -k on ".w0";
createNode transform -n "null4" -p "main";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	setAttr ".ovc" 17;
	setAttr ".dh" yes;
	setAttr ".zooTrigCmd0" -type "string" "select -d #;\nselect -add @;";
createNode pointConstraint -n "null4_pointConstraint1" -p "null4";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_RW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -5.3500334240826888 22.157046880702062 2.0856426194469715 ;
	setAttr -k on ".w0";
createNode transform -n "RefRNfosterParent1";
createNode orientConstraint -n "Ref:bip_pelvis_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "PelvisControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -175.25638302058502 0 0 ;
	setAttr ".o" -type "double3" 175.25638302058502 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Ref:bip_pelvis_pointConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "UpperbodyControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 41.365335543497515 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_hip_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_RIKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_hip_RFKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.15440772158964466 -10.610250934420222 -1.6627184559909347 ;
	setAttr ".rsrr" -type "double3" -5.0690090235824809e-015 -7.7650260777917912e-015 
		-5.466578358765416e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_knee_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_RIKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_RFKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_foot_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_foot_RIKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_foot_RFKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.3904647682208231 6.7675664291448996 8.3561352119643182 ;
	setAttr ".rsrr" -type "double3" -2.9879820347342802e-015 -2.2363275104040351e-015 
		-2.3854160110976376e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_toe_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_toe_RIKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_toe_RFKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 3.1850702428964396e-006 0 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_hip_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_hip_LIKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_hip_LFKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.15440773695968882 -10.610294149187053 -1.6627249573138061 ;
	setAttr ".rsrr" -type "double3" -8.945310041616136e-016 1.2414111463266062e-032 
		1.5902773407317576e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_knee_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_LIKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_LFKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_foot_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_foot_LIKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_foot_LFKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.39046974759342629 6.7675977563140641 8.3561695675323548 ;
	setAttr ".rsrr" -type "double3" 2.4785963240311391e-015 1.3914926731402886e-015 
		3.975693351829396e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_toe_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_toe_LIKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_toe_LFKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:bip_spine_0_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_0FKcontrolW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_0ikW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 1.9428902930940239e-015 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905503e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 2.2204460492503131e-015 ;
	setAttr ".tg[1].tor" -type "double3" -9.5416640443905471e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.4312496066585827e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -4.1099566120759192 8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635152e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:bip_spine_1_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_1FKcontrolW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_1ikW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 5.773159728050814e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.0336802714756427e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 1.4210854715202004e-014 6.6613381477509392e-015 ;
	setAttr ".tg[1].tor" -type "double3" -4.7708320221952736e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -6.9495568513513248 5.3290705182007514e-015 ;
	setAttr ".rsrr" -type "double3" 4.7708320221952752e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:bip_spine_2_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_2FKcontrolW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_2ikW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 2.1316282072803006e-014 4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" -8.7465253740246703e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 2.8421709430404007e-014 -2.2204460492503131e-015 ;
	setAttr ".tg[1].tor" -type "double3" -5.5659706925611528e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.6300342742500524e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.9566805304271568 8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 3.975693351829396e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:bip_spine_3_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_3FKcontrolW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_3ikW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 -1.3322676295501878e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781094e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 -1.2434497875801753e-014 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -4.7038657668930668 -8.8817841970012523e-015 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_collar_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "rShoulderControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 1.7493050748049341e-014 -9.5416640443905535e-015 1.1131941385122309e-014 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317594e-015 4.7708320221952736e-015 
		3.1805546814635155e-014 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_upperArm_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_RFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_upperArm_RIKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.016136643787879695 2.6989391068648074 -0.68483399591518013 ;
	setAttr ".rsrr" -type "double3" 1.4312496066585827e-014 1.2225257056875391e-014 
		2.9817700138720476e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_lowerArm_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_RFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_lowerArm_RIKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_hand_R_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "rHandControlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_0_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.2164496600635175e-016 -8.8817841970012523e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.590277340731759e-014 -1.1927080055488193e-014 
		-1.5902773407317592e-015 ;
	setAttr ".lr" -type "double3" -3.5383670831281621e-014 2.7978941963499386e-014 2.8624992133171641e-014 ;
	setAttr ".rst" -type "double3" -0.79683783957348453 3.2120125235480383 3.2673718022989631 ;
	setAttr ".rsrr" -type "double3" 1.3517357396219947e-014 1.093315671753084e-014 1.289688246461531e-030 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_1_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.1918911957973251e-016 1.7763568394002505e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.2263882770244621e-014 -4.7708320221952748e-014 
		7.7526020360673219e-015 ;
	setAttr ".lr" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".rst" -type "double3" -5.9612588989566007e-006 2.3521231720760314 2.5790668189529242e-005 ;
	setAttr ".rsrr" -type "double3" 3.8166656177562201e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_2_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.4940054162198066e-016 -3.5527136788005009e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 0 -2.8028638130397231e-014 -2.9817700138720461e-014 ;
	setAttr ".lr" -type "double3" -2.5444437451708128e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.4114386372463557e-006 1.3537916446747378 -1.7225306230272963e-006 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708128e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_0_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.1102230246251565e-015 -3.5527136788005009e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952761e-014 -1.2722218725854064e-014 
		-9.7404487119820171e-015 ;
	setAttr ".lr" -type "double3" 2.623957612207402e-014 1.1529510720305238e-014 4.9298597562684508e-014 ;
	setAttr ".rst" -type "double3" -1.1056620429970998 3.5123946537059076 2.1982509813616842 ;
	setAttr ".rsrr" -type "double3" 3.8564225512745135e-014 1.6200950408704779e-014 
		1.192708005548819e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_1_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.8833827526759706e-015 -9.7699626167013776e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.2799470152592499e-014 ;
	setAttr ".lr" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.2659413072935166e-005 2.3983099704796018 4.05199073760798e-005 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_2_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.6613381477509392e-016 -5.3290705182007514e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905535e-015 -1.8685758753598157e-014 
		-1.5505204072134641e-014 ;
	setAttr ".lr" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".rst" -type "double3" -2.4347474426589244e-005 2.2567599961671405 -2.6085803952469178e-006 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_0_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.3322676295501878e-015 -5.3290705182007514e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.7493050748049344e-014 -3.7769086842379275e-015 
		1.150466263685632e-014 ;
	setAttr ".lr" -type "double3" -1.4551037667695583e-013 -2.6537753123461206e-014 
		6.3611093629270659e-015 ;
	setAttr ".rst" -type "double3" -2.3786806754344916 3.6282788307778109 0.43329462602719904 ;
	setAttr ".rsrr" -type "double3" -2.6239576122074008e-014 -6.0629323615398317e-015 
		-1.7493050748049337e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_1_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 -5.3290705182007514e-015 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -5.4069429584879807e-014 2.6338968455869755e-014 
		2.50468681165252e-014 ;
	setAttr ".lr" -type "double3" -3.8166656177562208e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.617128320280381e-005 3.666623448588334 1.0028390377669893e-005 ;
	setAttr ".rsrr" -type "double3" 6.9972202992197388e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_2_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 -1.4210854715202004e-014 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270335e-014 1.3517357396219944e-014 
		1.0933156717530836e-014 ;
	setAttr ".lr" -type "double3" -1.4312496066585825e-013 0 0 ;
	setAttr ".rst" -type "double3" 8.9496015415191366e-007 2.728436367112776 -2.6751516113421303e-005 ;
	setAttr ".rsrr" -type "double3" -9.8597195125369017e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_0_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-015 -7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270361e-014 -6.3611093629270367e-015 
		9.5416640443905566e-015 ;
	setAttr ".lr" -type "double3" -2.3893917044494671e-013 8.5477407064332603e-015 2.8624992133171635e-014 ;
	setAttr ".rst" -type "double3" -1.7471187995452553 3.854541741494053 -1.6507312777843355 ;
	setAttr ".rsrr" -type "double3" -6.0828108282989755e-014 3.7272125173400498e-015 
		-1.7493050748049344e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_1_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 6.2172489379008766e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317588e-015 -1.1131941385122309e-014 
		9.3428793767990803e-015 ;
	setAttr ".lr" -type "double3" -1.6538884343610288e-013 0 0 ;
	setAttr ".rst" -type "double3" -1.7585531378205843e-005 3.0817202001749813 -4.9175511307453235e-006 ;
	setAttr ".rsrr" -type "double3" 6.361109362927031e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_2_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -6.2172489379008766e-015 -7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.0430538947806841e-014 1.5902773407317584e-015 
		-1.7890620083232281e-014 ;
	setAttr ".lr" -type "double3" -7.6333312355124402e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.3427422487666263e-005 2.1173507812163601 1.4753134962575132e-006 ;
	setAttr ".rsrr" -type "double3" 7.1562480332929123e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_0_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.4432899320127035e-015 -6.2172489379008766e-015 
		1.1102230246251565e-015 ;
	setAttr ".tg[0].tor" -type "double3" 8.5477407064332051e-015 -1.9878466759146988e-015 
		9.5416640443905535e-015 ;
	setAttr ".lr" -type "double3" -1.1330726052713779e-014 -6.261717029131297e-015 1.1231333718918044e-014 ;
	setAttr ".rst" -type "double3" 1.3306706490034408 1.4947023221126905 -3.3399202899248408 ;
	setAttr ".rsrr" -type "double3" -1.5703988739726114e-014 3.8763010180336594e-015 
		-1.0038625713369225e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_1_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_1_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.5519144009631418e-015 2.6645352591003757e-015 
		-3.3306690738754696e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.4389747493324278e-014 2.3854160110976384e-015 
		7.9513867036587951e-015 ;
	setAttr ".lr" -type "double3" -2.2263882770244617e-014 0 0 ;
	setAttr ".rst" -type "double3" 2.609403203734928e-005 1.8218356125846933 -6.1014781238544202e-006 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_2_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_2_RControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.9960036108132044e-015 -4.4408920985006262e-015 
		-2.55351295663786e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.197677622238605e-014 -3.9756933518293979e-016 
		1.2722218725854073e-014 ;
	setAttr ".lr" -type "double3" 1.9083328088781097e-014 0 0 ;
	setAttr ".rst" -type "double3" 9.9331246978806575e-006 1.3248510006780396 1.9356691061123144e-006 ;
	setAttr ".rsrr" -type "double3" 3.4190962825732795e-014 0 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_collar_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "lShoulderControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 2.2263882770244621e-014 -6.3611093629270335e-015 -1.2358937634540448e-030 ;
	setAttr ".rsrr" -type "double3" -3.180554681463516e-015 9.5416640443905487e-015 
		-2.6483437788300939e-031 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_upperArm_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_upperArm_LFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_upperArm_LIKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.016133455741023751 2.6989923493802341 -0.68484594710318203 ;
	setAttr ".rsrr" -type "double3" 5.9635400277440943e-015 -1.4908850069360299e-016 
		1.1784203575656821e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_lowerArm_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_lowerArm_LFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_lowerArm_LIKW1" -dv 1 -min 0 -at "double";
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
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Ref:bip_hand_L_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "lHandControlW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_0_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.3306690738754696e-015 -3.3306690738754696e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317584e-014 -8.3489560388417303e-015 
		-6.5241749105606596e-015 ;
	setAttr ".lr" -type "double3" -3.3395824155366928e-014 1.3119788061037012e-014 1.5902773407317581e-014 ;
	setAttr ".rst" -type "double3" 0.068713341144778894 -4.8781835710192425 -2.1447895257226257 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587888e-015 -6.7586786981099719e-015 
		3.1805546814635152e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_1_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.6613381477509392e-016 1.0658141036401503e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244605e-014 -1.6300342742500521e-014 
		-3.1606762147043691e-014 ;
	setAttr ".lr" -type "double3" -3.1805546814635155e-014 0 0 ;
	setAttr ".rst" -type "double3" -3.3306690738754696e-016 -2.3520938169268044 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635155e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_pinky_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_pinky_2_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 1.0658141036401503e-014 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.8166656177562189e-014 -2.5842006786891068e-015 
		2.9817700138720461e-014 ;
	setAttr ".lr" -type "double3" -4.4527765540489222e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-016 -1.3538148699012211 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854064e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_0_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 -5.6066262743570405e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 5.7647553601526243e-015 -3.9756933518293952e-015 
		9.9268093378490195e-015 ;
	setAttr ".lr" -type "double3" -2.8624992133171654e-014 2.1468744099878737e-014 -3.1805546814635223e-015 ;
	setAttr ".rst" -type "double3" 0.83752626101473737 -5.1652777435662394 -0.47290920591820651 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-014 -1.3914926731402885e-014 
		-6.3611093629270312e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_1_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -5.3290705182007514e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.361109362927032e-015 1.2722218725854064e-014 
		7.9513867036587899e-016 ;
	setAttr ".lr" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-015 -2.7497020866894428 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905487e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_ring_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_ring_2_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 -1.7763568394002505e-014 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244605e-014 -1.9878466759146972e-015 
		-1.0336802714756426e-014 ;
	setAttr ".lr" -type "double3" -1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 2.886579864025407e-015 -1.7536490292351683 0 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_0_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -5.3290705182007514e-015 -3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463516e-015 -1.4312496066585827e-014 
		1.9878466759146976e-015 ;
	setAttr ".lr" -type "double3" -1.2801732592890655e-013 -8.3489560388417193e-015 
		1.1131941385122318e-014 ;
	setAttr ".rst" -type "double3" 0.78184337599199338 -4.8289839324282013 1.4711776702560702 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952752e-015 -3.9756933518293979e-016 
		-4.7708320221952752e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_1_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -1.2434497875801753e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -4.452776554048921e-014 -1.1927080055488186e-014 
		1.8288189418415217e-014 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -3.6666781479550679 0 ;
	setAttr ".rsrr" -type "double3" 3.8166656177562201e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_middle_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_middle_2_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-015 -8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.180554681463516e-015 2.9420130803537521e-014 ;
	setAttr ".lr" -type "double3" -9.5416640443905503e-015 0 0 ;
	setAttr ".rst" -type "double3" 2.6645352591003757e-015 -1.9861089745823381 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_0_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 -7.9936057773011271e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -2.3854160110976365e-014 -2.2263882770244611e-014 
		5.9635400277440928e-015 ;
	setAttr ".lr" -type "double3" 5.0888874903416268e-013 -2.4848083448933868e-015 3.1805546814635057e-015 ;
	setAttr ".rst" -type "double3" 0.93837317315526647 -5.0978689351874085 3.2359131501908163 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-014 5.9635400277440943e-015 
		-6.3611093629270327e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_1_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 -5.3290705182007514e-015 
		2.4868995751603507e-014 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.7708320221952728e-015 6.3611093629270304e-015 ;
	setAttr ".lr" -type "double3" 3.4986101496098684e-013 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -2.662802829354443 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854064e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_index_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_index_2_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -8.8817841970012523e-015 8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.272221872585407e-014 -1.1131941385122306e-014 
		2.3854160110976371e-014 ;
	setAttr ".lr" -type "double3" 3.4668046027952332e-013 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 -1.826830461148079 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_0_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.5511151231257827e-015 0 5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.0872390097104327e-014 0 7.9513867036587919e-016 ;
	setAttr ".lr" -type "double3" 1.2424041724466862e-014 1.590277340731758e-015 3.776908684237926e-015 ;
	setAttr ".rst" -type "double3" -1.706752865601878 -2.3126350068830179 4.0889919874328191 ;
	setAttr ".rsrr" -type "double3" 5.4665783587654201e-015 -3.1805546814635168e-015 
		-2.6835930124848426e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_1_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_1_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.2188474935755949e-015 1.504959351583679e-014 
		1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.0537717473151499e-014 1.5902773407317581e-014 
		-1.2641462454645029e-015 ;
	setAttr ".lr" -type "double3" -1.2722218725854064e-014 0 0 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -1.8218406780859948 1.2434497875801753e-014 ;
	setAttr ".rsrr" -type "double3" -2.8624992133171654e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_thumb_2_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "bip_thumb_2_LControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.5543122344752192e-015 3.0531133177191805e-015 
		9.7699626167013776e-015 ;
	setAttr ".tg[0].tor" -type "double3" 5.0690090235824786e-015 3.1805546814635168e-015 
		-2.5842006786891076e-015 ;
	setAttr ".lr" -type "double3" 7.9513867036587919e-015 0 0 ;
	setAttr ".rst" -type "double3" -7.1054273576010019e-015 -1.3248486740028398 -2.6645352591003757e-015 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_neck_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "neckControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ref:bip_head_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "headControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 4.7708320221952752e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952752e-015 0 0 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr -s 748 ".phl";
	setAttr ".phl[682]" 0;
	setAttr ".phl[2063]" 0;
	setAttr ".phl[2064]" 0;
	setAttr ".phl[2067]" 0;
	setAttr ".phl[2068]" 0;
	setAttr ".phl[2095]" 0;
	setAttr ".phl[2098]" 0;
	setAttr ".phl[2099]" 0;
	setAttr ".phl[2100]" 0;
	setAttr ".phl[2103]" 0;
	setAttr ".phl[2106]" 0;
	setAttr ".phl[2112]" 0;
	setAttr ".phl[2114]" 0;
	setAttr ".phl[2116]" 0;
	setAttr ".phl[2122]" 0;
	setAttr ".phl[2830]" 0;
	setAttr ".phl[2833]" 0;
	setAttr ".phl[2836]" 0;
	setAttr ".phl[4246]" 0;
	setAttr ".phl[4936]" 0;
	setAttr ".phl[4962]" 0;
	setAttr ".phl[4964]" 0;
	setAttr ".phl[4971]" 0;
	setAttr ".phl[4972]" 0;
	setAttr ".phl[4973]" 0;
	setAttr ".phl[4974]" 0;
	setAttr ".phl[4975]" 0;
	setAttr ".phl[4976]" 0;
	setAttr ".phl[4977]" 0;
	setAttr ".phl[4978]" 0;
	setAttr ".phl[4979]" 0;
	setAttr ".phl[4980]" 0;
	setAttr ".phl[4981]" 0;
	setAttr ".phl[4982]" 0;
	setAttr ".phl[4983]" 0;
	setAttr ".phl[4984]" 0;
	setAttr ".phl[4985]" 0;
	setAttr ".phl[4986]" 0;
	setAttr ".phl[4987]" 0;
	setAttr ".phl[4988]" 0;
	setAttr ".phl[4989]" 0;
	setAttr ".phl[4990]" 0;
	setAttr ".phl[4991]" 0;
	setAttr ".phl[4992]" 0;
	setAttr ".phl[4993]" 0;
	setAttr ".phl[4994]" 0;
	setAttr ".phl[4995]" 0;
	setAttr ".phl[4996]" 0;
	setAttr ".phl[4997]" 0;
	setAttr ".phl[4998]" 0;
	setAttr ".phl[4999]" 0;
	setAttr ".phl[5000]" 0;
	setAttr ".phl[5001]" 0;
	setAttr ".phl[5002]" 0;
	setAttr ".phl[5003]" 0;
	setAttr ".phl[5004]" 0;
	setAttr ".phl[5005]" 0;
	setAttr ".phl[5006]" 0;
	setAttr ".phl[5007]" 0;
	setAttr ".phl[5008]" 0;
	setAttr ".phl[5009]" 0;
	setAttr ".phl[5010]" 0;
	setAttr ".phl[5011]" 0;
	setAttr ".phl[5012]" 0;
	setAttr ".phl[5013]" 0;
	setAttr ".phl[5014]" 0;
	setAttr ".phl[5015]" 0;
	setAttr ".phl[5016]" 0;
	setAttr ".phl[5017]" 0;
	setAttr ".phl[5018]" 0;
	setAttr ".phl[5019]" 0;
	setAttr ".phl[5020]" 0;
	setAttr ".phl[5021]" 0;
	setAttr ".phl[5022]" 0;
	setAttr ".phl[5023]" 0;
	setAttr ".phl[5024]" 0;
	setAttr ".phl[5025]" 0;
	setAttr ".phl[5026]" 0;
	setAttr ".phl[5027]" 0;
	setAttr ".phl[5028]" 0;
	setAttr ".phl[5029]" 0;
	setAttr ".phl[5030]" 0;
	setAttr ".phl[5031]" 0;
	setAttr ".phl[5032]" 0;
	setAttr ".phl[5033]" 0;
	setAttr ".phl[5034]" 0;
	setAttr ".phl[5035]" 0;
	setAttr ".phl[5036]" 0;
	setAttr ".phl[5037]" 0;
	setAttr ".phl[5038]" 0;
	setAttr ".phl[5039]" 0;
	setAttr ".phl[5040]" 0;
	setAttr ".phl[5041]" 0;
	setAttr ".phl[5042]" 0;
	setAttr ".phl[5043]" 0;
	setAttr ".phl[5044]" 0;
	setAttr ".phl[5045]" 0;
	setAttr ".phl[5046]" 0;
	setAttr ".phl[5047]" 0;
	setAttr ".phl[5048]" 0;
	setAttr ".phl[5049]" 0;
	setAttr ".phl[5050]" 0;
	setAttr ".phl[5051]" 0;
	setAttr ".phl[5052]" 0;
	setAttr ".phl[5053]" 0;
	setAttr ".phl[5054]" 0;
	setAttr ".phl[5055]" 0;
	setAttr ".phl[5056]" 0;
	setAttr ".phl[5057]" 0;
	setAttr ".phl[5058]" 0;
	setAttr ".phl[5059]" 0;
	setAttr ".phl[5060]" 0;
	setAttr ".phl[5061]" 0;
	setAttr ".phl[5062]" 0;
	setAttr ".phl[5063]" 0;
	setAttr ".phl[5064]" 0;
	setAttr ".phl[5065]" 0;
	setAttr ".phl[5066]" 0;
	setAttr ".phl[5067]" 0;
	setAttr ".phl[5068]" 0;
	setAttr ".phl[5069]" 0;
	setAttr ".phl[5070]" 0;
	setAttr ".phl[5071]" 0;
	setAttr ".phl[5072]" 0;
	setAttr ".phl[5073]" 0;
	setAttr ".phl[5074]" 0;
	setAttr ".phl[5075]" 0;
	setAttr ".phl[5076]" 0;
	setAttr ".phl[5077]" 0;
	setAttr ".phl[5078]" 0;
	setAttr ".phl[5079]" 0;
	setAttr ".phl[5080]" 0;
	setAttr ".phl[5081]" 0;
	setAttr ".phl[5082]" 0;
	setAttr ".phl[5083]" 0;
	setAttr ".phl[5084]" 0;
	setAttr ".phl[5085]" 0;
	setAttr ".phl[5086]" 0;
	setAttr ".phl[5087]" 0;
	setAttr ".phl[5088]" 0;
	setAttr ".phl[5089]" 0;
	setAttr ".phl[5090]" 0;
	setAttr ".phl[5091]" 0;
	setAttr ".phl[5092]" 0;
	setAttr ".phl[5093]" 0;
	setAttr ".phl[5094]" 0;
	setAttr ".phl[5095]" 0;
	setAttr ".phl[5096]" 0;
	setAttr ".phl[5097]" 0;
	setAttr ".phl[5098]" 0;
	setAttr ".phl[5099]" 0;
	setAttr ".phl[5100]" 0;
	setAttr ".phl[5101]" 0;
	setAttr ".phl[5102]" 0;
	setAttr ".phl[5103]" 0;
	setAttr ".phl[5104]" 0;
	setAttr ".phl[5105]" 0;
	setAttr ".phl[5106]" 0;
	setAttr ".phl[5107]" 0;
	setAttr ".phl[5108]" 0;
	setAttr ".phl[5109]" 0;
	setAttr ".phl[5110]" 0;
	setAttr ".phl[5111]" 0;
	setAttr ".phl[5112]" 0;
	setAttr ".phl[5113]" 0;
	setAttr ".phl[5114]" 0;
	setAttr ".phl[5115]" 0;
	setAttr ".phl[5116]" 0;
	setAttr ".phl[5117]" 0;
	setAttr ".phl[5118]" 0;
	setAttr ".phl[5119]" 0;
	setAttr ".phl[5120]" 0;
	setAttr ".phl[5121]" 0;
	setAttr ".phl[5122]" 0;
	setAttr ".phl[5123]" 0;
	setAttr ".phl[5124]" 0;
	setAttr ".phl[5125]" 0;
	setAttr ".phl[5126]" 0;
	setAttr ".phl[5127]" 0;
	setAttr ".phl[5128]" 0;
	setAttr ".phl[5129]" 0;
	setAttr ".phl[5130]" 0;
	setAttr ".phl[5131]" 0;
	setAttr ".phl[5132]" 0;
	setAttr ".phl[5133]" 0;
	setAttr ".phl[5134]" 0;
	setAttr ".phl[5135]" 0;
	setAttr ".phl[5136]" 0;
	setAttr ".phl[5137]" 0;
	setAttr ".phl[5138]" 0;
	setAttr ".phl[5139]" 0;
	setAttr ".phl[5140]" 0;
	setAttr ".phl[5141]" 0;
	setAttr ".phl[5142]" 0;
	setAttr ".phl[5143]" 0;
	setAttr ".phl[5144]" 0;
	setAttr ".phl[5145]" 0;
	setAttr ".phl[5146]" 0;
	setAttr ".phl[5147]" 0;
	setAttr ".phl[5148]" 0;
	setAttr ".phl[5149]" 0;
	setAttr ".phl[5150]" 0;
	setAttr ".phl[5151]" 0;
	setAttr ".phl[5152]" 0;
	setAttr ".phl[5153]" 0;
	setAttr ".phl[5154]" 0;
	setAttr ".phl[5155]" 0;
	setAttr ".phl[5156]" 0;
	setAttr ".phl[5157]" 0;
	setAttr ".phl[5158]" 0;
	setAttr ".phl[5159]" 0;
	setAttr ".phl[5160]" 0;
	setAttr ".phl[5161]" 0;
	setAttr ".phl[5162]" 0;
	setAttr ".phl[5163]" 0;
	setAttr ".phl[5164]" 0;
	setAttr ".phl[5165]" 0;
	setAttr ".phl[5166]" 0;
	setAttr ".phl[5167]" 0;
	setAttr ".phl[5168]" 0;
	setAttr ".phl[5169]" 0;
	setAttr ".phl[5170]" 0;
	setAttr ".phl[5171]" 0;
	setAttr ".phl[5172]" 0;
	setAttr ".phl[5173]" 0;
	setAttr ".phl[5174]" 0;
	setAttr ".phl[5175]" 0;
	setAttr ".phl[5176]" 0;
	setAttr ".phl[5177]" 0;
	setAttr ".phl[5178]" 0;
	setAttr ".phl[5179]" 0;
	setAttr ".phl[5180]" 0;
	setAttr ".phl[5181]" 0;
	setAttr ".phl[5182]" 0;
	setAttr ".phl[5183]" 0;
	setAttr ".phl[5184]" 0;
	setAttr ".phl[5185]" 0;
	setAttr ".phl[5186]" 0;
	setAttr ".phl[5187]" 0;
	setAttr ".phl[5188]" 0;
	setAttr ".phl[5189]" 0;
	setAttr ".phl[5190]" 0;
	setAttr ".phl[5191]" 0;
	setAttr ".phl[5192]" 0;
	setAttr ".phl[5193]" 0;
	setAttr ".phl[5194]" 0;
	setAttr ".phl[5195]" 0;
	setAttr ".phl[5196]" 0;
	setAttr ".phl[5197]" 0;
	setAttr ".phl[5198]" 0;
	setAttr ".phl[5199]" 0;
	setAttr ".phl[5200]" 0;
	setAttr ".phl[5201]" 0;
	setAttr ".phl[5202]" 0;
	setAttr ".phl[5203]" 0;
	setAttr ".phl[5204]" 0;
	setAttr ".phl[5205]" 0;
	setAttr ".phl[5206]" 0;
	setAttr ".phl[5207]" 0;
	setAttr ".phl[5208]" 0;
	setAttr ".phl[5209]" 0;
	setAttr ".phl[5210]" 0;
	setAttr ".phl[5211]" 0;
	setAttr ".phl[5212]" 0;
	setAttr ".phl[5213]" 0;
	setAttr ".phl[5214]" 0;
	setAttr ".phl[5215]" 0;
	setAttr ".phl[5216]" 0;
	setAttr ".phl[5217]" 0;
	setAttr ".phl[5218]" 0;
	setAttr ".phl[5219]" 0;
	setAttr ".phl[5220]" 0;
	setAttr ".phl[5221]" 0;
	setAttr ".phl[5222]" 0;
	setAttr ".phl[5223]" 0;
	setAttr ".phl[5224]" 0;
	setAttr ".phl[5225]" 0;
	setAttr ".phl[5226]" 0;
	setAttr ".phl[5227]" 0;
	setAttr ".phl[5228]" 0;
	setAttr ".phl[5229]" 0;
	setAttr ".phl[5230]" 0;
	setAttr ".phl[5231]" 0;
	setAttr ".phl[5232]" 0;
	setAttr ".phl[5233]" 0;
	setAttr ".phl[5234]" 0;
	setAttr ".phl[5235]" 0;
	setAttr ".phl[5236]" 0;
	setAttr ".phl[5237]" 0;
	setAttr ".phl[5238]" 0;
	setAttr ".phl[5239]" 0;
	setAttr ".phl[5240]" 0;
	setAttr ".phl[5241]" 0;
	setAttr ".phl[5242]" 0;
	setAttr ".phl[5243]" 0;
	setAttr ".phl[5244]" 0;
	setAttr ".phl[5245]" 0;
	setAttr ".phl[5246]" 0;
	setAttr ".phl[5247]" 0;
	setAttr ".phl[5248]" 0;
	setAttr ".phl[5249]" 0;
	setAttr ".phl[5250]" 0;
	setAttr ".phl[5251]" 0;
	setAttr ".phl[5252]" 0;
	setAttr ".phl[5253]" 0;
	setAttr ".phl[5254]" 0;
	setAttr ".phl[5255]" 0;
	setAttr ".phl[5256]" 0;
	setAttr ".phl[5257]" 0;
	setAttr ".phl[5258]" 0;
	setAttr ".phl[5259]" 0;
	setAttr ".phl[5260]" 0;
	setAttr ".phl[5261]" 0;
	setAttr ".phl[5262]" 0;
	setAttr ".phl[5263]" 0;
	setAttr ".phl[5264]" 0;
	setAttr ".phl[5265]" 0;
	setAttr ".phl[5266]" 0;
	setAttr ".phl[5267]" 0;
	setAttr ".phl[5268]" 0;
	setAttr ".phl[5269]" 0;
	setAttr ".phl[5270]" 0;
	setAttr ".phl[5271]" 0;
	setAttr ".phl[5272]" 0;
	setAttr ".phl[5273]" 0;
	setAttr ".phl[5274]" 0;
	setAttr ".phl[5275]" 0;
	setAttr ".phl[5276]" 0;
	setAttr ".phl[5277]" 0;
	setAttr ".phl[5278]" 0;
	setAttr ".phl[5279]" 0;
	setAttr ".phl[5280]" 0;
	setAttr ".phl[5281]" 0;
	setAttr ".phl[5282]" 0;
	setAttr ".phl[5283]" 0;
	setAttr ".phl[5284]" 0;
	setAttr ".phl[5285]" 0;
	setAttr ".phl[5286]" 0;
	setAttr ".phl[5287]" 0;
	setAttr ".phl[5288]" 0;
	setAttr ".phl[5289]" 0;
	setAttr ".phl[5290]" 0;
	setAttr ".phl[5291]" 0;
	setAttr ".phl[5292]" 0;
	setAttr ".phl[5293]" 0;
	setAttr ".phl[5294]" 0;
	setAttr ".phl[5295]" 0;
	setAttr ".phl[5296]" 0;
	setAttr ".phl[5297]" 0;
	setAttr ".phl[5298]" 0;
	setAttr ".phl[5299]" 0;
	setAttr ".phl[5300]" 0;
	setAttr ".phl[5301]" 0;
	setAttr ".phl[5302]" 0;
	setAttr ".phl[5303]" 0;
	setAttr ".phl[5304]" 0;
	setAttr ".phl[5305]" 0;
	setAttr ".phl[5306]" 0;
	setAttr ".phl[5307]" 0;
	setAttr ".phl[5308]" 0;
	setAttr ".phl[5309]" 0;
	setAttr ".phl[5310]" 0;
	setAttr ".phl[5311]" 0;
	setAttr ".phl[5312]" 0;
	setAttr ".phl[5313]" 0;
	setAttr ".phl[5314]" 0;
	setAttr ".phl[5315]" 0;
	setAttr ".phl[5316]" 0;
	setAttr ".phl[5317]" 0;
	setAttr ".phl[5318]" 0;
	setAttr ".phl[5319]" 0;
	setAttr ".phl[5320]" 0;
	setAttr ".phl[5321]" 0;
	setAttr ".phl[5322]" 0;
	setAttr ".phl[5323]" 0;
	setAttr ".phl[5324]" 0;
	setAttr ".phl[5325]" 0;
	setAttr ".phl[5326]" 0;
	setAttr ".phl[5327]" 0;
	setAttr ".phl[5328]" 0;
	setAttr ".phl[5329]" 0;
	setAttr ".phl[5330]" 0;
	setAttr ".phl[5331]" 0;
	setAttr ".phl[5332]" 0;
	setAttr ".phl[5333]" 0;
	setAttr ".phl[5334]" 0;
	setAttr ".phl[5335]" 0;
	setAttr ".phl[5336]" 0;
	setAttr ".phl[5337]" 0;
	setAttr ".phl[5338]" 0;
	setAttr ".phl[5339]" 0;
	setAttr ".phl[5340]" 0;
	setAttr ".phl[5341]" 0;
	setAttr ".phl[5342]" 0;
	setAttr ".phl[5343]" 0;
	setAttr ".phl[5344]" 0;
	setAttr ".phl[5345]" 0;
	setAttr ".phl[5346]" 0;
	setAttr ".phl[5347]" 0;
	setAttr ".phl[5348]" 0;
	setAttr ".phl[5349]" 0;
	setAttr ".phl[5350]" 0;
	setAttr ".phl[5351]" 0;
	setAttr ".phl[5352]" 0;
	setAttr ".phl[5353]" 0;
	setAttr ".phl[5354]" 0;
	setAttr ".phl[5355]" 0;
	setAttr ".phl[5356]" 0;
	setAttr ".phl[5357]" 0;
	setAttr ".phl[5358]" 0;
	setAttr ".phl[5359]" 0;
	setAttr ".phl[5360]" 0;
	setAttr ".phl[5361]" 0;
	setAttr ".phl[5362]" 0;
	setAttr ".phl[5363]" 0;
	setAttr ".phl[5364]" 0;
	setAttr ".phl[5365]" 0;
	setAttr ".phl[5366]" 0;
	setAttr ".phl[5367]" 0;
	setAttr ".phl[5368]" 0;
	setAttr ".phl[5369]" 0;
	setAttr ".phl[5370]" 0;
	setAttr ".phl[5371]" 0;
	setAttr ".phl[5372]" 0;
	setAttr ".phl[5373]" 0;
	setAttr ".phl[5374]" 0;
	setAttr ".phl[5375]" 0;
	setAttr ".phl[5376]" 0;
	setAttr ".phl[5377]" 0;
	setAttr ".phl[5378]" 0;
	setAttr ".phl[5379]" 0;
	setAttr ".phl[5380]" 0;
	setAttr ".phl[5381]" 0;
	setAttr ".phl[5382]" 0;
	setAttr ".phl[5383]" 0;
	setAttr ".phl[5384]" 0;
	setAttr ".phl[5385]" 0;
	setAttr ".phl[5386]" 0;
	setAttr ".phl[5387]" 0;
	setAttr ".phl[5388]" 0;
	setAttr ".phl[5389]" 0;
	setAttr ".phl[5390]" 0;
	setAttr ".phl[5391]" 0;
	setAttr ".phl[5392]" 0;
	setAttr ".phl[5393]" 0;
	setAttr ".phl[5394]" 0;
	setAttr ".phl[5395]" 0;
	setAttr ".phl[5396]" 0;
	setAttr ".phl[5397]" 0;
	setAttr ".phl[5398]" 0;
	setAttr ".phl[5399]" 0;
	setAttr ".phl[5400]" 0;
	setAttr ".phl[5401]" 0;
	setAttr ".phl[5402]" 0;
	setAttr ".phl[5403]" 0;
	setAttr ".phl[5404]" 0;
	setAttr ".phl[5405]" 0;
	setAttr ".phl[5406]" 0;
	setAttr ".phl[5407]" 0;
	setAttr ".phl[5408]" 0;
	setAttr ".phl[5409]" 0;
	setAttr ".phl[5410]" 0;
	setAttr ".phl[5411]" 0;
	setAttr ".phl[5412]" 0;
	setAttr ".phl[5413]" 0;
	setAttr ".phl[5414]" 0;
	setAttr ".phl[5415]" 0;
	setAttr ".phl[5416]" 0;
	setAttr ".phl[5417]" 0;
	setAttr ".phl[5418]" 0;
	setAttr ".phl[5419]" 0;
	setAttr ".phl[5420]" 0;
	setAttr ".phl[5421]" 0;
	setAttr ".phl[5422]" 0;
	setAttr ".phl[5423]" 0;
	setAttr ".phl[5424]" 0;
	setAttr ".phl[5425]" 0;
	setAttr ".phl[5426]" 0;
	setAttr ".phl[5427]" 0;
	setAttr ".phl[5428]" 0;
	setAttr ".phl[5429]" 0;
	setAttr ".phl[5430]" 0;
	setAttr ".phl[5431]" 0;
	setAttr ".phl[5432]" 0;
	setAttr ".phl[5433]" 0;
	setAttr ".phl[5434]" 0;
	setAttr ".phl[5435]" 0;
	setAttr ".phl[5436]" 0;
	setAttr ".phl[5437]" 0;
	setAttr ".phl[5438]" 0;
	setAttr ".phl[5439]" 0;
	setAttr ".phl[5440]" 0;
	setAttr ".phl[5441]" 0;
	setAttr ".phl[5442]" 0;
	setAttr ".phl[5443]" 0;
	setAttr ".phl[5444]" 0;
	setAttr ".phl[5445]" 0;
	setAttr ".phl[5446]" 0;
	setAttr ".phl[5447]" 0;
	setAttr ".phl[5448]" 0;
	setAttr ".phl[5449]" 0;
	setAttr ".phl[5450]" 0;
	setAttr ".phl[5451]" 0;
	setAttr ".phl[5452]" 0;
	setAttr ".phl[5453]" 0;
	setAttr ".phl[5454]" 0;
	setAttr ".phl[5455]" 0;
	setAttr ".phl[5456]" 0;
	setAttr ".phl[5457]" 0;
	setAttr ".phl[5458]" 0;
	setAttr ".phl[5459]" 0;
	setAttr ".phl[5460]" 0;
	setAttr ".phl[5461]" 0;
	setAttr ".phl[5462]" 0;
	setAttr ".phl[5463]" 0;
	setAttr ".phl[5464]" 0;
	setAttr ".phl[5465]" 0;
	setAttr ".phl[5466]" 0;
	setAttr ".phl[5467]" 0;
	setAttr ".phl[5468]" 0;
	setAttr ".phl[5469]" 0;
	setAttr ".phl[5470]" 0;
	setAttr ".phl[5471]" 0;
	setAttr ".phl[5472]" 0;
	setAttr ".phl[5473]" 0;
	setAttr ".phl[5474]" 0;
	setAttr ".phl[5475]" 0;
	setAttr ".phl[5476]" 0;
	setAttr ".phl[5477]" 0;
	setAttr ".phl[5478]" 0;
	setAttr ".phl[5479]" 0;
	setAttr ".phl[5480]" 0;
	setAttr ".phl[5481]" 0;
	setAttr ".phl[5482]" 0;
	setAttr ".phl[5483]" 0;
	setAttr ".phl[5484]" 0;
	setAttr ".phl[5485]" 0;
	setAttr ".phl[5486]" 0;
	setAttr ".phl[5487]" 0;
	setAttr ".phl[5488]" 0;
	setAttr ".phl[5489]" 0;
	setAttr ".phl[5490]" 0;
	setAttr ".phl[5491]" 0;
	setAttr ".phl[5492]" 0;
	setAttr ".phl[5493]" 0;
	setAttr ".phl[5494]" 0;
	setAttr ".phl[5495]" 0;
	setAttr ".phl[5496]" 0;
	setAttr ".phl[5497]" 0;
	setAttr ".phl[5498]" 0;
	setAttr ".phl[5499]" 0;
	setAttr ".phl[5500]" 0;
	setAttr ".phl[5501]" 0;
	setAttr ".phl[5502]" 0;
	setAttr ".phl[5503]" 0;
	setAttr ".phl[5504]" 0;
	setAttr ".phl[5505]" 0;
	setAttr ".phl[5506]" 0;
	setAttr ".phl[5507]" 0;
	setAttr ".phl[5508]" 0;
	setAttr ".phl[5509]" 0;
	setAttr ".phl[5510]" 0;
	setAttr ".phl[5511]" 0;
	setAttr ".phl[5512]" 0;
	setAttr ".phl[5513]" 0;
	setAttr ".phl[5514]" 0;
	setAttr ".phl[5515]" 0;
	setAttr ".phl[5516]" 0;
	setAttr ".phl[5517]" 0;
	setAttr ".phl[5518]" 0;
	setAttr ".phl[5519]" 0;
	setAttr ".phl[5520]" 0;
	setAttr ".phl[5521]" 0;
	setAttr ".phl[5522]" 0;
	setAttr ".phl[5523]" 0;
	setAttr ".phl[5524]" 0;
	setAttr ".phl[5525]" 0;
	setAttr ".phl[5526]" 0;
	setAttr ".phl[5527]" 0;
	setAttr ".phl[5528]" 0;
	setAttr ".phl[5529]" 0;
	setAttr ".phl[5530]" 0;
	setAttr ".phl[5531]" 0;
	setAttr ".phl[5532]" 0;
	setAttr ".phl[5533]" 0;
	setAttr ".phl[5534]" 0;
	setAttr ".phl[5535]" 0;
	setAttr ".phl[5536]" 0;
	setAttr ".phl[5537]" 0;
	setAttr ".phl[5538]" 0;
	setAttr ".phl[5539]" 0;
	setAttr ".phl[5540]" 0;
	setAttr ".phl[5541]" 0;
	setAttr ".phl[5542]" 0;
	setAttr ".phl[5543]" 0;
	setAttr ".phl[5544]" 0;
	setAttr ".phl[5545]" 0;
	setAttr ".phl[5546]" 0;
	setAttr ".phl[5547]" 0;
	setAttr ".phl[5548]" 0;
	setAttr ".phl[5549]" 0;
	setAttr ".phl[5550]" 0;
	setAttr ".phl[5551]" 0;
	setAttr ".phl[5552]" 0;
	setAttr ".phl[5553]" 0;
	setAttr ".phl[5554]" 0;
	setAttr ".phl[5555]" 0;
	setAttr ".phl[5556]" 0;
	setAttr ".phl[5557]" 0;
	setAttr ".phl[5558]" 0;
	setAttr ".phl[5559]" 0;
	setAttr ".phl[5560]" 0;
	setAttr ".phl[5561]" 0;
	setAttr ".phl[5562]" 0;
	setAttr ".phl[5563]" 0;
	setAttr ".phl[5564]" 0;
	setAttr ".phl[5565]" 0;
	setAttr ".phl[5566]" 0;
	setAttr ".phl[5567]" 0;
	setAttr ".phl[5568]" 0;
	setAttr ".phl[5569]" 0;
	setAttr ".phl[5570]" 0;
	setAttr ".phl[5571]" 0;
	setAttr ".phl[5572]" 0;
	setAttr ".phl[5573]" 0;
	setAttr ".phl[5574]" 0;
	setAttr ".phl[5575]" 0;
	setAttr ".phl[5576]" 0;
	setAttr ".phl[5577]" 0;
	setAttr ".phl[5578]" 0;
	setAttr ".phl[5579]" 0;
	setAttr ".phl[5580]" 0;
	setAttr ".phl[5581]" 0;
	setAttr ".phl[5582]" 0;
	setAttr ".phl[5583]" 0;
	setAttr ".phl[5584]" 0;
	setAttr ".phl[5585]" 0;
	setAttr ".phl[5586]" 0;
	setAttr ".phl[5587]" 0;
	setAttr ".phl[5588]" 0;
	setAttr ".phl[5589]" 0;
	setAttr ".phl[5590]" 0;
	setAttr ".phl[5591]" 0;
	setAttr ".phl[5592]" 0;
	setAttr ".phl[5593]" 0;
	setAttr ".phl[5594]" 0;
	setAttr ".phl[5595]" 0;
	setAttr ".phl[5596]" 0;
	setAttr ".phl[5597]" 0;
	setAttr ".phl[5598]" 0;
	setAttr ".phl[5599]" 0;
	setAttr ".phl[5600]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 307
		1 Ref:head_iso "isoCollapse" "isoCollapse" " -ci 1 -min 0 -max 1 -at \"bool\""
		
		1 |Ref:engineerInfo "main" "main" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "plotted" "plotted" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "upperBodyControl" "upperBodyControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "pelvisControl" "pelvisControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "fkSpine0" "fkSpine0" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "fkSpine1" "fkSpine1" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "fkSpine2" "fkSpine2" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "fkSpine3" "fkSpine3" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "ikSpine0" "ikSpine0" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "ikSpine1" "ikSpine1" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "ikSpine2" "ikSpine2" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "ikSpine3" "ikSpine3" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "chestParent" "chestParent" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "neckControl" "neckControl" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "headControl" "headControl" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lFKshoulderControl" "lFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "lFKshoulder" "lFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lFKelbow" "lFKelbow" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lFKwrist" "lFKwrist" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lIKshoulder" "lIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lIKelbow" "lIKelbow" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lIKwrist" "lIKwrist" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lIKcontrol" "lIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lWeaponAttach" "lWeaponAttach" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "lElbowControl" "lElbowControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "lIKupLeg" "lIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lIKknee" "lIKknee" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lIKankle" "lIKankle" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lIKtoe" "lIKtoe" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lIKtoeEnd" "lIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lFKupLeg" "lFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lFKknee" "lFKknee" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lFKankle" "lFKankle" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lFKtoe" "lFKtoe" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "lKneeControl" "lKneeControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "lFootControl" "lFootControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "lToeControl" "lToeControl" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rFKshoulderControl" "rFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "rFKshoulder" "rFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rFKelbow" "rFKelbow" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rFKwrist" "rFKwrist" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rIKshoulder" "rIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rIKelbow" "rIKelbow" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rIKwrist" "rIKwrist" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rIKcontrol" "rIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rWeaponAttach" "rWeaponAttach" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "rElbowControl" "rElbowControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "rIKupLeg" "rIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rIKknee" "rIKknee" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rIKankle" "rIKankle" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rIKtoe" "rIKtoe" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rIKtoeEnd" "rIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rFKupLeg" "rFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rFKknee" "rFKknee" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rFKankle" "rFKankle" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rFKtoe" "rFKtoe" " -ci 1 -at \"message\""
		1 |Ref:engineerInfo "rKneeControl" "rKneeControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "rFootControl" "rFootControl" " -ci 1 -at \"message\""
		
		1 |Ref:engineerInfo "rToeControl" "rToeControl" " -ci 1 -at \"message\""
		1 Ref:zooRegister_zoo "zooRegzoovisman0" "zooRegzoovisman0" " -ci 1 -at \"message\""
		
		1 Ref:zooRegister_zoo "zooRegtriggerator0" "zooRegtriggerator0" " -ci 1 -at \"message\""
		
		2 "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_L|Ref:buckleTop_LShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_L|Ref:buckleTop_LShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_R|Ref:buckleTop_RShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_R|Ref:buckleTop_RShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape" "instObjGroups.objectGroups" 
		" -s 14"
		2 "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:engineerInfo|Ref:head_mesh|Ref:head_meshShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "Ref:groupParts100" "inputComponents" " -type \"componentList\" 1 \"f[0:1146]\""
		
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "instObjGroups.objectGroups" 
		" -s 10"
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "pnts" " -s 72"
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "pt[611:625]" ""
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "pt[627:635]" ""
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "pt[655:657]" ""
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "pt[675:678]" ""
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "pt[684:685]" ""
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "pt[710:713]" ""
		2 "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape" "pt[720:721]" ""
		2 "Ref:tweak30" "vl[0].vt[228:230]" " -2.65193e-006 -1.1501e-007 -2.10925e-008 -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "|Ref:engineerInfo|Ref:game_meshes|Ref:game_hands_geo" "visibility" " 1"
		
		2 "|Ref:engineerInfo|Ref:game_meshes|Ref:game_hands_geo|Ref:game_hands_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo" "overrideEnabled" " 0"
		2 "|Ref:engineerInfo" "overrideColor" " 17"
		2 "|Ref:engineerInfo|Ref:sfm_meshes|Ref:sfm_hands_geo|Ref:sfm_hands_geoShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo|Ref:lod_groups" "visibility" " 0"
		2 "|Ref:engineerInfo|Ref:lod_groups|Ref:engineer_lod_01|Ref:head_lod_01_high" 
		"visibility" " 1"
		2 "|Ref:engineerInfo|Ref:rig_extras" "visibility" " 0"
		2 "Ref:tweak30" "vlist[0].vertex" " -s 66"
		2 "Ref:tweak30" "vlist[0].vertex[214]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[215]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[216]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[217]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[218]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[219]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[220]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[221]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[222]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[223]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[224]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[225]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[228]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[229]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[241]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[242]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[243]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[244]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[270]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[271]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[306]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[354]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[357]" " -type \"float3\" 0 -2.03034e-007 0"
		
		2 "Ref:tweak30" "vlist[0].vertex[359]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[363]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[364]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[365]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[366]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[372]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[377]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[378]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[383]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[384]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[385]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[386]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[387]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[388]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[392]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[409]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[410]" " -type \"float3\" 0 -2.03034e-007 0"
		
		2 "Ref:tweak30" "vlist[0].vertex[415]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[416]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[421]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[422]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[423]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[424]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[425]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[426]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[427]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[428]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[429]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[430]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[431]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[432]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[433]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[438]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[477]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[478]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[479]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[484]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[485]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[486]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[487]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[490]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[491]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		2 "Ref:tweak30" "vlist[0].vertex[492]" " -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		3 "Ref:skinCluster30.outputGeometry[0]" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		""
		3 "Ref:groupParts137.outputGeometry" "|Ref:engineerInfo|Ref:game_meshes|Ref:game_hands_geo|Ref:game_hands_geoShape.inMesh" 
		""
		3 "Ref:skinCluster30.outputGeometry[0]" "|Ref:engineerInfo|Ref:sfm_meshes|Ref:sfm_hands_geo|Ref:sfm_hands_geoShape.inMesh" 
		""
		4 "Ref:head_iso" "isoCollapse" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[32].objectGroupId" 
		"RefRN.placeHolderList[673]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[32].objectGrpColor" 
		"RefRN.placeHolderList[674]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[33].objectGroupId" 
		"RefRN.placeHolderList[676]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[33].objectGrpColor" 
		"RefRN.placeHolderList[677]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[34].objectGroupId" 
		"RefRN.placeHolderList[679]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[34].objectGrpColor" 
		"RefRN.placeHolderList[680]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:Head:engineerHeadMesh|Ref:engineerHeadMeshShapeDeformed.instObjGroups" 
		"RefRN.placeHolderList[682]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_L|Ref:buckleTop_LShape.inMesh" 
		"RefRN.placeHolderList[1350]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_R|Ref:buckleTop_RShape.inMesh" 
		"RefRN.placeHolderList[1355]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.inMesh" 
		"RefRN.placeHolderList[1397]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_L.instObjGroups" 
		"RefRN.placeHolderList[2063]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_L|Ref:buckleTop_LShape.instObjGroups.objectGroups[13]" 
		"RefRN.placeHolderList[2064]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_L|Ref:buckleTop_LShape.instObjGroups.objectGroups[13].objectGroupId" 
		"RefRN.placeHolderList[2065]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_L|Ref:buckleTop_LShape.instObjGroups.objectGroups[13].objectGrpColor" 
		"RefRN.placeHolderList[2066]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_R.instObjGroups" 
		"RefRN.placeHolderList[2067]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_R|Ref:buckleTop_RShape.instObjGroups.objectGroups[13]" 
		"RefRN.placeHolderList[2068]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_R|Ref:buckleTop_RShape.instObjGroups.objectGroups[13].objectGroupId" 
		"RefRN.placeHolderList[2069]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:buckleTop_R|Ref:buckleTop_RShape.instObjGroups.objectGroups[13].objectGrpColor" 
		"RefRN.placeHolderList[2070]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[31]" 
		"RefRN.placeHolderList[2095]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[31].objectGroupId" 
		"RefRN.placeHolderList[2096]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[31].objectGrpColor" 
		"RefRN.placeHolderList[2097]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[33]" 
		"RefRN.placeHolderList[2098]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[34]" 
		"RefRN.placeHolderList[2099]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[35]" 
		"RefRN.placeHolderList[2100]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[35].objectGroupId" 
		"RefRN.placeHolderList[2101]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[35].objectGrpColor" 
		"RefRN.placeHolderList[2102]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[36]" 
		"RefRN.placeHolderList[2103]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[36].objectGroupId" 
		"RefRN.placeHolderList[2104]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[36].objectGrpColor" 
		"RefRN.placeHolderList[2105]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[37]" 
		"RefRN.placeHolderList[2106]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[37].objectGroupId" 
		"RefRN.placeHolderList[2107]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:engineer_mesh|Ref:engineer_meshShape.instObjGroups.objectGroups[37].objectGrpColor" 
		"RefRN.placeHolderList[2108]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:head_mesh.instObjGroups" "RefRN.placeHolderList[2112]" 
		""
		5 3 "RefRN" "Ref:groupParts81.outputGeometry" "RefRN.placeHolderList[2114]" 
		""
		5 3 "RefRN" "Ref:groupParts83.outputGeometry" "RefRN.placeHolderList[2116]" 
		""
		5 3 "RefRN" "Ref:skinCluster25.outputGeometry[0]" "RefRN.placeHolderList[2122]" 
		""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[48]" 
		"RefRN.placeHolderList[2830]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[48].objectGroupId" 
		"RefRN.placeHolderList[2831]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[48].objectGrpColor" 
		"RefRN.placeHolderList[2832]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[49]" 
		"RefRN.placeHolderList[2833]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[49].objectGroupId" 
		"RefRN.placeHolderList[2834]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[49].objectGrpColor" 
		"RefRN.placeHolderList[2835]" ""
		5 3 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[50]" 
		"RefRN.placeHolderList[2836]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[50].objectGroupId" 
		"RefRN.placeHolderList[2837]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[50].objectGrpColor" 
		"RefRN.placeHolderList[2838]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		"RefRN.placeHolderList[2839]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:boot_L|Ref:boot_LShape.instObjGroups.objectGroups[11].objectGroupId" 
		"RefRN.placeHolderList[3536]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:boot_L|Ref:boot_LShape.instObjGroups.objectGroups[11].objectGrpColor" 
		"RefRN.placeHolderList[3537]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:boot_R|Ref:boot_RShape.instObjGroups.objectGroups[11].objectGroupId" 
		"RefRN.placeHolderList[3543]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:boot_R|Ref:boot_RShape.instObjGroups.objectGroups[11].objectGrpColor" 
		"RefRN.placeHolderList[3544]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:kneepad_L|Ref:kneepad_LShape.instObjGroups.objectGroups[11].objectGroupId" 
		"RefRN.placeHolderList[3550]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:kneepad_L|Ref:kneepad_LShape.instObjGroups.objectGroups[11].objectGrpColor" 
		"RefRN.placeHolderList[3551]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:kneepad_R|Ref:kneepad_RShape.instObjGroups.objectGroups[11].objectGroupId" 
		"RefRN.placeHolderList[3557]" ""
		5 4 "RefRN" "|Ref:engineerInfo|Ref:accessories|Ref:kneepad_R|Ref:kneepad_RShape.instObjGroups.objectGroups[11].objectGrpColor" 
		"RefRN.placeHolderList[3558]" ""
		5 0 "RefRN" "Ref:groupParts137.outputGeometry" "|Ref:engineerInfo|Ref:game_meshes|Ref:game_hands_geo|Ref:game_hands_geoShape.inMesh" 
		"RefRN.placeHolderList[4246]" "RefRN.placeHolderList[4247]" "Ref:game_hands_geoShape.i"
		
		5 4 "RefRN" "|Ref:engineerInfo.main" "RefRN.placeHolderList[4248]" ""
		
		5 4 "RefRN" "|Ref:engineerInfo.plotted" "RefRN.placeHolderList[4249]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.upperBodyControl" "RefRN.placeHolderList[4250]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.pelvisControl" "RefRN.placeHolderList[4251]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.fkSpine0" "RefRN.placeHolderList[4252]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.fkSpine1" "RefRN.placeHolderList[4253]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.fkSpine2" "RefRN.placeHolderList[4254]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.fkSpine3" "RefRN.placeHolderList[4255]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.ikSpine0" "RefRN.placeHolderList[4256]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.ikSpine1" "RefRN.placeHolderList[4257]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.ikSpine2" "RefRN.placeHolderList[4258]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.ikSpine3" "RefRN.placeHolderList[4259]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.chestParent" "RefRN.placeHolderList[4260]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.neckControl" "RefRN.placeHolderList[4261]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.headControl" "RefRN.placeHolderList[4262]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFKshoulderControl" "RefRN.placeHolderList[4263]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFKshoulder" "RefRN.placeHolderList[4264]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFKelbow" "RefRN.placeHolderList[4265]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFKwrist" "RefRN.placeHolderList[4266]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKshoulder" "RefRN.placeHolderList[4267]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKelbow" "RefRN.placeHolderList[4268]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKwrist" "RefRN.placeHolderList[4269]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKcontrol" "RefRN.placeHolderList[4270]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lWeaponAttach" "RefRN.placeHolderList[4271]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lElbowControl" "RefRN.placeHolderList[4272]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKupLeg" "RefRN.placeHolderList[4273]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKknee" "RefRN.placeHolderList[4274]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKankle" "RefRN.placeHolderList[4275]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKtoe" "RefRN.placeHolderList[4276]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lIKtoeEnd" "RefRN.placeHolderList[4277]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFKupLeg" "RefRN.placeHolderList[4278]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFKknee" "RefRN.placeHolderList[4279]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFKankle" "RefRN.placeHolderList[4280]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFKtoe" "RefRN.placeHolderList[4281]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lKneeControl" "RefRN.placeHolderList[4282]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lFootControl" "RefRN.placeHolderList[4283]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.lToeControl" "RefRN.placeHolderList[4284]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFKshoulderControl" "RefRN.placeHolderList[4285]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFKshoulder" "RefRN.placeHolderList[4286]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFKelbow" "RefRN.placeHolderList[4287]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFKwrist" "RefRN.placeHolderList[4288]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKshoulder" "RefRN.placeHolderList[4289]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKelbow" "RefRN.placeHolderList[4290]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKwrist" "RefRN.placeHolderList[4291]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKcontrol" "RefRN.placeHolderList[4292]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rWeaponAttach" "RefRN.placeHolderList[4293]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rElbowControl" "RefRN.placeHolderList[4294]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKupLeg" "RefRN.placeHolderList[4295]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKknee" "RefRN.placeHolderList[4296]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKankle" "RefRN.placeHolderList[4297]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKtoe" "RefRN.placeHolderList[4298]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rIKtoeEnd" "RefRN.placeHolderList[4299]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFKupLeg" "RefRN.placeHolderList[4300]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFKknee" "RefRN.placeHolderList[4301]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFKankle" "RefRN.placeHolderList[4302]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFKtoe" "RefRN.placeHolderList[4303]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rKneeControl" "RefRN.placeHolderList[4304]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rFootControl" "RefRN.placeHolderList[4305]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo.rToeControl" "RefRN.placeHolderList[4306]" 
		""
		5 0 "RefRN" "Ref:skinCluster30.outputGeometry[0]" "|Ref:engineerInfo|Ref:sfm_meshes|Ref:sfm_hands_geo|Ref:sfm_hands_geoShape.inMesh" 
		"RefRN.placeHolderList[4936]" "RefRN.placeHolderList[4937]" "Ref:sfm_hands_geoShape.i"
		
		5 4 "RefRN" "Ref:head_iso.dagSetMembers" "RefRN.placeHolderList[4938]" 
		""
		5 4 "RefRN" "Ref:head_iso.dagSetMembers" "RefRN.placeHolderList[4939]" 
		""
		5 4 "RefRN" "Ref:legs_iso.dagSetMembers" "RefRN.placeHolderList[4940]" 
		""
		5 4 "RefRN" "Ref:legs_iso.dagSetMembers" "RefRN.placeHolderList[4941]" 
		""
		5 4 "RefRN" "Ref:legs_iso.dagSetMembers" "RefRN.placeHolderList[4942]" 
		""
		5 4 "RefRN" "Ref:legs_iso.dagSetMembers" "RefRN.placeHolderList[4943]" 
		""
		5 4 "RefRN" "Ref:legs_iso.dagSetMembers" "RefRN.placeHolderList[4944]" 
		""
		5 4 "RefRN" "Ref:legs_iso.dagSetMembers" "RefRN.placeHolderList[4945]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4946]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4947]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4948]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4949]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4950]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4951]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4952]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4953]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4954]" 
		""
		5 4 "RefRN" "Ref:arms_iso.dagSetMembers" "RefRN.placeHolderList[4955]" 
		""
		5 4 "RefRN" "Ref:hands_iso.dagSetMembers" "RefRN.placeHolderList[4956]" 
		""
		5 4 "RefRN" "Ref:hands_iso.dagSetMembers" "RefRN.placeHolderList[4957]" 
		""
		5 4 "RefRN" "Ref:hands_iso.dagSetMembers" "RefRN.placeHolderList[4958]" 
		""
		5 4 "RefRN" "Ref:hands_iso.dagSetMembers" "RefRN.placeHolderList[4959]" 
		""
		5 4 "RefRN" "Ref:hands_iso.dagSetMembers" "RefRN.placeHolderList[4960]" 
		""
		5 4 "RefRN" "Ref:hands_iso.dagSetMembers" "RefRN.placeHolderList[4961]" 
		""
		5 0 "RefRN" "|Ref:engineerInfo|Ref:bip_pelvis|Ref:prp_pouch.instObjGroups" 
		"Ref:torso_iso.dagSetMembers" "RefRN.placeHolderList[4962]" "RefRN.placeHolderList[4963]" 
		""
		5 0 "RefRN" "|Ref:engineerInfo|Ref:bip_pelvis|Ref:prp_legPouch.instObjGroups" 
		"Ref:torso_iso.dagSetMembers" "RefRN.placeHolderList[4964]" "RefRN.placeHolderList[4965]" 
		""
		5 4 "RefRN" "Ref:torso_iso.dagSetMembers" "RefRN.placeHolderList[4966]" 
		""
		5 4 "RefRN" "Ref:torso_iso.dagSetMembers" "RefRN.placeHolderList[4967]" 
		""
		5 4 "RefRN" "Ref:torso_iso.dagSetMembers" "RefRN.placeHolderList[4968]" 
		""
		5 4 "RefRN" "Ref:torso_iso.dagSetMembers" "RefRN.placeHolderList[4969]" 
		""
		5 4 "RefRN" "Ref:torso_iso.dagSetMembers" "RefRN.placeHolderList[4970]" 
		""
		5 1 "RefRN" "Ref:skinCluster30.outputGeometry[0]" "RefRN.placeHolderList[4971]" 
		"Ref:sfm_hands_geoShape.i"
		"Ref:HeadRN" 0
		"RefRN" 709
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:engineerInfo_group|Ref:bip_pelvis" 
		"-s -r "
		2 "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L|Ref:bip_toeEnd_L" 
		"translate" " -type \"double3\" 0.0818442 -2.707611 0.00100847"
		2 "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:prp_cord" "translate" " -type \"double3\" -8.715168 -0.10091 0.663601"
		
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:boot_L|Ref:boot_LShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:boot_R|Ref:boot_RShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:kneepad_L|Ref:kneepad_LShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:kneepad_R|Ref:kneepad_RShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:beltBuckle|Ref:beltBuckleShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:pouch_L" "visibility" 
		" 1"
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:pouch_L|Ref:pouch_LShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:pouch_R|Ref:pouch_RShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug01|Ref:extensionCord_plug0Shape1" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug02|Ref:extensionCord_plug0Shape2" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug|Ref:extensionCord_plugShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord|Ref:extensionCordShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:buckles_mesh|Ref:buckles_meshShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:straps_mesh|Ref:straps_meshShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:eng_body_mesh|Ref:eng_body_meshShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:undershirt_mesh|Ref:undershirt_meshShape" 
		"uvSet" " -s 2"
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:undershirt_mesh|Ref:undershirt_meshShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"engineer_headUVs\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:undershirt_mesh|Ref:undershirt_meshShape" 
		"uvSet[1].uvSetName" " -type \"string\" \"engineer_mouthUVs\""
		2 "|Ref:engineerInfo_group|Ref:meshes|Ref:head_skinning|Ref:head_skinningShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:engineerInfo_group|Ref:game_meshes" "visibility" " 1"
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:skeleton_layer" "displayType" " 2"
		2 "Ref:skeleton_layer" "visibility" " 1"
		2 "Ref:tweak8" "vl[0].vt[0:5]" " -s 6 -type \"float3\" -2.65193e-006 -1.1501e-007 -2.10925e-008 -2.65193e-006 -1.1501e-007 -2.10925e-008 -2.65193e-006 -1.1501e-007 -2.10925e-008 -2.65193e-006 -1.1501e-007 -2.10925e-008 -2.65193e-006 -1.1501e-007 -2.10925e-008 -2.65193e-006 -1.1501e-007 -2.10925e-008"
		
		3 "Ref:groupParts82.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:boot_L|Ref:boot_LShape.inMesh" 
		""
		3 "Ref:skinCluster24.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:undershirt_mesh|Ref:undershirt_meshShape.inMesh" 
		""
		3 "Ref:skinCluster20.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:straps_mesh|Ref:straps_meshShape.inMesh" 
		""
		3 "Ref:groupParts84.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:kneepad_L|Ref:kneepad_LShape.inMesh" 
		""
		3 "Ref:skinCluster26.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:buckles_mesh|Ref:buckles_meshShape.inMesh" 
		""
		3 "Ref:groupParts92.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug02|Ref:extensionCord_plug0Shape2.inMesh" 
		""
		3 "Ref:groupParts87.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:boot_R|Ref:boot_RShape.inMesh" 
		""
		3 "Ref:groupParts88.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:pouch_L|Ref:pouch_LShape.inMesh" 
		""
		3 "Ref:skinCluster31.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:eng_body_mesh|Ref:eng_body_meshShape.inMesh" 
		""
		3 "Ref:skinCluster4.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug|Ref:extensionCord_plugShape.inMesh" 
		""
		3 "Ref:skinCluster27.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:head_skinning|Ref:head_skinningShape.inMesh" 
		""
		3 "Ref:groupParts91.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord|Ref:extensionCordShape.inMesh" 
		""
		3 "Ref:groupParts86.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:kneepad_R|Ref:kneepad_RShape.inMesh" 
		""
		3 "Ref:groupParts89.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:pouch_R|Ref:pouch_RShape.inMesh" 
		""
		3 "Ref:groupParts85.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:beltBuckle|Ref:beltBuckleShape.inMesh" 
		""
		3 "Ref:groupParts90.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug01|Ref:extensionCord_plug0Shape1.inMesh" 
		""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[4972]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[4973]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[4974]" 
		""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[4975]" 
		""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.rotatePivotTranslate" 
		"RefRN.placeHolderList[4976]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[4977]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[4978]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[4979]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[4980]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[4981]" 
		""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[4982]" 
		""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[4983]" 
		""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateX" 
		"RefRN.placeHolderList[4984]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateY" 
		"RefRN.placeHolderList[4985]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" 
		"RefRN.placeHolderList[4986]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" 
		"RefRN.placeHolderList[4987]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[4988]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" 
		"RefRN.placeHolderList[4989]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" 
		"RefRN.placeHolderList[4990]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" 
		"RefRN.placeHolderList[4991]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" 
		"RefRN.placeHolderList[4992]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" 
		"RefRN.placeHolderList[4993]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[4994]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[4995]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[4996]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[4997]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[4998]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[4999]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[5000]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[5001]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[5002]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[5003]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[5004]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[5005]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[5006]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[5007]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[5008]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[5009]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[5010]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[5011]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[5012]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[5013]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[5014]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[5015]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[5016]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[5017]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[5018]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[5019]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[5020]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[5021]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[5022]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[5023]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[5024]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[5025]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[5026]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[5027]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[5028]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[5029]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[5030]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[5031]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[5032]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[5033]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[5034]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[5035]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[5036]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[5037]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[5038]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[5039]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[5040]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[5041]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[5042]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[5043]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[5044]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[5045]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[5046]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[5047]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[5048]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[5049]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[5050]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[5051]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[5052]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[5053]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[5054]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[5055]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[5056]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[5057]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5058]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[5059]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[5060]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[5061]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[5062]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[5063]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[5064]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5065]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.message" 
		"RefRN.placeHolderList[5066]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[5067]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[5068]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[5069]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[5070]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5071]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5072]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[5073]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[5074]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[5075]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[5076]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[5077]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[5078]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[5079]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5080]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.message" 
		"RefRN.placeHolderList[5081]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.translate" 
		"RefRN.placeHolderList[5082]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotatePivot" 
		"RefRN.placeHolderList[5083]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5084]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[5085]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[5086]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[5087]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[5088]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[5089]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[5090]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[5091]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[5092]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[5093]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[5094]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5095]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.message" 
		"RefRN.placeHolderList[5096]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[5097]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[5098]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5099]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[5100]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[5101]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[5102]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[5103]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[5104]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[5105]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5106]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[5107]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[5108]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[5109]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[5110]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5111]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[5112]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[5113]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[5114]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[5115]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[5116]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5117]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[5118]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[5119]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[5120]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[5121]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5122]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[5123]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[5124]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[5125]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[5126]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[5127]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5128]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[5129]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[5130]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[5131]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[5132]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5133]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[5134]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[5135]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[5136]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[5137]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[5138]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5139]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[5140]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[5141]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[5142]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[5143]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5144]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[5145]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[5146]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[5147]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[5148]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[5149]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5150]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[5151]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[5152]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[5153]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[5154]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5155]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[5156]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[5157]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[5158]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[5159]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[5160]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5161]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[5162]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[5163]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[5164]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[5165]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5166]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[5167]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[5168]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[5169]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[5170]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[5171]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5172]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[5173]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[5174]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[5175]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[5176]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5177]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[5178]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[5179]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[5180]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[5181]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[5182]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5183]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[5184]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[5185]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[5186]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[5187]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5188]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[5189]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[5190]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[5191]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[5192]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[5193]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5194]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[5195]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[5196]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[5197]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[5198]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5199]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[5200]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[5201]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[5202]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[5203]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[5204]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5205]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[5206]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[5207]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[5208]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[5209]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5210]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[5211]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[5212]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[5213]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[5214]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[5215]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5216]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[5217]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[5218]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[5219]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[5220]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5221]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[5222]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[5223]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[5224]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[5225]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[5226]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5227]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[5228]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[5229]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[5230]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[5231]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5232]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[5233]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[5234]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[5235]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[5236]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[5237]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5238]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[5239]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[5240]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[5241]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[5242]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5243]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[5244]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[5245]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[5246]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[5247]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[5248]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5249]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[5250]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[5251]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[5252]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[5253]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5254]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[5255]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[5256]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[5257]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[5258]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[5259]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5260]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[5261]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[5262]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[5263]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[5264]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5265]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[5266]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[5267]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[5268]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[5269]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[5270]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5271]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[5272]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[5273]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5274]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[5275]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[5276]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[5277]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[5278]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[5279]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[5280]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5281]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.message" 
		"RefRN.placeHolderList[5282]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[5283]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[5284]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[5285]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[5286]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5287]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5288]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[5289]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[5290]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[5291]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[5292]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[5293]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[5294]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[5295]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5296]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.message" 
		"RefRN.placeHolderList[5297]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.translate" 
		"RefRN.placeHolderList[5298]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotatePivot" 
		"RefRN.placeHolderList[5299]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5300]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[5301]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[5302]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[5303]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[5304]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[5305]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[5306]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[5307]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[5308]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[5309]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[5310]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5311]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[5312]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[5313]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[5314]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.message" 
		"RefRN.placeHolderList[5315]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[5316]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[5317]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5318]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[5319]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[5320]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[5321]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5322]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[5323]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[5324]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[5325]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[5326]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5327]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[5328]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[5329]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[5330]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[5331]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[5332]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5333]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[5334]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[5335]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[5336]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[5337]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5338]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[5339]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[5340]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[5341]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[5342]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[5343]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5344]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[5345]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[5346]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[5347]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[5348]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5349]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[5350]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[5351]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[5352]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[5353]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[5354]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5355]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[5356]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[5357]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[5358]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[5359]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5360]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[5361]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[5362]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[5363]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[5364]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[5365]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5366]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[5367]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[5368]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[5369]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[5370]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5371]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[5372]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[5373]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[5374]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[5375]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[5376]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5377]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[5378]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[5379]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[5380]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[5381]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5382]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[5383]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[5384]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[5385]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[5386]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[5387]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5388]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[5389]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[5390]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[5391]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[5392]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5393]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[5394]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[5395]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[5396]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[5397]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[5398]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5399]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[5400]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[5401]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[5402]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[5403]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5404]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[5405]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[5406]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[5407]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[5408]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[5409]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5410]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[5411]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[5412]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[5413]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[5414]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5415]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[5416]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[5417]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[5418]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[5419]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[5420]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5421]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[5422]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[5423]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[5424]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[5425]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5426]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[5427]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[5428]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[5429]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[5430]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[5431]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5432]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[5433]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[5434]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[5435]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[5436]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5437]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[5438]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[5439]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[5440]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[5441]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[5442]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5443]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[5444]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[5445]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[5446]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[5447]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5448]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[5449]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[5450]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[5451]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[5452]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[5453]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5454]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[5455]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[5456]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[5457]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[5458]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5459]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[5460]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[5461]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[5462]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[5463]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[5464]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5465]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[5466]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[5467]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[5468]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[5469]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5470]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[5471]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[5472]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[5473]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[5474]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[5475]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5476]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[5477]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[5478]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[5479]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[5480]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5481]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[5482]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[5483]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[5484]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[5485]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[5486]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5487]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.message" 
		"RefRN.placeHolderList[5488]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[5489]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[5490]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[5491]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[5492]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5493]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5494]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" 
		"RefRN.placeHolderList[5495]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" 
		"RefRN.placeHolderList[5496]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" 
		"RefRN.placeHolderList[5497]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" 
		"RefRN.placeHolderList[5498]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[5499]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[5500]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" 
		"RefRN.placeHolderList[5501]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5502]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.message" 
		"RefRN.placeHolderList[5503]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[5504]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[5505]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[5506]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[5507]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[5508]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5509]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.translate" 
		"RefRN.placeHolderList[5510]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotatePivot" 
		"RefRN.placeHolderList[5511]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[5512]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentMatrix" 
		"RefRN.placeHolderList[5513]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.message" 
		"RefRN.placeHolderList[5514]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[5515]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[5516]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[5517]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[5518]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[5519]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5520]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[5521]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[5522]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[5523]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[5524]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[5525]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5526]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.message" 
		"RefRN.placeHolderList[5527]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[5528]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[5529]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[5530]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[5531]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5532]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5533]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" 
		"RefRN.placeHolderList[5534]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" 
		"RefRN.placeHolderList[5535]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" 
		"RefRN.placeHolderList[5536]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" 
		"RefRN.placeHolderList[5537]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[5538]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[5539]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" 
		"RefRN.placeHolderList[5540]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5541]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.message" 
		"RefRN.placeHolderList[5542]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[5543]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[5544]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[5545]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[5546]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[5547]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5548]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.translate" 
		"RefRN.placeHolderList[5549]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotatePivot" 
		"RefRN.placeHolderList[5550]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[5551]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentMatrix" 
		"RefRN.placeHolderList[5552]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.message" 
		"RefRN.placeHolderList[5553]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[5554]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[5555]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[5556]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[5557]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[5558]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5559]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[5560]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[5561]" ""
		5 4 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[5562]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[5563]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[5564]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5565]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:prp_cord.instObjGroups" 
		"RefRN.placeHolderList[5566]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:prp_pouch.instObjGroups" 
		"RefRN.placeHolderList[5567]" ""
		5 3 "RefRN" "|Ref:engineerInfo_group|Ref:bip_pelvis|Ref:prp_legPouch.instObjGroups" 
		"RefRN.placeHolderList[5568]" ""
		5 0 "RefRN" "Ref:groupParts82.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:boot_L|Ref:boot_LShape.inMesh" 
		"RefRN.placeHolderList[5569]" "RefRN.placeHolderList[5570]" "Ref:boot_LShape.i"
		5 0 "RefRN" "Ref:groupParts87.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:boot_R|Ref:boot_RShape.inMesh" 
		"RefRN.placeHolderList[5571]" "RefRN.placeHolderList[5572]" "Ref:boot_RShape.i"
		5 0 "RefRN" "Ref:groupParts84.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:kneepad_L|Ref:kneepad_LShape.inMesh" 
		"RefRN.placeHolderList[5573]" "RefRN.placeHolderList[5574]" "Ref:kneepad_LShape.i"
		
		5 0 "RefRN" "Ref:groupParts86.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:kneepad_R|Ref:kneepad_RShape.inMesh" 
		"RefRN.placeHolderList[5575]" "RefRN.placeHolderList[5576]" "Ref:kneepad_RShape.i"
		
		5 0 "RefRN" "Ref:groupParts85.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:beltBuckle|Ref:beltBuckleShape.inMesh" 
		"RefRN.placeHolderList[5577]" "RefRN.placeHolderList[5578]" "Ref:beltBuckleShape.i"
		
		5 0 "RefRN" "Ref:groupParts88.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:pouch_L|Ref:pouch_LShape.inMesh" 
		"RefRN.placeHolderList[5579]" "RefRN.placeHolderList[5580]" "Ref:pouch_LShape.i"
		5 0 "RefRN" "Ref:groupParts89.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:pouch_R|Ref:pouch_RShape.inMesh" 
		"RefRN.placeHolderList[5581]" "RefRN.placeHolderList[5582]" "Ref:pouch_RShape.i"
		5 0 "RefRN" "Ref:groupParts90.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug01|Ref:extensionCord_plug0Shape1.inMesh" 
		"RefRN.placeHolderList[5583]" "RefRN.placeHolderList[5584]" "Ref:extensionCord_plug0Shape1.i"
		
		5 0 "RefRN" "Ref:groupParts92.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug02|Ref:extensionCord_plug0Shape2.inMesh" 
		"RefRN.placeHolderList[5585]" "RefRN.placeHolderList[5586]" "Ref:extensionCord_plug0Shape2.i"
		
		5 0 "RefRN" "Ref:skinCluster4.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord_plug|Ref:extensionCord_plugShape.inMesh" 
		"RefRN.placeHolderList[5587]" "RefRN.placeHolderList[5588]" "Ref:extensionCord_plugShape.i"
		
		5 0 "RefRN" "Ref:groupParts91.outputGeometry" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:extensionCord|Ref:extensionCordShape.inMesh" 
		"RefRN.placeHolderList[5589]" "RefRN.placeHolderList[5590]" "Ref:extensionCordShape.i"
		
		5 0 "RefRN" "Ref:skinCluster26.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:buckles_mesh|Ref:buckles_meshShape.inMesh" 
		"RefRN.placeHolderList[5591]" "RefRN.placeHolderList[5592]" "Ref:buckles_meshShape.i"
		
		5 0 "RefRN" "Ref:skinCluster20.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:accessories|Ref:straps_mesh|Ref:straps_meshShape.inMesh" 
		"RefRN.placeHolderList[5593]" "RefRN.placeHolderList[5594]" "Ref:straps_meshShape.i"
		
		5 0 "RefRN" "Ref:skinCluster31.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:eng_body_mesh|Ref:eng_body_meshShape.inMesh" 
		"RefRN.placeHolderList[5595]" "RefRN.placeHolderList[5596]" "Ref:eng_body_meshShape.i"
		
		5 0 "RefRN" "Ref:skinCluster24.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:undershirt_mesh|Ref:undershirt_meshShape.inMesh" 
		"RefRN.placeHolderList[5597]" "RefRN.placeHolderList[5598]" "Ref:undershirt_meshShape.i"
		
		5 0 "RefRN" "Ref:skinCluster27.outputGeometry[0]" "|Ref:engineerInfo_group|Ref:meshes|Ref:head_skinning|Ref:head_skinningShape.inMesh" 
		"RefRN.placeHolderList[5599]" "RefRN.placeHolderList[5600]" "Ref:head_skinningShape.i";
lockNode -l 1 ;
createNode ikRPsolver -n "ikRPsolver";
createNode ikSplineSolver -n "ikSplineSolver";
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	setAttr ".ihi" 0;
	setAttr -s 38 ".dsm";
	setAttr -s 2 ".dnsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode expression -n "FKspineExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "FKspineExp1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "FKspineExp2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "FKspineExp3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_spine_0FKcontrolvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==1)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode makeNurbCylinder -n "makeNurbCylinder1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 15;
	setAttr ".hr" 0.2;
createNode expression -n "ikChestvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.82307024003037355 -0.56793959183732146 0
		 0 0.56793959183732146 -0.82307024003037355 0 0 62.678758619832891 -3.5631664854606759 1;
createNode expression -n "SpineCurvevisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode cluster -n "ikChestClusterCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak1";
createNode objectSet -n "cluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[2:3]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "ikPelvisClusterCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode curveInfo -n "curveInfo1";
createNode expression -n "stretchyBack";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.58096811";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.58096811";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.58096811";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.58096811";
createNode expression -n "ikSpineTwist";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0] ;\n";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "fkParent";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "neckControlLockParentlock";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "headControlLockParentlock";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "Ref:bip_upperArm_LFKswtichExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_lowerArm_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_upperArm_LFKvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if( .I[0]==1 )\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "likHandControllockExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "likHandControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "lElbowControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion6";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion7";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion9";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion10";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion11";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion12";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion13";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion15";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion16";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion17";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "fkParent1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_hip_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_knee_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_foot_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_toe_LFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_hip_LFKvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==1)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "lkneeControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode unitConversion -n "unitConversion18";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion19";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion20";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion21";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion22";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "lrockLexp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = -1 * .I[0]\n";
createNode unitConversion -n "unitConversion23";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion24";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "lFootControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "lToeControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "Ref:bip_upperArm_RFKswtichExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_lowerArm_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_upperArm_RFKvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if( .I[0]==1 )\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "rikHandControllockExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "rikHandControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "rElbowControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode unitConversion -n "unitConversion25";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion26";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion27";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion29";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion30";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion31";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion32";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion35";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion36";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion37";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion38";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion39";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "fkParent2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_hip_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_knee_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_foot_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_toe_RFKswitchExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "Ref:bip_hip_RFKvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==1)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "rkneeControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode unitConversion -n "unitConversion40";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion41";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion42";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion43";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion44";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "rrockLexp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = -1 * .I[0]\n";
createNode unitConversion -n "unitConversion45";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion46";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "rFootControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode expression -n "rToeControlvisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode condition -n "switch_bip_upperArm_LFK_to_space_0";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_LFK_to_space_1";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_LFK_to_space_2";
	setAttr ".st" 2;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_LFK_to_space_3";
	setAttr ".st" 3;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_RFK_to_space_0";
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_RFK_to_space_1";
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_RFK_to_space_2";
	setAttr ".st" 2;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode condition -n "switch_bip_upperArm_RFK_to_space_3";
	setAttr ".st" 3;
	setAttr ".ct" -type "float3" 1 1 1 ;
	setAttr ".cf" -type "float3" 0 0 0 ;
createNode objectSet -n "hands_L";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "hands_R";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode objectSet -n "Engy";
	addAttr -ci true -sn "version" -ln "version" -at "long";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "bgImage" -ln "bgImage" -dt "string";
	addAttr -ci true -sn "bgColour" -ln "bgColour" -dt "string";
	addAttr -ci true -sn "filepath" -ln "filepath" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 85 ".dnsm";
	setAttr ".an" -type "string" "zooPickerCharacter";
	setAttr ".name" -type "string" "Engy";
	setAttr ".bgImage" -type "string" "pickerGrid.bmp";
	setAttr ".bgColour" -type "string" "0,0,0";
lockNode -l 1 ;
createNode objectSet -n "COG";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "106,156;40,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "COG";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "118,134;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker2";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "118,115;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker3";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "118,96;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker4";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "118,77;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker5";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "118,58;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker6";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "119,39;12,12";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Head";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "104,19;40,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "Head";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker7";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "76,43;30,14";
	setAttr ".colour" -type "string" "0.402000010014,0.402000010014,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker8";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "142,43;30,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "ik";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "76,139;16,16";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "ik";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "likHandControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "158,139;16,16";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "ik";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker9";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "77,62;14,14";
	setAttr ".colour" -type "string" "0.402000010014,0.402000010014,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker10";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "77,82;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker11";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "77,101;14,14";
	setAttr ".colour" -type "string" "0.402000010014,0.402000010014,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker12";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "158,64;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker13";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "158,83;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker14";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "158,102;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker15";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "77,119;14,14";
	setAttr ".colour" -type "string" "0.402000010014,0.402000010014,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker16";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "158,120;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker17";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "57,132;10,10";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker18";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "181,132;10,10";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "hips";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "106,177;39,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "hips";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker19";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "89,200;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker20";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "89,219;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker21";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "89,238;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker22";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "89,257;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker23";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "89,276;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker24";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "149,199;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker25";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "149,218;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker26";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "149,237;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker27";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "149,256;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker28";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "149,275;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "MAIN";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "107,307;35,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "MAIN";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker29";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "49,233;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker30";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "189,232;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "IK";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "49,279;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "IK";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker31";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "49,298;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "IK1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "188,278;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "IK";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker32";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "188,297;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker33";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "47,95;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker34";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "189,94;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker35";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "97,340;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker36";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "97,359;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker37";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "97,378;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker38";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "97,397;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker39";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "75,329;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker40";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "56,329;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker41";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "36,329;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker42";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "15,330;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker43";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "15,349;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker44";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "15,368;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker45";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "15,387;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker46";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "36,348;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker47";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "36,367;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker48";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "36,386;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker49";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "56,348;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker50";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "56,367;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker51";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "56,386;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker52";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "75,348;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker53";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "75,367;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker54";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "75,386;14,14";
	setAttr ".colour" -type "string" "0.399999976158,0.399999976158,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker55";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "138,340;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker56";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "159,329;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker57";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "178,329;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker58";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "197,328;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker59";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "217,328;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker60";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "138,359;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker61";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "138,378;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker62";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "138,397;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker63";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "159,348;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker64";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "159,367;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker65";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "159,386;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker66";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "178,348;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker67";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "178,367;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker68";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "178,386;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker69";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "197,347;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker70";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "197,366;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker71";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "197,385;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker72";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "217,347;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker73";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "217,366;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker74";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "217,385;14,14";
	setAttr ".colour" -type "string" "1.0,0.337000012398,0.337000012398";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "cord";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "22,159;43,14";
	setAttr ".colour" -type "string" "0.800000011921,0.800000011921,0.800000011921";
	setAttr ".label" -type "string" "cord";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "pouch";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "20,178;50,14";
	setAttr ".colour" -type "string" "0.800000011921,0.800000011921,0.800000011921";
	setAttr ".label" -type "string" "pouch";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "pouch2";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "19,196;53,14";
	setAttr ".colour" -type "string" "0.800000011921,0.800000011921,0.800000011921";
	setAttr ".label" -type "string" "pouch2";
	setAttr ".cmdStr" -type "string" "";
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
	setAttr -s 5 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 72 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 6 ".gn";
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
	setAttr -s 4 ".s";
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
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
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
select -ne :hyperGraphLayout;
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[4972]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[4973]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[4974]";
connectAttr "RefRN.phl[4975]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[4976]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[4977]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "RefRN.phl[4978]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[4979]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[4980]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[4981]";
connectAttr "RefRN.phl[4982]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[4983]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[4984]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[4985]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[4986]";
connectAttr "RefRN.phl[4987]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[4988]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[4989]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[4990]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[4991]";
connectAttr "RefRN.phl[4992]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[4993]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[4994]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[4995]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[4996]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[4997]";
connectAttr "RefRN.phl[4998]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[4999]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[5000]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[5001]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[5002]";
connectAttr "RefRN.phl[5003]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[5004]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[5005]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[5006]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[5007]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[5008]";
connectAttr "RefRN.phl[5009]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[5010]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[5011]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[5012]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[5013]";
connectAttr "RefRN.phl[5014]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[5015]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[5016]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[5017]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[5018]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[5019]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[5020]";
connectAttr "RefRN.phl[5021]" "neckControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[5022]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[5023]" "neckControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "RefRN.phl[5024]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[5025]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[5026]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[5027]";
connectAttr "RefRN.phl[5028]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[5029]" "neckControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[5030]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[5031]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "RefRN.phl[5032]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5033]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5034]" "headControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[5035]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5036]" "headControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "RefRN.phl[5037]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[5038]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[5039]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[5040]";
connectAttr "RefRN.phl[5041]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[5042]" "headControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[5043]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5044]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[5045]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "RefRN.phl[5046]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5047]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5048]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[5049]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[5050]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[5051]";
connectAttr "RefRN.phl[5052]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[5053]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5054]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[5055]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "RefRN.phl[5056]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5057]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5058]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[5059]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[5060]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[5061]";
connectAttr "RefRN.phl[5062]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5063]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5064]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5065]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5066]" "lElbowControl.zooTrig1";
connectAttr "RefRN.phl[5067]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5068]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5069]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5070]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5071]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5072]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[5073]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[5074]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[5075]";
connectAttr "RefRN.phl[5076]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5077]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5078]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5079]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5080]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5081]" "lElbowControl.zooTrig2";
connectAttr "RefRN.phl[5082]" "null1_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5083]" "null1_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5084]" "null1_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5085]" "null1_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5086]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5087]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[5088]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[5089]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[5090]";
connectAttr "RefRN.phl[5091]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[5092]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5093]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[5094]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5095]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5096]" "lElbowControl.zooTrig3";
connectAttr "RefRN.phl[5097]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5098]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5099]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5100]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[5101]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[5102]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[5103]";
connectAttr "RefRN.phl[5104]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5105]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5106]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[5107]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[5108]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[5109]";
connectAttr "RefRN.phl[5110]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5111]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[5112]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[5113]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[5114]";
connectAttr "RefRN.phl[5115]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5116]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5117]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[5118]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[5119]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[5120]";
connectAttr "RefRN.phl[5121]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5122]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[5123]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[5124]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[5125]";
connectAttr "RefRN.phl[5126]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5127]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5128]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[5129]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[5130]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[5131]";
connectAttr "RefRN.phl[5132]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5133]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[5134]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[5135]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[5136]";
connectAttr "RefRN.phl[5137]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5138]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5139]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[5140]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[5141]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[5142]";
connectAttr "RefRN.phl[5143]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5144]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[5145]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[5146]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[5147]";
connectAttr "RefRN.phl[5148]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5149]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5150]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[5151]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[5152]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[5153]";
connectAttr "RefRN.phl[5154]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5155]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[5156]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[5157]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[5158]";
connectAttr "RefRN.phl[5159]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5160]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5161]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[5162]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[5163]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[5164]";
connectAttr "RefRN.phl[5165]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5166]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[5167]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[5168]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[5169]";
connectAttr "RefRN.phl[5170]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5171]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5172]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[5173]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[5174]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[5175]";
connectAttr "RefRN.phl[5176]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5177]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[5178]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[5179]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[5180]";
connectAttr "RefRN.phl[5181]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5182]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5183]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[5184]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[5185]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[5186]";
connectAttr "RefRN.phl[5187]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5188]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[5189]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[5190]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[5191]";
connectAttr "RefRN.phl[5192]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5193]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5194]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[5195]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[5196]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[5197]";
connectAttr "RefRN.phl[5198]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5199]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[5200]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[5201]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[5202]";
connectAttr "RefRN.phl[5203]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5204]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5205]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[5206]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[5207]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[5208]";
connectAttr "RefRN.phl[5209]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5210]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[5211]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[5212]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[5213]";
connectAttr "RefRN.phl[5214]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5215]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5216]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[5217]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[5218]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[5219]";
connectAttr "RefRN.phl[5220]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5221]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[5222]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[5223]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[5224]";
connectAttr "RefRN.phl[5225]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5226]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5227]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[5228]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[5229]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[5230]";
connectAttr "RefRN.phl[5231]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5232]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[5233]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[5234]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[5235]";
connectAttr "RefRN.phl[5236]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5237]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5238]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[5239]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[5240]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[5241]";
connectAttr "RefRN.phl[5242]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5243]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[5244]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[5245]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[5246]";
connectAttr "RefRN.phl[5247]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5248]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5249]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[5250]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[5251]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[5252]";
connectAttr "RefRN.phl[5253]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5254]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[5255]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[5256]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[5257]";
connectAttr "RefRN.phl[5258]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5259]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5260]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[5261]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[5262]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[5263]";
connectAttr "RefRN.phl[5264]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[5265]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[5266]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[5267]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[5268]";
connectAttr "RefRN.phl[5269]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[5270]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[5271]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[5272]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5273]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5274]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[5275]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[5276]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[5277]";
connectAttr "RefRN.phl[5278]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5279]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5280]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5281]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[5282]" "rElbowControl.zooTrig1";
connectAttr "RefRN.phl[5283]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5284]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5285]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5286]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5287]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5288]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[5289]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[5290]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[5291]";
connectAttr "RefRN.phl[5292]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5293]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5294]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5295]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5296]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[5297]" "rElbowControl.zooTrig2";
connectAttr "RefRN.phl[5298]" "null2_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5299]" "null2_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5300]" "null2_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5301]" "null2_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5302]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5303]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[5304]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[5305]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[5306]";
connectAttr "RefRN.phl[5307]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[5308]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5309]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[5310]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5311]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[5312]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[5313]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[5314]";
connectAttr "RefRN.phl[5315]" "rElbowControl.zooTrig3";
connectAttr "RefRN.phl[5316]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5317]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5318]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5319]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5320]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5321]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5322]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[5323]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[5324]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[5325]";
connectAttr "RefRN.phl[5326]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5327]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[5328]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[5329]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[5330]";
connectAttr "RefRN.phl[5331]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5332]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5333]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[5334]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[5335]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[5336]";
connectAttr "RefRN.phl[5337]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5338]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[5339]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[5340]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[5341]";
connectAttr "RefRN.phl[5342]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5343]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5344]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[5345]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[5346]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[5347]";
connectAttr "RefRN.phl[5348]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5349]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[5350]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[5351]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[5352]";
connectAttr "RefRN.phl[5353]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5354]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5355]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[5356]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[5357]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[5358]";
connectAttr "RefRN.phl[5359]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5360]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[5361]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[5362]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[5363]";
connectAttr "RefRN.phl[5364]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5365]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5366]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[5367]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[5368]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[5369]";
connectAttr "RefRN.phl[5370]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5371]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[5372]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[5373]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[5374]";
connectAttr "RefRN.phl[5375]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5376]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5377]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[5378]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[5379]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[5380]";
connectAttr "RefRN.phl[5381]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5382]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[5383]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[5384]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[5385]";
connectAttr "RefRN.phl[5386]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5387]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5388]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[5389]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[5390]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[5391]";
connectAttr "RefRN.phl[5392]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5393]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[5394]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[5395]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[5396]";
connectAttr "RefRN.phl[5397]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5398]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5399]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[5400]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[5401]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[5402]";
connectAttr "RefRN.phl[5403]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5404]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[5405]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[5406]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[5407]";
connectAttr "RefRN.phl[5408]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5409]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5410]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[5411]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[5412]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[5413]";
connectAttr "RefRN.phl[5414]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5415]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[5416]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[5417]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[5418]";
connectAttr "RefRN.phl[5419]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5420]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5421]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[5422]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[5423]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[5424]";
connectAttr "RefRN.phl[5425]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5426]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[5427]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[5428]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[5429]";
connectAttr "RefRN.phl[5430]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5431]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5432]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[5433]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[5434]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[5435]";
connectAttr "RefRN.phl[5436]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5437]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[5438]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[5439]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[5440]";
connectAttr "RefRN.phl[5441]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5442]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5443]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[5444]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[5445]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[5446]";
connectAttr "RefRN.phl[5447]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5448]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[5449]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[5450]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[5451]";
connectAttr "RefRN.phl[5452]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5453]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5454]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[5455]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[5456]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[5457]";
connectAttr "RefRN.phl[5458]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5459]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[5460]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[5461]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[5462]";
connectAttr "RefRN.phl[5463]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5464]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5465]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[5466]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[5467]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[5468]";
connectAttr "RefRN.phl[5469]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5470]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[5471]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[5472]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[5473]";
connectAttr "RefRN.phl[5474]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5475]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5476]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[5477]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[5478]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[5479]";
connectAttr "RefRN.phl[5480]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[5481]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[5482]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[5483]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[5484]";
connectAttr "RefRN.phl[5485]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[5486]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[5487]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[5488]" "lkneeControl.zooTrig1";
connectAttr "RefRN.phl[5489]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5490]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5491]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5492]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5493]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5494]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[5495]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[5496]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[5497]";
connectAttr "RefRN.phl[5498]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5499]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5500]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5501]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5502]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5503]" "lkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[5504]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[5505]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[5506]";
connectAttr "RefRN.phl[5507]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5508]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5509]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5510]" "null3_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5511]" "null3_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5512]" "null3_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5513]" "null3_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5514]" "lkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[5515]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[5516]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[5517]";
connectAttr "RefRN.phl[5518]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5519]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5520]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[5521]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[5522]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[5523]";
connectAttr "RefRN.phl[5524]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[5525]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[5526]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[5527]" "rkneeControl.zooTrig1";
connectAttr "RefRN.phl[5528]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5529]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5530]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5531]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5532]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5533]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[5534]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[5535]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[5536]";
connectAttr "RefRN.phl[5537]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5538]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5539]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5540]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5541]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[5542]" "rkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[5543]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[5544]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[5545]";
connectAttr "RefRN.phl[5546]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5547]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5548]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[5549]" "null4_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[5550]" "null4_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[5551]" "null4_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[5552]" "null4_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[5553]" "rkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[5554]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[5555]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[5556]";
connectAttr "RefRN.phl[5557]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5558]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5559]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[5560]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[5561]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[5562]";
connectAttr "RefRN.phl[5563]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[5564]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[5565]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[5566]" "cord.dsm" -na;
connectAttr "RefRN.phl[5567]" "pouch.dsm" -na;
connectAttr "RefRN.phl[5568]" "pouch2.dsm" -na;
connectAttr "RefRN.phl[5569]" "RefRN.phl[5570]";
connectAttr "RefRN.phl[5571]" "RefRN.phl[5572]";
connectAttr "RefRN.phl[5573]" "RefRN.phl[5574]";
connectAttr "RefRN.phl[5575]" "RefRN.phl[5576]";
connectAttr "RefRN.phl[5577]" "RefRN.phl[5578]";
connectAttr "RefRN.phl[5579]" "RefRN.phl[5580]";
connectAttr "RefRN.phl[5581]" "RefRN.phl[5582]";
connectAttr "RefRN.phl[5583]" "RefRN.phl[5584]";
connectAttr "RefRN.phl[5585]" "RefRN.phl[5586]";
connectAttr "RefRN.phl[5587]" "RefRN.phl[5588]";
connectAttr "RefRN.phl[5589]" "RefRN.phl[5590]";
connectAttr "RefRN.phl[5591]" "RefRN.phl[5592]";
connectAttr "RefRN.phl[5593]" "RefRN.phl[5594]";
connectAttr "RefRN.phl[5595]" "RefRN.phl[5596]";
connectAttr "RefRN.phl[5597]" "RefRN.phl[5598]";
connectAttr "RefRN.phl[5599]" "RefRN.phl[5600]";
connectAttr "Ref:bip_spine_0FKcontrol.msg" "UpperbodyControl.zooWalkdown";
connectAttr "Ref:bip_spine_0FKcontrolvisExp.out[0]" "Ref:bip_spine_0FKcontrol.v"
		 -l on;
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_0FKcontrol.sy"
		 -l on;
connectAttr "Ref:bip_spine_1FKcontrol.msg" "Ref:bip_spine_0FKcontrol.zooWalkdown"
		;
connectAttr "UpperbodyControl.msg" "Ref:bip_spine_0FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_0FKcontrol.msg" "Ref:bip_spine_1FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_2FKcontrol.msg" "Ref:bip_spine_1FKcontrol.zooWalkdown"
		;
connectAttr "Ref:bip_spine_1FKcontrol.msg" "Ref:bip_spine_2FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_3FKcontrol.msg" "Ref:bip_spine_2FKcontrol.zooWalkdown"
		;
connectAttr "Ref:bip_spine_2FKcontrol.msg" "Ref:bip_spine_3FKcontrol.zooWalkup";
connectAttr "neckControl.msg" "Ref:bip_spine_3FKcontrol.zooWalkdown";
connectAttr "ikChestvisExp.out[0]" "ikChest.v" -l on;
connectAttr "transformGeometry1.og" "ikChestShape.cr";
connectAttr "Ref:bip_hip_LIK_pointConstraint1.ctx" "Ref:bip_hip_LIK.tx" -l on;
connectAttr "Ref:bip_hip_LIK_pointConstraint1.cty" "Ref:bip_hip_LIK.ty" -l on;
connectAttr "Ref:bip_hip_LIK_pointConstraint1.ctz" "Ref:bip_hip_LIK.tz" -l on;
connectAttr "Ref:bip_hip_LIK.s" "Ref:bip_knee_LIK.is";
connectAttr "Ref:bip_knee_LIK.s" "Ref:bip_foot_LIK.is";
connectAttr "Ref:bip_foot_LIK.s" "Ref:bip_toe_LIK.is";
connectAttr "Ref:bip_toe_LIK.s" "Ref:bip_toeEnd_LIK.is";
connectAttr "Ref:bip_toeEnd_LIK.tx" "effector5.tx";
connectAttr "Ref:bip_toeEnd_LIK.ty" "effector5.ty";
connectAttr "Ref:bip_toeEnd_LIK.tz" "effector5.tz";
connectAttr "Ref:bip_toe_LIK.tx" "effector4.tx";
connectAttr "Ref:bip_toe_LIK.ty" "effector4.ty";
connectAttr "Ref:bip_toe_LIK.tz" "effector4.tz";
connectAttr "Ref:bip_foot_LIK.tx" "effector3.tx";
connectAttr "Ref:bip_foot_LIK.ty" "effector3.ty";
connectAttr "Ref:bip_foot_LIK.tz" "effector3.tz";
connectAttr "Ref:bip_hip_LIK_pointConstraint1.w0" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_LIK.pim" "Ref:bip_hip_LIK_pointConstraint1.cpim";
connectAttr "Ref:bip_hip_LIK.rp" "Ref:bip_hip_LIK_pointConstraint1.crp";
connectAttr "Ref:bip_hip_LIK.rpt" "Ref:bip_hip_LIK_pointConstraint1.crt";
connectAttr "Ref:bip_hip_LFKvisExp.out[0]" "Ref:bip_hip_LFK.v" -l on;
connectAttr "Ref:bip_hip_LFK_pointConstraint1.ctx" "Ref:bip_hip_LFK.tx" -l on;
connectAttr "Ref:bip_hip_LFK_pointConstraint1.cty" "Ref:bip_hip_LFK.ty" -l on;
connectAttr "Ref:bip_hip_LFK_pointConstraint1.ctz" "Ref:bip_hip_LFK.tz" -l on;
connectAttr "Ref:bip_hip_LFK_pointConstraint1.w0" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_LFK.pim" "Ref:bip_hip_LFK_pointConstraint1.cpim";
connectAttr "Ref:bip_hip_LFK.rp" "Ref:bip_hip_LFK_pointConstraint1.crp";
connectAttr "Ref:bip_hip_LFK.rpt" "Ref:bip_hip_LFK_pointConstraint1.crt";
connectAttr "Ref:bip_hip_RIK_pointConstraint1.ctx" "Ref:bip_hip_RIK.tx" -l on;
connectAttr "Ref:bip_hip_RIK_pointConstraint1.cty" "Ref:bip_hip_RIK.ty" -l on;
connectAttr "Ref:bip_hip_RIK_pointConstraint1.ctz" "Ref:bip_hip_RIK.tz" -l on;
connectAttr "Ref:bip_hip_RIK.s" "Ref:bip_knee_RIK.is";
connectAttr "Ref:bip_knee_RIK.s" "Ref:bip_foot_RIK.is";
connectAttr "Ref:bip_foot_RIK.s" "Ref:bip_toe_RIK.is";
connectAttr "Ref:bip_toe_RIK.s" "Ref:bip_toeEnd_RIK.is";
connectAttr "Ref:bip_toeEnd_RIK.tx" "effector9.tx";
connectAttr "Ref:bip_toeEnd_RIK.ty" "effector9.ty";
connectAttr "Ref:bip_toeEnd_RIK.tz" "effector9.tz";
connectAttr "Ref:bip_toe_RIK.tx" "effector8.tx";
connectAttr "Ref:bip_toe_RIK.ty" "effector8.ty";
connectAttr "Ref:bip_toe_RIK.tz" "effector8.tz";
connectAttr "Ref:bip_foot_RIK.tx" "effector7.tx";
connectAttr "Ref:bip_foot_RIK.ty" "effector7.ty";
connectAttr "Ref:bip_foot_RIK.tz" "effector7.tz";
connectAttr "Ref:bip_hip_RIK_pointConstraint1.w0" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_RIK.pim" "Ref:bip_hip_RIK_pointConstraint1.cpim";
connectAttr "Ref:bip_hip_RIK.rp" "Ref:bip_hip_RIK_pointConstraint1.crp";
connectAttr "Ref:bip_hip_RIK.rpt" "Ref:bip_hip_RIK_pointConstraint1.crt";
connectAttr "Ref:bip_hip_RFKvisExp.out[0]" "Ref:bip_hip_RFK.v" -l on;
connectAttr "Ref:bip_hip_RFK_pointConstraint1.ctx" "Ref:bip_hip_RFK.tx" -l on;
connectAttr "Ref:bip_hip_RFK_pointConstraint1.cty" "Ref:bip_hip_RFK.ty" -l on;
connectAttr "Ref:bip_hip_RFK_pointConstraint1.ctz" "Ref:bip_hip_RFK.tz" -l on;
connectAttr "Ref:bip_hip_RFK_pointConstraint1.w0" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_RFK.pim" "Ref:bip_hip_RFK_pointConstraint1.cpim";
connectAttr "Ref:bip_hip_RFK.rp" "Ref:bip_hip_RFK_pointConstraint1.crp";
connectAttr "Ref:bip_hip_RFK.rpt" "Ref:bip_hip_RFK_pointConstraint1.crt";
connectAttr "stretchyBack.out[0]" "Ref:bip_spine_0ik.sy";
connectAttr "Ref:bip_spine_0ik.s" "Ref:bip_spine_1ik.is";
connectAttr "stretchyBack1.out[0]" "Ref:bip_spine_1ik.sy";
connectAttr "Ref:bip_spine_1ik.s" "Ref:bip_spine_2ik.is";
connectAttr "stretchyBack2.out[0]" "Ref:bip_spine_2ik.sy";
connectAttr "Ref:bip_spine_2ik.s" "Ref:bip_spine_3ik.is";
connectAttr "Ref:bip_spine_3ik_orientConstraint1.crx" "Ref:bip_spine_3ik.rx";
connectAttr "Ref:bip_spine_3ik_orientConstraint1.cry" "Ref:bip_spine_3ik.ry";
connectAttr "Ref:bip_spine_3ik_orientConstraint1.crz" "Ref:bip_spine_3ik.rz";
connectAttr "stretchyBack3.out[0]" "Ref:bip_spine_3ik.sy";
connectAttr "Ref:bip_spine_3ik.ro" "Ref:bip_spine_3ik_orientConstraint1.cro";
connectAttr "Ref:bip_spine_3ik.pim" "Ref:bip_spine_3ik_orientConstraint1.cpim";
connectAttr "Ref:bip_spine_3ik.jo" "Ref:bip_spine_3ik_orientConstraint1.cjo";
connectAttr "ikChest.r" "Ref:bip_spine_3ik_orientConstraint1.tg[0].tr";
connectAttr "ikChest.ro" "Ref:bip_spine_3ik_orientConstraint1.tg[0].tro";
connectAttr "ikChest.pm" "Ref:bip_spine_3ik_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_spine_3ik_orientConstraint1.w0" "Ref:bip_spine_3ik_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3ik.tx" "effector1.tx";
connectAttr "Ref:bip_spine_3ik.ty" "effector1.ty";
connectAttr "Ref:bip_spine_3ik.tz" "effector1.tz";
connectAttr "Ref:bip_spine_0ik.msg" "ikSpine.hsj";
connectAttr "effector1.hp" "ikSpine.hee";
connectAttr "ikSplineSolver.msg" "ikSpine.hsv";
connectAttr "SpineCurveShape.ws" "ikSpine.ic";
connectAttr "unitConversion2.o" "ikSpine.twi";
connectAttr "SpineCurvevisExp.out[0]" "SpineCurve.v";
connectAttr "ikPelvisClusterCluster.og[0]" "SpineCurveShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "SpineCurveShape.twl";
connectAttr "cluster1GroupId.id" "SpineCurveShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "SpineCurveShape.iog.og[0].gco";
connectAttr "groupId2.id" "SpineCurveShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "SpineCurveShape.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "SpineCurveShape.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "SpineCurveShape.iog.og[2].gco";
connectAttr "chestParent_parentConstraint1.ctx" "chestParent.tx";
connectAttr "chestParent_parentConstraint1.cty" "chestParent.ty";
connectAttr "chestParent_parentConstraint1.ctz" "chestParent.tz";
connectAttr "chestParent_parentConstraint1.crx" "chestParent.rx";
connectAttr "chestParent_parentConstraint1.cry" "chestParent.ry";
connectAttr "chestParent_parentConstraint1.crz" "chestParent.rz";
connectAttr "chestParent.ro" "chestParent_parentConstraint1.cro";
connectAttr "chestParent.pim" "chestParent_parentConstraint1.cpim";
connectAttr "chestParent.rp" "chestParent_parentConstraint1.crp";
connectAttr "chestParent.rpt" "chestParent_parentConstraint1.crt";
connectAttr "Ref:bip_spine_3FKcontrol.t" "chestParent_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rp" "chestParent_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rpt" "chestParent_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.r" "chestParent_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_3FKcontrol.ro" "chestParent_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_3FKcontrol.s" "chestParent_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_3FKcontrol.pm" "chestParent_parentConstraint1.tg[0].tpm"
		;
connectAttr "chestParent_parentConstraint1.w0" "chestParent_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3ik.t" "chestParent_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_3ik.rp" "chestParent_parentConstraint1.tg[1].trp";
connectAttr "Ref:bip_spine_3ik.rpt" "chestParent_parentConstraint1.tg[1].trt";
connectAttr "Ref:bip_spine_3ik.r" "chestParent_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_3ik.ro" "chestParent_parentConstraint1.tg[1].tro";
connectAttr "Ref:bip_spine_3ik.s" "chestParent_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_3ik.pm" "chestParent_parentConstraint1.tg[1].tpm";
connectAttr "Ref:bip_spine_3ik.jo" "chestParent_parentConstraint1.tg[1].tjo";
connectAttr "chestParent_parentConstraint1.w1" "chestParent_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent.out[0]" "chestParent_parentConstraint1.w0";
connectAttr "main.spineIKFK" "chestParent_parentConstraint1.w1";
connectAttr "lShoulderControl_pointConstraint1.ctx" "lShoulderControl.tx" -l on;
connectAttr "lShoulderControl_pointConstraint1.cty" "lShoulderControl.ty" -l on;
connectAttr "lShoulderControl_pointConstraint1.ctz" "lShoulderControl.tz" -l on;
connectAttr "lShoulderControl_pointConstraint1.w0" "lShoulderControl_pointConstraint1.tg[0].tw"
		;
connectAttr "lShoulderControl.pim" "lShoulderControl_pointConstraint1.cpim";
connectAttr "lShoulderControl.rp" "lShoulderControl_pointConstraint1.crp";
connectAttr "lShoulderControl.rpt" "lShoulderControl_pointConstraint1.crt";
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.crx" "Ref:bip_upperArm_LFKZeroGroup.rx"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.cry" "Ref:bip_upperArm_LFKZeroGroup.ry"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.crz" "Ref:bip_upperArm_LFKZeroGroup.rz"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKvisExp.out[0]" "Ref:bip_upperArm_LFK.v" -l on;
connectAttr "Ref:bip_upperArm_LFK_pointConstraint1.ctx" "Ref:bip_upperArm_LFK.tx"
		 -l on;
connectAttr "Ref:bip_upperArm_LFK_pointConstraint1.cty" "Ref:bip_upperArm_LFK.ty"
		 -l on;
connectAttr "Ref:bip_upperArm_LFK_pointConstraint1.ctz" "Ref:bip_upperArm_LFK.tz"
		 -l on;
connectAttr "Ref:bip_upperArm_LFK_pointConstraint1.w0" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_LFK.pim" "Ref:bip_upperArm_LFK_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_LFK.rp" "Ref:bip_upperArm_LFK_pointConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_LFK.rpt" "Ref:bip_upperArm_LFK_pointConstraint1.crt"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup.pim" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.crt"
		;
connectAttr "lShoulderControl.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "lShoulderControl.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "lShoulderControl.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "lShoulderControl.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "lShoulderControl.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "lShoulderControl.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "lShoulderControl.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w0" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w1" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "UpperbodyControl.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tt"
		;
connectAttr "UpperbodyControl.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].trp"
		;
connectAttr "UpperbodyControl.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].trt"
		;
connectAttr "UpperbodyControl.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tr"
		;
connectAttr "UpperbodyControl.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tro"
		;
connectAttr "UpperbodyControl.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].ts"
		;
connectAttr "UpperbodyControl.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tpm"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w2" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[2].tw"
		;
connectAttr "main.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tt";
connectAttr "main.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].trp"
		;
connectAttr "main.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].trt"
		;
connectAttr "main.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tr";
connectAttr "main.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tro"
		;
connectAttr "main.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].ts";
connectAttr "main.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tpm"
		;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w3" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[3].tw"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_0.ocr" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w0"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_1.ocr" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w1"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_2.ocr" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w2"
		;
connectAttr "switch_bip_upperArm_LFK_to_space_3.ocr" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.w3"
		;
connectAttr "rShoulderControl_pointConstraint1.ctx" "rShoulderControl.tx" -l on;
connectAttr "rShoulderControl_pointConstraint1.cty" "rShoulderControl.ty" -l on;
connectAttr "rShoulderControl_pointConstraint1.ctz" "rShoulderControl.tz" -l on;
connectAttr "rShoulderControl_pointConstraint1.w0" "rShoulderControl_pointConstraint1.tg[0].tw"
		;
connectAttr "rShoulderControl.pim" "rShoulderControl_pointConstraint1.cpim";
connectAttr "rShoulderControl.rp" "rShoulderControl_pointConstraint1.crp";
connectAttr "rShoulderControl.rpt" "rShoulderControl_pointConstraint1.crt";
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.crx" "Ref:bip_upperArm_RFKZeroGroup.rx"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.cry" "Ref:bip_upperArm_RFKZeroGroup.ry"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.crz" "Ref:bip_upperArm_RFKZeroGroup.rz"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKvisExp.out[0]" "Ref:bip_upperArm_RFK.v" -l on;
connectAttr "Ref:bip_upperArm_RFK_pointConstraint1.ctx" "Ref:bip_upperArm_RFK.tx"
		 -l on;
connectAttr "Ref:bip_upperArm_RFK_pointConstraint1.cty" "Ref:bip_upperArm_RFK.ty"
		 -l on;
connectAttr "Ref:bip_upperArm_RFK_pointConstraint1.ctz" "Ref:bip_upperArm_RFK.tz"
		 -l on;
connectAttr "Ref:bip_upperArm_RFK_pointConstraint1.w0" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RFK.pim" "Ref:bip_upperArm_RFK_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_RFK.rp" "Ref:bip_upperArm_RFK_pointConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_RFK.rpt" "Ref:bip_upperArm_RFK_pointConstraint1.crt"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.cro"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup.pim" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.crt"
		;
connectAttr "rShoulderControl.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "rShoulderControl.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "rShoulderControl.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "rShoulderControl.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "rShoulderControl.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "rShoulderControl.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "rShoulderControl.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w0" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w1" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "UpperbodyControl.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tt"
		;
connectAttr "UpperbodyControl.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].trp"
		;
connectAttr "UpperbodyControl.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].trt"
		;
connectAttr "UpperbodyControl.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tr"
		;
connectAttr "UpperbodyControl.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tro"
		;
connectAttr "UpperbodyControl.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].ts"
		;
connectAttr "UpperbodyControl.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tpm"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w2" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[2].tw"
		;
connectAttr "main.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tt";
connectAttr "main.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].trp"
		;
connectAttr "main.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].trt"
		;
connectAttr "main.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tr";
connectAttr "main.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tro"
		;
connectAttr "main.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].ts";
connectAttr "main.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tpm"
		;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w3" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[3].tw"
		;
connectAttr "switch_bip_upperArm_RFK_to_space_0.ocr" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w0"
		;
connectAttr "switch_bip_upperArm_RFK_to_space_1.ocr" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w1"
		;
connectAttr "switch_bip_upperArm_RFK_to_space_2.ocr" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w2"
		;
connectAttr "switch_bip_upperArm_RFK_to_space_3.ocr" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.w3"
		;
connectAttr "neckControlLockParent_orientConstraint1.crx" "neckControlLockParent.rx"
		;
connectAttr "neckControlLockParent_orientConstraint1.cry" "neckControlLockParent.ry"
		;
connectAttr "neckControlLockParent_orientConstraint1.crz" "neckControlLockParent.rz"
		;
connectAttr "neckControlLockParent_pointConstraint1.ctx" "neckControlLockParent.tx"
		;
connectAttr "neckControlLockParent_pointConstraint1.cty" "neckControlLockParent.ty"
		;
connectAttr "neckControlLockParent_pointConstraint1.ctz" "neckControlLockParent.tz"
		;
connectAttr "neckControlLockParent.ro" "neckControlLockParent_orientConstraint1.cro"
		;
connectAttr "neckControlLockParent.pim" "neckControlLockParent_orientConstraint1.cpim"
		;
connectAttr "neckControlZeroGroup.r" "neckControlLockParent_orientConstraint1.tg[0].tr"
		;
connectAttr "neckControlZeroGroup.ro" "neckControlLockParent_orientConstraint1.tg[0].tro"
		;
connectAttr "neckControlZeroGroup.pm" "neckControlLockParent_orientConstraint1.tg[0].tpm"
		;
connectAttr "neckControlLockParent_orientConstraint1.w0" "neckControlLockParent_orientConstraint1.tg[0].tw"
		;
connectAttr "neckControlLockParentlock.out[0]" "neckControlLockParent_orientConstraint1.w0"
		;
connectAttr "neckControlLockParent_pointConstraint1.w0" "neckControlLockParent_pointConstraint1.tg[0].tw"
		;
connectAttr "neckControlLockParent.pim" "neckControlLockParent_pointConstraint1.cpim"
		;
connectAttr "neckControlLockParent.rp" "neckControlLockParent_pointConstraint1.crp"
		;
connectAttr "neckControlLockParent.rpt" "neckControlLockParent_pointConstraint1.crt"
		;
connectAttr "neckControl_pointConstraint1.ctx" "neckControl.tx" -l on;
connectAttr "neckControl_pointConstraint1.cty" "neckControl.ty" -l on;
connectAttr "neckControl_pointConstraint1.ctz" "neckControl.tz" -l on;
connectAttr "Ref:bip_spine_3FKcontrol.msg" "neckControl.zooWalkup";
connectAttr "headControl.msg" "neckControl.zooWalkdown";
connectAttr "neckControl_pointConstraint1.w0" "neckControl_pointConstraint1.tg[0].tw"
		;
connectAttr "neckControl.pim" "neckControl_pointConstraint1.cpim";
connectAttr "neckControl.rp" "neckControl_pointConstraint1.crp";
connectAttr "neckControl.rpt" "neckControl_pointConstraint1.crt";
connectAttr "headControlLockParent_orientConstraint1.crx" "headControlLockParent.rx"
		;
connectAttr "headControlLockParent_orientConstraint1.cry" "headControlLockParent.ry"
		;
connectAttr "headControlLockParent_orientConstraint1.crz" "headControlLockParent.rz"
		;
connectAttr "headControlLockParent_pointConstraint1.ctx" "headControlLockParent.tx"
		;
connectAttr "headControlLockParent_pointConstraint1.cty" "headControlLockParent.ty"
		;
connectAttr "headControlLockParent_pointConstraint1.ctz" "headControlLockParent.tz"
		;
connectAttr "headControlLockParent.ro" "headControlLockParent_orientConstraint1.cro"
		;
connectAttr "headControlLockParent.pim" "headControlLockParent_orientConstraint1.cpim"
		;
connectAttr "headControlZeroGroup.r" "headControlLockParent_orientConstraint1.tg[0].tr"
		;
connectAttr "headControlZeroGroup.ro" "headControlLockParent_orientConstraint1.tg[0].tro"
		;
connectAttr "headControlZeroGroup.pm" "headControlLockParent_orientConstraint1.tg[0].tpm"
		;
connectAttr "headControlLockParent_orientConstraint1.w0" "headControlLockParent_orientConstraint1.tg[0].tw"
		;
connectAttr "headControlLockParentlock.out[0]" "headControlLockParent_orientConstraint1.w0"
		;
connectAttr "headControlLockParent_pointConstraint1.w0" "headControlLockParent_pointConstraint1.tg[0].tw"
		;
connectAttr "headControlLockParent.pim" "headControlLockParent_pointConstraint1.cpim"
		;
connectAttr "headControlLockParent.rp" "headControlLockParent_pointConstraint1.crp"
		;
connectAttr "headControlLockParent.rpt" "headControlLockParent_pointConstraint1.crt"
		;
connectAttr "headControl_pointConstraint1.ctx" "headControl.tx" -l on;
connectAttr "headControl_pointConstraint1.cty" "headControl.ty" -l on;
connectAttr "headControl_pointConstraint1.ctz" "headControl.tz" -l on;
connectAttr "neckControl.msg" "headControl.zooWalkup";
connectAttr "headControl_pointConstraint1.w0" "headControl_pointConstraint1.tg[0].tw"
		;
connectAttr "headControl.pim" "headControl_pointConstraint1.cpim";
connectAttr "headControl.rp" "headControl_pointConstraint1.crp";
connectAttr "headControl.rpt" "headControl_pointConstraint1.crt";
connectAttr "Ref:bip_upperArm_LIK_pointConstraint1.ctx" "Ref:bip_upperArm_LIK.tx"
		;
connectAttr "Ref:bip_upperArm_LIK_pointConstraint1.cty" "Ref:bip_upperArm_LIK.ty"
		;
connectAttr "Ref:bip_upperArm_LIK_pointConstraint1.ctz" "Ref:bip_upperArm_LIK.tz"
		;
connectAttr "Ref:bip_upperArm_LIK.s" "Ref:bip_lowerArm_LIK.is";
connectAttr "Ref:bip_lowerArm_LIK.s" "Ref:bip_hand_LIK.is";
connectAttr "Ref:bip_hand_LIK.tx" "effector2.tx";
connectAttr "Ref:bip_hand_LIK.ty" "effector2.ty";
connectAttr "Ref:bip_hand_LIK.tz" "effector2.tz";
connectAttr "Ref:bip_upperArm_LIK_pointConstraint1.w0" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_LIK.pim" "Ref:bip_upperArm_LIK_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_LIK.rp" "Ref:bip_upperArm_LIK_pointConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_LIK.rpt" "Ref:bip_upperArm_LIK_pointConstraint1.crt"
		;
connectAttr "Ref:bip_upperArm_LIK.msg" "Ref:bip_hand_LIKikHandle.hsj";
connectAttr "effector2.hp" "Ref:bip_hand_LIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_hand_LIKikHandle.hsv";
connectAttr "Ref:bip_hand_LIKikHandle_pointConstraint1.ctx" "Ref:bip_hand_LIKikHandle.tx"
		;
connectAttr "Ref:bip_hand_LIKikHandle_pointConstraint1.cty" "Ref:bip_hand_LIKikHandle.ty"
		;
connectAttr "Ref:bip_hand_LIKikHandle_pointConstraint1.ctz" "Ref:bip_hand_LIKikHandle.tz"
		;
connectAttr "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.ctx" "Ref:bip_hand_LIKikHandle.pvx"
		;
connectAttr "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.cty" "Ref:bip_hand_LIKikHandle.pvy"
		;
connectAttr "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.ctz" "Ref:bip_hand_LIKikHandle.pvz"
		;
connectAttr "Ref:bip_hand_LIKikHandle.pim" "Ref:bip_hand_LIKikHandle_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_hand_LIKikHandle.rp" "Ref:bip_hand_LIKikHandle_pointConstraint1.crp"
		;
connectAttr "Ref:bip_hand_LIKikHandle.rpt" "Ref:bip_hand_LIKikHandle_pointConstraint1.crt"
		;
connectAttr "likHandControl.t" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "likHandControl.rp" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "likHandControl.rpt" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "likHandControl.pm" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_hand_LIKikHandle_pointConstraint1.w0" "Ref:bip_hand_LIKikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hand_LIKikHandle.pim" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_LIK.pm" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Ref:bip_upperArm_LIK.t" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.crp"
		;
connectAttr "lElbowControl.t" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "lElbowControl.rp" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "lElbowControl.rpt" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "lElbowControl.pm" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.w0" "Ref:bip_hand_LIKikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "likHandControlGroup_parentConstraint1.ctx" "likHandControlGroup.tx"
		;
connectAttr "likHandControlGroup_parentConstraint1.cty" "likHandControlGroup.ty"
		;
connectAttr "likHandControlGroup_parentConstraint1.ctz" "likHandControlGroup.tz"
		;
connectAttr "likHandControlGroup_parentConstraint1.crx" "likHandControlGroup.rx"
		;
connectAttr "likHandControlGroup_parentConstraint1.cry" "likHandControlGroup.ry"
		;
connectAttr "likHandControlGroup_parentConstraint1.crz" "likHandControlGroup.rz"
		;
connectAttr "likHandControlGroup.ro" "likHandControlGroup_parentConstraint1.cro"
		;
connectAttr "likHandControlGroup.pim" "likHandControlGroup_parentConstraint1.cpim"
		;
connectAttr "likHandControlGroup.rp" "likHandControlGroup_parentConstraint1.crp"
		;
connectAttr "likHandControlGroup.rpt" "likHandControlGroup_parentConstraint1.crt"
		;
connectAttr "UpperbodyControl.t" "likHandControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "UpperbodyControl.rp" "likHandControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "UpperbodyControl.rpt" "likHandControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "UpperbodyControl.r" "likHandControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "UpperbodyControl.ro" "likHandControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "UpperbodyControl.s" "likHandControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "UpperbodyControl.pm" "likHandControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "likHandControlGroup_parentConstraint1.w0" "likHandControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "likHandControllockExp.out[0]" "likHandControlGroup_parentConstraint1.w0"
		;
connectAttr "likHandControlvisExp.out[0]" "likHandControl.v" -l on;
connectAttr "likHandControl_orientConstraint1.crx" "likHandControl.rx" -l on;
connectAttr "likHandControl_orientConstraint1.cry" "likHandControl.ry" -l on;
connectAttr "likHandControl_orientConstraint1.crz" "likHandControl.rz" -l on;
connectAttr "lHandControl.msg" "likHandControl.zooWalkdown";
connectAttr "lHandControl.msg" "likHandControl.zooWalkup";
connectAttr "lElbowControl.msg" "likHandControl.zooWalkleft";
connectAttr "lElbowControl.msg" "likHandControl.zooWalkright";
connectAttr "lHandControl.msg" "likHandControl.zooTrig1";
connectAttr "likHandControl_orientConstraint1.w0" "likHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "likHandControl.aim" "likHandControl_orientConstraint1.w0";
connectAttr "likHandControl.ro" "likHandControl_orientConstraint1.cro";
connectAttr "likHandControl.pim" "likHandControl_orientConstraint1.cpim";
connectAttr "lElbowControlvisExp.out[0]" "lElbowControl.v" -l on;
connectAttr "likHandControl.msg" "lElbowControl.zooWalkright";
connectAttr "likHandControl.msg" "lElbowControl.zooWalkleft";
connectAttr "lHandControlGroup_parentConstraint1.ctx" "lHandControlGroup.tx";
connectAttr "lHandControlGroup_parentConstraint1.cty" "lHandControlGroup.ty";
connectAttr "lHandControlGroup_parentConstraint1.ctz" "lHandControlGroup.tz";
connectAttr "lHandControlGroup_parentConstraint1.crx" "lHandControlGroup.rx";
connectAttr "lHandControlGroup_parentConstraint1.cry" "lHandControlGroup.ry";
connectAttr "lHandControlGroup_parentConstraint1.crz" "lHandControlGroup.rz";
connectAttr "lHandControl_pointConstraint1.ctx" "lHandControl.tx" -l on;
connectAttr "lHandControl_pointConstraint1.cty" "lHandControl.ty" -l on;
connectAttr "lHandControl_pointConstraint1.ctz" "lHandControl.tz" -l on;
connectAttr "likHandControl.msg" "lHandControl.zooWalkup";
connectAttr "likHandControl.msg" "lHandControl.zooWalkdown";
connectAttr "unitConversion3.o" "Ref:bip_thumb_0_LControlrollGroup.rx";
connectAttr "unitConversion4.o" "Ref:bip_thumb_1_LControlrollGroup.rx";
connectAttr "unitConversion5.o" "Ref:bip_thumb_2_LControlrollGroup.rx";
connectAttr "unitConversion6.o" "Ref:bip_index_0_LControlrollGroup.rx";
connectAttr "unitConversion7.o" "Ref:bip_index_1_LControlrollGroup.rx";
connectAttr "unitConversion8.o" "Ref:bip_index_2_LControlrollGroup.rx";
connectAttr "unitConversion9.o" "Ref:bip_middle_0_LControlrollGroup.rx";
connectAttr "unitConversion10.o" "Ref:bip_middle_1_LControlrollGroup.rx";
connectAttr "unitConversion11.o" "Ref:bip_middle_2_LControlrollGroup.rx";
connectAttr "unitConversion12.o" "Ref:bip_ring_0_LControlrollGroup.rx";
connectAttr "unitConversion13.o" "Ref:bip_ring_1_LControlrollGroup.rx";
connectAttr "unitConversion14.o" "Ref:bip_ring_2_LControlrollGroup.rx";
connectAttr "unitConversion15.o" "Ref:bip_pinky_0_LControlrollGroup.rx";
connectAttr "unitConversion16.o" "Ref:bip_pinky_1_LControlrollGroup.rx";
connectAttr "unitConversion17.o" "Ref:bip_pinky_2_LControlrollGroup.rx";
connectAttr "lHandControl_pointConstraint1.w0" "lHandControl_pointConstraint1.tg[0].tw"
		;
connectAttr "lHandControl.pim" "lHandControl_pointConstraint1.cpim";
connectAttr "lHandControl.rp" "lHandControl_pointConstraint1.crp";
connectAttr "lHandControl.rpt" "lHandControl_pointConstraint1.crt";
connectAttr "lHandControlGroup.ro" "lHandControlGroup_parentConstraint1.cro";
connectAttr "lHandControlGroup.pim" "lHandControlGroup_parentConstraint1.cpim";
connectAttr "lHandControlGroup.rp" "lHandControlGroup_parentConstraint1.crp";
connectAttr "lHandControlGroup.rpt" "lHandControlGroup_parentConstraint1.crt";
connectAttr "Ref:bip_hand_LFK.t" "lHandControlGroup_parentConstraint1.tg[0].tt";
connectAttr "Ref:bip_hand_LFK.rp" "lHandControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_hand_LFK.rpt" "lHandControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_hand_LFK.r" "lHandControlGroup_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_hand_LFK.ro" "lHandControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_hand_LFK.s" "lHandControlGroup_parentConstraint1.tg[0].ts";
connectAttr "Ref:bip_hand_LFK.pm" "lHandControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "lHandControlGroup_parentConstraint1.w0" "lHandControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "likHandControl.t" "lHandControlGroup_parentConstraint1.tg[1].tt";
connectAttr "likHandControl.rp" "lHandControlGroup_parentConstraint1.tg[1].trp";
connectAttr "likHandControl.rpt" "lHandControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "likHandControl.r" "lHandControlGroup_parentConstraint1.tg[1].tr";
connectAttr "likHandControl.ro" "lHandControlGroup_parentConstraint1.tg[1].tro";
connectAttr "likHandControl.s" "lHandControlGroup_parentConstraint1.tg[1].ts";
connectAttr "likHandControl.pm" "lHandControlGroup_parentConstraint1.tg[1].tpm";
connectAttr "lHandControlGroup_parentConstraint1.w1" "lHandControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent1.out[0]" "lHandControlGroup_parentConstraint1.w0";
connectAttr "main.lArmIKFK" "lHandControlGroup_parentConstraint1.w1";
connectAttr "lkneeControlvisExp.out[0]" "lkneeControl.v" -l on;
connectAttr "lFootControl.msg" "lkneeControl.zooWalkright";
connectAttr "lFootControl.msg" "lkneeControl.zooWalkleft";
connectAttr "lFootControlvisExp.out[0]" "lFootControl.v" -l on;
connectAttr "lToeControl.msg" "lFootControl.zooWalkdown";
connectAttr "lToeControl.msg" "lFootControl.zooWalkup";
connectAttr "lkneeControl.msg" "lFootControl.zooWalkleft";
connectAttr "lkneeControl.msg" "lFootControl.zooWalkright";
connectAttr "lReverseControlZeroGroup_parentConstraint1.ctx" "lReverseControlZeroGroup.tx"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.cty" "lReverseControlZeroGroup.ty"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.ctz" "lReverseControlZeroGroup.tz"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.crx" "lReverseControlZeroGroup.rx"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.cry" "lReverseControlZeroGroup.ry"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.crz" "lReverseControlZeroGroup.rz"
		;
connectAttr "unitConversion24.o" "lReverseBall.ry";
connectAttr "unitConversion22.o" "lReverseLroll.rz";
connectAttr "unitConversion23.o" "lReverseRroll.rz";
connectAttr "unitConversion18.o" "lReverseHeelLift.rx";
connectAttr "unitConversion20.o" "lReverseToeLift.rx";
connectAttr "unitConversion19.o" "lReverseAnkleLift.rx";
connectAttr "Ref:bip_hip_LIK.msg" "Ref:bip_foot_LIKikHandle.hsj";
connectAttr "effector3.hp" "Ref:bip_foot_LIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_foot_LIKikHandle.hsv";
connectAttr "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.ctx" "Ref:bip_foot_LIKikHandle.pvx"
		;
connectAttr "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.cty" "Ref:bip_foot_LIKikHandle.pvy"
		;
connectAttr "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.ctz" "Ref:bip_foot_LIKikHandle.pvz"
		;
connectAttr "Ref:bip_foot_LIKikHandle.pim" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Ref:bip_hip_LIK.pm" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Ref:bip_hip_LIK.t" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.crp"
		;
connectAttr "lkneeControl.t" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "lkneeControl.rp" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "lkneeControl.rpt" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "lkneeControl.pm" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.w0" "Ref:bip_foot_LIKikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_foot_LIK.msg" "Ref:bip_toe_LIKikHandle.hsj";
connectAttr "effector4.hp" "Ref:bip_toe_LIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_toe_LIKikHandle.hsv";
connectAttr "unitConversion21.o" "Ref:bip_toe_LIKikHandle.twi";
connectAttr "lReverseToeWiggle_orientConstraint1.crx" "lReverseToeWiggle.rx";
connectAttr "lReverseToeWiggle_orientConstraint1.cry" "lReverseToeWiggle.ry";
connectAttr "lReverseToeWiggle_orientConstraint1.crz" "lReverseToeWiggle.rz";
connectAttr "Ref:bip_toe_LIK.msg" "Ref:bip_toeEnd_LIKikHandle.hsj";
connectAttr "effector5.hp" "Ref:bip_toeEnd_LIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_toeEnd_LIKikHandle.hsv";
connectAttr "lReverseToeWiggle.ro" "lReverseToeWiggle_orientConstraint1.cro";
connectAttr "lReverseToeWiggle.pim" "lReverseToeWiggle_orientConstraint1.cpim";
connectAttr "lToeControl.r" "lReverseToeWiggle_orientConstraint1.tg[0].tr";
connectAttr "lToeControl.ro" "lReverseToeWiggle_orientConstraint1.tg[0].tro";
connectAttr "lToeControl.pm" "lReverseToeWiggle_orientConstraint1.tg[0].tpm";
connectAttr "lReverseToeWiggle_orientConstraint1.w0" "lReverseToeWiggle_orientConstraint1.tg[0].tw"
		;
connectAttr "lToeControlvisExp.out[0]" "lToeControl.v" -l on;
connectAttr "lFootControl.msg" "lToeControl.zooWalkup";
connectAttr "lFootControl.msg" "lToeControl.zooWalkdown";
connectAttr "lReverseControlZeroGroup.ro" "lReverseControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "lReverseControlZeroGroup.pim" "lReverseControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "lReverseControlZeroGroup.rp" "lReverseControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "lReverseControlZeroGroup.rpt" "lReverseControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "lFootControl.t" "lReverseControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "lFootControl.rp" "lReverseControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "lFootControl.rpt" "lReverseControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "lFootControl.r" "lReverseControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "lFootControl.ro" "lReverseControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "lFootControl.s" "lReverseControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "lFootControl.pm" "lReverseControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "lReverseControlZeroGroup_parentConstraint1.w0" "lReverseControlZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RIK_pointConstraint1.ctx" "Ref:bip_upperArm_RIK.tx"
		;
connectAttr "Ref:bip_upperArm_RIK_pointConstraint1.cty" "Ref:bip_upperArm_RIK.ty"
		;
connectAttr "Ref:bip_upperArm_RIK_pointConstraint1.ctz" "Ref:bip_upperArm_RIK.tz"
		;
connectAttr "Ref:bip_upperArm_RIK.s" "Ref:bip_lowerArm_RIK.is";
connectAttr "Ref:bip_lowerArm_RIK.s" "Ref:bip_hand_RIK.is";
connectAttr "Ref:bip_hand_RIK.tx" "effector6.tx";
connectAttr "Ref:bip_hand_RIK.ty" "effector6.ty";
connectAttr "Ref:bip_hand_RIK.tz" "effector6.tz";
connectAttr "Ref:bip_upperArm_RIK_pointConstraint1.w0" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RIK.pim" "Ref:bip_upperArm_RIK_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_RIK.rp" "Ref:bip_upperArm_RIK_pointConstraint1.crp"
		;
connectAttr "Ref:bip_upperArm_RIK.rpt" "Ref:bip_upperArm_RIK_pointConstraint1.crt"
		;
connectAttr "Ref:bip_upperArm_RIK.msg" "Ref:bip_hand_RIKikHandle.hsj";
connectAttr "effector6.hp" "Ref:bip_hand_RIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_hand_RIKikHandle.hsv";
connectAttr "Ref:bip_hand_RIKikHandle_pointConstraint1.ctx" "Ref:bip_hand_RIKikHandle.tx"
		;
connectAttr "Ref:bip_hand_RIKikHandle_pointConstraint1.cty" "Ref:bip_hand_RIKikHandle.ty"
		;
connectAttr "Ref:bip_hand_RIKikHandle_pointConstraint1.ctz" "Ref:bip_hand_RIKikHandle.tz"
		;
connectAttr "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.ctx" "Ref:bip_hand_RIKikHandle.pvx"
		;
connectAttr "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.cty" "Ref:bip_hand_RIKikHandle.pvy"
		;
connectAttr "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.ctz" "Ref:bip_hand_RIKikHandle.pvz"
		;
connectAttr "Ref:bip_hand_RIKikHandle.pim" "Ref:bip_hand_RIKikHandle_pointConstraint1.cpim"
		;
connectAttr "Ref:bip_hand_RIKikHandle.rp" "Ref:bip_hand_RIKikHandle_pointConstraint1.crp"
		;
connectAttr "Ref:bip_hand_RIKikHandle.rpt" "Ref:bip_hand_RIKikHandle_pointConstraint1.crt"
		;
connectAttr "rikHandControl.t" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "rikHandControl.rp" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "rikHandControl.rpt" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "rikHandControl.pm" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_hand_RIKikHandle_pointConstraint1.w0" "Ref:bip_hand_RIKikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hand_RIKikHandle.pim" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Ref:bip_upperArm_RIK.pm" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Ref:bip_upperArm_RIK.t" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.crp"
		;
connectAttr "rElbowControl.t" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "rElbowControl.rp" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "rElbowControl.rpt" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "rElbowControl.pm" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.w0" "Ref:bip_hand_RIKikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "rikHandControlGroup_parentConstraint1.ctx" "rikHandControlGroup.tx"
		;
connectAttr "rikHandControlGroup_parentConstraint1.cty" "rikHandControlGroup.ty"
		;
connectAttr "rikHandControlGroup_parentConstraint1.ctz" "rikHandControlGroup.tz"
		;
connectAttr "rikHandControlGroup_parentConstraint1.crx" "rikHandControlGroup.rx"
		;
connectAttr "rikHandControlGroup_parentConstraint1.cry" "rikHandControlGroup.ry"
		;
connectAttr "rikHandControlGroup_parentConstraint1.crz" "rikHandControlGroup.rz"
		;
connectAttr "rikHandControlGroup.ro" "rikHandControlGroup_parentConstraint1.cro"
		;
connectAttr "rikHandControlGroup.pim" "rikHandControlGroup_parentConstraint1.cpim"
		;
connectAttr "rikHandControlGroup.rp" "rikHandControlGroup_parentConstraint1.crp"
		;
connectAttr "rikHandControlGroup.rpt" "rikHandControlGroup_parentConstraint1.crt"
		;
connectAttr "UpperbodyControl.t" "rikHandControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "UpperbodyControl.rp" "rikHandControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "UpperbodyControl.rpt" "rikHandControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "UpperbodyControl.r" "rikHandControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "UpperbodyControl.ro" "rikHandControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "UpperbodyControl.s" "rikHandControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "UpperbodyControl.pm" "rikHandControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "rikHandControlGroup_parentConstraint1.w0" "rikHandControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "rikHandControllockExp.out[0]" "rikHandControlGroup_parentConstraint1.w0"
		;
connectAttr "rikHandControlvisExp.out[0]" "rikHandControl.v" -l on;
connectAttr "rikHandControl_orientConstraint1.crx" "rikHandControl.rx" -l on;
connectAttr "rikHandControl_orientConstraint1.cry" "rikHandControl.ry" -l on;
connectAttr "rikHandControl_orientConstraint1.crz" "rikHandControl.rz" -l on;
connectAttr "rHandControl.msg" "rikHandControl.zooWalkdown";
connectAttr "rHandControl.msg" "rikHandControl.zooWalkup";
connectAttr "rElbowControl.msg" "rikHandControl.zooWalkleft";
connectAttr "rElbowControl.msg" "rikHandControl.zooWalkright";
connectAttr "rHandControl.msg" "rikHandControl.zooTrig1";
connectAttr "rikHandControl_orientConstraint1.w0" "rikHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "rikHandControl.aim" "rikHandControl_orientConstraint1.w0";
connectAttr "rikHandControl.ro" "rikHandControl_orientConstraint1.cro";
connectAttr "rikHandControl.pim" "rikHandControl_orientConstraint1.cpim";
connectAttr "rElbowControlvisExp.out[0]" "rElbowControl.v" -l on;
connectAttr "rikHandControl.msg" "rElbowControl.zooWalkright";
connectAttr "rikHandControl.msg" "rElbowControl.zooWalkleft";
connectAttr "rHandControlGroup_parentConstraint1.ctx" "rHandControlGroup.tx";
connectAttr "rHandControlGroup_parentConstraint1.cty" "rHandControlGroup.ty";
connectAttr "rHandControlGroup_parentConstraint1.ctz" "rHandControlGroup.tz";
connectAttr "rHandControlGroup_parentConstraint1.crx" "rHandControlGroup.rx";
connectAttr "rHandControlGroup_parentConstraint1.cry" "rHandControlGroup.ry";
connectAttr "rHandControlGroup_parentConstraint1.crz" "rHandControlGroup.rz";
connectAttr "rHandControl_pointConstraint1.ctx" "rHandControl.tx" -l on;
connectAttr "rHandControl_pointConstraint1.cty" "rHandControl.ty" -l on;
connectAttr "rHandControl_pointConstraint1.ctz" "rHandControl.tz" -l on;
connectAttr "rikHandControl.msg" "rHandControl.zooWalkup";
connectAttr "rikHandControl.msg" "rHandControl.zooWalkdown";
connectAttr "unitConversion25.o" "Ref:bip_thumb_0_RControlrollGroup.rx";
connectAttr "unitConversion26.o" "Ref:bip_thumb_1_RControlrollGroup.rx";
connectAttr "unitConversion27.o" "Ref:bip_thumb_2_RControlrollGroup.rx";
connectAttr "unitConversion28.o" "Ref:bip_index_0_RControlrollGroup.rx";
connectAttr "unitConversion29.o" "Ref:bip_index_1_RControlrollGroup.rx";
connectAttr "unitConversion30.o" "Ref:bip_index_2_RControlrollGroup.rx";
connectAttr "unitConversion31.o" "Ref:bip_middle_0_RControlrollGroup.rx";
connectAttr "unitConversion32.o" "Ref:bip_middle_1_RControlrollGroup.rx";
connectAttr "unitConversion33.o" "Ref:bip_middle_2_RControlrollGroup.rx";
connectAttr "unitConversion34.o" "Ref:bip_ring_0_RControlrollGroup.rx";
connectAttr "unitConversion35.o" "Ref:bip_ring_1_RControlrollGroup.rx";
connectAttr "unitConversion36.o" "Ref:bip_ring_2_RControlrollGroup.rx";
connectAttr "unitConversion37.o" "Ref:bip_pinky_0_RControlrollGroup.rx";
connectAttr "unitConversion38.o" "Ref:bip_pinky_1_RControlrollGroup.rx";
connectAttr "unitConversion39.o" "Ref:bip_pinky_2_RControlrollGroup.rx";
connectAttr "rHandControl_pointConstraint1.w0" "rHandControl_pointConstraint1.tg[0].tw"
		;
connectAttr "rHandControl.pim" "rHandControl_pointConstraint1.cpim";
connectAttr "rHandControl.rp" "rHandControl_pointConstraint1.crp";
connectAttr "rHandControl.rpt" "rHandControl_pointConstraint1.crt";
connectAttr "rHandControlGroup.ro" "rHandControlGroup_parentConstraint1.cro";
connectAttr "rHandControlGroup.pim" "rHandControlGroup_parentConstraint1.cpim";
connectAttr "rHandControlGroup.rp" "rHandControlGroup_parentConstraint1.crp";
connectAttr "rHandControlGroup.rpt" "rHandControlGroup_parentConstraint1.crt";
connectAttr "Ref:bip_hand_RFK.t" "rHandControlGroup_parentConstraint1.tg[0].tt";
connectAttr "Ref:bip_hand_RFK.rp" "rHandControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_hand_RFK.rpt" "rHandControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_hand_RFK.r" "rHandControlGroup_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_hand_RFK.ro" "rHandControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_hand_RFK.s" "rHandControlGroup_parentConstraint1.tg[0].ts";
connectAttr "Ref:bip_hand_RFK.pm" "rHandControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "rHandControlGroup_parentConstraint1.w0" "rHandControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "rikHandControl.t" "rHandControlGroup_parentConstraint1.tg[1].tt";
connectAttr "rikHandControl.rp" "rHandControlGroup_parentConstraint1.tg[1].trp";
connectAttr "rikHandControl.rpt" "rHandControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "rikHandControl.r" "rHandControlGroup_parentConstraint1.tg[1].tr";
connectAttr "rikHandControl.ro" "rHandControlGroup_parentConstraint1.tg[1].tro";
connectAttr "rikHandControl.s" "rHandControlGroup_parentConstraint1.tg[1].ts";
connectAttr "rikHandControl.pm" "rHandControlGroup_parentConstraint1.tg[1].tpm";
connectAttr "rHandControlGroup_parentConstraint1.w1" "rHandControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent2.out[0]" "rHandControlGroup_parentConstraint1.w0";
connectAttr "main.rArmIKFK" "rHandControlGroup_parentConstraint1.w1";
connectAttr "rkneeControlvisExp.out[0]" "rkneeControl.v" -l on;
connectAttr "rFootControl.msg" "rkneeControl.zooWalkright";
connectAttr "rFootControl.msg" "rkneeControl.zooWalkleft";
connectAttr "rFootControlvisExp.out[0]" "rFootControl.v" -l on;
connectAttr "rToeControl.msg" "rFootControl.zooWalkdown";
connectAttr "rToeControl.msg" "rFootControl.zooWalkup";
connectAttr "rkneeControl.msg" "rFootControl.zooWalkleft";
connectAttr "rkneeControl.msg" "rFootControl.zooWalkright";
connectAttr "rReverseControlZeroGroup_parentConstraint1.ctx" "rReverseControlZeroGroup.tx"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.cty" "rReverseControlZeroGroup.ty"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.ctz" "rReverseControlZeroGroup.tz"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.crx" "rReverseControlZeroGroup.rx"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.cry" "rReverseControlZeroGroup.ry"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.crz" "rReverseControlZeroGroup.rz"
		;
connectAttr "unitConversion46.o" "rReverseBall.ry";
connectAttr "unitConversion44.o" "rReverseLroll.rz";
connectAttr "unitConversion45.o" "rReverseRroll.rz";
connectAttr "unitConversion40.o" "rReverseHeelLift.rx";
connectAttr "unitConversion42.o" "rReverseToeLift.rx";
connectAttr "unitConversion41.o" "rReverseAnkleLift.rx";
connectAttr "Ref:bip_hip_RIK.msg" "Ref:bip_foot_RIKikHandle.hsj";
connectAttr "effector7.hp" "Ref:bip_foot_RIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_foot_RIKikHandle.hsv";
connectAttr "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.ctx" "Ref:bip_foot_RIKikHandle.pvx"
		;
connectAttr "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.cty" "Ref:bip_foot_RIKikHandle.pvy"
		;
connectAttr "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.ctz" "Ref:bip_foot_RIKikHandle.pvz"
		;
connectAttr "Ref:bip_foot_RIKikHandle.pim" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Ref:bip_hip_RIK.pm" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Ref:bip_hip_RIK.t" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.crp"
		;
connectAttr "rkneeControl.t" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "rkneeControl.rp" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "rkneeControl.rpt" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "rkneeControl.pm" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.w0" "Ref:bip_foot_RIKikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_foot_RIK.msg" "Ref:bip_toe_RIKikHandle.hsj";
connectAttr "effector8.hp" "Ref:bip_toe_RIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_toe_RIKikHandle.hsv";
connectAttr "unitConversion43.o" "Ref:bip_toe_RIKikHandle.twi";
connectAttr "rReverseToeWiggle_orientConstraint1.crx" "rReverseToeWiggle.rx";
connectAttr "rReverseToeWiggle_orientConstraint1.cry" "rReverseToeWiggle.ry";
connectAttr "rReverseToeWiggle_orientConstraint1.crz" "rReverseToeWiggle.rz";
connectAttr "Ref:bip_toe_RIK.msg" "Ref:bip_toeEnd_RIKikHandle.hsj";
connectAttr "effector9.hp" "Ref:bip_toeEnd_RIKikHandle.hee";
connectAttr "ikRPsolver.msg" "Ref:bip_toeEnd_RIKikHandle.hsv";
connectAttr "rReverseToeWiggle.ro" "rReverseToeWiggle_orientConstraint1.cro";
connectAttr "rReverseToeWiggle.pim" "rReverseToeWiggle_orientConstraint1.cpim";
connectAttr "rToeControl.r" "rReverseToeWiggle_orientConstraint1.tg[0].tr";
connectAttr "rToeControl.ro" "rReverseToeWiggle_orientConstraint1.tg[0].tro";
connectAttr "rToeControl.pm" "rReverseToeWiggle_orientConstraint1.tg[0].tpm";
connectAttr "rReverseToeWiggle_orientConstraint1.w0" "rReverseToeWiggle_orientConstraint1.tg[0].tw"
		;
connectAttr "rToeControlvisExp.out[0]" "rToeControl.v" -l on;
connectAttr "rFootControl.msg" "rToeControl.zooWalkup";
connectAttr "rFootControl.msg" "rToeControl.zooWalkdown";
connectAttr "rReverseControlZeroGroup.ro" "rReverseControlZeroGroup_parentConstraint1.cro"
		;
connectAttr "rReverseControlZeroGroup.pim" "rReverseControlZeroGroup_parentConstraint1.cpim"
		;
connectAttr "rReverseControlZeroGroup.rp" "rReverseControlZeroGroup_parentConstraint1.crp"
		;
connectAttr "rReverseControlZeroGroup.rpt" "rReverseControlZeroGroup_parentConstraint1.crt"
		;
connectAttr "rFootControl.t" "rReverseControlZeroGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "rFootControl.rp" "rReverseControlZeroGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "rFootControl.rpt" "rReverseControlZeroGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "rFootControl.r" "rReverseControlZeroGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "rFootControl.ro" "rReverseControlZeroGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "rFootControl.s" "rReverseControlZeroGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "rFootControl.pm" "rReverseControlZeroGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "rReverseControlZeroGroup_parentConstraint1.w0" "rReverseControlZeroGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "null1_pointConstraint1.ctx" "null1.tx";
connectAttr "null1_pointConstraint1.cty" "null1.ty";
connectAttr "null1_pointConstraint1.ctz" "null1.tz";
connectAttr "lElbowControl.msg" "null1.zooTrig1";
connectAttr "null1_pointConstraint1.w0" "null1_pointConstraint1.tg[0].tw";
connectAttr "null1.pim" "null1_pointConstraint1.cpim";
connectAttr "null1.rp" "null1_pointConstraint1.crp";
connectAttr "null1.rpt" "null1_pointConstraint1.crt";
connectAttr "null2_pointConstraint1.ctx" "null2.tx";
connectAttr "null2_pointConstraint1.cty" "null2.ty";
connectAttr "null2_pointConstraint1.ctz" "null2.tz";
connectAttr "rElbowControl.msg" "null2.zooTrig1";
connectAttr "null2_pointConstraint1.w0" "null2_pointConstraint1.tg[0].tw";
connectAttr "null2.pim" "null2_pointConstraint1.cpim";
connectAttr "null2.rp" "null2_pointConstraint1.crp";
connectAttr "null2.rpt" "null2_pointConstraint1.crt";
connectAttr "null3_pointConstraint1.ctx" "null3.tx";
connectAttr "null3_pointConstraint1.cty" "null3.ty";
connectAttr "null3_pointConstraint1.ctz" "null3.tz";
connectAttr "lkneeControl.msg" "null3.zooTrig1";
connectAttr "null3_pointConstraint1.w0" "null3_pointConstraint1.tg[0].tw";
connectAttr "null3.pim" "null3_pointConstraint1.cpim";
connectAttr "null3.rp" "null3_pointConstraint1.crp";
connectAttr "null3.rpt" "null3_pointConstraint1.crt";
connectAttr "null4_pointConstraint1.ctx" "null4.tx";
connectAttr "null4_pointConstraint1.cty" "null4.ty";
connectAttr "null4_pointConstraint1.ctz" "null4.tz";
connectAttr "rkneeControl.msg" "null4.zooTrig1";
connectAttr "null4_pointConstraint1.w0" "null4_pointConstraint1.tg[0].tw";
connectAttr "null4.pim" "null4_pointConstraint1.cpim";
connectAttr "null4.rp" "null4_pointConstraint1.crp";
connectAttr "null4.rpt" "null4_pointConstraint1.crt";
connectAttr "PelvisControl.r" "Ref:bip_pelvis_orientConstraint1.tg[0].tr";
connectAttr "PelvisControl.ro" "Ref:bip_pelvis_orientConstraint1.tg[0].tro";
connectAttr "PelvisControl.pm" "Ref:bip_pelvis_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_pelvis_orientConstraint1.w0" "Ref:bip_pelvis_orientConstraint1.tg[0].tw"
		;
connectAttr "UpperbodyControl.t" "Ref:bip_pelvis_pointConstraint1.tg[0].tt";
connectAttr "UpperbodyControl.rp" "Ref:bip_pelvis_pointConstraint1.tg[0].trp";
connectAttr "UpperbodyControl.rpt" "Ref:bip_pelvis_pointConstraint1.tg[0].trt";
connectAttr "UpperbodyControl.pm" "Ref:bip_pelvis_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_pelvis_pointConstraint1.w0" "Ref:bip_pelvis_pointConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_RIK.r" "Ref:bip_hip_R_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_hip_RIK.ro" "Ref:bip_hip_R_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_hip_RIK.pm" "Ref:bip_hip_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hip_RIK.jo" "Ref:bip_hip_R_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_hip_R_orientConstraint1.w0" "Ref:bip_hip_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_RFK.r" "Ref:bip_hip_R_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_hip_RFK.ro" "Ref:bip_hip_R_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_hip_RFK.pm" "Ref:bip_hip_R_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_hip_R_orientConstraint1.w1" "Ref:bip_hip_R_orientConstraint1.tg[1].tw"
		;
connectAttr "main.rLegIKFK" "Ref:bip_hip_R_orientConstraint1.w0";
connectAttr "Ref:bip_hip_RFKswitchExp.out[0]" "Ref:bip_hip_R_orientConstraint1.w1"
		;
connectAttr "Ref:bip_knee_RIK.r" "Ref:bip_knee_R_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_knee_RIK.ro" "Ref:bip_knee_R_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_knee_RIK.pm" "Ref:bip_knee_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_knee_RIK.jo" "Ref:bip_knee_R_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_knee_R_orientConstraint1.w0" "Ref:bip_knee_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_RFK.r" "Ref:bip_knee_R_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_knee_RFK.ro" "Ref:bip_knee_R_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_knee_RFK.pm" "Ref:bip_knee_R_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_knee_R_orientConstraint1.w1" "Ref:bip_knee_R_orientConstraint1.tg[1].tw"
		;
connectAttr "main.rLegIKFK" "Ref:bip_knee_R_orientConstraint1.w0";
connectAttr "Ref:bip_knee_RFKswitchExp.out[0]" "Ref:bip_knee_R_orientConstraint1.w1"
		;
connectAttr "Ref:bip_foot_RIK.r" "Ref:bip_foot_R_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_foot_RIK.ro" "Ref:bip_foot_R_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_foot_RIK.pm" "Ref:bip_foot_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_foot_RIK.jo" "Ref:bip_foot_R_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_foot_R_orientConstraint1.w0" "Ref:bip_foot_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_foot_RFK.r" "Ref:bip_foot_R_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_foot_RFK.ro" "Ref:bip_foot_R_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_foot_RFK.pm" "Ref:bip_foot_R_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_foot_R_orientConstraint1.w1" "Ref:bip_foot_R_orientConstraint1.tg[1].tw"
		;
connectAttr "main.rLegIKFK" "Ref:bip_foot_R_orientConstraint1.w0";
connectAttr "Ref:bip_foot_RFKswitchExp.out[0]" "Ref:bip_foot_R_orientConstraint1.w1"
		;
connectAttr "Ref:bip_toe_RIK.r" "Ref:bip_toe_R_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_toe_RIK.ro" "Ref:bip_toe_R_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_toe_RIK.pm" "Ref:bip_toe_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_toe_RIK.jo" "Ref:bip_toe_R_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_toe_R_orientConstraint1.w0" "Ref:bip_toe_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_toe_RFK.r" "Ref:bip_toe_R_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_toe_RFK.ro" "Ref:bip_toe_R_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_toe_RFK.pm" "Ref:bip_toe_R_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_toe_R_orientConstraint1.w1" "Ref:bip_toe_R_orientConstraint1.tg[1].tw"
		;
connectAttr "main.rLegIKFK" "Ref:bip_toe_R_orientConstraint1.w0";
connectAttr "Ref:bip_toe_RFKswitchExp.out[0]" "Ref:bip_toe_R_orientConstraint1.w1"
		;
connectAttr "Ref:bip_hip_LIK.r" "Ref:bip_hip_L_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_hip_LIK.ro" "Ref:bip_hip_L_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_hip_LIK.pm" "Ref:bip_hip_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hip_LIK.jo" "Ref:bip_hip_L_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_hip_L_orientConstraint1.w0" "Ref:bip_hip_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_hip_LFK.r" "Ref:bip_hip_L_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_hip_LFK.ro" "Ref:bip_hip_L_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_hip_LFK.pm" "Ref:bip_hip_L_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_hip_L_orientConstraint1.w1" "Ref:bip_hip_L_orientConstraint1.tg[1].tw"
		;
connectAttr "main.lLegIKFK" "Ref:bip_hip_L_orientConstraint1.w0";
connectAttr "Ref:bip_hip_LFKswitchExp.out[0]" "Ref:bip_hip_L_orientConstraint1.w1"
		;
connectAttr "Ref:bip_knee_LIK.r" "Ref:bip_knee_L_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_knee_LIK.ro" "Ref:bip_knee_L_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_knee_LIK.pm" "Ref:bip_knee_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_knee_LIK.jo" "Ref:bip_knee_L_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_knee_L_orientConstraint1.w0" "Ref:bip_knee_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_LFK.r" "Ref:bip_knee_L_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_knee_LFK.ro" "Ref:bip_knee_L_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_knee_LFK.pm" "Ref:bip_knee_L_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_knee_L_orientConstraint1.w1" "Ref:bip_knee_L_orientConstraint1.tg[1].tw"
		;
connectAttr "main.lLegIKFK" "Ref:bip_knee_L_orientConstraint1.w0";
connectAttr "Ref:bip_knee_LFKswitchExp.out[0]" "Ref:bip_knee_L_orientConstraint1.w1"
		;
connectAttr "Ref:bip_foot_LIK.r" "Ref:bip_foot_L_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_foot_LIK.ro" "Ref:bip_foot_L_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_foot_LIK.pm" "Ref:bip_foot_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_foot_LIK.jo" "Ref:bip_foot_L_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_foot_L_orientConstraint1.w0" "Ref:bip_foot_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_foot_LFK.r" "Ref:bip_foot_L_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_foot_LFK.ro" "Ref:bip_foot_L_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_foot_LFK.pm" "Ref:bip_foot_L_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_foot_L_orientConstraint1.w1" "Ref:bip_foot_L_orientConstraint1.tg[1].tw"
		;
connectAttr "main.lLegIKFK" "Ref:bip_foot_L_orientConstraint1.w0";
connectAttr "Ref:bip_foot_LFKswitchExp.out[0]" "Ref:bip_foot_L_orientConstraint1.w1"
		;
connectAttr "Ref:bip_toe_LIK.r" "Ref:bip_toe_L_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_toe_LIK.ro" "Ref:bip_toe_L_orientConstraint1.tg[0].tro";
connectAttr "Ref:bip_toe_LIK.pm" "Ref:bip_toe_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_toe_LIK.jo" "Ref:bip_toe_L_orientConstraint1.tg[0].tjo";
connectAttr "Ref:bip_toe_L_orientConstraint1.w0" "Ref:bip_toe_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_toe_LFK.r" "Ref:bip_toe_L_orientConstraint1.tg[1].tr";
connectAttr "Ref:bip_toe_LFK.ro" "Ref:bip_toe_L_orientConstraint1.tg[1].tro";
connectAttr "Ref:bip_toe_LFK.pm" "Ref:bip_toe_L_orientConstraint1.tg[1].tpm";
connectAttr "Ref:bip_toe_L_orientConstraint1.w1" "Ref:bip_toe_L_orientConstraint1.tg[1].tw"
		;
connectAttr "main.lLegIKFK" "Ref:bip_toe_L_orientConstraint1.w0";
connectAttr "Ref:bip_toe_LFKswitchExp.out[0]" "Ref:bip_toe_L_orientConstraint1.w1"
		;
connectAttr "Ref:bip_spine_0FKcontrol.t" "Ref:bip_spine_0_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rp" "Ref:bip_spine_0_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rpt" "Ref:bip_spine_0_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.r" "Ref:bip_spine_0_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_0FKcontrol.ro" "Ref:bip_spine_0_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_0FKcontrol.s" "Ref:bip_spine_0_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_0FKcontrol.pm" "Ref:bip_spine_0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_spine_0_parentConstraint1.w0" "Ref:bip_spine_0_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_0ik.t" "Ref:bip_spine_0_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_0ik.rp" "Ref:bip_spine_0_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_0ik.rpt" "Ref:bip_spine_0_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_0ik.r" "Ref:bip_spine_0_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_0ik.ro" "Ref:bip_spine_0_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_0ik.s" "Ref:bip_spine_0_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_0ik.pm" "Ref:bip_spine_0_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_0ik.jo" "Ref:bip_spine_0_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_spine_0_parentConstraint1.w1" "Ref:bip_spine_0_parentConstraint1.tg[1].tw"
		;
connectAttr "FKspineExp.out[0]" "Ref:bip_spine_0_parentConstraint1.w0";
connectAttr "main.spineIKFK" "Ref:bip_spine_0_parentConstraint1.w1";
connectAttr "Ref:bip_spine_1FKcontrol.t" "Ref:bip_spine_1_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.rp" "Ref:bip_spine_1_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_1FKcontrol.rpt" "Ref:bip_spine_1_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.r" "Ref:bip_spine_1_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_1FKcontrol.ro" "Ref:bip_spine_1_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_1FKcontrol.s" "Ref:bip_spine_1_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_1FKcontrol.pm" "Ref:bip_spine_1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_spine_1_parentConstraint1.w0" "Ref:bip_spine_1_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_1ik.t" "Ref:bip_spine_1_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_1ik.rp" "Ref:bip_spine_1_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_1ik.rpt" "Ref:bip_spine_1_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_1ik.r" "Ref:bip_spine_1_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_1ik.ro" "Ref:bip_spine_1_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_1ik.s" "Ref:bip_spine_1_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_1ik.pm" "Ref:bip_spine_1_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_1ik.jo" "Ref:bip_spine_1_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_spine_1_parentConstraint1.w1" "Ref:bip_spine_1_parentConstraint1.tg[1].tw"
		;
connectAttr "FKspineExp1.out[0]" "Ref:bip_spine_1_parentConstraint1.w0";
connectAttr "main.spineIKFK" "Ref:bip_spine_1_parentConstraint1.w1";
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:bip_spine_2_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:bip_spine_2_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:bip_spine_2_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:bip_spine_2_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:bip_spine_2_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:bip_spine_2_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:bip_spine_2_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_spine_2_parentConstraint1.w0" "Ref:bip_spine_2_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2ik.t" "Ref:bip_spine_2_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_2ik.rp" "Ref:bip_spine_2_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2ik.rpt" "Ref:bip_spine_2_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2ik.r" "Ref:bip_spine_2_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_2ik.ro" "Ref:bip_spine_2_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2ik.s" "Ref:bip_spine_2_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_2ik.pm" "Ref:bip_spine_2_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_2ik.jo" "Ref:bip_spine_2_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_spine_2_parentConstraint1.w1" "Ref:bip_spine_2_parentConstraint1.tg[1].tw"
		;
connectAttr "FKspineExp2.out[0]" "Ref:bip_spine_2_parentConstraint1.w0";
connectAttr "main.spineIKFK" "Ref:bip_spine_2_parentConstraint1.w1";
connectAttr "Ref:bip_spine_3FKcontrol.t" "Ref:bip_spine_3_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rp" "Ref:bip_spine_3_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rpt" "Ref:bip_spine_3_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.r" "Ref:bip_spine_3_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_3FKcontrol.ro" "Ref:bip_spine_3_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_3FKcontrol.s" "Ref:bip_spine_3_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_3FKcontrol.pm" "Ref:bip_spine_3_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_spine_3_parentConstraint1.w0" "Ref:bip_spine_3_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_3ik.t" "Ref:bip_spine_3_parentConstraint1.tg[1].tt";
connectAttr "Ref:bip_spine_3ik.rp" "Ref:bip_spine_3_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_3ik.rpt" "Ref:bip_spine_3_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_3ik.r" "Ref:bip_spine_3_parentConstraint1.tg[1].tr";
connectAttr "Ref:bip_spine_3ik.ro" "Ref:bip_spine_3_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_3ik.s" "Ref:bip_spine_3_parentConstraint1.tg[1].ts";
connectAttr "Ref:bip_spine_3ik.pm" "Ref:bip_spine_3_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_3ik.jo" "Ref:bip_spine_3_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_spine_3_parentConstraint1.w1" "Ref:bip_spine_3_parentConstraint1.tg[1].tw"
		;
connectAttr "FKspineExp3.out[0]" "Ref:bip_spine_3_parentConstraint1.w0";
connectAttr "main.spineIKFK" "Ref:bip_spine_3_parentConstraint1.w1";
connectAttr "rShoulderControl.r" "Ref:bip_collar_R_orientConstraint1.tg[0].tr";
connectAttr "rShoulderControl.ro" "Ref:bip_collar_R_orientConstraint1.tg[0].tro"
		;
connectAttr "rShoulderControl.pm" "Ref:bip_collar_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_collar_R_orientConstraint1.w0" "Ref:bip_collar_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RFK.r" "Ref:bip_upperArm_R_orientConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_upperArm_RFK.ro" "Ref:bip_upperArm_R_orientConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_upperArm_RFK.pm" "Ref:bip_upperArm_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_upperArm_R_orientConstraint1.w0" "Ref:bip_upperArm_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_RIK.r" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_upperArm_RIK.ro" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_upperArm_RIK.pm" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_upperArm_RIK.jo" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_upperArm_R_orientConstraint1.w1" "Ref:bip_upperArm_R_orientConstraint1.tg[1].tw"
		;
connectAttr "Ref:bip_upperArm_RFKswtichExp.out[0]" "Ref:bip_upperArm_R_orientConstraint1.w0"
		;
connectAttr "main.rArmIKFK" "Ref:bip_upperArm_R_orientConstraint1.w1";
connectAttr "Ref:bip_lowerArm_RFK.r" "Ref:bip_lowerArm_R_orientConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_RFK.ro" "Ref:bip_lowerArm_R_orientConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_RFK.pm" "Ref:bip_lowerArm_R_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.w0" "Ref:bip_lowerArm_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_RIK.r" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_RIK.ro" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_RIK.pm" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_RIK.jo" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.w1" "Ref:bip_lowerArm_R_orientConstraint1.tg[1].tw"
		;
connectAttr "Ref:bip_lowerArm_RFKswitchExp.out[0]" "Ref:bip_lowerArm_R_orientConstraint1.w0"
		;
connectAttr "main.rArmIKFK" "Ref:bip_lowerArm_R_orientConstraint1.w1";
connectAttr "rHandControl.r" "Ref:bip_hand_R_orientConstraint1.tg[0].tr";
connectAttr "rHandControl.ro" "Ref:bip_hand_R_orientConstraint1.tg[0].tro";
connectAttr "rHandControl.pm" "Ref:bip_hand_R_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_R_orientConstraint1.w0" "Ref:bip_hand_R_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_0_RControl.t" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_0_RControl.rp" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_0_RControl.rpt" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_0_RControl.r" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_0_RControl.ro" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_0_RControl.s" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_0_RControl.pm" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.w0" "Ref:bip_pinky_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_1_RControl.t" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_1_RControl.rp" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_1_RControl.rpt" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_1_RControl.r" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_1_RControl.ro" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_1_RControl.s" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_1_RControl.pm" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.w0" "Ref:bip_pinky_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_2_RControl.t" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_2_RControl.rp" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_2_RControl.rpt" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_2_RControl.r" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_2_RControl.ro" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_2_RControl.s" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_2_RControl.pm" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.w0" "Ref:bip_pinky_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_0_RControl.t" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_0_RControl.rp" "Ref:bip_ring_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_0_RControl.rpt" "Ref:bip_ring_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_0_RControl.r" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_0_RControl.ro" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_0_RControl.s" "Ref:bip_ring_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_0_RControl.pm" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_0_R_parentConstraint1.w0" "Ref:bip_ring_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_1_RControl.t" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_1_RControl.rp" "Ref:bip_ring_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_1_RControl.rpt" "Ref:bip_ring_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_1_RControl.r" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_1_RControl.ro" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_1_RControl.s" "Ref:bip_ring_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_1_RControl.pm" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_1_R_parentConstraint1.w0" "Ref:bip_ring_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_2_RControl.t" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_2_RControl.rp" "Ref:bip_ring_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_2_RControl.rpt" "Ref:bip_ring_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_2_RControl.r" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_2_RControl.ro" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_2_RControl.s" "Ref:bip_ring_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_2_RControl.pm" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_2_R_parentConstraint1.w0" "Ref:bip_ring_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_0_RControl.t" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_0_RControl.rp" "Ref:bip_middle_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_0_RControl.rpt" "Ref:bip_middle_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_0_RControl.r" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_0_RControl.ro" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_0_RControl.s" "Ref:bip_middle_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_0_RControl.pm" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_0_R_parentConstraint1.w0" "Ref:bip_middle_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_1_RControl.t" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_1_RControl.rp" "Ref:bip_middle_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_1_RControl.rpt" "Ref:bip_middle_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_1_RControl.r" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_1_RControl.ro" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_1_RControl.s" "Ref:bip_middle_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_1_RControl.pm" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_1_R_parentConstraint1.w0" "Ref:bip_middle_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_2_RControl.t" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_2_RControl.rp" "Ref:bip_middle_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_2_RControl.rpt" "Ref:bip_middle_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_2_RControl.r" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_2_RControl.ro" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_2_RControl.s" "Ref:bip_middle_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_2_RControl.pm" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_2_R_parentConstraint1.w0" "Ref:bip_middle_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_0_RControl.t" "Ref:bip_index_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_0_RControl.rp" "Ref:bip_index_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_0_RControl.rpt" "Ref:bip_index_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_0_RControl.r" "Ref:bip_index_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_0_RControl.ro" "Ref:bip_index_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_0_RControl.s" "Ref:bip_index_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_0_RControl.pm" "Ref:bip_index_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_0_R_parentConstraint1.w0" "Ref:bip_index_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_1_RControl.t" "Ref:bip_index_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_1_RControl.rp" "Ref:bip_index_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_1_RControl.rpt" "Ref:bip_index_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_1_RControl.r" "Ref:bip_index_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_1_RControl.ro" "Ref:bip_index_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_1_RControl.s" "Ref:bip_index_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_1_RControl.pm" "Ref:bip_index_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_1_R_parentConstraint1.w0" "Ref:bip_index_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_2_RControl.t" "Ref:bip_index_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_2_RControl.rp" "Ref:bip_index_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_2_RControl.rpt" "Ref:bip_index_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_2_RControl.r" "Ref:bip_index_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_2_RControl.ro" "Ref:bip_index_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_2_RControl.s" "Ref:bip_index_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_2_RControl.pm" "Ref:bip_index_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_2_R_parentConstraint1.w0" "Ref:bip_index_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_0_RControl.t" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_0_RControl.rp" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_0_RControl.rpt" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_0_RControl.r" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_0_RControl.ro" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_0_RControl.s" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_0_RControl.pm" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.w0" "Ref:bip_thumb_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_1_RControl.t" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_1_RControl.rp" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_1_RControl.rpt" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_1_RControl.r" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_1_RControl.ro" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_1_RControl.s" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_1_RControl.pm" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.w0" "Ref:bip_thumb_1_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_2_RControl.t" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_2_RControl.rp" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_2_RControl.rpt" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_2_RControl.r" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_2_RControl.ro" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_2_RControl.s" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_2_RControl.pm" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.w0" "Ref:bip_thumb_2_R_parentConstraint1.tg[0].tw"
		;
connectAttr "lShoulderControl.r" "Ref:bip_collar_L_orientConstraint1.tg[0].tr";
connectAttr "lShoulderControl.ro" "Ref:bip_collar_L_orientConstraint1.tg[0].tro"
		;
connectAttr "lShoulderControl.pm" "Ref:bip_collar_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_collar_L_orientConstraint1.w0" "Ref:bip_collar_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_LFK.r" "Ref:bip_upperArm_L_orientConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_upperArm_LFK.ro" "Ref:bip_upperArm_L_orientConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_upperArm_LFK.pm" "Ref:bip_upperArm_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_upperArm_L_orientConstraint1.w0" "Ref:bip_upperArm_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_upperArm_LIK.r" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_upperArm_LIK.ro" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_upperArm_LIK.pm" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_upperArm_LIK.jo" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_upperArm_L_orientConstraint1.w1" "Ref:bip_upperArm_L_orientConstraint1.tg[1].tw"
		;
connectAttr "Ref:bip_upperArm_LFKswtichExp.out[0]" "Ref:bip_upperArm_L_orientConstraint1.w0"
		;
connectAttr "main.lArmIKFK" "Ref:bip_upperArm_L_orientConstraint1.w1";
connectAttr "Ref:bip_lowerArm_LFK.r" "Ref:bip_lowerArm_L_orientConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_LFK.ro" "Ref:bip_lowerArm_L_orientConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_LFK.pm" "Ref:bip_lowerArm_L_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.w0" "Ref:bip_lowerArm_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_LIK.r" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_LIK.ro" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_LIK.pm" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_LIK.jo" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tjo"
		;
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.w1" "Ref:bip_lowerArm_L_orientConstraint1.tg[1].tw"
		;
connectAttr "Ref:bip_lowerArm_LFKswitchExp.out[0]" "Ref:bip_lowerArm_L_orientConstraint1.w0"
		;
connectAttr "main.lArmIKFK" "Ref:bip_lowerArm_L_orientConstraint1.w1";
connectAttr "lHandControl.r" "Ref:bip_hand_L_orientConstraint1.tg[0].tr";
connectAttr "lHandControl.ro" "Ref:bip_hand_L_orientConstraint1.tg[0].tro";
connectAttr "lHandControl.pm" "Ref:bip_hand_L_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_L_orientConstraint1.w0" "Ref:bip_hand_L_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_0_LControl.t" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_0_LControl.rp" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_0_LControl.rpt" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_0_LControl.r" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_0_LControl.ro" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_0_LControl.s" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_0_LControl.pm" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.w0" "Ref:bip_pinky_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_1_LControl.t" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_1_LControl.rp" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_1_LControl.rpt" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_1_LControl.r" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_1_LControl.ro" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_1_LControl.s" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_1_LControl.pm" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.w0" "Ref:bip_pinky_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_pinky_2_LControl.t" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_pinky_2_LControl.rp" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_pinky_2_LControl.rpt" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_pinky_2_LControl.r" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_pinky_2_LControl.ro" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_pinky_2_LControl.s" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_pinky_2_LControl.pm" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.w0" "Ref:bip_pinky_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_0_LControl.t" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_0_LControl.rp" "Ref:bip_ring_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_0_LControl.rpt" "Ref:bip_ring_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_0_LControl.r" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_0_LControl.ro" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_0_LControl.s" "Ref:bip_ring_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_0_LControl.pm" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_0_L_parentConstraint1.w0" "Ref:bip_ring_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_1_LControl.t" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_1_LControl.rp" "Ref:bip_ring_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_1_LControl.rpt" "Ref:bip_ring_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_1_LControl.r" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_1_LControl.ro" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_1_LControl.s" "Ref:bip_ring_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_1_LControl.pm" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_1_L_parentConstraint1.w0" "Ref:bip_ring_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_ring_2_LControl.t" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_ring_2_LControl.rp" "Ref:bip_ring_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_ring_2_LControl.rpt" "Ref:bip_ring_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_ring_2_LControl.r" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_ring_2_LControl.ro" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_ring_2_LControl.s" "Ref:bip_ring_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_ring_2_LControl.pm" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_ring_2_L_parentConstraint1.w0" "Ref:bip_ring_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_0_LControl.t" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_0_LControl.rp" "Ref:bip_middle_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_0_LControl.rpt" "Ref:bip_middle_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_0_LControl.r" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_0_LControl.ro" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_0_LControl.s" "Ref:bip_middle_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_0_LControl.pm" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_0_L_parentConstraint1.w0" "Ref:bip_middle_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_1_LControl.t" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_1_LControl.rp" "Ref:bip_middle_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_1_LControl.rpt" "Ref:bip_middle_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_1_LControl.r" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_1_LControl.ro" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_1_LControl.s" "Ref:bip_middle_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_1_LControl.pm" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_1_L_parentConstraint1.w0" "Ref:bip_middle_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_middle_2_LControl.t" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_middle_2_LControl.rp" "Ref:bip_middle_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_middle_2_LControl.rpt" "Ref:bip_middle_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_middle_2_LControl.r" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_middle_2_LControl.ro" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_middle_2_LControl.s" "Ref:bip_middle_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_middle_2_LControl.pm" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_middle_2_L_parentConstraint1.w0" "Ref:bip_middle_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_0_LControl.t" "Ref:bip_index_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_0_LControl.rp" "Ref:bip_index_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_0_LControl.rpt" "Ref:bip_index_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_0_LControl.r" "Ref:bip_index_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_0_LControl.ro" "Ref:bip_index_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_0_LControl.s" "Ref:bip_index_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_0_LControl.pm" "Ref:bip_index_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_0_L_parentConstraint1.w0" "Ref:bip_index_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_1_LControl.t" "Ref:bip_index_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_1_LControl.rp" "Ref:bip_index_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_1_LControl.rpt" "Ref:bip_index_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_1_LControl.r" "Ref:bip_index_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_1_LControl.ro" "Ref:bip_index_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_1_LControl.s" "Ref:bip_index_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_1_LControl.pm" "Ref:bip_index_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_1_L_parentConstraint1.w0" "Ref:bip_index_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_index_2_LControl.t" "Ref:bip_index_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_index_2_LControl.rp" "Ref:bip_index_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_index_2_LControl.rpt" "Ref:bip_index_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_index_2_LControl.r" "Ref:bip_index_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_index_2_LControl.ro" "Ref:bip_index_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_index_2_LControl.s" "Ref:bip_index_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_index_2_LControl.pm" "Ref:bip_index_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_index_2_L_parentConstraint1.w0" "Ref:bip_index_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_0_LControl.t" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_0_LControl.rp" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_0_LControl.rpt" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_0_LControl.r" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_0_LControl.ro" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_0_LControl.s" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_0_LControl.pm" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.w0" "Ref:bip_thumb_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_1_LControl.t" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_1_LControl.rp" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_1_LControl.rpt" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_1_LControl.r" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_1_LControl.ro" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_1_LControl.s" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_1_LControl.pm" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.w0" "Ref:bip_thumb_1_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_thumb_2_LControl.t" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_thumb_2_LControl.rp" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_thumb_2_LControl.rpt" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_thumb_2_LControl.r" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_thumb_2_LControl.ro" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_thumb_2_LControl.s" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_thumb_2_LControl.pm" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.w0" "Ref:bip_thumb_2_L_parentConstraint1.tg[0].tw"
		;
connectAttr "neckControl.r" "Ref:bip_neck_orientConstraint1.tg[0].tr";
connectAttr "neckControl.ro" "Ref:bip_neck_orientConstraint1.tg[0].tro";
connectAttr "neckControl.pm" "Ref:bip_neck_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_neck_orientConstraint1.w0" "Ref:bip_neck_orientConstraint1.tg[0].tw"
		;
connectAttr "headControl.r" "Ref:bip_head_orientConstraint1.tg[0].tr";
connectAttr "headControl.ro" "Ref:bip_head_orientConstraint1.tg[0].tro";
connectAttr "headControl.pm" "Ref:bip_head_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_head_orientConstraint1.w0" "Ref:bip_head_orientConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RefRN.phl[2114]" "RefRN.phl[1350]";
connectAttr "RefRN.phl[2116]" "RefRN.phl[1355]";
connectAttr "RefRN.phl[2122]" "RefRN.phl[1397]";
connectAttr "RefRN.phl[4971]" "RefRN.phl[2839]";
connectAttr "RefRN.phl[4246]" "RefRN.phl[4247]";
connectAttr "main.main" "RefRN.phl[4248]";
connectAttr "plotted.plotted" "RefRN.phl[4249]";
connectAttr "UpperbodyControl.upperBodyControl" "RefRN.phl[4250]";
connectAttr "PelvisControl.pelvisControl" "RefRN.phl[4251]";
connectAttr "Ref:bip_spine_0FKcontrol.fkSpine0" "RefRN.phl[4252]";
connectAttr "Ref:bip_spine_1FKcontrol.fkSpine1" "RefRN.phl[4253]";
connectAttr "Ref:bip_spine_2FKcontrol.fkSpine2" "RefRN.phl[4254]";
connectAttr "Ref:bip_spine_3FKcontrol.fkSpine3" "RefRN.phl[4255]";
connectAttr "Ref:bip_spine_0ik.ikSpine0" "RefRN.phl[4256]";
connectAttr "Ref:bip_spine_1ik.ikSpine1" "RefRN.phl[4257]";
connectAttr "Ref:bip_spine_2ik.ikSpine2" "RefRN.phl[4258]";
connectAttr "Ref:bip_spine_3ik.ikSpine3" "RefRN.phl[4259]";
connectAttr "chestParent.chestParent" "RefRN.phl[4260]";
connectAttr "neckControl.neckControl" "RefRN.phl[4261]";
connectAttr "headControl.headControl" "RefRN.phl[4262]";
connectAttr "lShoulderControl.lFKshoulderControl" "RefRN.phl[4263]";
connectAttr "Ref:bip_upperArm_LFK.lFKshoulder" "RefRN.phl[4264]";
connectAttr "Ref:bip_lowerArm_LFK.lFKelbow" "RefRN.phl[4265]";
connectAttr "Ref:bip_hand_LFK.lFKwrist" "RefRN.phl[4266]";
connectAttr "Ref:bip_upperArm_LIK.lIKshoulder" "RefRN.phl[4267]";
connectAttr "Ref:bip_lowerArm_LIK.lIKelbow" "RefRN.phl[4268]";
connectAttr "Ref:bip_hand_LIK.lIKwrist" "RefRN.phl[4269]";
connectAttr "likHandControl.lIKcontrol" "RefRN.phl[4270]";
connectAttr "likHandControlWeaponGroup.lWeaponAttach" "RefRN.phl[4271]";
connectAttr "lElbowControl.lElbowControl" "RefRN.phl[4272]";
connectAttr "Ref:bip_hip_LIK.lIKupLeg" "RefRN.phl[4273]";
connectAttr "Ref:bip_knee_LIK.lIKknee" "RefRN.phl[4274]";
connectAttr "Ref:bip_foot_LIK.lIKankle" "RefRN.phl[4275]";
connectAttr "Ref:bip_toe_LIK.lIKtoe" "RefRN.phl[4276]";
connectAttr "Ref:bip_toeEnd_LIK.lIKtoeEnd" "RefRN.phl[4277]";
connectAttr "Ref:bip_hip_LFK.lFKupLeg" "RefRN.phl[4278]";
connectAttr "Ref:bip_knee_LFK.lFKknee" "RefRN.phl[4279]";
connectAttr "Ref:bip_foot_LFK.lFKankle" "RefRN.phl[4280]";
connectAttr "Ref:bip_toe_LFK.lFKtoe" "RefRN.phl[4281]";
connectAttr "lkneeControl.lKneeControl" "RefRN.phl[4282]";
connectAttr "lFootControl.lFootControl" "RefRN.phl[4283]";
connectAttr "lToeControl.lToeControl" "RefRN.phl[4284]";
connectAttr "rShoulderControl.rFKshoulderControl" "RefRN.phl[4285]";
connectAttr "Ref:bip_upperArm_RFK.rFKshoulder" "RefRN.phl[4286]";
connectAttr "Ref:bip_lowerArm_RFK.rFKelbow" "RefRN.phl[4287]";
connectAttr "Ref:bip_hand_RFK.rFKwrist" "RefRN.phl[4288]";
connectAttr "Ref:bip_upperArm_RIK.rIKshoulder" "RefRN.phl[4289]";
connectAttr "Ref:bip_lowerArm_RIK.rIKelbow" "RefRN.phl[4290]";
connectAttr "Ref:bip_hand_RIK.rIKwrist" "RefRN.phl[4291]";
connectAttr "rikHandControl.rIKcontrol" "RefRN.phl[4292]";
connectAttr "rikHandControlWeaponGroup.rWeaponAttach" "RefRN.phl[4293]";
connectAttr "rElbowControl.rElbowControl" "RefRN.phl[4294]";
connectAttr "Ref:bip_hip_RIK.rIKupLeg" "RefRN.phl[4295]";
connectAttr "Ref:bip_knee_RIK.rIKknee" "RefRN.phl[4296]";
connectAttr "Ref:bip_foot_RIK.rIKankle" "RefRN.phl[4297]";
connectAttr "Ref:bip_toe_RIK.rIKtoe" "RefRN.phl[4298]";
connectAttr "Ref:bip_toeEnd_RIK.rIKtoeEnd" "RefRN.phl[4299]";
connectAttr "Ref:bip_hip_RFK.rFKupLeg" "RefRN.phl[4300]";
connectAttr "Ref:bip_knee_RFK.rFKknee" "RefRN.phl[4301]";
connectAttr "Ref:bip_foot_RFK.rFKankle" "RefRN.phl[4302]";
connectAttr "Ref:bip_toe_RFK.rFKtoe" "RefRN.phl[4303]";
connectAttr "rkneeControl.rKneeControl" "RefRN.phl[4304]";
connectAttr "rFootControl.rFootControl" "RefRN.phl[4305]";
connectAttr "rToeControl.rToeControl" "RefRN.phl[4306]";
connectAttr "RefRN.phl[4936]" "RefRN.phl[4937]";
connectAttr "neckControl.iog" "RefRN.phl[4938]";
connectAttr "headControl.iog" "RefRN.phl[4939]";
connectAttr "lFootControl.iog" "RefRN.phl[4940]";
connectAttr "lToeControl.iog" "RefRN.phl[4941]";
connectAttr "rFootControl.iog" "RefRN.phl[4942]";
connectAttr "rToeControl.iog" "RefRN.phl[4943]";
connectAttr "rkneeControl.iog" "RefRN.phl[4944]";
connectAttr "lkneeControl.iog" "RefRN.phl[4945]";
connectAttr "Ref:bip_hand_LFK.iog" "RefRN.phl[4946]";
connectAttr "Ref:bip_hand_RFK.iog" "RefRN.phl[4947]";
connectAttr "Ref:bip_upperArm_LFK.iog" "RefRN.phl[4948]";
connectAttr "Ref:bip_upperArm_RFK.iog" "RefRN.phl[4949]";
connectAttr "likHandControl.iog" "RefRN.phl[4950]";
connectAttr "lHandControl.iog" "RefRN.phl[4951]";
connectAttr "rikHandControl.iog" "RefRN.phl[4952]";
connectAttr "rHandControl.iog" "RefRN.phl[4953]";
connectAttr "lElbowControl.iog" "RefRN.phl[4954]";
connectAttr "rElbowControl.iog" "RefRN.phl[4955]";
connectAttr "Ref:bip_hand_LFK.iog" "RefRN.phl[4956]";
connectAttr "Ref:bip_hand_RFK.iog" "RefRN.phl[4957]";
connectAttr "likHandControl.iog" "RefRN.phl[4958]";
connectAttr "lHandControl.iog" "RefRN.phl[4959]";
connectAttr "rikHandControl.iog" "RefRN.phl[4960]";
connectAttr "rHandControl.iog" "RefRN.phl[4961]";
connectAttr "RefRN.phl[4962]" "RefRN.phl[4963]";
connectAttr "RefRN.phl[4964]" "RefRN.phl[4965]";
connectAttr "rShoulderControlShape.iog" "RefRN.phl[4966]";
connectAttr "lShoulderControlShape.iog" "RefRN.phl[4967]";
connectAttr "Ref:bip_spine_0FKcontrol.iog" "RefRN.phl[4968]";
connectAttr "PelvisControlShape.iog" "RefRN.phl[4969]";
connectAttr "UpperbodyControlShape.iog" "RefRN.phl[4970]";
connectAttr "RefRNfosterParent1.msg" "RefRN.fp";
connectAttr "sharedReferenceNode.sr" "RefRN.sr";
connectAttr "main.iog" "plotted.dsm" -na;
connectAttr "UpperbodyControl.iog" "plotted.dsm" -na;
connectAttr "PelvisControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "plotted.dsm" -na;
connectAttr "ikChest.iog" "plotted.dsm" -na;
connectAttr "neckControl.iog" "plotted.dsm" -na;
connectAttr "headControl.iog" "plotted.dsm" -na;
connectAttr "lShoulderControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_upperArm_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_lowerArm_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hand_LFK.iog" "plotted.dsm" -na;
connectAttr "likHandControl.iog" "plotted.dsm" -na;
connectAttr "lElbowControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hip_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_knee_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_foot_LFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_toe_LFK.iog" "plotted.dsm" -na;
connectAttr "lkneeControl.iog" "plotted.dsm" -na;
connectAttr "lFootControl.iog" "plotted.dsm" -na;
connectAttr "lToeControl.iog" "plotted.dsm" -na;
connectAttr "rShoulderControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_upperArm_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_lowerArm_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hand_RFK.iog" "plotted.dsm" -na;
connectAttr "rikHandControl.iog" "plotted.dsm" -na;
connectAttr "rElbowControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "plotted.dsm" -na;
connectAttr "rkneeControl.iog" "plotted.dsm" -na;
connectAttr "rFootControl.iog" "plotted.dsm" -na;
connectAttr "rToeControl.iog" "plotted.dsm" -na;
connectAttr "lHandControl.iog" "plotted.dsm" -na;
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "hands_L.msg" "plotted.dnsm" -na;
connectAttr "hands_R.msg" "plotted.dnsm" -na;
connectAttr "main.spineIKFK" "FKspineExp.in[0]";
connectAttr ":time1.o" "FKspineExp.tim";
connectAttr "main.spineIKFK" "FKspineExp1.in[0]";
connectAttr ":time1.o" "FKspineExp1.tim";
connectAttr "main.spineIKFK" "FKspineExp2.in[0]";
connectAttr ":time1.o" "FKspineExp2.tim";
connectAttr "main.spineIKFK" "FKspineExp3.in[0]";
connectAttr ":time1.o" "FKspineExp3.tim";
connectAttr "main.spineIKFK" "Ref:bip_spine_0FKcontrolvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_spine_0FKcontrolvisExp.tim";
connectAttr "main.spineIKFK" "ikChestvisExp.in[0]";
connectAttr ":time1.o" "ikChestvisExp.tim";
connectAttr "makeNurbCylinder1.os" "transformGeometry1.ig";
connectAttr "main.spineIKFK" "SpineCurvevisExp.in[0]";
connectAttr ":time1.o" "SpineCurvevisExp.tim";
connectAttr "cluster1GroupParts.og" "ikChestClusterCluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "ikChestClusterCluster.ip[0].gi";
connectAttr "ikChestCluster.wm" "ikChestClusterCluster.ma";
connectAttr "ikChestClusterShape.x" "ikChestClusterCluster.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "SpineCurveShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "ikChestClusterCluster.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "SpineCurveShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "SpineCurveShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster2GroupParts.og" "ikPelvisClusterCluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "ikPelvisClusterCluster.ip[0].gi";
connectAttr "ikPelvisCluster.wm" "ikPelvisClusterCluster.ma";
connectAttr "ikPelvisClusterShape.x" "ikPelvisClusterCluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "SpineCurveShape.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "ikPelvisClusterCluster.msg" "cluster2Set.ub[0]";
connectAttr "ikChestClusterCluster.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "SpineCurveShape.ws" "curveInfo1.ic";
connectAttr "curveInfo1.al" "stretchyBack.in[0]";
connectAttr ":time1.o" "stretchyBack.tim";
connectAttr "curveInfo1.al" "stretchyBack1.in[0]";
connectAttr ":time1.o" "stretchyBack1.tim";
connectAttr "curveInfo1.al" "stretchyBack2.in[0]";
connectAttr ":time1.o" "stretchyBack2.tim";
connectAttr "curveInfo1.al" "stretchyBack3.in[0]";
connectAttr ":time1.o" "stretchyBack3.tim";
connectAttr "unitConversion1.o" "ikSpineTwist.in[0]";
connectAttr ":time1.o" "ikSpineTwist.tim";
connectAttr "ikChest.ry" "unitConversion1.i";
connectAttr "ikSpineTwist.out[0]" "unitConversion2.i";
connectAttr "main.spineIKFK" "fkParent.in[0]";
connectAttr ":time1.o" "fkParent.tim";
connectAttr "neckControl.lock" "neckControlLockParentlock.in[0]";
connectAttr ":time1.o" "neckControlLockParentlock.tim";
connectAttr "headControl.lock" "headControlLockParentlock.in[0]";
connectAttr ":time1.o" "headControlLockParentlock.tim";
connectAttr "main.lArmIKFK" "Ref:bip_upperArm_LFKswtichExp.in[0]";
connectAttr ":time1.o" "Ref:bip_upperArm_LFKswtichExp.tim";
connectAttr "main.lArmIKFK" "Ref:bip_lowerArm_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_lowerArm_LFKswitchExp.tim";
connectAttr "main.lArmIKFK" "Ref:bip_upperArm_LFKvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_upperArm_LFKvisExp.tim";
connectAttr "likHandControl.lock" "likHandControllockExp.in[0]";
connectAttr ":time1.o" "likHandControllockExp.tim";
connectAttr "main.lArmIKFK" "likHandControlvisExp.in[0]";
connectAttr ":time1.o" "likHandControlvisExp.tim";
connectAttr "main.lArmIKFK" "lElbowControlvisExp.in[0]";
connectAttr ":time1.o" "lElbowControlvisExp.tim";
connectAttr "lHandControl.bip_thumb_0_LControlRoll" "unitConversion3.i";
connectAttr "lHandControl.bip_thumb_0_LControlRoll" "unitConversion4.i";
connectAttr "lHandControl.bip_thumb_0_LControlRoll" "unitConversion5.i";
connectAttr "lHandControl.bip_index_0_LControlRoll" "unitConversion6.i";
connectAttr "lHandControl.bip_index_0_LControlRoll" "unitConversion7.i";
connectAttr "lHandControl.bip_index_0_LControlRoll" "unitConversion8.i";
connectAttr "lHandControl.bip_middle_0_LControlRoll" "unitConversion9.i";
connectAttr "lHandControl.bip_middle_0_LControlRoll" "unitConversion10.i";
connectAttr "lHandControl.bip_middle_0_LControlRoll" "unitConversion11.i";
connectAttr "lHandControl.bip_ring_0_LControlRoll" "unitConversion12.i";
connectAttr "lHandControl.bip_ring_0_LControlRoll" "unitConversion13.i";
connectAttr "lHandControl.bip_ring_0_LControlRoll" "unitConversion14.i";
connectAttr "lHandControl.bip_pinky_0_LControlRoll" "unitConversion15.i";
connectAttr "lHandControl.bip_pinky_0_LControlRoll" "unitConversion16.i";
connectAttr "lHandControl.bip_pinky_0_LControlRoll" "unitConversion17.i";
connectAttr "main.lArmIKFK" "fkParent1.in[0]";
connectAttr ":time1.o" "fkParent1.tim";
connectAttr "main.lLegIKFK" "Ref:bip_hip_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_hip_LFKswitchExp.tim";
connectAttr "main.lLegIKFK" "Ref:bip_knee_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_knee_LFKswitchExp.tim";
connectAttr "main.lLegIKFK" "Ref:bip_foot_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_foot_LFKswitchExp.tim";
connectAttr "main.lLegIKFK" "Ref:bip_toe_LFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_toe_LFKswitchExp.tim";
connectAttr "main.lLegIKFK" "Ref:bip_hip_LFKvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_hip_LFKvisExp.tim";
connectAttr "main.lLegIKFK" "lkneeControlvisExp.in[0]";
connectAttr ":time1.o" "lkneeControlvisExp.tim";
connectAttr "lFootControl.heelRock" "unitConversion18.i";
connectAttr "lFootControl.ankleLift" "unitConversion19.i";
connectAttr "lFootControl.toeLift" "unitConversion20.i";
connectAttr "lFootControl.ankleBank" "unitConversion21.i";
connectAttr "lFootControl.rockR" "unitConversion22.i";
connectAttr "lFootControl.rockL" "lrockLexp.in[0]";
connectAttr ":time1.o" "lrockLexp.tim";
connectAttr "lrockLexp.out[0]" "unitConversion23.i";
connectAttr "lFootControl.ballPivot" "unitConversion24.i";
connectAttr "main.lLegIKFK" "lFootControlvisExp.in[0]";
connectAttr ":time1.o" "lFootControlvisExp.tim";
connectAttr "main.lLegIKFK" "lToeControlvisExp.in[0]";
connectAttr ":time1.o" "lToeControlvisExp.tim";
connectAttr "main.rArmIKFK" "Ref:bip_upperArm_RFKswtichExp.in[0]";
connectAttr ":time1.o" "Ref:bip_upperArm_RFKswtichExp.tim";
connectAttr "main.rArmIKFK" "Ref:bip_lowerArm_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_lowerArm_RFKswitchExp.tim";
connectAttr "main.rArmIKFK" "Ref:bip_upperArm_RFKvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_upperArm_RFKvisExp.tim";
connectAttr "rikHandControl.lock" "rikHandControllockExp.in[0]";
connectAttr ":time1.o" "rikHandControllockExp.tim";
connectAttr "main.rArmIKFK" "rikHandControlvisExp.in[0]";
connectAttr ":time1.o" "rikHandControlvisExp.tim";
connectAttr "main.rArmIKFK" "rElbowControlvisExp.in[0]";
connectAttr ":time1.o" "rElbowControlvisExp.tim";
connectAttr "rHandControl.bip_thumb_0_RControlRoll" "unitConversion25.i";
connectAttr "rHandControl.bip_thumb_0_RControlRoll" "unitConversion26.i";
connectAttr "rHandControl.bip_thumb_0_RControlRoll" "unitConversion27.i";
connectAttr "rHandControl.bip_index_0_RControlRoll" "unitConversion28.i";
connectAttr "rHandControl.bip_index_0_RControlRoll" "unitConversion29.i";
connectAttr "rHandControl.bip_index_0_RControlRoll" "unitConversion30.i";
connectAttr "rHandControl.bip_middle_0_RControlRoll" "unitConversion31.i";
connectAttr "rHandControl.bip_middle_0_RControlRoll" "unitConversion32.i";
connectAttr "rHandControl.bip_middle_0_RControlRoll" "unitConversion33.i";
connectAttr "rHandControl.bip_ring_0_RControlRoll" "unitConversion34.i";
connectAttr "rHandControl.bip_ring_0_RControlRoll" "unitConversion35.i";
connectAttr "rHandControl.bip_ring_0_RControlRoll" "unitConversion36.i";
connectAttr "rHandControl.bip_pinky_0_RControlRoll" "unitConversion37.i";
connectAttr "rHandControl.bip_pinky_0_RControlRoll" "unitConversion38.i";
connectAttr "rHandControl.bip_pinky_0_RControlRoll" "unitConversion39.i";
connectAttr "main.rArmIKFK" "fkParent2.in[0]";
connectAttr ":time1.o" "fkParent2.tim";
connectAttr "main.rLegIKFK" "Ref:bip_hip_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_hip_RFKswitchExp.tim";
connectAttr "main.rLegIKFK" "Ref:bip_knee_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_knee_RFKswitchExp.tim";
connectAttr "main.rLegIKFK" "Ref:bip_foot_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_foot_RFKswitchExp.tim";
connectAttr "main.rLegIKFK" "Ref:bip_toe_RFKswitchExp.in[0]";
connectAttr ":time1.o" "Ref:bip_toe_RFKswitchExp.tim";
connectAttr "main.rLegIKFK" "Ref:bip_hip_RFKvisExp.in[0]";
connectAttr ":time1.o" "Ref:bip_hip_RFKvisExp.tim";
connectAttr "main.rLegIKFK" "rkneeControlvisExp.in[0]";
connectAttr ":time1.o" "rkneeControlvisExp.tim";
connectAttr "rFootControl.heelRock" "unitConversion40.i";
connectAttr "rFootControl.ankleLift" "unitConversion41.i";
connectAttr "rFootControl.toeLift" "unitConversion42.i";
connectAttr "rFootControl.ankleBank" "unitConversion43.i";
connectAttr "rFootControl.rockR" "unitConversion44.i";
connectAttr "rFootControl.rockL" "rrockLexp.in[0]";
connectAttr ":time1.o" "rrockLexp.tim";
connectAttr "rrockLexp.out[0]" "unitConversion45.i";
connectAttr "rFootControl.ballPivot" "unitConversion46.i";
connectAttr "main.rLegIKFK" "rFootControlvisExp.in[0]";
connectAttr ":time1.o" "rFootControlvisExp.tim";
connectAttr "main.rLegIKFK" "rToeControlvisExp.in[0]";
connectAttr ":time1.o" "rToeControlvisExp.tim";
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_0.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_1.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_2.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_3.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_0.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_1.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_2.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_3.ft"
		;
connectAttr "Ref:bip_middle_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "hands_R.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "hands_R.dsm" -na;
connectAttr "COG.msg" "Engy.dnsm" -na;
connectAttr "picker1.msg" "Engy.dnsm" -na;
connectAttr "picker2.msg" "Engy.dnsm" -na;
connectAttr "picker3.msg" "Engy.dnsm" -na;
connectAttr "picker4.msg" "Engy.dnsm" -na;
connectAttr "picker5.msg" "Engy.dnsm" -na;
connectAttr "picker6.msg" "Engy.dnsm" -na;
connectAttr "Head.msg" "Engy.dnsm" -na;
connectAttr "picker7.msg" "Engy.dnsm" -na;
connectAttr "picker8.msg" "Engy.dnsm" -na;
connectAttr "ik.msg" "Engy.dnsm" -na;
connectAttr "likHandControl_picker.msg" "Engy.dnsm" -na;
connectAttr "picker9.msg" "Engy.dnsm" -na;
connectAttr "picker10.msg" "Engy.dnsm" -na;
connectAttr "picker11.msg" "Engy.dnsm" -na;
connectAttr "picker12.msg" "Engy.dnsm" -na;
connectAttr "picker13.msg" "Engy.dnsm" -na;
connectAttr "picker14.msg" "Engy.dnsm" -na;
connectAttr "picker15.msg" "Engy.dnsm" -na;
connectAttr "picker16.msg" "Engy.dnsm" -na;
connectAttr "picker17.msg" "Engy.dnsm" -na;
connectAttr "picker18.msg" "Engy.dnsm" -na;
connectAttr "hips.msg" "Engy.dnsm" -na;
connectAttr "picker19.msg" "Engy.dnsm" -na;
connectAttr "picker20.msg" "Engy.dnsm" -na;
connectAttr "picker21.msg" "Engy.dnsm" -na;
connectAttr "picker22.msg" "Engy.dnsm" -na;
connectAttr "picker23.msg" "Engy.dnsm" -na;
connectAttr "picker24.msg" "Engy.dnsm" -na;
connectAttr "picker25.msg" "Engy.dnsm" -na;
connectAttr "picker26.msg" "Engy.dnsm" -na;
connectAttr "picker27.msg" "Engy.dnsm" -na;
connectAttr "picker28.msg" "Engy.dnsm" -na;
connectAttr "MAIN.msg" "Engy.dnsm" -na;
connectAttr "picker29.msg" "Engy.dnsm" -na;
connectAttr "picker30.msg" "Engy.dnsm" -na;
connectAttr "IK.msg" "Engy.dnsm" -na;
connectAttr "picker31.msg" "Engy.dnsm" -na;
connectAttr "IK1.msg" "Engy.dnsm" -na;
connectAttr "picker32.msg" "Engy.dnsm" -na;
connectAttr "picker33.msg" "Engy.dnsm" -na;
connectAttr "picker34.msg" "Engy.dnsm" -na;
connectAttr "picker35.msg" "Engy.dnsm" -na;
connectAttr "picker36.msg" "Engy.dnsm" -na;
connectAttr "picker37.msg" "Engy.dnsm" -na;
connectAttr "picker38.msg" "Engy.dnsm" -na;
connectAttr "picker39.msg" "Engy.dnsm" -na;
connectAttr "picker40.msg" "Engy.dnsm" -na;
connectAttr "picker41.msg" "Engy.dnsm" -na;
connectAttr "picker42.msg" "Engy.dnsm" -na;
connectAttr "picker43.msg" "Engy.dnsm" -na;
connectAttr "picker44.msg" "Engy.dnsm" -na;
connectAttr "picker45.msg" "Engy.dnsm" -na;
connectAttr "picker46.msg" "Engy.dnsm" -na;
connectAttr "picker47.msg" "Engy.dnsm" -na;
connectAttr "picker48.msg" "Engy.dnsm" -na;
connectAttr "picker49.msg" "Engy.dnsm" -na;
connectAttr "picker50.msg" "Engy.dnsm" -na;
connectAttr "picker51.msg" "Engy.dnsm" -na;
connectAttr "picker52.msg" "Engy.dnsm" -na;
connectAttr "picker53.msg" "Engy.dnsm" -na;
connectAttr "picker54.msg" "Engy.dnsm" -na;
connectAttr "picker55.msg" "Engy.dnsm" -na;
connectAttr "picker56.msg" "Engy.dnsm" -na;
connectAttr "picker57.msg" "Engy.dnsm" -na;
connectAttr "picker58.msg" "Engy.dnsm" -na;
connectAttr "picker59.msg" "Engy.dnsm" -na;
connectAttr "picker60.msg" "Engy.dnsm" -na;
connectAttr "picker61.msg" "Engy.dnsm" -na;
connectAttr "picker62.msg" "Engy.dnsm" -na;
connectAttr "picker63.msg" "Engy.dnsm" -na;
connectAttr "picker64.msg" "Engy.dnsm" -na;
connectAttr "picker65.msg" "Engy.dnsm" -na;
connectAttr "picker66.msg" "Engy.dnsm" -na;
connectAttr "picker67.msg" "Engy.dnsm" -na;
connectAttr "picker68.msg" "Engy.dnsm" -na;
connectAttr "picker69.msg" "Engy.dnsm" -na;
connectAttr "picker70.msg" "Engy.dnsm" -na;
connectAttr "picker71.msg" "Engy.dnsm" -na;
connectAttr "picker72.msg" "Engy.dnsm" -na;
connectAttr "picker73.msg" "Engy.dnsm" -na;
connectAttr "picker74.msg" "Engy.dnsm" -na;
connectAttr "cord.msg" "Engy.dnsm" -na;
connectAttr "pouch.msg" "Engy.dnsm" -na;
connectAttr "pouch2.msg" "Engy.dnsm" -na;
connectAttr "UpperbodyControl.iog" "COG.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "picker2.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "picker3.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "picker4.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "picker5.dsm" -na;
connectAttr "neckControl.iog" "picker6.dsm" -na;
connectAttr "headControl.iog" "Head.dsm" -na;
connectAttr "rShoulderControl.iog" "picker7.dsm" -na;
connectAttr "lShoulderControl.iog" "picker8.dsm" -na;
connectAttr "rikHandControl.iog" "ik.dsm" -na;
connectAttr "likHandControl.iog" "likHandControl_picker.dsm" -na;
connectAttr "Ref:bip_upperArm_RFK.iog" "picker9.dsm" -na;
connectAttr "Ref:bip_lowerArm_RFK.iog" "picker10.dsm" -na;
connectAttr "Ref:bip_hand_RFK.iog" "picker11.dsm" -na;
connectAttr "Ref:bip_upperArm_LFK.iog" "picker12.dsm" -na;
connectAttr "Ref:bip_lowerArm_LFK.iog" "picker13.dsm" -na;
connectAttr "Ref:bip_hand_LFK.iog" "picker14.dsm" -na;
connectAttr "rHandControl.iog" "picker15.dsm" -na;
connectAttr "lHandControl.iog" "picker16.dsm" -na;
connectAttr "rikHandControl.iog" "picker17.dsm" -na;
connectAttr "rHandControl.iog" "picker17.dsm" -na;
connectAttr "likHandControl.iog" "picker18.dsm" -na;
connectAttr "lHandControl.iog" "picker18.dsm" -na;
connectAttr "PelvisControl.iog" "hips.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "picker19.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "picker19.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "picker19.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "picker19.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "picker20.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "picker21.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "picker22.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "picker23.dsm" -na;
connectAttr "Ref:bip_toe_LFK.iog" "picker24.dsm" -na;
connectAttr "Ref:bip_foot_LFK.iog" "picker24.dsm" -na;
connectAttr "Ref:bip_knee_LFK.iog" "picker24.dsm" -na;
connectAttr "Ref:bip_hip_LFK.iog" "picker24.dsm" -na;
connectAttr "Ref:bip_hip_LFK.iog" "picker25.dsm" -na;
connectAttr "Ref:bip_knee_LFK.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_foot_LFK.iog" "picker27.dsm" -na;
connectAttr "Ref:bip_toe_LFK.iog" "picker28.dsm" -na;
connectAttr "main.iog" "MAIN.dsm" -na;
connectAttr "rkneeControl.iog" "picker29.dsm" -na;
connectAttr "lkneeControl.iog" "picker30.dsm" -na;
connectAttr "rFootControl.iog" "IK.dsm" -na;
connectAttr "rToeControl.iog" "picker31.dsm" -na;
connectAttr "lFootControl.iog" "IK1.dsm" -na;
connectAttr "lToeControl.iog" "picker32.dsm" -na;
connectAttr "rElbowControl.iog" "picker33.dsm" -na;
connectAttr "lElbowControl.iog" "picker34.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker35.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker35.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker35.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker36.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker37.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker39.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker39.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker39.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker40.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker40.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker40.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker41.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker41.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker41.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker42.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker42.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker42.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker43.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker44.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker45.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker46.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker47.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker48.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker49.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker50.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker51.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker52.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker53.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker54.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker55.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker55.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker55.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker56.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker56.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker56.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker57.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker57.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker57.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker58.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker58.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker58.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker60.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker61.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker62.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker63.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker64.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker65.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker66.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker67.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker68.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker69.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker70.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker71.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker72.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker73.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker74.dsm" -na;
connectAttr "mainShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "UpperbodyControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PelvisControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrolShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrolShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrolShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrolShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikChestShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "neckControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "headControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lShoulderControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_upperArm_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_lowerArm_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_hand_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "likHandControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lElbowControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lHandControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_hip_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_knee_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_foot_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_toe_LFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lkneeControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lFootControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lToeControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rShoulderControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_upperArm_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_lowerArm_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_hand_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rikHandControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rElbowControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_index_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_middle_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_ring_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rHandControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_hip_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_knee_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_foot_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:bip_toe_RFKShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rkneeControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rFootControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "rToeControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "switch_bip_upperArm_LFK_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of engineer_rig.ma
