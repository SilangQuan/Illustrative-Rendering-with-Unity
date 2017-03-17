//Maya ASCII 2012 scene
//Name: heavy_rig.ma
//Last modified: Wed, Mar 11, 2015 12:53:28 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "heavy_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "heavy_reference.ma";
requires maya "2012";
requires "Mayatomr" "2012.0m - 3.9.1.47 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012";
fileInfo "cutIdentifier" "201109261253-811691";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -20.094898075146304 62.306835274384142 120.32259737151877 ;
	setAttr ".r" -type "double3" -9.9383527267386462 -1090.1999999998907 -4.039535758578878e-016 ;
	setAttr ".rp" -type "double3" 0 4.8849813083506888e-015 3.5527136788005009e-015 ;
	setAttr ".rpt" -type "double3" 1.1279854042940871e-015 6.206133956252422e-016 -1.3389176742590966e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 125.17965663615659;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 80.479698181152344 -1.9485193490982056 ;
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
	setAttr ".t" -type "double3" 2.254573580885618 74.226172481970323 110.91474966893989 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 45.181750119114398;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 1 1 no 
		2 0 2
		9 0 0.76536686473017945 1.5307337294603589 2.2961005941905386 3.0614674589207183
		 3.8268343236508975 4.5922011883810772 5.3575680531112564 6.1229349178414356
		
		18
		24 -2.4000000000000001e-011 -2.9390552491737054e-015
		16.970562748477143 -2.4000000000000001e-011 16.970562748477139
		6.7985981427876041e-015 -2.4000000000000001e-011 24
		-16.970562748477136 -2.4000000000000001e-011 16.970562748477143
		-24 -2.4000000000000001e-011 6.6613381477509392e-015
		-16.970562748477146 -2.4000000000000001e-011 -16.970562748477136
		-1.2127668660988355e-014 -2.4000000000000001e-011 -24
		16.970562748477132 -2.4000000000000001e-011 -16.97056274847715
		24 -2.4000000000000001e-011 -1.892626680377596e-014
		24 -2.4000000000000001e-011 -2.9390552491737054e-015
		16.970562748477143 2.4000000000000001e-011 16.970562748477139
		6.7985981427876041e-015 2.4000000000000001e-011 24
		-16.970562748477136 2.4000000000000001e-011 16.970562748477143
		-24 2.4000000000000001e-011 9.6003933969246447e-015
		-16.970562748477146 2.4000000000000001e-011 -16.970562748477136
		-1.2127668660988355e-014 2.4000000000000001e-011 -24
		16.970562748477132 2.4000000000000001e-011 -16.97056274847715
		24 -2.4000000000000001e-011 -1.892626680377596e-014
		
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
	setAttr ".rp" -type "double3" 0 40.862454 -3.096505 ;
	setAttr ".sp" -type "double3" 0 40.862454 -3.096505 ;
	setAttr ".hdl" -type "double3" 0 40.862454 -3.096505 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 0.25 0.25 0.25
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		9.4033394986946863 39.362454 -12.499844498694701
		13.298330250652654 39.362454 -3.0965049999999987
		9.4033394986946917 39.362454 6.3068344986946911
		4.1449300598843483e-015 39.362454 10.201825250652654
		-9.4033394986946899 39.362454 6.3068344986946929
		-13.298330250652658 39.362454 -3.0965049999999956
		-9.4033394986946917 39.362454 -12.499844498694689
		-7.1425322263722702e-015 39.362454 -16.394835250652655
		9.4033394986946863 39.362454 -12.499844498694701
		13.298330250652654 39.362454 -3.0965049999999987
		9.4033394986946917 39.362454 6.3068344986946911
		9.4033394986946863 40.362454 -12.499844498694701
		13.298330250652654 40.362454 -3.0965049999999987
		9.4033394986946917 40.362454 6.3068344986946911
		4.1449300598843483e-015 40.362454 10.201825250652654
		-9.4033394986946899 40.362454 6.3068344986946929
		-13.298330250652658 40.362454 -3.0965049999999956
		-9.4033394986946917 40.362454 -12.499844498694689
		-7.1425322263722702e-015 40.362454 -16.394835250652655
		9.4033394986946863 40.362454 -12.499844498694701
		13.298330250652654 40.362454 -3.0965049999999987
		9.4033394986946917 40.362454 6.3068344986946911
		9.4033394986946863 41.362454 -12.499844498694701
		13.298330250652654 41.362454 -3.0965049999999987
		9.4033394986946917 41.362454 6.3068344986946911
		4.1449300598843483e-015 41.362454 10.201825250652654
		-9.4033394986946899 41.362454 6.3068344986946929
		-13.298330250652658 41.362454 -3.0965049999999956
		-9.4033394986946917 41.362454 -12.499844498694689
		-7.1425322263722702e-015 41.362454 -16.394835250652655
		9.4033394986946863 41.362454 -12.499844498694701
		13.298330250652654 41.362454 -3.0965049999999987
		9.4033394986946917 41.362454 6.3068344986946911
		9.4033394986946863 42.362454 -12.499844498694701
		13.298330250652654 42.362454 -3.0965049999999983
		9.4033394986946917 42.362454 6.3068344986946911
		4.1449300598843483e-015 42.362454 10.201825250652654
		-9.4033394986946899 42.362454 6.3068344986946929
		-13.298330250652658 42.362454 -3.0965049999999956
		-9.4033394986946917 42.362454 -12.499844498694689
		-7.1425322263722702e-015 42.362454 -16.394835250652655
		9.4033394986946863 42.362454 -12.499844498694701
		13.298330250652654 42.362454 -3.0965049999999983
		9.4033394986946917 42.362454 6.3068344986946911
		
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
	setAttr ".t" -type "double3" 0 40.862454 -3.096505 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1.5 1.5 1.5
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-3.0955809408306669e-015 -6.057429656832114 -12.11485931366423
		12.11485931366423 -6.0574296568321149 -1.1126950268383065e-015
		1.6384764012338408e-015 -6.0574296568321158 12.11485931366423
		-12.11485931366423 -6.0574296568321149 1.7159179172918901e-015
		-3.0955809408306669e-015 -6.057429656832114 -12.11485931366423
		12.11485931366423 -6.0574296568321149 -1.1126950268383065e-015
		1.6384764012338408e-015 -6.0574296568321158 12.11485931366423
		-3.0955809408306669e-015 -2.0191432189440373 -12.11485931366423
		12.11485931366423 -2.0191432189440381 -8.6542946531868289e-016
		1.6384764012338408e-015 -2.019143218944039 12.11485931366423
		-12.11485931366423 -2.0191432189440381 1.9631834788115138e-015
		-3.0955809408306669e-015 -2.0191432189440373 -12.11485931366423
		12.11485931366423 -2.0191432189440381 -8.6542946531868289e-016
		1.6384764012338408e-015 -2.019143218944039 12.11485931366423
		-3.0955809408306669e-015 2.019143218944039 -12.11485931366423
		12.11485931366423 2.0191432189440381 -6.1816390379905912e-016
		1.6384764012338408e-015 2.0191432189440373 12.11485931366423
		-12.11485931366423 2.0191432189440381 2.2104490403311374e-015
		-3.0955809408306669e-015 2.019143218944039 -12.11485931366423
		12.11485931366423 2.0191432189440381 -6.1816390379905912e-016
		1.6384764012338408e-015 2.0191432189440373 12.11485931366423
		-3.0955809408306669e-015 6.0574296568321158 -12.11485931366423
		12.11485931366423 6.0574296568321149 -3.708983422794355e-016
		1.6384764012338408e-015 6.057429656832114 12.11485931366423
		-12.11485931366423 6.0574296568321149 2.457714601850761e-015
		-3.0955809408306669e-015 6.0574296568321158 -12.11485931366423
		12.11485931366423 6.0574296568321149 -3.708983422794355e-016
		1.6384764012338408e-015 6.057429656832114 12.11485931366423
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 6.040566684177108 -0.55059471816704297 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -46.903020684177108 3.647099718167043 ;
	setAttr ".rp" -type "double3" 0 46.903020684177108 -3.647099718167043 ;
	setAttr ".sp" -type "double3" 0 46.903020684177108 -3.647099718167043 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 50.637792749725136 -4.3524007776347569 ;
createNode transform -n "Ref:prp_packControlGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 10.052434 -1.5523465228004056 5.1108822961355216 ;
	setAttr ".r" -type "double3" 7.8706240653991788 -22.712059020996158 -2.7771978378295898 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Ref:prp_packControl" -p "Ref:prp_packControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_packControlShape" -p "Ref:prp_packControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_0FKcontrolZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 168.13724342724265 0 0 ;
	setAttr ".rp" -type "double3" 0 46.903020684177122 -3.6470997181670448 ;
	setAttr ".sp" -type "double3" 0 46.903020684177122 -3.6470997181670448 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	addAttr -ci true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0 -max 2 -at "double";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 46.903020684177122 -3.6470997181670448 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
	setAttr ".t" -type "double3" 0 0 -7.9936057773011997e-015 ;
	setAttr ".r" -type "double3" -2.4645891694527329 0 0 ;
	setAttr ".rp" -type "double3" 0 -7.4461739999999921 0 ;
	setAttr ".sp" -type "double3" 0 -7.4461739999999921 0 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.4461739999999921 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
	setAttr ".t" -type "double3" 0 0 -7.9936057773011997e-015 ;
	setAttr ".r" -type "double3" 7.8146380709279422 0 0 ;
	setAttr ".rp" -type "double3" 0 -8.1669819999999973 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 0 -8.1669819999999973 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -8.1669819999999973 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
	setAttr ".t" -type "double3" 0 0 -7.9936057773011997e-015 ;
	setAttr ".r" -type "double3" 24.681604098199148 0 0 ;
	setAttr ".rp" -type "double3" 0 -7.0590420000000051 2.6645352591003757e-015 ;
	setAttr ".sp" -type "double3" 0 -7.0590420000000051 2.6645352591003757e-015 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.0590420000000051 2.6645352591003757e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
	setAttr ".rp" -type "double3" 0 69.116623784974905 -7.9994706495552981 ;
	setAttr ".sp" -type "double3" 0 69.116623784974905 -7.9994706495552981 ;
createNode nurbsSurface -n "ikChestShape" -p "ikChest";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikChestCluster" -p "ikChest";
	setAttr ".v" no;
createNode clusterHandle -n "ikChestClusterShape" -p "ikChestCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 65.311574232339467 -7.705523429540607 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.46572281002839488 -19.28168203301928 -2.7411243979854754 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.83812224237733501 21.067647819957408 5.6033273834203081 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -13.377917102042689 -4.4408920985006262e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.4745660378740061e-013 1.5763171167505442e-022 6.3323271269629338e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 13.978623538934331 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7951146347172653e-008 -16.792402033382594 1.9157000430425342e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.53249572244126397 8.8465850273367774 17.31015856723608 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -69.782971583788594 2.3458896589571752 -5.7865635442643262 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.9411876201060281 -4.8849813083506888e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.1763186533580049e-021 -2.5613209387547816e-006 7.5178320898635287e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -31.300256028924586 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -3.8678464287494618 1.1352665953614267e-015 ;
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
	setAttr ".rst" -type "double3" 6.057429313659668 35.014210875584951 -0.35288476879295627 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -0.83812224237733635 21.067647819957401 5.6033273834203063 ;
	setAttr ".rp" -type "double3" 6.057429313659668 35.014210875584951 -0.35288476879295638 ;
	setAttr ".sp" -type "double3" 6.057429313659668 35.014210875584951 -0.35288476879295638 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -7.4262357941072166e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -7.4262357941072166e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -4.4593057006808943 -6
		6 -4.4593057006808943 -4.4902232973487166e-016
		8.1147111599677579e-016 -4.4593057006808925 6
		-6 -4.4593057006808943 9.5187529733364862e-016
		-1.5331160820031275e-015 -4.4593057006808943 -6
		6 -4.4593057006808943 -4.4902232973487166e-016
		8.1147111599677579e-016 -4.4593057006808925 6
		-1.5331160820031275e-015 -8.9186114013617885 -6
		6 -8.9186114013617868 -2.8574148255855469e-016
		8.1147111599677579e-016 -8.9186114013617868 6
		-6 -8.9186114013617868 1.1151561445099656e-015
		-1.5331160820031275e-015 -8.9186114013617885 -6
		6 -8.9186114013617868 -2.8574148255855469e-016
		8.1147111599677579e-016 -8.9186114013617868 6
		-1.5331160820031275e-015 -13.37791710204268 -6
		6 -13.37791710204268 -1.2246063538223773e-016
		8.1147111599677579e-016 -13.37791710204268 6
		-6 -13.37791710204268 1.2784369916862826e-015
		-1.5331160820031275e-015 -13.37791710204268 -6
		6 -13.37791710204268 -1.2246063538223773e-016
		8.1147111599677579e-016 -13.37791710204268 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 13.978623538934331 -3.1805546814635152e-015 -7.951386703658788e-016 ;
	setAttr ".rp" -type "double3" -1.519617764955683e-015 -13.377917102042693 -8.8817841970012523e-016 ;
	setAttr ".sp" -type "double3" -1.519617764955683e-015 -13.377917102042693 -8.8817841970012523e-016 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.519617764955683e-015 -13.377917102042693 -8.8817841970012523e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -9.3216556881118319e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -9.3216556881118319e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -5.5974673444608687 -6
		6 -5.5974673444608687 -4.4902232973487166e-016
		8.1147111599677579e-016 -5.5974673444608669 6
		-6 -5.5974673444608687 9.5187529733364862e-016
		-1.5331160820031275e-015 -5.5974673444608687 -6
		6 -5.5974673444608687 -4.4902232973487166e-016
		8.1147111599677579e-016 -5.5974673444608669 6
		-1.5331160820031275e-015 -11.194934688921737 -6
		6 -11.194934688921736 -2.8574148255855469e-016
		8.1147111599677579e-016 -11.194934688921736 6
		-6 -11.194934688921736 1.1151561445099656e-015
		-1.5331160820031275e-015 -11.194934688921737 -6
		6 -11.194934688921736 -2.8574148255855469e-016
		8.1147111599677579e-016 -11.194934688921736 6
		-1.5331160820031275e-015 -16.792402033382604 -6
		6 -16.792402033382604 -1.2246063538223773e-016
		8.1147111599677579e-016 -16.792402033382604 6
		-6 -16.792402033382604 1.2784369916862826e-015
		-1.5331160820031275e-015 -16.792402033382604 -6
		6 -16.792402033382604 -1.2246063538223773e-016
		8.1147111599677579e-016 -16.792402033382604 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -69.782971583788594 2.3458896589571778 -5.7865635442643262 ;
	setAttr ".rp" -type "double3" 1.7951144792860418e-008 -16.79240203338259 1.9156991548641145e-009 ;
	setAttr ".sp" -type "double3" 1.7951144792860418e-008 -16.79240203338259 1.9156991548641145e-009 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7951144792860418e-008 -16.79240203338259 1.9156991548641145e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -4.408244669354982e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -4.408244669354982e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.6470625400353431 -6
		6 -2.6470625400353431 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.6470625400353422 6
		-6 -2.6470625400353431 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.6470625400353431 -6
		6 -2.6470625400353431 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.6470625400353422 6
		-1.5331160820031275e-015 -5.2941250800706863 -6
		6 -5.2941250800706854 -2.8574148255855469e-016
		8.1147111599677579e-016 -5.2941250800706854 6
		-6 -5.2941250800706854 1.1151561445099656e-015
		-1.5331160820031275e-015 -5.2941250800706863 -6
		6 -5.2941250800706854 -2.8574148255855469e-016
		8.1147111599677579e-016 -5.2941250800706854 6
		-1.5331160820031275e-015 -7.941187620106029 -6
		6 -7.941187620106029 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.941187620106029 6
		-6 -7.941187620106029 1.2784369916862826e-015
		-1.5331160820031275e-015 -7.941187620106029 -6
		6 -7.941187620106029 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.941187620106029 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -31.300256028924586 0 -3.1805546814635176e-015 ;
	setAttr ".rp" -type "double3" 2.4424906541753444e-015 -7.9411876201060254 0 ;
	setAttr ".sp" -type "double3" 2.4424906541753444e-015 -7.9411876201060254 0 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 -7.9411876201060254 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999922 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -2.1470860804559178e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -2.1470860804559178e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -1.2892821429164869 -6
		6 -1.2892821429164869 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.2892821429164865 6
		-6 -1.2892821429164869 9.5187529733364862e-016
		-1.5331160820031275e-015 -1.2892821429164869 -6
		6 -1.2892821429164869 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.2892821429164865 6
		-1.5331160820031275e-015 -2.5785642858329738 -6
		6 -2.5785642858329734 -2.8574148255855469e-016
		8.1147111599677579e-016 -2.5785642858329734 6
		-6 -2.5785642858329734 1.1151561445099656e-015
		-1.5331160820031275e-015 -2.5785642858329738 -6
		6 -2.5785642858329734 -2.8574148255855469e-016
		8.1147111599677579e-016 -2.5785642858329734 6
		-1.5331160820031275e-015 -3.8678464287494601 -6
		6 -3.8678464287494601 -1.2246063538223773e-016
		8.1147111599677579e-016 -3.8678464287494601 6
		-6 -3.8678464287494601 1.2784369916862826e-015
		-1.5331160820031275e-015 -3.8678464287494601 -6
		6 -3.8678464287494601 -1.2246063538223773e-016
		8.1147111599677579e-016 -3.8678464287494601 6
		
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
	setAttr ".rst" -type "double3" 6.0574293136596697 35.014210875584951 -0.35288476879295549 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.46572798100179458 -19.281744665623787 -2.7411337724856448 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.16187775762279 -21.067647819957411 -5.603327383420309 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5852243360778857e-006 13.377916440388242 -1.5529263368563306e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.1943306753803983e-013 6.7403458817838647e-021 1.5722689830731772e-019 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 13.978623538934221 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.6553122245995837e-007 16.792395306986382 1.2873269277235977e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.5324950784971193 8.846605568711551 17.310212550003552 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -69.782971583788637 2.3458896589571898 -5.7865635442643173 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.3869107448912814e-005 7.9411998909443744 -6.3614359078201232e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -31.300256028924608 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.298963825950409e-005 3.8678221856352351 6.0475316249924305e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9090959104164224e-006 0 0 ;
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
	setAttr ".rst" -type "double3" -6.05743 35.014200365331064 -0.35288461490329814 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 179.16187775762279 -21.067647819957408 -5.603327383420309 ;
	setAttr ".rp" -type "double3" -6.05743 35.014200365331064 -0.35288461490329803 ;
	setAttr ".sp" -type "double3" -6.05743 35.014200365331064 -0.35288461490329803 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 7.4262354268155346e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 7.4262354268155346e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 4.4593054801296033 -6
		6 4.4593054801296033 -4.4902232973487166e-016
		8.1147111599677579e-016 4.4593054801296015 6
		-6 4.4593054801296033 9.5187529733364862e-016
		-1.5331160820031275e-015 4.4593054801296033 -6
		6 4.4593054801296033 -4.4902232973487166e-016
		8.1147111599677579e-016 4.4593054801296015 6
		-1.5331160820031275e-015 8.9186109602592065 -6
		6 8.9186109602592047 -2.8574148255855469e-016
		8.1147111599677579e-016 8.9186109602592047 6
		-6 8.9186109602592047 1.1151561445099656e-015
		-1.5331160820031275e-015 8.9186109602592065 -6
		6 8.9186109602592047 -2.8574148255855469e-016
		8.1147111599677579e-016 8.9186109602592047 6
		-1.5331160820031275e-015 13.377916440388807 -6
		6 13.377916440388807 -1.2246063538223773e-016
		8.1147111599677579e-016 13.377916440388807 6
		-6 13.377916440388807 1.2784369916862826e-015
		-1.5331160820031275e-015 13.377916440388807 -6
		6 13.377916440388807 -1.2246063538223773e-016
		8.1147111599677579e-016 13.377916440388807 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 13.978623538934222 0 7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -3.5852243364109526e-006 13.377916440388235 -1.5529263373004198e-006 ;
	setAttr ".sp" -type "double3" -3.5852243364109526e-006 13.377916440388235 -1.5529263373004198e-006 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5852243364109526e-006 13.377916440388235 -1.5529263373004198e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 9.3216519542118822e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 9.3216519542118822e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 5.5974651023288127 -6
		6 5.5974651023288127 -4.4902232973487166e-016
		8.1147111599677579e-016 5.5974651023288109 6
		-6 5.5974651023288127 9.5187529733364862e-016
		-1.5331160820031275e-015 5.5974651023288127 -6
		6 5.5974651023288127 -4.4902232973487166e-016
		8.1147111599677579e-016 5.5974651023288109 6
		-1.5331160820031275e-015 11.194930204657625 -6
		6 11.194930204657624 -2.8574148255855469e-016
		8.1147111599677579e-016 11.194930204657624 6
		-6 11.194930204657624 1.1151561445099656e-015
		-1.5331160820031275e-015 11.194930204657625 -6
		6 11.194930204657624 -2.8574148255855469e-016
		8.1147111599677579e-016 11.194930204657624 6
		-1.5331160820031275e-015 16.792395306986435 -6
		6 16.792395306986435 -1.2246063538223773e-016
		8.1147111599677579e-016 16.792395306986435 6
		-6 16.792395306986435 1.2784369916862826e-015
		-1.5331160820031275e-015 16.792395306986435 -6
		6 16.792395306986435 -1.2246063538223773e-016
		8.1147111599677579e-016 16.792395306986435 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -69.782971583788651 2.3458896589571934 -5.7865635442643164 ;
	setAttr ".rp" -type "double3" 4.6553122312609219e-007 16.792395306986386 1.2873269268354193e-006 ;
	setAttr ".sp" -type "double3" 4.6553122312609219e-007 16.792395306986386 1.2873269268354193e-006 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.6553122312609219e-007 16.792395306986386 1.2873269268354193e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 4.4082514811072945e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 4.4082514811072945e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.6470666303560333 -6
		6 2.6470666303560333 -4.4902232973487166e-016
		8.1147111599677579e-016 2.6470666303560324 6
		-6 2.6470666303560333 9.5187529733364862e-016
		-1.5331160820031275e-015 2.6470666303560333 -6
		6 2.6470666303560333 -4.4902232973487166e-016
		8.1147111599677579e-016 2.6470666303560324 6
		-1.5331160820031275e-015 5.2941332607120666 -6
		6 5.2941332607120657 -2.8574148255855469e-016
		8.1147111599677579e-016 5.2941332607120657 6
		-6 5.2941332607120657 1.1151561445099656e-015
		-1.5331160820031275e-015 5.2941332607120666 -6
		6 5.2941332607120657 -2.8574148255855469e-016
		8.1147111599677579e-016 5.2941332607120657 6
		-1.5331160820031275e-015 7.9411998910680994 -6
		6 7.9411998910680994 -1.2246063538223773e-016
		8.1147111599677579e-016 7.9411998910680994 6
		-6 7.9411998910680994 1.2784369916862826e-015
		-1.5331160820031275e-015 7.9411998910680994 -6
		6 7.9411998910680994 -1.2246063538223773e-016
		8.1147111599677579e-016 7.9411998910680994 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -31.300256028924608 1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" -4.3869107453131662e-005 7.9411998909443771 -6.3614359047114988e-006 ;
	setAttr ".sp" -type "double3" -4.3869107453131662e-005 7.9411998909443771 -6.3614359047114988e-006 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.3869107453131662e-005 7.9411998909443771 -6.3614359047114988e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 2.1470726230256112e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 2.1470726230256112e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 1.289274061999405 -6
		6 1.289274061999405 -4.4902232973487166e-016
		8.1147111599677579e-016 1.2892740619994045 6
		-6 1.289274061999405 9.5187529733364862e-016
		-1.5331160820031275e-015 1.289274061999405 -6
		6 1.289274061999405 -4.4902232973487166e-016
		8.1147111599677579e-016 1.2892740619994045 6
		-1.5331160820031275e-015 2.5785481239988099 -6
		6 2.5785481239988095 -2.8574148255855469e-016
		8.1147111599677579e-016 2.5785481239988095 6
		-6 2.5785481239988095 1.1151561445099656e-015
		-1.5331160820031275e-015 2.5785481239988099 -6
		6 2.5785481239988095 -2.8574148255855469e-016
		8.1147111599677579e-016 2.5785481239988095 6
		-1.5331160820031275e-015 3.8678221859982145 -6
		6 3.8678221859982145 -1.2246063538223773e-016
		8.1147111599677579e-016 3.8678221859982145 6
		-6 3.8678221859982145 1.2784369916862826e-015
		-1.5331160820031275e-015 3.8678221859982145 -6
		6 3.8678221859982145 -1.2246063538223773e-016
		8.1147111599677579e-016 3.8678221859982145 6
		
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
	setAttr ".rst" -type "double3" -6.05743 35.014200365331057 -0.35288461490329937 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 46.903020684177108 -3.647099718167043 ;
	setAttr ".r" -type "double3" -0.52537516092014735 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 168.13724342724265 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -7.446173999999985 1.7763568394002505e-015 ;
	setAttr ".r" -type "double3" 2.2734473418358228 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.4645891694527178 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" 0 -8.1669820000000328 -7.1054273576010019e-015 ;
	setAttr ".r" -type "double3" -3.1979507455843295 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.8146380709279013 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 0 -7.0590419999999909 -4.4408920985006262e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 24.681604098199191 0 0 ;
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
	setAttr ".lr" -type "double3" 163.28098213629957 0 0 ;
	setAttr ".o" -type "double3" -163.28098213629968 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 69.13774595607596 -8.0011023769190448 ;
	setAttr ".r" -type "double3" 172.03741376404906 0 0 ;
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
		6 0 0 0 22.672198000000012 22.672198000000012 22.672198000000012
		4
		0 46.903020684177108 -3.647099718167043
		0 54.372564815273158 -5.0577018371024707
		0 61.506524679704015 -7.411576209525915
		0 69.116623784974905 -7.9994706495552981
		;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 0 69.116623784974891 -7.999470649555299 ;
	setAttr ".sp" -type "double3" 0 69.116623784974891 -7.999470649555299 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 -1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 161.831103573083 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0.019759862076014656 -0.0076391424434412158 ;
	setAttr ".tg[1].tor" -type "double3" 163.28098213357552 0 0 ;
	setAttr ".rst" -type "double3" 0 0 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" 0 141.84516396252553 34.214850861528276 ;
	setAttr ".r" -type "double3" -144.48024209771762 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 76.401964120709152 -5.6085542801697779 ;
	setAttr ".rpt" -type "double3" 0 -141.84516396252559 -34.214850861528269 ;
	setAttr ".sp" -type "double3" 0 76.401964120709138 -5.608554280169777 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 -8.8817841970012543e-016 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" 27.885499861172949 -1.5902773407317584e-015 76.247996332145561 ;
	setAttr ".rp" -type "double3" 2.1314274191856528 72.389541800101867 0.64673923080110818 ;
	setAttr ".sp" -type "double3" 2.1314274191856528 72.389541800101867 0.64673923080110818 ;
createNode transform -n "lShoulderControl" -p "lShoulderControlZeroGroup";
	addAttr -ci true -sn "lFKshoulderControl" -ln "lFKshoulderControl" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
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
createNode nurbsSurface -n "lShoulderControlShape" -p "lShoulderControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
		-1.7247555922535185e-015 -4.687291357313331 -6.75
		6.75 -4.6872913573133301 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.6872913573133292 6.75
		-6.75 -4.6872913573133301 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.687291357313331 -6.75
		6.75 -4.6872913573133301 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.6872913573133292 6.75
		-1.7247555922535185e-015 -9.3745827146266603 -6.75
		6.75 -9.3745827146266603 -3.2145916787837403e-016
		9.1290500549637277e-016 -9.3745827146266603 6.75
		-6.75 -9.3745827146266603 1.2545506625737113e-015
		-1.7247555922535185e-015 -9.3745827146266603 -6.75
		6.75 -9.3745827146266603 -3.2145916787837403e-016
		9.1290500549637277e-016 -9.3745827146266603 6.75
		-1.7247555922535185e-015 -14.061874071939991 -6.75
		6.75 -14.061874071939991 -1.3776821480501744e-016
		9.1290500549637277e-016 -14.061874071939991 6.75
		-6.75 -14.061874071939991 1.4382416156470679e-015
		-1.7247555922535185e-015 -14.061874071939991 -6.75
		6.75 -14.061874071939991 -1.3776821480501744e-016
		9.1290500549637277e-016 -14.061874071939991 6.75
		
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
	setAttr ".rst" -type "double3" 2.1314274191856581 72.389541800101895 0.64673923080110907 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".t" -type "double3" 1.771387878441244e-014 0 -8.8817841970012523e-016 ;
	setAttr ".rp" -type "double3" -9.5851717177226387e-009 -14.06187407194 1.6875389974302379e-014 ;
	setAttr ".sp" -type "double3" -9.5851717177226387e-009 -14.06187407194 1.6875389974302379e-014 ;
createNode transform -n "Ref:bip_upperArm_LFK" -p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKshoulder" -ln "lFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "clavicle:chest:root:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -5.9635400277440943e-015 -2.3854160110976384e-015 -4.9447686063378122e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
		-1.7247555922535185e-015 -5.8903083428816192 -6.75
		6.75 -5.8903083428816183 -5.0515012095173062e-016
		9.1290500549637277e-016 -5.8903083428816174 6.75
		-6.75 -5.8903083428816183 1.0708597095003547e-015
		-1.7247555922535185e-015 -5.8903083428816192 -6.75
		6.75 -5.8903083428816183 -5.0515012095173062e-016
		9.1290500549637277e-016 -5.8903083428816174 6.75
		-1.7247555922535185e-015 -11.780616685763237 -6.75
		6.75 -11.780616685763237 -3.2145916787837403e-016
		9.1290500549637277e-016 -11.780616685763237 6.75
		-6.75 -11.780616685763237 1.2545506625737113e-015
		-1.7247555922535185e-015 -11.780616685763237 -6.75
		6.75 -11.780616685763237 -3.2145916787837403e-016
		9.1290500549637277e-016 -11.780616685763237 6.75
		-1.7247555922535185e-015 -17.670925028644856 -6.75
		6.75 -17.670925028644856 -1.3776821480501744e-016
		9.1290500549637277e-016 -17.670925028644856 6.75
		-6.75 -17.670925028644856 1.4382416156470679e-015
		-1.7247555922535185e-015 -17.670925028644856 -6.75
		6.75 -17.670925028644856 -1.3776821480501744e-016
		9.1290500549637277e-016 -17.670925028644856 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -25.322279734095375 1.5902773407317588e-015 3.1805546814635176e-015 ;
	setAttr ".rp" -type "double3" -1.3100631690576847e-014 -17.670925028644888 -9.3258734068513149e-015 ;
	setAttr ".sp" -type "double3" -1.3100631690576847e-014 -17.670925028644888 -9.3258734068513149e-015 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3100631690576847e-014 -17.670925028644888 -9.3258734068513149e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
		-1.7247555922535185e-015 -5.0584987777569186 -6.75
		6.75 -5.0584987777569177 -5.0515012095173062e-016
		9.1290500549637277e-016 -5.0584987777569168 6.75
		-6.75 -5.0584987777569177 1.0708597095003547e-015
		-1.7247555922535185e-015 -5.0584987777569186 -6.75
		6.75 -5.0584987777569177 -5.0515012095173062e-016
		9.1290500549637277e-016 -5.0584987777569168 6.75
		-1.7247555922535185e-015 -10.116997555513835 -6.75
		6.75 -10.116997555513835 -3.2145916787837403e-016
		9.1290500549637277e-016 -10.116997555513835 6.75
		-6.75 -10.116997555513835 1.2545506625737113e-015
		-1.7247555922535185e-015 -10.116997555513835 -6.75
		6.75 -10.116997555513835 -3.2145916787837403e-016
		9.1290500549637277e-016 -10.116997555513835 6.75
		-1.7247555922535185e-015 -15.175496333270754 -6.75
		6.75 -15.175496333270754 -1.3776821480501744e-016
		9.1290500549637277e-016 -15.175496333270754 6.75
		-6.75 -15.175496333270754 1.4382416156470679e-015
		-1.7247555922535185e-015 -15.175496333270754 -6.75
		6.75 -15.175496333270754 -1.3776821480501744e-016
		9.1290500549637277e-016 -15.175496333270754 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" -2.3854160110976364e-015 3.1805546814635152e-015 -1.5902773407317576e-015 ;
	setAttr ".rp" -type "double3" -1.4703516182379417e-014 -15.175496333270729 0 ;
	setAttr ".sp" -type "double3" -1.4703516182379417e-014 -15.175496333270729 0 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.4703516182379417e-014 -15.175496333270729 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
	setAttr ".rst" -type "double3" -9.5851895309806423e-009 -14.061874071940029 2.2204460492503131e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1" 
		-p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "lShoulderControlW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_3FKcontrolW1" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -9.5851813269023878e-009 -14.061874071940009 
		1.5576363282573182e-014 ;
	setAttr ".tg[0].tor" -type "double3" -17.732520671413226 -32.440703331997383 -48.39893894492365 ;
	setAttr ".tg[1].tot" -type "double3" 14.2041986265515 -0.9476870511284482 -1.8669620352407641 ;
	setAttr ".tg[1].tor" -type "double3" 163.70586547656208 3.4560238657643638 -23.016130475423537 ;
	setAttr ".tg[2].tot" -type "double3" 14.2041986265515 28.572451994701829 -2.8335806146045002 ;
	setAttr ".tg[2].tor" -type "double3" 0.66602484439952125 -10.309966981810209 20.965166270130894 ;
	setAttr ".tg[3].tot" -type "double3" 14.2041986265515 69.434905994701836 -5.9300856146044989 ;
	setAttr ".tg[3].tor" -type "double3" 0.66602484439952125 -10.309966981810209 20.965166270130894 ;
	setAttr ".lr" -type "double3" -17.73252067141323 -32.440703331997391 -48.39893894492365 ;
	setAttr ".rst" -type "double3" 3.1924733499614444e-014 3.5527136788005009e-015 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -17.732520671413226 -32.440703331997383 -48.39893894492365 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -152.11450013882705 0 -76.247996332145533 ;
	setAttr ".rp" -type "double3" -2.13143 72.389500794128196 0.64673930419813352 ;
	setAttr ".sp" -type "double3" -2.13143 72.389500794128196 0.64673930419813352 ;
createNode transform -n "rShoulderControl" -p "rShoulderControlZeroGroup";
	addAttr -ci true -sn "rFKshoulderControl" -ln "rFKshoulderControl" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
		-1.7247555922535185e-015 4.6872891517395905 -6.75
		6.75 4.6872891517395896 -5.0515012095173062e-016
		9.1290500549637277e-016 4.6872891517395887 6.75
		-6.75 4.6872891517395896 1.0708597095003547e-015
		-1.7247555922535185e-015 4.6872891517395905 -6.75
		6.75 4.6872891517395896 -5.0515012095173062e-016
		9.1290500549637277e-016 4.6872891517395887 6.75
		-1.7247555922535185e-015 9.3745783034791792 -6.75
		6.75 9.3745783034791792 -3.2145916787837403e-016
		9.1290500549637277e-016 9.3745783034791792 6.75
		-6.75 9.3745783034791792 1.2545506625737113e-015
		-1.7247555922535185e-015 9.3745783034791792 -6.75
		6.75 9.3745783034791792 -3.2145916787837403e-016
		9.1290500549637277e-016 9.3745783034791792 6.75
		-1.7247555922535185e-015 14.061867455218769 -6.75
		6.75 14.061867455218769 -1.3776821480501744e-016
		9.1290500549637277e-016 14.061867455218769 6.75
		-6.75 14.061867455218769 1.4382416156470679e-015
		-1.7247555922535185e-015 14.061867455218769 -6.75
		6.75 14.061867455218769 -1.3776821480501744e-016
		9.1290500549637277e-016 14.061867455218769 6.75
		
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
	setAttr ".rst" -type "double3" -2.1314299999999902 72.38950079412821 0.6467393041981313 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".t" -type "double3" -9.753503072470332e-014 -2.1316282072803006e-014 1.2434497875801753e-014 ;
	setAttr ".rp" -type "double3" -3.4482393740540578e-005 14.061867455174085 8.2016375468896285e-006 ;
	setAttr ".sp" -type "double3" -3.4482393740540578e-005 14.061867455174085 8.2016375468896285e-006 ;
createNode transform -n "Ref:bip_upperArm_RFK" -p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKshoulder" -ln "rFKshoulder" -at "message";
	addAttr -ci true -k true -sn "parent" -ln "parent" -min 0 -max 3 -en "clavicle:chest:root:world" 
		-at "enum";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999933 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
		-1.7247555922535185e-015 5.8903101047218991 -6.75
		6.75 5.8903101047218982 -5.0515012095173062e-016
		9.1290500549637277e-016 5.8903101047218973 6.75
		-6.75 5.8903101047218982 1.0708597095003547e-015
		-1.7247555922535185e-015 5.8903101047218991 -6.75
		6.75 5.8903101047218982 -5.0515012095173062e-016
		9.1290500549637277e-016 5.8903101047218973 6.75
		-1.7247555922535185e-015 11.780620209443796 -6.75
		6.75 11.780620209443796 -3.2145916787837403e-016
		9.1290500549637277e-016 11.780620209443796 6.75
		-6.75 11.780620209443796 1.2545506625737113e-015
		-1.7247555922535185e-015 11.780620209443796 -6.75
		6.75 11.780620209443796 -3.2145916787837403e-016
		9.1290500549637277e-016 11.780620209443796 6.75
		-1.7247555922535185e-015 17.670930314165695 -6.75
		6.75 17.670930314165695 -1.3776821480501744e-016
		9.1290500549637277e-016 17.670930314165695 6.75
		-6.75 17.670930314165695 1.4382416156470679e-015
		-1.7247555922535185e-015 17.670930314165695 -6.75
		6.75 17.670930314165695 -1.3776821480501744e-016
		9.1290500549637277e-016 17.670930314165695 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -25.322279734095389 -1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" -3.629537145721784e-005 17.670930314127695 5.0766117016820544e-006 ;
	setAttr ".sp" -type "double3" -3.629537145721784e-005 17.670930314127695 5.0766117016820544e-006 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.629537145721784e-005 17.670930314127695 5.0766117016820544e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
		-1.7247555922535185e-015 5.0585115149582833 -6.75
		6.75 5.0585115149582824 -5.0515012095173062e-016
		9.1290500549637277e-016 5.0585115149582816 6.75
		-6.75 5.0585115149582824 1.0708597095003547e-015
		-1.7247555922535185e-015 5.0585115149582833 -6.75
		6.75 5.0585115149582824 -5.0515012095173062e-016
		9.1290500549637277e-016 5.0585115149582816 6.75
		-1.7247555922535185e-015 10.117023029916565 -6.75
		6.75 10.117023029916565 -3.2145916787837403e-016
		9.1290500549637277e-016 10.117023029916565 6.75
		-6.75 10.117023029916565 1.2545506625737113e-015
		-1.7247555922535185e-015 10.117023029916565 -6.75
		6.75 10.117023029916565 -3.2145916787837403e-016
		9.1290500549637277e-016 10.117023029916565 6.75
		-1.7247555922535185e-015 15.175534544874848 -6.75
		6.75 15.175534544874848 -1.3776821480501744e-016
		9.1290500549637277e-016 15.175534544874848 6.75
		-6.75 15.175534544874848 1.4382416156470679e-015
		-1.7247555922535185e-015 15.175534544874848 -6.75
		6.75 15.175534544874848 -1.3776821480501744e-016
		9.1290500549637277e-016 15.175534544874848 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 4.7708320221952752e-015 0 -3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 2.3717933169013772e-005 15.175534544853171 9.8028085560031286e-006 ;
	setAttr ".sp" -type "double3" 2.3717933169013772e-005 15.175534544853171 9.8028085560031286e-006 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.3717933169013772e-005 15.175534544853171 9.8028085560031286e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
	setAttr ".rst" -type "double3" -3.448239374215234e-005 14.061867455174074 8.2016375424487364e-006 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1" 
		-p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -k true -sn "w0" -ln "rShoulderControlW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_spine_3FKcontrolW1" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.448239384000061e-005 14.061867455174065 
		8.2016375615660227e-006 ;
	setAttr ".tg[0].tor" -type "double3" -17.732520671413177 -32.440703331997405 -48.398938944923707 ;
	setAttr ".tg[1].tot" -type "double3" -14.204199999999991 -0.94768083725233188 -1.8669597791644721 ;
	setAttr ".tg[1].tor" -type "double3" -16.294134523437897 -3.4560238657643909 23.016130475423445 ;
	setAttr ".tg[2].tot" -type "double3" -14.204199999999991 28.572446794128304 -2.8335846958018367 ;
	setAttr ".tg[2].tor" -type "double3" -179.33397515560046 10.309966981810209 -20.965166270130798 ;
	setAttr ".tg[3].tot" -type "double3" -14.204199999999991 69.434900794128325 -5.9300896958018354 ;
	setAttr ".tg[3].tor" -type "double3" -179.33397515560046 10.309966981810209 -20.965166270130798 ;
	setAttr ".lr" -type "double3" -17.73252067141318 -32.440703331997405 -48.398938944923714 ;
	setAttr ".rst" -type "double3" -1.1174588543990532e-013 -2.4868995751603507e-014 
		1.2434497875801753e-014 ;
	setAttr ".rsrr" -type "double3" -17.732520671413159 -32.440703331997412 -48.398938944923707 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "Ref:prp_bullet_shoulderControlGroup" -p "rShoulderControl";
	setAttr ".t" -type "double3" -6.0627499999999976 10.213033999999983 1.7571279999999909 ;
	setAttr ".r" -type "double3" 172.83046950199892 -27.019833223202411 -74.523309789894839 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999989 0.99999999999999922 ;
createNode transform -n "Ref:prp_bullet_shoulderControl" -p "Ref:prp_bullet_shoulderControlGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_shoulderControlShape" -p "Ref:prp_bullet_shoulderControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 141.84516396252553 34.214850861528276 ;
	setAttr ".sp" -type "double3" 0 141.84516396252553 34.214850861528276 ;
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
	setAttr ".lr" -type "double3" -144.48024209771762 0 0 ;
	setAttr ".rsrr" -type "double3" -144.48024209771762 0 0 ;
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
	setAttr ".o" -type "double3" 0 72.728540177550641 42.214321511083575 ;
	setAttr -k on ".w0";
createNode transform -n "neckControl" -p "neckControlLockParent";
	addAttr -ci true -sn "neckControl" -ln "neckControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
	setAttr ".rst" -type "double3" 0 76.401964120709138 -5.608554280169777 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0 -66.687556411207993 48.953180524333099 ;
	setAttr ".r" -type "double3" -35.519757902282493 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999944 ;
	setAttr ".rp" -type "double3" 0 79.560489659818373 -3.353956152230277 ;
	setAttr ".rpt" -type "double3" 0 -16.753589932692812 -45.59922437210281 ;
	setAttr ".sp" -type "double3" 0 79.56048965981843 -3.3539561522302792 ;
	setAttr ".spt" -type "double3" 0 -5.6843418860807983e-014 2.2204460492503119e-015 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 -66.687556411207993 48.953180524333099 ;
	setAttr ".sp" -type "double3" 0 -66.687556411207993 48.953180524333099 ;
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
	setAttr ".lr" -type "double3" -180.00000000000011 0 0 ;
	setAttr ".rsrr" -type "double3" -180.00000000000011 0 0 ;
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
	setAttr ".o" -type "double3" 0 -143.08952053191712 54.561734804502876 ;
	setAttr ".rst" -type "double3" 0 1.4210854715202004e-014 0 ;
	setAttr -k on ".w0";
createNode transform -n "headControl" -p "headControlLockParent";
	addAttr -ci true -sn "headControl" -ln "headControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.3377586926819708e-014 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
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
	setAttr ".rst" -type "double3" 0 79.56048965981843 -3.3539561522302792 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_LIK" -p "main";
	addAttr -ci true -sn "lIKshoulder" -ln "lIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.13798184014392528 8.7011134155599947 -1.8135431753511644 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.66602484439952048 -10.309966981810202 20.965166270130869 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" -2.1316282072803006e-014 -17.670925028644874 -1.021405182655144e-014 ;
	setAttr ".r" -type "double3" -1.7172670603401842e-013 -4.0202692824275958e-028 1.3339691188218494e-027 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -25.322279734095421 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" 3.5527136788005009e-014 -15.175496333270749 -1.7763568394002505e-015 ;
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
	setAttr ".rst" -type "double3" 14.204198626551479 69.434905994701779 -5.9300856146045096 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 16.793362188414957 2.2968617992230094 3.287742822051503 ;
	setAttr ".sp" -type "double3" 16.793362188414967 2.2968617992230165 3.2877428220515088 ;
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
	setAttr ".rst" -type "double3" 7.6441096058098452 37.366981079988747 -3.191325619048051 ;
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
	setAttr ".rst" -type "double3" 6.3565639261371079 -16.486808225679511 -0.20209144115113364 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 24.437471794224798 39.663842879211757 0.096417203003456464 ;
	setAttr ".sp" -type "double3" 24.437471794224798 39.663842879211757 0.096417203003456464 ;
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
	setAttr ".tg[0].tot" -type "double3" 24.437471794224798 -1.1986111207882431 3.1929222030034565 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 11.063000327228572 17.649935319198597 -0.90216598930724157 ;
	setAttr ".rp" -type "double3" 13.374471466996226 22.013907560013159 0.99858319231069803 ;
	setAttr ".sp" -type "double3" 13.374471466996226 22.013907560013159 0.99858319231069803 ;
createNode transform -n "likHandControl" -p "likHandControlWeaponGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lIKcontrol" -ln "lIKcontrol" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooCmd2" -ln "zooCmd2" -dt "string";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooCmd3" -ln "zooCmd3" -dt "string";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrig4" -ln "zooTrig4" -at "message";
	addAttr -ci true -sn "zooTrig5" -ln "zooTrig5" -at "message";
	addAttr -ci true -sn "zooTrig6" -ln "zooTrig6" -at "message";
	addAttr -ci true -sn "zooTrig7" -ln "zooTrig7" -at "message";
	addAttr -ci true -sn "zooTrig8" -ln "zooTrig8" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" -11.063000327228576 -17.649935319198597 0.90216598930724601 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 36.431067578439951 28.438416303337192 5.8697145731791149 ;
	setAttr ".rpt" -type "double3" -11.993595784215149 11.225426575874565 -5.7732973701756629 ;
	setAttr ".sp" -type "double3" 36.431067578439951 28.438416303337192 5.8697145731791149 ;
	setAttr ".hdl" -type "double3" 36.431067578439951 28.438416303337192 5.8697145731791149 ;
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\nzooChangeSpace ( \"-attr lock \"+ $other +\"-objs %1\" ) #;\n";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\nzooChangeSpace ( \"-attr aim \"+ $other +\"-objs %1\" ) #;\n";
	setAttr ".zooCmd2" -type "string" "toggle weapon parent^int $other = !`getAttr #.weaponParent`;\nzooChangeSpace ( \"-attr weaponParent \"+ $other +\"-objs %1\" ) #;\n";
	setAttr ".zooCmd3" -type "string" "to FK^zooAlignFast %1 %5 1 0;\r\nzooAlignFast %2 %6 1 0;\r\nzooAlignFast %3 %7 1 0;\r\nsetAttr %1.r 0 0 0;\r\nsetAttr %8.lArmIKFK 0;";
createNode nurbsSurface -n "likHandControlShape" -p "likHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		32.431067578439951 28.438416303337185 5.8697145731791149
		32.431067578439951 28.438416303337185 5.8697145731791149
		32.431067578439951 28.438416303337185 5.8697145731791149
		32.431067578439951 28.438416303337185 5.8697145731791149
		32.431067578439951 28.438416303337185 5.8697145731791149
		34.431067578439951 25.988926560554006 3.4202248303959379
		34.431067578439951 25.988926560554006 8.3192043159622937
		34.431067578439951 30.887906046120364 8.3192043159622937
		34.431067578439951 30.887906046120364 3.4202248303959379
		34.431067578439951 25.988926560554006 3.4202248303959375
		38.431067578439951 25.988926560554006 3.4202248303959379
		38.431067578439951 25.988926560554006 8.3192043159622955
		38.431067578439951 30.887906046120364 8.3192043159622937
		38.431067578439951 30.887906046120364 3.4202248303959375
		38.431067578439951 25.988926560554006 3.4202248303959371
		40.431067578439951 28.438416303337185 5.8697145731791158
		40.431067578439951 28.438416303337185 5.8697145731791158
		40.431067578439951 28.438416303337185 5.8697145731791158
		40.431067578439951 28.438416303337185 5.8697145731791158
		40.431067578439951 28.438416303337185 5.8697145731791158
		
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
	setAttr ".lr" -type "double3" -24.480389550997678 -1.5838445195536355 19.272777093960666 ;
	setAttr ".rsrr" -type "double3" -24.656254893047922 -10.3099653966775 20.965166288860214 ;
	setAttr -k on ".w0";
createNode transform -n "lElbowControl" -p "main";
	addAttr -ci true -sn "lElbowControl" -ln "lElbowControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
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
	setAttr ".rp" -type "double3" 20.560762552688587 52.948097769022269 -6.1321770557556432 ;
	setAttr ".sp" -type "double3" 20.560762552688587 52.948097769022269 -6.1321770557556432 ;
	setAttr ".hdl" -type "double3" 20.560762552688587 52.948097769022269 -6.1321770557556432 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		19.560762552688587 52.948097769022269 -6.1321770557556432
		19.560762552688587 52.948097769022269 -6.1321770557556432
		19.560762552688587 52.948097769022269 -6.1321770557556432
		19.560762552688587 52.948097769022269 -6.1321770557556432
		19.560762552688587 52.948097769022269 -6.1321770557556432
		20.560762552688587 52.948097769022269 -7.1321770557556432
		20.560762552688587 51.948097769022269 -6.1321770557556432
		20.560762552688587 52.948097769022269 -5.1321770557556432
		20.560762552688587 53.948097769022269 -6.1321770557556432
		20.560762552688587 52.948097769022269 -7.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		21.560762552688587 52.948097769022269 -6.1321770557556432
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 24.437471629238591 36.117183447542409 0.096417170862964419 ;
	setAttr ".rpt" -type "double3" -11.241731209716983 4.1334137464132263 -10.460398857195901 ;
	setAttr ".sp" -type "double3" 24.437471629238591 36.117183447542409 0.096417170862964419 ;
createNode transform -n "sub_space_grp_L" -p "lHandControlGroup";
	setAttr ".rp" -type "double3" 24.437471631394317 39.663842822536182 0.096417143903273939 ;
	setAttr ".sp" -type "double3" 24.437471631394317 39.663842822536182 0.096417143903273939 ;
createNode transform -n "lHandControl" -p "sub_space_grp_L";
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
	setAttr ".r" -type "double3" -1.1927080055488184e-015 0 3.1805546814635168e-015 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -0.51914958725782134 -3.8574387455518786 1.6883868130156603 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 -5.2501105218107629e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 5.2501105218107629e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -5.2501105218107629e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 5.2501105218107629e-016 4.5
		-1.1498370615023457e-015 -2.3644395789680872 -4.5
		4.5 -2.3644395789680872 -3.3676674730115375e-016
		6.0860333699758185e-016 -2.3644395789680868 4.5
		-4.5 -2.3644395789680872 7.1390647300023646e-016
		-1.1498370615023457e-015 -2.3644395789680872 -4.5
		4.5 -2.3644395789680872 -3.3676674730115375e-016
		6.0860333699758185e-016 -2.3644395789680868 4.5
		-1.1498370615023457e-015 -4.7288791579361744 -4.5
		4.5 -4.7288791579361744 -2.1430611191891602e-016
		6.0860333699758185e-016 -4.7288791579361744 4.5
		-4.5 -4.7288791579361744 8.3636710838247419e-016
		-1.1498370615023457e-015 -4.7288791579361744 -4.5
		4.5 -4.7288791579361744 -2.1430611191891602e-016
		6.0860333699758185e-016 -4.7288791579361744 4.5
		-1.1498370615023457e-015 -7.0933187369042621 -4.5
		4.5 -7.0933187369042621 -9.1845476536678294e-017
		6.0860333699758185e-016 -7.0933187369042621 4.5
		-4.5 -7.0933187369042621 9.5882774376471192e-016
		-1.1498370615023457e-015 -7.0933187369042621 -4.5
		4.5 -7.0933187369042621 -9.1845476536678294e-017
		6.0860333699758185e-016 -7.0933187369042621 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -44.861325163558263 11.6628592286346 -29.680049361655428 ;
	setAttr ".rp" -type "double3" -2.4400899999999988 -1.9741600000000012 3.836564000000001 ;
	setAttr ".sp" -type "double3" -2.4400899999999988 -1.9741600000000012 3.836564000000001 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -2.4400899999999934 -1.974160000000003 3.8365639999999974 ;
	setAttr ".sp" -type "double3" -2.4400899999999934 -1.974160000000003 3.8365639999999974 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.4400899999999934 -1.974160000000003 3.8365639999999974 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.7890620083232288e-015 0 -1.5902773407317594e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999922 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -3.2307623243355035e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 3.2307623243355035e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -3.2307623243355035e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 3.2307623243355035e-016 2.25
		-5.7491853075117283e-016 -1.4550060000000011 -2.25
		2.25 -1.4550060000000011 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.4550060000000009 2.25
		-2.25 -1.4550060000000011 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.4550060000000011 -2.25
		2.25 -1.4550060000000011 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.4550060000000009 2.25
		-5.7491853075117283e-016 -2.9100120000000023 -2.25
		2.25 -2.9100120000000023 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.9100120000000023 2.25
		-2.25 -2.9100120000000023 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.9100120000000023 -2.25
		2.25 -2.9100120000000023 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.9100120000000023 2.25
		-5.7491853075117283e-016 -4.3650180000000036 -2.25
		2.25 -4.3650180000000036 -4.5922738268339147e-017
		3.0430166849879092e-016 -4.3650180000000036 2.25
		-2.25 -4.3650180000000036 4.7941387188235596e-016
		-5.7491853075117283e-016 -4.3650180000000036 -2.25
		2.25 -4.3650180000000036 -4.5922738268339147e-017
		3.0430166849879092e-016 -4.3650180000000036 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 27.712578196862587 7.9513867036587899e-016 1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" -6.6613381477509392e-016 -4.3650180000000152 -4.4408920985006262e-015 ;
	setAttr ".sp" -type "double3" -6.6613381477509392e-016 -4.3650180000000152 -4.4408920985006262e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -4.3650180000000107 1.9984014443252818e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -4.3650180000000107 1.9984014443252818e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -4.3650180000000107 1.9984014443252818e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 3.975693351829394e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3272479411815169e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3272479411815169e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3272479411815169e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3272479411815169e-016 2.25
		-5.7491853075117283e-016 -0.59773933333333373 -2.25
		2.25 -0.59773933333333373 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59773933333333362 2.25
		-2.25 -0.59773933333333373 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.59773933333333373 -2.25
		2.25 -0.59773933333333373 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59773933333333362 2.25
		-5.7491853075117283e-016 -1.1954786666666675 -2.25
		2.25 -1.1954786666666675 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1954786666666675 2.25
		-2.25 -1.1954786666666675 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1954786666666675 -2.25
		2.25 -1.1954786666666675 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1954786666666675 2.25
		-5.7491853075117283e-016 -1.7932180000000013 -2.25
		2.25 -1.7932180000000013 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7932180000000013 2.25
		-2.25 -1.7932180000000013 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7932180000000013 -2.25
		2.25 -1.7932180000000013 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7932180000000013 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -17.637271556210514 0 -1.5902773407317576e-015 ;
	setAttr ".rp" -type "double3" 5.1070259132757201e-015 -1.7932180000000049 -3.219646771412954e-015 ;
	setAttr ".sp" -type "double3" 5.1070259132757201e-015 -1.7932180000000049 -3.219646771412954e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 2.4424906541753444e-015 -1.7932180000000093 4.5519144009631418e-015 ;
	setAttr ".sp" -type "double3" 2.4424906541753444e-015 -1.7932180000000093 4.5519144009631418e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 -1.7932180000000093 4.5519144009631418e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.951386703658788e-016 3.975693351829394e-016 -1.5902773407317576e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9469508047456443e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9469508047456443e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9469508047456443e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9469508047456443e-016 2.25
		-5.7491853075117283e-016 -0.87682869187611712 -2.25
		2.25 -0.87682869187611712 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.87682869187611701 2.25
		-2.25 -0.87682869187611712 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.87682869187611712 -2.25
		2.25 -0.87682869187611712 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.87682869187611701 2.25
		-5.7491853075117283e-016 -1.7536573837522342 -2.25
		2.25 -1.7536573837522342 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7536573837522342 2.25
		-2.25 -1.7536573837522342 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7536573837522342 -2.25
		2.25 -1.7536573837522342 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7536573837522342 2.25
		-5.7491853075117283e-016 -2.6304860756283515 -2.25
		2.25 -2.6304860756283515 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6304860756283515 2.25
		-2.25 -2.6304860756283515 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6304860756283515 -2.25
		2.25 -2.6304860756283515 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6304860756283515 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 172.63677314828823 77.620952548291484 163.77241713341476 ;
	setAttr ".rp" -type "double3" -0.75159400000000165 -6.8597430000000035 4.6006339999999986 ;
	setAttr ".sp" -type "double3" -0.75159400000000165 -6.8597430000000035 4.6006339999999986 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.75159400000000431 -6.8597429999999981 4.600634000000003 ;
	setAttr ".sp" -type "double3" -0.75159400000000431 -6.8597429999999981 4.600634000000003 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.7515940000000072 -11.068308808060372 2.9586850552692141 ;
	setAttr ".sp" -type "double3" -0.7515940000000072 -11.068308808060372 2.9586850552692141 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.75159400000000698 -6.859742999999991 4.600634000000003 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -7.9513867036587959e-016 3.0811623476677833e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999989 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.6650444813943377e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.6650444813943377e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.6650444813943377e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.6650444813943377e-016 2.25
		-5.7491853075117283e-016 -1.2002293333333336 -2.25
		2.25 -1.2002293333333336 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2002293333333334 2.25
		-2.25 -1.2002293333333336 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.2002293333333336 -2.25
		2.25 -1.2002293333333336 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2002293333333334 2.25
		-5.7491853075117283e-016 -2.4004586666666672 -2.25
		2.25 -2.4004586666666672 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.4004586666666672 2.25
		-2.25 -2.4004586666666672 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.4004586666666672 -2.25
		2.25 -2.4004586666666672 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.4004586666666672 2.25
		-5.7491853075117283e-016 -3.6006880000000008 -2.25
		2.25 -3.6006880000000008 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.6006880000000008 2.25
		-2.25 -3.6006880000000008 4.7941387188235596e-016
		-5.7491853075117283e-016 -3.6006880000000008 -2.25
		2.25 -3.6006880000000008 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.6006880000000008 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 53.651741467469925 -7.9513867036587919e-016 3.0811623476677818e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -3.6006880000000039 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -3.6006880000000039 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0 -3.6006880000000017 0 ;
	setAttr ".sp" -type "double3" 0 -3.6006880000000017 0 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -3.6006880000000017 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 -1.1927080055488188e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.6747862356207104e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6747862356207104e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6747862356207104e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6747862356207104e-016 2.25
		-5.7491853075117283e-016 -0.75425666666666669 -2.25
		2.25 -0.75425666666666669 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.75425666666666658 2.25
		-2.25 -0.75425666666666669 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.75425666666666669 -2.25
		2.25 -0.75425666666666669 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.75425666666666658 2.25
		-5.7491853075117283e-016 -1.5085133333333334 -2.25
		2.25 -1.5085133333333334 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5085133333333334 2.25
		-2.25 -1.5085133333333334 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5085133333333334 -2.25
		2.25 -1.5085133333333334 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5085133333333334 2.25
		-5.7491853075117283e-016 -2.2627700000000002 -2.25
		2.25 -2.2627700000000002 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2627700000000002 2.25
		-2.25 -2.2627700000000002 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.2627700000000002 -2.25
		2.25 -2.2627700000000002 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2627700000000002 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" 4.4683620776351631 5.1684013573782159e-015 -2.3854160110976384e-015 ;
	setAttr ".rp" -type "double3" 2.6645352591003757e-015 -2.2627700000000104 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-015 -2.2627700000000104 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -2.26277 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -2.26277 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -2.26277 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.180554681463516e-015 1.5902773407317588e-015 -2.3854160110976384e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9530611902336586e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9530611902336586e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9530611902336586e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9530611902336586e-016 2.25
		-5.7491853075117283e-016 -0.87958056485680824 -2.25
		2.25 -0.87958056485680824 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.87958056485680813 2.25
		-2.25 -0.87958056485680824 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.87958056485680824 -2.25
		2.25 -0.87958056485680824 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.87958056485680813 2.25
		-5.7491853075117283e-016 -1.7591611297136165 -2.25
		2.25 -1.7591611297136165 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7591611297136165 2.25
		-2.25 -1.7591611297136165 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7591611297136165 -2.25
		2.25 -1.7591611297136165 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7591611297136165 2.25
		-5.7491853075117283e-016 -2.6387416945704247 -2.25
		2.25 -2.6387416945704247 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6387416945704247 2.25
		-2.25 -2.6387416945704247 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6387416945704247 -2.25
		2.25 -2.6387416945704247 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6387416945704247 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 177.16274577298242 68.239180779672196 155.91856420836012 ;
	setAttr ".rp" -type "double3" -0.71304800000000912 -6.783447000000006 1.9471980000000011 ;
	setAttr ".sp" -type "double3" -0.71304800000000912 -6.783447000000006 1.9471980000000011 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.71304800000001034 -6.7834470000000051 1.9471980000000038 ;
	setAttr ".sp" -type "double3" -0.71304800000001034 -6.7834470000000051 1.9471980000000038 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.71304800000001789 -11.915521572938751 0.13632998833908783 ;
	setAttr ".sp" -type "double3" -0.71304800000001789 -11.915521572938751 0.13632998833908783 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.71304800000001389 -6.783446999999998 1.9471980000000002 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036588008e-016 0 -8.4483483726374748e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999889 0.999999999999999 0.99999999999999922 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -3.5007300761928197e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 3.5007300761928197e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -3.5007300761928197e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 3.5007300761928197e-016 2.25
		-5.7491853075117283e-016 -1.5765886666666671 -2.25
		2.25 -1.5765886666666671 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.5765886666666669 2.25
		-2.25 -1.5765886666666671 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.5765886666666671 -2.25
		2.25 -1.5765886666666671 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.5765886666666669 2.25
		-5.7491853075117283e-016 -3.1531773333333342 -2.25
		2.25 -3.1531773333333342 -1.0715305595945801e-016
		3.0430166849879092e-016 -3.1531773333333342 2.25
		-2.25 -3.1531773333333342 4.1818355419123709e-016
		-5.7491853075117283e-016 -3.1531773333333342 -2.25
		2.25 -3.1531773333333342 -1.0715305595945801e-016
		3.0430166849879092e-016 -3.1531773333333342 2.25
		-5.7491853075117283e-016 -4.7297660000000015 -2.25
		2.25 -4.7297660000000015 -4.5922738268339147e-017
		3.0430166849879092e-016 -4.7297660000000015 2.25
		-2.25 -4.7297660000000015 4.7941387188235596e-016
		-5.7491853075117283e-016 -4.7297660000000015 -2.25
		2.25 -4.7297660000000015 -4.5922738268339147e-017
		3.0430166849879092e-016 -4.7297660000000015 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 47.021043225179774 -7.9513867036587939e-016 1.9381505090168309e-015 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -4.7297660000000015 0 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -4.7297660000000015 0 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -4.7297660000000121 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -4.7297660000000121 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -4.7297660000000121 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587939e-016 3.1805546814635176e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.0416549932159958e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0416549932159958e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.0416549932159958e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0416549932159958e-016 2.25
		-5.7491853075117283e-016 -0.91947966666666714 -2.25
		2.25 -0.91947966666666714 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.91947966666666703 2.25
		-2.25 -0.91947966666666714 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.91947966666666714 -2.25
		2.25 -0.91947966666666714 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.91947966666666703 2.25
		-5.7491853075117283e-016 -1.8389593333333343 -2.25
		2.25 -1.8389593333333343 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8389593333333343 2.25
		-2.25 -1.8389593333333343 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8389593333333343 -2.25
		2.25 -1.8389593333333343 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8389593333333343 2.25
		-5.7491853075117283e-016 -2.7584390000000014 -2.25
		2.25 -2.7584390000000014 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7584390000000014 2.25
		-2.25 -2.7584390000000014 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.7584390000000014 -2.25
		2.25 -2.7584390000000014 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7584390000000014 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 5.2483317621874406 -7.9513867036587939e-016 3.9756933518293969e-016 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -2.7584389999999992 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -2.7584389999999992 0 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -5.3290705182007514e-015 -2.7584389999999992 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-015 -2.7584389999999992 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.3290705182007514e-015 -2.7584389999999992 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 7.9513867036587939e-016 -7.9513867036587939e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.0360172185995414e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0360172185995414e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.0360172185995414e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.0360172185995414e-016 2.25
		-5.7491853075117283e-016 -0.91694063870048081 -2.25
		2.25 -0.91694063870048081 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.9169406387004807 2.25
		-2.25 -0.91694063870048081 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.91694063870048081 -2.25
		2.25 -0.91694063870048081 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.9169406387004807 2.25
		-5.7491853075117283e-016 -1.8338812774009616 -2.25
		2.25 -1.8338812774009616 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8338812774009616 2.25
		-2.25 -1.8338812774009616 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8338812774009616 -2.25
		2.25 -1.8338812774009616 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8338812774009616 2.25
		-5.7491853075117283e-016 -2.7508219161014424 -2.25
		2.25 -2.7508219161014424 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7508219161014424 2.25
		-2.25 -2.7508219161014424 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.7508219161014424 -2.25
		2.25 -2.7508219161014424 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7508219161014424 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -178.81833348200919 65.725762412256302 156.98195246087931 ;
	setAttr ".rp" -type "double3" -1.6810870000000013 -6.5766640000000027 -0.63978800000000113 ;
	setAttr ".sp" -type "double3" -1.6810870000000013 -6.5766640000000027 -0.63978800000000113 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.6810870000000002 -6.5766640000000134 -0.63978800000000291 ;
	setAttr ".sp" -type "double3" -1.6810870000000002 -6.5766640000000134 -0.63978800000000291 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -1.6810870000000004 -11.420577220613509 -2.3167979910348038 ;
	setAttr ".sp" -type "double3" -1.6810870000000004 -11.420577220613509 -2.3167979910348038 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.681087000000002 -6.5766640000000134 -0.63978800000000646 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317592e-015 1.5902773407317594e-015 5.9635400277440979e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999978 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.7985695242686395e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.7985695242686395e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.7985695242686395e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.7985695242686395e-016 2.25
		-5.7491853075117283e-016 -1.2603636666666671 -2.25
		2.25 -1.2603636666666671 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2603636666666669 2.25
		-2.25 -1.2603636666666671 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.2603636666666671 -2.25
		2.25 -1.2603636666666671 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.2603636666666669 2.25
		-5.7491853075117283e-016 -2.5207273333333342 -2.25
		2.25 -2.5207273333333342 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.5207273333333342 2.25
		-2.25 -2.5207273333333342 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.5207273333333342 -2.25
		2.25 -2.5207273333333342 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.5207273333333342 2.25
		-5.7491853075117283e-016 -3.7810910000000013 -2.25
		2.25 -3.7810910000000013 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.7810910000000013 2.25
		-2.25 -3.7810910000000013 4.7941387188235596e-016
		-5.7491853075117283e-016 -3.7810910000000013 -2.25
		2.25 -3.7810910000000013 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.7810910000000013 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 34.561520760706976 7.9513867036587899e-016 -2.9817700138720464e-015 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-015 -3.7810910000000009 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-015 -3.7810910000000009 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 -3.7810909999999964 0 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 -3.7810909999999964 0 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 -3.7810909999999964 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317576e-015 -2.3854160110976364e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.7751911052243937e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7751911052243937e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7751911052243937e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7751911052243937e-016 2.25
		-5.7491853075117283e-016 -0.79947499999999982 -2.25
		2.25 -0.79947499999999982 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79947499999999971 2.25
		-2.25 -0.79947499999999982 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.79947499999999982 -2.25
		2.25 -0.79947499999999982 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79947499999999971 2.25
		-5.7491853075117283e-016 -1.5989499999999996 -2.25
		2.25 -1.5989499999999996 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5989499999999996 2.25
		-2.25 -1.5989499999999996 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5989499999999996 -2.25
		2.25 -1.5989499999999996 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5989499999999996 2.25
		-5.7491853075117283e-016 -2.3984249999999996 -2.25
		2.25 -2.3984249999999996 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3984249999999996 2.25
		-2.25 -2.3984249999999996 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3984249999999996 -2.25
		2.25 -2.3984249999999996 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3984249999999996 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 16.826288233507857 7.9513867036587899e-016 -1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -2.3984249999999978 1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -2.3984249999999978 1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -2.3984249999999925 1.2434497875801753e-014 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -2.3984249999999925 1.2434497875801753e-014 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -2.3984249999999925 1.2434497875801753e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587899e-016 -7.9513867036587899e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9894989056832096e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9894989056832096e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9894989056832096e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9894989056832096e-016 2.25
		-5.7491853075117283e-016 -0.89599065302889125 -2.25
		2.25 -0.89599065302889125 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.89599065302889114 2.25
		-2.25 -0.89599065302889125 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.89599065302889125 -2.25
		2.25 -0.89599065302889125 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.89599065302889114 2.25
		-5.7491853075117283e-016 -1.7919813060577825 -2.25
		2.25 -1.7919813060577825 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7919813060577825 2.25
		-2.25 -1.7919813060577825 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7919813060577825 -2.25
		2.25 -1.7919813060577825 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7919813060577825 2.25
		-5.7491853075117283e-016 -2.6879719590866737 -2.25
		2.25 -2.6879719590866737 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6879719590866737 2.25
		-2.25 -2.6879719590866737 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6879719590866737 -2.25
		2.25 -2.6879719590866737 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6879719590866737 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 169.75574330747753 58.305358260036833 139.78207895163519 ;
	setAttr ".rp" -type "double3" -2.6397050000000037 -6.5528300000000073 -2.6416590000000051 ;
	setAttr ".sp" -type "double3" -2.6397050000000037 -6.5528300000000073 -2.6416590000000051 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -2.6397050000000051 -6.552830000000001 -2.6416590000000078 ;
	setAttr ".sp" -type "double3" -2.6397050000000051 -6.552830000000001 -2.6416590000000078 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -2.6397050000000069 -10.682635645404888 -3.9908966600734996 ;
	setAttr ".sp" -type "double3" -2.6397050000000069 -10.682635645404888 -3.9908966600734996 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.6397050000000069 -6.5528299999999939 -2.6416590000000113 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317594e-015 1.5902773407317594e-015 3.9756933518293984e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999944 0.99999999999999967 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.231576405146523e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.231576405146523e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.231576405146523e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.231576405146523e-016 2.25
		-5.7491853075117283e-016 -1.0050126666666672 -2.25
		2.25 -1.0050126666666672 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.005012666666667 2.25
		-2.25 -1.0050126666666672 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.0050126666666672 -2.25
		2.25 -1.0050126666666672 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.005012666666667 2.25
		-5.7491853075117283e-016 -2.0100253333333344 -2.25
		2.25 -2.0100253333333344 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.0100253333333344 2.25
		-2.25 -2.0100253333333344 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.0100253333333344 -2.25
		2.25 -2.0100253333333344 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.0100253333333344 2.25
		-5.7491853075117283e-016 -3.0150380000000014 -2.25
		2.25 -3.0150380000000014 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.0150380000000014 2.25
		-2.25 -3.0150380000000014 4.7941387188235596e-016
		-5.7491853075117283e-016 -3.0150380000000014 -2.25
		2.25 -3.0150380000000014 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.0150380000000014 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 31.245420931704135 0 0 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-016 -3.0150379999999846 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 4.4408920985006262e-016 -3.0150379999999846 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -8.3266726846886741e-016 -3.0150379999999792 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -8.3266726846886741e-016 -3.0150379999999792 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.3266726846886741e-016 -3.0150379999999792 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 1.5902773407317584e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3901842640014671e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3901842640014671e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3901842640014671e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3901842640014671e-016 2.25
		-5.7491853075117283e-016 -0.62608333333333344 -2.25
		2.25 -0.62608333333333344 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.62608333333333333 2.25
		-2.25 -0.62608333333333344 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.62608333333333344 -2.25
		2.25 -0.62608333333333344 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.62608333333333333 2.25
		-5.7491853075117283e-016 -1.2521666666666669 -2.25
		2.25 -1.2521666666666669 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2521666666666669 2.25
		-2.25 -1.2521666666666669 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2521666666666669 -2.25
		2.25 -1.2521666666666669 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2521666666666669 2.25
		-5.7491853075117283e-016 -1.8782500000000004 -2.25
		2.25 -1.8782500000000004 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8782500000000004 2.25
		-2.25 -1.8782500000000004 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8782500000000004 -2.25
		2.25 -1.8782500000000004 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8782500000000004 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" 20.546889839454966 0 1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" 1.3322676295501878e-015 -1.8782499999999924 0 ;
	setAttr ".sp" -type "double3" 1.3322676295501878e-015 -1.8782499999999924 0 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 2.3314683517128287e-015 -1.8782499999999906 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 2.3314683517128287e-015 -1.8782499999999906 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.3314683517128287e-015 -1.8782499999999906 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 0 -1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.6609423064767423e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6609423064767423e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6609423064767423e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6609423064767423e-016 2.25
		-5.7491853075117283e-016 -0.7480219152532549 -2.25
		2.25 -0.7480219152532549 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.74802191525325479 2.25
		-2.25 -0.7480219152532549 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.7480219152532549 -2.25
		2.25 -0.7480219152532549 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.74802191525325479 2.25
		-5.7491853075117283e-016 -1.4960438305065098 -2.25
		2.25 -1.4960438305065098 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4960438305065098 2.25
		-2.25 -1.4960438305065098 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4960438305065098 -2.25
		2.25 -1.4960438305065098 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4960438305065098 2.25
		-5.7491853075117283e-016 -2.2440657457597646 -2.25
		2.25 -2.2440657457597646 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2440657457597646 2.25
		-2.25 -2.2440657457597646 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.2440657457597646 -2.25
		2.25 -2.2440657457597646 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2440657457597646 2.25
		
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
	setAttr ".rst" -type "double3" 24.437471629238594 39.663842815994542 0.096417170862964419 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-015 -3.5466593684521448 
		-3.315286789720767e-015 ;
	setAttr ".tg[0].tor" -type "double3" -8.7465253740246703e-015 -2.5444437451708122e-014 
		-2.5444437451708122e-014 ;
	setAttr ".tg[1].tot" -type "double3" -1.7958251063987518e-007 -3.5466593684521386 
		-1.3565103676313051e-014 ;
	setAttr ".tg[1].tor" -type "double3" -5.5659706925611528e-015 0 1.5902773407317584e-015 ;
	setAttr ".lr" -type "double3" -24.480389550997671 -1.5838445195536348 19.272777093960666 ;
	setAttr ".rst" -type "double3" 12.147755386004738 -3.691412456179485 11.916081200691451 ;
	setAttr ".rsrr" -type "double3" -24.65625488969587 -10.309966981810231 20.965166270130887 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lkneeControl" -p "main";
	addAttr -ci true -sn "lKneeControl" -ln "lKneeControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.4335254988441068 21.708509813730828 -0.17027991994960784 ;
	setAttr ".sp" -type "double3" 7.4335254988441068 21.708509813730828 -0.17027991994960784 ;
	setAttr ".hdl" -type "double3" 7.4335254988441068 21.708509813730828 -0.17027991994960784 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		6.4335254988441068 21.708509813730828 -0.17027991994960809
		7.4335254988441068 21.708509813730828 -1.1702799199496079
		7.4335254988441068 20.708509813730828 -0.17027991994960784
		7.4335254988441068 21.708509813730828 0.82972008005039211
		7.4335254988441068 22.708509813730828 -0.17027991994960773
		7.4335254988441068 21.708509813730828 -1.1702799199496079
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		8.4335254988441068 21.708509813730828 -0.17027991994960773
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "lFootControl" -ln "lFootControl" -at "message";
	addAttr -ci true -sn "ankleLift" -ln "ankleLift" -min 0 -max 120 -at "double";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 0 24.576349788397355 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 8.5225681975941274 5.2999530375109671 -0.20683547516071155 ;
	setAttr ".rpt" -type "double3" -0.85810167946427585 0 -3.5258448739844233 ;
	setAttr ".sp" -type "double3" 8.5225681975941274 5.2999530375109671 -0.20683547516071155 ;
	setAttr ".hdl" -type "double3" 8.5225681975941274 5.2999530375109671 -0.20683547516071155 ;
	setAttr ".dh" yes;
	setAttr -k on ".heelRock";
	setAttr -k on ".toeLift";
	setAttr -k on ".ankleBank";
	setAttr -k on ".rockL";
	setAttr -k on ".rockR";
	setAttr -k on ".ballPivot";
	setAttr -k on ".ankleLift";
createNode nurbsSurface -n "lFootControlShape" -p "lFootControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		4.789506803266022 5.2999530375109662 -0.20683547516071213
		6.6560375004300747 0.36395262010884188 -4.2289234502378008
		6.6560375004300747 0.36395262010884188 5.4718879725001308
		6.6560375004300747 10.235953454913092 5.4718879725001308
		6.6560375004300747 10.235953454913092 -4.2289234502378008
		6.6560375004300747 0.36395262010884188 -4.2289234502378026
		10.389098894758181 0.36395262010884188 -4.2289234502378008
		10.389098894758181 0.36395262010884188 5.4718879725001308
		10.389098894758181 10.235953454913092 5.4718879725001308
		10.389098894758181 10.235953454913092 -4.2289234502378008
		10.389098894758181 0.36395262010884188 -4.2289234502378026
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		12.255629591922233 5.2999530375109662 -0.20683547516071113
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 7.6644665181298519 5.2999530375109707 -3.7326803491451321 ;
	setAttr ".sp" -type "double3" 7.6644665181298519 5.2999530375109707 -3.7326803491451321 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 7.6644665181298519 5.2999530375109707 -3.7326803491451321 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 58.731824538644005 1.4944904031740267 2.4592928287099269 ;
	setAttr ".rp" -type "double3" 1.6016380066652403e-007 -8.5512755542024887 -1.0034089472619021 ;
	setAttr ".sp" -type "double3" 1.6016380066652403e-007 -8.5512755542024887 -1.0034089472619021 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" 1.6016380066652403e-007 -8.5512755542024887 -1.0034089472619021 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".r" -type "double3" 0 0 3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -3.3075054259631056 -1.1687182267459945e-016 -0.14549314260131929 ;
	setAttr ".sp" -type "double3" -3.3075054259631056 -1.1687182267459945e-016 -0.14549314260131929 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -3.3075054259631056 -1.1687182267459945e-016 -0.14549314260131929 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".r" -type "double3" 0 0 3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" 7.429739713280739 1.7163790280066146e-016 0.73617748416443618 ;
	setAttr ".sp" -type "double3" 7.429739713280739 1.7163790280066146e-016 0.73617748416443618 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 7.429739713280739 1.7163790280066146e-016 0.73617748416443618 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" -3.5311250384401269e-031 0 3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -3.9651926794729659 2.2269672392420144e-015 -10.834798591834586 ;
	setAttr ".sp" -type "double3" -3.9651926794729659 2.2269672392420144e-015 -10.834798591834586 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -3.9651926794729659 2.2269672392420144e-015 -10.834798591834586 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -3.5311250384401269e-031 0 3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -0.19694464246592247 0.32833915948867459 15.180985080810668 ;
	setAttr ".sp" -type "double3" -0.19694464246592247 0.32833915948867459 15.180985080810668 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" -0.19694464246592247 0.32833915948867459 15.180985080810668 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -90.000000000000057 -2.8775425125534784 0 ;
	setAttr ".rp" -type "double3" 0.039902857078343512 0.84598481743387244 -4.9368704888112607 ;
	setAttr ".sp" -type "double3" 0.039902857078343512 0.84598481743387244 -4.9368704888112607 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 0.039902857078343512 0.84598481743387244 -4.9368704888112607 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 31.300256028924583 0 0 ;
	setAttr ".rp" -type "double3" 5.3290705182007514e-015 6.7853994482383655 4.1256290605884294 ;
	setAttr ".sp" -type "double3" 5.3290705182007514e-015 6.7853994482383655 4.1256290605884294 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 6.7853994482383655 4.1256290605884294 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.6686286086970687 -0.46712166495885221 0.26879833546023885 ;
	setAttr ".r" -type "double3" 61.060292473969248 -12.478450226502549 -21.344273154985586 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 6.7498287272087829 0.013003912838538415 -3.6793967330367763 ;
	setAttr ".rpt" -type "double3" 0.91879970698031244 0.45411775271233412 3.4105983784971152 ;
	setAttr ".sp" -type "double3" 6.7498287255249707 0.013003913136831358 -3.6793967323422319 ;
	setAttr ".spt" -type "double3" 0 3.469446951953615e-018 1.7763568394002497e-015 ;
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
	setAttr ".rst" -type "double3" 1.1754863645729747 -7.5435373561318677 -10.985533303052351 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.3613163925952341 0.77885869544541175 -11.888759865923499 ;
	setAttr ".r" -type "double3" -1.0173979308305419e-015 -27.45389020539551 -3.0316363643097565e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 8.8853895259733608 0.067126134697483422 3.2177987410859914 ;
	setAttr ".rpt" -type "double3" -2.4841701372511182 0 3.7340906498535782 ;
	setAttr ".sp" -type "double3" 8.8853895122766922 0.067126145349134525 3.2177987280861111 ;
	setAttr ".spt" -type "double3" 1.7763568394002509e-015 1.387778780781446e-017 0 ;
	setAttr ".pv" -type "double3" -0.052161515370124589 1.7089130160431143 1.0377357466680612 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -90.000000000000057 -2.8775425125534784 0 ;
	setAttr ".rp" -type "double3" -0.15704178538758118 1.1743239769225471 10.244114591999409 ;
	setAttr ".sp" -type "double3" -0.15704178538758118 1.1743239769225471 10.244114591999409 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -0.15704178538758118 1.1743239769225471 10.244114591999409 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 90.000000000000057 -5.649800061504203e-030 2.8775425125534815 ;
	setAttr ".rp" -type "double3" 0.20798566634480986 -4.9326488243025839 -0.84598481743387699 ;
	setAttr ".sp" -type "double3" 0.20798566634480986 -4.9326488243025839 -0.84598481743387699 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" 0.20798566634480986 -4.9326488243025839 -0.84598481743387699 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8820552053529611 0.42658779897403215 -7.4361708561787703 ;
	setAttr ".r" -type "double3" -1.0956987234281442e-015 -27.453890205395499 -1.9909774602678563e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 5.3538160991527208 0.41939705022799256 4.3881605142417301 ;
	setAttr ".rpt" -type "double3" -2.6260292201648889 0 1.9741093845537407 ;
	setAttr ".sp" -type "double3" 5.3538160991527208 0.41939705022799256 4.3881605142417293 ;
	setAttr ".spt" -type "double3" 8.8817841970012543e-016 0 -8.8817841970012513e-016 ;
	setAttr ".pv" -type "double3" -1.9974782298886251 9.605053303081095e-009 -0.10040279438844812 ;
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
	setAttr ".lr" -type "double3" 90.000000000000057 0 0 ;
	setAttr ".o" -type "double3" -90.000000000000057 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "lToeControlZeroGroup" -p "lReverseHeelLift";
	setAttr ".t" -type "double3" -0.15704178538757851 1.1743239769225482 10.244114591999407 ;
	setAttr ".r" -type "double3" -9.0396055365117476e-016 -2.8775425125534739 2.9386434800941357e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-3.7330613943281055 -4.8488405404259261e-016 -8.0814009007098746e-016
		-1.8665306971640523 -0.90161045816363616 -0.41949320148258806
		-1.8665306971640527 -0.90161045816363572 4.7599929997701027
		-1.866530697164053 0.90161045816363616 4.7599929997701018
		-1.8665306971640525 0.90161045816363616 -0.41949320148258806
		-1.8665306971640523 -0.90161045816363572 -0.41949320148258851
		1.866530697164053 -0.90161045816363616 -0.41949320148258806
		1.8665306971640525 -0.90161045816363572 4.7599929997701027
		1.8665306971640523 0.90161045816363616 4.7599929997701018
		1.8665306971640527 0.90161045816363616 -0.41949320148258806
		1.866530697164053 -0.90161045816363572 -0.41949320148258851
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		3.7330613943281055 -5.7102842486556471e-016 -2.4777238883716952e-016
		
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 3.5527136788005009e-015 
		2.5193179718594079e-015 ;
	setAttr ".tg[0].tor" -type "double3" -58.699743971075485 -2.0955553205360245e-006 
		0 ;
	setAttr ".lr" -type "double3" -58.699743971075485 24.576347692842038 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -58.699743971075485 24.576347692842038 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.13799760994264809 8.701500422057542 -1.8136235261181224 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.33397515560046 10.3099669818102 -20.96516627013084 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" -3.6295371469208249e-005 17.670930314127716 5.0766117056788573e-006 ;
	setAttr ".r" -type "double3" 4.4674317740742096e-013 -2.5937459336008721e-018 4.1177628317614121e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -25.322279734095421 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" 2.3717933164135729e-005 15.175534544853107 9.8028085595558423e-006 ;
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
	setAttr ".rst" -type "double3" -14.204199999999995 69.434900794128211 -5.9300896958018612 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -16.793398919895083 2.2968670592208795 3.2877412526343406 ;
	setAttr ".sp" -type "double3" -16.79339891989509 2.2968670592208795 3.2877412526343397 ;
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
	setAttr ".rst" -type "double3" -7.6441010801027716 37.366933734908393 -3.1913240484273144 ;
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
	setAttr ".rst" -type "double3" -6.3565999999999985 -16.486800000000017 -0.20209000000001165 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -24.437499999997847 39.663800794129273 0.096417204207028595 ;
	setAttr ".sp" -type "double3" -24.437499999997847 39.663800794129273 0.096417204207028595 ;
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
	setAttr ".tg[0].tot" -type "double3" -24.437499999997847 -1.1986532058707202 3.1929222042070289 ;
	setAttr ".rst" -type "double3" 0 7.1054273576010019e-015 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 6.9944457547449801 36.873249456513186 -12.578936681809129 ;
	setAttr ".rp" -type "double3" -31.431945754742827 2.7905513376160851 12.675353886016158 ;
	setAttr ".sp" -type "double3" -31.431945754742827 2.7905513376160851 12.675353886016158 ;
createNode transform -n "rikHandControl" -p "rikHandControlWeaponGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 7.6035249865229062 -19.412179019748464 0.27823387169494929 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -36.431077512361284 -28.438381048879442 -5.8696567676986984 ;
	setAttr ".rpt" -type "double3" -2.6043932289044465 50.641111406243994 18.266776782019907 ;
	setAttr ".sp" -type "double3" -36.431077512361284 -28.43838104887945 -5.8696567676986993 ;
	setAttr ".spt" -type "double3" 0 7.1054273576010011e-015 8.8817841970012513e-016 ;
	setAttr ".hdl" -type "double3" -36.431077512361284 -28.43838104887945 -5.8696567676986993 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-40.431077512361277 -28.438381048879442 -5.869656767698701
		-38.431077512361277 -30.887870791662621 -8.3191465104818771
		-38.431077512361277 -30.887870791662621 -3.4201670249155223
		-38.431077512361277 -25.988891306096264 -3.4201670249155223
		-38.431077512361277 -25.988891306096264 -8.3191465104818771
		-38.431077512361277 -30.887870791662621 -8.3191465104818789
		-34.431077512361277 -30.887870791662621 -8.3191465104818771
		-34.431077512361277 -30.887870791662621 -3.4201670249155218
		-34.431077512361277 -25.988891306096264 -3.4201670249155223
		-34.431077512361277 -25.988891306096264 -8.3191465104818789
		-34.431077512361277 -30.887870791662621 -8.3191465104818789
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		-32.431077512361277 -28.438381048879442 -5.8696567676987002
		
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
	setAttr ".lr" -type "double3" 155.51960884752705 1.5834562113650954 -19.272704270102977 ;
	setAttr ".rsrr" -type "double3" 155.34374317178552 10.31002171605857 -20.965177101457343 ;
	setAttr -k on ".w0";
createNode transform -n "rElbowControl" -p "main";
	addAttr -ci true -sn "rElbowControl" -ln "rElbowControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -20.560799999999993 52.948100794128194 -6.1321796958018728 ;
	setAttr ".sp" -type "double3" -20.560799999999993 52.948100794128194 -6.1321796958018728 ;
	setAttr ".hdl" -type "double3" -20.560799999999993 52.948100794128194 -6.1321796958018728 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-21.560799999999993 52.948100794128194 -6.1321796958018728
		-20.560799999999993 52.948100794128194 -7.1321796958018728
		-20.560799999999993 51.948100794128194 -6.1321796958018728
		-20.560799999999993 52.948100794128194 -5.1321796958018728
		-20.560799999999993 53.948100794128194 -6.1321796958018728
		-20.560799999999993 52.948100794128194 -7.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		-19.560799999999993 52.948100794128194 -6.1321796958018728
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -24.437499999999982 43.2104379927382 0.096417204198115947 ;
	setAttr ".rpt" -type "double3" -9.0812518369439452 -72.465169872517819 21.926220966264392 ;
	setAttr ".sp" -type "double3" -24.437499999999982 43.210437992738207 0.096417204198115947 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-015 0 ;
createNode transform -n "sub_space_grp_R" -p "rHandControlGroup";
	setAttr ".rp" -type "double3" -24.437500000001432 39.663800794128214 0.096417204197999595 ;
	setAttr ".sp" -type "double3" -24.437500000001432 39.663800794128214 0.096417204197999595 ;
createNode transform -n "rHandControl" -p "sub_space_grp_R";
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
	setAttr ".r" -type "double3" -3.9756933518293969e-016 1.5902773407317584e-015 -3.1805546814635168e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 0.51914958725781912 3.8574387455518795 -1.6883868130156645 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 5.2500777038518592e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -5.2500777038518592e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 5.2500777038518592e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -5.2500777038518592e-016 4.5
		-1.1498370615023457e-015 2.3644247990733382 -4.5
		4.5 2.3644247990733382 -3.3676674730115375e-016
		6.0860333699758185e-016 2.3644247990733378 4.5
		-4.5 2.3644247990733382 7.1390647300023646e-016
		-1.1498370615023457e-015 2.3644247990733382 -4.5
		4.5 2.3644247990733382 -3.3676674730115375e-016
		6.0860333699758185e-016 2.3644247990733378 4.5
		-1.1498370615023457e-015 4.7288495981466765 -4.5
		4.5 4.7288495981466765 -2.1430611191891602e-016
		6.0860333699758185e-016 4.7288495981466765 4.5
		-4.5 4.7288495981466765 8.3636710838247419e-016
		-1.1498370615023457e-015 4.7288495981466765 -4.5
		4.5 4.7288495981466765 -2.1430611191891602e-016
		6.0860333699758185e-016 4.7288495981466765 4.5
		-1.1498370615023457e-015 7.0932743972200143 -4.5
		4.5 7.0932743972200143 -9.1845476536678294e-017
		6.0860333699758185e-016 7.0932743972200143 4.5
		-4.5 7.0932743972200143 9.5882774376471192e-016
		-1.1498370615023457e-015 7.0932743972200143 -4.5
		4.5 7.0932743972200143 -9.1845476536678294e-017
		6.0860333699758185e-016 7.0932743972200143 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -44.861325163558263 11.662859228634591 -29.680049361655424 ;
	setAttr ".rp" -type "double3" 2.4401389999999927 1.9741210000000065 -3.8365910000000065 ;
	setAttr ".sp" -type "double3" 2.4401389999999927 1.9741210000000065 -3.8365910000000065 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.4401389999999896 1.9741210000000056 -3.8365910000000132 ;
	setAttr ".sp" -type "double3" 2.4401389999999896 1.9741210000000056 -3.8365910000000132 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.4401389999999896 1.9741210000000056 -3.8365910000000132 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.951386703658788e-016 7.9513867036587919e-016 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:bip_thumb_0_RControlShape" -p "Ref:bip_thumb_0_RControl";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 3.2307527027241712e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -3.2307527027241712e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 3.2307527027241712e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -3.2307527027241712e-016 2.25
		-5.7491853075117283e-016 1.45500166681148 -2.25
		2.25 1.45500166681148 -1.6838337365057687e-016
		3.0430166849879092e-016 1.4550016668114798 2.25
		-2.25 1.45500166681148 3.5695323650011823e-016
		-5.7491853075117283e-016 1.45500166681148 -2.25
		2.25 1.45500166681148 -1.6838337365057687e-016
		3.0430166849879092e-016 1.4550016668114798 2.25
		-5.7491853075117283e-016 2.91000333362296 -2.25
		2.25 2.91000333362296 -1.0715305595945801e-016
		3.0430166849879092e-016 2.91000333362296 2.25
		-2.25 2.91000333362296 4.1818355419123709e-016
		-5.7491853075117283e-016 2.91000333362296 -2.25
		2.25 2.91000333362296 -1.0715305595945801e-016
		3.0430166849879092e-016 2.91000333362296 2.25
		-5.7491853075117283e-016 4.3650050004344401 -2.25
		2.25 4.3650050004344401 -4.5922738268339147e-017
		3.0430166849879092e-016 4.3650050004344401 2.25
		-2.25 4.3650050004344401 4.7941387188235596e-016
		-5.7491853075117283e-016 4.3650050004344401 -2.25
		2.25 4.3650050004344401 -4.5922738268339147e-017
		3.0430166849879092e-016 4.3650050004344401 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 27.712578196862541 0 1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" -6.0634199997577909e-005 4.3650050000000098 -1.0777599998679221e-005 ;
	setAttr ".sp" -type "double3" -6.0634199997577909e-005 4.3650050000000098 -1.0777599998679221e-005 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -6.0634199998244043e-005 4.365005000000016 -1.077759999668082e-005 ;
	setAttr ".sp" -type "double3" -6.0634199998244043e-005 4.365005000000016 -1.077759999668082e-005 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.0634199998244043e-005 4.365005000000016 -1.077759999668082e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.9574633657014459e-015 7.9513867036587939e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3272494215039897e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3272494215039897e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3272494215039897e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3272494215039897e-016 2.25
		-5.7491853075117283e-016 0.59774000001130745 -2.25
		2.25 0.59774000001130745 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59774000001130734 2.25
		-2.25 0.59774000001130745 3.5695323650011823e-016
		-5.7491853075117283e-016 0.59774000001130745 -2.25
		2.25 0.59774000001130745 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59774000001130734 2.25
		-5.7491853075117283e-016 1.1954800000226149 -2.25
		2.25 1.1954800000226149 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1954800000226149 2.25
		-2.25 1.1954800000226149 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1954800000226149 -2.25
		2.25 1.1954800000226149 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1954800000226149 2.25
		-5.7491853075117283e-016 1.7932200000339225 -2.25
		2.25 1.7932200000339225 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7932200000339225 2.25
		-2.25 1.7932200000339225 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7932200000339225 -2.25
		2.25 1.7932200000339225 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7932200000339225 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -17.637271556210457 -1.5902773407317576e-015 0 ;
	setAttr ".rp" -type "double3" 4.0444900000213835e-006 1.793220000000006 1.026130000669756e-005 ;
	setAttr ".sp" -type "double3" 4.0444900000213835e-006 1.793220000000006 1.026130000669756e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 4.0444900002434281e-006 1.7932200000000069 1.0261300001701557e-005 ;
	setAttr ".sp" -type "double3" 4.0444900002434281e-006 1.7932200000000069 1.0261300001701557e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.0444900002434281e-006 1.7932200000000069 1.0261300001701557e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.8823776800763094e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000009 1.0000000000000011 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.9469631370790546e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9469631370790546e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9469631370790546e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9469631370790546e-016 2.25
		-5.7491853075117283e-016 0.87683424586533221 -2.25
		2.25 0.87683424586533221 -1.6838337365057687e-016
		3.0430166849879092e-016 0.8768342458653321 2.25
		-2.25 0.87683424586533221 3.5695323650011823e-016
		-5.7491853075117283e-016 0.87683424586533221 -2.25
		2.25 0.87683424586533221 -1.6838337365057687e-016
		3.0430166849879092e-016 0.8768342458653321 2.25
		-5.7491853075117283e-016 1.7536684917306644 -2.25
		2.25 1.7536684917306644 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7536684917306644 2.25
		-2.25 1.7536684917306644 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7536684917306644 -2.25
		2.25 1.7536684917306644 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7536684917306644 2.25
		-5.7491853075117283e-016 2.6305027375959966 -2.25
		2.25 2.6305027375959966 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6305027375959966 2.25
		-2.25 2.6305027375959966 4.7941387188235596e-016
		-5.7491853075117283e-016 2.6305027375959966 -2.25
		2.25 2.6305027375959966 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6305027375959966 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 172.63677314828828 77.620952548291584 163.77241713341485 ;
	setAttr ".rp" -type "double3" 0.75155099999999031 6.8596830000000066 -4.6006550000000068 ;
	setAttr ".sp" -type "double3" 0.75155099999999031 6.8596830000000066 -4.6006550000000068 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.75155099999999209 6.8596830000000057 -4.6006550000000139 ;
	setAttr ".sp" -type "double3" 0.75155099999999209 6.8596830000000057 -4.6006550000000139 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.75154799566999198 11.068264514890723 -2.9586641937906033 ;
	setAttr ".sp" -type "double3" 0.75154799566999198 11.068264514890723 -2.9586641937906033 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.75155099999999297 6.8596830000000057 -4.600655000000021 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -7.9513867036587919e-016 4.2738703532166017e-015 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000007 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.6650341195475578e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.6650341195475578e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.6650341195475578e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.6650341195475578e-016 2.25
		-5.7491853075117283e-016 1.2002246667724039 -2.25
		2.25 1.2002246667724039 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2002246667724037 2.25
		-2.25 1.2002246667724039 3.5695323650011823e-016
		-5.7491853075117283e-016 1.2002246667724039 -2.25
		2.25 1.2002246667724039 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2002246667724037 2.25
		-5.7491853075117283e-016 2.4004493335448078 -2.25
		2.25 2.4004493335448078 -1.0715305595945801e-016
		3.0430166849879092e-016 2.4004493335448078 2.25
		-2.25 2.4004493335448078 4.1818355419123709e-016
		-5.7491853075117283e-016 2.4004493335448078 -2.25
		2.25 2.4004493335448078 -1.0715305595945801e-016
		3.0430166849879092e-016 2.4004493335448078 2.25
		-5.7491853075117283e-016 3.6006740003172117 -2.25
		2.25 3.6006740003172117 -4.5922738268339147e-017
		3.0430166849879092e-016 3.6006740003172117 2.25
		-2.25 3.6006740003172117 4.7941387188235596e-016
		-5.7491853075117283e-016 3.6006740003172117 -2.25
		2.25 3.6006740003172117 -4.5922738268339147e-017
		3.0430166849879092e-016 3.6006740003172117 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 53.651741467469961 0 -1.7890620083232288e-015 ;
	setAttr ".rp" -type "double3" 5.1146699977522303e-006 3.6006740000000077 4.7520400009659625e-005 ;
	setAttr ".sp" -type "double3" 5.1146699977522303e-006 3.6006740000000077 4.7520400009659625e-005 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 5.1146699977522303e-006 3.6006740000000015 4.7520400009659625e-005 ;
	setAttr ".sp" -type "double3" 5.1146699977522303e-006 3.6006740000000015 4.7520400009659625e-005 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.1146699977522303e-006 3.6006740000000015 4.7520400009659625e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270351e-015 0 -7.9513867036587959e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999956 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6748143616607868e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6748143616607868e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6748143616607868e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6748143616607868e-016 2.25
		-5.7491853075117283e-016 0.75426933350902747 -2.25
		2.25 0.75426933350902747 -1.6838337365057687e-016
		3.0430166849879092e-016 0.75426933350902736 2.25
		-2.25 0.75426933350902747 3.5695323650011823e-016
		-5.7491853075117283e-016 0.75426933350902747 -2.25
		2.25 0.75426933350902747 -1.6838337365057687e-016
		3.0430166849879092e-016 0.75426933350902736 2.25
		-5.7491853075117283e-016 1.5085386670180549 -2.25
		2.25 1.5085386670180549 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5085386670180549 2.25
		-2.25 1.5085386670180549 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5085386670180549 -2.25
		2.25 1.5085386670180549 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5085386670180549 2.25
		-5.7491853075117283e-016 2.2628080005270825 -2.25
		2.25 2.2628080005270825 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2628080005270825 2.25
		-2.25 2.2628080005270825 4.7941387188235596e-016
		-5.7491853075117283e-016 2.2628080005270825 -2.25
		2.25 2.2628080005270825 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2628080005270825 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" 4.4683620776354243 3.1805546814635152e-015 0 ;
	setAttr ".rp" -type "double3" -1.6237999999724195e-005 2.2628079999999819 -4.606189999201149e-005 ;
	setAttr ".sp" -type "double3" -1.6237999999724195e-005 2.2628079999999819 -4.606189999201149e-005 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.6237999996171482e-005 2.2628079999999748 -4.6061899988458777e-005 ;
	setAttr ".sp" -type "double3" -1.6237999996171482e-005 2.2628079999999748 -4.6061899988458777e-005 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.6237999996171482e-005 2.2628079999999748 -4.6061899988458777e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635152e-015 1.9878466759146964e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.9530898639482256e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9530898639482256e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9530898639482256e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9530898639482256e-016 2.25
		-5.7491853075117283e-016 0.87959347834983215 -2.25
		2.25 0.87959347834983215 -1.6838337365057687e-016
		3.0430166849879092e-016 0.87959347834983204 2.25
		-2.25 0.87959347834983215 3.5695323650011823e-016
		-5.7491853075117283e-016 0.87959347834983215 -2.25
		2.25 0.87959347834983215 -1.6838337365057687e-016
		3.0430166849879092e-016 0.87959347834983204 2.25
		-5.7491853075117283e-016 1.7591869566996643 -2.25
		2.25 1.7591869566996643 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7591869566996643 2.25
		-2.25 1.7591869566996643 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7591869566996643 -2.25
		2.25 1.7591869566996643 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7591869566996643 2.25
		-5.7491853075117283e-016 2.6387804350494966 -2.25
		2.25 2.6387804350494966 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6387804350494966 2.25
		-2.25 2.6387804350494966 4.7941387188235596e-016
		-5.7491853075117283e-016 2.6387804350494966 -2.25
		2.25 2.6387804350494966 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6387804350494966 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 177.16274577298242 68.239180779672253 155.91856420836015 ;
	setAttr ".rp" -type "double3" 0.71302399999999233 6.7833999999999959 -1.9472090000000124 ;
	setAttr ".sp" -type "double3" 0.71302399999999233 6.7833999999999959 -1.9472090000000124 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.71302399999999544 6.7833999999999897 -1.947209000000008 ;
	setAttr ".sp" -type "double3" 0.71302399999999544 6.7833999999999897 -1.947209000000008 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.71303010364999486 11.915483105989374 -0.13628692842811896 ;
	setAttr ".sp" -type "double3" 0.71303010364999486 11.915483105989374 -0.13628692842811896 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.71302399999999633 6.7833999999999897 -1.9472090000000044 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.9513867036587899e-016 -7.9513867036587899e-016 -2.981770013872046e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 3.5007189742252522e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -3.5007189742252522e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 3.5007189742252522e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -3.5007189742252522e-016 2.25
		-5.7491853075117283e-016 1.5765836667849671 -2.25
		2.25 1.5765836667849671 -1.6838337365057687e-016
		3.0430166849879092e-016 1.5765836667849669 2.25
		-2.25 1.5765836667849671 3.5695323650011823e-016
		-5.7491853075117283e-016 1.5765836667849671 -2.25
		2.25 1.5765836667849671 -1.6838337365057687e-016
		3.0430166849879092e-016 1.5765836667849669 2.25
		-5.7491853075117283e-016 3.1531673335699342 -2.25
		2.25 3.1531673335699342 -1.0715305595945801e-016
		3.0430166849879092e-016 3.1531673335699342 2.25
		-2.25 3.1531673335699342 4.1818355419123709e-016
		-5.7491853075117283e-016 3.1531673335699342 -2.25
		2.25 3.1531673335699342 -1.0715305595945801e-016
		3.0430166849879092e-016 3.1531673335699342 2.25
		-5.7491853075117283e-016 4.7297510003549013 -2.25
		2.25 4.7297510003549013 -4.5922738268339147e-017
		3.0430166849879092e-016 4.7297510003549013 2.25
		-2.25 4.7297510003549013 4.7941387188235596e-016
		-5.7491853075117283e-016 4.7297510003549013 -2.25
		2.25 4.7297510003549013 -4.5922738268339147e-017
		3.0430166849879092e-016 4.7297510003549013 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 47.021043225179966 0 -3.2799470152592529e-015 ;
	setAttr ".rp" -type "double3" 1.2207299997513132e-005 4.7297510000000207 5.6640300005739164e-005 ;
	setAttr ".sp" -type "double3" 1.2207299997513132e-005 4.7297510000000207 5.6640300005739164e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.2207299997513132e-005 4.7297510000000216 5.6640300005739164e-005 ;
	setAttr ".sp" -type "double3" 1.2207299997513132e-005 4.7297510000000216 5.6640300005739164e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2207299997513132e-005 4.7297510000000216 5.6640300005739164e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270375e-015 1.9878466759146984e-015 2.782985346280578e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999978 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.0416609144684055e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0416609144684055e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0416609144684055e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0416609144684055e-016 2.25
		-5.7491853075117283e-016 0.91948233336168173 -2.25
		2.25 0.91948233336168173 -1.6838337365057687e-016
		3.0430166849879092e-016 0.91948233336168161 2.25
		-2.25 0.91948233336168173 3.5695323650011823e-016
		-5.7491853075117283e-016 0.91948233336168173 -2.25
		2.25 0.91948233336168173 -1.6838337365057687e-016
		3.0430166849879092e-016 0.91948233336168161 2.25
		-5.7491853075117283e-016 1.8389646667233635 -2.25
		2.25 1.8389646667233635 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8389646667233635 2.25
		-2.25 1.8389646667233635 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8389646667233635 -2.25
		2.25 1.8389646667233635 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8389646667233635 2.25
		-5.7491853075117283e-016 2.7584470000850452 -2.25
		2.25 2.7584470000850452 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7584470000850452 2.25
		-2.25 2.7584470000850452 4.7941387188235596e-016
		-5.7491853075117283e-016 2.7584470000850452 -2.25
		2.25 2.7584470000850452 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7584470000850452 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 5.2483317621876138 -2.385416011097636e-015 7.951386703658788e-016 ;
	setAttr ".rp" -type "double3" -3.0135100015371563e-006 2.7584470000000074 2.1449800014394782e-005 ;
	setAttr ".sp" -type "double3" -3.0135100015371563e-006 2.7584470000000074 2.1449800014394782e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.0135099988726211e-006 2.7584470000000074 2.1449800016171139e-005 ;
	setAttr ".sp" -type "double3" -3.0135099988726211e-006 2.7584470000000074 2.1449800016171139e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.0135099988726211e-006 2.7584470000000074 2.1449800016171139e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.192708005548818e-015 1.192708005548818e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000007 1.0000000000000007 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.0360462329688742e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0360462329688742e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0360462329688742e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0360462329688742e-016 2.25
		-5.7491853075117283e-016 0.91695370561077238 -2.25
		2.25 0.91695370561077238 -1.6838337365057687e-016
		3.0430166849879092e-016 0.91695370561077227 2.25
		-2.25 0.91695370561077238 3.5695323650011823e-016
		-5.7491853075117283e-016 0.91695370561077238 -2.25
		2.25 0.91695370561077238 -1.6838337365057687e-016
		3.0430166849879092e-016 0.91695370561077227 2.25
		-5.7491853075117283e-016 1.8339074112215448 -2.25
		2.25 1.8339074112215448 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8339074112215448 2.25
		-2.25 1.8339074112215448 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8339074112215448 -2.25
		2.25 1.8339074112215448 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8339074112215448 2.25
		-5.7491853075117283e-016 2.7508611168323172 -2.25
		2.25 2.7508611168323172 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7508611168323172 2.25
		-2.25 2.7508611168323172 4.7941387188235596e-016
		-5.7491853075117283e-016 2.7508611168323172 -2.25
		2.25 2.7508611168323172 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7508611168323172 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -178.81833348200908 65.725762412256302 156.98195246087943 ;
	setAttr ".rp" -type "double3" 1.6810659999999986 6.5766420000000085 0.63978099999999483 ;
	setAttr ".sp" -type "double3" 1.6810659999999986 6.5766420000000085 0.63978099999999483 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.6810659999999991 6.5766420000000041 0.63978099999999571 ;
	setAttr ".sp" -type "double3" 1.6810659999999991 6.5766420000000041 0.63978099999999571 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 1.6810739929250009 11.420535556468671 2.3168085579246958 ;
	setAttr ".sp" -type "double3" 1.6810739929250009 11.420535556468671 2.3168085579246958 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.681066 6.576641999999997 0.63978099999999927 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.5902773407317584e-015 1.5902773407317576e-015 4.9696166897867412e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000002 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.7985532411279854e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.7985532411279854e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.7985532411279854e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.7985532411279854e-016 2.25
		-5.7491853075117283e-016 1.2603563333920489 -2.25
		2.25 1.2603563333920489 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2603563333920487 2.25
		-2.25 1.2603563333920489 3.5695323650011823e-016
		-5.7491853075117283e-016 1.2603563333920489 -2.25
		2.25 1.2603563333920489 -1.6838337365057687e-016
		3.0430166849879092e-016 1.2603563333920487 2.25
		-5.7491853075117283e-016 2.5207126667840978 -2.25
		2.25 2.5207126667840978 -1.0715305595945801e-016
		3.0430166849879092e-016 2.5207126667840978 2.25
		-2.25 2.5207126667840978 4.1818355419123709e-016
		-5.7491853075117283e-016 2.5207126667840978 -2.25
		2.25 2.5207126667840978 -1.0715305595945801e-016
		3.0430166849879092e-016 2.5207126667840978 2.25
		-5.7491853075117283e-016 3.7810690001761467 -2.25
		2.25 3.7810690001761467 -4.5922738268339147e-017
		3.0430166849879092e-016 3.7810690001761467 2.25
		-2.25 3.7810690001761467 4.7941387188235596e-016
		-5.7491853075117283e-016 3.7810690001761467 -2.25
		2.25 3.7810690001761467 -4.5922738268339147e-017
		3.0430166849879092e-016 3.7810690001761467 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 34.56152076070704 -7.9513867036587939e-016 1.9878466759146984e-015 ;
	setAttr ".rp" -type "double3" 3.2165499956882115e-006 3.7810690000000138 3.6354999998877702e-005 ;
	setAttr ".sp" -type "double3" 3.2165499956882115e-006 3.7810690000000138 3.6354999998877702e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 3.2165499979086576e-006 3.7810690000000129 3.6354999995324988e-005 ;
	setAttr ".sp" -type "double3" 3.2165499979086576e-006 3.7810690000000129 3.6354999995324988e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.2165499979086576e-006 3.7810690000000129 3.6354999995324988e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.7751785227532062e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7751785227532062e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7751785227532062e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7751785227532062e-016 2.25
		-5.7491853075117283e-016 0.7994693333587447 -2.25
		2.25 0.7994693333587447 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79946933335874459 2.25
		-2.25 0.7994693333587447 3.5695323650011823e-016
		-5.7491853075117283e-016 0.7994693333587447 -2.25
		2.25 0.7994693333587447 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79946933335874459 2.25
		-5.7491853075117283e-016 1.5989386667174894 -2.25
		2.25 1.5989386667174894 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5989386667174894 2.25
		-2.25 1.5989386667174894 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5989386667174894 -2.25
		2.25 1.5989386667174894 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5989386667174894 2.25
		-5.7491853075117283e-016 2.398408000076234 -2.25
		2.25 2.398408000076234 -4.5922738268339147e-017
		3.0430166849879092e-016 2.398408000076234 2.25
		-2.25 2.398408000076234 4.7941387188235596e-016
		-5.7491853075117283e-016 2.398408000076234 -2.25
		2.25 2.398408000076234 -4.5922738268339147e-017
		3.0430166849879092e-016 2.398408000076234 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 16.826288233507913 7.951386703658788e-016 3.9756933518293928e-015 ;
	setAttr ".rp" -type "double3" 1.2769300001380657e-005 2.3984080000000105 1.4234300003579392e-005 ;
	setAttr ".sp" -type "double3" 1.2769300001380657e-005 2.3984080000000105 1.4234300003579392e-005 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.2769300002712924e-005 2.3984080000000105 1.4234300003579392e-005 ;
	setAttr ".sp" -type "double3" 1.2769300002712924e-005 2.3984080000000105 1.4234300003579392e-005 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2769300002712924e-005 2.3984080000000105 1.4234300003579392e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.180554681463516e-015 -3.5781240166464536e-015 7.951386703658785e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.9894957803460747e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9894957803460747e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9894957803460747e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9894957803460747e-016 2.25
		-5.7491853075117283e-016 0.89598924550217562 -2.25
		2.25 0.89598924550217562 -1.6838337365057687e-016
		3.0430166849879092e-016 0.89598924550217551 2.25
		-2.25 0.89598924550217562 3.5695323650011823e-016
		-5.7491853075117283e-016 0.89598924550217562 -2.25
		2.25 0.89598924550217562 -1.6838337365057687e-016
		3.0430166849879092e-016 0.89598924550217551 2.25
		-5.7491853075117283e-016 1.7919784910043512 -2.25
		2.25 1.7919784910043512 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7919784910043512 2.25
		-2.25 1.7919784910043512 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7919784910043512 -2.25
		2.25 1.7919784910043512 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7919784910043512 2.25
		-5.7491853075117283e-016 2.6879677365065269 -2.25
		2.25 2.6879677365065269 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6879677365065269 2.25
		-2.25 2.6879677365065269 4.7941387188235596e-016
		-5.7491853075117283e-016 2.6879677365065269 -2.25
		2.25 2.6879677365065269 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6879677365065269 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 169.75574330747753 58.305358260036897 139.7820789516353 ;
	setAttr ".rp" -type "double3" 2.6397459999999966 6.5527640000000034 2.6416199999999925 ;
	setAttr ".sp" -type "double3" 2.6397459999999966 6.5527640000000034 2.6416199999999925 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.6397459999999957 6.552764000000014 2.6416199999999925 ;
	setAttr ".sp" -type "double3" 2.6397459999999957 6.552764000000014 2.6416199999999925 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 2.6397514081749955 10.682563799107815 3.990830116122694 ;
	setAttr ".sp" -type "double3" 2.6397514081749955 10.682563799107815 3.990830116122694 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.6397459999999948 6.552764000000022 2.6416199999999961 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317584e-015 0 7.9513867036587939e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999956 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.2315690037876168e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.2315690037876168e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.2315690037876168e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.2315690037876168e-016 2.25
		-5.7491853075117283e-016 1.005009333390946 -2.25
		2.25 1.005009333390946 -1.6838337365057687e-016
		3.0430166849879092e-016 1.0050093333909458 2.25
		-2.25 1.005009333390946 3.5695323650011823e-016
		-5.7491853075117283e-016 1.005009333390946 -2.25
		2.25 1.005009333390946 -1.6838337365057687e-016
		3.0430166849879092e-016 1.0050093333909458 2.25
		-5.7491853075117283e-016 2.010018666781892 -2.25
		2.25 2.010018666781892 -1.0715305595945801e-016
		3.0430166849879092e-016 2.010018666781892 2.25
		-2.25 2.010018666781892 4.1818355419123709e-016
		-5.7491853075117283e-016 2.010018666781892 -2.25
		2.25 2.010018666781892 -1.0715305595945801e-016
		3.0430166849879092e-016 2.010018666781892 2.25
		-5.7491853075117283e-016 3.0150280001728378 -2.25
		2.25 3.0150280001728378 -4.5922738268339147e-017
		3.0430166849879092e-016 3.0150280001728378 2.25
		-2.25 3.0150280001728378 4.7941387188235596e-016
		-5.7491853075117283e-016 3.0150280001728378 -2.25
		2.25 3.0150280001728378 -4.5922738268339147e-017
		3.0430166849879092e-016 3.0150280001728378 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 31.245420931704185 -1.590277340731758e-015 1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" 6.8645799993771739e-006 3.015028000000016 -3.1544700000551984e-005 ;
	setAttr ".sp" -type "double3" 6.8645799993771739e-006 3.015028000000016 -3.1544700000551984e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 6.8645800007649527e-006 3.0150280000000258 -3.1544700000551984e-005 ;
	setAttr ".sp" -type "double3" 6.8645800007649527e-006 3.0150280000000258 -3.1544700000551984e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 6.8645800007649527e-006 3.0150280000000258 -3.1544700000551984e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 1.590277340731758e-015 1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3901776028317311e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3901776028317311e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3901776028317311e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3901776028317311e-016 2.25
		-5.7491853075117283e-016 0.62608033340917935 -2.25
		2.25 0.62608033340917935 -1.6838337365057687e-016
		3.0430166849879092e-016 0.62608033340917923 2.25
		-2.25 0.62608033340917935 3.5695323650011823e-016
		-5.7491853075117283e-016 0.62608033340917935 -2.25
		2.25 0.62608033340917935 -1.6838337365057687e-016
		3.0430166849879092e-016 0.62608033340917923 2.25
		-5.7491853075117283e-016 1.2521606668183587 -2.25
		2.25 1.2521606668183587 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2521606668183587 2.25
		-2.25 1.2521606668183587 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2521606668183587 -2.25
		2.25 1.2521606668183587 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2521606668183587 2.25
		-5.7491853075117283e-016 1.878241000227538 -2.25
		2.25 1.878241000227538 -4.5922738268339147e-017
		3.0430166849879092e-016 1.878241000227538 2.25
		-2.25 1.878241000227538 4.7941387188235596e-016
		-5.7491853075117283e-016 1.878241000227538 -2.25
		2.25 1.878241000227538 -4.5922738268339147e-017
		3.0430166849879092e-016 1.878241000227538 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" 20.546889839455073 1.5902773407317588e-015 1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" 3.9517699995661459e-006 1.8782410000000027 -2.8967599995155524e-005 ;
	setAttr ".sp" -type "double3" 3.9517699995661459e-006 1.8782410000000027 -2.8967599995155524e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 3.9517700010094359e-006 1.8782409999999956 -2.8967599989826454e-005 ;
	setAttr ".sp" -type "double3" 3.9517700010094359e-006 1.8782409999999956 -2.8967599989826454e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.9517700010094359e-006 1.8782409999999956 -2.8967599989826454e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -7.9513867036587939e-016 1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6609478555051154e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6609478555051154e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6609478555051154e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6609478555051154e-016 2.25
		-5.7491853075117283e-016 0.74802441431346622 -2.25
		2.25 0.74802441431346622 -1.6838337365057687e-016
		3.0430166849879092e-016 0.74802441431346611 2.25
		-2.25 0.74802441431346622 3.5695323650011823e-016
		-5.7491853075117283e-016 0.74802441431346622 -2.25
		2.25 0.74802441431346622 -1.6838337365057687e-016
		3.0430166849879092e-016 0.74802441431346611 2.25
		-5.7491853075117283e-016 1.4960488286269324 -2.25
		2.25 1.4960488286269324 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4960488286269324 2.25
		-2.25 1.4960488286269324 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4960488286269324 -2.25
		2.25 1.4960488286269324 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4960488286269324 2.25
		-5.7491853075117283e-016 2.2440732429403987 -2.25
		2.25 2.2440732429403987 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2440732429403987 2.25
		-2.25 2.2440732429403987 4.7941387188235596e-016
		-5.7491853075117283e-016 2.2440732429403987 -2.25
		2.25 2.2440732429403987 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2440732429403987 2.25
		
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
	setAttr ".rst" -type "double3" -24.437499999999982 39.6638007941282 0.09641720419811417 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 3.546637198609961 
		3.7347487308854826e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.1927080055488193e-014 -5.7249984266343308e-014 
		0 ;
	setAttr ".tg[1].tot" -type "double3" 2.1316282072803006e-014 3.5466371986078378 
		8.9705793999420271e-012 ;
	setAttr ".tg[1].tor" -type "double3" 7.9513867036587919e-016 -9.5416640443905503e-015 
		3.0215269473903408e-014 ;
	setAttr ".lr" -type "double3" 155.51960884752705 1.5834562113650958 -19.272704270102977 ;
	setAttr ".rst" -type "double3" 8.1752333241301471 65.813894002622078 -20.470547722105536 ;
	setAttr ".rsrr" -type "double3" 155.34374511030418 10.309966981810234 -20.96516627013084 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "rkneeControl" -p "main";
	addAttr -ci true -sn "rKneeControl" -ln "rKneeControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.4335299999999931 21.708500365331052 -0.17027961490305554 ;
	setAttr ".sp" -type "double3" -7.4335299999999931 21.708500365331052 -0.17027961490305554 ;
	setAttr ".hdl" -type "double3" -7.4335299999999931 21.708500365331052 -0.17027961490305554 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-8.433529999999994 21.708500365331052 -0.17027961490305579
		-7.4335299999999931 21.708500365331052 -1.1702796149030554
		-7.4335299999999931 20.708500365331052 -0.17027961490305554
		-7.4335299999999931 21.708500365331052 0.82972038509694446
		-7.4335299999999931 22.708500365331052 -0.17027961490305543
		-7.4335299999999931 21.708500365331052 -1.1702796149030554
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		-6.4335299999999931 21.708500365331052 -0.17027961490305543
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "rFootControl" -ln "rFootControl" -at "message";
	addAttr -ci true -sn "ankleLift" -ln "ankleLift" -min 0 -max 120 -at "double";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	addAttr -ci true -sn "zooWalkleft" -ln "zooWalkleft" -at "message";
	addAttr -ci true -sn "zooWalkright" -ln "zooWalkright" -at "message";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 0 -24.576344892783254 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.5225710409862128 5.299950365331056 -0.20683408751419607 ;
	setAttr ".rpt" -type "double3" 0.85810104098621232 0 -3.5258455273891025 ;
	setAttr ".sp" -type "double3" -8.5225710409862128 5.299950365331056 -0.20683408751419607 ;
	setAttr ".hdl" -type "double3" -8.5225710409862128 5.299950365331056 -0.20683408751419607 ;
	setAttr ".dh" yes;
	setAttr -k on ".heelRock";
	setAttr -k on ".toeLift";
	setAttr -k on ".ankleBank";
	setAttr -k on ".rockL";
	setAttr -k on ".rockR";
	setAttr -k on ".ballPivot";
	setAttr -k on ".ankleLift";
createNode nurbsSurface -n "rFootControlShape" -p "rFootControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-12.255632435314315 5.2999503653310551 -0.20683408751419755
		-10.389101738150263 0.36395128401864785 -4.3592537307664454
		-10.389101738150263 0.36395128401864785 5.471896255122827
		-10.389101738150263 10.235949446643463 5.471896255122827
		-10.389101738150263 10.235949446643463 -4.3592537307664454
		-10.389101738150263 0.36395128401864785 -4.3592537307664463
		-6.6560403438221583 0.36395128401864785 -4.3592537307664454
		-6.6560403438221591 0.36395128401864785 5.471896255122827
		-6.6560403438221591 10.235949446643463 5.471896255122827
		-6.6560403438221591 10.235949446643463 -4.3592537307664454
		-6.6560403438221583 0.36395128401864785 -4.3592537307664463
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		-4.7895096466581064 5.2999503653310551 -0.20683408751419655
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -7.6644700000000014 5.2999503653310489 -3.7326796149033021 ;
	setAttr ".sp" -type "double3" -7.6644700000000014 5.2999503653310489 -3.7326796149033021 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -7.6644700000000014 5.2999503653310489 -3.7326796149033021 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -121.2881936084453 -0.91662177040950188 -1.5078654678798327 ;
	setAttr ".rp" -type "double3" -4.4029271250911606e-005 8.5512859487362469 1.0033994998781304 ;
	setAttr ".sp" -type "double3" -4.4029271250911606e-005 8.5512859487362469 1.0033994998781304 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" -4.4029271250911606e-005 8.5512859487362469 1.0033994998781304 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" -7.0622500768802538e-031 0 0 ;
	setAttr ".rp" -type "double3" -4.1564697029630819 -1.3558137664088811e-015 0.25511445858207615 ;
	setAttr ".sp" -type "double3" -4.1564697029630819 -1.3558137664088811e-015 0.25511445858207615 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -4.1564697029630819 -1.3558137664088811e-015 0.25511445858207615 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" -7.0622500768802538e-031 0 0 ;
	setAttr ".rp" -type "double3" 7.4649476062812932 7.6754126486041561e-016 -0.13246407349470868 ;
	setAttr ".sp" -type "double3" 7.4649476062812932 7.6754126486041561e-016 -0.13246407349470868 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 7.4649476062812932 7.6754126486041561e-016 -0.13246407349470868 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" -2.1186750230640768e-030 -3.1805546814635168e-015 
		0 ;
	setAttr ".rp" -type "double3" -2.1048627129828357 -4.7749240986581365e-013 -10.502682532956246 ;
	setAttr ".sp" -type "double3" -2.1048627129828357 -4.7749240986581365e-013 -10.502682532956246 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -2.1048627129828357 -4.7749240986581365e-013 -10.502682532956246 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 3.5311250384401276e-030 -3.1805546814635176e-015 0 ;
	setAttr ".rp" -type "double3" -1.5633432405537064 0.32833915948915399 15.303923416917252 ;
	setAttr ".sp" -type "double3" -1.5633432405537064 0.32833915948915399 15.303923416917252 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" -1.5633432405537064 0.32833915948915399 15.303923416917252 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 89.999999999999929 -1.7645565320962069 -2.8262402339218313e-030 ;
	setAttr ".rp" -type "double3" 0.35972819952236179 0.84598120584238012 -4.9238909140726435 ;
	setAttr ".sp" -type "double3" 0.35972819952236179 0.84598120584238012 -4.9238909140726435 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 0.35972819952236179 0.84598120584238012 -4.9238909140726435 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 31.300256028924576 0 0 ;
	setAttr ".rp" -type "double3" 4.3869107446248279e-005 -6.7854132380478767 -4.125630000000001 ;
	setAttr ".sp" -type "double3" 4.3869107446248279e-005 -6.7854132380478767 -4.125630000000001 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 4.3869107446248279e-005 -6.7854132380478767 -4.125630000000001 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.6686313081058319 0.46711993654643386 -0.26879711083580626 ;
	setAttr ".r" -type "double3" -118.93970752603073 -12.478450226502545 -21.344273154985629 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -6.7498324266183296 0.013004097156320785 -3.6793960756432851 ;
	setAttr ".rpt" -type "double3" -0.91879909842943497 -0.48012403296663836 3.9481931627601443 ;
	setAttr ".sp" -type "double3" -6.7498323756698948 0.013004106182162189 -3.6793960546280284 ;
	setAttr ".spt" -type "double3" 0 3.469446951953615e-018 -8.8817841970012543e-016 ;
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
	setAttr ".rst" -type "double3" -1.1754897709293131 7.5435382776134814 10.985531500052526 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.3026308303227747 0.77885225510877887 -11.334930383144759 ;
	setAttr ".r" -type "double3" 1.9064541566221168e-014 22.811791160745848 1.572537578447847e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -8.8854460675366145 0.067128936604071973 3.2177896144045053 ;
	setAttr ".rpt" -type "double3" 1.942543592082187 0 3.1932498518599308 ;
	setAttr ".sp" -type "double3" -8.8854460675366127 0.067128936604069711 3.2177896144045066 ;
	setAttr ".spt" -type "double3" -1.7763568394002509e-015 4.1633363423443395e-017 
		8.8817841970012543e-016 ;
	setAttr ".pv" -type "double3" 1.9990513149028066 -5.8331356435410888e-006 0.061594158418923906 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 89.999999999999929 -1.7645565320962102 -2.826240233921832e-030 ;
	setAttr ".rp" -type "double3" -1.2036150410313493 1.1743203653315337 10.380032502844607 ;
	setAttr ".sp" -type "double3" -1.2036150410313493 1.1743203653315337 10.380032502844607 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -1.2036150410313493 1.1743203653315337 10.380032502844607 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -89.999999999999929 -1.1299600123008406e-029 -1.7645565320962033 ;
	setAttr ".rp" -type "double3" -0.2079389361723627 4.9326329186391202 0.84598120584238623 ;
	setAttr ".sp" -type "double3" -0.2079389361723627 4.9326329186391202 0.84598120584238623 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -0.2079389361723627 4.9326329186391202 0.84598120584238623 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4743572969643517 0.4265898622343392 -7.1784964097136434 ;
	setAttr ".r" -type "double3" 1.2133261036263586e-014 22.811791160745859 1.7866035598019749e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000009 1.0000000000000004 ;
	setAttr ".rp" -type "double3" -5.3537353575098168 0.41939130828468113 4.3881499046238401 ;
	setAttr ".rpt" -type "double3" 2.1200600086149564 0 1.7324452953261358 ;
	setAttr ".sp" -type "double3" -5.3537353575098132 0.4193913082846803 4.3881499046238375 ;
	setAttr ".spt" -type "double3" -2.6645352591003769e-015 3.8857805861880513e-016 
		1.7763568394002513e-015 ;
	setAttr ".pv" -type "double3" 1.9990524493585471 -1.0788202658930326e-007 0.061557328674864631 ;
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
	setAttr ".lr" -type "double3" -89.999999999999929 0 0 ;
	setAttr ".o" -type "double3" 89.999999999999929 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "rToeControlZeroGroup" -p "rReverseHeelLift";
	setAttr ".t" -type "double3" -1.2036150410308206 1.1743203653350573 10.38003250284677 ;
	setAttr ".r" -type "double3" 1.7581714878565541e-014 -1.7645565320962129 5.6752245494494081e-015 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-3.7330613943281046 -4.8488405404259261e-016 -6.0091355445486979e-016
		-1.8665306971640518 -0.9016032349876979 -0.41949320148258773
		-1.8665306971640523 -0.9016032349876979 4.7599840894732033
		-1.8665306971640525 0.9016032349876979 4.7599840894732033
		-1.8665306971640521 0.90160323498769834 -0.41949320148258729
		-1.8665306971640518 -0.90160323498769745 -0.41949320148258817
		1.8665306971640525 -0.90160323498769834 -0.41949320148258795
		1.8665306971640521 -0.9016032349876979 4.7599840894732042
		1.8665306971640518 0.90160323498769834 4.7599840894732033
		1.8665306971640523 0.90160323498769834 -0.41949320148258795
		1.8665306971640525 -0.9016032349876979 -0.4194932014825884
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		3.7330613943281046 -5.7102842486556451e-016 -4.5499892445328704e-016
		
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-015 -6.3315875443956699e-015 
		-2.0429126021870216e-015 ;
	setAttr ".tg[0].tor" -type "double3" 121.30025602892448 -2.8000587959911664e-006 
		0 ;
	setAttr ".lr" -type "double3" 121.30025602892448 -24.576347692842056 -1.7486953670211285e-015 ;
	setAttr ".rst" -type "double3" -2.6645352591003757e-015 8.8817841970012523e-016 
		0 ;
	setAttr ".rsrr" -type "double3" 121.30025602892448 -24.576347692842056 -1.7486953670211285e-015 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_bullet_backUpperControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_backUpperControl" -p "Ref:prp_bullet_backUpperControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_backUpperControlShape" -p "Ref:prp_bullet_backUpperControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_backUpperControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_backUpperControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" -5.741784 -2.8610609999999994 7.700543000000005 ;
	setAttr ".tg[0].tor" -type "double3" -173.4872923287179 0 0 ;
	setAttr ".tg[1].tot" -type "double3" -5.741784 -3.0361030902911565 7.8056068120962818 ;
	setAttr ".tg[1].tor" -type "double3" -172.03741376493213 0 0 ;
	setAttr ".lr" -type "double3" -5.0888874903416268e-014 0 0 ;
	setAttr ".rst" -type "double3" -5.741784 64.072310391698096 -15.174169901901582 ;
	setAttr ".rsrr" -type "double3" -4.4152857657411725e-010 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bullet_backLowerControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_backLowerControl" -p "Ref:prp_bullet_backLowerControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_backLowerControlShape" -p "Ref:prp_bullet_backLowerControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_backLowerControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_backLowerControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" 4.93002 -0.68931099999998935 7.0434110000000061 ;
	setAttr ".tg[0].tor" -type "double3" -165.67265425778993 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 4.93002 -0.47359097728919863 6.9928849648434221 ;
	setAttr ".tg[1].tor" -type "double3" -167.42072643866888 0 0 ;
	setAttr ".rst" -type "double3" 4.93002 53.115064398588444 -12.172718370954808 ;
	setAttr ".rsrr" -type "double3" 1.8367703285451808e-011 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bullet_sideControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_sideControl" -p "Ref:prp_bullet_sideControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_sideControlShape" -p "Ref:prp_bullet_sideControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_sideControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_sideControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" 14.513286 -2.2944389999999899 -3.7748770000000018 ;
	setAttr ".tg[0].tor" -type "double3" -168.13724682470749 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 14.513286 -2.2597291935226735 -3.7957569289607167 ;
	setAttr ".tg[1].tor" -type "double3" -167.61187166378735 0 0 ;
	setAttr ".lr" -type "double3" -3.3974648451500586e-006 0 0 ;
	setAttr ".rst" -type "double3" 14.513286 49.924451185503258 -0.42450690871903451 ;
	setAttr ".rsrr" -type "double3" -3.3974648499208912e-006 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bullet_chestLowerControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_chestLowerControl" -p "Ref:prp_bullet_chestLowerControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_chestLowerControlShape" -p "Ref:prp_bullet_chestLowerControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_chestLowerControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" 5.866311 -4.1248769999999837 -15.939292000000007 ;
	setAttr ".tg[0].tor" -type "double3" -168.13724342724265 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 5.866311 -3.9785498815818983 -15.976444553536918 ;
	setAttr ".tg[1].tor" -type "double3" -167.61186826632252 0 0 ;
	setAttr ".rst" -type "double3" 5.866311 54.216411753309821 11.103830787950971 ;
	setAttr ".rsrr" -type "double3" -3.9756933518293952e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_bullet_chestUpperControlGroup" -p "main";
createNode transform -n "Ref:prp_bullet_chestUpperControl" -p "Ref:prp_bullet_chestUpperControlGroup";
	addAttr -ci true -sn "zooWalkup" -ln "zooWalkup" -at "message";
	addAttr -ci true -sn "zooWalkdown" -ln "zooWalkdown" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_bullet_chestUpperControlShape" -p "Ref:prp_bullet_chestUpperControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-9.1845476536678331e-017 -1 -3.3676674730115375e-016
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-0.70710678118654768 -0.99999999999999989 6.5823408926151425e-017
		-1.8593219381791185e-016 -0.99999999999999989 -0.70710678118654779
		0.70710678118654768 -0.99999999999999989 -1.0977942137420034e-016
		1.0088551897254069e-016 -0.99999999999999989 0.70710678118654757
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2928932188134521 2.0461868927568887e-016 1.1416770423359839e-016
		-3.0508941757361694e-016 3.4501326949544867e-016 -2.2928932188134521
		2.2928932188134521 2.0461868927568887e-016 1.4039458021975987e-016
		2.9313609415812279e-017 6.4224109055929071e-017 2.2928932188134521
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		-0.70710678118654746 1 4.5930912350325498e-018
		-2.2412407445552341e-018 1 -0.70710678118654735
		0.70710678118654746 1 1.9637216708139392e-016
		-8.2805434100815891e-017 1 0.70710678118654757
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		9.1845476536678294e-017 1 1.5307579422779716e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1" 
		-p "Ref:prp_bullet_chestUpperControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" -5.72607 -1.7901312405575425 -15.197664865260194 ;
	setAttr ".tg[0].tor" -type "double3" -173.4872923287179 0 0 ;
	setAttr ".tg[1].tot" -type "double3" -5.72607 -1.3861353435287 -15.058172849864222 ;
	setAttr ".tg[1].tor" -type "double3" -172.03741376493213 0 0 ;
	setAttr ".lr" -type "double3" -5.0888874903416268e-014 0 0 ;
	setAttr ".rst" -type "double3" -5.72607 65.605488257450276 7.6977381868935195 ;
	setAttr ".rsrr" -type "double3" -4.4152857657411725e-010 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "RefRNfosterParent1";
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
	setAttr ".rst" -type "double3" 0 40.862454 -3.096505 ;
	setAttr -k on ".w0";
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
	setAttr ".lr" -type "double3" -174.79190906615452 0 0 ;
	setAttr ".o" -type "double3" 174.79190906615452 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_pack_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_packControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 6.2617170291312962e-015 7.6333312355124402e-014 -2.7829853462805728e-015 ;
	setAttr ".rst" -type "double3" 10.052434 2.0098690000000019 -4.948871 ;
	setAttr ".rsrr" -type "double3" -1.5405811738338909e-015 6.3611093629270335e-015 
		3.975693351829395e-016 ;
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
	setAttr ".lr" -type "double3" 0.46572798100179169 -19.281744665623787 -2.7411337724856448 ;
	setAttr ".rsrr" -type "double3" -3.5781240166464568e-015 3.4041874325039201e-015 
		-3.9756933518293969e-016 ;
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
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -0.53249507849712385 8.8466055687115492 17.310212550003552 ;
	setAttr ".rsrr" -type "double3" -1.803970858392588e-014 1.590277340731758e-015 -3.9756933518293979e-016 ;
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
	setAttr ".lr" -type "double3" 0.46572281002839622 -19.281682033019269 -2.7411243979854745 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587899e-016 3.180554681463516e-015 2.2069531490250782e-032 ;
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
	setAttr ".lr" -type "double3" -0.5324957224412602 8.8465850273367792 17.31015856723609 ;
	setAttr ".rsrr" -type "double3" 4.9696166897867449e-016 -1.5902773407317584e-015 
		-1.987846675914698e-015 ;
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
	setAttr ".lr" -type "double3" 0 -2.5613209387547812e-006 0 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 -4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 7.9513867036587856e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 2.2204460492503131e-015 ;
	setAttr ".tg[1].tor" -type "double3" 7.9513867036587856e-015 0 0 ;
	setAttr ".lr" -type "double3" -8.7465253740246703e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -6.0656079999999903 -8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -8.7465253740246703e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_bullet_chestLower_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_chestLowerControlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" 7.6333312355124402e-014 0 0 ;
	setAttr ".rst" -type "double3" 5.866311 -4.1248769999999979 -15.939292000000002 ;
	setAttr ".rsrr" -type "double3" 7.6333312355124402e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_bullet_side_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_sideControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 14.513286 -2.2944390000000041 -3.7748770000000009 ;
	setAttr -k on ".w0";
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
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708122e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 -7.1054273576010019e-015 8.8817841970012523e-016 ;
	setAttr ".tg[1].tor" -type "double3" 9.5416640443905456e-015 0 0 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -7.4461739999999921 1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-014 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_bullet_chestUpper_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_chestUpperControlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" 4.9298597562684508e-014 0 0 ;
	setAttr ".rst" -type "double3" -5.72607 -7.8740819999999943 -15.299928 ;
	setAttr ".rsrr" -type "double3" 4.9298597562684508e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_bullet_backLower_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_backLowerControlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" 4.9298597562684508e-014 0 0 ;
	setAttr ".rst" -type "double3" 4.93002 -0.68931099999999645 7.0434109999999972 ;
	setAttr ".rsrr" -type "double3" 4.9298597562684508e-014 0 0 ;
	setAttr -k on ".w0";
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.6697912077683464e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr ".tg[1].tor" -type "double3" 9.541664044390544e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -8.1669820000000044 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_bullet_backUpper_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_backUpperControlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" -5.741784 -2.8610610000000136 7.700543 ;
	setAttr -k on ".w0";
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
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 -7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708122e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 2.8421709430404007e-014 -7.9936057773011271e-015 ;
	setAttr ".tg[1].tor" -type "double3" 9.5416640443905456e-015 0 0 ;
	setAttr ".lr" -type "double3" -1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -7.0590419999999767 0 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905487e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 1.2722218725854048e-014 5.0093736233050395e-014 -4.2937488199757468e-014 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905314e-015 5.1684013573782148e-014 
		-4.2142349529391588e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_bullet_shoulder_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_bullet_shoulderControlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" -5.8840261607075043e-014 -2.0673605429512851e-014 
		1.2722218725854075e-014 ;
	setAttr ".rst" -type "double3" -6.0627499999999959 10.213033999999999 1.7571280000000042 ;
	setAttr ".rsrr" -type "double3" -6.043053894780679e-014 -2.703471479243991e-014 
		-3.8166656177562176e-014 ;
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
	setAttr ".lr" -type "double3" -0.13799760994271715 8.7015004220575953 -1.8136235261181506 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952748e-014 4.7708320221952748e-014 
		-7.9513867036589901e-016 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.3653635433950058e-015 -2.6645352591003757e-015 
		1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244617e-014 -9.5416640443905471e-015 
		2.3854160110976368e-015 ;
	setAttr ".lr" -type "double3" -6.361109362927031e-014 -3.9756933518296775e-016 -5.0888874903416256e-014 ;
	setAttr ".rst" -type "double3" 2.6397460000000024 6.5527639999999927 2.6416199999999952 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 1.5902773407317588e-015 
		3.1805546814635168e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.27675647831893e-015 -1.7763568394002505e-014 
		1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 6.6791648310733843e-014 -2.2263882770244605e-014 
		1.9083328088781091e-014 ;
	setAttr ".lr" -type "double3" -1.2086107789561363e-013 0 0 ;
	setAttr ".rst" -type "double3" 6.8645799995437073e-006 3.0150279999999956 -3.1544700007657411e-005 ;
	setAttr ".rsrr" -type "double3" -6.9972202992197363e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-015 -1.7763568394002505e-014 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781101e-014 -7.1562480332929135e-015 
		2.3854160110976371e-014 ;
	setAttr ".rst" -type "double3" 3.9517699974567222e-006 1.8782410000000027 -2.8967600002260951e-005 ;
	setAttr ".rsrr" -type "double3" 5.7249984266343308e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 -1.3322676295501878e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781094e-014 -7.951386703658788e-016 
		-1.1330726052713771e-014 ;
	setAttr ".lr" -type "double3" 9.3826363103173724e-014 2.2263882770244598e-014 1.9083328088781113e-014 ;
	setAttr ".rst" -type "double3" 1.6810659999999942 6.576641999999997 0.63978100000000104 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905487e-015 1.073437204993937e-014 
		1.9083328088781101e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -1.0658141036401503e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781094e-014 -1.5902773407317571e-014 
		7.951386703658788e-016 ;
	setAttr ".lr" -type "double3" 8.2694421718051442e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.2165500005731928e-006 3.781068999999996 3.6354999998877702e-005 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708128e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-015 -1.0658141036401503e-014 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416256e-014 -1.8685758753598151e-014 
		-1.5107634736951694e-014 ;
	setAttr ".lr" -type "double3" 1.6220828875463936e-013 0 0 ;
	setAttr ".rst" -type "double3" 1.2769300003157014e-005 2.3984079999999945 1.4234300003579392e-005 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -8.8817841970012523e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 4.6118042881220995e-014 2.1468744099878731e-014 
		-1.6002165741113309e-014 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-014 8.1700498380094092e-014 3.1805546814634994e-015 ;
	setAttr ".rst" -type "double3" 0.71302399999999722 6.7833999999999959 -1.9472090000000017 ;
	setAttr ".rsrr" -type "double3" -3.3395824155366928e-014 -8.1501713712502572e-015 
		1.272221872585407e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-015 -2.1316282072803006e-014 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587897e-014 -1.1131941385122299e-014 
		-2.9817700138720442e-014 ;
	setAttr ".lr" -type "double3" 1.2086107789561363e-013 0 0 ;
	setAttr ".rst" -type "double3" 1.2207300001065846e-005 4.729751 5.6640299991528309e-005 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-013 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 -1.7763568394002505e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416243e-014 -2.782985346280574e-015 
		-2.4251729446159286e-014 ;
	setAttr ".lr" -type "double3" 2.9499644670574117e-013 0 0 ;
	setAttr ".rst" -type "double3" -3.0135100015371563e-006 2.7584469999999968 2.1449799996631214e-005 ;
	setAttr ".rsrr" -type "double3" -3.2600685485001048e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 6.2172489379008766e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.9756933518293967e-015 1.6697912077683461e-014 
		3.9756933518293952e-015 ;
	setAttr ".lr" -type "double3" 1.033680271475643e-013 -6.1126285284376967e-014 -5.5659706925612096e-015 ;
	setAttr ".rst" -type "double3" 0.75155099999999564 6.8596830000000057 -4.6006549999999962 ;
	setAttr ".rsrr" -type "double3" 5.5659706925611528e-015 -1.8735454920496028e-014 
		8.7465253740246703e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 -1.4210854715202004e-014 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.1347210859025727e-014 1.1927080055488184e-015 
		-2.1468744099878731e-014 ;
	setAttr ".lr" -type "double3" 6.9972202992197363e-014 0 0 ;
	setAttr ".rst" -type "double3" 5.114670001304944e-006 3.6006740000000006 4.7520399991896056e-005 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-015 0 -1.7763568394002505e-014 ;
	setAttr ".tg[0].tor" -type "double3" -6.9972202992197299e-014 5.9635400277440912e-015 
		-7.9513867036587888e-015 ;
	setAttr ".lr" -type "double3" 3.4668046027952332e-013 0 0 ;
	setAttr ".rst" -type "double3" -1.6238000000168284e-005 2.262808 -4.6061899997340561e-005 ;
	setAttr ".rsrr" -type "double3" 1.1927080055488187e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-015 -1.7763568394002505e-015 
		1.3322676295501878e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.3655375443384901e-014 1.1131941385122309e-014 
		1.5902773407317584e-015 ;
	setAttr ".lr" -type "double3" 2.1468744099878734e-014 -9.5416640443905487e-015 1.5902773407317562e-015 ;
	setAttr ".rst" -type "double3" 2.4401390000000021 1.9741210000000056 -3.8365909999999968 ;
	setAttr ".rsrr" -type "double3" 2.0673605429512861e-014 -7.9513867036587935e-015 
		-1.5902773407317602e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -5.1070259132757201e-015 7.9936057773011271e-015 
		-2.7755575615628914e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.05134464752906e-014 -3.9756933518293952e-015 
		6.361109362927032e-015 ;
	setAttr ".lr" -type "double3" -2.2263882770244621e-014 0 0 ;
	setAttr ".rst" -type "double3" -6.0634200004017202e-005 4.3650050000000062 -1.0777600006228738e-005 ;
	setAttr ".rsrr" -type "double3" -3.4986101496098675e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.4424906541753444e-015 1.2434497875801753e-014 
		2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -2.8227422797988689e-014 3.7371517507196315e-014 
		-3.4986101496098681e-014 ;
	setAttr ".lr" -type "double3" -5.7249984266343308e-014 0 0 ;
	setAttr ".rst" -type "double3" 4.0444900051284094e-006 1.793219999999998 1.0261300005365293e-005 ;
	setAttr ".rsrr" -type "double3" 4.7708320221952748e-014 0 0 ;
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
	setAttr ".lr" -type "double3" -6.3611093629270375e-015 6.6791648310733855e-014 -6.3611093629270375e-015 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635085e-015 4.1347210859025721e-014 
		-2.544443745170814e-014 ;
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
	setAttr ".lr" -type "double3" -0.13798184014396314 8.7011134155600356 -1.8135431753511504 ;
	setAttr ".rsrr" -type "double3" -3.6576378836830448e-014 4.2937488199757468e-014 
		-1.1927080055488201e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 5.4817261840867104e-016 4.4408920985006262e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.6118042881221007e-014 -1.1131941385122306e-014 
		-2.3854160110976368e-015 ;
	setAttr ".lr" -type "double3" -3.1805546814635132e-015 4.3732626870123355e-014 9.5416640443905487e-015 ;
	setAttr ".rst" -type "double3" -2.6397049999999957 -6.5528299999999957 -2.641658999999998 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-014 -9.5416640443905503e-015 
		-1.3241718894150475e-030 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.2164496600635175e-016 -7.1054273576010019e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905456e-015 -6.361109362927028e-015 
		-1.4312496066585814e-014 ;
	setAttr ".lr" -type "double3" -4.4527765540489235e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -3.015037999999989 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -7.6333312355124402e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.1094237467877974e-015 3.5527136788005009e-015 
		-1.5987211554602254e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781088e-014 -2.3854160110976364e-015 
		3.9756933518293942e-014 ;
	setAttr ".lr" -type "double3" -2.2263882770244617e-014 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -1.878249999999996 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 0 0 ;
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
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708134e-014 -4.770832022195272e-015 
		-2.7233499460031345e-014 ;
	setAttr ".lr" -type "double3" 6.6791648310733868e-014 1.8288189418415189e-014 5.7249984266343308e-014 ;
	setAttr ".rst" -type "double3" -1.681086999999998 -6.5766639999999992 -0.63978799999999847 ;
	setAttr ".rsrr" -type "double3" -1.9310840053969435e-030 -9.9392333795734887e-015 
		2.2263882770244611e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.2204460492503131e-015 7.1054273576010019e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781091e-014 -2.4649298781342238e-014 
		-8.7465253740246656e-015 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 -3.7810910000000013 0 ;
	setAttr ".rsrr" -type "double3" -3.8166656177562201e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 -7.1054273576010019e-015 
		1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270304e-015 -1.6697912077683451e-014 
		-7.951386703658788e-016 ;
	setAttr ".lr" -type "double3" 2.2263882770244617e-014 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 -2.3984250000000102 0 ;
	setAttr ".rsrr" -type "double3" 2.8624992133171654e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 4.4408920985006262e-016 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.1468744099878737e-014 -5.5659706925611512e-015 
		-1.1777991554794577e-014 ;
	setAttr ".lr" -type "double3" 1.908332808878111e-014 5.4665783587654192e-014 1.908332808878111e-014 ;
	setAttr ".rst" -type "double3" -0.71304799999999346 -6.7834470000000016 1.9471980000000002 ;
	setAttr ".rsrr" -type "double3" -3.180554681463516e-015 5.3671860249696828e-015 
		-9.5416640443905456e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 1.0658141036401503e-014 -7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.4986101496098662e-014 1.1927080055488182e-015 
		4.3732626870123336e-015 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.1102230246251565e-015 -4.7297659999999944 -7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -5.7249984266343308e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 3.5527136788005009e-015 
		-1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 6.0430538947806765e-014 -1.7095481412866391e-014 
		-1.6300342742500511e-014 ;
	setAttr ".lr" -type "double3" -1.5107634736951704e-014 0 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -2.7584389999999992 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -1.1131941385122309e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 -5.3290705182007514e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.5107634736951707e-014 3.9756933518293944e-015 
		-6.9574633657014404e-015 ;
	setAttr ".lr" -type "double3" -1.1927080055488107e-015 6.5151674803104231e-014 1.4312496066585827e-014 ;
	setAttr ".rst" -type "double3" -0.75159399999999366 -6.8597430000000044 4.600634 ;
	setAttr ".rsrr" -type "double3" 1.3758973538453222e-030 -1.982877059224911e-014 
		-7.9513867036587888e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -7.1054273576010019e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -6.0430538947806765e-014 5.5659706925611512e-015 
		-7.9513867036587856e-015 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -3.6006880000000003 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 7.1054273576010019e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952704e-014 -4.3732626870123328e-015 
		-5.5659706925611512e-015 ;
	setAttr ".lr" -type "double3" 4.4527765540489235e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.9968028886505635e-015 -2.26277 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.7715611723760958e-015 1.7763568394002505e-015 
		-1.3322676295501878e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.4908850069360224e-014 2.5444437451708128e-014 
		-4.7708320221952736e-015 ;
	setAttr ".lr" -type "double3" 3.7371517507196315e-014 -1.749305074804935e-014 2.5444437451708128e-014 ;
	setAttr ".rst" -type "double3" -2.4400899999999872 -1.9741599999999995 3.8365639999999974 ;
	setAttr ".rsrr" -type "double3" -1.033680271475643e-014 -2.3854160110976377e-014 
		-3.1805546814635152e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-014 2.9309887850104133e-014 
		2.9864999362416711e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.8884543421189614e-015 -1.9083328088781094e-014 
		-3.180554681463516e-015 ;
	setAttr ".lr" -type "double3" 2.2263882770244621e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 -4.3650180000000027 1.7763568394002505e-014 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.2434497875801753e-014 9.7699626167013776e-015 
		2.8310687127941492e-014 ;
	setAttr ".tg[0].tor" -type "double3" 5.864147693948353e-015 -1.2722218725854064e-014 
		1.2722218725854064e-014 ;
	setAttr ".lr" -type "double3" -9.5416640443905503e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -1.7932180000000066 6.2172489379008766e-015 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 2.5444437451708128e-014 0 0 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854064e-014 0 0 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr ".ihi" 0;
	setAttr -s 773 ".phl";
	setAttr ".phl[791]" 0;
	setAttr ".phl[1512]" 0;
	setAttr ".phl[1515]" 0;
	setAttr ".phl[1518]" 0;
	setAttr ".phl[1521]" 0;
	setAttr ".phl[1525]" 0;
	setAttr ".phl[2244]" 0;
	setAttr ".phl[2245]" 0;
	setAttr ".phl[2246]" 0;
	setAttr ".phl[2249]" 0;
	setAttr ".phl[2252]" 0;
	setAttr ".phl[2256]" 0;
	setAttr ".phl[2257]" 0;
	setAttr ".phl[2259]" 0;
	setAttr ".phl[2262]" 0;
	setAttr ".phl[2266]" 0;
	setAttr ".phl[2268]" 0;
	setAttr ".phl[2271]" 0;
	setAttr ".phl[2275]" 0;
	setAttr ".phl[2277]" 0;
	setAttr ".phl[2279]" 0;
	setAttr ".phl[2280]" 0;
	setAttr ".phl[2283]" 0;
	setAttr ".phl[2287]" 0;
	setAttr ".phl[2289]" 0;
	setAttr ".phl[2291]" 0;
	setAttr ".phl[2292]" 0;
	setAttr ".phl[2295]" 0;
	setAttr ".phl[2299]" 0;
	setAttr ".phl[2301]" 0;
	setAttr ".phl[2303]" 0;
	setAttr ".phl[2305]" 0;
	setAttr ".phl[2306]" 0;
	setAttr ".phl[2307]" 0;
	setAttr ".phl[2309]" 0;
	setAttr ".phl[2310]" 0;
	setAttr ".phl[2311]" 0;
	setAttr ".phl[2312]" 0;
	setAttr ".phl[2313]" 0;
	setAttr ".phl[2314]" 0;
	setAttr ".phl[2315]" 0;
	setAttr ".phl[2316]" 0;
	setAttr ".phl[2317]" 0;
	setAttr ".phl[2318]" 0;
	setAttr ".phl[2319]" 0;
	setAttr ".phl[2320]" 0;
	setAttr ".phl[2321]" 0;
	setAttr ".phl[2322]" 0;
	setAttr ".phl[2323]" 0;
	setAttr ".phl[2324]" 0;
	setAttr ".phl[2325]" 0;
	setAttr ".phl[2326]" 0;
	setAttr ".phl[2327]" 0;
	setAttr ".phl[2328]" 0;
	setAttr ".phl[2329]" 0;
	setAttr ".phl[2330]" 0;
	setAttr ".phl[2331]" 0;
	setAttr ".phl[2332]" 0;
	setAttr ".phl[2333]" 0;
	setAttr ".phl[2334]" 0;
	setAttr ".phl[2335]" 0;
	setAttr ".phl[2336]" 0;
	setAttr ".phl[2337]" 0;
	setAttr ".phl[2338]" 0;
	setAttr ".phl[2339]" 0;
	setAttr ".phl[2340]" 0;
	setAttr ".phl[2341]" 0;
	setAttr ".phl[2342]" 0;
	setAttr ".phl[2343]" 0;
	setAttr ".phl[2344]" 0;
	setAttr ".phl[2345]" 0;
	setAttr ".phl[2346]" 0;
	setAttr ".phl[2347]" 0;
	setAttr ".phl[2348]" 0;
	setAttr ".phl[2349]" 0;
	setAttr ".phl[2350]" 0;
	setAttr ".phl[2351]" 0;
	setAttr ".phl[2352]" 0;
	setAttr ".phl[2353]" 0;
	setAttr ".phl[2354]" 0;
	setAttr ".phl[2355]" 0;
	setAttr ".phl[2356]" 0;
	setAttr ".phl[2357]" 0;
	setAttr ".phl[2358]" 0;
	setAttr ".phl[2359]" 0;
	setAttr ".phl[2360]" 0;
	setAttr ".phl[2361]" 0;
	setAttr ".phl[2362]" 0;
	setAttr ".phl[2363]" 0;
	setAttr ".phl[2364]" 0;
	setAttr ".phl[2365]" 0;
	setAttr ".phl[2366]" 0;
	setAttr ".phl[2367]" 0;
	setAttr ".phl[2368]" 0;
	setAttr ".phl[2369]" 0;
	setAttr ".phl[2370]" 0;
	setAttr ".phl[2371]" 0;
	setAttr ".phl[2372]" 0;
	setAttr ".phl[2373]" 0;
	setAttr ".phl[2374]" 0;
	setAttr ".phl[2375]" 0;
	setAttr ".phl[2376]" 0;
	setAttr ".phl[2377]" 0;
	setAttr ".phl[2378]" 0;
	setAttr ".phl[2379]" 0;
	setAttr ".phl[2380]" 0;
	setAttr ".phl[2381]" 0;
	setAttr ".phl[2382]" 0;
	setAttr ".phl[2383]" 0;
	setAttr ".phl[2384]" 0;
	setAttr ".phl[2385]" 0;
	setAttr ".phl[2386]" 0;
	setAttr ".phl[2387]" 0;
	setAttr ".phl[2388]" 0;
	setAttr ".phl[2389]" 0;
	setAttr ".phl[2390]" 0;
	setAttr ".phl[2391]" 0;
	setAttr ".phl[2392]" 0;
	setAttr ".phl[2393]" 0;
	setAttr ".phl[2394]" 0;
	setAttr ".phl[2395]" 0;
	setAttr ".phl[2396]" 0;
	setAttr ".phl[2397]" 0;
	setAttr ".phl[2398]" 0;
	setAttr ".phl[2399]" 0;
	setAttr ".phl[2400]" 0;
	setAttr ".phl[2401]" 0;
	setAttr ".phl[2402]" 0;
	setAttr ".phl[2403]" 0;
	setAttr ".phl[2404]" 0;
	setAttr ".phl[2405]" 0;
	setAttr ".phl[2406]" 0;
	setAttr ".phl[2407]" 0;
	setAttr ".phl[2408]" 0;
	setAttr ".phl[2409]" 0;
	setAttr ".phl[2410]" 0;
	setAttr ".phl[2411]" 0;
	setAttr ".phl[2412]" 0;
	setAttr ".phl[2413]" 0;
	setAttr ".phl[2414]" 0;
	setAttr ".phl[2415]" 0;
	setAttr ".phl[2416]" 0;
	setAttr ".phl[2417]" 0;
	setAttr ".phl[2418]" 0;
	setAttr ".phl[2419]" 0;
	setAttr ".phl[2420]" 0;
	setAttr ".phl[2421]" 0;
	setAttr ".phl[2422]" 0;
	setAttr ".phl[2423]" 0;
	setAttr ".phl[2424]" 0;
	setAttr ".phl[2425]" 0;
	setAttr ".phl[2426]" 0;
	setAttr ".phl[2427]" 0;
	setAttr ".phl[2428]" 0;
	setAttr ".phl[2429]" 0;
	setAttr ".phl[2430]" 0;
	setAttr ".phl[2431]" 0;
	setAttr ".phl[2432]" 0;
	setAttr ".phl[2433]" 0;
	setAttr ".phl[2434]" 0;
	setAttr ".phl[2435]" 0;
	setAttr ".phl[2436]" 0;
	setAttr ".phl[2437]" 0;
	setAttr ".phl[2438]" 0;
	setAttr ".phl[2439]" 0;
	setAttr ".phl[2440]" 0;
	setAttr ".phl[2441]" 0;
	setAttr ".phl[2442]" 0;
	setAttr ".phl[2443]" 0;
	setAttr ".phl[2444]" 0;
	setAttr ".phl[2445]" 0;
	setAttr ".phl[2446]" 0;
	setAttr ".phl[2447]" 0;
	setAttr ".phl[2448]" 0;
	setAttr ".phl[2449]" 0;
	setAttr ".phl[2450]" 0;
	setAttr ".phl[2451]" 0;
	setAttr ".phl[2452]" 0;
	setAttr ".phl[2453]" 0;
	setAttr ".phl[2454]" 0;
	setAttr ".phl[2455]" 0;
	setAttr ".phl[2456]" 0;
	setAttr ".phl[2457]" 0;
	setAttr ".phl[2458]" 0;
	setAttr ".phl[2459]" 0;
	setAttr ".phl[2460]" 0;
	setAttr ".phl[2461]" 0;
	setAttr ".phl[2462]" 0;
	setAttr ".phl[2463]" 0;
	setAttr ".phl[2464]" 0;
	setAttr ".phl[2465]" 0;
	setAttr ".phl[2466]" 0;
	setAttr ".phl[2467]" 0;
	setAttr ".phl[2468]" 0;
	setAttr ".phl[2469]" 0;
	setAttr ".phl[2470]" 0;
	setAttr ".phl[2471]" 0;
	setAttr ".phl[2472]" 0;
	setAttr ".phl[2473]" 0;
	setAttr ".phl[2474]" 0;
	setAttr ".phl[2475]" 0;
	setAttr ".phl[2476]" 0;
	setAttr ".phl[2477]" 0;
	setAttr ".phl[2478]" 0;
	setAttr ".phl[2479]" 0;
	setAttr ".phl[2480]" 0;
	setAttr ".phl[2481]" 0;
	setAttr ".phl[2482]" 0;
	setAttr ".phl[2483]" 0;
	setAttr ".phl[2484]" 0;
	setAttr ".phl[2485]" 0;
	setAttr ".phl[2486]" 0;
	setAttr ".phl[2487]" 0;
	setAttr ".phl[2488]" 0;
	setAttr ".phl[2489]" 0;
	setAttr ".phl[2490]" 0;
	setAttr ".phl[2491]" 0;
	setAttr ".phl[2492]" 0;
	setAttr ".phl[2493]" 0;
	setAttr ".phl[2494]" 0;
	setAttr ".phl[2495]" 0;
	setAttr ".phl[2496]" 0;
	setAttr ".phl[2497]" 0;
	setAttr ".phl[2498]" 0;
	setAttr ".phl[2499]" 0;
	setAttr ".phl[2500]" 0;
	setAttr ".phl[2501]" 0;
	setAttr ".phl[2502]" 0;
	setAttr ".phl[2503]" 0;
	setAttr ".phl[2504]" 0;
	setAttr ".phl[2505]" 0;
	setAttr ".phl[2506]" 0;
	setAttr ".phl[2507]" 0;
	setAttr ".phl[2508]" 0;
	setAttr ".phl[2509]" 0;
	setAttr ".phl[2510]" 0;
	setAttr ".phl[2511]" 0;
	setAttr ".phl[2512]" 0;
	setAttr ".phl[2513]" 0;
	setAttr ".phl[2514]" 0;
	setAttr ".phl[2515]" 0;
	setAttr ".phl[2516]" 0;
	setAttr ".phl[2517]" 0;
	setAttr ".phl[2518]" 0;
	setAttr ".phl[2519]" 0;
	setAttr ".phl[2520]" 0;
	setAttr ".phl[2521]" 0;
	setAttr ".phl[2522]" 0;
	setAttr ".phl[2523]" 0;
	setAttr ".phl[2524]" 0;
	setAttr ".phl[2525]" 0;
	setAttr ".phl[2526]" 0;
	setAttr ".phl[2527]" 0;
	setAttr ".phl[2528]" 0;
	setAttr ".phl[2529]" 0;
	setAttr ".phl[2530]" 0;
	setAttr ".phl[2531]" 0;
	setAttr ".phl[2532]" 0;
	setAttr ".phl[2533]" 0;
	setAttr ".phl[2534]" 0;
	setAttr ".phl[2535]" 0;
	setAttr ".phl[2536]" 0;
	setAttr ".phl[2537]" 0;
	setAttr ".phl[2538]" 0;
	setAttr ".phl[2539]" 0;
	setAttr ".phl[2540]" 0;
	setAttr ".phl[2541]" 0;
	setAttr ".phl[2542]" 0;
	setAttr ".phl[2543]" 0;
	setAttr ".phl[2544]" 0;
	setAttr ".phl[2545]" 0;
	setAttr ".phl[2546]" 0;
	setAttr ".phl[2547]" 0;
	setAttr ".phl[2548]" 0;
	setAttr ".phl[2549]" 0;
	setAttr ".phl[2550]" 0;
	setAttr ".phl[2551]" 0;
	setAttr ".phl[2552]" 0;
	setAttr ".phl[2553]" 0;
	setAttr ".phl[2554]" 0;
	setAttr ".phl[2555]" 0;
	setAttr ".phl[2556]" 0;
	setAttr ".phl[2557]" 0;
	setAttr ".phl[2558]" 0;
	setAttr ".phl[2559]" 0;
	setAttr ".phl[2560]" 0;
	setAttr ".phl[2561]" 0;
	setAttr ".phl[2562]" 0;
	setAttr ".phl[2563]" 0;
	setAttr ".phl[2564]" 0;
	setAttr ".phl[2565]" 0;
	setAttr ".phl[2566]" 0;
	setAttr ".phl[2567]" 0;
	setAttr ".phl[2568]" 0;
	setAttr ".phl[2569]" 0;
	setAttr ".phl[2570]" 0;
	setAttr ".phl[2571]" 0;
	setAttr ".phl[2572]" 0;
	setAttr ".phl[2573]" 0;
	setAttr ".phl[2574]" 0;
	setAttr ".phl[2575]" 0;
	setAttr ".phl[2576]" 0;
	setAttr ".phl[2577]" 0;
	setAttr ".phl[2578]" 0;
	setAttr ".phl[2579]" 0;
	setAttr ".phl[2580]" 0;
	setAttr ".phl[2581]" 0;
	setAttr ".phl[2582]" 0;
	setAttr ".phl[2583]" 0;
	setAttr ".phl[2584]" 0;
	setAttr ".phl[2585]" 0;
	setAttr ".phl[2586]" 0;
	setAttr ".phl[2587]" 0;
	setAttr ".phl[2588]" 0;
	setAttr ".phl[2589]" 0;
	setAttr ".phl[2590]" 0;
	setAttr ".phl[2591]" 0;
	setAttr ".phl[2592]" 0;
	setAttr ".phl[2593]" 0;
	setAttr ".phl[2594]" 0;
	setAttr ".phl[2595]" 0;
	setAttr ".phl[2596]" 0;
	setAttr ".phl[2597]" 0;
	setAttr ".phl[2598]" 0;
	setAttr ".phl[2599]" 0;
	setAttr ".phl[2600]" 0;
	setAttr ".phl[2601]" 0;
	setAttr ".phl[2602]" 0;
	setAttr ".phl[2603]" 0;
	setAttr ".phl[2604]" 0;
	setAttr ".phl[2605]" 0;
	setAttr ".phl[2606]" 0;
	setAttr ".phl[2607]" 0;
	setAttr ".phl[2608]" 0;
	setAttr ".phl[2609]" 0;
	setAttr ".phl[2610]" 0;
	setAttr ".phl[2611]" 0;
	setAttr ".phl[2612]" 0;
	setAttr ".phl[2613]" 0;
	setAttr ".phl[2614]" 0;
	setAttr ".phl[2615]" 0;
	setAttr ".phl[2616]" 0;
	setAttr ".phl[2617]" 0;
	setAttr ".phl[2618]" 0;
	setAttr ".phl[2619]" 0;
	setAttr ".phl[2620]" 0;
	setAttr ".phl[2621]" 0;
	setAttr ".phl[2622]" 0;
	setAttr ".phl[2623]" 0;
	setAttr ".phl[2624]" 0;
	setAttr ".phl[2625]" 0;
	setAttr ".phl[2626]" 0;
	setAttr ".phl[2627]" 0;
	setAttr ".phl[2628]" 0;
	setAttr ".phl[2629]" 0;
	setAttr ".phl[2630]" 0;
	setAttr ".phl[2631]" 0;
	setAttr ".phl[2632]" 0;
	setAttr ".phl[2633]" 0;
	setAttr ".phl[2634]" 0;
	setAttr ".phl[2635]" 0;
	setAttr ".phl[2636]" 0;
	setAttr ".phl[2637]" 0;
	setAttr ".phl[2638]" 0;
	setAttr ".phl[2639]" 0;
	setAttr ".phl[2640]" 0;
	setAttr ".phl[2641]" 0;
	setAttr ".phl[2642]" 0;
	setAttr ".phl[2643]" 0;
	setAttr ".phl[2644]" 0;
	setAttr ".phl[2645]" 0;
	setAttr ".phl[2646]" 0;
	setAttr ".phl[2647]" 0;
	setAttr ".phl[2648]" 0;
	setAttr ".phl[2649]" 0;
	setAttr ".phl[2650]" 0;
	setAttr ".phl[2651]" 0;
	setAttr ".phl[2652]" 0;
	setAttr ".phl[2653]" 0;
	setAttr ".phl[2654]" 0;
	setAttr ".phl[2655]" 0;
	setAttr ".phl[2656]" 0;
	setAttr ".phl[2657]" 0;
	setAttr ".phl[2658]" 0;
	setAttr ".phl[2659]" 0;
	setAttr ".phl[2660]" 0;
	setAttr ".phl[2661]" 0;
	setAttr ".phl[2662]" 0;
	setAttr ".phl[2663]" 0;
	setAttr ".phl[2664]" 0;
	setAttr ".phl[2665]" 0;
	setAttr ".phl[2666]" 0;
	setAttr ".phl[2667]" 0;
	setAttr ".phl[2668]" 0;
	setAttr ".phl[2669]" 0;
	setAttr ".phl[2670]" 0;
	setAttr ".phl[2671]" 0;
	setAttr ".phl[2672]" 0;
	setAttr ".phl[2673]" 0;
	setAttr ".phl[2674]" 0;
	setAttr ".phl[2675]" 0;
	setAttr ".phl[2676]" 0;
	setAttr ".phl[2677]" 0;
	setAttr ".phl[2678]" 0;
	setAttr ".phl[2679]" 0;
	setAttr ".phl[2680]" 0;
	setAttr ".phl[2681]" 0;
	setAttr ".phl[2682]" 0;
	setAttr ".phl[2683]" 0;
	setAttr ".phl[2684]" 0;
	setAttr ".phl[2685]" 0;
	setAttr ".phl[2686]" 0;
	setAttr ".phl[2687]" 0;
	setAttr ".phl[2688]" 0;
	setAttr ".phl[2689]" 0;
	setAttr ".phl[2690]" 0;
	setAttr ".phl[2691]" 0;
	setAttr ".phl[2692]" 0;
	setAttr ".phl[2693]" 0;
	setAttr ".phl[2694]" 0;
	setAttr ".phl[2695]" 0;
	setAttr ".phl[2696]" 0;
	setAttr ".phl[2697]" 0;
	setAttr ".phl[2698]" 0;
	setAttr ".phl[2699]" 0;
	setAttr ".phl[2700]" 0;
	setAttr ".phl[2701]" 0;
	setAttr ".phl[2702]" 0;
	setAttr ".phl[2703]" 0;
	setAttr ".phl[2704]" 0;
	setAttr ".phl[2705]" 0;
	setAttr ".phl[2706]" 0;
	setAttr ".phl[2707]" 0;
	setAttr ".phl[2708]" 0;
	setAttr ".phl[2709]" 0;
	setAttr ".phl[2710]" 0;
	setAttr ".phl[2711]" 0;
	setAttr ".phl[2712]" 0;
	setAttr ".phl[2713]" 0;
	setAttr ".phl[2714]" 0;
	setAttr ".phl[2715]" 0;
	setAttr ".phl[2716]" 0;
	setAttr ".phl[2717]" 0;
	setAttr ".phl[2718]" 0;
	setAttr ".phl[2719]" 0;
	setAttr ".phl[2720]" 0;
	setAttr ".phl[2721]" 0;
	setAttr ".phl[2722]" 0;
	setAttr ".phl[2723]" 0;
	setAttr ".phl[2724]" 0;
	setAttr ".phl[2725]" 0;
	setAttr ".phl[2726]" 0;
	setAttr ".phl[2727]" 0;
	setAttr ".phl[2728]" 0;
	setAttr ".phl[2729]" 0;
	setAttr ".phl[2730]" 0;
	setAttr ".phl[2731]" 0;
	setAttr ".phl[2732]" 0;
	setAttr ".phl[2733]" 0;
	setAttr ".phl[2734]" 0;
	setAttr ".phl[2735]" 0;
	setAttr ".phl[2736]" 0;
	setAttr ".phl[2737]" 0;
	setAttr ".phl[2738]" 0;
	setAttr ".phl[2739]" 0;
	setAttr ".phl[2740]" 0;
	setAttr ".phl[2741]" 0;
	setAttr ".phl[2742]" 0;
	setAttr ".phl[2743]" 0;
	setAttr ".phl[2744]" 0;
	setAttr ".phl[2745]" 0;
	setAttr ".phl[2746]" 0;
	setAttr ".phl[2747]" 0;
	setAttr ".phl[2748]" 0;
	setAttr ".phl[2749]" 0;
	setAttr ".phl[2750]" 0;
	setAttr ".phl[2751]" 0;
	setAttr ".phl[2752]" 0;
	setAttr ".phl[2753]" 0;
	setAttr ".phl[2754]" 0;
	setAttr ".phl[2755]" 0;
	setAttr ".phl[2756]" 0;
	setAttr ".phl[2757]" 0;
	setAttr ".phl[2758]" 0;
	setAttr ".phl[2759]" 0;
	setAttr ".phl[2760]" 0;
	setAttr ".phl[2761]" 0;
	setAttr ".phl[2762]" 0;
	setAttr ".phl[2763]" 0;
	setAttr ".phl[2764]" 0;
	setAttr ".phl[2765]" 0;
	setAttr ".phl[2766]" 0;
	setAttr ".phl[2767]" 0;
	setAttr ".phl[2768]" 0;
	setAttr ".phl[2769]" 0;
	setAttr ".phl[2770]" 0;
	setAttr ".phl[2771]" 0;
	setAttr ".phl[2772]" 0;
	setAttr ".phl[2773]" 0;
	setAttr ".phl[2774]" 0;
	setAttr ".phl[2775]" 0;
	setAttr ".phl[2776]" 0;
	setAttr ".phl[2777]" 0;
	setAttr ".phl[2778]" 0;
	setAttr ".phl[2779]" 0;
	setAttr ".phl[2780]" 0;
	setAttr ".phl[2781]" 0;
	setAttr ".phl[2782]" 0;
	setAttr ".phl[2783]" 0;
	setAttr ".phl[2784]" 0;
	setAttr ".phl[2785]" 0;
	setAttr ".phl[2786]" 0;
	setAttr ".phl[2787]" 0;
	setAttr ".phl[2788]" 0;
	setAttr ".phl[2789]" 0;
	setAttr ".phl[2790]" 0;
	setAttr ".phl[2791]" 0;
	setAttr ".phl[2792]" 0;
	setAttr ".phl[2793]" 0;
	setAttr ".phl[2794]" 0;
	setAttr ".phl[2795]" 0;
	setAttr ".phl[2796]" 0;
	setAttr ".phl[2797]" 0;
	setAttr ".phl[2798]" 0;
	setAttr ".phl[2799]" 0;
	setAttr ".phl[2800]" 0;
	setAttr ".phl[2801]" 0;
	setAttr ".phl[2802]" 0;
	setAttr ".phl[2803]" 0;
	setAttr ".phl[2804]" 0;
	setAttr ".phl[2805]" 0;
	setAttr ".phl[2806]" 0;
	setAttr ".phl[2807]" 0;
	setAttr ".phl[2808]" 0;
	setAttr ".phl[2809]" 0;
	setAttr ".phl[2810]" 0;
	setAttr ".phl[2811]" 0;
	setAttr ".phl[2812]" 0;
	setAttr ".phl[2813]" 0;
	setAttr ".phl[2814]" 0;
	setAttr ".phl[2815]" 0;
	setAttr ".phl[2816]" 0;
	setAttr ".phl[2817]" 0;
	setAttr ".phl[2818]" 0;
	setAttr ".phl[2819]" 0;
	setAttr ".phl[2820]" 0;
	setAttr ".phl[2821]" 0;
	setAttr ".phl[2822]" 0;
	setAttr ".phl[2823]" 0;
	setAttr ".phl[2824]" 0;
	setAttr ".phl[2825]" 0;
	setAttr ".phl[2826]" 0;
	setAttr ".phl[2827]" 0;
	setAttr ".phl[2828]" 0;
	setAttr ".phl[2829]" 0;
	setAttr ".phl[2830]" 0;
	setAttr ".phl[2831]" 0;
	setAttr ".phl[2832]" 0;
	setAttr ".phl[2833]" 0;
	setAttr ".phl[2834]" 0;
	setAttr ".phl[2835]" 0;
	setAttr ".phl[2836]" 0;
	setAttr ".phl[2837]" 0;
	setAttr ".phl[2838]" 0;
	setAttr ".phl[2839]" 0;
	setAttr ".phl[2840]" 0;
	setAttr ".phl[2841]" 0;
	setAttr ".phl[2842]" 0;
	setAttr ".phl[2843]" 0;
	setAttr ".phl[2844]" 0;
	setAttr ".phl[2845]" 0;
	setAttr ".phl[2846]" 0;
	setAttr ".phl[2847]" 0;
	setAttr ".phl[2848]" 0;
	setAttr ".phl[2849]" 0;
	setAttr ".phl[2850]" 0;
	setAttr ".phl[2851]" 0;
	setAttr ".phl[2852]" 0;
	setAttr ".phl[2853]" 0;
	setAttr ".phl[2854]" 0;
	setAttr ".phl[2855]" 0;
	setAttr ".phl[2856]" 0;
	setAttr ".phl[2857]" 0;
	setAttr ".phl[2858]" 0;
	setAttr ".phl[2859]" 0;
	setAttr ".phl[2860]" 0;
	setAttr ".phl[2861]" 0;
	setAttr ".phl[2862]" 0;
	setAttr ".phl[2863]" 0;
	setAttr ".phl[2864]" 0;
	setAttr ".phl[2865]" 0;
	setAttr ".phl[2866]" 0;
	setAttr ".phl[2867]" 0;
	setAttr ".phl[2868]" 0;
	setAttr ".phl[2869]" 0;
	setAttr ".phl[2870]" 0;
	setAttr ".phl[2871]" 0;
	setAttr ".phl[2872]" 0;
	setAttr ".phl[2873]" 0;
	setAttr ".phl[2874]" 0;
	setAttr ".phl[2875]" 0;
	setAttr ".phl[2876]" 0;
	setAttr ".phl[2877]" 0;
	setAttr ".phl[2878]" 0;
	setAttr ".phl[2879]" 0;
	setAttr ".phl[2880]" 0;
	setAttr ".phl[2881]" 0;
	setAttr ".phl[2882]" 0;
	setAttr ".phl[2883]" 0;
	setAttr ".phl[2884]" 0;
	setAttr ".phl[2885]" 0;
	setAttr ".phl[2886]" 0;
	setAttr ".phl[2887]" 0;
	setAttr ".phl[2888]" 0;
	setAttr ".phl[2889]" 0;
	setAttr ".phl[2890]" 0;
	setAttr ".phl[2891]" 0;
	setAttr ".phl[2892]" 0;
	setAttr ".phl[2893]" 0;
	setAttr ".phl[2894]" 0;
	setAttr ".phl[2895]" 0;
	setAttr ".phl[2896]" 0;
	setAttr ".phl[2897]" 0;
	setAttr ".phl[2898]" 0;
	setAttr ".phl[2899]" 0;
	setAttr ".phl[2900]" 0;
	setAttr ".phl[2901]" 0;
	setAttr ".phl[2902]" 0;
	setAttr ".phl[2903]" 0;
	setAttr ".phl[2904]" 0;
	setAttr ".phl[2905]" 0;
	setAttr ".phl[2906]" 0;
	setAttr ".phl[2907]" 0;
	setAttr ".phl[2908]" 0;
	setAttr ".phl[2909]" 0;
	setAttr ".phl[2910]" 0;
	setAttr ".phl[2911]" 0;
	setAttr ".phl[2912]" 0;
	setAttr ".phl[2913]" 0;
	setAttr ".phl[2914]" 0;
	setAttr ".phl[2915]" 0;
	setAttr ".phl[2916]" 0;
	setAttr ".phl[2917]" 0;
	setAttr ".phl[2918]" 0;
	setAttr ".phl[2919]" 0;
	setAttr ".phl[2920]" 0;
	setAttr ".phl[2921]" 0;
	setAttr ".phl[2922]" 0;
	setAttr ".phl[2923]" 0;
	setAttr ".phl[2924]" 0;
	setAttr ".phl[2925]" 0;
	setAttr ".phl[2926]" 0;
	setAttr ".phl[2927]" 0;
	setAttr ".phl[2928]" 0;
	setAttr ".phl[2929]" 0;
	setAttr ".phl[2930]" 0;
	setAttr ".phl[2931]" 0;
	setAttr ".phl[2932]" 0;
	setAttr ".phl[2933]" 0;
	setAttr ".phl[2934]" 0;
	setAttr ".phl[2935]" 0;
	setAttr ".phl[2936]" 0;
	setAttr ".phl[2937]" 0;
	setAttr ".phl[2938]" 0;
	setAttr ".phl[2939]" 0;
	setAttr ".phl[2940]" 0;
	setAttr ".phl[2941]" 0;
	setAttr ".phl[2942]" 0;
	setAttr ".phl[2943]" 0;
	setAttr ".phl[2944]" 0;
	setAttr ".phl[2945]" 0;
	setAttr ".phl[2946]" 0;
	setAttr ".phl[2947]" 0;
	setAttr ".phl[2948]" 0;
	setAttr ".phl[2949]" 0;
	setAttr ".phl[2950]" 0;
	setAttr ".phl[2951]" 0;
	setAttr ".phl[2952]" 0;
	setAttr ".phl[2953]" 0;
	setAttr ".phl[2954]" 0;
	setAttr ".phl[2955]" 0;
	setAttr ".phl[2956]" 0;
	setAttr ".phl[2957]" 0;
	setAttr ".phl[2958]" 0;
	setAttr ".phl[2959]" 0;
	setAttr ".phl[2960]" 0;
	setAttr ".phl[2961]" 0;
	setAttr ".phl[2962]" 0;
	setAttr ".phl[2963]" 0;
	setAttr ".phl[2964]" 0;
	setAttr ".phl[2965]" 0;
	setAttr ".phl[2966]" 0;
	setAttr ".phl[2967]" 0;
	setAttr ".phl[2968]" 0;
	setAttr ".phl[2969]" 0;
	setAttr ".phl[2970]" 0;
	setAttr ".phl[2971]" 0;
	setAttr ".phl[2972]" 0;
	setAttr ".phl[2973]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 323
		1 Ref:skeleton "zooSetMenuHidden" "zooSetMenuHidden" " -ci 1 -h 1 -min 0 -max 1 -at \"bool\""
		
		1 |Ref:heavyInfo "main" "main" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "plotted" "plotted" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "upperBodyControl" "upperBodyControl" " -ci 1 -at \"message\""
		
		1 |Ref:heavyInfo "pelvisControl" "pelvisControl" " -ci 1 -at \"message\""
		
		1 |Ref:heavyInfo "fkSpine0" "fkSpine0" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "fkSpine1" "fkSpine1" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "fkSpine2" "fkSpine2" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "fkSpine3" "fkSpine3" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "ikSpine0" "ikSpine0" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "ikSpine1" "ikSpine1" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "ikSpine2" "ikSpine2" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "ikSpine3" "ikSpine3" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "chestParent" "chestParent" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "neckControl" "neckControl" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "headControl" "headControl" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lFKshoulderControl" "lFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:heavyInfo "lFKshoulder" "lFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lFKelbow" "lFKelbow" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lFKwrist" "lFKwrist" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lIKshoulder" "lIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lIKelbow" "lIKelbow" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lIKwrist" "lIKwrist" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lIKcontrol" "lIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lWeaponAttach" "lWeaponAttach" " -ci 1 -at \"message\""
		
		1 |Ref:heavyInfo "lElbowControl" "lElbowControl" " -ci 1 -at \"message\""
		
		1 |Ref:heavyInfo "lIKupLeg" "lIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lIKknee" "lIKknee" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lIKankle" "lIKankle" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lIKtoe" "lIKtoe" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lIKtoeEnd" "lIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lFKupLeg" "lFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lFKknee" "lFKknee" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lFKankle" "lFKankle" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lFKtoe" "lFKtoe" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lKneeControl" "lKneeControl" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lFootControl" "lFootControl" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "lToeControl" "lToeControl" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rFKshoulderControl" "rFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:heavyInfo "rFKshoulder" "rFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rFKelbow" "rFKelbow" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rFKwrist" "rFKwrist" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rIKshoulder" "rIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rIKelbow" "rIKelbow" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rIKwrist" "rIKwrist" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rIKcontrol" "rIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rWeaponAttach" "rWeaponAttach" " -ci 1 -at \"message\""
		
		1 |Ref:heavyInfo "rElbowControl" "rElbowControl" " -ci 1 -at \"message\""
		
		1 |Ref:heavyInfo "rIKupLeg" "rIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rIKknee" "rIKknee" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rIKankle" "rIKankle" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rIKtoe" "rIKtoe" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rIKtoeEnd" "rIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rFKupLeg" "rFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rFKknee" "rFKknee" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rFKankle" "rFKankle" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rFKtoe" "rFKtoe" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rKneeControl" "rKneeControl" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rFootControl" "rFootControl" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo "rToeControl" "rToeControl" " -ci 1 -at \"message\""
		1 |Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape "miShadingSamplesOverride" 
		"mso" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape "miShadingSamples" 
		"msh" " -ci 1 -min 0 -smx 8 -at \"float\""
		1 |Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape "miMaxDisplaceOverride" 
		"mdo" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape "miMaxDisplace" 
		"mmd" " -ci 1 -min 0 -smx 1 -at \"float\""
		1 Ref:zooRegister_zoo "zooRegzoovisman0" "zooRegzoovisman0" " -ci 1 -at \"message\""
		
		2 "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape" "instObjGroups.objectGroups" 
		" -s 14"
		2 "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "Ref:skeleton" "zooSetMenuHidden" " 0"
		2 "Ref:sfm_mesh_layer" "displayType" " 2"
		2 "Ref:game_mesh_layer" "displayType" " 0"
		2 "|Ref:heavyInfo|Ref:body|Ref:bodyShape" "instObjGroups.objectGroups" " -s 12"
		
		2 "|Ref:heavyInfo|Ref:body|Ref:bodyShape" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "|Ref:heavyInfo|Ref:head_zero|Ref:head_zeroShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:heavyInfo|Ref:sfm_meshes" "visibility" " 0"
		2 "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape" "instObjGroups.objectGroups" 
		" -s 13"
		2 "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape" "instObjGroups.objectGroups" 
		" -s 10"
		2 "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:heavyInfo|Ref:game_meshes" "visibility" " 1"
		2 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape" "instObjGroups.objectGroups" 
		" -s 8"
		2 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape" "miShadingSamplesOverride" 
		" 0"
		2 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape" "miShadingSamples" 
		" 0"
		2 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape" "miMaxDisplaceOverride" 
		" 0"
		2 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape" "miMaxDisplace" 
		" 0"
		2 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape" "instObjGroups.objectGroups" 
		" -s 8"
		2 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "Ref:groupParts108" "groupId" " 398"
		2 "Ref:groupParts110" "groupId" " 399"
		2 "Ref:lod_layer" "visibility" " 0"
		3 "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game.drawOverride" 
		""
		3 "Ref:groupId735.groupId" "Ref:groupParts108.groupId" ""
		3 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[157]" 
		"Ref:hvyweapon_red_SG.dagSetMembers" "-na"
		3 "Ref:groupId735.message" "Ref:hvyweapon_red_SG.groupNodes" "-na"
		3 "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[167]" 
		"Ref:hvyweapon_red_SG.dagSetMembers" "-na"
		3 "Ref:groupId736.message" "Ref:hvyweapon_red_SG.groupNodes" "-na"
		3 "Ref:groupId735.groupId" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[157].objectGroupId" 
		""
		3 "Ref:hvyweapon_red_SG.memberWireframeColor" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[157].objectGrpColor" 
		""
		3 "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game.drawOverride" 
		""
		3 "Ref:groupId736.groupId" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[167].objectGroupId" 
		""
		3 "Ref:hvyweapon_red_SG.memberWireframeColor" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[167].objectGrpColor" 
		""
		3 "Ref:groupId736.groupId" "Ref:groupParts110.groupId" ""
		3 "|Ref:heavyInfo_group|Ref:head_mesh|Ref:head_meshShape.instObjGroups.objectGroups[92]" 
		"Ref:lambert3SG.dagSetMembers" "-na"
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body.drawOverride" "RefRN.placeHolderList[59]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.drawOverride" "RefRN.placeHolderList[60]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShapeOrig.drawOverride" 
		"RefRN.placeHolderList[61]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bullets.drawOverride" "RefRN.placeHolderList[62]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bullets|Ref:bulletsShape.drawOverride" 
		"RefRN.placeHolderList[63]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bullets|Ref:bulletsShapeOrig.drawOverride" 
		"RefRN.placeHolderList[64]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:strap.drawOverride" "RefRN.placeHolderList[65]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:strap|Ref:strapShape.drawOverride" "RefRN.placeHolderList[66]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:strap|Ref:strapShapeOrig.drawOverride" 
		"RefRN.placeHolderList[67]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:strap|Ref:strapShapeOrig1.drawOverride" 
		"RefRN.placeHolderList[68]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis.drawOverride" "RefRN.placeHolderList[75]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0.drawOverride" 
		"RefRN.placeHolderList[88]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.drawOverride" 
		"RefRN.placeHolderList[100]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.drawOverride" 
		"RefRN.placeHolderList[112]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.drawOverride" 
		"RefRN.placeHolderList[125]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.drawOverride" 
		"RefRN.placeHolderList[137]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.drawOverride" 
		"RefRN.placeHolderList[152]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:bip_headEnd.drawOverride" 
		"RefRN.placeHolderList[160]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:teethLower.drawOverride" 
		"RefRN.placeHolderList[161]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:teethLower|Ref:teethLowerShape.drawOverride" 
		"RefRN.placeHolderList[162]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:teethUpper.drawOverride" 
		"RefRN.placeHolderList[163]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:teethUpper|Ref:teethUpperShape.drawOverride" 
		"RefRN.placeHolderList[164]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.drawOverride" 
		"RefRN.placeHolderList[168]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.drawOverride" 
		"RefRN.placeHolderList[179]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.drawOverride" 
		"RefRN.placeHolderList[195]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.drawOverride" 
		"RefRN.placeHolderList[205]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.drawOverride" 
		"RefRN.placeHolderList[219]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.drawOverride" 
		"RefRN.placeHolderList[231]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.drawOverride" 
		"RefRN.placeHolderList[243]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L|Ref:bip_thumbEnd_L.drawOverride" 
		"RefRN.placeHolderList[249]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.drawOverride" 
		"RefRN.placeHolderList[256]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.drawOverride" 
		"RefRN.placeHolderList[268]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.drawOverride" 
		"RefRN.placeHolderList[280]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L|Ref:bip_indexEnd_L.drawOverride" 
		"RefRN.placeHolderList[286]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.drawOverride" 
		"RefRN.placeHolderList[293]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.drawOverride" 
		"RefRN.placeHolderList[305]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.drawOverride" 
		"RefRN.placeHolderList[317]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L|Ref:bip_middleEnd_L.drawOverride" 
		"RefRN.placeHolderList[323]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.drawOverride" 
		"RefRN.placeHolderList[330]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.drawOverride" 
		"RefRN.placeHolderList[342]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.drawOverride" 
		"RefRN.placeHolderList[354]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L|Ref:bip_ringEnd_L.drawOverride" 
		"RefRN.placeHolderList[360]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.drawOverride" 
		"RefRN.placeHolderList[367]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.drawOverride" 
		"RefRN.placeHolderList[379]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.drawOverride" 
		"RefRN.placeHolderList[391]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L|Ref:bip_pinkyEnd_L.drawOverride" 
		"RefRN.placeHolderList[397]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.drawOverride" 
		"RefRN.placeHolderList[401]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.drawOverride" 
		"RefRN.placeHolderList[412]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.drawOverride" 
		"RefRN.placeHolderList[428]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.drawOverride" 
		"RefRN.placeHolderList[438]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.drawOverride" 
		"RefRN.placeHolderList[452]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.drawOverride" 
		"RefRN.placeHolderList[464]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.drawOverride" 
		"RefRN.placeHolderList[476]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R|Ref:bip_thumbEnd_R.drawOverride" 
		"RefRN.placeHolderList[482]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.drawOverride" 
		"RefRN.placeHolderList[489]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.drawOverride" 
		"RefRN.placeHolderList[501]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.drawOverride" 
		"RefRN.placeHolderList[513]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R|Ref:bip_indexEnd_R.drawOverride" 
		"RefRN.placeHolderList[519]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.drawOverride" 
		"RefRN.placeHolderList[526]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.drawOverride" 
		"RefRN.placeHolderList[538]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.drawOverride" 
		"RefRN.placeHolderList[550]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R|Ref:bip_middleEnd_R.drawOverride" 
		"RefRN.placeHolderList[556]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.drawOverride" 
		"RefRN.placeHolderList[563]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.drawOverride" 
		"RefRN.placeHolderList[575]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.drawOverride" 
		"RefRN.placeHolderList[587]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R|Ref:bip_ringEnd_R.drawOverride" 
		"RefRN.placeHolderList[593]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.drawOverride" 
		"RefRN.placeHolderList[600]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.drawOverride" 
		"RefRN.placeHolderList[612]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.drawOverride" 
		"RefRN.placeHolderList[624]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R|Ref:bip_pinkyEnd_R.drawOverride" 
		"RefRN.placeHolderList[630]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.drawOverride" 
		"RefRN.placeHolderList[637]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.drawOverride" 
		"RefRN.placeHolderList[649]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.drawOverride" 
		"RefRN.placeHolderList[661]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.drawOverride" 
		"RefRN.placeHolderList[673]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.drawOverride" 
		"RefRN.placeHolderList[685]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.drawOverride" 
		"RefRN.placeHolderList[697]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_L.drawOverride" 
		"RefRN.placeHolderList[706]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.drawOverride" 
		"RefRN.placeHolderList[721]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.drawOverride" 
		"RefRN.placeHolderList[728]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.drawOverride" 
		"RefRN.placeHolderList[735]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L|Ref:bip_toeEnd_L.drawOverride" 
		"RefRN.placeHolderList[739]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_R.drawOverride" 
		"RefRN.placeHolderList[743]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.drawOverride" 
		"RefRN.placeHolderList[758]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.drawOverride" 
		"RefRN.placeHolderList[765]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.drawOverride" 
		"RefRN.placeHolderList[772]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R|Ref:bip_toeEnd_R.drawOverride" 
		"RefRN.placeHolderList[776]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:prp_pack.drawOverride" 
		"RefRN.placeHolderList[783]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:prp_pack|Ref:pack.drawOverride" 
		"RefRN.placeHolderList[789]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:bip_pelvis|Ref:prp_pack|Ref:pack|Ref:packShape.drawOverride" 
		"RefRN.placeHolderList[790]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[8]" 
		"RefRN.placeHolderList[1512]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[8].objectGroupId" 
		"RefRN.placeHolderList[1513]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[8].objectGrpColor" 
		"RefRN.placeHolderList[1514]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[9]" 
		"RefRN.placeHolderList[1515]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[9].objectGroupId" 
		"RefRN.placeHolderList[1516]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[9].objectGrpColor" 
		"RefRN.placeHolderList[1517]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[10]" 
		"RefRN.placeHolderList[1518]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[10].objectGroupId" 
		"RefRN.placeHolderList[1519]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[10].objectGrpColor" 
		"RefRN.placeHolderList[1520]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[11]" 
		"RefRN.placeHolderList[1521]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[11].objectGroupId" 
		"RefRN.placeHolderList[1522]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.instObjGroups.objectGroups[11].objectGrpColor" 
		"RefRN.placeHolderList[1523]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:heavy_mesh|Ref:heavy_meshShape.inMesh" 
		"RefRN.placeHolderList[1524]" ""
		5 3 "RefRN" "Ref:groupParts26.outputGeometry" "RefRN.placeHolderList[1525]" 
		"Ref:heavy_meshShape.i"
		5 4 "RefRN" "|Ref:heavyInfo.main" "RefRN.placeHolderList[1526]" ""
		5 4 "RefRN" "|Ref:heavyInfo.plotted" "RefRN.placeHolderList[1527]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.upperBodyControl" "RefRN.placeHolderList[1528]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.pelvisControl" "RefRN.placeHolderList[1529]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.fkSpine0" "RefRN.placeHolderList[1530]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.fkSpine1" "RefRN.placeHolderList[1531]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.fkSpine2" "RefRN.placeHolderList[1532]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.fkSpine3" "RefRN.placeHolderList[1533]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.ikSpine0" "RefRN.placeHolderList[1534]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.ikSpine1" "RefRN.placeHolderList[1535]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.ikSpine2" "RefRN.placeHolderList[1536]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.ikSpine3" "RefRN.placeHolderList[1537]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.chestParent" "RefRN.placeHolderList[1538]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.neckControl" "RefRN.placeHolderList[1539]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.headControl" "RefRN.placeHolderList[1540]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lFKshoulderControl" "RefRN.placeHolderList[1541]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lFKshoulder" "RefRN.placeHolderList[1542]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lFKelbow" "RefRN.placeHolderList[1543]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lFKwrist" "RefRN.placeHolderList[1544]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lIKshoulder" "RefRN.placeHolderList[1545]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lIKelbow" "RefRN.placeHolderList[1546]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lIKwrist" "RefRN.placeHolderList[1547]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lIKcontrol" "RefRN.placeHolderList[1548]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lWeaponAttach" "RefRN.placeHolderList[1549]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lElbowControl" "RefRN.placeHolderList[1550]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lIKupLeg" "RefRN.placeHolderList[1551]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lIKknee" "RefRN.placeHolderList[1552]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.lIKankle" "RefRN.placeHolderList[1553]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lIKtoe" "RefRN.placeHolderList[1554]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.lIKtoeEnd" "RefRN.placeHolderList[1555]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lFKupLeg" "RefRN.placeHolderList[1556]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lFKknee" "RefRN.placeHolderList[1557]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.lFKankle" "RefRN.placeHolderList[1558]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lFKtoe" "RefRN.placeHolderList[1559]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.lKneeControl" "RefRN.placeHolderList[1560]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lFootControl" "RefRN.placeHolderList[1561]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.lToeControl" "RefRN.placeHolderList[1562]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rFKshoulderControl" "RefRN.placeHolderList[1563]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rFKshoulder" "RefRN.placeHolderList[1564]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rFKelbow" "RefRN.placeHolderList[1565]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rFKwrist" "RefRN.placeHolderList[1566]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rIKshoulder" "RefRN.placeHolderList[1567]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rIKelbow" "RefRN.placeHolderList[1568]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rIKwrist" "RefRN.placeHolderList[1569]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rIKcontrol" "RefRN.placeHolderList[1570]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rWeaponAttach" "RefRN.placeHolderList[1571]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rElbowControl" "RefRN.placeHolderList[1572]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rIKupLeg" "RefRN.placeHolderList[1573]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rIKknee" "RefRN.placeHolderList[1574]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.rIKankle" "RefRN.placeHolderList[1575]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rIKtoe" "RefRN.placeHolderList[1576]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.rIKtoeEnd" "RefRN.placeHolderList[1577]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rFKupLeg" "RefRN.placeHolderList[1578]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rFKknee" "RefRN.placeHolderList[1579]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.rFKankle" "RefRN.placeHolderList[1580]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rFKtoe" "RefRN.placeHolderList[1581]" ""
		
		5 4 "RefRN" "|Ref:heavyInfo.rKneeControl" "RefRN.placeHolderList[1582]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rFootControl" "RefRN.placeHolderList[1583]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo.rToeControl" "RefRN.placeHolderList[1584]" 
		""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:bullets.instObjGroups" "RefRN.placeHolderList[2244]" 
		""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:pack.instObjGroups" "RefRN.placeHolderList[2245]" 
		""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[99]" 
		"RefRN.placeHolderList[2246]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[99].objectGroupId" 
		"RefRN.placeHolderList[2247]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[99].objectGrpColor" 
		"RefRN.placeHolderList[2248]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[100]" 
		"RefRN.placeHolderList[2249]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[100].objectGroupId" 
		"RefRN.placeHolderList[2250]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[100].objectGrpColor" 
		"RefRN.placeHolderList[2251]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[102]" 
		"RefRN.placeHolderList[2252]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[102].objectGroupId" 
		"RefRN.placeHolderList[2253]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.instObjGroups.objectGroups[102].objectGrpColor" 
		"RefRN.placeHolderList[2254]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:body|Ref:bodyShape.inMesh" "RefRN.placeHolderList[2255]" 
		""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:head_zero.instObjGroups" "RefRN.placeHolderList[2256]" 
		""
		5 0 "RefRN" "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm.drawOverride" 
		"RefRN.placeHolderList[2257]" "RefRN.placeHolderList[2258]" "Ref:hand_L_game.do"
		5 3 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape.instObjGroups.objectGroups[86]" 
		"RefRN.placeHolderList[2259]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape.instObjGroups.objectGroups[86].objectGroupId" 
		"RefRN.placeHolderList[2260]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape.instObjGroups.objectGroups[86].objectGrpColor" 
		"RefRN.placeHolderList[2261]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape.instObjGroups.objectGroups[87]" 
		"RefRN.placeHolderList[2262]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape.instObjGroups.objectGroups[87].objectGroupId" 
		"RefRN.placeHolderList[2263]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape.instObjGroups.objectGroups[87].objectGrpColor" 
		"RefRN.placeHolderList[2264]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_L_sfm|Ref:hand_L_sfmShape.inMesh" 
		"RefRN.placeHolderList[2265]" ""
		5 0 "RefRN" "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm.drawOverride" 
		"RefRN.placeHolderList[2266]" "RefRN.placeHolderList[2267]" "Ref:hand_L_game.do"
		5 3 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape.instObjGroups.objectGroups[90]" 
		"RefRN.placeHolderList[2268]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape.instObjGroups.objectGroups[90].objectGroupId" 
		"RefRN.placeHolderList[2269]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape.instObjGroups.objectGroups[90].objectGrpColor" 
		"RefRN.placeHolderList[2270]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape.instObjGroups.objectGroups[91]" 
		"RefRN.placeHolderList[2271]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape.instObjGroups.objectGroups[91].objectGroupId" 
		"RefRN.placeHolderList[2272]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape.instObjGroups.objectGroups[91].objectGrpColor" 
		"RefRN.placeHolderList[2273]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:sfm_meshes|Ref:hand_R_sfm|Ref:hand_R_sfmShape.inMesh" 
		"RefRN.placeHolderList[2274]" ""
		5 0 "RefRN" "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:game_meshes.drawOverride" 
		"RefRN.placeHolderList[2275]" "RefRN.placeHolderList[2276]" "Ref:hand_L_game.do"
		5 0 "RefRN" "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game.drawOverride" 
		"RefRN.placeHolderList[2277]" "RefRN.placeHolderList[2278]" "Ref:hand_L_game.do"
		5 3 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game.instObjGroups" 
		"RefRN.placeHolderList[2279]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[158]" 
		"RefRN.placeHolderList[2280]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[158].objectGroupId" 
		"RefRN.placeHolderList[2281]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[158].objectGrpColor" 
		"RefRN.placeHolderList[2282]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[159]" 
		"RefRN.placeHolderList[2283]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[159].objectGroupId" 
		"RefRN.placeHolderList[2284]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups.objectGroups[159].objectGrpColor" 
		"RefRN.placeHolderList[2285]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.inMesh" 
		"RefRN.placeHolderList[2286]" ""
		5 0 "RefRN" "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.drawOverride" 
		"RefRN.placeHolderList[2287]" "RefRN.placeHolderList[2288]" "Ref:hand_L_game.do"
		5 0 "RefRN" "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game.drawOverride" 
		"RefRN.placeHolderList[2289]" "RefRN.placeHolderList[2290]" "Ref:hand_L_game.do"
		5 3 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game.instObjGroups" 
		"RefRN.placeHolderList[2291]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[168]" 
		"RefRN.placeHolderList[2292]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[168].objectGroupId" 
		"RefRN.placeHolderList[2293]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[168].objectGrpColor" 
		"RefRN.placeHolderList[2294]" ""
		5 3 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[169]" 
		"RefRN.placeHolderList[2295]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[169].objectGroupId" 
		"RefRN.placeHolderList[2296]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups.objectGroups[169].objectGrpColor" 
		"RefRN.placeHolderList[2297]" ""
		5 4 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.inMesh" 
		"RefRN.placeHolderList[2298]" ""
		5 0 "RefRN" "Ref:mesh_layer.drawInfo" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.drawOverride" 
		"RefRN.placeHolderList[2299]" "RefRN.placeHolderList[2300]" "Ref:hand_L_game.do"
		5 0 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_L_game|Ref:hand_L_gameShape.instObjGroups" 
		"Ref:hvyweapon_red_SG.dagSetMembers" "RefRN.placeHolderList[2301]" "RefRN.placeHolderList[2302]" 
		""
		5 0 "RefRN" "|Ref:heavyInfo|Ref:game_meshes|Ref:hand_R_game|Ref:hand_R_gameShape.instObjGroups" 
		"Ref:hvyweapon_red_SG.dagSetMembers" "RefRN.placeHolderList[2303]" "RefRN.placeHolderList[2304]" 
		""
		5 3 "RefRN" "Ref:groupParts45.outputGeometry" "RefRN.placeHolderList[2305]" 
		""
		5 3 "RefRN" "Ref:groupParts46.outputGeometry" "RefRN.placeHolderList[2306]" 
		""
		5 3 "RefRN" "Ref:groupParts49.outputGeometry" "RefRN.placeHolderList[2307]" 
		""
		5 4 "RefRN" "Ref:zooRegister_zoo.zooRegzoovisman0" "RefRN.placeHolderList[2308]" 
		""
		5 3 "RefRN" "Ref:groupParts68.outputGeometry" "RefRN.placeHolderList[2309]" 
		""
		5 3 "RefRN" "Ref:groupParts69.outputGeometry" "RefRN.placeHolderList[2310]" 
		""
		"Ref:HeadRN" 1
		5 3 "RefRN" "|Ref:heavyInfo|Ref:Head:zero.instObjGroups" "RefRN.placeHolderList[791]" 
		""
		"RefRN" 751
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_shoulder_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_backUpper_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_backLower_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_chestUpper_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_side_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_bullet_chestLower_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pack_parentConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:heavyInfo_group|Ref:bip_pelvis" 
		"-s -r "
		1 Ref:bones "zooSetMenuHidden" "zooSetMenuHidden" " -ci 1 -h 1 -min 0 -max 1 -at \"bool\""
		
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" "translate" " -type \"double3\" 0 -6.065608 0"
		
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" "translateX" " -av"
		
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" "translateY" " -av"
		
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" "translateZ" " -av"
		
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "translate" 
		" -type \"double3\" 0 -7.446174 0"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "translateX" 
		" -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "translateY" 
		" -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "translateZ" 
		" -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"translate" " -type \"double3\" 0 -8.166982 0"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"translateX" " -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"translateY" " -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"translateZ" " -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"translate" " -type \"double3\" 0 -7.059042 0"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"translateX" " -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"translateY" " -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"translateZ" " -av"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"rotateX" " -av 0"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"rotateY" " -av 0"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"rotateZ" " -av 0"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"rotateX" " -av 0"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"rotateY" " -av 0"
		2 "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"rotateZ" " -av 0"
		2 "|Ref:heavyInfo_group|Ref:head_mesh|Ref:head_meshShape" "instObjGroups.objectGroups" 
		" -s 10"
		2 "Ref:bones" "zooSetMenuHidden" " 0"
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:skeleton_layer" "displayType" " 2"
		2 "Ref:skeleton_layer" "visibility" " 1"
		3 "Ref:lambert2SG.memberWireframeColor" "|Ref:heavyInfo_group|Ref:head_mesh|Ref:head_meshShape.instObjGroups.objectGroups[92].objectGrpColor" 
		""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.message" "RefRN.placeHolderList[2311]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[2312]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[2313]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[2314]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[2315]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[2316]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[2317]" 
		""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[2318]" 
		""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.rotatePivotTranslate" 
		"RefRN.placeHolderList[2319]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[2320]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[2321]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[2322]" 
		""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[2323]" 
		""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateX" 
		"RefRN.placeHolderList[2324]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateY" 
		"RefRN.placeHolderList[2325]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" 
		"RefRN.placeHolderList[2326]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" 
		"RefRN.placeHolderList[2327]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" 
		"RefRN.placeHolderList[2328]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" 
		"RefRN.placeHolderList[2329]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" 
		"RefRN.placeHolderList[2330]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[2331]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" 
		"RefRN.placeHolderList[2332]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" 
		"RefRN.placeHolderList[2333]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[2334]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[2335]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[2336]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[2337]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[2338]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[2339]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[2340]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[2341]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[2342]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[2343]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[2344]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[2345]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[2346]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[2347]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[2348]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[2349]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[2350]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[2351]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[2352]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[2353]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[2354]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[2355]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[2356]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[2357]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[2358]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[2359]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[2360]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[2361]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[2362]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[2363]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[2364]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[2365]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[2366]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[2367]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[2368]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[2369]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[2370]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[2371]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[2372]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[2373]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[2374]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[2375]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[2376]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[2377]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[2378]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[2379]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[2380]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[2381]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[2382]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[2383]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[2384]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[2385]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[2386]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[2387]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[2388]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[2389]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[2390]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[2391]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[2392]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[2393]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[2394]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[2395]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[2396]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[2397]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[2398]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[2399]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[2400]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2401]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[2402]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[2403]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[2404]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2405]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.message" 
		"RefRN.placeHolderList[2406]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.message" 
		"RefRN.placeHolderList[2407]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[2408]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[2409]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[2410]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[2411]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[2412]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[2413]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[2414]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2415]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2416]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[2417]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[2418]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[2419]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[2420]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2421]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.message" 
		"RefRN.placeHolderList[2422]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.message" 
		"RefRN.placeHolderList[2423]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[2424]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[2425]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[2426]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[2427]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[2428]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[2429]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[2430]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[2431]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[2432]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2433]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[2434]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[2435]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.message" 
		"RefRN.placeHolderList[2436]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.message" 
		"RefRN.placeHolderList[2437]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[2438]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[2439]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[2440]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[2441]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[2442]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2443]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[2444]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2445]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[2446]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[2447]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[2448]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[2449]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[2450]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[2451]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[2452]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2453]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[2454]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[2455]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2456]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[2457]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[2458]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[2459]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[2460]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[2461]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[2462]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[2463]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2464]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[2465]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[2466]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2467]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[2468]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[2469]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[2470]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[2471]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[2472]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[2473]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[2474]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[2475]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2476]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[2477]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2478]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[2479]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[2480]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[2481]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[2482]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[2483]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[2484]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[2485]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2486]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[2487]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[2488]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2489]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[2490]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[2491]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[2492]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[2493]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[2494]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[2495]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[2496]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[2497]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2498]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[2499]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2500]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[2501]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[2502]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[2503]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[2504]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[2505]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[2506]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[2507]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[2508]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2509]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[2510]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2511]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[2512]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[2513]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[2514]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[2515]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[2516]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[2517]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[2518]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2519]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[2520]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[2521]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2522]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[2523]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[2524]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[2525]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[2526]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[2527]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[2528]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[2529]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[2530]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2531]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[2532]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2533]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[2534]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[2535]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[2536]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[2537]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[2538]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[2539]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[2540]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[2541]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2542]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[2543]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2544]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[2545]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[2546]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[2547]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[2548]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[2549]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[2550]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[2551]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2552]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[2553]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[2554]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2555]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[2556]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[2557]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[2558]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[2559]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[2560]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[2561]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[2562]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[2563]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2564]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[2565]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2566]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[2567]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[2568]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[2569]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[2570]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[2571]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[2572]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[2573]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[2574]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2575]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[2576]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2577]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[2578]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[2579]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[2580]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[2581]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[2582]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[2583]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[2584]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2585]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[2586]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[2587]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2588]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[2589]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[2590]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[2591]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[2592]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[2593]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[2594]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[2595]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[2596]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2597]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[2598]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2599]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[2600]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[2601]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[2602]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[2603]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[2604]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[2605]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[2606]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[2607]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2608]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[2609]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2610]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[2611]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[2612]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[2613]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[2614]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[2615]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2616]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[2617]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[2618]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[2619]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2620]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.message" 
		"RefRN.placeHolderList[2621]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[2622]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[2623]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[2624]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[2625]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[2626]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[2627]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[2628]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2629]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2630]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[2631]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[2632]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[2633]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[2634]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2635]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.message" 
		"RefRN.placeHolderList[2636]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[2637]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[2638]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[2639]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[2640]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[2641]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[2642]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[2643]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[2644]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[2645]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2646]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[2647]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[2648]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.message" 
		"RefRN.placeHolderList[2649]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[2650]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[2651]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[2652]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[2653]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[2654]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2655]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[2656]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2657]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[2658]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[2659]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[2660]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[2661]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[2662]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[2663]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[2664]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2665]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[2666]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[2667]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2668]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[2669]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[2670]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[2671]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[2672]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[2673]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[2674]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[2675]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2676]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[2677]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[2678]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2679]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[2680]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[2681]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[2682]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[2683]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[2684]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[2685]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[2686]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[2687]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2688]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[2689]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2690]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[2691]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[2692]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[2693]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[2694]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[2695]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[2696]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[2697]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2698]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[2699]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[2700]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2701]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[2702]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[2703]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[2704]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[2705]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[2706]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[2707]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[2708]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[2709]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2710]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[2711]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2712]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[2713]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[2714]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[2715]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[2716]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[2717]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[2718]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[2719]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[2720]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2721]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[2722]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2723]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[2724]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[2725]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[2726]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[2727]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[2728]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[2729]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[2730]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2731]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[2732]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[2733]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2734]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[2735]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[2736]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[2737]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[2738]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[2739]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[2740]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[2741]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[2742]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2743]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[2744]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2745]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[2746]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[2747]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[2748]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[2749]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[2750]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[2751]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[2752]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[2753]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2754]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[2755]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2756]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[2757]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[2758]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[2759]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[2760]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[2761]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[2762]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[2763]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2764]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[2765]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[2766]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2767]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[2768]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[2769]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[2770]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[2771]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[2772]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[2773]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[2774]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[2775]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2776]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[2777]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2778]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[2779]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[2780]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[2781]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[2782]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[2783]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[2784]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[2785]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[2786]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2787]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[2788]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2789]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[2790]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[2791]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[2792]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[2793]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[2794]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[2795]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[2796]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2797]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[2798]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[2799]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2800]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[2801]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[2802]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[2803]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[2804]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[2805]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[2806]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[2807]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[2808]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2809]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[2810]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2811]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[2812]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[2813]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[2814]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[2815]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[2816]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[2817]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[2818]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[2819]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2820]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[2821]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2822]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.translateX" 
		"RefRN.placeHolderList[2823]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.translateY" 
		"RefRN.placeHolderList[2824]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.translateZ" 
		"RefRN.placeHolderList[2825]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotateX" 
		"RefRN.placeHolderList[2826]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotateY" 
		"RefRN.placeHolderList[2827]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotateZ" 
		"RefRN.placeHolderList[2828]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotatePivot" 
		"RefRN.placeHolderList[2829]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotatePivotTranslate" 
		"RefRN.placeHolderList[2830]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.rotateOrder" 
		"RefRN.placeHolderList[2831]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.jointOrient" 
		"RefRN.placeHolderList[2832]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:prp_bullet_shoulder.parentInverseMatrix" 
		"RefRN.placeHolderList[2833]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.translateX" 
		"RefRN.placeHolderList[2834]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.translateY" 
		"RefRN.placeHolderList[2835]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.translateZ" 
		"RefRN.placeHolderList[2836]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotateX" 
		"RefRN.placeHolderList[2837]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotateY" 
		"RefRN.placeHolderList[2838]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotateZ" 
		"RefRN.placeHolderList[2839]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotatePivot" 
		"RefRN.placeHolderList[2840]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotatePivotTranslate" 
		"RefRN.placeHolderList[2841]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.rotateOrder" 
		"RefRN.placeHolderList[2842]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.jointOrient" 
		"RefRN.placeHolderList[2843]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_bullet_backUpper.parentInverseMatrix" 
		"RefRN.placeHolderList[2844]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.translateX" 
		"RefRN.placeHolderList[2845]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.translateY" 
		"RefRN.placeHolderList[2846]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.translateZ" 
		"RefRN.placeHolderList[2847]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotateX" 
		"RefRN.placeHolderList[2848]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotateY" 
		"RefRN.placeHolderList[2849]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotateZ" 
		"RefRN.placeHolderList[2850]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotatePivot" 
		"RefRN.placeHolderList[2851]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotatePivotTranslate" 
		"RefRN.placeHolderList[2852]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.rotateOrder" 
		"RefRN.placeHolderList[2853]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.jointOrient" 
		"RefRN.placeHolderList[2854]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_backLower.parentInverseMatrix" 
		"RefRN.placeHolderList[2855]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.translateX" 
		"RefRN.placeHolderList[2856]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.translateY" 
		"RefRN.placeHolderList[2857]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.translateZ" 
		"RefRN.placeHolderList[2858]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotateX" 
		"RefRN.placeHolderList[2859]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotateY" 
		"RefRN.placeHolderList[2860]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotateZ" 
		"RefRN.placeHolderList[2861]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotatePivot" 
		"RefRN.placeHolderList[2862]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotatePivotTranslate" 
		"RefRN.placeHolderList[2863]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.rotateOrder" 
		"RefRN.placeHolderList[2864]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.jointOrient" 
		"RefRN.placeHolderList[2865]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:prp_bullet_chestUpper.parentInverseMatrix" 
		"RefRN.placeHolderList[2866]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.translateX" 
		"RefRN.placeHolderList[2867]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.translateY" 
		"RefRN.placeHolderList[2868]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.translateZ" 
		"RefRN.placeHolderList[2869]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotateX" 
		"RefRN.placeHolderList[2870]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotateY" 
		"RefRN.placeHolderList[2871]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotateZ" 
		"RefRN.placeHolderList[2872]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotatePivot" 
		"RefRN.placeHolderList[2873]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotatePivotTranslate" 
		"RefRN.placeHolderList[2874]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.rotateOrder" 
		"RefRN.placeHolderList[2875]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.jointOrient" 
		"RefRN.placeHolderList[2876]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_side.parentInverseMatrix" 
		"RefRN.placeHolderList[2877]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.translateX" 
		"RefRN.placeHolderList[2878]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.translateY" 
		"RefRN.placeHolderList[2879]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.translateZ" 
		"RefRN.placeHolderList[2880]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotateX" 
		"RefRN.placeHolderList[2881]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotateY" 
		"RefRN.placeHolderList[2882]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotateZ" 
		"RefRN.placeHolderList[2883]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotatePivot" 
		"RefRN.placeHolderList[2884]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotatePivotTranslate" 
		"RefRN.placeHolderList[2885]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.rotateOrder" 
		"RefRN.placeHolderList[2886]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.jointOrient" 
		"RefRN.placeHolderList[2887]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:prp_bullet_chestLower.parentInverseMatrix" 
		"RefRN.placeHolderList[2888]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.message" 
		"RefRN.placeHolderList[2889]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" 
		"RefRN.placeHolderList[2890]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" 
		"RefRN.placeHolderList[2891]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" 
		"RefRN.placeHolderList[2892]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[2893]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[2894]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[2895]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[2896]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2897]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2898]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" 
		"RefRN.placeHolderList[2899]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[2900]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[2901]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" 
		"RefRN.placeHolderList[2902]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2903]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.message" 
		"RefRN.placeHolderList[2904]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[2905]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[2906]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[2907]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[2908]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[2909]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2910]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.message" 
		"RefRN.placeHolderList[2911]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[2912]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[2913]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[2914]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[2915]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[2916]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2917]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[2918]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[2919]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[2920]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[2921]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[2922]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2923]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.message" 
		"RefRN.placeHolderList[2924]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" 
		"RefRN.placeHolderList[2925]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" 
		"RefRN.placeHolderList[2926]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" 
		"RefRN.placeHolderList[2927]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[2928]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[2929]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[2930]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[2931]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2932]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2933]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" 
		"RefRN.placeHolderList[2934]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[2935]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[2936]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" 
		"RefRN.placeHolderList[2937]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2938]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.message" 
		"RefRN.placeHolderList[2939]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[2940]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[2941]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[2942]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[2943]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[2944]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2945]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.message" 
		"RefRN.placeHolderList[2946]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[2947]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[2948]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[2949]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[2950]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[2951]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2952]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[2953]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[2954]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[2955]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[2956]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[2957]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2958]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.translateX" 
		"RefRN.placeHolderList[2959]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.translateY" 
		"RefRN.placeHolderList[2960]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.translateZ" 
		"RefRN.placeHolderList[2961]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.rotateX" 
		"RefRN.placeHolderList[2962]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.rotateY" 
		"RefRN.placeHolderList[2963]" ""
		5 4 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.rotateZ" 
		"RefRN.placeHolderList[2964]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.rotatePivot" 
		"RefRN.placeHolderList[2965]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.rotatePivotTranslate" 
		"RefRN.placeHolderList[2966]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.rotateOrder" 
		"RefRN.placeHolderList[2967]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.jointOrient" 
		"RefRN.placeHolderList[2968]" ""
		5 3 "RefRN" "|Ref:heavyInfo_group|Ref:bip_pelvis|Ref:prp_pack.parentInverseMatrix" 
		"RefRN.placeHolderList[2969]" ""
		5 0 "RefRN" "Ref:lambert2SG.memberWireframeColor" "|Ref:heavyInfo_group|Ref:head_mesh|Ref:head_meshShape.instObjGroups.objectGroups[92].objectGrpColor" 
		"RefRN.placeHolderList[2970]" "RefRN.placeHolderList[2971]" "Ref:head_meshShape.iog.og[92].gco"
		
		5 0 "RefRN" "|Ref:heavyInfo_group|Ref:head_mesh|Ref:head_meshShape.instObjGroups.objectGroups[92]" 
		"Ref:lambert2SG.dagSetMembers" "RefRN.placeHolderList[2972]" "RefRN.placeHolderList[2973]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
createNode ikSplineSolver -n "ikSplineSolver";
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 45 ".dsm";
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
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.95014146559823121 -0.31181917091616651 0
		 0 0.31181917091616651 -0.95014146559823121 0 0 69.116623784974905 -7.9994706495552981 1;
createNode expression -n "SpineCurvevisExp";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" "if(.I[0]==0)\r\n.O[0]=0;\r\nelse\r\n.O[0]=1;";
createNode cluster -n "ikChestClusterCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak3";
createNode objectSet -n "cluster9Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster9GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster9GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[2:3]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "ikPelvisClusterCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster10Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster10GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster10GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode curveInfo -n "curveInfo1";
createNode expression -n "stretchyBack";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/22.65619829";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/22.65619829";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/22.65619829";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/22.65619829";
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
createNode expression -n "fkParent3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent4";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent5";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent6";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent7";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode animCurveUL -n "Ref:bip_spine_1FKcontrolZeroGroup_translateY";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 3.8579037790907411 1 0 2 -2.3837488866104177;
createNode animCurveUL -n "Ref:bip_spine_2FKcontrolZeroGroup_translateY";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 3.8579037790907411 1 0 2 -2.3837488866104177;
createNode animCurveUL -n "Ref:bip_spine_3FKcontrolZeroGroup_translateY";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 3.8579037790907411 1 0 2 -2.3837488866104177;
createNode objectSet -n "hands_L";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "hand_R";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
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
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode objectSet -n "Heavy";
	addAttr -ci true -sn "version" -ln "version" -at "long";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "bgImage" -ln "bgImage" -dt "string";
	addAttr -ci true -sn "bgColour" -ln "bgColour" -dt "string";
	addAttr -ci true -sn "filepath" -ln "filepath" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 69 ".dnsm";
	setAttr ".an" -type "string" "zooPickerCharacter";
	setAttr ".name" -type "string" "Heavy";
	setAttr ".bgImage" -type "string" "pickerGrid.bmp";
	setAttr ".bgColour" -type "string" "0.0,0.0,0.0";
lockNode -l 1 ;
createNode objectSet -n "RFoot";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "30,386;38,14";
	setAttr ".colour" -type "string" "0.626999974251,0.333013772964,0.113486990333";
	setAttr ".label" -type "string" "RFoot";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "RKnee";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "61,367;42,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "RKnee";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "LKnee";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "144,367;42,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "LKnee";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "LFoot";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "179,386;38,14";
	setAttr ".colour" -type "string" "0.629000008106,0.333664357662,0.114477992058";
	setAttr ".label" -type "string" "LFoot";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "RToe";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "18,405;35,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "RToe";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "LToe";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "194,405;35,14";
	setAttr ".colour" -type "string" "0.626999974251,0.333013772964,0.113486990333";
	setAttr ".label" -type "string" "LToe";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "main1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "98,404;39,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "main";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "hips_only";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "85,349;70,14";
	setAttr ".colour" -type "string" "0.626999974251,0.333013772964,0.113486990333";
	setAttr ".label" -type "string" "hips_only";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Main_Hip";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "92,322;55,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "Main_Hip";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "spine0";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "95,295;49,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "spine0";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "spine1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "95,279;49,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "spine1";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "spine2";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "95,263;49,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "spine2";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "spine3";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "95,247;49,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "spine3";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "neck";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "98,220;43,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "neck";
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
	setAttr ".posSize" -type "string" "100,195;39,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "Head";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "shoulder";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "162,237;50,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "shoulder";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "rShoulderControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "33,237;50,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "shoulder";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "elbow";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "188,268;36,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "elbow";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "rElbowControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "24,268;36,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "elbow";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "R_rotHand";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "15,304;66,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "R_rotHand";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "R_tranHand";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "5,321;73,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "R_tranHand";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "L_rotHand";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "180,321;66,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "L_rotHand";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "L_tranHand";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "165,304;73,14";
	setAttr ".colour" -type "string" "0.624000012875,0.32963424921,0.109824001789";
	setAttr ".label" -type "string" "L_tranHand";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "228,147;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_pinky_0_LControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "228,173;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_pinky_1_LControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "228,189;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_pinky_2_LControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "228,204;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "212,144;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "212,164;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
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
	setAttr ".posSize" -type "string" "212,180;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "212,196;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "194,140;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "194,161;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "194,176;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "194,191;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "176,143;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "176,163;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "176,178;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "176,193;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "155,158;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "155,179;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "155,195;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "155,210;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "77,158;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "77,179;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "77,195;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "77,210;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "57,143;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "57,163;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "57,178;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "57,193;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "40,140;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "40,161;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
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
	setAttr ".posSize" -type "string" "40,176;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
	setAttr ".label" -type "string" "";
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
	setAttr ".posSize" -type "string" "40,191;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "23,144;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "23,164;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "23,180;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "23,195;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "7,147;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".posSize" -type "string" "7,173;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "7,189;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "7,204;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "137,81;7,14";
	setAttr ".colour" -type "string" "0.419999986887,0.219907805324,0.121800005436";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "122,63;7,14";
	setAttr ".colour" -type "string" "0.419999986887,0.219907805324,0.121800005436";
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
	setAttr ".posSize" -type "string" "114,40;7,14";
	setAttr ".colour" -type "string" "0.419999986887,0.219907805324,0.121800005436";
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
	setAttr ".posSize" -type "string" "138,43;7,14";
	setAttr ".colour" -type "string" "0.419999986887,0.219907805324,0.121800005436";
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
	setAttr ".posSize" -type "string" "152,63;7,14";
	setAttr ".colour" -type "string" "0.419999986887,0.219907805324,0.121800005436";
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
	setAttr ".posSize" -type "string" "161,83;7,14";
	setAttr ".colour" -type "string" "0.419999986887,0.219907805324,0.121800005436";
	setAttr ".label" -type "string" "";
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
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
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
	setAttr -s 2 ".r";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
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
	setAttr ".hyp[0].isc" yes;
connectAttr "RefRN.phl[2311]" ":hyperGraphLayout.hyp[0].dn";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[2312]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[2313]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[2314]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[2315]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[2316]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[2317]";
connectAttr "RefRN.phl[2318]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[2319]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[2320]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "RefRN.phl[2321]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "RefRN.phl[2322]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[2323]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[2324]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[2325]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[2326]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[2327]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[2328]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[2329]";
connectAttr "RefRN.phl[2330]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[2331]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "RefRN.phl[2332]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[2333]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[2334]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[2335]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[2336]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[2337]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[2338]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[2339]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[2340]";
connectAttr "RefRN.phl[2341]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[2342]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "RefRN.phl[2343]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[2344]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[2345]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[2346]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[2347]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[2348]";
connectAttr "RefRN.phl[2349]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[2350]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[2351]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[2352]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[2353]";
connectAttr "RefRN.phl[2354]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[2355]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[2356]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[2357]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[2358]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[2359]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[2360]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[2361]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[2362]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[2363]";
connectAttr "RefRN.phl[2364]" "neckControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[2365]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[2366]" "neckControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "RefRN.phl[2367]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "RefRN.phl[2368]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[2369]" "neckControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[2370]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[2371]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[2372]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[2373]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[2374]";
connectAttr "RefRN.phl[2375]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2376]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2377]" "headControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[2378]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2379]" "headControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "RefRN.phl[2380]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2381]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[2382]" "headControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[2383]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2384]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[2385]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[2386]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[2387]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[2388]";
connectAttr "RefRN.phl[2389]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2390]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2391]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2392]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[2393]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2394]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[2395]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[2396]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[2397]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[2398]";
connectAttr "RefRN.phl[2399]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2400]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2401]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2402]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2403]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2404]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2405]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2406]" "lElbowControl.zooTrig1";
connectAttr "RefRN.phl[2407]" "likHandControl.zooTrig2";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[2408]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[2409]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[2410]";
connectAttr "RefRN.phl[2411]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2412]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2413]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2414]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2415]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2416]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2417]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2418]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2419]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2420]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2421]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2422]" "lElbowControl.zooTrig2";
connectAttr "RefRN.phl[2423]" "likHandControl.zooTrig3";
connectAttr "RefRN.phl[2424]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[2425]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[2426]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[2427]";
connectAttr "RefRN.phl[2428]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[2429]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2430]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2431]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[2432]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2433]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2434]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2435]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2436]" "lElbowControl.zooTrig3";
connectAttr "RefRN.phl[2437]" "likHandControl.zooTrig4";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[2438]";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[2439]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[2440]";
connectAttr "RefRN.phl[2441]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2442]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2443]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2444]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2445]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[2446]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[2447]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[2448]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[2449]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[2450]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[2451]";
connectAttr "RefRN.phl[2452]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2453]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2454]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2455]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2456]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[2457]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[2458]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[2459]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[2460]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[2461]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[2462]";
connectAttr "RefRN.phl[2463]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2464]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2465]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2466]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2467]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2468]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[2469]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[2470]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[2471]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[2472]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[2473]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[2474]";
connectAttr "RefRN.phl[2475]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2476]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2477]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2478]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[2479]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[2480]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[2481]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[2482]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[2483]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[2484]";
connectAttr "RefRN.phl[2485]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2486]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2487]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2488]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2489]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2490]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[2491]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[2492]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[2493]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[2494]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[2495]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[2496]";
connectAttr "RefRN.phl[2497]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2498]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2499]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2500]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2501]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[2502]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[2503]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[2504]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[2505]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[2506]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[2507]";
connectAttr "RefRN.phl[2508]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2509]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2510]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2511]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[2512]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[2513]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[2514]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[2515]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[2516]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[2517]";
connectAttr "RefRN.phl[2518]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2519]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2520]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2521]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2522]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2523]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[2524]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[2525]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[2526]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[2527]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[2528]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[2529]";
connectAttr "RefRN.phl[2530]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2531]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2532]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2533]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2534]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[2535]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[2536]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[2537]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[2538]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[2539]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[2540]";
connectAttr "RefRN.phl[2541]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2542]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2543]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2544]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[2545]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[2546]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[2547]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[2548]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[2549]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[2550]";
connectAttr "RefRN.phl[2551]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2552]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2553]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2554]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2555]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2556]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[2557]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[2558]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[2559]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[2560]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[2561]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[2562]";
connectAttr "RefRN.phl[2563]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2564]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2565]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2566]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2567]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[2568]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[2569]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[2570]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[2571]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[2572]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[2573]";
connectAttr "RefRN.phl[2574]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2575]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2576]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2577]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[2578]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[2579]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[2580]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[2581]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[2582]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[2583]";
connectAttr "RefRN.phl[2584]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2585]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2586]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2587]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2588]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2589]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[2590]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[2591]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[2592]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[2593]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[2594]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[2595]";
connectAttr "RefRN.phl[2596]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2597]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2598]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2599]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2600]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[2601]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[2602]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[2603]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[2604]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[2605]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[2606]";
connectAttr "RefRN.phl[2607]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2608]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "RefRN.phl[2609]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2610]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2611]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[2612]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[2613]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[2614]";
connectAttr "RefRN.phl[2615]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2616]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2617]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2618]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2619]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2620]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[2621]" "rElbowControl.zooTrig1";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[2622]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[2623]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[2624]";
connectAttr "RefRN.phl[2625]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2626]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2627]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2628]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2629]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2630]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2631]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2632]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2633]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2634]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2635]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[2636]" "rElbowControl.zooTrig2";
connectAttr "RefRN.phl[2637]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[2638]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[2639]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[2640]";
connectAttr "RefRN.phl[2641]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[2642]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2643]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2644]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[2645]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2646]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[2647]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2648]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2649]" "rElbowControl.zooTrig3";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[2650]";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[2651]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[2652]";
connectAttr "RefRN.phl[2653]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2654]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2655]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2656]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2657]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[2658]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[2659]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[2660]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[2661]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[2662]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[2663]";
connectAttr "RefRN.phl[2664]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2665]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2666]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2667]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[2668]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[2669]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[2670]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[2671]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[2672]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[2673]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[2674]";
connectAttr "RefRN.phl[2675]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2676]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2677]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2678]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[2679]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2680]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[2681]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[2682]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[2683]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[2684]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[2685]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[2686]";
connectAttr "RefRN.phl[2687]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2688]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2689]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2690]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[2691]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[2692]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[2693]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[2694]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[2695]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[2696]";
connectAttr "RefRN.phl[2697]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2698]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2699]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2700]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[2701]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2702]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[2703]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[2704]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[2705]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[2706]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[2707]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[2708]";
connectAttr "RefRN.phl[2709]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2710]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2711]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2712]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2713]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[2714]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[2715]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[2716]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[2717]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[2718]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[2719]";
connectAttr "RefRN.phl[2720]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2721]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2722]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2723]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[2724]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[2725]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[2726]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[2727]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[2728]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[2729]";
connectAttr "RefRN.phl[2730]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2731]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2732]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2733]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[2734]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2735]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[2736]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[2737]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[2738]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[2739]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[2740]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[2741]";
connectAttr "RefRN.phl[2742]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2743]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2744]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2745]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2746]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[2747]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[2748]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[2749]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[2750]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[2751]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[2752]";
connectAttr "RefRN.phl[2753]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2754]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2755]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2756]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[2757]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[2758]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[2759]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[2760]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[2761]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[2762]";
connectAttr "RefRN.phl[2763]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2764]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2765]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2766]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[2767]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2768]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[2769]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[2770]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[2771]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[2772]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[2773]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[2774]";
connectAttr "RefRN.phl[2775]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2776]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2777]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2778]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2779]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[2780]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[2781]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[2782]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[2783]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[2784]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[2785]";
connectAttr "RefRN.phl[2786]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2787]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2788]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2789]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[2790]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[2791]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[2792]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[2793]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[2794]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[2795]";
connectAttr "RefRN.phl[2796]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2797]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2798]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2799]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[2800]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2801]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[2802]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[2803]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[2804]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[2805]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[2806]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[2807]";
connectAttr "RefRN.phl[2808]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2809]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2810]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2811]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[2812]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[2813]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[2814]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[2815]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[2816]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[2817]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[2818]";
connectAttr "RefRN.phl[2819]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2820]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "RefRN.phl[2821]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2822]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.ctx" "RefRN.phl[2823]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.cty" "RefRN.phl[2824]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.ctz" "RefRN.phl[2825]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.crx" "RefRN.phl[2826]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.cry" "RefRN.phl[2827]";
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.crz" "RefRN.phl[2828]";
connectAttr "RefRN.phl[2829]" "Ref:prp_bullet_shoulder_parentConstraint1.crp";
connectAttr "RefRN.phl[2830]" "Ref:prp_bullet_shoulder_parentConstraint1.crt";
connectAttr "RefRN.phl[2831]" "Ref:prp_bullet_shoulder_parentConstraint1.cro";
connectAttr "RefRN.phl[2832]" "Ref:prp_bullet_shoulder_parentConstraint1.cjo";
connectAttr "RefRN.phl[2833]" "Ref:prp_bullet_shoulder_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.ctx" "RefRN.phl[2834]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.cty" "RefRN.phl[2835]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.ctz" "RefRN.phl[2836]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.crx" "RefRN.phl[2837]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.cry" "RefRN.phl[2838]";
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.crz" "RefRN.phl[2839]";
connectAttr "RefRN.phl[2840]" "Ref:prp_bullet_backUpper_parentConstraint1.crp";
connectAttr "RefRN.phl[2841]" "Ref:prp_bullet_backUpper_parentConstraint1.crt";
connectAttr "RefRN.phl[2842]" "Ref:prp_bullet_backUpper_parentConstraint1.cro";
connectAttr "RefRN.phl[2843]" "Ref:prp_bullet_backUpper_parentConstraint1.cjo";
connectAttr "RefRN.phl[2844]" "Ref:prp_bullet_backUpper_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.ctx" "RefRN.phl[2845]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.cty" "RefRN.phl[2846]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.ctz" "RefRN.phl[2847]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.crx" "RefRN.phl[2848]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.cry" "RefRN.phl[2849]";
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.crz" "RefRN.phl[2850]";
connectAttr "RefRN.phl[2851]" "Ref:prp_bullet_backLower_parentConstraint1.crp";
connectAttr "RefRN.phl[2852]" "Ref:prp_bullet_backLower_parentConstraint1.crt";
connectAttr "RefRN.phl[2853]" "Ref:prp_bullet_backLower_parentConstraint1.cro";
connectAttr "RefRN.phl[2854]" "Ref:prp_bullet_backLower_parentConstraint1.cjo";
connectAttr "RefRN.phl[2855]" "Ref:prp_bullet_backLower_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.ctx" "RefRN.phl[2856]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.cty" "RefRN.phl[2857]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.ctz" "RefRN.phl[2858]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.crx" "RefRN.phl[2859]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.cry" "RefRN.phl[2860]";
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.crz" "RefRN.phl[2861]";
connectAttr "RefRN.phl[2862]" "Ref:prp_bullet_chestUpper_parentConstraint1.crp";
connectAttr "RefRN.phl[2863]" "Ref:prp_bullet_chestUpper_parentConstraint1.crt";
connectAttr "RefRN.phl[2864]" "Ref:prp_bullet_chestUpper_parentConstraint1.cro";
connectAttr "RefRN.phl[2865]" "Ref:prp_bullet_chestUpper_parentConstraint1.cjo";
connectAttr "RefRN.phl[2866]" "Ref:prp_bullet_chestUpper_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_side_parentConstraint1.ctx" "RefRN.phl[2867]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.cty" "RefRN.phl[2868]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.ctz" "RefRN.phl[2869]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.crx" "RefRN.phl[2870]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.cry" "RefRN.phl[2871]";
connectAttr "Ref:prp_bullet_side_parentConstraint1.crz" "RefRN.phl[2872]";
connectAttr "RefRN.phl[2873]" "Ref:prp_bullet_side_parentConstraint1.crp";
connectAttr "RefRN.phl[2874]" "Ref:prp_bullet_side_parentConstraint1.crt";
connectAttr "RefRN.phl[2875]" "Ref:prp_bullet_side_parentConstraint1.cro";
connectAttr "RefRN.phl[2876]" "Ref:prp_bullet_side_parentConstraint1.cjo";
connectAttr "RefRN.phl[2877]" "Ref:prp_bullet_side_parentConstraint1.cpim";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.ctx" "RefRN.phl[2878]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.cty" "RefRN.phl[2879]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.ctz" "RefRN.phl[2880]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.crx" "RefRN.phl[2881]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.cry" "RefRN.phl[2882]";
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.crz" "RefRN.phl[2883]";
connectAttr "RefRN.phl[2884]" "Ref:prp_bullet_chestLower_parentConstraint1.crp";
connectAttr "RefRN.phl[2885]" "Ref:prp_bullet_chestLower_parentConstraint1.crt";
connectAttr "RefRN.phl[2886]" "Ref:prp_bullet_chestLower_parentConstraint1.cro";
connectAttr "RefRN.phl[2887]" "Ref:prp_bullet_chestLower_parentConstraint1.cjo";
connectAttr "RefRN.phl[2888]" "Ref:prp_bullet_chestLower_parentConstraint1.cpim"
		;
connectAttr "RefRN.phl[2889]" "lkneeControl.zooTrig1";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[2890]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[2891]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[2892]";
connectAttr "RefRN.phl[2893]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2894]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2895]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2896]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2897]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2898]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2899]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2900]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2901]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2902]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2903]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2904]" "lkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[2905]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[2906]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[2907]";
connectAttr "RefRN.phl[2908]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2909]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2910]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2911]" "lkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[2912]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[2913]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[2914]";
connectAttr "RefRN.phl[2915]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2916]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2917]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[2918]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[2919]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[2920]";
connectAttr "RefRN.phl[2921]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2922]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2923]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2924]" "rkneeControl.zooTrig1";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[2925]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[2926]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[2927]";
connectAttr "RefRN.phl[2928]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2929]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2930]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2931]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2932]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2933]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2934]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2935]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2936]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2937]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2938]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[2939]" "rkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[2940]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[2941]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[2942]";
connectAttr "RefRN.phl[2943]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2944]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2945]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[2946]" "rkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[2947]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[2948]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[2949]";
connectAttr "RefRN.phl[2950]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2951]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2952]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[2953]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[2954]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[2955]";
connectAttr "RefRN.phl[2956]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2957]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2958]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "Ref:prp_pack_parentConstraint1.ctx" "RefRN.phl[2959]";
connectAttr "Ref:prp_pack_parentConstraint1.cty" "RefRN.phl[2960]";
connectAttr "Ref:prp_pack_parentConstraint1.ctz" "RefRN.phl[2961]";
connectAttr "Ref:prp_pack_parentConstraint1.crx" "RefRN.phl[2962]";
connectAttr "Ref:prp_pack_parentConstraint1.cry" "RefRN.phl[2963]";
connectAttr "Ref:prp_pack_parentConstraint1.crz" "RefRN.phl[2964]";
connectAttr "RefRN.phl[2965]" "Ref:prp_pack_parentConstraint1.crp";
connectAttr "RefRN.phl[2966]" "Ref:prp_pack_parentConstraint1.crt";
connectAttr "RefRN.phl[2967]" "Ref:prp_pack_parentConstraint1.cro";
connectAttr "RefRN.phl[2968]" "Ref:prp_pack_parentConstraint1.cjo";
connectAttr "RefRN.phl[2969]" "Ref:prp_pack_parentConstraint1.cpim";
connectAttr "RefRN.phl[2970]" "RefRN.phl[2971]";
connectAttr "RefRN.phl[2972]" "RefRN.phl[2973]";
connectAttr "Ref:bip_spine_0FKcontrol.msg" "UpperbodyControl.zooWalkdown";
connectAttr "Ref:bip_spine_0FKcontrolvisExp.out[0]" "Ref:bip_spine_0FKcontrol.v"
		 -l on;
connectAttr "UpperbodyControl.msg" "Ref:bip_spine_0FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_1FKcontrol.msg" "Ref:bip_spine_0FKcontrol.zooWalkdown"
		;
connectAttr "Ref:bip_spine_1FKcontrolZeroGroup_translateY.o" "Ref:bip_spine_1FKcontrolZeroGroup.ty"
		;
connectAttr "Ref:bip_spine_0FKcontrol.msg" "Ref:bip_spine_1FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_2FKcontrol.msg" "Ref:bip_spine_1FKcontrol.zooWalkdown"
		;
connectAttr "Ref:bip_spine_2FKcontrolZeroGroup_translateY.o" "Ref:bip_spine_2FKcontrolZeroGroup.ty"
		;
connectAttr "Ref:bip_spine_1FKcontrol.msg" "Ref:bip_spine_2FKcontrol.zooWalkup";
connectAttr "Ref:bip_spine_3FKcontrol.msg" "Ref:bip_spine_2FKcontrol.zooWalkdown"
		;
connectAttr "Ref:bip_spine_3FKcontrolZeroGroup_translateY.o" "Ref:bip_spine_3FKcontrolZeroGroup.ty"
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
connectAttr "tweak3.pl[0].cp[0]" "SpineCurveShape.twl";
connectAttr "cluster9GroupId.id" "SpineCurveShape.iog.og[0].gid";
connectAttr "cluster9Set.mwc" "SpineCurveShape.iog.og[0].gco";
connectAttr "groupId6.id" "SpineCurveShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "SpineCurveShape.iog.og[1].gco";
connectAttr "cluster10GroupId.id" "SpineCurveShape.iog.og[2].gid";
connectAttr "cluster10Set.mwc" "SpineCurveShape.iog.og[2].gco";
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
connectAttr "Ref:bip_spine_3FKcontrol.msg" "lShoulderControl.zooWalkup";
connectAttr "Ref:bip_upperArm_LFK.msg" "lShoulderControl.zooWalkdown";
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
connectAttr "lShoulderControl.msg" "Ref:bip_upperArm_LFK.zooWalkup";
connectAttr "Ref:bip_lowerArm_LFK.msg" "Ref:bip_upperArm_LFK.zooWalkdown";
connectAttr "Ref:bip_upperArm_LFK.msg" "Ref:bip_lowerArm_LFK.zooWalkup";
connectAttr "Ref:bip_hand_LFK.msg" "Ref:bip_lowerArm_LFK.zooWalkdown";
connectAttr "lHandControl.msg" "Ref:bip_hand_LFK.zooWalkdown";
connectAttr "Ref:bip_lowerArm_LFK.msg" "Ref:bip_hand_LFK.zooWalkup";
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
connectAttr "Ref:bip_spine_3FKcontrol.t" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rp" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rpt" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.r" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_3FKcontrol.ro" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_3FKcontrol.s" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_3FKcontrol.pm" "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.tg[1].tpm"
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
connectAttr "Ref:bip_upperArm_RFK.msg" "rShoulderControl.zooWalkdown";
connectAttr "Ref:bip_spine_3FKcontrol.msg" "rShoulderControl.zooWalkup";
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
connectAttr "rShoulderControl.msg" "Ref:bip_upperArm_RFK.zooWalkup";
connectAttr "Ref:bip_lowerArm_RFK.msg" "Ref:bip_upperArm_RFK.zooWalkdown";
connectAttr "Ref:bip_upperArm_RFK.msg" "Ref:bip_lowerArm_RFK.zooWalkup";
connectAttr "Ref:bip_hand_RFK.msg" "Ref:bip_lowerArm_RFK.zooWalkdown";
connectAttr "Ref:bip_lowerArm_RFK.msg" "Ref:bip_hand_RFK.zooWalkup";
connectAttr "rHandControl.msg" "Ref:bip_hand_RFK.zooWalkdown";
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
connectAttr "Ref:bip_spine_3FKcontrol.t" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rp" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_3FKcontrol.rpt" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_3FKcontrol.r" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_3FKcontrol.ro" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_3FKcontrol.s" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_3FKcontrol.pm" "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.tg[1].tpm"
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
connectAttr "Ref:prp_bullet_chestUpperControl.msg" "Ref:prp_bullet_shoulderControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_backUpperControl.msg" "Ref:prp_bullet_shoulderControl.zooWalkup"
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
connectAttr "lHandControl.msg" "likHandControl.zooTrig1";
connectAttr "lHandControl.msg" "likHandControl.zooWalkdown";
connectAttr "lElbowControl.msg" "likHandControl.zooWalkleft";
connectAttr "lElbowControl.msg" "likHandControl.zooWalkright";
connectAttr "lHandControl.msg" "likHandControl.zooWalkup";
connectAttr "Ref:bip_upperArm_LFK.msg" "likHandControl.zooTrig5";
connectAttr "Ref:bip_lowerArm_LFK.msg" "likHandControl.zooTrig6";
connectAttr "Ref:bip_hand_LFK.msg" "likHandControl.zooTrig7";
connectAttr "main.msg" "likHandControl.zooTrig8";
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
connectAttr "Ref:bip_thumb_1_LControl.msg" "Ref:bip_thumb_0_LControl.zooWalkdown"
		;
connectAttr "lHandControl.msg" "Ref:bip_thumb_0_LControl.zooWalkup";
connectAttr "unitConversion4.o" "Ref:bip_thumb_1_LControlrollGroup.rx";
connectAttr "Ref:bip_thumb_0_LControl.msg" "Ref:bip_thumb_1_LControl.zooWalkup";
connectAttr "Ref:bip_thumb_2_LControl.msg" "Ref:bip_thumb_1_LControl.zooWalkdown"
		;
connectAttr "unitConversion5.o" "Ref:bip_thumb_2_LControlrollGroup.rx";
connectAttr "Ref:bip_thumb_1_LControl.msg" "Ref:bip_thumb_2_LControl.zooWalkup";
connectAttr "unitConversion6.o" "Ref:bip_index_0_LControlrollGroup.rx";
connectAttr "Ref:bip_index_1_LControl.msg" "Ref:bip_index_0_LControl.zooWalkdown"
		;
connectAttr "lHandControl.msg" "Ref:bip_index_0_LControl.zooWalkup";
connectAttr "unitConversion7.o" "Ref:bip_index_1_LControlrollGroup.rx";
connectAttr "Ref:bip_index_0_LControl.msg" "Ref:bip_index_1_LControl.zooWalkup";
connectAttr "Ref:bip_index_2_LControl.msg" "Ref:bip_index_1_LControl.zooWalkdown"
		;
connectAttr "unitConversion8.o" "Ref:bip_index_2_LControlrollGroup.rx";
connectAttr "Ref:bip_index_1_LControl.msg" "Ref:bip_index_2_LControl.zooWalkup";
connectAttr "unitConversion9.o" "Ref:bip_middle_0_LControlrollGroup.rx";
connectAttr "Ref:bip_middle_1_LControl.msg" "Ref:bip_middle_0_LControl.zooWalkdown"
		;
connectAttr "lHandControl.msg" "Ref:bip_middle_0_LControl.zooWalkup";
connectAttr "unitConversion10.o" "Ref:bip_middle_1_LControlrollGroup.rx";
connectAttr "Ref:bip_middle_0_LControl.msg" "Ref:bip_middle_1_LControl.zooWalkup"
		;
connectAttr "Ref:bip_middle_2_LControl.msg" "Ref:bip_middle_1_LControl.zooWalkdown"
		;
connectAttr "unitConversion11.o" "Ref:bip_middle_2_LControlrollGroup.rx";
connectAttr "Ref:bip_middle_1_LControl.msg" "Ref:bip_middle_2_LControl.zooWalkup"
		;
connectAttr "unitConversion12.o" "Ref:bip_ring_0_LControlrollGroup.rx";
connectAttr "Ref:bip_ring_1_LControl.msg" "Ref:bip_ring_0_LControl.zooWalkdown";
connectAttr "lHandControl.msg" "Ref:bip_ring_0_LControl.zooWalkup";
connectAttr "unitConversion13.o" "Ref:bip_ring_1_LControlrollGroup.rx";
connectAttr "Ref:bip_ring_0_LControl.msg" "Ref:bip_ring_1_LControl.zooWalkup";
connectAttr "Ref:bip_ring_2_LControl.msg" "Ref:bip_ring_1_LControl.zooWalkdown";
connectAttr "unitConversion14.o" "Ref:bip_ring_2_LControlrollGroup.rx";
connectAttr "Ref:bip_ring_1_LControl.msg" "Ref:bip_ring_2_LControl.zooWalkup";
connectAttr "unitConversion15.o" "Ref:bip_pinky_0_LControlrollGroup.rx";
connectAttr "Ref:bip_pinky_1_LControl.msg" "Ref:bip_pinky_0_LControl.zooWalkdown"
		;
connectAttr "lHandControl.msg" "Ref:bip_pinky_0_LControl.zooWalkup";
connectAttr "unitConversion16.o" "Ref:bip_pinky_1_LControlrollGroup.rx";
connectAttr "Ref:bip_pinky_0_LControl.msg" "Ref:bip_pinky_1_LControl.zooWalkup";
connectAttr "Ref:bip_pinky_2_LControl.msg" "Ref:bip_pinky_1_LControl.zooWalkdown"
		;
connectAttr "unitConversion17.o" "Ref:bip_pinky_2_LControlrollGroup.rx";
connectAttr "Ref:bip_pinky_1_LControl.msg" "Ref:bip_pinky_2_LControl.zooWalkup";
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
connectAttr "rikHandControl.msg" "rHandControl.zooWalkdown";
connectAttr "rikHandControl.msg" "rHandControl.zooWalkup";
connectAttr "unitConversion25.o" "Ref:bip_thumb_0_RControlrollGroup.rx";
connectAttr "Ref:bip_thumb_1_RControl.msg" "Ref:bip_thumb_0_RControl.zooWalkdown"
		;
connectAttr "rHandControl.msg" "Ref:bip_thumb_0_RControl.zooWalkup";
connectAttr "unitConversion26.o" "Ref:bip_thumb_1_RControlrollGroup.rx";
connectAttr "Ref:bip_thumb_0_RControl.msg" "Ref:bip_thumb_1_RControl.zooWalkup";
connectAttr "Ref:bip_thumb_2_RControl.msg" "Ref:bip_thumb_1_RControl.zooWalkdown"
		;
connectAttr "unitConversion27.o" "Ref:bip_thumb_2_RControlrollGroup.rx";
connectAttr "Ref:bip_thumb_1_RControl.msg" "Ref:bip_thumb_2_RControl.zooWalkup";
connectAttr "unitConversion28.o" "Ref:bip_index_0_RControlrollGroup.rx";
connectAttr "Ref:bip_index_1_RControl.msg" "Ref:bip_index_0_RControl.zooWalkdown"
		;
connectAttr "rHandControl.msg" "Ref:bip_index_0_RControl.zooWalkup";
connectAttr "unitConversion29.o" "Ref:bip_index_1_RControlrollGroup.rx";
connectAttr "Ref:bip_index_0_RControl.msg" "Ref:bip_index_1_RControl.zooWalkup";
connectAttr "Ref:bip_index_2_RControl.msg" "Ref:bip_index_1_RControl.zooWalkdown"
		;
connectAttr "unitConversion30.o" "Ref:bip_index_2_RControlrollGroup.rx";
connectAttr "Ref:bip_index_1_RControl.msg" "Ref:bip_index_2_RControl.zooWalkup";
connectAttr "unitConversion31.o" "Ref:bip_middle_0_RControlrollGroup.rx";
connectAttr "Ref:bip_middle_1_RControl.msg" "Ref:bip_middle_0_RControl.zooWalkdown"
		;
connectAttr "rHandControl.msg" "Ref:bip_middle_0_RControl.zooWalkup";
connectAttr "unitConversion32.o" "Ref:bip_middle_1_RControlrollGroup.rx";
connectAttr "Ref:bip_middle_0_RControl.msg" "Ref:bip_middle_1_RControl.zooWalkup"
		;
connectAttr "Ref:bip_middle_2_RControl.msg" "Ref:bip_middle_1_RControl.zooWalkdown"
		;
connectAttr "unitConversion33.o" "Ref:bip_middle_2_RControlrollGroup.rx";
connectAttr "Ref:bip_middle_1_RControl.msg" "Ref:bip_middle_2_RControl.zooWalkup"
		;
connectAttr "unitConversion34.o" "Ref:bip_ring_0_RControlrollGroup.rx";
connectAttr "Ref:bip_ring_1_RControl.msg" "Ref:bip_ring_0_RControl.zooWalkdown";
connectAttr "rHandControl.msg" "Ref:bip_ring_0_RControl.zooWalkup";
connectAttr "unitConversion35.o" "Ref:bip_ring_1_RControlrollGroup.rx";
connectAttr "Ref:bip_ring_0_RControl.msg" "Ref:bip_ring_1_RControl.zooWalkup";
connectAttr "Ref:bip_ring_2_RControl.msg" "Ref:bip_ring_1_RControl.zooWalkdown";
connectAttr "unitConversion36.o" "Ref:bip_ring_2_RControlrollGroup.rx";
connectAttr "Ref:bip_ring_1_RControl.msg" "Ref:bip_ring_2_RControl.zooWalkup";
connectAttr "unitConversion37.o" "Ref:bip_pinky_0_RControlrollGroup.rx";
connectAttr "Ref:bip_pinky_1_RControl.msg" "Ref:bip_pinky_0_RControl.zooWalkdown"
		;
connectAttr "rHandControl.msg" "Ref:bip_pinky_0_RControl.zooWalkup";
connectAttr "unitConversion38.o" "Ref:bip_pinky_1_RControlrollGroup.rx";
connectAttr "Ref:bip_pinky_0_RControl.msg" "Ref:bip_pinky_1_RControl.zooWalkup";
connectAttr "Ref:bip_pinky_2_RControl.msg" "Ref:bip_pinky_1_RControl.zooWalkdown"
		;
connectAttr "unitConversion39.o" "Ref:bip_pinky_2_RControlrollGroup.rx";
connectAttr "Ref:bip_pinky_1_RControl.msg" "Ref:bip_pinky_2_RControl.zooWalkup";
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
connectAttr "rkneeControl.msg" "rFootControl.zooWalkleft";
connectAttr "rkneeControl.msg" "rFootControl.zooWalkright";
connectAttr "rToeControl.msg" "rFootControl.zooWalkup";
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
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_backUpperControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.cty" "Ref:prp_bullet_backUpperControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_backUpperControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.crx" "Ref:prp_bullet_backUpperControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.cry" "Ref:prp_bullet_backUpperControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.crz" "Ref:prp_bullet_backUpperControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_backLowerControl.msg" "Ref:prp_bullet_backUpperControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_shoulderControl.msg" "Ref:prp_bullet_backUpperControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup.ro" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup.pim" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup.rp" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup.rpt" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.w0" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2ik.t" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2ik.rp" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2ik.rpt" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2ik.r" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2ik.ro" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2ik.s" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2ik.pm" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_2ik.jo" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.w1" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent3.out[0]" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_backUpperControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_backLowerControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.cty" "Ref:prp_bullet_backLowerControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_backLowerControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.crx" "Ref:prp_bullet_backLowerControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.cry" "Ref:prp_bullet_backLowerControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.crz" "Ref:prp_bullet_backLowerControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_sideControl.msg" "Ref:prp_bullet_backLowerControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_backUpperControl.msg" "Ref:prp_bullet_backLowerControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup.ro" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup.pim" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup.rp" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup.rpt" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.t" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.rp" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_1FKcontrol.rpt" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_1FKcontrol.r" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_1FKcontrol.ro" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_1FKcontrol.s" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_1FKcontrol.pm" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.w0" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_1ik.t" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_1ik.rp" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_1ik.rpt" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_1ik.r" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_1ik.ro" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_1ik.s" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_1ik.pm" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_1ik.jo" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.w1" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent4.out[0]" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_backLowerControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_sideControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.cty" "Ref:prp_bullet_sideControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_sideControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.crx" "Ref:prp_bullet_sideControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.cry" "Ref:prp_bullet_sideControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.crz" "Ref:prp_bullet_sideControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.msg" "Ref:prp_bullet_sideControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_backLowerControl.msg" "Ref:prp_bullet_sideControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_sideControlGroup.ro" "Ref:prp_bullet_sideControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_sideControlGroup.pim" "Ref:prp_bullet_sideControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_sideControlGroup.rp" "Ref:prp_bullet_sideControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_sideControlGroup.rpt" "Ref:prp_bullet_sideControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.t" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rp" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rpt" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.r" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_0FKcontrol.ro" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_0FKcontrol.s" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_0FKcontrol.pm" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.w0" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_0ik.t" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_0ik.rp" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_0ik.rpt" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_0ik.r" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_0ik.ro" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_0ik.s" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_0ik.pm" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_0ik.jo" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_sideControlGroup_parentConstraint1.w1" "Ref:prp_bullet_sideControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent5.out[0]" "Ref:prp_bullet_sideControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_sideControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_chestLowerControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.cty" "Ref:prp_bullet_chestLowerControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_chestLowerControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.crx" "Ref:prp_bullet_chestLowerControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.cry" "Ref:prp_bullet_chestLowerControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.crz" "Ref:prp_bullet_chestLowerControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.msg" "Ref:prp_bullet_chestLowerControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_sideControl.msg" "Ref:prp_bullet_chestLowerControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup.ro" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup.pim" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup.rp" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup.rpt" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.t" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rp" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_0FKcontrol.rpt" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_0FKcontrol.r" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_0FKcontrol.ro" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_0FKcontrol.s" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_0FKcontrol.pm" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.w0" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_0ik.t" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_0ik.rp" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_0ik.rpt" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_0ik.r" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_0ik.ro" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_0ik.s" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_0ik.pm" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_0ik.jo" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.w1" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent6.out[0]" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_chestLowerControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.ctx" "Ref:prp_bullet_chestUpperControlGroup.tx"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.cty" "Ref:prp_bullet_chestUpperControlGroup.ty"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.ctz" "Ref:prp_bullet_chestUpperControlGroup.tz"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.crx" "Ref:prp_bullet_chestUpperControlGroup.rx"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.cry" "Ref:prp_bullet_chestUpperControlGroup.ry"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.crz" "Ref:prp_bullet_chestUpperControlGroup.rz"
		;
connectAttr "Ref:prp_bullet_shoulderControl.msg" "Ref:prp_bullet_chestUpperControl.zooWalkup"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.msg" "Ref:prp_bullet_chestUpperControl.zooWalkdown"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup.ro" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup.pim" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup.rp" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup.rpt" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.t" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rp" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_spine_2FKcontrol.rpt" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_spine_2FKcontrol.r" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_spine_2FKcontrol.ro" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_spine_2FKcontrol.s" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_spine_2FKcontrol.pm" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.w0" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_spine_2ik.t" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_spine_2ik.rp" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_spine_2ik.rpt" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_spine_2ik.r" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_spine_2ik.ro" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_spine_2ik.s" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_spine_2ik.pm" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_spine_2ik.jo" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.w1" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent7.out[0]" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.w0"
		;
connectAttr "main.spineIKFK" "Ref:prp_bullet_chestUpperControlGroup_parentConstraint1.w1"
		;
connectAttr "UpperbodyControl.t" "Ref:bip_pelvis_pointConstraint1.tg[0].tt";
connectAttr "UpperbodyControl.rp" "Ref:bip_pelvis_pointConstraint1.tg[0].trp";
connectAttr "UpperbodyControl.rpt" "Ref:bip_pelvis_pointConstraint1.tg[0].trt";
connectAttr "UpperbodyControl.pm" "Ref:bip_pelvis_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_pelvis_pointConstraint1.w0" "Ref:bip_pelvis_pointConstraint1.tg[0].tw"
		;
connectAttr "PelvisControl.r" "Ref:bip_pelvis_orientConstraint1.tg[0].tr";
connectAttr "PelvisControl.ro" "Ref:bip_pelvis_orientConstraint1.tg[0].tro";
connectAttr "PelvisControl.pm" "Ref:bip_pelvis_orientConstraint1.tg[0].tpm";
connectAttr "Ref:bip_pelvis_orientConstraint1.w0" "Ref:bip_pelvis_orientConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_packControl.t" "Ref:prp_pack_parentConstraint1.tg[0].tt";
connectAttr "Ref:prp_packControl.rp" "Ref:prp_pack_parentConstraint1.tg[0].trp";
connectAttr "Ref:prp_packControl.rpt" "Ref:prp_pack_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_packControl.r" "Ref:prp_pack_parentConstraint1.tg[0].tr";
connectAttr "Ref:prp_packControl.ro" "Ref:prp_pack_parentConstraint1.tg[0].tro";
connectAttr "Ref:prp_packControl.s" "Ref:prp_pack_parentConstraint1.tg[0].ts";
connectAttr "Ref:prp_packControl.pm" "Ref:prp_pack_parentConstraint1.tg[0].tpm";
connectAttr "Ref:prp_pack_parentConstraint1.w0" "Ref:prp_pack_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_bullet_chestLowerControl.t" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.rp" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.rpt" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.r" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.ro" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.s" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_chestLowerControl.pm" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_chestLower_parentConstraint1.w0" "Ref:prp_bullet_chestLower_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_bullet_sideControl.t" "Ref:prp_bullet_side_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_sideControl.rp" "Ref:prp_bullet_side_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_sideControl.rpt" "Ref:prp_bullet_side_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_sideControl.r" "Ref:prp_bullet_side_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_sideControl.ro" "Ref:prp_bullet_side_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_sideControl.s" "Ref:prp_bullet_side_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_sideControl.pm" "Ref:prp_bullet_side_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_side_parentConstraint1.w0" "Ref:prp_bullet_side_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Ref:prp_bullet_chestUpperControl.t" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.rp" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.rpt" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.r" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.ro" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.s" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_chestUpperControl.pm" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_chestUpper_parentConstraint1.w0" "Ref:prp_bullet_chestUpper_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_bullet_backLowerControl.t" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_backLowerControl.rp" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_backLowerControl.rpt" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_backLowerControl.r" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_backLowerControl.ro" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_backLowerControl.s" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_backLowerControl.pm" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_backLower_parentConstraint1.w0" "Ref:prp_bullet_backLower_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Ref:prp_bullet_backUpperControl.t" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_backUpperControl.rp" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_backUpperControl.rpt" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_backUpperControl.r" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_backUpperControl.ro" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_backUpperControl.s" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_backUpperControl.pm" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_backUpper_parentConstraint1.w0" "Ref:prp_bullet_backUpper_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Ref:prp_bullet_shoulderControl.t" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_bullet_shoulderControl.rp" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_bullet_shoulderControl.rpt" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_bullet_shoulderControl.r" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_bullet_shoulderControl.ro" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_bullet_shoulderControl.s" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_bullet_shoulderControl.pm" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_bullet_shoulder_parentConstraint1.w0" "Ref:prp_bullet_shoulder_parentConstraint1.tg[0].tw"
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
connectAttr "RefRN.phl[1525]" "RefRN.phl[1524]";
connectAttr "main.main" "RefRN.phl[1526]";
connectAttr "plotted.plotted" "RefRN.phl[1527]";
connectAttr "UpperbodyControl.upperBodyControl" "RefRN.phl[1528]";
connectAttr "PelvisControl.pelvisControl" "RefRN.phl[1529]";
connectAttr "Ref:bip_spine_0FKcontrol.fkSpine0" "RefRN.phl[1530]";
connectAttr "Ref:bip_spine_1FKcontrol.fkSpine1" "RefRN.phl[1531]";
connectAttr "Ref:bip_spine_2FKcontrol.fkSpine2" "RefRN.phl[1532]";
connectAttr "Ref:bip_spine_3FKcontrol.fkSpine3" "RefRN.phl[1533]";
connectAttr "Ref:bip_spine_0ik.ikSpine0" "RefRN.phl[1534]";
connectAttr "Ref:bip_spine_1ik.ikSpine1" "RefRN.phl[1535]";
connectAttr "Ref:bip_spine_2ik.ikSpine2" "RefRN.phl[1536]";
connectAttr "Ref:bip_spine_3ik.ikSpine3" "RefRN.phl[1537]";
connectAttr "chestParent.chestParent" "RefRN.phl[1538]";
connectAttr "neckControl.neckControl" "RefRN.phl[1539]";
connectAttr "headControl.headControl" "RefRN.phl[1540]";
connectAttr "lShoulderControl.lFKshoulderControl" "RefRN.phl[1541]";
connectAttr "Ref:bip_upperArm_LFK.lFKshoulder" "RefRN.phl[1542]";
connectAttr "Ref:bip_lowerArm_LFK.lFKelbow" "RefRN.phl[1543]";
connectAttr "Ref:bip_hand_LFK.lFKwrist" "RefRN.phl[1544]";
connectAttr "Ref:bip_upperArm_LIK.lIKshoulder" "RefRN.phl[1545]";
connectAttr "Ref:bip_lowerArm_LIK.lIKelbow" "RefRN.phl[1546]";
connectAttr "Ref:bip_hand_LIK.lIKwrist" "RefRN.phl[1547]";
connectAttr "likHandControl.lIKcontrol" "RefRN.phl[1548]";
connectAttr "likHandControlWeaponGroup.lWeaponAttach" "RefRN.phl[1549]";
connectAttr "lElbowControl.lElbowControl" "RefRN.phl[1550]";
connectAttr "Ref:bip_hip_LIK.lIKupLeg" "RefRN.phl[1551]";
connectAttr "Ref:bip_knee_LIK.lIKknee" "RefRN.phl[1552]";
connectAttr "Ref:bip_foot_LIK.lIKankle" "RefRN.phl[1553]";
connectAttr "Ref:bip_toe_LIK.lIKtoe" "RefRN.phl[1554]";
connectAttr "Ref:bip_toeEnd_LIK.lIKtoeEnd" "RefRN.phl[1555]";
connectAttr "Ref:bip_hip_LFK.lFKupLeg" "RefRN.phl[1556]";
connectAttr "Ref:bip_knee_LFK.lFKknee" "RefRN.phl[1557]";
connectAttr "Ref:bip_foot_LFK.lFKankle" "RefRN.phl[1558]";
connectAttr "Ref:bip_toe_LFK.lFKtoe" "RefRN.phl[1559]";
connectAttr "lkneeControl.lKneeControl" "RefRN.phl[1560]";
connectAttr "lFootControl.lFootControl" "RefRN.phl[1561]";
connectAttr "lToeControl.lToeControl" "RefRN.phl[1562]";
connectAttr "rShoulderControl.rFKshoulderControl" "RefRN.phl[1563]";
connectAttr "Ref:bip_upperArm_RFK.rFKshoulder" "RefRN.phl[1564]";
connectAttr "Ref:bip_lowerArm_RFK.rFKelbow" "RefRN.phl[1565]";
connectAttr "Ref:bip_hand_RFK.rFKwrist" "RefRN.phl[1566]";
connectAttr "Ref:bip_upperArm_RIK.rIKshoulder" "RefRN.phl[1567]";
connectAttr "Ref:bip_lowerArm_RIK.rIKelbow" "RefRN.phl[1568]";
connectAttr "Ref:bip_hand_RIK.rIKwrist" "RefRN.phl[1569]";
connectAttr "rikHandControl.rIKcontrol" "RefRN.phl[1570]";
connectAttr "rikHandControlWeaponGroup.rWeaponAttach" "RefRN.phl[1571]";
connectAttr "rElbowControl.rElbowControl" "RefRN.phl[1572]";
connectAttr "Ref:bip_hip_RIK.rIKupLeg" "RefRN.phl[1573]";
connectAttr "Ref:bip_knee_RIK.rIKknee" "RefRN.phl[1574]";
connectAttr "Ref:bip_foot_RIK.rIKankle" "RefRN.phl[1575]";
connectAttr "Ref:bip_toe_RIK.rIKtoe" "RefRN.phl[1576]";
connectAttr "Ref:bip_toeEnd_RIK.rIKtoeEnd" "RefRN.phl[1577]";
connectAttr "Ref:bip_hip_RFK.rFKupLeg" "RefRN.phl[1578]";
connectAttr "Ref:bip_knee_RFK.rFKknee" "RefRN.phl[1579]";
connectAttr "Ref:bip_foot_RFK.rFKankle" "RefRN.phl[1580]";
connectAttr "Ref:bip_toe_RFK.rFKtoe" "RefRN.phl[1581]";
connectAttr "rkneeControl.rKneeControl" "RefRN.phl[1582]";
connectAttr "rFootControl.rFootControl" "RefRN.phl[1583]";
connectAttr "rToeControl.rToeControl" "RefRN.phl[1584]";
connectAttr "RefRN.phl[2305]" "RefRN.phl[2255]";
connectAttr "RefRN.phl[2257]" "RefRN.phl[2258]";
connectAttr "RefRN.phl[2307]" "RefRN.phl[2265]";
connectAttr "RefRN.phl[2266]" "RefRN.phl[2267]";
connectAttr "RefRN.phl[2306]" "RefRN.phl[2274]";
connectAttr "RefRN.phl[2275]" "RefRN.phl[2276]";
connectAttr "RefRN.phl[2277]" "RefRN.phl[2278]";
connectAttr "RefRN.phl[2310]" "RefRN.phl[2286]";
connectAttr "RefRN.phl[2287]" "RefRN.phl[2288]";
connectAttr "RefRN.phl[2289]" "RefRN.phl[2290]";
connectAttr "RefRN.phl[2309]" "RefRN.phl[2298]";
connectAttr "RefRN.phl[2299]" "RefRN.phl[2300]";
connectAttr "RefRN.phl[2301]" "RefRN.phl[2302]";
connectAttr "RefRN.phl[2303]" "RefRN.phl[2304]";
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
connectAttr "Ref:prp_packControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_shoulderControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_backUpperControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_backLowerControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_sideControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_chestLowerControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_bullet_chestUpperControl.iog" "plotted.dsm" -na;
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "lHandControl.iog" "plotted.dsm" -na;
connectAttr "hands_L.msg" "plotted.dnsm" -na;
connectAttr "hand_R.msg" "plotted.dnsm" -na;
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
connectAttr "cluster9GroupParts.og" "ikChestClusterCluster.ip[0].ig";
connectAttr "cluster9GroupId.id" "ikChestClusterCluster.ip[0].gi";
connectAttr "ikChestCluster.wm" "ikChestClusterCluster.ma";
connectAttr "ikChestClusterShape.x" "ikChestClusterCluster.x";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "cluster9GroupId.msg" "cluster9Set.gn" -na;
connectAttr "SpineCurveShape.iog.og[0]" "cluster9Set.dsm" -na;
connectAttr "ikChestClusterCluster.msg" "cluster9Set.ub[0]";
connectAttr "tweak3.og[0]" "cluster9GroupParts.ig";
connectAttr "cluster9GroupId.id" "cluster9GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "SpineCurveShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "SpineCurveShapeOrig.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "cluster10GroupParts.og" "ikPelvisClusterCluster.ip[0].ig";
connectAttr "cluster10GroupId.id" "ikPelvisClusterCluster.ip[0].gi";
connectAttr "ikPelvisCluster.wm" "ikPelvisClusterCluster.ma";
connectAttr "ikPelvisClusterShape.x" "ikPelvisClusterCluster.x";
connectAttr "cluster10GroupId.msg" "cluster10Set.gn" -na;
connectAttr "SpineCurveShape.iog.og[2]" "cluster10Set.dsm" -na;
connectAttr "ikPelvisClusterCluster.msg" "cluster10Set.ub[0]";
connectAttr "ikChestClusterCluster.og[0]" "cluster10GroupParts.ig";
connectAttr "cluster10GroupId.id" "cluster10GroupParts.gi";
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
connectAttr "main.spineIKFK" "fkParent3.in[0]";
connectAttr ":time1.o" "fkParent3.tim";
connectAttr "main.spineIKFK" "fkParent4.in[0]";
connectAttr ":time1.o" "fkParent4.tim";
connectAttr "main.spineIKFK" "fkParent5.in[0]";
connectAttr ":time1.o" "fkParent5.tim";
connectAttr "main.spineIKFK" "fkParent6.in[0]";
connectAttr ":time1.o" "fkParent6.tim";
connectAttr "main.spineIKFK" "fkParent7.in[0]";
connectAttr ":time1.o" "fkParent7.tim";
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_1FKcontrolZeroGroup_translateY.i"
		;
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_2FKcontrolZeroGroup_translateY.i"
		;
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_3FKcontrolZeroGroup_translateY.i"
		;
connectAttr "Ref:bip_thumb_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "hands_L.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "hand_R.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "hand_R.dsm" -na;
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
connectAttr "RFoot.msg" "Heavy.dnsm" -na;
connectAttr "RKnee.msg" "Heavy.dnsm" -na;
connectAttr "LKnee.msg" "Heavy.dnsm" -na;
connectAttr "LFoot.msg" "Heavy.dnsm" -na;
connectAttr "RToe.msg" "Heavy.dnsm" -na;
connectAttr "LToe.msg" "Heavy.dnsm" -na;
connectAttr "main1.msg" "Heavy.dnsm" -na;
connectAttr "hips_only.msg" "Heavy.dnsm" -na;
connectAttr "Main_Hip.msg" "Heavy.dnsm" -na;
connectAttr "spine0.msg" "Heavy.dnsm" -na;
connectAttr "spine1.msg" "Heavy.dnsm" -na;
connectAttr "spine2.msg" "Heavy.dnsm" -na;
connectAttr "spine3.msg" "Heavy.dnsm" -na;
connectAttr "neck.msg" "Heavy.dnsm" -na;
connectAttr "Head.msg" "Heavy.dnsm" -na;
connectAttr "shoulder.msg" "Heavy.dnsm" -na;
connectAttr "rShoulderControl_picker.msg" "Heavy.dnsm" -na;
connectAttr "elbow.msg" "Heavy.dnsm" -na;
connectAttr "rElbowControl_picker.msg" "Heavy.dnsm" -na;
connectAttr "R_rotHand.msg" "Heavy.dnsm" -na;
connectAttr "R_tranHand.msg" "Heavy.dnsm" -na;
connectAttr "L_rotHand.msg" "Heavy.dnsm" -na;
connectAttr "L_tranHand.msg" "Heavy.dnsm" -na;
connectAttr "picker1.msg" "Heavy.dnsm" -na;
connectAttr "Ref:bip_pinky_0_LControl_picker.msg" "Heavy.dnsm" -na;
connectAttr "Ref:bip_pinky_1_LControl_picker.msg" "Heavy.dnsm" -na;
connectAttr "Ref:bip_pinky_2_LControl_picker.msg" "Heavy.dnsm" -na;
connectAttr "picker5.msg" "Heavy.dnsm" -na;
connectAttr "picker6.msg" "Heavy.dnsm" -na;
connectAttr "picker7.msg" "Heavy.dnsm" -na;
connectAttr "picker8.msg" "Heavy.dnsm" -na;
connectAttr "picker9.msg" "Heavy.dnsm" -na;
connectAttr "picker10.msg" "Heavy.dnsm" -na;
connectAttr "picker11.msg" "Heavy.dnsm" -na;
connectAttr "picker12.msg" "Heavy.dnsm" -na;
connectAttr "picker13.msg" "Heavy.dnsm" -na;
connectAttr "picker14.msg" "Heavy.dnsm" -na;
connectAttr "picker15.msg" "Heavy.dnsm" -na;
connectAttr "picker16.msg" "Heavy.dnsm" -na;
connectAttr "picker17.msg" "Heavy.dnsm" -na;
connectAttr "picker18.msg" "Heavy.dnsm" -na;
connectAttr "picker19.msg" "Heavy.dnsm" -na;
connectAttr "picker20.msg" "Heavy.dnsm" -na;
connectAttr "picker21.msg" "Heavy.dnsm" -na;
connectAttr "picker22.msg" "Heavy.dnsm" -na;
connectAttr "picker23.msg" "Heavy.dnsm" -na;
connectAttr "picker24.msg" "Heavy.dnsm" -na;
connectAttr "picker25.msg" "Heavy.dnsm" -na;
connectAttr "picker26.msg" "Heavy.dnsm" -na;
connectAttr "picker27.msg" "Heavy.dnsm" -na;
connectAttr "picker28.msg" "Heavy.dnsm" -na;
connectAttr "picker29.msg" "Heavy.dnsm" -na;
connectAttr "picker30.msg" "Heavy.dnsm" -na;
connectAttr "picker31.msg" "Heavy.dnsm" -na;
connectAttr "picker32.msg" "Heavy.dnsm" -na;
connectAttr "picker33.msg" "Heavy.dnsm" -na;
connectAttr "picker34.msg" "Heavy.dnsm" -na;
connectAttr "picker35.msg" "Heavy.dnsm" -na;
connectAttr "picker36.msg" "Heavy.dnsm" -na;
connectAttr "picker37.msg" "Heavy.dnsm" -na;
connectAttr "picker38.msg" "Heavy.dnsm" -na;
connectAttr "picker39.msg" "Heavy.dnsm" -na;
connectAttr "picker40.msg" "Heavy.dnsm" -na;
connectAttr "picker41.msg" "Heavy.dnsm" -na;
connectAttr "picker42.msg" "Heavy.dnsm" -na;
connectAttr "picker43.msg" "Heavy.dnsm" -na;
connectAttr "picker44.msg" "Heavy.dnsm" -na;
connectAttr "picker45.msg" "Heavy.dnsm" -na;
connectAttr "picker46.msg" "Heavy.dnsm" -na;
connectAttr "rFootControl.iog" "RFoot.dsm" -na;
connectAttr "rkneeControl.iog" "RKnee.dsm" -na;
connectAttr "lkneeControl.iog" "LKnee.dsm" -na;
connectAttr "lFootControl.iog" "LFoot.dsm" -na;
connectAttr "rToeControl.iog" "RToe.dsm" -na;
connectAttr "lToeControl.iog" "LToe.dsm" -na;
connectAttr "main.iog" "main1.dsm" -na;
connectAttr "PelvisControl.iog" "hips_only.dsm" -na;
connectAttr "UpperbodyControl.iog" "Main_Hip.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "spine0.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "spine1.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "spine2.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "spine3.dsm" -na;
connectAttr "neckControl.iog" "neck.dsm" -na;
connectAttr "headControl.iog" "Head.dsm" -na;
connectAttr "lShoulderControl.iog" "shoulder.dsm" -na;
connectAttr "rShoulderControl.iog" "rShoulderControl_picker.dsm" -na;
connectAttr "lElbowControl.iog" "elbow.dsm" -na;
connectAttr "rElbowControl.iog" "rElbowControl_picker.dsm" -na;
connectAttr "rHandControl.iog" "R_rotHand.dsm" -na;
connectAttr "rikHandControl.iog" "R_tranHand.dsm" -na;
connectAttr "lHandControl.iog" "L_rotHand.dsm" -na;
connectAttr "likHandControl.iog" "L_tranHand.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "Ref:bip_pinky_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "Ref:bip_pinky_1_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "Ref:bip_pinky_2_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker5.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker5.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker5.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker6.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker7.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker8.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker9.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker9.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker9.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker10.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker11.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker12.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker13.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker13.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker13.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker14.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker15.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker16.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker17.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker17.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker17.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker18.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker19.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker20.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker21.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker21.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker21.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker22.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker23.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker24.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker25.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker25.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker25.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker27.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker28.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker29.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker29.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker29.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker30.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker31.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker32.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker33.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker33.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker33.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker34.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker35.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker36.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker37.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker37.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker37.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker39.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker40.dsm" -na;
connectAttr "Ref:prp_bullet_chestLowerControl.iog" "picker41.dsm" -na;
connectAttr "Ref:prp_bullet_chestUpperControl.iog" "picker42.dsm" -na;
connectAttr "Ref:prp_bullet_shoulderControl.iog" "picker43.dsm" -na;
connectAttr "Ref:prp_bullet_backUpperControl.iog" "picker44.dsm" -na;
connectAttr "Ref:prp_bullet_backLowerControl.iog" "picker45.dsm" -na;
connectAttr "Ref:prp_bullet_sideControl.iog" "picker46.dsm" -na;
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
connectAttr "Ref:prp_packControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_bullet_shoulderControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Ref:prp_bullet_backUpperControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Ref:prp_bullet_backLowerControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Ref:prp_bullet_sideControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_bullet_chestLowerControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Ref:prp_bullet_chestUpperControlShape.iog" ":initialShadingGroup.dsm"
		 -na;
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
// End of heavy_rig.ma
