//Maya ASCII 2012 scene
//Name: medic_rig.ma
//Last modified: Tue, Mar 10, 2015 07:26:07 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "medic_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "medic_reference.ma";
requires maya "2012";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012";
fileInfo "cutIdentifier" "201109261253-811691";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 46.800548206095051 75.229534168076199 221.38711632265156 ;
	setAttr ".r" -type "double3" -15.338352729396538 -348.20000000026675 4.0615239586794048e-016 ;
	setAttr ".rp" -type "double3" 0 -7.1054273576010019e-015 0 ;
	setAttr ".rpt" -type "double3" -1.6143127721462163e-014 1.9081353318297301e-015 
		-1.0588615725210414e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 251.01832062409952;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1102230246251565e-016 40.050773127957711 5.7611010124367983 ;
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
	setAttr ".t" -type "double3" 1501.5538615018602 65.016393718226283 -7.4191780513521195 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 15.629950810192923;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 1 1 no 
		2 0 2
		9 0 0.76536686473017945 1.5307337294603589 2.2961005941905386 3.0614674589207183
		 3.8268343236508975 4.5922011883810772 5.3575680531112564 6.1229349178414356
		
		18
		23 -2.2999999999999998e-011 -2.8165946137914677e-015
		16.263455967290593 -2.2999999999999998e-011 16.263455967290593
		6.5153232201714539e-015 -2.2999999999999998e-011 23
		-16.263455967290589 -2.2999999999999998e-011 16.263455967290597
		-23 -2.2999999999999998e-011 6.3837823915946501e-015
		-16.2634559672906 -2.2999999999999998e-011 -16.263455967290586
		-1.1622349133447174e-014 -2.2999999999999998e-011 -23
		16.263455967290582 -2.2999999999999998e-011 -16.263455967290604
		23 -2.2999999999999998e-011 -1.8137672353618628e-014
		23 -2.2999999999999998e-011 -2.8165946137914677e-015
		16.263455967290593 2.2999999999999998e-011 16.263455967290593
		6.5153232201714539e-015 2.2999999999999998e-011 23
		-16.263455967290589 2.2999999999999998e-011 16.263455967290597
		-23 2.2999999999999998e-011 9.2003770053861178e-015
		-16.2634559672906 2.2999999999999998e-011 -16.263455967290586
		-1.1622349133447174e-014 2.2999999999999998e-011 -23
		16.263455967290582 2.2999999999999998e-011 -16.263455967290604
		23 -2.2999999999999998e-011 -1.8137672353618628e-014
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "UpperbodyControl" -p "main";
	addAttr -ci true -sn "upperBodyControl" -ln "upperBodyControl" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 48.466883614744376 0 ;
	setAttr ".sp" -type "double3" 0 48.466883614744376 0 ;
	setAttr ".hdl" -type "double3" 0 48.466883614744376 0 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 0.25 0.25 0.25
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		8.6197278738034626 47.091883614744376 -8.619727873803475
		12.190136063098267 47.091883614744376 1.3065817317366659e-015
		8.6197278738034662 47.091883614744376 8.6197278738034662
		3.7995192215606524e-015 47.091883614744376 12.190136063098267
		-8.6197278738034662 47.091883614744376 8.6197278738034697
		-12.190136063098269 47.091883614744376 4.0206388665072821e-015
		-8.6197278738034679 47.091883614744376 -8.6197278738034626
		-6.5473212075079149e-015 47.091883614744376 -12.190136063098267
		8.6197278738034626 47.091883614744376 -8.619727873803475
		12.190136063098267 47.091883614744376 1.3065817317366659e-015
		8.6197278738034662 47.091883614744376 8.6197278738034662
		8.6197278738034626 48.00855028141104 -8.619727873803475
		12.190136063098267 48.00855028141104 1.3627095229535249e-015
		8.6197278738034662 48.00855028141104 8.6197278738034662
		3.7995192215606524e-015 48.00855028141104 12.190136063098267
		-8.6197278738034662 48.00855028141104 8.6197278738034697
		-12.190136063098269 48.00855028141104 4.076766657724141e-015
		-8.6197278738034679 48.00855028141104 -8.6197278738034626
		-6.5473212075079149e-015 48.00855028141104 -12.190136063098267
		8.6197278738034626 48.00855028141104 -8.619727873803475
		12.190136063098267 48.00855028141104 1.3627095229535249e-015
		8.6197278738034662 48.00855028141104 8.6197278738034662
		8.6197278738034626 48.925216948077711 -8.619727873803475
		12.190136063098267 48.925216948077711 1.4188373141703839e-015
		8.6197278738034662 48.925216948077711 8.6197278738034662
		3.7995192215606524e-015 48.925216948077711 12.190136063098267
		-8.6197278738034662 48.925216948077711 8.6197278738034697
		-12.190136063098269 48.925216948077711 4.132894448941e-015
		-8.6197278738034679 48.925216948077711 -8.6197278738034626
		-6.5473212075079149e-015 48.925216948077711 -12.190136063098267
		8.6197278738034626 48.925216948077711 -8.619727873803475
		12.190136063098267 48.925216948077711 1.4188373141703839e-015
		8.6197278738034662 48.925216948077711 8.6197278738034662
		8.6197278738034626 49.841883614744376 -8.619727873803475
		12.190136063098267 49.841883614744376 1.4749651053872428e-015
		8.6197278738034662 49.841883614744376 8.6197278738034662
		3.7995192215606524e-015 49.841883614744376 12.190136063098267
		-8.6197278738034662 49.841883614744376 8.6197278738034697
		-12.190136063098269 49.841883614744376 4.1890222401578589e-015
		-8.6197278738034679 49.841883614744376 -8.6197278738034626
		-6.5473212075079149e-015 49.841883614744376 -12.190136063098267
		8.6197278738034626 49.841883614744376 -8.619727873803475
		12.190136063098267 49.841883614744376 1.4749651053872428e-015
		8.6197278738034662 49.841883614744376 8.6197278738034662
		
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
	setAttr ".t" -type "double3" 0 48.466883614744376 0 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 1.5 1.5 1.5
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-2.9703818949968185e-015 -5.8124402904621517 -11.624880580924305
		11.624880580924305 -5.8124402904621526 -1.0676926966369703e-015
		1.5722091363886489e-015 -5.8124402904621535 11.624880580924305
		-11.624880580924305 -5.8124402904621526 1.6465185734916597e-015
		-2.9703818949968185e-015 -5.8124402904621517 -11.624880580924305
		11.624880580924305 -5.8124402904621526 -1.0676926966369703e-015
		1.5722091363886489e-015 -5.8124402904621535 11.624880580924305
		-2.9703818949968185e-015 -1.9374800968207169 -11.624880580924305
		11.624880580924305 -1.9374800968207175 -8.3042765293986588e-016
		1.5722091363886489e-015 -1.9374800968207182 11.624880580924305
		-11.624880580924305 -1.9374800968207175 1.8837836171887642e-015
		-2.9703818949968185e-015 -1.9374800968207169 -11.624880580924305
		11.624880580924305 -1.9374800968207175 -8.3042765293986588e-016
		1.5722091363886489e-015 -1.9374800968207182 11.624880580924305
		-2.9703818949968185e-015 1.9374800968207182 -11.624880580924305
		11.624880580924305 1.9374800968207175 -5.9316260924276126e-016
		1.5722091363886489e-015 1.9374800968207169 11.624880580924305
		-11.624880580924305 1.9374800968207175 2.121048660885869e-015
		-2.9703818949968185e-015 1.9374800968207182 -11.624880580924305
		11.624880580924305 1.9374800968207175 -5.9316260924276126e-016
		1.5722091363886489e-015 1.9374800968207169 11.624880580924305
		-2.9703818949968185e-015 5.8124402904621535 -11.624880580924305
		11.624880580924305 5.8124402904621526 -3.5589756554565678e-016
		1.5722091363886489e-015 5.8124402904621517 11.624880580924305
		-11.624880580924305 5.8124402904621526 2.3583137045829734e-015
		-2.9703818949968185e-015 5.8124402904621535 -11.624880580924305
		11.624880580924305 5.8124402904621526 -3.5589756554565678e-016
		1.5722091363886489e-015 5.8124402904621517 11.624880580924305
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 4.2690535647186891 -0.30427148361883755 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -52.735937179463065 0.30427148361883755 ;
	setAttr ".rp" -type "double3" 0 52.735937179463065 -0.30427148361883755 ;
	setAttr ".sp" -type "double3" 0 52.735937179463065 -0.30427148361883755 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55.683598670253481 -0.62275958705167245 ;
createNode transform -n "Ref:prp_hippouch_0_LControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 22.784489333183366 -46.343450509990234 -3.5681163579838584 ;
	setAttr ".r" -type "double3" 174.56500925726797 -67.271491100558094 -165.02610518376801 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 7.446070934542961 52.749230989522523 3.7772587632482129 ;
	setAttr ".rpt" -type "double3" -22.784489333183345 -2.1234331047541266 3.5681163579838611 ;
	setAttr ".sp" -type "double3" 7.4460709345429592 52.749230989522523 3.777258763248212 ;
	setAttr ".spt" -type "double3" 1.7763568394002509e-015 0 8.8817841970012543e-016 ;
createNode transform -n "Ref:prp_hippouch_0_LControl" -p "Ref:prp_hippouch_0_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" 7.4460709345429592 52.749230989522523 3.777258763248212 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_hippouch_0_LControlShape" -p "Ref:prp_hippouch_0_LControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.6655804100156377e-016 -6.6323659506331045e-016 -3
		3 0 -3.0615158845559431e-016
		4.057355579983879e-016 0 3
		-3 0 3.9429722507866583e-016
		-7.6655804100156377e-016 -6.6323659506331045e-016 -3
		3 0 -3.0615158845559431e-016
		4.057355579983879e-016 0 3
		-7.6655804100156377e-016 -3.9826027765141356 -3
		3 -3.9826027765141356 -2.2451116486743583e-016
		4.057355579983879e-016 -3.9826027765141343 3
		-3 -3.9826027765141356 4.7593764866682431e-016
		-7.6655804100156377e-016 -3.9826027765141356 -3
		3 -3.9826027765141356 -2.2451116486743583e-016
		4.057355579983879e-016 -3.9826027765141343 3
		-7.6655804100156377e-016 -7.9652055530282713 -3
		3 -7.9652055530282704 -1.4287074127927735e-016
		4.057355579983879e-016 -7.9652055530282704 3
		-3 -7.9652055530282704 5.5757807225498279e-016
		-7.6655804100156377e-016 -7.9652055530282713 -3
		3 -7.9652055530282704 -1.4287074127927735e-016
		4.057355579983879e-016 -7.9652055530282704 3
		-7.6655804100156377e-016 -11.947808329542406 -3
		3 -11.947808329542406 -6.1230317691118863e-017
		4.057355579983879e-016 -11.947808329542406 3
		-3 -11.947808329542406 6.3921849584314128e-016
		-7.6655804100156377e-016 -11.947808329542406 -3
		3 -11.947808329542406 -6.1230317691118863e-017
		4.057355579983879e-016 -11.947808329542406 3
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_hippouch_0_BControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 5.9240994458474159 -48.015737689278673 -2.7595392448915215 ;
	setAttr ".r" -type "double3" 2.0660087939738974 16.495410719931733 5.6906285484142174 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" -2.6258317511768809 52.406648584439381 -4.844799485213823 ;
	setAttr ".rpt" -type "double3" -5.9240994458474168 -0.45114592546570986 2.7595392448915228 ;
	setAttr ".sp" -type "double3" -2.6258317511768814 52.406648584439381 -4.844799485213823 ;
	setAttr ".spt" -type "double3" 4.4408920985006257e-016 0 0 ;
createNode transform -n "Ref:prp_hippouch_0_BControl" -p "Ref:prp_hippouch_0_BControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" -2.6258317511768814 52.406648584439381 -4.844799485213823 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_hippouch_0_BControlShape" -p "Ref:prp_hippouch_0_BControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-7.6655804100156377e-016 -3.5567024545948404e-016 -3
		3 0 -3.0615158845559431e-016
		4.057355579983879e-016 0 3
		-3 0 3.9429722507866583e-016
		-7.6655804100156377e-016 -3.5567024545948404e-016 -3
		3 0 -3.0615158845559431e-016
		4.057355579983879e-016 0 3
		-7.6655804100156377e-016 -2.1357285132241404 -3
		3 -2.1357285132241404 -2.2451116486743583e-016
		4.057355579983879e-016 -2.1357285132241399 3
		-3 -2.1357285132241404 4.7593764866682431e-016
		-7.6655804100156377e-016 -2.1357285132241404 -3
		3 -2.1357285132241404 -2.2451116486743583e-016
		4.057355579983879e-016 -2.1357285132241399 3
		-7.6655804100156377e-016 -4.2714570264482807 -3
		3 -4.2714570264482798 -1.4287074127927735e-016
		4.057355579983879e-016 -4.2714570264482798 3
		-3 -4.2714570264482798 5.5757807225498279e-016
		-7.6655804100156377e-016 -4.2714570264482807 -3
		3 -4.2714570264482798 -1.4287074127927735e-016
		4.057355579983879e-016 -4.2714570264482798 3
		-7.6655804100156377e-016 -6.4071855396724207 -3
		3 -6.4071855396724207 -6.1230317691118863e-017
		4.057355579983879e-016 -6.4071855396724207 3
		-3 -6.4071855396724207 6.3921849584314128e-016
		-7.6655804100156377e-016 -6.4071855396724207 -3
		3 -6.4071855396724207 -6.1230317691118863e-017
		4.057355579983879e-016 -6.4071855396724207 3
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_0FKcontrolZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 172.10239646194759 0 0 ;
	setAttr ".rp" -type "double3" 0 52.735937179463072 -0.30427148361883855 ;
	setAttr ".sp" -type "double3" 0 52.735937179463072 -0.30427148361883855 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -k true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0.1 -max 
		2 -at "double";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 52.735937179463072 -0.30427148361883855 ;
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
	setAttr ".cpr" 7;
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
	setAttr ".r" -type "double3" -1.9194080173407213 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.2171132690345132 2.4424906541753444e-015 ;
	setAttr ".sp" -type "double3" 0 -6.2171132690345132 2.4424906541753444e-015 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -6.2171132690345132 2.4424906541753444e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
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
	setAttr ".r" -type "double3" 16.55282577619348 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.0887999494348932 -2.2204460492503131e-015 ;
	setAttr ".sp" -type "double3" 0 -6.0887999494348932 -2.2204460492503131e-015 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -6.0887999494348932 -2.2204460492503131e-015 ;
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
	setAttr ".cpr" 7;
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
	setAttr ".r" -type "double3" 5.2406665034655884 0 0 ;
	setAttr ".rp" -type "double3" 0 -5.102508571299893 -4.4408920985006262e-016 ;
	setAttr ".sp" -type "double3" 0 -5.102508571299893 -4.4408920985006262e-016 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -5.102508571299893 -4.4408920985006262e-016 ;
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
	setAttr ".cpr" 7;
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
createNode transform -n "prp_backpackHosePt" -p "Ref:bip_spine_2FKcontrol";
	setAttr ".t" -type "double3" -4.237214 6.045597638420162 5.8828466428279951 ;
	setAttr ".r" -type "double3" 173.26418577919966 0 0 ;
createNode locator -n "prp_backpackHosePtShape" -p "prp_backpackHosePt";
	setAttr -k off ".v";
createNode transform -n "BackPackControl" -p "Ref:bip_spine_2FKcontrol";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".t" -type "double3" 0 64.188147493059944 -9.7929965697986496 ;
	setAttr ".r" -type "double3" 173.26418577919966 0 0 ;
	setAttr ".rp" -type "double3" 0 65.447501516394752 -6.4305892738342436 ;
	setAttr ".rpt" -type "double3" 0 -129.68899984897755 20.493228611171055 ;
	setAttr ".sp" -type "double3" 0 65.447501516394752 -6.4305892738342454 ;
createNode nurbsSurface -n "BackPackControlShape" -p "BackPackControl";
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
		3 3 0 0 no 
		6 0 0 0 1 1 1
		6 0 0 0 1 1 1
		
		16
		-13.892229814194421 75.390039767984319 -8.9785041298341426
		-13.892229814194421 68.761680933591279 -8.9785041298341444
		-13.892229814194421 62.133322099198232 -8.9785041298341444
		-13.892229814194421 55.504963264805184 -8.9785041298341461
		-4.6307432713981411 75.390039767984319 -8.9785041298341426
		-4.6307432713981411 68.761680933591279 -8.9785041298341444
		-4.6307432713981411 62.133322099198232 -8.9785041298341444
		-4.6307432713981411 55.504963264805184 -8.9785041298341461
		4.6307432713981393 75.390039767984319 -8.9785041298341426
		4.6307432713981393 68.761680933591279 -8.9785041298341444
		4.6307432713981393 62.133322099198232 -8.9785041298341444
		4.6307432713981393 55.504963264805184 -8.9785041298341461
		13.892229814194421 75.390039767984319 -8.9785041298341426
		13.892229814194421 68.761680933591279 -8.9785041298341444
		13.892229814194421 62.133322099198232 -8.9785041298341444
		13.892229814194421 55.504963264805184 -8.9785041298341461
		
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
	setAttr ".rp" -type "double3" 0 69.961014679075859 -1.5981942058520004 ;
	setAttr ".sp" -type "double3" 0 69.961014679075859 -1.5981942058520004 ;
createNode nurbsSurface -n "ikChestShape" -p "ikChest";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikChestCluster" -p "ikChest";
	setAttr ".v" no;
createNode clusterHandle -n "ikChestClusterShape" -p "ikChestCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 66.993823125053652 -2.1635321933251777 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.10124865901620393 -19.147952756929445 -0.60027060181265657 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.4686360370963882 19.539181360636412 0.036836249125399866 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -18.403040819350871 -6.6613381477509392e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 5.8857421954088862e-014 3.6030169115706729e-023 6.2794774472150466e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.2838966317096605 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2515067204788011e-008 -20.444105820935189 -1.7649361971905364e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.179746112333399 8.9025831737120704 17.031230952230487 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -63.525276935459431 3.3746294706528146 -0.55454566046518861 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -7.378477346624015 3.7747582837255322e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 4.878238362959955e-022 -1.4787793334710982e-006 -2.1303775945764615e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -35.230235293910113 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -5.3848123079111065 -7.7575354842552552e-016 ;
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
	setAttr ".rst" -type "double3" 5.8124405809158732 44.018714002370182 1.6653345369377348e-016 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 5.4686360370963927 19.539181360636423 0.036836249125400095 ;
	setAttr ".rp" -type "double3" 5.8124405809158732 44.018714002370182 1.6653345369377348e-016 ;
	setAttr ".sp" -type "double3" 5.8124405809158732 44.018714002370182 1.6653345369377348e-016 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -1.0215739820379975e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.0215739820379975e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.1343469397836268 -6
		6 -6.1343469397836268 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.1343469397836241 6
		-6 -6.1343469397836268 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.1343469397836268 -6
		6 -6.1343469397836268 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.1343469397836241 6
		-1.5331160820031275e-015 -12.268693879567254 -6
		6 -12.268693879567252 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.268693879567252 6
		-6 -12.268693879567252 1.1151561445099656e-015
		-1.5331160820031275e-015 -12.268693879567254 -6
		6 -12.268693879567252 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.268693879567252 6
		-1.5331160820031275e-015 -18.403040819350878 -6
		6 -18.403040819350878 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.403040819350878 6
		-6 -18.403040819350878 1.2784369916862826e-015
		-1.5331160820031275e-015 -18.403040819350878 -6
		6 -18.403040819350878 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.403040819350878 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 3.2838966317096601 0 0 ;
	setAttr ".rp" -type "double3" 1.8873791418627661e-015 -18.403040819350878 -4.4408920985006262e-016 ;
	setAttr ".sp" -type "double3" 1.8873791418627661e-015 -18.403040819350878 -4.4408920985006262e-016 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.8873791418627661e-015 -18.403040819350878 -4.4408920985006262e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -1.1348758500137713e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.1348758500137713e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.8147019403117284 -6
		6 -6.8147019403117284 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.8147019403117257 6
		-6 -6.8147019403117284 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.8147019403117284 -6
		6 -6.8147019403117284 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.8147019403117257 6
		-1.5331160820031275e-015 -13.629403880623457 -6
		6 -13.629403880623453 -2.8574148255855469e-016
		8.1147111599677579e-016 -13.629403880623453 6
		-6 -13.629403880623453 1.1151561445099656e-015
		-1.5331160820031275e-015 -13.629403880623457 -6
		6 -13.629403880623453 -2.8574148255855469e-016
		8.1147111599677579e-016 -13.629403880623453 6
		-1.5331160820031275e-015 -20.444105820935182 -6
		6 -20.444105820935182 -1.2246063538223773e-016
		8.1147111599677579e-016 -20.444105820935182 6
		-6 -20.444105820935182 1.2784369916862826e-015
		-1.5331160820031275e-015 -20.444105820935182 -6
		6 -20.444105820935182 -1.2246063538223773e-016
		8.1147111599677579e-016 -20.444105820935182 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -63.525276935459416 3.3746294706528182 -0.55454566046518838 ;
	setAttr ".rp" -type "double3" 1.2515067648877221e-008 -20.444105820935182 -1.7649339767444872e-009 ;
	setAttr ".sp" -type "double3" 1.2515067648877221e-008 -20.444105820935182 -1.7649339767444872e-009 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.2515067648877221e-008 -20.444105820935182 -1.7649339767444872e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -4.0958777184485577e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -4.0958777184485577e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.4594924488746726 -6
		6 -2.4594924488746726 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.4594924488746717 6
		-6 -2.4594924488746726 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.4594924488746726 -6
		6 -2.4594924488746726 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.4594924488746717 6
		-1.5331160820031275e-015 -4.9189848977493451 -6
		6 -4.9189848977493442 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.9189848977493442 6
		-6 -4.9189848977493442 1.1151561445099656e-015
		-1.5331160820031275e-015 -4.9189848977493451 -6
		6 -4.9189848977493442 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.9189848977493442 6
		-1.5331160820031275e-015 -7.3784773466240168 -6
		6 -7.3784773466240168 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.3784773466240168 6
		-6 -7.3784773466240168 1.2784369916862826e-015
		-1.5331160820031275e-015 -7.3784773466240168 -6
		6 -7.3784773466240168 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.3784773466240168 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -35.23023529391012 1.590277340731758e-015 3.180554681463516e-015 ;
	setAttr ".rp" -type "double3" 1.27675647831893e-015 -7.3784773466240177 1.3322676295501878e-015 ;
	setAttr ".sp" -type "double3" 1.27675647831893e-015 -7.3784773466240177 1.3322676295501878e-015 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.27675647831893e-015 -7.3784773466240177 1.3322676295501878e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 -2.9891713037639192e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -2.9891713037639192e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -1.7949374359703691 -6
		6 -1.7949374359703691 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.7949374359703685 6
		-6 -1.7949374359703691 9.5187529733364862e-016
		-1.5331160820031275e-015 -1.7949374359703691 -6
		6 -1.7949374359703691 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.7949374359703685 6
		-1.5331160820031275e-015 -3.5898748719407383 -6
		6 -3.5898748719407374 -2.8574148255855469e-016
		8.1147111599677579e-016 -3.5898748719407374 6
		-6 -3.5898748719407374 1.1151561445099656e-015
		-1.5331160820031275e-015 -3.5898748719407383 -6
		6 -3.5898748719407374 -2.8574148255855469e-016
		8.1147111599677579e-016 -3.5898748719407374 6
		-1.5331160820031275e-015 -5.3848123079111065 -6
		6 -5.3848123079111065 -1.2246063538223773e-016
		8.1147111599677579e-016 -5.3848123079111065 6
		-6 -5.3848123079111065 1.2784369916862826e-015
		-1.5331160820031275e-015 -5.3848123079111065 -6
		6 -5.3848123079111065 -1.2246063538223773e-016
		8.1147111599677579e-016 -5.3848123079111065 6
		
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
	setAttr ".rst" -type "double3" 5.8124405809158741 44.018714002370189 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.10125132748817055 -19.148072576487049 -0.60027600168340467 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.53136396290364 -19.539181360636345 -0.036836249125399637 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.1846413744697202e-006 18.402988200641602 6.4402032300403533e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.2838966317096601 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.1096759651491084e-008 20.444140644139441 -6.717560367297537e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.1797603340710432 8.9026339607953791 17.031337597731305 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -63.525276935459324 3.374629470652823 -0.55454566046517639 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.9024070640204513e-006 7.37848235054987 3.9573852099739071e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -35.230235293910091 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.4066021951394418e-006 5.3848149856871226 -4.4182968833099545e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
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
	setAttr ".rst" -type "double3" -5.81244 44.0187 6.106226635438361e-016 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -174.53136396290364 -19.539181360636363 -0.036836249125399977 ;
	setAttr ".rp" -type "double3" -5.81244 44.0187 6.106226635438361e-016 ;
	setAttr ".sp" -type "double3" -5.81244 44.0187 6.106226635438361e-016 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 1.0215710611129389e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.0215710611129389e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.1343294002142859 -6
		6 6.1343294002142859 -4.4902232973487166e-016
		8.1147111599677579e-016 6.1343294002142841 6
		-6 6.1343294002142859 9.5187529733364862e-016
		-1.5331160820031275e-015 6.1343294002142859 -6
		6 6.1343294002142859 -4.4902232973487166e-016
		8.1147111599677579e-016 6.1343294002142841 6
		-1.5331160820031275e-015 12.268658800428572 -6
		6 12.26865880042857 -2.8574148255855469e-016
		8.1147111599677579e-016 12.26865880042857 6
		-6 12.26865880042857 1.1151561445099656e-015
		-1.5331160820031275e-015 12.268658800428572 -6
		6 12.26865880042857 -2.8574148255855469e-016
		8.1147111599677579e-016 12.26865880042857 6
		-1.5331160820031275e-015 18.402988200642856 -6
		6 18.402988200642856 -1.2246063538223773e-016
		8.1147111599677579e-016 18.402988200642856 6
		-6 18.402988200642856 1.2784369916862826e-015
		-1.5331160820031275e-015 18.402988200642856 -6
		6 18.402988200642856 -1.2246063538223773e-016
		8.1147111599677579e-016 18.402988200642856 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 3.2838966317096596 0 -3.9756933518293969e-016 ;
	setAttr ".rp" -type "double3" -2.1846413742476756e-006 18.402988200641595 6.4402032307064871e-006 ;
	setAttr ".sp" -type "double3" -2.1846413742476756e-006 18.402988200641595 6.4402032307064871e-006 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.1846413742476756e-006 18.402988200641595 6.4402032307064871e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 1.1348777830899907e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.1348777830899907e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.8147135480468499 -6
		6 6.8147135480468499 -4.4902232973487166e-016
		8.1147111599677579e-016 6.8147135480468473 6
		-6 6.8147135480468499 9.5187529733364862e-016
		-1.5331160820031275e-015 6.8147135480468499 -6
		6 6.8147135480468499 -4.4902232973487166e-016
		8.1147111599677579e-016 6.8147135480468473 6
		-1.5331160820031275e-015 13.6294270960937 -6
		6 13.629427096093696 -2.8574148255855469e-016
		8.1147111599677579e-016 13.629427096093696 6
		-6 13.629427096093696 1.1151561445099656e-015
		-1.5331160820031275e-015 13.6294270960937 -6
		6 13.629427096093696 -2.8574148255855469e-016
		8.1147111599677579e-016 13.629427096093696 6
		-1.5331160820031275e-015 20.444140644140546 -6
		6 20.444140644140546 -1.2246063538223773e-016
		8.1147111599677579e-016 20.444140644140546 6
		-6 20.444140644140546 1.2784369916862826e-015
		-1.5331160820031275e-015 20.444140644140546 -6
		6 20.444140644140546 -1.2246063538223773e-016
		8.1147111599677579e-016 20.444140644140546 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -63.525276935459324 3.374629470652827 -0.55454566046517662 ;
	setAttr ".rp" -type "double3" -6.1096759429446479e-008 20.444140644139445 -6.717560367297537e-006 ;
	setAttr ".sp" -type "double3" -6.1096759429446479e-008 20.444140644139445 -6.717560367297537e-006 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.1096759429446479e-008 20.444140644139445 -6.717560367297537e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 4.0958804961863113e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 4.0958804961863113e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.4594941168505007 -6
		6 2.4594941168505007 -4.4902232973487166e-016
		8.1147111599677579e-016 2.4594941168504998 6
		-6 2.4594941168505007 9.5187529733364862e-016
		-1.5331160820031275e-015 2.4594941168505007 -6
		6 2.4594941168505007 -4.4902232973487166e-016
		8.1147111599677579e-016 2.4594941168504998 6
		-1.5331160820031275e-015 4.9189882337010014 -6
		6 4.9189882337010005 -2.8574148255855469e-016
		8.1147111599677579e-016 4.9189882337010005 6
		-6 4.9189882337010005 1.1151561445099656e-015
		-1.5331160820031275e-015 4.9189882337010014 -6
		6 4.9189882337010005 -2.8574148255855469e-016
		8.1147111599677579e-016 4.9189882337010005 6
		-1.5331160820031275e-015 7.3784823505515016 -6
		6 7.3784823505515016 -1.2246063538223773e-016
		8.1147111599677579e-016 7.3784823505515016 6
		-6 7.3784823505515016 1.2784369916862826e-015
		-1.5331160820031275e-015 7.3784823505515016 -6
		6 7.3784823505515016 -1.2246063538223773e-016
		8.1147111599677579e-016 7.3784823505515016 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -35.230235293910091 1.590277340731758e-015 3.180554681463516e-015 ;
	setAttr ".rp" -type "double3" -2.9024070623551168e-006 7.3784823505498718 3.9573852059771042e-006 ;
	setAttr ".sp" -type "double3" -2.9024070623551168e-006 7.3784823505498718 3.9573852059771042e-006 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.9024070623551168e-006 7.3784823505498718 3.9573852059771042e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.5331160820031275e-015 2.9891727902292135e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 2.9891727902292135e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 1.7949383285629752 -6
		6 1.7949383285629752 -4.4902232973487166e-016
		8.1147111599677579e-016 1.7949383285629745 6
		-6 1.7949383285629752 9.5187529733364862e-016
		-1.5331160820031275e-015 1.7949383285629752 -6
		6 1.7949383285629752 -4.4902232973487166e-016
		8.1147111599677579e-016 1.7949383285629745 6
		-1.5331160820031275e-015 3.5898766571259504 -6
		6 3.5898766571259495 -2.8574148255855469e-016
		8.1147111599677579e-016 3.5898766571259495 6
		-6 3.5898766571259495 1.1151561445099656e-015
		-1.5331160820031275e-015 3.5898766571259504 -6
		6 3.5898766571259495 -2.8574148255855469e-016
		8.1147111599677579e-016 3.5898766571259495 6
		-1.5331160820031275e-015 5.3848149856889247 -6
		6 5.3848149856889247 -1.2246063538223773e-016
		8.1147111599677579e-016 5.3848149856889247 6
		-6 5.3848149856889247 1.2784369916862826e-015
		-1.5331160820031275e-015 5.3848149856889247 -6
		6 5.3848149856889247 -1.2246063538223773e-016
		8.1147111599677579e-016 5.3848149856889247 6
		
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
	setAttr ".rst" -type "double3" -5.8124399999999987 44.0187 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode joint -n "control_coatFront0L_0" -p "UpperbodyControl";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.766699 48.711914 6.544607 ;
	setAttr ".r" -type "double3" 4.0363696750087321 18.702977083884765 24.156350958275848 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
createNode joint -n "control_coatFront0L_1" -p "control_coatFront0L_0";
	setAttr ".t" -type "double3" 10.567255000000003 -2.2204460492503131e-015 -8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
createNode ikEffector -n "effector10" -p "control_coatFront0L_0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle1" -p "UpperbodyControl";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "ikHandle1_pointConstraint1" -p "ikHandle1";
	addAttr -ci true -k true -sn "w0" -ln "coatLControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 7.795091 40.180285 2.857676 ;
	setAttr -k on ".w0";
createNode transform -n "locatorKneeL" -p "UpperbodyControl";
	setAttr ".rp" -type "double3" 5.055804 25.702795 -1.62065 ;
	setAttr ".sp" -type "double3" 5.055804 25.702795 -1.62065 ;
createNode locator -n "locatorKneeLShape" -p "locatorKneeL";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 5.055804 25.702795 -1.62065 ;
createNode transform -n "coatLControl" -p "locatorKneeL";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.795091 40.180285 2.857676 ;
	setAttr ".sp" -type "double3" 7.795091 40.180285 2.857676 ;
	setAttr ".hdl" -type "double3" 7.795091 40.180285 2.857676 ;
	setAttr ".dh" yes;
createNode nurbsSurface -n "coatLControlShape" -p "coatLControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 2.8576759999999997
		7.7950910000000002 38.680284999999998 1.7970158282201787
		8.8557511717798221 38.680284999999998 2.8576760000000001
		7.7950910000000002 38.680284999999998 3.9183361717798215
		6.7344308282201784 38.680284999999998 2.8576760000000001
		7.7950910000000002 38.680284999999998 1.7970158282201787
		8.8557511717798221 38.680284999999998 2.8576760000000001
		7.7950910000000002 38.680284999999998 3.9183361717798215
		7.7950909999999993 40.180284999999998 -0.58166382822017804
		11.234430828220178 40.180284999999998 2.8576760000000001
		7.7950910000000002 40.180284999999998 6.2970158282201787
		4.3557511717798221 40.180284999999998 2.8576760000000001
		7.7950909999999993 40.180284999999998 -0.58166382822017804
		11.234430828220178 40.180284999999998 2.8576760000000001
		7.7950910000000002 40.180284999999998 6.2970158282201787
		7.7950910000000002 41.680284999999998 1.7970158282201789
		8.8557511717798221 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 3.9183361717798215
		6.7344308282201792 41.680284999999998 2.8576760000000001
		7.7950910000000002 41.680284999999998 1.7970158282201789
		8.8557511717798221 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 3.9183361717798215
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		7.7950910000000002 41.680284999999998 2.8576760000000005
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "locatorKneeL_parentConstraint1" -p "locatorKneeL";
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
	setAttr ".tg[0].tot" -type "double3" -0.18213277672677375 -18.402113414597814 -0.030720797287325574 ;
	setAttr ".tg[0].tor" -type "double3" -5.7876476113816233 -19.450379782209104 1.8982058851970078 ;
	setAttr ".lr" -type "double3" -0.42748140437899707 -19.017146754360134 -2.2111714721459919 ;
	setAttr ".rst" -type "double3" 0 1.0658141036401503e-014 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -7.9513867036587919e-016 3.713300338592582e-015 
		6.6747735756821247e-017 ;
	setAttr -k on ".w0";
createNode joint -n "control_coatFront0R_0" -p "UpperbodyControl";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.766699 48.711914 6.544607 ;
	setAttr ".r" -type "double3" -4.0363618199033784 18.702971878574775 -24.15630954209783 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
createNode joint -n "control_coatFront0R_1" -p "control_coatFront0R_0";
	setAttr ".t" -type "double3" 10.567255000000003 -2.2204460492503131e-015 -8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
createNode ikEffector -n "effector11" -p "control_coatFront0R_0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle2" -p "UpperbodyControl";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "ikHandle2_pointConstraint1" -p "ikHandle2";
	addAttr -ci true -k true -sn "w0" -ln "coatRControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -7.795091 40.180285 2.857676 ;
	setAttr -k on ".w0";
createNode transform -n "locatorKneeR" -p "UpperbodyControl";
	setAttr ".rp" -type "double3" -5.055804 25.702795 -1.62065 ;
	setAttr ".sp" -type "double3" -5.055804 25.702795 -1.62065 ;
createNode locator -n "locatorKneeRShape" -p "locatorKneeR";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -5.055804 25.702795 -1.62065 ;
createNode transform -n "coatRControl" -p "locatorKneeR";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.795091 40.180285 2.857676 ;
	setAttr ".sp" -type "double3" -7.795091 40.180285 2.857676 ;
	setAttr ".hdl" -type "double3" -7.795091 40.180285 2.857676 ;
	setAttr ".dh" yes;
createNode nurbsSurface -n "coatRControlShape" -p "coatRControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		7 0 0 0 1 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		35
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 2.8576759999999997
		-7.7950910000000002 38.680284999999998 1.7970158282201787
		-6.7344308282201784 38.680284999999998 2.8576760000000001
		-7.7950910000000002 38.680284999999998 3.9183361717798215
		-8.8557511717798221 38.680284999999998 2.8576760000000001
		-7.7950910000000002 38.680284999999998 1.7970158282201787
		-6.7344308282201784 38.680284999999998 2.8576760000000001
		-7.7950910000000002 38.680284999999998 3.9183361717798215
		-7.7950910000000011 40.180284999999998 -0.58166382822017804
		-4.3557511717798221 40.180284999999998 2.8576760000000001
		-7.7950910000000002 40.180284999999998 6.2970158282201787
		-11.234430828220178 40.180284999999998 2.8576760000000001
		-7.7950910000000011 40.180284999999998 -0.58166382822017804
		-4.3557511717798221 40.180284999999998 2.8576760000000001
		-7.7950910000000002 40.180284999999998 6.2970158282201787
		-7.7950910000000002 41.680284999999998 1.7970158282201789
		-6.7344308282201792 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 3.9183361717798215
		-8.8557511717798221 41.680284999999998 2.8576760000000001
		-7.7950910000000002 41.680284999999998 1.7970158282201789
		-6.7344308282201792 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 3.9183361717798215
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		-7.7950910000000002 41.680284999999998 2.8576760000000005
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "locatorKneeR_parentConstraint1" -p "locatorKneeR";
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
	setAttr ".tg[0].tot" -type "double3" 0.18213222145834607 18.402099457531111 0.030721931268582692 ;
	setAttr ".tg[0].tor" -type "double3" 174.21235243304065 -19.450378518344845 1.898205870404811 ;
	setAttr ".lr" -type "double3" -0.42748083801205428 19.017264428128623 2.2111869762792979 ;
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-015 -6.6613381477509392e-016 ;
	setAttr ".rsrr" -type "double3" -1.192708005548819e-014 9.5426968399600158e-015 
		-1.407305961830503e-016 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 52.735937179463058 -0.30427148361883738 ;
	setAttr ".r" -type "double3" -0.734721020738623 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 172.10239646194759 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -6.2171132690344919 0 ;
	setAttr ".r" -type "double3" 3.8721609657229248 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9194080173407209 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" 0 -6.088799949434879 5.3290705182007514e-015 ;
	setAttr ".r" -type "double3" -5.8422612555727405 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.552825776193494 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 0 -5.1025085712998646 -3.5527136788005009e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.2406665034655919 0 0 ;
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
	setAttr ".lr" -type "double3" 170.72834058688358 0 0 ;
	setAttr ".o" -type "double3" -170.72834058688358 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 70.019978255439952 -1.5869598959029905 ;
	setAttr ".r" -type "double3" -175.96900708978808 0 0 ;
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
		6 0 0 0 17.408421789769232 17.408421789769232 17.408421789769232
		4
		0 52.735937179463058 -0.30427148361883738
		0 58.631260161043905 -0.94124769048450763
		0 64.02663157103143 -2.7288701807983551
		0 69.961014679075873 -1.5981942058520004
		;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 0 69.961014679075859 -1.5981942058520029 ;
	setAttr ".sp" -type "double3" 0 69.961014679075859 -1.5981942058520029 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-014 -1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 168.02351927573406 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0.06000327189019572 0.0015875837499308432 ;
	setAttr ".tg[1].tor" -type "double3" 170.72834058558743 0 0 ;
	setAttr ".rst" -type "double3" 0 0 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -3.6753177920186298e-010 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" 0 146.49790684281152 5.3857167320171406 ;
	setAttr ".r" -type "double3" -174.42604644761462 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 73.380042628690433 -0.87292413471613117 ;
	setAttr ".rpt" -type "double3" 0 -146.49790684281157 -5.3857167320171442 ;
	setAttr ".sp" -type "double3" 0 73.380042628690418 -0.87292413471613095 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 -2.2204460492503136e-016 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" 28.539517742721834 3.7216195205279834 73.951397061012742 ;
	setAttr ".rp" -type "double3" 1.3056311276335917 70.574597099062856 1.8653502621767091 ;
	setAttr ".sp" -type "double3" 1.3056311276335917 70.574597099062856 1.8653502621767091 ;
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
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
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
	setAttr ".cpr" 7;
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
		-1.7247555922535185e-015 -2.915858770665452 -6.75
		6.75 -2.9158587706654515 -5.0515012095173062e-016
		9.1290500549637277e-016 -2.9158587706654511 6.75
		-6.75 -2.9158587706654515 1.0708597095003547e-015
		-1.7247555922535185e-015 -2.915858770665452 -6.75
		6.75 -2.9158587706654515 -5.0515012095173062e-016
		9.1290500549637277e-016 -2.9158587706654511 6.75
		-1.7247555922535185e-015 -5.831717541330903 -6.75
		6.75 -5.831717541330903 -3.2145916787837403e-016
		9.1290500549637277e-016 -5.831717541330903 6.75
		-6.75 -5.831717541330903 1.2545506625737113e-015
		-1.7247555922535185e-015 -5.831717541330903 -6.75
		6.75 -5.831717541330903 -3.2145916787837403e-016
		9.1290500549637277e-016 -5.831717541330903 6.75
		-1.7247555922535185e-015 -8.7475763119963545 -6.75
		6.75 -8.7475763119963545 -1.3776821480501744e-016
		9.1290500549637277e-016 -8.7475763119963545 6.75
		-6.75 -8.7475763119963545 1.4382416156470679e-015
		-1.7247555922535185e-015 -8.7475763119963545 -6.75
		6.75 -8.7475763119963545 -1.3776821480501744e-016
		9.1290500549637277e-016 -8.7475763119963545 6.75
		
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
	setAttr ".rst" -type "double3" 1.3056311276335875 70.574597099062885 1.8653502621767073 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".rp" -type "double3" 1.6146173648090567e-008 -8.7475763119963688 8.5650597725361877e-011 ;
	setAttr ".sp" -type "double3" 1.6146173648090567e-008 -8.7475763119963688 8.5650597725361877e-011 ;
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
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
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
		-1.7247555922535185e-015 -4.2633274517170223 -6.75
		6.75 -4.2633274517170214 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.2633274517170214 6.75
		-6.75 -4.2633274517170214 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.2633274517170223 -6.75
		6.75 -4.2633274517170214 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.2633274517170214 6.75
		-1.7247555922535185e-015 -8.5266549034340429 -6.75
		6.75 -8.5266549034340429 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.5266549034340429 6.75
		-6.75 -8.5266549034340429 1.2545506625737113e-015
		-1.7247555922535185e-015 -8.5266549034340429 -6.75
		6.75 -8.5266549034340429 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.5266549034340429 6.75
		-1.7247555922535185e-015 -12.789982355151064 -6.75
		6.75 -12.789982355151064 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.789982355151064 6.75
		-6.75 -12.789982355151064 1.4382416156470679e-015
		-1.7247555922535185e-015 -12.789982355151064 -6.75
		6.75 -12.789982355151064 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.789982355151064 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -17.920095273324829 0 -3.180554681463516e-015 ;
	setAttr ".rp" -type "double3" -5.9396931817445875e-015 -12.78998235515107 2.4424906541753444e-015 ;
	setAttr ".sp" -type "double3" -5.9396931817445875e-015 -12.78998235515107 2.4424906541753444e-015 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.9396931817445875e-015 -12.78998235515107 2.4424906541753444e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
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
	setAttr ".cpr" 7;
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
		-1.7247555922535185e-015 -3.8452175605715944 -6.75
		6.75 -3.8452175605715935 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.845217560571593 6.75
		-6.75 -3.8452175605715935 1.0708597095003547e-015
		-1.7247555922535185e-015 -3.8452175605715944 -6.75
		6.75 -3.8452175605715935 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.845217560571593 6.75
		-1.7247555922535185e-015 -7.6904351211431869 -6.75
		6.75 -7.6904351211431869 -3.2145916787837403e-016
		9.1290500549637277e-016 -7.6904351211431869 6.75
		-6.75 -7.6904351211431869 1.2545506625737113e-015
		-1.7247555922535185e-015 -7.6904351211431869 -6.75
		6.75 -7.6904351211431869 -3.2145916787837403e-016
		9.1290500549637277e-016 -7.6904351211431869 6.75
		-1.7247555922535185e-015 -11.535652681714781 -6.75
		6.75 -11.535652681714781 -1.3776821480501744e-016
		9.1290500549637277e-016 -11.535652681714781 6.75
		-6.75 -11.535652681714781 1.4382416156470679e-015
		-1.7247555922535185e-015 -11.535652681714781 -6.75
		6.75 -11.535652681714781 -1.3776821480501744e-016
		9.1290500549637277e-016 -11.535652681714781 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" 9.9392333795734899e-016 -1.1927080055488188e-015 -3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 1.429412144204889e-015 -11.535652681714797 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 1.429412144204889e-015 -11.535652681714797 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.429412144204889e-015 -11.535652681714797 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
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
	setAttr ".rst" -type "double3" 1.6146171510911245e-008 -8.7475763119963954 8.5651041814571727e-011 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.6146245534441883e-008 -8.747576311996351 
		8.5645365600408158e-011 ;
	setAttr ".tg[0].tor" -type "double3" -16.014710606316342 -18.948359601186159 -47.089622197435013 ;
	setAttr ".tg[1].tot" -type "double3" 8.6157868439565028 -3.2602633013619839 0.49425796924925547 ;
	setAttr ".tg[1].tor" -type "double3" 173.92137180491824 -7.7088463294594396 -23.210195020693209 ;
	setAttr ".tg[2].tot" -type "double3" 8.6157868439565028 19.722574111048342 -2.3051203236669666 ;
	setAttr ".tg[2].tor" -type "double3" 0.1336682885248246 5.0143838143038773 23.899394319197615 ;
	setAttr ".tg[3].tot" -type "double3" 8.6157868439565028 68.189457725792721 -2.3051203236669666 ;
	setAttr ".tg[3].tor" -type "double3" 0.1336682885248246 5.0143838143038773 23.899394319197615 ;
	setAttr ".lr" -type "double3" -16.014710606316346 -18.948359601186159 -47.089622197435013 ;
	setAttr ".rst" -type "double3" 6.0479399266455403e-014 1.7763568394002505e-014 -7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -16.014710606316342 -18.948359601186166 -47.08962219743502 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -151.46048225727819 -3.7216195205279785 -73.951397061012742 ;
	setAttr ".rp" -type "double3" -1.30563 70.574599999999961 1.8653499999999987 ;
	setAttr ".sp" -type "double3" -1.30563 70.574599999999961 1.8653499999999987 ;
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
	setAttr ".cpr" 7;
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
		-1.7247555922535185e-015 2.9158562923074407 -6.75
		6.75 2.9158562923074403 -5.0515012095173062e-016
		9.1290500549637277e-016 2.9158562923074398 6.75
		-6.75 2.9158562923074403 1.0708597095003547e-015
		-1.7247555922535185e-015 2.9158562923074407 -6.75
		6.75 2.9158562923074403 -5.0515012095173062e-016
		9.1290500549637277e-016 2.9158562923074398 6.75
		-1.7247555922535185e-015 5.8317125846148805 -6.75
		6.75 5.8317125846148805 -3.2145916787837403e-016
		9.1290500549637277e-016 5.8317125846148805 6.75
		-6.75 5.8317125846148805 1.2545506625737113e-015
		-1.7247555922535185e-015 5.8317125846148805 -6.75
		6.75 5.8317125846148805 -3.2145916787837403e-016
		9.1290500549637277e-016 5.8317125846148805 6.75
		-1.7247555922535185e-015 8.7475688769223208 -6.75
		6.75 8.7475688769223208 -1.3776821480501744e-016
		9.1290500549637277e-016 8.7475688769223208 6.75
		-6.75 8.7475688769223208 1.4382416156470679e-015
		-1.7247555922535185e-015 8.7475688769223208 -6.75
		6.75 8.7475688769223208 -1.3776821480501744e-016
		9.1290500549637277e-016 8.7475688769223208 6.75
		
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
	setAttr ".rst" -type "double3" -1.3056300000000178 70.574599999999933 1.8653500000000007 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".rp" -type "double3" -3.8918858484837671e-005 8.7475688768357553 4.9475290442302367e-007 ;
	setAttr ".sp" -type "double3" -3.8918858484837671e-005 8.7475688768357553 4.9475290442302367e-007 ;
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
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
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
		-1.7247555922535185e-015 4.2633332142624445 -6.75
		6.75 4.2633332142624436 -5.0515012095173062e-016
		9.1290500549637277e-016 4.2633332142624436 6.75
		-6.75 4.2633332142624436 1.0708597095003547e-015
		-1.7247555922535185e-015 4.2633332142624445 -6.75
		6.75 4.2633332142624436 -5.0515012095173062e-016
		9.1290500549637277e-016 4.2633332142624436 6.75
		-1.7247555922535185e-015 8.5266664285248872 -6.75
		6.75 8.5266664285248872 -3.2145916787837403e-016
		9.1290500549637277e-016 8.5266664285248872 6.75
		-6.75 8.5266664285248872 1.2545506625737113e-015
		-1.7247555922535185e-015 8.5266664285248872 -6.75
		6.75 8.5266664285248872 -3.2145916787837403e-016
		9.1290500549637277e-016 8.5266664285248872 6.75
		-1.7247555922535185e-015 12.789999642787331 -6.75
		6.75 12.789999642787331 -1.3776821480501744e-016
		9.1290500549637277e-016 12.789999642787331 6.75
		-6.75 12.789999642787331 1.4382416156470679e-015
		-1.7247555922535185e-015 12.789999642787331 -6.75
		6.75 12.789999642787331 -1.3776821480501744e-016
		9.1290500549637277e-016 12.789999642787331 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -17.920095273324829 1.5902773407317592e-015 -6.3611093629270367e-015 ;
	setAttr ".rp" -type "double3" 3.1538066865649528e-005 12.789999642748361 -1.4758827300287436e-006 ;
	setAttr ".sp" -type "double3" 3.1538066865649528e-005 12.789999642748361 -1.4758827300287436e-006 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.1538066865649528e-005 12.789999642748361 -1.4758827300287436e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999933 ;
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
	setAttr ".cpr" 7;
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
		-1.7247555922535185e-015 3.8452274065102832 -6.75
		6.75 3.8452274065102827 -5.0515012095173062e-016
		9.1290500549637277e-016 3.8452274065102823 6.75
		-6.75 3.8452274065102827 1.0708597095003547e-015
		-1.7247555922535185e-015 3.8452274065102832 -6.75
		6.75 3.8452274065102827 -5.0515012095173062e-016
		9.1290500549637277e-016 3.8452274065102823 6.75
		-1.7247555922535185e-015 7.6904548130205654 -6.75
		6.75 7.6904548130205654 -3.2145916787837403e-016
		9.1290500549637277e-016 7.6904548130205654 6.75
		-6.75 7.6904548130205654 1.2545506625737113e-015
		-1.7247555922535185e-015 7.6904548130205654 -6.75
		6.75 7.6904548130205654 -3.2145916787837403e-016
		9.1290500549637277e-016 7.6904548130205654 6.75
		-1.7247555922535185e-015 11.535682219530848 -6.75
		6.75 11.535682219530848 -1.3776821480501744e-016
		9.1290500549637277e-016 11.535682219530848 6.75
		-6.75 11.535682219530848 1.4382416156470679e-015
		-1.7247555922535185e-015 11.535682219530848 -6.75
		6.75 11.535682219530848 -1.3776821480501744e-016
		9.1290500549637277e-016 11.535682219530848 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 2.5842006786891068e-015 -2.7829853462805756e-015 -3.1805546814635152e-015 ;
	setAttr ".rp" -type "double3" -1.9303702734202455e-005 11.535682219505457 1.4603536929280736e-005 ;
	setAttr ".sp" -type "double3" -1.9303702734202455e-005 11.535682219505457 1.4603536929280736e-005 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.9303702734202455e-005 11.535682219505457 1.4603536929280736e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
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
	setAttr ".rst" -type "double3" -3.8918858519920718e-005 8.7475688768357287 4.9475290053724308e-007 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.8918858508179446e-005 8.7475688768357447 
		4.9475289715677863e-007 ;
	setAttr ".tg[0].tor" -type "double3" -16.014710606316306 -18.948359601186134 -47.089622197434991 ;
	setAttr ".tg[1].tot" -type "double3" -8.6157899999999952 -3.2603053217360083 0.49426260622247681 ;
	setAttr ".tg[1].tor" -type "double3" -6.0786281950817393 7.7088463294594298 23.210195020693213 ;
	setAttr ".tg[2].tot" -type "double3" -8.6157899999999952 19.722616385255549 -2.3051200000000023 ;
	setAttr ".tg[2].tor" -type "double3" -179.86633171147514 -5.0143838143038684 -23.899394319197619 ;
	setAttr ".tg[3].tot" -type "double3" -8.6157899999999952 68.189499999999924 -2.3051200000000023 ;
	setAttr ".tg[3].tor" -type "double3" -179.86633171147514 -5.0143838143038684 -23.899394319197619 ;
	setAttr ".lr" -type "double3" -16.014710606316306 -18.948359601186137 -47.089622197434998 ;
	setAttr ".rst" -type "double3" 2.2204460492503131e-015 -1.4210854715202004e-014 
		8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -16.014710606316303 -18.948359601186144 -47.089622197435013 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 146.49790684281152 5.3857167320171406 ;
	setAttr ".sp" -type "double3" 0 146.49790684281152 5.3857167320171406 ;
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
	setAttr ".lr" -type "double3" -174.42604644761462 0 0 ;
	setAttr ".rsrr" -type "double3" -174.42604644761462 0 0 ;
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
	setAttr ".o" -type "double3" 0 76.536892163735658 6.983910937869144 ;
	setAttr -k on ".w0";
createNode transform -n "neckControl" -p "neckControlLockParent";
	addAttr -ci true -sn "neckControl" -ln "neckControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587899e-016 0 0 ;
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
	setAttr ".cpr" 7;
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
	setAttr ".rst" -type "double3" 0 73.380042628690404 -0.87292413471613095 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0 -79.285661121382077 7.9962341684095364 ;
	setAttr ".r" -type "double3" -5.5739535523854089 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 76.533745976609794 -0.56514819838178343 ;
	setAttr ".rpt" -type "double3" 0 -0.41677083425189704 -7.4310859700277518 ;
	setAttr ".sp" -type "double3" 0 76.533745976609822 -0.56514819838178365 ;
	setAttr ".spt" -type "double3" 0 -2.8421709430403995e-014 2.2204460492503121e-016 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 -79.285661121382077 7.9962341684095364 ;
	setAttr ".sp" -type "double3" 0 -79.285661121382077 7.9962341684095364 ;
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
	setAttr ".lr" -type "double3" -180.00000000000003 0 0 ;
	setAttr ".rsrr" -type "double3" -180.00000000000003 0 0 ;
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
	setAttr ".o" -type "double3" 0 -152.66570375007251 8.8691583031256673 ;
	setAttr ".rst" -type "double3" 0 -1.4210854715202004e-014 0 ;
	setAttr -k on ".w0";
createNode transform -n "headControl" -p "headControlLockParent";
	addAttr -ci true -sn "headControl" -ln "headControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.2582448256453814e-014 0 0 ;
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
	setAttr ".cpr" 7;
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
	setAttr ".rst" -type "double3" 0 76.533745976609822 -0.56514819838178354 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_glassesControlGroup" -p "headControl";
	setAttr ".t" -type "double3" -0.022273387037058577 -1.3011315805861585 -5.9297773369207984 ;
	setAttr ".r" -type "double3" 176.07266555182935 10.574422267048819 -0.59937592410349105 ;
createNode transform -n "Ref:prp_glassesControl" -p "Ref:prp_glassesControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_glassesControlShape" -p "Ref:prp_glassesControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
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
createNode joint -n "Ref:bip_upperArm_LIK" -p "main";
	addAttr -ci true -sn "lIKshoulder" -ln "lIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.027363251850627383 -4.5758799089046303 0.68487234685543075 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.13366828852481924 5.0143838143038799 23.89939431919759 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" -3.0198066269804258e-014 -12.789982355151066 1.7763568394002505e-015 ;
	setAttr ".r" -type "double3" -1.9793932013793586e-013 -8.5345012500044742e-028 4.1580610230988722e-027 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -17.920095273324829 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" 4.9737991503207013e-014 -11.53565268171478 4.4408920985006262e-016 ;
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
	setAttr ".rst" -type "double3" 8.6157868439565117 68.18945772579265 -2.3051203236669653 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 12.95850510015222 2.5081454074229441 2.6652077747291276 ;
	setAttr ".sp" -type "double3" 12.958505100152227 2.5081454074229441 2.6652077747291294 ;
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
	setAttr ".rst" -type "double3" 5.5681829547068631 44.069262979247753 -1.4897457338785003 ;
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
	setAttr ".rst" -type "double3" 5.1792316037336548 -11.694371514223832 -0.029724186664360719 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
	setAttr ".sp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
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
	setAttr ".tg[0].tot" -type "double3" 18.526688054859083 -1.8894752280736782 1.1754620408506276 ;
	setAttr ".rst" -type "double3" 0 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".rp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
	setAttr ".sp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
createNode transform -n "likHandControlZeroGroup" -p "likHandControlWeaponGroup";
	setAttr ".t" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506278 ;
	setAttr ".rp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506282 ;
	setAttr ".sp" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506282 ;
createNode transform -n "likHandControl" -p "likHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lIKcontrol" -ln "lIKcontrol" -at "message";
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
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooTrigCmd0" -type "string" "\n";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other +\" -objs %1\" ) #;\r\n";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\r\nzooChangeSpace ( \"-attr aim \"+ $other +\" -objs %1\" ) #;\r\n";
	setAttr ".zooCmd2" -type "string" "toggle weapon parent^int $other = !`getAttr #.weaponParent`;\r\nzooChangeSpace ( \"-attr weaponParent \"+ $other +\" -objs %1\" ) #;\r\n";
createNode nurbsSurface -n "likHandControlShape" -p "likHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
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
	setAttr ".lr" -type "double3" -17.754445068895141 0.43657306624616887 24.571436521545589 ;
	setAttr ".rsrr" -type "double3" -17.786426984800009 5.0143838143038764 23.899394319197619 ;
	setAttr -k on ".w0";
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 18.526688054859079 43.613690938746259 1.1754620408506227 ;
	setAttr ".rpt" -type "double3" -19.598735192979465 1.7277455807494784 -14.951483522911479 ;
	setAttr ".sp" -type "double3" 18.526688054859079 43.613690938746267 1.1754620408506227 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-015 0 ;
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
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -5.9635400277440939e-016 7.9513867036587919e-016 0 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -1.4729616761930426 -3.4921260408693287 1.9066828826915321 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 -4.3871831322253591e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 4.3871831322253591e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -4.3871831322253591e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 4.3871831322253591e-016 4.5
		-1.1498370615023457e-015 -1.9758116319496253 -4.5
		4.5 -1.9758116319496253 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.9758116319496251 4.5
		-4.5 -1.9758116319496253 7.1390647300023646e-016
		-1.1498370615023457e-015 -1.9758116319496253 -4.5
		4.5 -1.9758116319496253 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.9758116319496251 4.5
		-1.1498370615023457e-015 -3.9516232638992506 -4.5
		4.5 -3.9516232638992506 -2.1430611191891602e-016
		6.0860333699758185e-016 -3.9516232638992506 4.5
		-4.5 -3.9516232638992506 8.3636710838247419e-016
		-1.1498370615023457e-015 -3.9516232638992506 -4.5
		4.5 -3.9516232638992506 -2.1430611191891602e-016
		6.0860333699758185e-016 -3.9516232638992506 4.5
		-1.1498370615023457e-015 -5.9274348958488758 -4.5
		4.5 -5.9274348958488758 -9.1845476536678294e-017
		6.0860333699758185e-016 -5.9274348958488758 4.5
		-4.5 -5.9274348958488758 9.5882774376471192e-016
		-1.1498370615023457e-015 -5.9274348958488758 -4.5
		4.5 -5.9274348958488758 -9.1845476536678294e-017
		6.0860333699758185e-016 -5.9274348958488758 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -11.219354880345854 3.9223204015948974 -26.791038517672146 ;
	setAttr ".rp" -type "double3" -1.5335015943631907 -2.1571437005303489 2.270473323921224 ;
	setAttr ".sp" -type "double3" -1.5335015943631907 -2.1571437005303489 2.270473323921224 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.53350159436319 -2.1571437005303595 2.2704733239212187 ;
	setAttr ".sp" -type "double3" -1.53350159436319 -2.1571437005303595 2.2704733239212187 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.53350159436319 -2.1571437005303595 2.2704733239212187 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.7393658414253611e-015 0 7.9513867036587939e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.064164904067018e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.064164904067018e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.064164904067018e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.064164904067018e-016 2.25
		-5.7491853075117283e-016 -0.92961722927874779 -2.25
		2.25 -0.92961722927874779 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.92961722927874768 2.25
		-2.25 -0.92961722927874779 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.92961722927874779 -2.25
		2.25 -0.92961722927874779 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.92961722927874768 2.25
		-5.7491853075117283e-016 -1.8592344585574956 -2.25
		2.25 -1.8592344585574956 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8592344585574956 2.25
		-2.25 -1.8592344585574956 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.8592344585574956 -2.25
		2.25 -1.8592344585574956 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.8592344585574956 2.25
		-5.7491853075117283e-016 -2.7888516878362433 -2.25
		2.25 -2.7888516878362433 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7888516878362433 2.25
		-2.25 -2.7888516878362433 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.7888516878362433 -2.25
		2.25 -2.7888516878362433 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.7888516878362433 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 2.1090313501742193 0 0 ;
	setAttr ".rp" -type "double3" -7.2372663417752392e-015 -2.7888516878362619 -1.8873791418627661e-015 ;
	setAttr ".sp" -type "double3" -7.2372663417752392e-015 -2.7888516878362619 -1.8873791418627661e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.7331249203020889e-015 -2.7888516878362588 -5.3845816694320092e-015 ;
	setAttr ".sp" -type "double3" -3.7331249203020889e-015 -2.7888516878362588 -5.3845816694320092e-015 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.7331249203020889e-015 -2.7888516878362588 -5.3845816694320092e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.7272125173400575e-017 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.2037976304112938e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2037976304112938e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2037976304112938e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2037976304112938e-016 2.25
		-5.7491853075117283e-016 -0.54214225597497889 -2.25
		2.25 -0.54214225597497889 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.54214225597497878 2.25
		-2.25 -0.54214225597497889 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.54214225597497889 -2.25
		2.25 -0.54214225597497889 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.54214225597497878 2.25
		-5.7491853075117283e-016 -1.0842845119499578 -2.25
		2.25 -1.0842845119499578 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0842845119499578 2.25
		-2.25 -1.0842845119499578 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.0842845119499578 -2.25
		2.25 -1.0842845119499578 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0842845119499578 2.25
		-5.7491853075117283e-016 -1.6264267679249367 -2.25
		2.25 -1.6264267679249367 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6264267679249367 2.25
		-2.25 -1.6264267679249367 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6264267679249367 -2.25
		2.25 -1.6264267679249367 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6264267679249367 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -17.536781633172225 0 3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" -7.4940054162198066e-016 -1.626426767924946 -2.9976021664879227e-015 ;
	setAttr ".sp" -type "double3" -7.4940054162198066e-016 -1.626426767924946 -2.9976021664879227e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -7.0082828429463007e-016 -1.6264267679249409 -9.9920072216264089e-016 ;
	setAttr ".sp" -type "double3" -7.0082828429463007e-016 -1.6264267679249409 -9.9920072216264089e-016 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.0082828429463007e-016 -1.6264267679249409 -9.9920072216264089e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5405811738338913e-015 -3.9756933518293969e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3749560732810829e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3749560732810829e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3749560732810829e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3749560732810829e-016 2.25
		-5.7491853075117283e-016 -0.61922516592794852 -2.25
		2.25 -0.61922516592794852 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61922516592794841 2.25
		-2.25 -0.61922516592794852 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.61922516592794852 -2.25
		2.25 -0.61922516592794852 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61922516592794841 2.25
		-5.7491853075117283e-016 -1.238450331855897 -2.25
		2.25 -1.238450331855897 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.238450331855897 2.25
		-2.25 -1.238450331855897 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.238450331855897 -2.25
		2.25 -1.238450331855897 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.238450331855897 2.25
		-5.7491853075117283e-016 -1.8576754977838457 -2.25
		2.25 -1.8576754977838457 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8576754977838457 2.25
		-2.25 -1.8576754977838457 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8576754977838457 -2.25
		2.25 -1.8576754977838457 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8576754977838457 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 88.726163866365042 80.742213464700896 64.177721267489702 ;
	setAttr ".rp" -type "double3" -0.2241741846272155 -6.146791269628622 2.4256999109597643 ;
	setAttr ".sp" -type "double3" -0.2241741846272155 -6.146791269628622 2.4256999109597643 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.2241741846272145 -6.1467912696286202 2.4256999109597608 ;
	setAttr ".sp" -type "double3" -0.2241741846272145 -6.1467912696286202 2.4256999109597608 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.22417418462721184 -9.5482499533033085 1.4515184665750267 ;
	setAttr ".sp" -type "double3" -0.22417418462721184 -9.5482499533033085 1.4515184665750267 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.22417418462721272 -6.1467912696286202 2.4256999109597572 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.4544250346801137e-017 0 1.8480762065144461e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.8281701528312282e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.8281701528312282e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.8281701528312282e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.8281701528312282e-016 2.25
		-5.7491853075117283e-016 -0.82333464190605821 -2.25
		2.25 -0.82333464190605821 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.8233346419060581 2.25
		-2.25 -0.82333464190605821 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.82333464190605821 -2.25
		2.25 -0.82333464190605821 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.8233346419060581 2.25
		-5.7491853075117283e-016 -1.6466692838121164 -2.25
		2.25 -1.6466692838121164 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.6466692838121164 2.25
		-2.25 -1.6466692838121164 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.6466692838121164 -2.25
		2.25 -1.6466692838121164 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.6466692838121164 2.25
		-5.7491853075117283e-016 -2.4700039257181747 -2.25
		2.25 -2.4700039257181747 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.4700039257181747 2.25
		-2.25 -2.4700039257181747 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.4700039257181747 -2.25
		2.25 -2.4700039257181747 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.4700039257181747 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 42.537290554130038 0 1.8325461543588618e-016 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -2.4700039257181907 0 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -2.4700039257181907 0 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -2.4700039257181885 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 -2.4700039257181885 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -2.4700039257181885 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 2.3854160110976364e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.3141668172045759e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3141668172045759e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3141668172045759e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3141668172045759e-016 2.25
		-5.7491853075117283e-016 -0.59184811882651989 -2.25
		2.25 -0.59184811882651989 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59184811882651978 2.25
		-2.25 -0.59184811882651989 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.59184811882651989 -2.25
		2.25 -0.59184811882651989 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.59184811882651978 2.25
		-5.7491853075117283e-016 -1.1836962376530398 -2.25
		2.25 -1.1836962376530398 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1836962376530398 2.25
		-2.25 -1.1836962376530398 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1836962376530398 -2.25
		2.25 -1.1836962376530398 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1836962376530398 2.25
		-5.7491853075117283e-016 -1.7755443564795597 -2.25
		2.25 -1.7755443564795597 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7755443564795597 2.25
		-2.25 -1.7755443564795597 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7755443564795597 -2.25
		2.25 -1.7755443564795597 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7755443564795597 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" -1.9474664561516108 3.975693351829396e-016 3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" 0 -1.7755443564795534 -5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" 0 -1.7755443564795534 -5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0 -1.7755443564795517 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 0 -1.7755443564795517 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.7755443564795517 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 0 -3.975693351829396e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.4113233843087074e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4113233843087074e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4113233843087074e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4113233843087074e-016 2.25
		-5.7491853075117283e-016 -0.63560354676719621 -2.25
		2.25 -0.63560354676719621 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.6356035467671961 2.25
		-2.25 -0.63560354676719621 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.63560354676719621 -2.25
		2.25 -0.63560354676719621 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.6356035467671961 2.25
		-5.7491853075117283e-016 -1.2712070935343924 -2.25
		2.25 -1.2712070935343924 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2712070935343924 2.25
		-2.25 -1.2712070935343924 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2712070935343924 -2.25
		2.25 -1.2712070935343924 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2712070935343924 2.25
		-5.7491853075117283e-016 -1.9068106403015888 -2.25
		2.25 -1.9068106403015888 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9068106403015888 2.25
		-2.25 -1.9068106403015888 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.9068106403015888 -2.25
		2.25 -1.9068106403015888 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9068106403015888 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 120.35943544993424 79.201969596661044 101.20097072232727 ;
	setAttr ".rp" -type "double3" -0.33581227315729351 -5.9014208378593267 0.44152763922975424 ;
	setAttr ".sp" -type "double3" -0.33581227315729351 -5.9014208378593267 0.44152763922975424 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.33581227315729434 -5.9014208378593223 0.44152763922976135 ;
	setAttr ".sp" -type "double3" -0.33581227315729434 -5.9014208378593223 0.44152763922976135 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.33581227315729834 -9.806307006017505 -1.2688096490027923 ;
	setAttr ".sp" -type "double3" -0.33581227315729834 -9.806307006017505 -1.2688096490027923 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.33581227315729567 -5.901420837859316 0.44152763922976845 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.9513867036587959e-016 3.975693351829396e-016 -2.981770013872047e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -2.2011776378343274e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.2011776378343274e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.2011776378343274e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.2011776378343274e-016 2.25
		-5.7491853075117283e-016 -0.99132227895269454 -2.25
		2.25 -0.99132227895269454 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.99132227895269442 2.25
		-2.25 -0.99132227895269454 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.99132227895269454 -2.25
		2.25 -0.99132227895269454 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.99132227895269442 2.25
		-5.7491853075117283e-016 -1.9826445579053891 -2.25
		2.25 -1.9826445579053891 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.9826445579053891 2.25
		-2.25 -1.9826445579053891 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.9826445579053891 -2.25
		2.25 -1.9826445579053891 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.9826445579053891 2.25
		-5.7491853075117283e-016 -2.9739668368580836 -2.25
		2.25 -2.9739668368580836 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.9739668368580836 2.25
		-2.25 -2.9739668368580836 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.9739668368580836 -2.25
		2.25 -2.9739668368580836 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.9739668368580836 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 52.877712007223614 3.975693351829396e-016 -1.987846675914698e-016 ;
	setAttr ".rp" -type "double3" -4.8849813083506888e-015 -2.9739668368580832 0 ;
	setAttr ".sp" -type "double3" -4.8849813083506888e-015 -2.9739668368580832 0 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -5.3290705182007514e-015 -2.9739668368580787 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-015 -2.9739668368580787 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.3290705182007514e-015 -2.9739668368580787 3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 3.975693351829396e-016 -7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.6241847019888898e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6241847019888898e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6241847019888898e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6241847019888898e-016 2.25
		-5.7491853075117283e-016 -0.73146776186580242 -2.25
		2.25 -0.73146776186580242 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.73146776186580231 2.25
		-2.25 -0.73146776186580242 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.73146776186580242 -2.25
		2.25 -0.73146776186580242 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.73146776186580231 2.25
		-5.7491853075117283e-016 -1.4629355237316048 -2.25
		2.25 -1.4629355237316048 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4629355237316048 2.25
		-2.25 -1.4629355237316048 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4629355237316048 -2.25
		2.25 -1.4629355237316048 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4629355237316048 2.25
		-5.7491853075117283e-016 -2.1944032855974074 -2.25
		2.25 -2.1944032855974074 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.1944032855974074 2.25
		-2.25 -2.1944032855974074 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.1944032855974074 -2.25
		2.25 -2.1944032855974074 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.1944032855974074 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 13.190763892526633 -7.9513867036587919e-016 7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" 2.6645352591003757e-015 -2.1944032855974047 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-015 -2.1944032855974047 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -2.1944032855973994 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -2.1944032855973994 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -2.1944032855973994 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.7729706471579617e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7729706471579617e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7729706471579617e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7729706471579617e-016 2.25
		-5.7491853075117283e-016 -0.79847499458794235 -2.25
		2.25 -0.79847499458794235 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79847499458794224 2.25
		-2.25 -0.79847499458794235 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.79847499458794235 -2.25
		2.25 -0.79847499458794235 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79847499458794224 2.25
		-5.7491853075117283e-016 -1.5969499891758847 -2.25
		2.25 -1.5969499891758847 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5969499891758847 2.25
		-2.25 -1.5969499891758847 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5969499891758847 -2.25
		2.25 -1.5969499891758847 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5969499891758847 2.25
		-5.7491853075117283e-016 -2.3954249837638271 -2.25
		2.25 -2.3954249837638271 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3954249837638271 2.25
		-2.25 -2.3954249837638271 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3954249837638271 -2.25
		2.25 -2.3954249837638271 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3954249837638271 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 129.59657515442052 75.007882671980255 113.80536352798225 ;
	setAttr ".rp" -type "double3" -0.6818307462732659 -5.2598119721035008 -1.2364832923449298 ;
	setAttr ".sp" -type "double3" -0.6818307462732659 -5.2598119721035008 -1.2364832923449298 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.68183074627326645 -5.2598119721034902 -1.236483292344932 ;
	setAttr ".sp" -type "double3" -0.68183074627326645 -5.2598119721034902 -1.236483292344932 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.68183074627326556 -8.7045659815838334 -2.4848680075782408 ;
	setAttr ".sp" -type "double3" -0.68183074627326556 -8.7045659815838334 -2.4848680075782408 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.68183074627326778 -5.259811972103476 -1.236483292344932 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 -2.7829853462805787e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.9254847255034845e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9254847255034845e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.9254847255034845e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.9254847255034845e-016 2.25
		-5.7491853075117283e-016 -0.86716122922850747 -2.25
		2.25 -0.86716122922850747 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.86716122922850736 2.25
		-2.25 -0.86716122922850747 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.86716122922850747 -2.25
		2.25 -0.86716122922850747 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.86716122922850736 2.25
		-5.7491853075117283e-016 -1.7343224584570149 -2.25
		2.25 -1.7343224584570149 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7343224584570149 2.25
		-2.25 -1.7343224584570149 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7343224584570149 -2.25
		2.25 -1.7343224584570149 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7343224584570149 2.25
		-5.7491853075117283e-016 -2.6014836876855223 -2.25
		2.25 -2.6014836876855223 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6014836876855223 2.25
		-2.25 -2.6014836876855223 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.6014836876855223 -2.25
		2.25 -2.6014836876855223 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.6014836876855223 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 52.884339545171123 0 -1.987846675914697e-016 ;
	setAttr ".rp" -type "double3" 3.1086244689504383e-015 -2.6014836876855139 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 3.1086244689504383e-015 -2.6014836876855139 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.1086244689504383e-015 -2.601483687685521 5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" 3.1086244689504383e-015 -2.601483687685521 5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 -2.601483687685521 5.3290705182007514e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 2.385416011097636e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000007 1.0000000000000007 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.2225645835970077e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2225645835970077e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2225645835970077e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2225645835970077e-016 2.25
		-5.7491853075117283e-016 -0.55059414031238496 -2.25
		2.25 -0.55059414031238496 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.55059414031238485 2.25
		-2.25 -0.55059414031238496 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.55059414031238496 -2.25
		2.25 -0.55059414031238496 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.55059414031238485 2.25
		-5.7491853075117283e-016 -1.1011882806247699 -2.25
		2.25 -1.1011882806247699 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1011882806247699 2.25
		-2.25 -1.1011882806247699 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1011882806247699 -2.25
		2.25 -1.1011882806247699 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1011882806247699 2.25
		-5.7491853075117283e-016 -1.6517824209371548 -2.25
		2.25 -1.6517824209371548 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6517824209371548 2.25
		-2.25 -1.6517824209371548 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6517824209371548 -2.25
		2.25 -1.6517824209371548 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6517824209371548 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 3.9408989797984488 -7.9513867036587959e-016 0 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.6517824209371561 0 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.6517824209371561 0 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.3322676295501878e-015 -1.6517824209371614 0 ;
	setAttr ".sp" -type "double3" -1.3322676295501878e-015 -1.6517824209371614 0 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3322676295501878e-015 -1.6517824209371614 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635187e-015 0 7.9513867036587959e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.7259397738668063e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7259397738668063e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7259397738668063e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7259397738668063e-016 2.25
		-5.7491853075117283e-016 -0.77729417224504671 -2.25
		2.25 -0.77729417224504671 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.7772941722450466 2.25
		-2.25 -0.77729417224504671 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.77729417224504671 -2.25
		2.25 -0.77729417224504671 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.7772941722450466 2.25
		-5.7491853075117283e-016 -1.5545883444900934 -2.25
		2.25 -1.5545883444900934 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5545883444900934 2.25
		-2.25 -1.5545883444900934 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.5545883444900934 -2.25
		2.25 -1.5545883444900934 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.5545883444900934 2.25
		-5.7491853075117283e-016 -2.3318825167351402 -2.25
		2.25 -2.3318825167351402 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3318825167351402 2.25
		-2.25 -2.3318825167351402 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.3318825167351402 -2.25
		2.25 -2.3318825167351402 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.3318825167351402 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 137.01639204628725 66.224928839597837 113.49273343209317 ;
	setAttr ".rp" -type "double3" -0.76140173022925361 -4.822306354306253 -2.7821479014941688 ;
	setAttr ".sp" -type "double3" -0.76140173022925361 -4.822306354306253 -2.7821479014941688 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.76140173022925217 -4.8223063543062512 -2.7821479014941737 ;
	setAttr ".sp" -type "double3" -0.76140173022925217 -4.8223063543062512 -2.7821479014941737 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.76140173022924917 -7.8297915961217397 -3.5803236997295675 ;
	setAttr ".sp" -type "double3" -0.76140173022924917 -7.8297915961217397 -3.5803236997295675 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.7614017302292504 -4.8223063543062512 -2.7821479014941772 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.9878466759146985e-016 0 -3.975693351829396e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.6428991064037674e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6428991064037674e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6428991064037674e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6428991064037674e-016 2.25
		-5.7491853075117283e-016 -0.73989598034073278 -2.25
		2.25 -0.73989598034073278 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.73989598034073267 2.25
		-2.25 -0.73989598034073278 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.73989598034073278 -2.25
		2.25 -0.73989598034073278 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.73989598034073267 2.25
		-5.7491853075117283e-016 -1.4797919606814656 -2.25
		2.25 -1.4797919606814656 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4797919606814656 2.25
		-2.25 -1.4797919606814656 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4797919606814656 -2.25
		2.25 -1.4797919606814656 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4797919606814656 2.25
		-5.7491853075117283e-016 -2.2196879410221984 -2.25
		2.25 -2.2196879410221984 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2196879410221984 2.25
		-2.25 -2.2196879410221984 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.2196879410221984 -2.25
		2.25 -2.2196879410221984 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.2196879410221984 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 48.093582389589173 1.5902773407317584e-015 -4.9696166897867449e-017 ;
	setAttr ".rp" -type "double3" 1.6653345369377348e-015 -2.2196879410221895 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 1.6653345369377348e-015 -2.2196879410221895 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.7470027081099033e-015 -2.2196879410221868 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 3.7470027081099033e-015 -2.2196879410221868 -1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.7470027081099033e-015 -2.2196879410221868 -1.0658141036401503e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 -1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.015999321705714e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.015999321705714e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.015999321705714e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.015999321705714e-016 2.25
		-5.7491853075117283e-016 -0.45756541666425304 -2.25
		2.25 -0.45756541666425304 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45756541666425299 2.25
		-2.25 -0.45756541666425304 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.45756541666425304 -2.25
		2.25 -0.45756541666425304 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.45756541666425299 2.25
		-5.7491853075117283e-016 -0.91513083332850609 -2.25
		2.25 -0.91513083332850609 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.91513083332850609 2.25
		-2.25 -0.91513083332850609 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.91513083332850609 -2.25
		2.25 -0.91513083332850609 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.91513083332850609 2.25
		-5.7491853075117283e-016 -1.3726962499927591 -2.25
		2.25 -1.3726962499927591 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3726962499927591 2.25
		-2.25 -1.3726962499927591 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3726962499927591 -2.25
		2.25 -1.3726962499927591 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3726962499927591 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" -0.7802449121457522 0 0 ;
	setAttr ".rp" -type "double3" -1.3322676295501878e-015 -1.3726962499927673 0 ;
	setAttr ".sp" -type "double3" -1.3322676295501878e-015 -1.3726962499927673 0 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.8302694349567901e-015 -1.3726962499927744 0 ;
	setAttr ".sp" -type "double3" -3.8302694349567901e-015 -1.3726962499927744 0 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.8302694349567901e-015 -1.3726962499927744 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635152e-015 -1.590277340731758e-015 3.180554681463516e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000007 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 -1.2921107436403226e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2921107436403226e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2921107436403226e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2921107436403226e-016 2.25
		-5.7491853075117283e-016 -0.58191494635799712 -2.25
		2.25 -0.58191494635799712 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58191494635799701 2.25
		-2.25 -0.58191494635799712 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58191494635799712 -2.25
		2.25 -0.58191494635799712 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58191494635799701 2.25
		-5.7491853075117283e-016 -1.1638298927159942 -2.25
		2.25 -1.1638298927159942 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1638298927159942 2.25
		-2.25 -1.1638298927159942 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1638298927159942 -2.25
		2.25 -1.1638298927159942 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1638298927159942 2.25
		-5.7491853075117283e-016 -1.7457448390739914 -2.25
		2.25 -1.7457448390739914 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7457448390739914 2.25
		-2.25 -1.7457448390739914 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7457448390739914 -2.25
		2.25 -1.7457448390739914 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7457448390739914 2.25
		
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
	setAttr ".rst" -type "double3" 18.526688054859083 46.577408386670697 1.1754620408506242 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-014 -2.9637174479243931 
		-2.9280595128224984e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.7829853462805764e-015 -1.1529510720305255e-014 
		-3.1805546814635183e-015 ;
	setAttr ".tg[1].tot" -type "double3" -1.0658141036401503e-014 -2.9637174479244419 
		-8.306908328181735e-015 ;
	setAttr ".tg[1].tor" -type "double3" -5.9635400277440935e-015 1.311978806103701e-014 
		-2.8624992133171654e-014 ;
	setAttr ".lr" -type "double3" -17.754445068895141 0.43657306624616782 24.571436521545586 ;
	setAttr ".rst" -type "double3" 20.814386544446446 -1.3120586278082342 15.853344653820189 ;
	setAttr ".rsrr" -type "double3" -17.786426984800009 5.0143838143038817 23.899394319197611 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "ankleLift" -ln "ankleLift" -min 0 -max 55 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "lFootControl" -ln "lFootControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 0 22.958847643504587 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 5.6649935656096364 5.4923664482001096 -2.5791636238583249 ;
	setAttr ".rpt" -type "double3" -1.4548050599160756 0 -2.0054355782048616 ;
	setAttr ".sp" -type "double3" 5.6649935656096364 5.4923664482001096 -2.5791636238583249 ;
	setAttr ".hdl" -type "double3" 5.6649935656096364 5.4923664482001096 -2.5791636238583249 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		3.0199483712800261 5.4923664482001096 -2.579163623858324
		4.3424709684448306 1.1264304559229759 -6.2582953505579777
		4.3424709684448315 1.1264304559229759 2.0541090687979535
		4.3424709684448306 9.8583024404772424 2.0541090687979535
		4.3424709684448306 9.8583024404772424 -6.2582953505579777
		4.3424709684448306 1.1264304559229759 -6.2582953505579777
		6.9875161627744404 1.126430455922975 -6.2582953505579777
		6.9875161627744404 1.1264304559229759 2.0541090687979544
		6.9875161627744404 9.8583024404772441 2.0541090687979535
		6.9875161627744404 9.8583024404772441 -6.2582953505579777
		6.9875161627744404 1.1264304559229759 -6.2582953505579777
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		8.3100387599392445 5.4923664482001096 -2.5791636238583235
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 4.2101885056935604 5.492366448200106 -4.5845992020631865 ;
	setAttr ".sp" -type "double3" 4.2101885056935604 5.492366448200106 -4.5845992020631865 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 4.2101885056935604 5.492366448200106 -4.5845992020631865 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 54.832683754088428 -2.254893947280276 -3.1962444580370182 ;
	setAttr ".rp" -type "double3" 4.9960036108132044e-016 -8.0914762803342253 -1.0096089079615369 ;
	setAttr ".sp" -type "double3" 4.9960036108132044e-016 -8.0914762803342253 -1.0096089079615369 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" 4.9960036108132044e-016 -8.0914762803342253 -1.0096089079615369 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".r" -type "double3" -4.4139062980501586e-032 0 0 ;
	setAttr ".rp" -type "double3" -2.643700328796911 -1.8344356095246436e-017 0.24879554651557112 ;
	setAttr ".sp" -type "double3" -2.643700328796911 -1.8344356095246436e-017 0.24879554651557112 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.643700328796911 -1.8344356095246436e-017 0.24879554651557112 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".r" -type "double3" -4.4139062980501586e-032 0 0 ;
	setAttr ".rp" -type "double3" 5.2833968535077984 3.6660930218728196e-017 0.26603384846393663 ;
	setAttr ".sp" -type "double3" 5.2833968535077984 3.6660930218728196e-017 0.26603384846393663 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 5.2833968535077984 3.6660930218728196e-017 0.26603384846393663 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" 7.0622500768802538e-031 3.1805546814635168e-015 -1.4124500153760508e-030 ;
	setAttr ".rp" -type "double3" -3.3477730645548238 -2.3229842109304078e-017 -10.635869842201565 ;
	setAttr ".sp" -type "double3" -3.3477730645548238 -2.3229842109304078e-017 -10.635869842201565 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -3.3477730645548238 -2.3229842109304078e-017 -10.635869842201565 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" 7.0622500768802538e-031 3.1805546814635168e-015 -1.4124500153760508e-030 ;
	setAttr ".rp" -type "double3" 1.1230476710693933 7.7927086385800825e-018 15.533723560158112 ;
	setAttr ".sp" -type "double3" 1.1230476710693933 7.7927086385800825e-018 15.533723560158112 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 1.1230476710693933 7.7927086385800825e-018 15.533723560158112 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -90.000000000000028 3.9109141386044155 3.9849731402038647e-016 ;
	setAttr ".rp" -type "double3" -0.41497113122545054 1.2359925673349295 -5.4126831129360529 ;
	setAttr ".sp" -type "double3" -0.41497113122545054 1.2359925673349295 -5.4126831129360529 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -0.41497113122545054 1.2359925673349295 -5.4126831129360529 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 35.230235293910113 0 0 ;
	setAttr ".rp" -type "double3" -3.3306690738754696e-015 6.0270398489583989 4.2563738808651799 ;
	setAttr ".sp" -type "double3" -3.3306690738754696e-015 6.0270398489583989 4.2563738808651799 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" -3.3306690738754696e-015 6.0270398489583989 4.2563738808651799 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.9955633076562886 -2.3306241014501459 1.6624459833257554 ;
	setAttr ".r" -type "double3" 56.965237689074129 -13.003880618108161 -19.087465128330965 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 3.4831674847806404 -0.013501516932760365 -4.5845992020666966 ;
	setAttr ".rpt" -type "double3" 1.5123957970744866 2.3441256196332412 2.9221532178387641 ;
	setAttr ".sp" -type "double3" 3.4831674847758625 -0.01350151693213153 -4.5845992020649202 ;
	setAttr ".spt" -type "double3" 0 -5.2041704279304236e-018 -8.8817841970012543e-016 ;
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
	setAttr ".rst" -type "double3" 0.11545878208729743 -9.1416458856996137 -15.971502470613238 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6932476587542071 0.61052016259185626 -8.7951238426755385 ;
	setAttr ".r" -type "double3" -1.2143553414317545e-014 -19.047932571086186 7.1755050279366355e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 6.0931594010043622 0.62547240579088181 1.4746248284873198 ;
	setAttr ".rpt" -type "double3" -0.81488272607820933 0 1.9078158899539688 ;
	setAttr ".sp" -type "double3" 6.0931593671511282 0.6254724223963638 1.4746248172922067 ;
	setAttr ".spt" -type "double3" 1.7763568394002509e-015 3.3306690738754711e-016 6.6613381477509422e-016 ;
	setAttr ".pv" -type "double3" 0.078690374164820165 1.6336811956315695 1.1510402147855696 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -90.000000000000028 3.9109141386044155 3.9849731402038647e-016 ;
	setAttr ".rp" -type "double3" 0.70807653984394081 1.2359925673349297 10.121040447222061 ;
	setAttr ".sp" -type "double3" 0.70807653984394081 1.2359925673349297 10.121040447222061 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 0.70807653984394081 1.2359925673349297 10.121040447222061 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 90.000000000000028 -3.5311250384401269e-031 -3.9109141386044128 ;
	setAttr ".rp" -type "double3" 0.044830919683320758 -5.4283818684257987 -1.2359925673349321 ;
	setAttr ".sp" -type "double3" 0.044830919683320758 -5.4283818684257987 -1.2359925673349321 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" 0.044830919683320758 -5.4283818684257987 -1.2359925673349321 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.1141250685017061 0.24938582760202363 -7.8500508886415652 ;
	setAttr ".r" -type "double3" -1.2224304263461153e-014 -19.0479325710862 5.0629469680675366e-015 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 7.3377662053211123 0.98660674173477636 5.7285561628778217 ;
	setAttr ".rpt" -type "double3" -2.2713390370381332 0 2.0810843117971936 ;
	setAttr ".sp" -type "double3" 7.3377662053211106 0.98660674173477569 5.7285561628778243 ;
	setAttr ".spt" -type "double3" 0 4.4408920985006281e-016 8.8817841970012543e-016 ;
	setAttr ".pv" -type "double3" -1.995342604603205 -2.7219253110874901e-008 0.13641074098214101 ;
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
	setAttr ".lr" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".o" -type "double3" -90.000000000000028 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "lToeControlZeroGroup" -p "lReverseHeelLift";
	setAttr ".t" -type "double3" 0.70807653984393859 1.2359925673349283 10.121040447222061 ;
	setAttr ".r" -type "double3" -1.1505436496695838e-014 3.9109141386044124 1.9132367643637147e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "lToeControl" -p "lToeControlZeroGroup";
	addAttr -ci true -sn "lToeControl" -ln "lToeControl" -at "message";
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-2.6450451943296094 -3.4356258884492741e-016 -5.7260431474154559e-016
		-1.3225225971648042 -1.4466927085173258 -0.297230171012274
		-1.3225225971648045 -1.4466927085173256 4.3340362611459717
		-1.3225225971648047 1.4466927085173256 4.3340362611459717
		-1.3225225971648045 1.4466927085173256 -0.29723017101227422
		-1.3225225971648042 -1.4466927085173253 -0.29723017101227445
		1.3225225971648049 -1.4466927085173262 -0.29723017101227422
		1.3225225971648047 -1.4466927085173256 4.3340362611459717
		1.3225225971648045 1.446692708517326 4.3340362611459717
		1.3225225971648047 1.446692708517326 -0.29723017101227445
		1.3225225971648049 -1.4466927085173258 -0.29723017101227467
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		2.6450451943296094 -4.0459982611352592e-016 -1.7555810021690764e-016
		
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
	setAttr ".tg[0].tot" -type "double3" 0 -4.7380947893894402e-015 -1.4905820181542874e-015 ;
	setAttr ".tg[0].tor" -type "double3" -54.769764706089923 -9.3381400322682318e-007 
		0 ;
	setAttr ".lr" -type "double3" -54.769764706089916 22.958847643504587 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -8.8817841970012523e-016 
		-1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -54.769764706089916 22.958847643504587 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.027373743659420892 -4.5765647948767123 0.6849733117868152 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.86633171147517 -5.0143838143038764 -23.899394319197636 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" 3.1538066894043482e-005 12.789999642748398 -1.4758827262539853e-006 ;
	setAttr ".r" -type "double3" 2.8459835098288835e-013 1.1054022067977989e-018 -5.1299562516575792e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -17.920095273324829 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" -1.9303702760709029e-005 11.535682219505411 1.4603536925728022e-005 ;
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
	setAttr ".rst" -type "double3" -8.61579 68.189499999999953 -2.3051199999999992 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -12.958518997443834 2.5081412931600795 2.6652044567024404 ;
	setAttr ".sp" -type "double3" -12.958518997443832 2.5081412931600795 2.6652044567024422 ;
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
	setAttr ".rst" -type "double3" -5.5681810025557983 44.069258706836735 -1.4897444567207943 ;
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
	setAttr ".rst" -type "double3" -5.1792100000000083 -11.694400000000009 -0.029719999999997082 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -18.526699999999632 46.577399999996814 1.1754599999816464 ;
	setAttr ".sp" -type "double3" -18.526699999999632 46.577399999996814 1.1754599999816464 ;
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
	setAttr ".tg[0].tot" -type "double3" -18.526699999999636 -1.8894836147475675 1.1754599999816464 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -7.1054273576010019e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 0 2.2204460492503131e-016 ;
	setAttr ".rp" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
	setAttr ".sp" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
createNode transform -n "rikHandControlZeroGroup" -p "rikHandControlWeaponGroup";
	setAttr ".t" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
	setAttr ".rp" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
	setAttr ".sp" -type "double3" -18.526699999999636 46.577399999996814 1.1754599999816462 ;
createNode transform -n "rikHandControl" -p "rikHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 17;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
	setAttr ".zooTrigCmd0" -type "string" "//blank";
	setAttr ".zooCmd0" -type "string" "toggle lock^int $other = !`getAttr #.lock`;\r\nzooChangeSpace ( \"-attr lock \"+ $other +\" -objs %1\" ) #;";
	setAttr ".zooCmd1" -type "string" "toggle aim^int $other = !`getAttr #.aim`;\r\nzooChangeSpace ( \"-attr aim \"+ $other +\" -objs %1\" ) #;";
createNode nurbsSurface -n "rikHandControlShape" -p "rikHandControl";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 7;
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
	setAttr ".lr" -type "double3" 162.24555324351442 -0.43588784511497974 -24.571534859649979 ;
	setAttr ".rsrr" -type "double3" 162.21357395496352 -5.0143109351771793 -23.89940507092205 ;
	setAttr -k on ".w0";
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -18.526700000000005 49.541097945595098 1.1754600000000082 ;
	setAttr ".rpt" -type "double3" -18.72335150280194 -85.024512769311769 11.165595070102121 ;
	setAttr ".sp" -type "double3" -18.526700000000005 49.541097945595112 1.1754600000000082 ;
	setAttr ".spt" -type "double3" 0 -1.4210854715202002e-014 0 ;
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
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.1927080055488184e-015 -3.975693351829396e-016 0 ;
	setAttr ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 1.4729616761930422 3.4921260408693287 -1.9066828826915336 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-1.1498370615023457e-015 4.387154262978696e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -4.387154262978696e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 4.387154262978696e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -4.387154262978696e-016 4.5
		-1.1498370615023457e-015 1.9757986303967738 -4.5
		4.5 1.9757986303967738 -3.3676674730115375e-016
		6.0860333699758185e-016 1.9757986303967736 4.5
		-4.5 1.9757986303967738 7.1390647300023646e-016
		-1.1498370615023457e-015 1.9757986303967738 -4.5
		4.5 1.9757986303967738 -3.3676674730115375e-016
		6.0860333699758185e-016 1.9757986303967736 4.5
		-1.1498370615023457e-015 3.9515972607935477 -4.5
		4.5 3.9515972607935477 -2.1430611191891602e-016
		6.0860333699758185e-016 3.9515972607935477 4.5
		-4.5 3.9515972607935477 8.3636710838247419e-016
		-1.1498370615023457e-015 3.9515972607935477 -4.5
		4.5 3.9515972607935477 -2.1430611191891602e-016
		6.0860333699758185e-016 3.9515972607935477 4.5
		-1.1498370615023457e-015 5.9273958911903213 -4.5
		4.5 5.9273958911903213 -9.1845476536678294e-017
		6.0860333699758185e-016 5.9273958911903213 4.5
		-4.5 5.9273958911903213 9.5882774376471192e-016
		-1.1498370615023457e-015 5.9273958911903213 -4.5
		4.5 5.9273958911903213 -9.1845476536678294e-017
		6.0860333699758185e-016 5.9273958911903213 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -11.219354880345927 3.9223204015948916 -26.791038517672146 ;
	setAttr ".rp" -type "double3" 1.5335291750970854 2.1571014366876087 -2.270482540753457 ;
	setAttr ".sp" -type "double3" 1.5335291750970854 2.1571014366876087 -2.270482540753457 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.5335291750970894 2.1571014366876096 -2.2704825407534535 ;
	setAttr ".sp" -type "double3" 1.5335291750970894 2.1571014366876096 -2.2704825407534535 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.5335291750970894 2.1571014366876096 -2.2704825407534535 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.0311954631307496e-015 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.0641593048583781e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0641593048583781e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.0641593048583781e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.0641593048583781e-016 2.25
		-5.7491853075117283e-016 0.92961470761935339 -2.25
		2.25 0.92961470761935339 -1.6838337365057687e-016
		3.0430166849879092e-016 0.92961470761935328 2.25
		-2.25 0.92961470761935339 3.5695323650011823e-016
		-5.7491853075117283e-016 0.92961470761935339 -2.25
		2.25 0.92961470761935339 -1.6838337365057687e-016
		3.0430166849879092e-016 0.92961470761935328 2.25
		-5.7491853075117283e-016 1.8592294152387068 -2.25
		2.25 1.8592294152387068 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8592294152387068 2.25
		-2.25 1.8592294152387068 4.1818355419123709e-016
		-5.7491853075117283e-016 1.8592294152387068 -2.25
		2.25 1.8592294152387068 -1.0715305595945801e-016
		3.0430166849879092e-016 1.8592294152387068 2.25
		-5.7491853075117283e-016 2.7888441228580603 -2.25
		2.25 2.7888441228580603 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7888441228580603 2.25
		-2.25 2.7888441228580603 4.7941387188235596e-016
		-5.7491853075117283e-016 2.7888441228580603 -2.25
		2.25 2.7888441228580603 -4.5922738268339147e-017
		3.0430166849879092e-016 2.7888441228580603 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 2.1090313501745639 -1.9878466759146985e-016 3.9756933518293969e-016 ;
	setAttr ".rp" -type "double3" -2.8937297292620789e-005 2.7888441227019949 -5.7542328105730789e-006 ;
	setAttr ".sp" -type "double3" -2.8937297292620789e-005 2.7888441227019949 -5.7542328105730789e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -2.8937297292662423e-005 2.7888441227020033 -5.7542328145698818e-006 ;
	setAttr ".sp" -type "double3" -2.8937297292662423e-005 2.7888441227020033 -5.7542328145698818e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.8937297292662423e-005 2.7888441227020033 -5.7542328145698818e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.2426748900858523e-015 1.9878466759146985e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.2038272205304938e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2038272205304938e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2038272205304938e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2038272205304938e-016 2.25
		-5.7491853075117283e-016 0.54215558217995918 -2.25
		2.25 0.54215558217995918 -1.6838337365057687e-016
		3.0430166849879092e-016 0.54215558217995907 2.25
		-2.25 0.54215558217995918 3.5695323650011823e-016
		-5.7491853075117283e-016 0.54215558217995918 -2.25
		2.25 0.54215558217995918 -1.6838337365057687e-016
		3.0430166849879092e-016 0.54215558217995907 2.25
		-5.7491853075117283e-016 1.0843111643599184 -2.25
		2.25 1.0843111643599184 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0843111643599184 2.25
		-2.25 1.0843111643599184 4.1818355419123709e-016
		-5.7491853075117283e-016 1.0843111643599184 -2.25
		2.25 1.0843111643599184 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0843111643599184 2.25
		-5.7491853075117283e-016 1.6264667465398777 -2.25
		2.25 1.6264667465398777 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6264667465398777 2.25
		-2.25 1.6264667465398777 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6264667465398777 -2.25
		2.25 1.6264667465398777 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6264667465398777 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -17.536781633172549 0 3.975693351829394e-016 ;
	setAttr ".rp" -type "double3" -1.7113955589141694e-005 1.6264667463836293 1.4675492835347637e-005 ;
	setAttr ".sp" -type "double3" -1.7113955589141694e-005 1.6264667463836293 1.4675492835347637e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7113955589190266e-005 1.6264667463836351 1.4675492839955062e-005 ;
	setAttr ".sp" -type "double3" -1.7113955589190266e-005 1.6264667463836351 1.4675492839955062e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7113955589190266e-005 1.6264667463836351 1.4675492839955062e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -4.1372058942474653e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3749656140950404e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3749656140950404e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3749656140950404e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3749656140950404e-016 2.25
		-5.7491853075117283e-016 0.61922946272856694 -2.25
		2.25 0.61922946272856694 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61922946272856683 2.25
		-2.25 0.61922946272856694 3.5695323650011823e-016
		-5.7491853075117283e-016 0.61922946272856694 -2.25
		2.25 0.61922946272856694 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61922946272856683 2.25
		-5.7491853075117283e-016 1.2384589254571339 -2.25
		2.25 1.2384589254571339 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2384589254571339 2.25
		-2.25 1.2384589254571339 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2384589254571339 -2.25
		2.25 1.2384589254571339 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2384589254571339 2.25
		-5.7491853075117283e-016 1.8576883881857009 -2.25
		2.25 1.8576883881857009 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8576883881857009 2.25
		-2.25 1.8576883881857009 4.7941387188235596e-016
		-5.7491853075117283e-016 1.8576883881857009 -2.25
		2.25 1.8576883881857009 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8576883881857009 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 88.72616386636534 80.742213464700896 64.177721267490014 ;
	setAttr ".rp" -type "double3" 0.22417112110667303 6.1468047121770351 -2.4256932120982992 ;
	setAttr ".sp" -type "double3" 0.22417112110667303 6.1468047121770351 -2.4256932120982992 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.22417112110667059 6.1468047121770413 -2.4256932120982988 ;
	setAttr ".sp" -type "double3" 0.22417112110667059 6.1468047121770413 -2.4256932120982988 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.22418116964676726 9.5482333896270308 -1.4514840193906897 ;
	setAttr ".sp" -type "double3" 0.22418116964676726 9.5482333896270308 -1.4514840193906897 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.22417112110666881 6.1468047121770484 -2.4256932120982988 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.4848083448933731e-017 0 7.1593540437240277e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.8281227254421577e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.8281227254421577e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.8281227254421577e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.8281227254421577e-016 2.25
		-5.7491853075117283e-016 0.82331328250888369 -2.25
		2.25 0.82331328250888369 -1.6838337365057687e-016
		3.0430166849879092e-016 0.82331328250888358 2.25
		-2.25 0.82331328250888369 3.5695323650011823e-016
		-5.7491853075117283e-016 0.82331328250888369 -2.25
		2.25 0.82331328250888369 -1.6838337365057687e-016
		3.0430166849879092e-016 0.82331328250888358 2.25
		-5.7491853075117283e-016 1.6466265650177674 -2.25
		2.25 1.6466265650177674 -1.0715305595945801e-016
		3.0430166849879092e-016 1.6466265650177674 2.25
		-2.25 1.6466265650177674 4.1818355419123709e-016
		-5.7491853075117283e-016 1.6466265650177674 -2.25
		2.25 1.6466265650177674 -1.0715305595945801e-016
		3.0430166849879092e-016 1.6466265650177674 2.25
		-5.7491853075117283e-016 2.4699398475266512 -2.25
		2.25 2.4699398475266512 -4.5922738268339147e-017
		3.0430166849879092e-016 2.4699398475266512 2.25
		-2.25 2.4699398475266512 4.7941387188235596e-016
		-5.7491853075117283e-016 2.4699398475266512 -2.25
		2.25 2.4699398475266512 -4.5922738268339147e-017
		3.0430166849879092e-016 2.4699398475266512 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 42.537290554129918 3.9756933518293969e-016 -8.6968292071268054e-016 ;
	setAttr ".rp" -type "double3" 2.0097080197345463e-005 2.4699398465554108 6.6286742733012716e-005 ;
	setAttr ".sp" -type "double3" 2.0097080197345463e-005 2.4699398465554108 6.6286742733012716e-005 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.0097080197345463e-005 2.4699398465554054 6.6286742736565429e-005 ;
	setAttr ".sp" -type "double3" 2.0097080197345463e-005 2.4699398465554054 6.6286742736565429e-005 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.0097080197345463e-005 2.4699398465554054 6.6286742736565429e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 3.9756933518293969e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.3141732152348806e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3141732152348806e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3141732152348806e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3141732152348806e-016 2.25
		-5.7491853075117283e-016 0.59185100024320947 -2.25
		2.25 0.59185100024320947 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59185100024320936 2.25
		-2.25 0.59185100024320947 3.5695323650011823e-016
		-5.7491853075117283e-016 0.59185100024320947 -2.25
		2.25 0.59185100024320947 -1.6838337365057687e-016
		3.0430166849879092e-016 0.59185100024320936 2.25
		-5.7491853075117283e-016 1.1837020004864189 -2.25
		2.25 1.1837020004864189 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1837020004864189 2.25
		-2.25 1.1837020004864189 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1837020004864189 -2.25
		2.25 1.1837020004864189 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1837020004864189 2.25
		-5.7491853075117283e-016 1.7755530007296283 -2.25
		2.25 1.7755530007296283 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7755530007296283 2.25
		-2.25 1.7755530007296283 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7755530007296283 -2.25
		2.25 1.7755530007296283 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7755530007296283 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" -1.9474664561515787 1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" -5.5782008736571242e-006 1.775553000555302 -2.4246409955352988e-005 ;
	setAttr ".sp" -type "double3" -5.5782008736571242e-006 1.775553000555302 -2.4246409955352988e-005 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -5.5782008745453027e-006 1.7755530005553002 -2.4246409950023917e-005 ;
	setAttr ".sp" -type "double3" -5.5782008745453027e-006 1.7755530005553002 -2.4246409950023917e-005 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.5782008745453027e-006 1.7755530005553002 -2.4246409950023917e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270304e-015 -1.1927080055488188e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.4113051630868553e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4113051630868553e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4113051630868553e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4113051630868553e-016 2.25
		-5.7491853075117283e-016 0.63559534065840184 -2.25
		2.25 0.63559534065840184 -1.6838337365057687e-016
		3.0430166849879092e-016 0.63559534065840173 2.25
		-2.25 0.63559534065840184 3.5695323650011823e-016
		-5.7491853075117283e-016 0.63559534065840184 -2.25
		2.25 0.63559534065840184 -1.6838337365057687e-016
		3.0430166849879092e-016 0.63559534065840173 2.25
		-5.7491853075117283e-016 1.2711906813168037 -2.25
		2.25 1.2711906813168037 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2711906813168037 2.25
		-2.25 1.2711906813168037 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2711906813168037 -2.25
		2.25 1.2711906813168037 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2711906813168037 2.25
		-5.7491853075117283e-016 1.9067860219752055 -2.25
		2.25 1.9067860219752055 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9067860219752055 2.25
		-2.25 1.9067860219752055 4.7941387188235596e-016
		-5.7491853075117283e-016 1.9067860219752055 -2.25
		2.25 1.9067860219752055 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9067860219752055 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 120.3594354499344 79.201969596661073 101.20097072232744 ;
	setAttr ".rp" -type "double3" 0.33584082925483116 5.9013794343992192 -0.441535683218651 ;
	setAttr ".sp" -type "double3" 0.33584082925483116 5.9013794343992192 -0.441535683218651 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.33584082925483161 5.9013794343992183 -0.44153568321864967 ;
	setAttr ".sp" -type "double3" 0.33584082925483161 5.9013794343992183 -0.44153568321864967 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.33584422096802724 9.8062688070656012 1.2687775336402412 ;
	setAttr ".sp" -type "double3" 0.33584422096802724 9.8062688070656012 1.2687775336402412 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.33584082925483205 5.9013794343992183 -0.44153568321864967 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587939e-016 7.9513867036587939e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.201218961519221e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.201218961519221e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.201218961519221e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.201218961519221e-016 2.25
		-5.7491853075117283e-016 0.99134088948588339 -2.25
		2.25 0.99134088948588339 -1.6838337365057687e-016
		3.0430166849879092e-016 0.99134088948588328 2.25
		-2.25 0.99134088948588339 3.5695323650011823e-016
		-5.7491853075117283e-016 0.99134088948588339 -2.25
		2.25 0.99134088948588339 -1.6838337365057687e-016
		3.0430166849879092e-016 0.99134088948588328 2.25
		-5.7491853075117283e-016 1.9826817789717668 -2.25
		2.25 1.9826817789717668 -1.0715305595945801e-016
		3.0430166849879092e-016 1.9826817789717668 2.25
		-2.25 1.9826817789717668 4.1818355419123709e-016
		-5.7491853075117283e-016 1.9826817789717668 -2.25
		2.25 1.9826817789717668 -1.0715305595945801e-016
		3.0430166849879092e-016 1.9826817789717668 2.25
		-5.7491853075117283e-016 2.9740226684576503 -2.25
		2.25 2.9740226684576503 -4.5922738268339147e-017
		3.0430166849879092e-016 2.9740226684576503 2.25
		-2.25 2.9740226684576503 4.7941387188235596e-016
		-5.7491853075117283e-016 2.9740226684576503 -2.25
		2.25 2.9740226684576503 -4.5922738268339147e-017
		3.0430166849879092e-016 2.9740226684576503 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 52.877712007223472 0 2.3357198441997705e-015 ;
	setAttr ".rp" -type "double3" -1.255941713296238e-006 2.9740226684369055 -1.1039000401780186e-005 ;
	setAttr ".sp" -type "double3" -1.255941713296238e-006 2.9740226684369055 -1.1039000401780186e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.2559417137403273e-006 2.9740226684369002 -1.1039000396451115e-005 ;
	setAttr ".sp" -type "double3" -1.2559417137403273e-006 2.9740226684369002 -1.1039000396451115e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.2559417137403273e-006 2.9740226684369002 -1.1039000396451115e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635187e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6241619105621374e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6241619105621374e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6241619105621374e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6241619105621374e-016 2.25
		-5.7491853075117283e-016 0.73145749751969946 -2.25
		2.25 0.73145749751969946 -1.6838337365057687e-016
		3.0430166849879092e-016 0.73145749751969935 2.25
		-2.25 0.73145749751969946 3.5695323650011823e-016
		-5.7491853075117283e-016 0.73145749751969946 -2.25
		2.25 0.73145749751969946 -1.6838337365057687e-016
		3.0430166849879092e-016 0.73145749751969935 2.25
		-5.7491853075117283e-016 1.4629149950393989 -2.25
		2.25 1.4629149950393989 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4629149950393989 2.25
		-2.25 1.4629149950393989 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4629149950393989 -2.25
		2.25 1.4629149950393989 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4629149950393989 2.25
		-5.7491853075117283e-016 2.1943724925590984 -2.25
		2.25 2.1943724925590984 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1943724925590984 2.25
		-2.25 2.1943724925590984 4.7941387188235596e-016
		-5.7491853075117283e-016 2.1943724925590984 -2.25
		2.25 2.1943724925590984 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1943724925590984 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 13.190763892526737 -3.975693351829396e-016 -3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" 9.2953098205228457e-006 2.1943724917546135 5.8688384806160343e-005 ;
	setAttr ".sp" -type "double3" 9.2953098205228457e-006 2.1943724917546135 5.8688384806160343e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 9.2953098178583105e-006 2.1943724917546277 5.8688384804383986e-005 ;
	setAttr ".sp" -type "double3" 9.2953098178583105e-006 2.1943724917546277 5.8688384804383986e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.2953098178583105e-006 2.1943724917546277 5.8688384804383986e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 7.9513867036587919e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.7729318029673426e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7729318029673426e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7729318029673426e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7729318029673426e-016 2.25
		-5.7491853075117283e-016 0.79845750071970256 -2.25
		2.25 0.79845750071970256 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79845750071970245 2.25
		-2.25 0.79845750071970256 3.5695323650011823e-016
		-5.7491853075117283e-016 0.79845750071970256 -2.25
		2.25 0.79845750071970256 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79845750071970245 2.25
		-5.7491853075117283e-016 1.5969150014394051 -2.25
		2.25 1.5969150014394051 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5969150014394051 2.25
		-2.25 1.5969150014394051 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5969150014394051 -2.25
		2.25 1.5969150014394051 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5969150014394051 2.25
		-5.7491853075117283e-016 2.3953725021591077 -2.25
		2.25 2.3953725021591077 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3953725021591077 2.25
		-2.25 2.3953725021591077 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3953725021591077 -2.25
		2.25 2.3953725021591077 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3953725021591077 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 129.59657515442046 75.007882671980298 113.80536352798225 ;
	setAttr ".rp" -type "double3" 0.68185382637338388 5.2598376348829703 1.2364880137828289 ;
	setAttr ".sp" -type "double3" 0.68185382637338388 5.2598376348829703 1.2364880137828289 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.6818538263733831 5.2598376348829632 1.2364880137828322 ;
	setAttr ".sp" -type "double3" 0.6818538263733831 5.2598376348829632 1.2364880137828322 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.68185609245640633 8.7045965346486689 2.4848803475983856 ;
	setAttr ".sp" -type "double3" 0.68185609245640633 8.7045965346486689 2.4848803475983856 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.68185382637338199 5.2598376348829552 1.2364880137828358 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.5902773407317588e-015 0 5.9635400277440959e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999956 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.9254468025225049e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9254468025225049e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9254468025225049e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9254468025225049e-016 2.25
		-5.7491853075117283e-016 0.86714415023620661 -2.25
		2.25 0.86714415023620661 -1.6838337365057687e-016
		3.0430166849879092e-016 0.8671441502362065 2.25
		-2.25 0.86714415023620661 3.5695323650011823e-016
		-5.7491853075117283e-016 0.86714415023620661 -2.25
		2.25 0.86714415023620661 -1.6838337365057687e-016
		3.0430166849879092e-016 0.8671441502362065 2.25
		-5.7491853075117283e-016 1.7342883004724132 -2.25
		2.25 1.7342883004724132 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7342883004724132 2.25
		-2.25 1.7342883004724132 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7342883004724132 -2.25
		2.25 1.7342883004724132 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7342883004724132 2.25
		-5.7491853075117283e-016 2.6014324507086197 -2.25
		2.25 2.6014324507086197 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6014324507086197 2.25
		-2.25 2.6014324507086197 4.7941387188235596e-016
		-5.7491853075117283e-016 2.6014324507086197 -2.25
		2.25 2.6014324507086197 -4.5922738268339147e-017
		3.0430166849879092e-016 2.6014324507086197 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 52.884339545171159 0 0 ;
	setAttr ".rp" -type "double3" 9.1887021103076449e-006 2.6014324501872839 -5.1264180928711767e-005 ;
	setAttr ".sp" -type "double3" 9.1887021103076449e-006 2.6014324501872839 -5.1264180928711767e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 9.1887021096415111e-006 2.6014324501872874 -5.1264180925159053e-005 ;
	setAttr ".sp" -type "double3" 9.1887021096415111e-006 2.6014324501872874 -5.1264180925159053e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.1887021096415111e-006 2.6014324501872874 -5.1264180925159053e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270335e-015 -1.5902773407317584e-015 7.9513867036587919e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.2226102324502132e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2226102324502132e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2226102324502132e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2226102324502132e-016 2.25
		-5.7491853075117283e-016 0.55061469872821356 -2.25
		2.25 0.55061469872821356 -1.6838337365057687e-016
		3.0430166849879092e-016 0.55061469872821345 2.25
		-2.25 0.55061469872821356 3.5695323650011823e-016
		-5.7491853075117283e-016 0.55061469872821356 -2.25
		2.25 0.55061469872821356 -1.6838337365057687e-016
		3.0430166849879092e-016 0.55061469872821345 2.25
		-5.7491853075117283e-016 1.1012293974564271 -2.25
		2.25 1.1012293974564271 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1012293974564271 2.25
		-2.25 1.1012293974564271 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1012293974564271 -2.25
		2.25 1.1012293974564271 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1012293974564271 2.25
		-5.7491853075117283e-016 1.6518440961846408 -2.25
		2.25 1.6518440961846408 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6518440961846408 2.25
		-2.25 1.6518440961846408 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6518440961846408 -2.25
		2.25 1.6518440961846408 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6518440961846408 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 3.9408989797986953 -7.9513867036587899e-016 7.9513867036587899e-016 ;
	setAttr ".rp" -type "double3" -1.3845238170162588e-005 1.6518440959198006 -2.6138910563133777e-005 ;
	setAttr ".sp" -type "double3" -1.3845238170162588e-005 1.6518440959198006 -2.6138910563133777e-005 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.3845238169718499e-005 1.6518440959197989 -2.6138910564910134e-005 ;
	setAttr ".sp" -type "double3" -1.3845238169718499e-005 1.6518440959197989 -2.6138910564910134e-005 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3845238169718499e-005 1.6518440959197989 -2.6138910564910134e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.180554681463516e-015 7.9513867036587899e-016 1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.7259690377924029e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7259690377924029e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7259690377924029e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7259690377924029e-016 2.25
		-5.7491853075117283e-016 0.77730735154548791 -2.25
		2.25 0.77730735154548791 -1.6838337365057687e-016
		3.0430166849879092e-016 0.7773073515454878 2.25
		-2.25 0.77730735154548791 3.5695323650011823e-016
		-5.7491853075117283e-016 0.77730735154548791 -2.25
		2.25 0.77730735154548791 -1.6838337365057687e-016
		3.0430166849879092e-016 0.7773073515454878 2.25
		-5.7491853075117283e-016 1.5546147030909758 -2.25
		2.25 1.5546147030909758 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5546147030909758 2.25
		-2.25 1.5546147030909758 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5546147030909758 -2.25
		2.25 1.5546147030909758 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5546147030909758 2.25
		-5.7491853075117283e-016 2.3319220546364638 -2.25
		2.25 2.3319220546364638 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3319220546364638 2.25
		-2.25 2.3319220546364638 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3319220546364638 -2.25
		2.25 2.3319220546364638 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3319220546364638 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 137.01639204628725 66.224928839597837 113.49273343209315 ;
	setAttr ".rp" -type "double3" 0.76144329545737721 4.8222607371772739 2.7821348988423087 ;
	setAttr ".sp" -type "double3" 0.76144329545737721 4.8222607371772739 2.7821348988423087 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.76144329545737777 4.8222607371772783 2.7821348988423082 ;
	setAttr ".sp" -type "double3" 0.76144329545737777 4.8222607371772783 2.7821348988423082 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.7614489564874557 7.829779839229456 3.5803082183763708 ;
	setAttr ".sp" -type "double3" 0.7614489564874557 7.829779839229456 3.5803082183763708 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.76144329545737821 4.8222607371772783 2.7821348988423082 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.5902773407317588e-015 1.490885006936024e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 1.0000000000000002 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.6429201743567609e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6429201743567609e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6429201743567609e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6429201743567609e-016 2.25
		-5.7491853075117283e-016 0.73990546850325789 -2.25
		2.25 0.73990546850325789 -1.6838337365057687e-016
		3.0430166849879092e-016 0.73990546850325778 2.25
		-2.25 0.73990546850325789 3.5695323650011823e-016
		-5.7491853075117283e-016 0.73990546850325789 -2.25
		2.25 0.73990546850325789 -1.6838337365057687e-016
		3.0430166849879092e-016 0.73990546850325778 2.25
		-5.7491853075117283e-016 1.4798109370065158 -2.25
		2.25 1.4798109370065158 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4798109370065158 2.25
		-2.25 1.4798109370065158 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4798109370065158 -2.25
		2.25 1.4798109370065158 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4798109370065158 2.25
		-5.7491853075117283e-016 2.2197164055097738 -2.25
		2.25 2.2197164055097738 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2197164055097738 2.25
		-2.25 2.2197164055097738 4.7941387188235596e-016
		-5.7491853075117283e-016 2.2197164055097738 -2.25
		2.25 2.2197164055097738 -4.5922738268339147e-017
		3.0430166849879092e-016 2.2197164055097738 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 48.093582389589116 0 -4.9696166897867437e-017 ;
	setAttr ".rp" -type "double3" 8.1074572259864919e-006 2.2197164052228904 -3.4754647852963672e-005 ;
	setAttr ".sp" -type "double3" 8.1074572259864919e-006 2.2197164052228904 -3.4754647852963672e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 8.1074572258199584e-006 2.2197164052228882 -3.4754647852963672e-005 ;
	setAttr ".sp" -type "double3" 8.1074572258199584e-006 2.2197164052228882 -3.4754647852963672e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.1074572258199584e-006 2.2197164052228882 -3.4754647852963672e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635152e-015 1.590277340731758e-015 1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.0159971325505553e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0159971325505553e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0159971325505553e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0159971325505553e-016 2.25
		-5.7491853075117283e-016 0.45756443075641734 -2.25
		2.25 0.45756443075641734 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45756443075641728 2.25
		-2.25 0.45756443075641734 3.5695323650011823e-016
		-5.7491853075117283e-016 0.45756443075641734 -2.25
		2.25 0.45756443075641734 -1.6838337365057687e-016
		3.0430166849879092e-016 0.45756443075641728 2.25
		-5.7491853075117283e-016 0.91512886151283468 -2.25
		2.25 0.91512886151283468 -1.0715305595945801e-016
		3.0430166849879092e-016 0.91512886151283468 2.25
		-2.25 0.91512886151283468 4.1818355419123709e-016
		-5.7491853075117283e-016 0.91512886151283468 -2.25
		2.25 0.91512886151283468 -1.0715305595945801e-016
		3.0430166849879092e-016 0.91512886151283468 2.25
		-5.7491853075117283e-016 1.3726932922692521 -2.25
		2.25 1.3726932922692521 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3726932922692521 2.25
		-2.25 1.3726932922692521 4.7941387188235596e-016
		-5.7491853075117283e-016 1.3726932922692521 -2.25
		2.25 1.3726932922692521 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3726932922692521 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" -0.78024491214656422 0 0 ;
	setAttr ".rp" -type "double3" 3.2146029290691658e-006 1.3726932921695347 -1.6229956875335461e-005 ;
	setAttr ".sp" -type "double3" 3.2146029290691658e-006 1.3726932921695347 -1.6229956875335461e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 3.2146029299018331e-006 1.3726932921695312 -1.6229956878888174e-005 ;
	setAttr ".sp" -type "double3" 3.2146029299018331e-006 1.3726932921695312 -1.6229956878888174e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.2146029299018331e-006 1.3726932921695312 -1.6229956878888174e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635187e-015 1.5902773407317594e-015 -1.5902773407317594e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999933 0.99999999999999978 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.2921425693906155e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2921425693906155e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2921425693906155e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2921425693906155e-016 2.25
		-5.7491853075117283e-016 0.58192927940171313 -2.25
		2.25 0.58192927940171313 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58192927940171302 2.25
		-2.25 0.58192927940171313 3.5695323650011823e-016
		-5.7491853075117283e-016 0.58192927940171313 -2.25
		2.25 0.58192927940171313 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58192927940171302 2.25
		-5.7491853075117283e-016 1.1638585588034263 -2.25
		2.25 1.1638585588034263 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1638585588034263 2.25
		-2.25 1.1638585588034263 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1638585588034263 -2.25
		2.25 1.1638585588034263 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1638585588034263 2.25
		-5.7491853075117283e-016 1.7457878382051395 -2.25
		2.25 1.7457878382051395 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7457878382051395 2.25
		-2.25 1.7457878382051395 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7457878382051395 -2.25
		2.25 1.7457878382051395 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7457878382051395 2.25
		
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
	setAttr ".rst" -type "double3" -18.526700000000005 46.577399999999948 1.1754600000000082 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-014 2.9636979455951344 
		5.0946407466240723e-016 ;
	setAttr ".tg[0].tor" -type "double3" -2.0077251426738435e-014 -5.5659706925611528e-015 
		9.5416640443905471e-015 ;
	setAttr ".tg[1].tot" -type "double3" 3.5527136788005009e-015 2.9636979455981742 
		-1.8385654661927296e-011 ;
	setAttr ".tg[1].tor" -type "double3" -1.6896696745274934e-014 -5.5659706925611543e-015 
		-1.2722218725854067e-014 ;
	setAttr ".lr" -type "double3" 162.24555324351442 -0.43588784511497947 -24.571534859649983 ;
	setAttr ".rst" -type "double3" 17.507708150759125 79.512801095692708 -10.26373987376479 ;
	setAttr ".rsrr" -type "double3" 162.21357301520001 -5.0143838143038746 -23.899394319197615 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "rFootControl" -p "main";
	addAttr -ci true -k true -sn "heelRock" -ln "heelRock" -min -45 -max 0 -at "double";
	addAttr -ci true -k true -sn "ankleLift" -ln "ankleLift" -min 0 -max 55 -at "double";
	addAttr -ci true -k true -sn "toeLift" -ln "toeLift" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ankleBank" -ln "ankleBank" -min -40 -max 40 -at "double";
	addAttr -ci true -k true -sn "rockL" -ln "rockL" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "rockR" -ln "rockR" -min 0 -max 90 -at "double";
	addAttr -ci true -k true -sn "ballPivot" -ln "ballPivot" -min -90 -max 90 -at "double";
	addAttr -ci true -sn "rFootControl" -ln "rFootControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 0 -22.958846709690551 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -5.6649952107605506 5.49237000000001 -2.5791638680316851 ;
	setAttr ".rpt" -type "double3" 1.4548052107605525 0 -2.0054361319683309 ;
	setAttr ".sp" -type "double3" -5.6649952107605506 5.49237000000001 -2.5791638680316851 ;
	setAttr ".hdl" -type "double3" -5.6649952107605506 5.49237000000001 -2.5791638680316851 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-8.3100965101488278 5.49237000000001 -2.579163868031686
		-6.9875458604546887 1.1263978746314951 -6.2583298793026305
		-6.9875458604546887 1.1263978746314951 2.054143257738422
		-6.9875458604546896 9.8583421253685231 2.054143257738422
		-6.9875458604546887 9.8583421253685248 -6.2583298793026305
		-6.9875458604546887 1.126397874631496 -6.2583298793026305
		-4.3424445610664133 1.1263978746314951 -6.2583298793026305
		-4.3424445610664133 1.1263978746314951 2.0541432577384229
		-4.3424445610664142 9.8583421253685248 2.054143257738422
		-4.3424445610664133 9.8583421253685248 -6.2583298793026305
		-4.3424445610664133 1.1263978746314951 -6.2583298793026305
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		-3.019893911372276 5.49237000000001 -2.5791638680316855
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -4.2101900000000008 5.4923700000000135 -4.5846000000000169 ;
	setAttr ".sp" -type "double3" -4.2101900000000008 5.4923700000000135 -4.5846000000000169 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -4.2101900000000008 5.4923700000000135 -4.5846000000000169 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -125.16731625971778 -2.2548937002404332 -3.196244107139544 ;
	setAttr ".rp" -type "double3" 1.6871864552681082e-006 8.0914784532705717 1.0096117216223057 ;
	setAttr ".sp" -type "double3" 1.6871864552681082e-006 8.0914784532705717 1.0096117216223057 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" 1.6871864552681082e-006 8.0914784532705717 1.0096117216223057 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" -8.0553789939415387e-031 0 -3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -2.6396965208568965 -9.1896501790973271e-016 0.51482941474016686 ;
	setAttr ".sp" -type "double3" -2.6396965208568965 -9.1896501790973271e-016 0.51482941474016686 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.6396965208568965 -9.1896501790973271e-016 0.51482941474016686 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" -8.0553789939415387e-031 0 -3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" 5.2833968515162812 -0.034455999732017593 -0.26603388801522621 ;
	setAttr ".sp" -type "double3" 5.2833968515162812 -0.034455999732017593 -0.26603388801522621 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 5.2833968515162812 -0.034455999732017593 -0.26603388801522621 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" 6.6208594470752375e-031 0 0 ;
	setAttr ".rp" -type "double3" -1.9356238665811363 0.034455999732019293 -10.369835979247631 ;
	setAttr ".sp" -type "double3" -1.9356238665811363 0.034455999732019293 -10.369835979247631 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -1.9356238665811363 0.034455999732019293 -10.369835979247631 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 6.6208594470752375e-031 0 0 ;
	setAttr ".rp" -type "double3" -1.1230475547845797 -2.5648466085816656e-015 15.533723568565204 ;
	setAttr ".sp" -type "double3" -1.1230475547845797 -2.5648466085816656e-015 15.533723568565204 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" -1.1230475547845797 -2.5648466085816656e-015 15.533723568565204 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 90.000000000000071 -3.9109137096905253 0 ;
	setAttr ".rp" -type "double3" 0.41496639907801303 1.2359900000000066 -5.4126817802315212 ;
	setAttr ".sp" -type "double3" 0.41496639907801303 1.2359900000000066 -5.4126817802315212 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 0.41496639907801303 1.2359900000000066 -5.4126817802315212 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 35.230235293910084 0 0 ;
	setAttr ".rp" -type "double3" 2.9024070660188528e-006 -6.0270416534973066 -4.2563800000000009 ;
	setAttr ".sp" -type "double3" 2.9024070660188528e-006 -6.0270416534973066 -4.2563800000000009 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 2.9024070660188528e-006 -6.0270416534973066 -4.2563800000000009 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.995564354220174 2.3306243034783574 -1.6624464089228397 ;
	setAttr ".r" -type "double3" -123.03476231092594 -13.003880618108138 -19.087465128330873 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -3.4831683126621513 -0.013501748019383083 -4.5845999969600824 ;
	setAttr ".rpt" -type "double3" -1.5123960415580213 -2.3171225554589769 6.247046405882922 ;
	setAttr ".sp" -type "double3" -3.4831683167411147 -0.013501748557985138 -4.5845999984800683 ;
	setAttr ".spt" -type "double3" 8.8817841970012513e-016 3.4694469519536138e-018 1.7763568394002499e-015 ;
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
	setAttr ".rst" -type "double3" -0.11546101475421544 9.1416142724850857 15.971459919499193 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.6932485917100815 0.6105193352945173 -8.7951232479504089 ;
	setAttr ".r" -type "double3" 1.0262851516848437e-014 19.047933000000004 1.7041125004535616e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr ".rp" -type "double3" -6.0931648721656417 0.62547066470548918 1.474623690372481 ;
	setAttr ".rpt" -type "double3" 0.81488267953357407 0 1.9078177773464071 ;
	setAttr ".sp" -type "double3" -6.09316487216564 0.62547066470549106 1.4746236903724803 ;
	setAttr ".spt" -type "double3" -1.7763568394002509e-015 3.3306690738754711e-016 
		6.6613381477509422e-016 ;
	setAttr ".pv" -type "double3" -0.078690362360717081 1.6336805887340813 1.1510410769668502 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 90.000000000000071 -3.9109137096905284 -3.5393671444023642e-031 ;
	setAttr ".rp" -type "double3" -0.7080811557065676 1.2359900000000039 10.121041788333685 ;
	setAttr ".sp" -type "double3" -0.7080811557065676 1.2359900000000039 10.121041788333685 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -0.7080811557065676 1.2359900000000039 10.121041788333685 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -90.000000000000071 -5.649800061504203e-030 -3.9109137096905284 ;
	setAttr ".rp" -type "double3" -0.044826330089814181 5.4283802157314582 1.2359899999999995 ;
	setAttr ".sp" -type "double3" -0.044826330089814181 5.4283802157314582 1.2359899999999995 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -0.044826330089814181 5.4283802157314582 1.2359899999999995 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.114123570311353 0.24938541908877607 -7.8500503840892364 ;
	setAttr ".r" -type "double3" 1.0419042809555144e-014 19.047932999999997 -3.4408531154746743e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -7.3377662502055037 0.98660458091122738 5.7285601534196298 ;
	setAttr ".rpt" -type "double3" 2.2713404003078157 0 2.0810841458740676 ;
	setAttr ".sp" -type "double3" -7.3377662502055037 0.98660458091123004 5.7285601534196324 ;
	setAttr ".spt" -type "double3" 0 -4.4408920985006242e-016 -8.8817841970012504e-016 ;
	setAttr ".pv" -type "double3" 1.9953427223330695 -1.4040305156536361e-008 0.13640901888239254 ;
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
	setAttr ".lr" -type "double3" -90.000000000000071 0 0 ;
	setAttr ".o" -type "double3" 90.000000000000071 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "rToeControlZeroGroup" -p "rReverseHeelLift";
	setAttr ".t" -type "double3" -0.70808115570656782 1.2359900000000024 10.121041788333685 ;
	setAttr ".r" -type "double3" 9.7235613010341583e-015 -3.9109137096905315 -2.2425887054070596e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
createNode transform -n "rToeControl" -p "rToeControlZeroGroup";
	addAttr -ci true -sn "rToeControl" -ln "rToeControl" -at "message";
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-2.6451012993882759 -3.4356987628154428e-016 -5.7261646046924037e-016
		-1.3225506496941375 -1.4466658259802432 -0.29723647567437128
		-1.3225506496941382 -1.4466658259802432 4.3340706183374014
		-1.3225506496941384 1.446665825980243 4.3340706183374014
		-1.3225506496941377 1.4466658259802432 -0.29723647567437128
		-1.3225506496941375 -1.4466658259802427 -0.29723647567437173
		1.3225506496941382 -1.4466658259802438 -0.2972364756743715
		1.3225506496941375 -1.4466658259802432 4.3340706183374023
		1.3225506496941373 1.4466658259802436 4.3340706183374023
		1.3225506496941379 1.4466658259802436 -0.29723647567437173
		1.3225506496941382 -1.4466658259802434 -0.29723647567437195
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		2.6451012993882759 -4.0460840823417512e-016 -1.7556182404647886e-016
		
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 3.3384542776194419e-015 
		-8.4150686419093273e-016 ;
	setAttr ".tg[0].tor" -type "double3" 125.23023529391018 2.2263882770244617e-014 
		0 ;
	setAttr ".lr" -type "double3" 125.23023529391018 -22.958846709690548 1.7270881769881097e-015 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 0 -8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 125.23023529391018 -22.958846709690548 1.7270881769881097e-015 ;
	setAttr -k on ".w0";
createNode transform -n "poleVectorGroup" -p "main";
createNode transform -n "rkneeControl" -p "poleVectorGroup";
	addAttr -ci true -sn "rKneeControl" -ln "rKneeControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
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
	setAttr ".rp" -type "double3" -5.23765 25.6991 -1.6528300000000085 ;
	setAttr ".sp" -type "double3" -5.23765 25.6991 -1.6528300000000085 ;
	setAttr ".hdl" -type "double3" -5.23765 25.6991 -1.6528300000000085 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-6.2376499999999995 25.699099999999998 -1.6528300000000087
		-5.2376499999999995 25.699099999999998 -2.6528300000000087
		-5.2376499999999995 24.699099999999998 -1.6528300000000085
		-5.2376499999999995 25.699099999999998 -0.65283000000000846
		-5.2376499999999995 26.699099999999998 -1.6528300000000082
		-5.2376499999999995 25.699099999999998 -2.6528300000000087
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		-4.2376499999999995 25.699099999999998 -1.6528300000000082
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lkneeControl" -p "poleVectorGroup";
	addAttr -ci true -sn "lKneeControl" -ln "lKneeControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
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
	setAttr ".rp" -type "double3" 5.2376490231404267 25.699061008384806 -1.652827953468569 ;
	setAttr ".sp" -type "double3" 5.2376490231404267 25.699061008384806 -1.652827953468569 ;
	setAttr ".hdl" -type "double3" 5.2376490231404267 25.699061008384806 -1.652827953468569 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		4.2376490231404267 25.699061008384806 -1.6528279534685693
		5.2376490231404267 25.699061008384806 -2.6528279534685693
		5.2376490231404267 24.699061008384806 -1.652827953468569
		5.2376490231404267 25.699061008384806 -0.65282795346856903
		5.2376490231404267 26.699061008384806 -1.6528279534685688
		5.2376490231404267 25.699061008384806 -2.6528279534685693
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		6.2376490231404267 25.699061008384806 -1.6528279534685688
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lElbowControl" -p "poleVectorGroup";
	addAttr -ci true -sn "lElbowControl" -ln "lElbowControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 13.795018447690166 56.495086211568818 -2.334844510331326 ;
	setAttr ".sp" -type "double3" 13.795018447690166 56.495086211568818 -2.334844510331326 ;
	setAttr ".hdl" -type "double3" 13.795018447690166 56.495086211568818 -2.334844510331326 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		12.795018447690166 56.495086211568818 -2.3348445103313265
		12.795018447690166 56.495086211568818 -2.3348445103313265
		12.795018447690166 56.495086211568818 -2.3348445103313265
		12.795018447690166 56.495086211568818 -2.3348445103313265
		12.795018447690166 56.495086211568818 -2.3348445103313265
		13.795018447690166 56.495086211568818 -3.334844510331326
		13.795018447690166 55.495086211568818 -2.334844510331326
		13.795018447690166 56.495086211568818 -1.334844510331326
		13.795018447690166 57.495086211568818 -2.334844510331326
		13.795018447690166 56.495086211568818 -3.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		14.795018447690166 56.495086211568818 -2.334844510331326
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rElbowControl" -p "poleVectorGroup";
	addAttr -ci true -sn "rElbowControl" -ln "rElbowControl" -at "message";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	addAttr -ci true -sn "zooTrig2" -ln "zooTrig2" -at "message";
	addAttr -ci true -sn "zooTrig3" -ln "zooTrig3" -at "message";
	addAttr -ci true -sn "zooTrigCmd0" -ln "zooTrigCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
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
	setAttr ".rp" -type "double3" -13.795000000000009 56.495099999999944 -2.3348399999999963 ;
	setAttr ".sp" -type "double3" -13.795000000000009 56.495099999999944 -2.3348399999999963 ;
	setAttr ".hdl" -type "double3" -13.795000000000009 56.495099999999944 -2.3348399999999963 ;
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
	setAttr ".cpr" 7;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		3 0 1.4142135623730949 2.8284271247461898
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		15
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-14.795000000000009 56.495099999999944 -2.3348399999999967
		-13.795000000000009 56.495099999999944 -3.3348399999999963
		-13.795000000000009 55.495099999999944 -2.3348399999999963
		-13.795000000000009 56.495099999999944 -1.3348399999999963
		-13.795000000000009 57.495099999999944 -2.3348399999999963
		-13.795000000000009 56.495099999999944 -3.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		-12.795000000000009 56.495099999999944 -2.3348399999999963
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode pointConstraint -n "poleVectorGroup_pointConstraint1" -p "poleVectorGroup";
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
	setAttr ".o" -type "double3" 0 -48.466883614744376 0 ;
	setAttr -k on ".w0";
createNode transform -n "locator1" -p "main";
	setAttr ".rp" -type "double3" -3.0423727035522461 56.861118316650391 -9.3355556963101289 ;
	setAttr ".sp" -type "double3" -3.0423727035522461 56.861118316650391 -9.3355556963101289 ;
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -3.0423727035522461 56.861118316650391 -9.3355556963101289 ;
createNode parentConstraint -n "locator1_parentConstraint1" -p "locator1";
	addAttr -ci true -k true -sn "w0" -ln "bip_spine_2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.0423727035522461 8.8144930172457165 6.1474477895084414 ;
	setAttr ".tg[0].tor" -type "double3" 173.26418577919966 0 0 ;
	setAttr ".lr" -type "double3" 9.5416640443905487e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -7.1054273576010019e-015 0 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905487e-015 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "RefRNfosterParent1";
createNode orientConstraint -n "Ref:bip_pelvis_orientConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "PelvisControlW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "zooVisManMaster" -ln "zooVisManMaster" -min 0 -max 1 -at "bool";
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
	setAttr ".lr" -type "double3" -175.92320854098014 0 0 ;
	setAttr ".o" -type "double3" 175.92320854098014 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".zooVisManMaster";
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
	setAttr ".rst" -type "double3" 0 48.466883614744376 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "control_coatFront0R_0W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -7.1127188139286091e-008 -1.1088052342955734e-007 
		1.3667958326246676e-007 ;
	setAttr ".tg[0].tor" -type "double3" 71.782730558225282 125.53301401417575 89.999997489201078 ;
	setAttr ".lr" -type "double3" -6.0005330266670844 0.45392986182180511 1.684551306116671 ;
	setAttr ".rst" -type "double3" -2.7666990756988952 0.22086800019381769 -6.5454671458914193 ;
	setAttr ".rsrr" -type "double3" 1.1927080046284059e-014 -6.6322707328498833e-008 
		1.5902773414220672e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "control_coatFront0L_0W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.0714822140656111e-007 4.4665375842356525e-008 
		1.2972592766669067e-007 ;
	setAttr ".tg[0].tor" -type "double3" 103.89633069778444 50.146047258442543 89.99999733842381 ;
	setAttr ".lr" -type "double3" -6.0004971651433694 -0.45392583485273058 -1.6845345503294116 ;
	setAttr ".rst" -type "double3" 2.7666990000000591 0.22086800019381059 -6.5454671458914202 ;
	setAttr ".rsrr" -type "double3" -2.4649298790063998e-014 1.5711718123713001e-007 
		-6.3611093291302286e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_hippouch_0_B_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_hippouch_0_BControlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 4.7462034302725442e-015 
		-2.1094237467877974e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.9878466759146975e-016 -3.1805546814635168e-015 
		0 ;
	setAttr ".lr" -type "double3" -24.999999999999975 6.4684749321407562e-015 -2.1235999125268579e-016 ;
	setAttr ".rst" -type "double3" -2.6258317511768805 -4.2742293482400697 4.5524491811559393 ;
	setAttr ".rsrr" -type "double3" -25 3.1051628359394423e-015 -6.8839802736498928e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_hippouch_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_hippouch_0_LControlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.3322676295501878e-015 5.1070259132757201e-015 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 4.7708320221952775e-015 2.8624992133171654e-014 
		-9.5416640443905503e-015 ;
	setAttr ".lr" -type "double3" -25.000000000000014 -1.3812190824081727e-014 2.5866528015766037e-014 ;
	setAttr ".rst" -type "double3" 7.446070934542961 -4.002973384839656 -4.0721476990735654 ;
	setAttr ".rsrr" -type "double3" -25.000000000000007 -4.1451315897839177e-015 1.0692284562548307e-014 ;
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
	setAttr ".lr" -type "double3" 0.10125132748815074 -19.14807257648706 -0.60027600168340056 ;
	setAttr ".rsrr" -type "double3" -9.8644390259791965 -19.450378518344838 1.8982058704048099 ;
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
	setAttr ".rsrr" -type "double3" 9.5938684596035433 19.536724644193161 0.31820967455949134 ;
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
	setAttr ".lr" -type "double3" 1.1797603340710361 8.9026339607953808 17.031337597731309 ;
	setAttr ".rsrr" -type "double3" 1.6399735076296263e-015 5.3671860249696851e-015 
		9.1440947092076103e-015 ;
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
	setAttr ".lr" -type "double3" 0.10124865901620093 -19.147952756929453 -0.60027060181265424 ;
	setAttr ".rsrr" -type "double3" -3.3669153073305199e-015 -9.5416640443905503e-015 
		7.7029058691694574e-016 ;
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
	setAttr ".rsrr" -type "double3" -1.1927080055488188e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 1.1797461123334023 8.9025831737120669 17.03123095223048 ;
	setAttr ".rsrr" -type "double3" 7.5165452433024505e-015 -7.9513867036587899e-016 
		-1.1927080055488186e-015 ;
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
	setAttr ".lr" -type "double3" 0 -1.4787793334710984e-006 0 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 1.1102230246251565e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 1.8873791418627661e-015 ;
	setAttr ".tg[1].tor" -type "double3" -7.9513867036587935e-015 0 0 ;
	setAttr ".lr" -type "double3" 8.7465253740246703e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -4.2798831145465783 -4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" 8.7465253740246703e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 2.1316282072803006e-014 2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635176e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 1.4210854715202004e-014 2.6645352591003757e-015 ;
	setAttr ".tg[1].tor" -type "double3" -4.7708320221952767e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.0336802714756429e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -6.2171132690344848 0 ;
	setAttr ".rsrr" -type "double3" 2.3854160110976364e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 4.2632564145606011e-014 -9.7699626167013776e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 1.4210854715202004e-014 -1.7763568394002505e-015 ;
	setAttr ".tg[1].tor" -type "double3" -5.5659706925611543e-015 0 0 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -6.0887999494348648 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_backpack_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "BackPackControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.1489003354759149 -2.2103989670176603 ;
	setAttr ".tg[0].tor" -type "double3" 2.3854160110976368e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 1.3468803008105041 6.3300282479495458 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-014 -1.3988810110276972e-014 ;
	setAttr ".tg[0].tor" -type "double3" 4.7708320221952736e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0 4.6629367034256575e-015 ;
	setAttr ".tg[1].tor" -type "double3" -7.9513867036587935e-015 0 0 ;
	setAttr ".lr" -type "double3" -3.975693351829396e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.1025085712998646 1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 9.5416640443905503e-015 -2.3854160110976372e-015 -4.7708320221952752e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635176e-015 1.033680271475643e-014 
		-5.1684013573782151e-015 ;
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
	setAttr ".lr" -type "double3" -0.027373743659409592 -4.5765647948767114 0.68497331178683774 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-015 3.1805546814635156e-015 
		1.4710065401768764e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.6327832942979512e-016 -7.7715611723760958e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.5781240166464568e-015 -2.7034714792439897e-014 
		-2.981770013872048e-016 ;
	setAttr ".lr" -type "double3" -2.4251729446159311e-014 1.0933156717530837e-014 -2.3138524421809806e-030 ;
	setAttr ".rst" -type "double3" 0.76144329545736866 4.8222607371772899 2.78213489884231 ;
	setAttr ".rsrr" -type "double3" 2.1071174764695797e-014 1.4908850069360237e-014 
		-9.5416640443905471e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.3306690738754696e-016 -5.3290705182007514e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.0177774980683249e-013 1.7493050748049341e-014 
		4.1347210859025721e-014 ;
	setAttr ".lr" -type "double3" -1.2086107789561361e-013 0 0 ;
	setAttr ".rst" -type "double3" 8.1074572255701582e-006 2.2197164052228833 -3.4754647860069099e-005 ;
	setAttr ".rsrr" -type "double3" -1.0177774980683251e-013 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 6.6613381477509392e-016 0 -1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317571e-014 -1.2722218725854067e-014 
		6.9972202992197363e-014 ;
	setAttr ".lr" -type "double3" -5.6753022597364627e-014 0 0 ;
	setAttr ".rst" -type "double3" 3.2146029287360989e-006 1.3726932921695418 -1.6229956891322672e-005 ;
	setAttr ".rsrr" -type "double3" 7.8519943698630585e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-016 8.8817841970012523e-016 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-015 1.272221872585407e-014 
		-2.9817700138720476e-015 ;
	setAttr ".lr" -type "double3" -5.0888874903416268e-014 1.4859153902462373e-014 1.2722218725854061e-014 ;
	setAttr ".rst" -type "double3" 0.68185382637337 5.2598376348829863 1.2364880137828285 ;
	setAttr ".rsrr" -type "double3" 1.6697912077683464e-014 -4.1744780194208628e-015 
		-1.9083328088781101e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.7747582837255322e-015 -8.8817841970012523e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905459e-014 -3.1805546814635168e-015 
		1.9083328088781101e-014 ;
	setAttr ".lr" -type "double3" 7.6333312355124402e-014 0 0 ;
	setAttr ".rst" -type "double3" 9.1887021120840018e-006 2.6014324501872763 -5.1264180939369908e-005 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905497e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 5.773159728050814e-015 -1.0658141036401503e-014 
		-5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.6791648310733843e-014 1.1927080055488186e-014 
		3.4190962825732801e-014 ;
	setAttr ".lr" -type "double3" 2.4649298781342254e-014 0 0 ;
	setAttr ".rst" -type "double3" -1.3845238170162588e-005 1.6518440959198077 -2.6138910570239204e-005 ;
	setAttr ".rsrr" -type "double3" -4.2142349529391595e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 -3.5527136788005009e-015 
		-1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587919e-015 -1.5902773407317584e-014 
		6.510197863620636e-015 ;
	setAttr ".lr" -type "double3" -1.1290969119195487e-013 1.1927080055488197e-014 6.3611093629270233e-015 ;
	setAttr ".rst" -type "double3" 0.33584082925480985 5.9013794343992299 -0.44153568321865178 ;
	setAttr ".rsrr" -type "double3" 2.0673605429512861e-014 -5.3671860249696804e-015 
		-2.2263882770244617e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -1.2434497875801753e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.5902773407317581e-014 3.3395824155366928e-014 
		3.3395824155366928e-014 ;
	setAttr ".lr" -type "double3" -1.1449996853268662e-013 0 0 ;
	setAttr ".rst" -type "double3" -1.2559417126301042e-006 2.9740226684368922 -1.1039000398227472e-005 ;
	setAttr ".rsrr" -type "double3" -4.4527765540489235e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-015 -2.1316282072803006e-014 
		-1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" 4.1347210859025702e-014 7.9513867036587919e-016 
		1.7095481412866407e-014 ;
	setAttr ".lr" -type "double3" -1.1768052321415011e-013 0 0 ;
	setAttr ".rst" -type "double3" 9.2953098207448903e-006 2.1943724917546081 5.8688384793725845e-005 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.6188439477815564e-014 -1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -7.4047288677822516e-014 -2.7432284127622837e-014 
		2.0794739836326413e-015 ;
	setAttr ".lr" -type "double3" -8.587497639951495e-014 3.3793393490549868e-014 3.1805546814634915e-015 ;
	setAttr ".rst" -type "double3" 0.22417112110665016 6.1468047121770457 -2.4256932120983001 ;
	setAttr ".rsrr" -type "double3" 7.951386703658791e-014 -2.7829853462805657e-015 
		-1.5902773407317581e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 -2.6645352591003757e-014 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 8.9055531080978419e-014 -2.4251729446159317e-014 
		8.7465253740246719e-015 ;
	setAttr ".lr" -type "double3" -1.717499527990299e-013 0 0 ;
	setAttr ".rst" -type "double3" 2.0097080197123418e-005 2.4699398465554006 6.6286742733012716e-005 ;
	setAttr ".rsrr" -type "double3" -1.4630551534732177e-013 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 -3.0198066269804258e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270304e-015 -1.3119788061037004e-014 
		-2.9022561468354588e-014 ;
	setAttr ".lr" -type "double3" -1.0217531914201545e-013 0 0 ;
	setAttr ".rst" -type "double3" -5.5782008760996149e-006 1.7755530005552984 -2.4246409969563842e-005 ;
	setAttr ".rsrr" -type "double3" 6.2418385623721515e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.2885087682171843e-015 -5.440092820663267e-015 
		-4.8849813083506888e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.6278201835443243e-015 2.9817700138720464e-015 
		1.2722218725854064e-014 ;
	setAttr ".lr" -type "double3" 1.7691835415640811e-014 -4.3732626870123383e-015 1.9580289757759776e-014 ;
	setAttr ".rst" -type "double3" 1.533529175097069 2.1571014366876238 -2.270482540753461 ;
	setAttr ".rsrr" -type "double3" -5.5659706925611543e-015 -7.9513867036587959e-016 
		-8.3489560388417319e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.9581120299442318e-015 -1.7541523789077473e-014 
		-1.8873791418627661e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.460501696722767e-016 -9.541664044390544e-015 
		4.333505753494039e-014 ;
	setAttr ".lr" -type "double3" 1.0734372049939369e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.8937297297915165e-005 2.7888441227019793 -5.7542328127935249e-006 ;
	setAttr ".rsrr" -type "double3" 2.7829853462805772e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -6.4948046940571658e-015 -1.3211653993039363e-014 
		-2.4313884239290928e-014 ;
	setAttr ".tg[0].tor" -type "double3" 6.0256602363664279e-015 -2.4251729446159305e-014 
		1.6300342742500514e-014 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" -1.7113955586012253e-005 1.6264667463836349 1.4675492818083669e-005 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-014 0 0 ;
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
	setAttr ".rsrr" -type "double3" 0 6.361109362927032e-015 0 ;
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
	setAttr ".lr" -type "double3" -0.027363251850621918 -4.5758799089046249 0.68487234685539988 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976392e-015 9.5416640443905503e-015 
		-1.5505204072134644e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.1934897514720433e-015 3.1086244689504383e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 7.5538173684758488e-015 -7.9513867036587856e-015 
		-2.9817700138720448e-015 ;
	setAttr ".lr" -type "double3" 1.9878466759146964e-015 -1.0734372049939369e-014 1.9083328088781101e-014 ;
	setAttr ".rst" -type "double3" -0.76140173022925595 -4.8223063543062317 -2.782147901494167 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635152e-015 -5.864147693948357e-015 
		1.2722218725854061e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.3298697960381105e-015 -1.0658141036401503e-014 
		8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.2722218725854064e-014 -1.5902773407317576e-015 
		3.8166656177562176e-014 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -2.2196879410221957 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.5543122344752192e-015 0 5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.8166656177562182e-014 4.7708320221952736e-015 
		-7.9513867036587903e-015 ;
	setAttr ".lr" -type "double3" -9.1440947092076103e-015 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -1.3726962499927513 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.5880632500260296e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.5543122344752192e-015 1.021405182655144e-014 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 3.4986101496098681e-014 2.7034714792439888e-014 
		3.975693351829395e-016 ;
	setAttr ".lr" -type "double3" 5.0888874903416268e-014 -4.6615004550199663e-014 -9.5416640443905708e-015 ;
	setAttr ".rst" -type "double3" -0.68183074627325979 -5.2598119721034902 -1.2364832923449303 ;
	setAttr ".rsrr" -type "double3" -1.8486974086006691e-014 -2.3456590775793441e-014 
		6.3611093629270375e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 1.0658141036401503e-014 
		-8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.1347210859025721e-014 1.033680271475643e-014 
		-3.7371517507196328e-014 ;
	setAttr ".lr" -type "double3" 1.0177774980683254e-013 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 -2.6014836876855143 0 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.2204460492503131e-015 2.1316282072803006e-014 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.8624992133171654e-014 1.5902773407317587e-014 
		-5.5659706925611551e-015 ;
	setAttr ".lr" -type "double3" 9.5416640443905497e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-015 -1.6517824209371472 5.3290705182007514e-015 ;
	setAttr ".rsrr" -type "double3" -1.5107634736951704e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 9.9920072216264089e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.2600685485001041e-014 1.1927080055488186e-014 
		-1.1380422219611643e-014 ;
	setAttr ".lr" -type "double3" 5.5659706925611529e-014 -4.0750856856251317e-014 2.2263882770244598e-014 ;
	setAttr ".rst" -type "double3" -0.33581227315728768 -5.9014208378593072 0.44152763922975491 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-014 -1.7890620083232252e-015 
		1.5902773407317584e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-015 8.8817841970012523e-015 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.2722218725854067e-014 7.9513867036587935e-015 
		-2.385416011097638e-015 ;
	setAttr ".lr" -type "double3" 6.9972202992197363e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -2.9739668368580858 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 1.0658141036401503e-014 
		-8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854061e-014 5.9635400277440939e-016 
		-3.4190962825732814e-014 ;
	setAttr ".lr" -type "double3" 5.0888874903416268e-014 0 0 ;
	setAttr ".rst" -type "double3" -4.4408920985006262e-016 -2.1944032855973994 -5.3290705182007514e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 4.6559978095217502e-015 0 ;
	setAttr ".tg[0].tor" -type "double3" 5.0193128566846111e-015 1.5505204072134641e-014 
		4.2381512332587578e-015 ;
	setAttr ".lr" -type "double3" 5.7249984266343296e-014 -5.4864568255245674e-014 1.5902773407317555e-014 ;
	setAttr ".rst" -type "double3" -0.22417418462721983 -6.1467912696285918 2.4256999109597661 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-015 -1.3119788061037004e-014 
		3.1805546814635152e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -1.0658141036401503e-014 
		-1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905503e-015 2.8624992133171641e-014 
		-3.2203116149818089e-014 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 1.3322676295501878e-015 -2.4700039257181858 -1.4210854715202004e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 -3.3750779948604759e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-014 3.9756933518293967e-015 
		1.8288189418415224e-014 ;
	setAttr ".lr" -type "double3" 2.9022561468354588e-014 0 0 ;
	setAttr ".rst" -type "double3" 6.6613381477509392e-016 -1.7755443564795677 8.8817841970012523e-015 ;
	setAttr ".rsrr" -type "double3" 3.3793393490549868e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.8892500331400015e-015 1.2989609388114332e-014 
		3.4416913763379853e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.167859922099885e-015 5.9635400277440949e-016 
		1.9878466759146984e-015 ;
	setAttr ".lr" -type "double3" -2.9817700138720468e-015 -1.1927080055488188e-015 
		-1.9878466759146977e-016 ;
	setAttr ".rst" -type "double3" -1.5335015943631873 -2.1571437005303142 2.2704733239212249 ;
	setAttr ".rsrr" -type "double3" 4.5720473546038052e-015 -1.1927080055488188e-015 
		-2.1866313435061676e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.0669911055269949e-015 2.631228568361621e-014 
		-6.106226635438361e-016 ;
	setAttr ".tg[0].tor" -type "double3" 3.391763390779454e-015 1.3716142063811415e-014 
		-2.7829853462805772e-015 ;
	setAttr ".lr" -type "double3" -3.975693351829396e-015 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 -2.7888516878362415 0 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976376e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.4918621893400541e-015 2.3092638912203256e-014 
		6.2172489379008766e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.1218909677193579e-014 2.584200678689108e-014 
		-1.1529510720305252e-014 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -1.6264267679249333 1.3877787807814457e-015 ;
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
	setAttr ".lr" -type "double3" -7.9513867036587899e-016 0 0 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585827e-014 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_glasses_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_glassesControlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -20.970216171969938 -9.9465776424872914 3.6570232848295867 ;
	setAttr ".rst" -type "double3" -0.022273387037058577 -1.3011315805861585 -5.929777336920802 ;
	setAttr ".rsrr" -type "double3" -7.1438239915684456e-017 -1.3941629084722638e-033 
		-2.2363275104040351e-015 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 8 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr -s 797 ".phl";
	setAttr ".phl[155]" 0;
	setAttr ".phl[1022]" 0;
	setAttr ".phl[1889]" 0;
	setAttr ".phl[3602]" 0;
	setAttr ".phl[3603]" 22;
	setAttr ".phl[3604]" -1;
	setAttr ".phl[3605]" 0;
	setAttr ".phl[3606]" 23;
	setAttr ".phl[3607]" -1;
	setAttr ".phl[3608]" 0;
	setAttr ".phl[3609]" 24;
	setAttr ".phl[3610]" -1;
	setAttr ".phl[3611]" 0;
	setAttr ".phl[3612]" 25;
	setAttr ".phl[3613]" -1;
	setAttr ".phl[3614]" 0;
	setAttr ".phl[3615]" 26;
	setAttr ".phl[3616]" -1;
	setAttr ".phl[4490]" 0;
	setAttr ".phl[4532]" 0;
	setAttr ".phl[5408]" 0;
	setAttr ".phl[5409]" 28;
	setAttr ".phl[5410]" -1;
	setAttr ".phl[5411]" 0;
	setAttr ".phl[5412]" 31;
	setAttr ".phl[5413]" -1;
	setAttr ".phl[5414]" 0;
	setAttr ".phl[5415]" 33;
	setAttr ".phl[5416]" -1;
	setAttr ".phl[5417]" 0;
	setAttr ".phl[5418]" 35;
	setAttr ".phl[5419]" -1;
	setAttr ".phl[5421]" 0;
	setAttr ".phl[5422]" 0;
	setAttr ".phl[5423]" 0;
	setAttr ".phl[5424]" 0;
	setAttr ".phl[5451]" 0;
	setAttr ".phl[5605]" -0.13050455741177402;
	setAttr ".phl[5606]" 0;
	setAttr ".phl[5607]" 0;
	setAttr ".phl[5608]" 0;
	setAttr ".phl[5609]" 0;
	setAttr ".phl[5610]" 0;
	setAttr ".phl[5611]" 0.13050455741177402;
	setAttr ".phl[5612]" 0;
	setAttr ".phl[5613]" 0;
	setAttr ".phl[5614]" 0;
	setAttr ".phl[5615]" 0;
	setAttr ".phl[5616]" 0;
	setAttr ".phl[6344]" -1.1102230246251565e-016;
	setAttr ".phl[6345]" 78.958720999999954;
	setAttr ".phl[6346]" 11.336430000000005;
	setAttr ".phl[6347]" 0;
	setAttr ".phl[6348]" 0;
	setAttr ".phl[6349]" 0;
	setAttr ".phl[6350]" 0;
	setAttr ".phl[6351]" 0;
	setAttr ".phl[6354]" -type "TdataCompound" ;
	setAttr ".phl[6355]" 0;
	setAttr ".phl[6356]" 0;
	setAttr ".phl[6357]" 0;
	setAttr ".phl[6358]" 0;
	setAttr ".phl[6359]" 0;
	setAttr ".phl[6360]" 0;
	setAttr ".phl[6361]" 0;
	setAttr ".phl[6362]" 0;
	setAttr ".phl[6363]" 0;
	setAttr ".phl[6364]" 0;
	setAttr ".phl[6365]" 0;
	setAttr ".phl[6366]" 0;
	setAttr ".phl[6367]" 0;
	setAttr ".phl[6368]" 0;
	setAttr ".phl[6369]" 0;
	setAttr ".phl[6370]" 0;
	setAttr ".phl[6371]" 0;
	setAttr ".phl[6372]" 0;
	setAttr ".phl[6373]" 0;
	setAttr ".phl[6374]" 0;
	setAttr ".phl[6375]" 0;
	setAttr ".phl[6376]" 0;
	setAttr ".phl[6377]" 0;
	setAttr ".phl[6378]" 0;
	setAttr ".phl[6379]" 0;
	setAttr ".phl[6380]" 0;
	setAttr ".phl[6381]" 0;
	setAttr ".phl[6382]" 0;
	setAttr ".phl[6383]" 0;
	setAttr ".phl[6384]" 0;
	setAttr ".phl[6385]" 0;
	setAttr ".phl[6386]" 0;
	setAttr ".phl[6387]" 0;
	setAttr ".phl[6388]" 0;
	setAttr ".phl[6389]" 0;
	setAttr ".phl[6390]" 0;
	setAttr ".phl[6391]" 0;
	setAttr ".phl[6392]" 0;
	setAttr ".phl[6393]" 0;
	setAttr ".phl[6394]" 0;
	setAttr ".phl[6395]" 0;
	setAttr ".phl[6396]" 0;
	setAttr ".phl[6397]" 0;
	setAttr ".phl[6398]" 0;
	setAttr ".phl[6399]" 0;
	setAttr ".phl[6400]" 0;
	setAttr ".phl[6401]" 0;
	setAttr ".phl[6402]" 0;
	setAttr ".phl[6403]" 0;
	setAttr ".phl[6404]" 0;
	setAttr ".phl[6405]" 0;
	setAttr ".phl[6406]" 0;
	setAttr ".phl[6407]" 0;
	setAttr ".phl[6408]" 0;
	setAttr ".phl[6409]" 0;
	setAttr ".phl[6410]" 0;
	setAttr ".phl[6411]" 0;
	setAttr ".phl[6412]" 0;
	setAttr ".phl[6413]" 0;
	setAttr ".phl[6414]" 0;
	setAttr ".phl[6415]" 0;
	setAttr ".phl[6416]" 0;
	setAttr ".phl[6417]" 0;
	setAttr ".phl[6418]" 0;
	setAttr ".phl[6419]" 0;
	setAttr ".phl[6420]" 0;
	setAttr ".phl[6421]" 0;
	setAttr ".phl[6422]" 0;
	setAttr ".phl[6423]" 0;
	setAttr ".phl[6424]" 0;
	setAttr ".phl[6425]" 0;
	setAttr ".phl[6426]" 0;
	setAttr ".phl[6427]" 0;
	setAttr ".phl[6428]" 0;
	setAttr ".phl[6429]" 0;
	setAttr ".phl[6430]" 0;
	setAttr ".phl[6431]" 0;
	setAttr ".phl[6432]" 0;
	setAttr ".phl[6433]" 0;
	setAttr ".phl[6434]" 0;
	setAttr ".phl[6435]" 0;
	setAttr ".phl[6436]" 0;
	setAttr ".phl[6437]" 0;
	setAttr ".phl[6438]" 0;
	setAttr ".phl[6439]" 0;
	setAttr ".phl[6440]" 0;
	setAttr ".phl[6441]" 0;
	setAttr ".phl[6442]" 0;
	setAttr ".phl[6443]" 0;
	setAttr ".phl[6444]" 0;
	setAttr ".phl[6445]" 0;
	setAttr ".phl[6446]" 0;
	setAttr ".phl[6447]" 0;
	setAttr ".phl[6448]" 0;
	setAttr ".phl[6449]" 0;
	setAttr ".phl[6450]" 0;
	setAttr ".phl[6451]" 0;
	setAttr ".phl[6452]" 0;
	setAttr ".phl[6453]" 0;
	setAttr ".phl[6454]" 0;
	setAttr ".phl[6455]" 0;
	setAttr ".phl[6456]" 0;
	setAttr ".phl[6457]" 0;
	setAttr ".phl[6458]" 0;
	setAttr ".phl[6459]" 0;
	setAttr ".phl[6460]" 0;
	setAttr ".phl[6461]" 0;
	setAttr ".phl[6462]" 0;
	setAttr ".phl[6463]" 0;
	setAttr ".phl[6464]" 0;
	setAttr ".phl[6465]" 0;
	setAttr ".phl[6466]" 0;
	setAttr ".phl[6467]" 0;
	setAttr ".phl[6468]" 0;
	setAttr ".phl[6469]" 0;
	setAttr ".phl[6470]" 0;
	setAttr ".phl[6471]" 0;
	setAttr ".phl[6472]" 0;
	setAttr ".phl[6473]" 0;
	setAttr ".phl[6474]" 0;
	setAttr ".phl[6475]" 0;
	setAttr ".phl[6476]" 0;
	setAttr ".phl[6477]" 0;
	setAttr ".phl[6478]" 0;
	setAttr ".phl[6479]" 0;
	setAttr ".phl[6480]" 0;
	setAttr ".phl[6481]" 0;
	setAttr ".phl[6482]" 0;
	setAttr ".phl[6483]" 0;
	setAttr ".phl[6484]" 0;
	setAttr ".phl[6485]" 0;
	setAttr ".phl[6486]" 0;
	setAttr ".phl[6487]" 0;
	setAttr ".phl[6488]" 0;
	setAttr ".phl[6489]" 0;
	setAttr ".phl[6490]" 0;
	setAttr ".phl[6491]" 0;
	setAttr ".phl[6492]" 0;
	setAttr ".phl[6493]" 0;
	setAttr ".phl[6494]" 0;
	setAttr ".phl[6495]" 0;
	setAttr ".phl[6496]" 0;
	setAttr ".phl[6497]" 0;
	setAttr ".phl[6498]" 0;
	setAttr ".phl[6499]" 0;
	setAttr ".phl[6500]" 0;
	setAttr ".phl[6501]" 0;
	setAttr ".phl[6502]" 0;
	setAttr ".phl[6503]" 0;
	setAttr ".phl[6504]" 0;
	setAttr ".phl[6505]" 0;
	setAttr ".phl[6506]" 0;
	setAttr ".phl[6507]" 0;
	setAttr ".phl[6508]" 0;
	setAttr ".phl[6509]" 0;
	setAttr ".phl[6510]" 0;
	setAttr ".phl[6511]" 0;
	setAttr ".phl[6512]" 0;
	setAttr ".phl[6513]" 0;
	setAttr ".phl[6514]" 0;
	setAttr ".phl[6515]" 0;
	setAttr ".phl[6516]" 0;
	setAttr ".phl[6517]" 0;
	setAttr ".phl[6518]" 0;
	setAttr ".phl[6519]" 0;
	setAttr ".phl[6520]" 0;
	setAttr ".phl[6521]" 0;
	setAttr ".phl[6522]" 0;
	setAttr ".phl[6523]" 0;
	setAttr ".phl[6524]" 0;
	setAttr ".phl[6525]" 0;
	setAttr ".phl[6526]" 0;
	setAttr ".phl[6527]" 0;
	setAttr ".phl[6528]" 0;
	setAttr ".phl[6529]" 0;
	setAttr ".phl[6530]" 0;
	setAttr ".phl[6531]" 0;
	setAttr ".phl[6532]" 0;
	setAttr ".phl[6533]" 0;
	setAttr ".phl[6534]" 0;
	setAttr ".phl[6535]" 0;
	setAttr ".phl[6536]" 0;
	setAttr ".phl[6537]" 0;
	setAttr ".phl[6538]" 0;
	setAttr ".phl[6539]" 0;
	setAttr ".phl[6540]" 0;
	setAttr ".phl[6541]" 0;
	setAttr ".phl[6542]" 0;
	setAttr ".phl[6543]" 0;
	setAttr ".phl[6544]" 0;
	setAttr ".phl[6545]" 0;
	setAttr ".phl[6546]" 0;
	setAttr ".phl[6547]" 0;
	setAttr ".phl[6548]" 0;
	setAttr ".phl[6549]" 0;
	setAttr ".phl[6550]" 0;
	setAttr ".phl[6551]" 0;
	setAttr ".phl[6552]" 0;
	setAttr ".phl[6553]" 0;
	setAttr ".phl[6554]" 0;
	setAttr ".phl[6555]" 0;
	setAttr ".phl[6556]" 0;
	setAttr ".phl[6557]" 0;
	setAttr ".phl[6558]" 0;
	setAttr ".phl[6559]" 0;
	setAttr ".phl[6560]" 0;
	setAttr ".phl[6561]" 0;
	setAttr ".phl[6562]" 0;
	setAttr ".phl[6563]" 0;
	setAttr ".phl[6564]" 0;
	setAttr ".phl[6565]" 0;
	setAttr ".phl[6566]" 0;
	setAttr ".phl[6567]" 0;
	setAttr ".phl[6568]" 0;
	setAttr ".phl[6569]" 0;
	setAttr ".phl[6570]" 0;
	setAttr ".phl[6571]" 0;
	setAttr ".phl[6572]" 0;
	setAttr ".phl[6573]" 0;
	setAttr ".phl[6574]" 0;
	setAttr ".phl[6575]" 0;
	setAttr ".phl[6576]" 0;
	setAttr ".phl[6577]" 0;
	setAttr ".phl[6578]" 0;
	setAttr ".phl[6579]" 0;
	setAttr ".phl[6580]" 0;
	setAttr ".phl[6581]" 0;
	setAttr ".phl[6582]" 0;
	setAttr ".phl[6583]" 0;
	setAttr ".phl[6584]" 0;
	setAttr ".phl[6585]" 0;
	setAttr ".phl[6586]" 0;
	setAttr ".phl[6587]" 0;
	setAttr ".phl[6588]" 0;
	setAttr ".phl[6589]" 0;
	setAttr ".phl[6590]" 0;
	setAttr ".phl[6591]" 0;
	setAttr ".phl[6592]" 0;
	setAttr ".phl[6593]" 0;
	setAttr ".phl[6594]" 0;
	setAttr ".phl[6595]" 0;
	setAttr ".phl[6596]" 0;
	setAttr ".phl[6597]" 0;
	setAttr ".phl[6598]" 0;
	setAttr ".phl[6599]" 0;
	setAttr ".phl[6600]" 0;
	setAttr ".phl[6601]" 0;
	setAttr ".phl[6602]" 0;
	setAttr ".phl[6603]" 0;
	setAttr ".phl[6604]" 0;
	setAttr ".phl[6605]" 0;
	setAttr ".phl[6606]" 0;
	setAttr ".phl[6607]" 0;
	setAttr ".phl[6608]" 0;
	setAttr ".phl[6609]" 0;
	setAttr ".phl[6610]" 0;
	setAttr ".phl[6611]" 0;
	setAttr ".phl[6612]" 0;
	setAttr ".phl[6613]" 0;
	setAttr ".phl[6614]" 0;
	setAttr ".phl[6615]" 0;
	setAttr ".phl[6616]" 0;
	setAttr ".phl[6617]" 0;
	setAttr ".phl[6618]" 0;
	setAttr ".phl[6619]" 0;
	setAttr ".phl[6620]" 0;
	setAttr ".phl[6621]" 0;
	setAttr ".phl[6622]" 0;
	setAttr ".phl[6623]" 0;
	setAttr ".phl[6624]" 0;
	setAttr ".phl[6625]" 0;
	setAttr ".phl[6626]" 0;
	setAttr ".phl[6627]" 0;
	setAttr ".phl[6628]" 0;
	setAttr ".phl[6629]" 0;
	setAttr ".phl[6630]" 0;
	setAttr ".phl[6631]" 0;
	setAttr ".phl[6632]" 0;
	setAttr ".phl[6633]" 0;
	setAttr ".phl[6634]" 0;
	setAttr ".phl[6635]" 0;
	setAttr ".phl[6636]" 0;
	setAttr ".phl[6637]" 0;
	setAttr ".phl[6638]" 0;
	setAttr ".phl[6639]" 0;
	setAttr ".phl[6640]" 0;
	setAttr ".phl[6641]" 0;
	setAttr ".phl[6642]" 0;
	setAttr ".phl[6643]" 0;
	setAttr ".phl[6644]" 0;
	setAttr ".phl[6645]" 0;
	setAttr ".phl[6646]" 0;
	setAttr ".phl[6647]" 0;
	setAttr ".phl[6648]" 0;
	setAttr ".phl[6649]" 0;
	setAttr ".phl[6650]" 0;
	setAttr ".phl[6651]" 0;
	setAttr ".phl[6652]" 0;
	setAttr ".phl[6653]" 0;
	setAttr ".phl[6654]" 0;
	setAttr ".phl[6655]" 0;
	setAttr ".phl[6656]" 0;
	setAttr ".phl[6657]" 0;
	setAttr ".phl[6658]" 0;
	setAttr ".phl[6659]" 0;
	setAttr ".phl[6660]" 0;
	setAttr ".phl[6661]" 0;
	setAttr ".phl[6662]" 0;
	setAttr ".phl[6663]" 0;
	setAttr ".phl[6664]" 0;
	setAttr ".phl[6665]" 0;
	setAttr ".phl[6666]" 0;
	setAttr ".phl[6667]" 0;
	setAttr ".phl[6668]" 0;
	setAttr ".phl[6669]" 0;
	setAttr ".phl[6670]" 0;
	setAttr ".phl[6671]" 0;
	setAttr ".phl[6672]" 0;
	setAttr ".phl[6673]" 0;
	setAttr ".phl[6674]" 0;
	setAttr ".phl[6675]" 0;
	setAttr ".phl[6676]" 0;
	setAttr ".phl[6677]" 0;
	setAttr ".phl[6678]" 0;
	setAttr ".phl[6679]" 0;
	setAttr ".phl[6680]" 0;
	setAttr ".phl[6681]" 0;
	setAttr ".phl[6682]" 0;
	setAttr ".phl[6683]" 0;
	setAttr ".phl[6684]" 0;
	setAttr ".phl[6685]" 0;
	setAttr ".phl[6686]" 0;
	setAttr ".phl[6687]" 0;
	setAttr ".phl[6688]" 0;
	setAttr ".phl[6689]" 0;
	setAttr ".phl[6690]" 0;
	setAttr ".phl[6691]" 0;
	setAttr ".phl[6692]" 0;
	setAttr ".phl[6693]" 0;
	setAttr ".phl[6694]" 0;
	setAttr ".phl[6695]" 0;
	setAttr ".phl[6696]" 0;
	setAttr ".phl[6697]" 0;
	setAttr ".phl[6698]" 0;
	setAttr ".phl[6699]" 0;
	setAttr ".phl[6700]" 0;
	setAttr ".phl[6701]" 0;
	setAttr ".phl[6702]" 0;
	setAttr ".phl[6703]" 0;
	setAttr ".phl[6704]" 0;
	setAttr ".phl[6705]" 0;
	setAttr ".phl[6706]" 0;
	setAttr ".phl[6707]" 0;
	setAttr ".phl[6708]" 0;
	setAttr ".phl[6709]" 0;
	setAttr ".phl[6710]" 0;
	setAttr ".phl[6711]" 0;
	setAttr ".phl[6712]" 0;
	setAttr ".phl[6713]" 0;
	setAttr ".phl[6714]" 0;
	setAttr ".phl[6715]" 0;
	setAttr ".phl[6716]" 0;
	setAttr ".phl[6717]" 0;
	setAttr ".phl[6718]" 0;
	setAttr ".phl[6719]" 0;
	setAttr ".phl[6720]" 0;
	setAttr ".phl[6721]" 0;
	setAttr ".phl[6722]" 0;
	setAttr ".phl[6723]" 0;
	setAttr ".phl[6724]" 0;
	setAttr ".phl[6725]" 0;
	setAttr ".phl[6726]" 0;
	setAttr ".phl[6727]" 0;
	setAttr ".phl[6728]" 0;
	setAttr ".phl[6729]" 0;
	setAttr ".phl[6730]" 0;
	setAttr ".phl[6731]" 0;
	setAttr ".phl[6732]" 0;
	setAttr ".phl[6733]" 0;
	setAttr ".phl[6734]" 0;
	setAttr ".phl[6735]" 0;
	setAttr ".phl[6736]" 0;
	setAttr ".phl[6737]" 0;
	setAttr ".phl[6738]" 0;
	setAttr ".phl[6739]" 0;
	setAttr ".phl[6740]" 0;
	setAttr ".phl[6741]" 0;
	setAttr ".phl[6742]" 0;
	setAttr ".phl[6743]" 0;
	setAttr ".phl[6744]" 0;
	setAttr ".phl[6745]" 0;
	setAttr ".phl[6746]" 0;
	setAttr ".phl[6747]" 0;
	setAttr ".phl[6748]" 0;
	setAttr ".phl[6749]" 0;
	setAttr ".phl[6750]" 0;
	setAttr ".phl[6751]" 0;
	setAttr ".phl[6752]" 0;
	setAttr ".phl[6753]" 0;
	setAttr ".phl[6754]" 0;
	setAttr ".phl[6755]" 0;
	setAttr ".phl[6756]" 0;
	setAttr ".phl[6757]" 0;
	setAttr ".phl[6758]" 0;
	setAttr ".phl[6759]" 0;
	setAttr ".phl[6760]" 0;
	setAttr ".phl[6761]" 0;
	setAttr ".phl[6762]" 0;
	setAttr ".phl[6763]" 0;
	setAttr ".phl[6764]" 0;
	setAttr ".phl[6765]" 0;
	setAttr ".phl[6766]" 0;
	setAttr ".phl[6767]" 0;
	setAttr ".phl[6768]" 0;
	setAttr ".phl[6769]" 0;
	setAttr ".phl[6770]" 0;
	setAttr ".phl[6771]" 0;
	setAttr ".phl[6772]" 0;
	setAttr ".phl[6773]" 0;
	setAttr ".phl[6774]" 0;
	setAttr ".phl[6775]" 0;
	setAttr ".phl[6776]" 0;
	setAttr ".phl[6777]" 0;
	setAttr ".phl[6778]" 0;
	setAttr ".phl[6779]" 0;
	setAttr ".phl[6780]" 0;
	setAttr ".phl[6781]" 0;
	setAttr ".phl[6782]" 0;
	setAttr ".phl[6783]" 0;
	setAttr ".phl[6784]" 0;
	setAttr ".phl[6785]" 0;
	setAttr ".phl[6786]" 0;
	setAttr ".phl[6787]" 0;
	setAttr ".phl[6788]" 0;
	setAttr ".phl[6789]" 0;
	setAttr ".phl[6790]" 0;
	setAttr ".phl[6791]" 0;
	setAttr ".phl[6792]" 0;
	setAttr ".phl[6793]" 0;
	setAttr ".phl[6794]" 0;
	setAttr ".phl[6795]" 0;
	setAttr ".phl[6796]" 0;
	setAttr ".phl[6797]" 0;
	setAttr ".phl[6798]" 0;
	setAttr ".phl[6799]" 0;
	setAttr ".phl[6800]" 0;
	setAttr ".phl[6801]" 0;
	setAttr ".phl[6802]" 0;
	setAttr ".phl[6803]" 0;
	setAttr ".phl[6804]" 0;
	setAttr ".phl[6805]" 0;
	setAttr ".phl[6806]" 0;
	setAttr ".phl[6807]" 0;
	setAttr ".phl[6808]" 0;
	setAttr ".phl[6809]" 0;
	setAttr ".phl[6810]" 0;
	setAttr ".phl[6811]" 0;
	setAttr ".phl[6812]" 0;
	setAttr ".phl[6813]" 0;
	setAttr ".phl[6814]" 0;
	setAttr ".phl[6815]" 0;
	setAttr ".phl[6816]" 0;
	setAttr ".phl[6817]" 0;
	setAttr ".phl[6818]" 0;
	setAttr ".phl[6819]" 0;
	setAttr ".phl[6820]" 0;
	setAttr ".phl[6821]" 0;
	setAttr ".phl[6822]" 0;
	setAttr ".phl[6823]" 0;
	setAttr ".phl[6824]" 0;
	setAttr ".phl[6825]" 0;
	setAttr ".phl[6826]" 0;
	setAttr ".phl[6827]" 0;
	setAttr ".phl[6828]" 0;
	setAttr ".phl[6829]" 0;
	setAttr ".phl[6830]" 0;
	setAttr ".phl[6831]" 0;
	setAttr ".phl[6832]" 0;
	setAttr ".phl[6833]" 0;
	setAttr ".phl[6834]" 0;
	setAttr ".phl[6835]" 0;
	setAttr ".phl[6836]" 0;
	setAttr ".phl[6837]" 0;
	setAttr ".phl[6838]" 0;
	setAttr ".phl[6839]" 0;
	setAttr ".phl[6840]" 0;
	setAttr ".phl[6841]" 0;
	setAttr ".phl[6842]" 0;
	setAttr ".phl[6843]" 0;
	setAttr ".phl[6844]" 0;
	setAttr ".phl[6845]" 0;
	setAttr ".phl[6846]" 0;
	setAttr ".phl[6847]" 0;
	setAttr ".phl[6848]" 0;
	setAttr ".phl[6849]" 0;
	setAttr ".phl[6850]" 0;
	setAttr ".phl[6851]" 0;
	setAttr ".phl[6852]" 0;
	setAttr ".phl[6853]" 0;
	setAttr ".phl[6854]" 0;
	setAttr ".phl[6855]" 0;
	setAttr ".phl[6856]" 0;
	setAttr ".phl[6857]" 0;
	setAttr ".phl[6858]" 0;
	setAttr ".phl[6859]" 0;
	setAttr ".phl[6860]" 0;
	setAttr ".phl[6861]" 0;
	setAttr ".phl[6862]" 0;
	setAttr ".phl[6863]" 0;
	setAttr ".phl[6864]" 0;
	setAttr ".phl[6865]" 0;
	setAttr ".phl[6866]" 0;
	setAttr ".phl[6867]" 0;
	setAttr ".phl[6868]" 0;
	setAttr ".phl[6869]" 0;
	setAttr ".phl[6870]" 0;
	setAttr ".phl[6871]" 0;
	setAttr ".phl[6872]" 0;
	setAttr ".phl[6873]" 0;
	setAttr ".phl[6874]" 0;
	setAttr ".phl[6875]" 0;
	setAttr ".phl[6876]" 0;
	setAttr ".phl[6877]" 0;
	setAttr ".phl[6878]" 0;
	setAttr ".phl[6879]" 0;
	setAttr ".phl[6880]" 0;
	setAttr ".phl[6881]" 0;
	setAttr ".phl[6882]" 0;
	setAttr ".phl[6883]" 0;
	setAttr ".phl[6884]" 0;
	setAttr ".phl[6885]" 0;
	setAttr ".phl[6886]" 0;
	setAttr ".phl[6887]" 0;
	setAttr ".phl[6888]" 0;
	setAttr ".phl[6889]" 0;
	setAttr ".phl[6890]" 0;
	setAttr ".phl[6891]" 0;
	setAttr ".phl[6892]" 0;
	setAttr ".phl[6893]" 0;
	setAttr ".phl[6894]" 0;
	setAttr ".phl[6895]" 0;
	setAttr ".phl[6896]" 0;
	setAttr ".phl[6897]" 0;
	setAttr ".phl[6898]" 0;
	setAttr ".phl[6899]" 0;
	setAttr ".phl[6900]" 0;
	setAttr ".phl[6901]" 0;
	setAttr ".phl[6902]" 0;
	setAttr ".phl[6903]" 0;
	setAttr ".phl[6904]" 0;
	setAttr ".phl[6905]" 0;
	setAttr ".phl[6906]" 0;
	setAttr ".phl[6907]" 0;
	setAttr ".phl[6908]" 0;
	setAttr ".phl[6909]" 0;
	setAttr ".phl[6910]" 0;
	setAttr ".phl[6911]" 0;
	setAttr ".phl[6912]" 0;
	setAttr ".phl[6913]" 0;
	setAttr ".phl[6914]" 0;
	setAttr ".phl[6915]" 0;
	setAttr ".phl[6916]" 0;
	setAttr ".phl[6917]" 0;
	setAttr ".phl[6918]" 0;
	setAttr ".phl[6919]" 0;
	setAttr ".phl[6920]" 0;
	setAttr ".phl[6921]" 0;
	setAttr ".phl[6922]" 0;
	setAttr ".phl[6923]" 0;
	setAttr ".phl[6924]" 0;
	setAttr ".phl[6925]" 0;
	setAttr ".phl[6926]" 0;
	setAttr ".phl[6927]" 0;
	setAttr ".phl[6928]" 0;
	setAttr ".phl[6929]" 0;
	setAttr ".phl[6930]" 0;
	setAttr ".phl[6931]" 0;
	setAttr ".phl[6932]" 0;
	setAttr ".phl[6933]" 0;
	setAttr ".phl[6934]" 0;
	setAttr ".phl[6935]" 0;
	setAttr ".phl[6936]" 0;
	setAttr ".phl[6937]" 0;
	setAttr ".phl[6938]" 0;
	setAttr ".phl[6939]" 0;
	setAttr ".phl[6940]" 0;
	setAttr ".phl[6941]" 0;
	setAttr ".phl[6942]" 0;
	setAttr ".phl[6943]" 0;
	setAttr ".phl[6944]" 0;
	setAttr ".phl[6945]" 0;
	setAttr ".phl[6946]" 0;
	setAttr ".phl[6947]" 0;
	setAttr ".phl[6948]" 0;
	setAttr ".phl[6949]" 0;
	setAttr ".phl[6950]" 0;
	setAttr ".phl[6951]" 0;
	setAttr ".phl[6952]" 0;
	setAttr ".phl[6953]" 0;
	setAttr ".phl[6954]" 0;
	setAttr ".phl[6955]" 0;
	setAttr ".phl[6956]" 0;
	setAttr ".phl[6957]" 0;
	setAttr ".phl[6958]" 0;
	setAttr ".phl[6959]" 0;
	setAttr ".phl[6960]" 0;
	setAttr ".phl[6961]" 0;
	setAttr ".phl[6962]" 0;
	setAttr ".phl[6963]" 0;
	setAttr ".phl[6964]" 0;
	setAttr ".phl[6965]" 0;
	setAttr ".phl[6966]" 0;
	setAttr ".phl[6967]" 0;
	setAttr ".phl[6968]" 0;
	setAttr ".phl[6969]" 0;
	setAttr ".phl[6970]" 0;
	setAttr ".phl[6971]" 0;
	setAttr ".phl[6972]" 0;
	setAttr ".phl[6973]" 0;
	setAttr ".phl[6974]" 0;
	setAttr ".phl[6975]" 0;
	setAttr ".phl[6976]" 0;
	setAttr ".phl[6977]" 0;
	setAttr ".phl[6978]" 0;
	setAttr ".phl[6979]" 0;
	setAttr ".phl[6980]" 0;
	setAttr ".phl[6981]" 0;
	setAttr ".phl[6982]" 0;
	setAttr ".phl[6983]" 0;
	setAttr ".phl[6984]" 0;
	setAttr ".phl[6985]" 0;
	setAttr ".phl[6986]" 0;
	setAttr ".phl[6987]" 0;
	setAttr ".phl[6988]" 0;
	setAttr ".phl[6989]" 0;
	setAttr ".phl[6990]" 0;
	setAttr ".phl[6991]" 0;
	setAttr ".phl[6992]" 0;
	setAttr ".phl[6993]" 0;
	setAttr ".phl[6994]" 0;
	setAttr ".phl[6995]" 0;
	setAttr ".phl[6996]" 0;
	setAttr ".phl[6997]" 0;
	setAttr ".phl[6998]" 0;
	setAttr ".phl[6999]" 0;
	setAttr ".phl[7000]" 0;
	setAttr ".phl[7001]" 0;
	setAttr ".phl[7002]" 0;
	setAttr ".phl[7003]" 0;
	setAttr ".phl[7004]" 0;
	setAttr ".phl[7005]" 0;
	setAttr ".phl[7006]" 0;
	setAttr ".phl[7007]" 0;
	setAttr ".phl[7008]" 0;
	setAttr ".phl[7009]" 0;
	setAttr ".phl[7010]" 0;
	setAttr ".phl[7011]" 0;
	setAttr ".phl[7012]" 0;
	setAttr ".phl[7013]" 0;
	setAttr ".phl[7014]" 0;
	setAttr ".phl[7015]" 0;
	setAttr ".phl[7016]" 0;
	setAttr ".phl[7017]" 0;
	setAttr ".phl[7018]" 0;
	setAttr ".phl[7019]" 0;
	setAttr ".phl[7020]" 0;
	setAttr ".phl[7021]" 0;
	setAttr ".phl[7022]" 0;
	setAttr ".phl[7023]" 0;
	setAttr ".phl[7024]" 0;
	setAttr ".phl[7025]" 0;
	setAttr ".phl[7026]" 0;
	setAttr ".phl[7027]" 0;
	setAttr ".phl[7028]" 0;
	setAttr ".phl[7029]" 0;
	setAttr ".phl[7030]" 0;
	setAttr ".phl[7031]" 0;
	setAttr ".phl[7032]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 472
		0 "|RefRNfosterParent1|Ref:medic_eye_loc_L_orientConstraint1" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:medic_eye_loc_R_orientConstraint1" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:viewTarget_pointConstraint1" "|Ref:medicInfo|Ref:viewTarget" 
		"-s -r "
		0 "|RefRNfosterParent1|polySurfaceShape1Deformed" "|Ref:medicInfo|Ref:rig_extras|Ref:polySurface1" 
		"-s -r "
		1 |Ref:medicInfo "main" "main" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "plotted" "plotted" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "upperBodyControl" "upperBodyControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "pelvisControl" "pelvisControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "fkSpine0" "fkSpine0" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "fkSpine1" "fkSpine1" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "fkSpine2" "fkSpine2" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "fkSpine3" "fkSpine3" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "ikSpine0" "ikSpine0" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "ikSpine1" "ikSpine1" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "ikSpine2" "ikSpine2" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "ikSpine3" "ikSpine3" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "chestParent" "chestParent" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "neckControl" "neckControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "headControl" "headControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKshoulderControl" "lFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "lFKshoulder" "lFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKelbow" "lFKelbow" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKwrist" "lFKwrist" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKshoulder" "lIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKelbow" "lIKelbow" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKwrist" "lIKwrist" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKcontrol" "lIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lWeaponAttach" "lWeaponAttach" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "lElbowControl" "lElbowControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "lIKupLeg" "lIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKknee" "lIKknee" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKankle" "lIKankle" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKtoe" "lIKtoe" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lIKtoeEnd" "lIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKupLeg" "lFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKknee" "lFKknee" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKankle" "lFKankle" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFKtoe" "lFKtoe" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lKneeControl" "lKneeControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lFootControl" "lFootControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "lToeControl" "lToeControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKshoulderControl" "rFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "rFKshoulder" "rFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKelbow" "rFKelbow" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKwrist" "rFKwrist" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKshoulder" "rIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKelbow" "rIKelbow" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKwrist" "rIKwrist" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKcontrol" "rIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rWeaponAttach" "rWeaponAttach" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "rElbowControl" "rElbowControl" " -ci 1 -at \"message\""
		
		1 |Ref:medicInfo "rIKupLeg" "rIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKknee" "rIKknee" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKankle" "rIKankle" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKtoe" "rIKtoe" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rIKtoeEnd" "rIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKupLeg" "rFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKknee" "rFKknee" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKankle" "rFKankle" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFKtoe" "rFKtoe" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rKneeControl" "rKneeControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rFootControl" "rFootControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo "rToeControl" "rToeControl" " -ci 1 -at \"message\""
		1 |Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L 
		"zooPrimOut" "zooPrimOut" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 |Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R 
		"zooPrimOut" "zooPrimOut" " -ci 1 -min 0 -max 1 -at \"bool\""
		1 Ref:zooRegister_zoo "zooRegzoovisman0" "zooRegzoovisman0" " -ci 1 -at \"message\""
		
		1 Ref:zooRegister_zoo "zooRegshaders0" "zooRegshaders0" " -ci 1 -at \"message\""
		
		2 "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape" "instObjGroups.objectGroups" 
		" -s 20"
		2 "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:nurbsToPoly3" 
		"translate" " -type \"double3\" -0.984379 -78.958721 -3.83643"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:nurbsToPoly3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:nurbsToPoly3" 
		"rotatePivot" " -type \"double3\" 0.984379 78.958721 4.373515"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:nurbsToPoly3" 
		"scalePivot" " -type \"double3\" 0.984379 78.958721 4.373515"
		2 "bindPose1" "worldMatrix" " -s 82"
		2 "bindPose1" "worldMatrix[0]" " -type \"matrix\" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1"
		
		2 "bindPose1" "xformMatrix" " -s 82"
		2 "bindPose1" "xformMatrix[0]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[1]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 48.466884 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.999367 0 0 0.0355692 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[2]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -4.279883 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0333367 0 0 0.999444 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[3]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -6.217113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0167492 0 0 0.99986 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[4]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -6.0888 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.143949 0 0 0.989585 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[5]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -5.102509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0457175 0 0 0.998954 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[10]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -3.495106 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0558435 0 0 0.99844 1 1 1 1"
		
		2 "bindPose1" "xformMatrix[68]" " -type \"matrix\" \"xform\" 1 1 1 0 0 0 0 0 -3.168686 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0486227 0 0 0.998817 1 1 1 1"
		
		2 "bindPose1" "global" " -s 82"
		2 "bindPose1" "g[0:68]" " 1 0 0 0 0 0 0 0"
		2 "bindPose1" "g[70:82]" ""
		2 "|Ref:rig_extras|Ref:polySurface1|Ref:polySurfaceShape1" "intermediateObject" 
		" 1"
		2 "|Ref:medicInfo|Ref:sfm_meshes" "visibility" " 0"
		2 "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape" 
		"instObjGroups.objectGroups" " -s 18"
		2 "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:medicInfo|Ref:sfm_meshes|Ref:hand_sfm_L" "visibility" " 1"
		2 "|Ref:medicInfo|Ref:sfm_meshes|Ref:hand_sfm_R" "visibility" " 1"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L" 
		"visibility" " 1"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L" 
		"zooPrimOut" " 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:medic_eye_loc_LShape" 
		"visibility" " -k 0 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L|Ref:group1" 
		"visibility" " 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R" 
		"visibility" " 1"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R" 
		"zooPrimOut" " 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R|Ref:medic_eye_loc_RShape" 
		"visibility" " -k 0 0"
		2 "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R|Ref:group2" 
		"visibility" " 0"
		2 "|Ref:medicInfo|Ref:game_meshes" "visibility" " 1"
		2 "|Ref:medicInfo|Ref:rig_extras|Ref:polySurface1" "visibility" " 1"
		2 "|Ref:medicInfo|Ref:rig_extras|Ref:medic_head1" "visibility" " 0"
		2 "|Ref:medicInfo|Ref:rig_extras|Ref:medic_head2" "visibility" " 0"
		2 "Ref:tweak6" "vlist[0].vertex" " -s 247"
		2 "Ref:tweak6" "vlist[0].vertex[318]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[319]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1219]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1221]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1222]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1223]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1224]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1225]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1226]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1227]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1228]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1229]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1230]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1231]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1232]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1233]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1234]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1235]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1236]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1237]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1238]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1239]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1240]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1243]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1244]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1245]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1246]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1247]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1248]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1249]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1250]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1251]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1252]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1253]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1254]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1255]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1256]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1257]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1258]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1260]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1261]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1262]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1263]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1264]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1265]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1266]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1267]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1268]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1269]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1270]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1271]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1272]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1273]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1277]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1278]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1279]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1280]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1281]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1282]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1283]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1284]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1285]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1286]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1287]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1288]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1289]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1290]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1291]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1292]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1293]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1300]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1301]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1302]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1303]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1304]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1305]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1306]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1307]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1308]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1309]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1310]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1311]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1312]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1313]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1314]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1315]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1316]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1317]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1318]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1319]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1320]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1321]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1322]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1323]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1324]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1325]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1326]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1327]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1328]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1329]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1330]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1331]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1332]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1333]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1334]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1335]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1336]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1337]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1338]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1339]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1340]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1341]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1342]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1343]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1344]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1345]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1346]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1347]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1348]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1349]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1350]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1351]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1352]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1355]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1356]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1357]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1358]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1359]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1360]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1361]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1362]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1363]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1364]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1365]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1366]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1367]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1368]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1369]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1370]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1371]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1372]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1373]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1374]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1375]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1376]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1377]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1378]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1379]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1380]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1381]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1382]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1383]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1384]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1385]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1386]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1387]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1388]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1389]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1390]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1391]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1392]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1393]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1394]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1395]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1396]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1397]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1398]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1400]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1405]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1406]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1407]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1408]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1409]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1410]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1411]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1412]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1414]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1415]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1416]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1417]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1418]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1419]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1420]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1421]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1422]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1423]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1424]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1425]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1426]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1427]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1428]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1429]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1430]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1433]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1436]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1437]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1438]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1439]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1440]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1441]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1442]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1443]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1444]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1445]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1446]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1447]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1448]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1449]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1450]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1451]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1452]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1453]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1454]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1457]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1458]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1459]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1460]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1461]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1462]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1463]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1464]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1465]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1466]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1467]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1468]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1469]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1470]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1471]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1472]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1473]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1475]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1476]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1478]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1479]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1480]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1481]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1482]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1483]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1484]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1486]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1487]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1488]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1531]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1554]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1555]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1556]" " -type \"float3\" 0 2.56439e-006 0"
		
		2 "Ref:tweak6" "vlist[0].vertex[1557]" " -type \"float3\" 0 2.56439e-006 0"
		
		3 "Ref:skinCluster12.outputGeometry[0]" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.inMesh" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medicHead.instObjGroups" "RefRN.placeHolderList[1022]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medicHeadTongue.instObjGroups" "RefRN.placeHolderList[1889]" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.inMesh" 
		"RefRN.placeHolderList[2753]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[748]" 
		"RefRN.placeHolderList[3602]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[748].objectGroupId" 
		"RefRN.placeHolderList[3603]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[748].objectGrpColor" 
		"RefRN.placeHolderList[3604]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[749]" 
		"RefRN.placeHolderList[3605]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[749].objectGroupId" 
		"RefRN.placeHolderList[3606]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[749].objectGrpColor" 
		"RefRN.placeHolderList[3607]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[750]" 
		"RefRN.placeHolderList[3608]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[750].objectGroupId" 
		"RefRN.placeHolderList[3609]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[750].objectGrpColor" 
		"RefRN.placeHolderList[3610]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[751]" 
		"RefRN.placeHolderList[3611]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[751].objectGroupId" 
		"RefRN.placeHolderList[3612]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[751].objectGrpColor" 
		"RefRN.placeHolderList[3613]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[752]" 
		"RefRN.placeHolderList[3614]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[752].objectGroupId" 
		"RefRN.placeHolderList[3615]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:medic_mesh|Ref:medic_meshShape.instObjGroups.objectGroups[752].objectGrpColor" 
		"RefRN.placeHolderList[3616]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:glasses.instObjGroups" "RefRN.placeHolderList[4490]" 
		""
		5 3 "RefRN" "|Ref:rig_extras|Ref:polySurface1|Ref:polySurfaceShape1.worldMesh" 
		"RefRN.placeHolderList[4532]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[794]" 
		"RefRN.placeHolderList[5408]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[794].objectGroupId" 
		"RefRN.placeHolderList[5409]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[794].objectGrpColor" 
		"RefRN.placeHolderList[5410]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[795]" 
		"RefRN.placeHolderList[5411]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[795].objectGroupId" 
		"RefRN.placeHolderList[5412]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[795].objectGrpColor" 
		"RefRN.placeHolderList[5413]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[796]" 
		"RefRN.placeHolderList[5414]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[796].objectGroupId" 
		"RefRN.placeHolderList[5415]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[796].objectGrpColor" 
		"RefRN.placeHolderList[5416]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[798]" 
		"RefRN.placeHolderList[5417]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[798].objectGroupId" 
		"RefRN.placeHolderList[5418]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.instObjGroups.objectGroups[798].objectGrpColor" 
		"RefRN.placeHolderList[5419]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:body_mesh_sfm|Ref:body_mesh_sfmShape.inMesh" 
		"RefRN.placeHolderList[5420]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:hand_sfm_L.instObjGroups" 
		"RefRN.placeHolderList[5421]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:hand_sfm_L.instObjGroups" 
		"RefRN.placeHolderList[5422]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:hand_sfm_R.instObjGroups" 
		"RefRN.placeHolderList[5423]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:sfm_meshes|Ref:hand_sfm_R.instObjGroups" 
		"RefRN.placeHolderList[5424]" ""
		5 3 "RefRN" "Ref:skinCluster12.outputGeometry[0]" "RefRN.placeHolderList[5451]" 
		"Ref:body_mesh_sfmShape.i"
		5 4 "RefRN" "|Ref:medicInfo.main" "RefRN.placeHolderList[5452]" ""
		5 4 "RefRN" "|Ref:medicInfo.plotted" "RefRN.placeHolderList[5453]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.upperBodyControl" "RefRN.placeHolderList[5454]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.pelvisControl" "RefRN.placeHolderList[5455]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.fkSpine0" "RefRN.placeHolderList[5456]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.fkSpine1" "RefRN.placeHolderList[5457]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.fkSpine2" "RefRN.placeHolderList[5458]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.fkSpine3" "RefRN.placeHolderList[5459]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.ikSpine0" "RefRN.placeHolderList[5460]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.ikSpine1" "RefRN.placeHolderList[5461]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.ikSpine2" "RefRN.placeHolderList[5462]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.ikSpine3" "RefRN.placeHolderList[5463]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.chestParent" "RefRN.placeHolderList[5464]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.neckControl" "RefRN.placeHolderList[5465]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.headControl" "RefRN.placeHolderList[5466]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKshoulderControl" "RefRN.placeHolderList[5467]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKshoulder" "RefRN.placeHolderList[5468]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKelbow" "RefRN.placeHolderList[5469]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKwrist" "RefRN.placeHolderList[5470]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKshoulder" "RefRN.placeHolderList[5471]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKelbow" "RefRN.placeHolderList[5472]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKwrist" "RefRN.placeHolderList[5473]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKcontrol" "RefRN.placeHolderList[5474]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lWeaponAttach" "RefRN.placeHolderList[5475]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lElbowControl" "RefRN.placeHolderList[5476]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKupLeg" "RefRN.placeHolderList[5477]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKknee" "RefRN.placeHolderList[5478]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.lIKankle" "RefRN.placeHolderList[5479]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lIKtoe" "RefRN.placeHolderList[5480]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.lIKtoeEnd" "RefRN.placeHolderList[5481]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKupLeg" "RefRN.placeHolderList[5482]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKknee" "RefRN.placeHolderList[5483]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.lFKankle" "RefRN.placeHolderList[5484]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFKtoe" "RefRN.placeHolderList[5485]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.lKneeControl" "RefRN.placeHolderList[5486]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lFootControl" "RefRN.placeHolderList[5487]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.lToeControl" "RefRN.placeHolderList[5488]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKshoulderControl" "RefRN.placeHolderList[5489]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKshoulder" "RefRN.placeHolderList[5490]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKelbow" "RefRN.placeHolderList[5491]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKwrist" "RefRN.placeHolderList[5492]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKshoulder" "RefRN.placeHolderList[5493]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKelbow" "RefRN.placeHolderList[5494]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKwrist" "RefRN.placeHolderList[5495]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKcontrol" "RefRN.placeHolderList[5496]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rWeaponAttach" "RefRN.placeHolderList[5497]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rElbowControl" "RefRN.placeHolderList[5498]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKupLeg" "RefRN.placeHolderList[5499]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKknee" "RefRN.placeHolderList[5500]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.rIKankle" "RefRN.placeHolderList[5501]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rIKtoe" "RefRN.placeHolderList[5502]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.rIKtoeEnd" "RefRN.placeHolderList[5503]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKupLeg" "RefRN.placeHolderList[5504]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKknee" "RefRN.placeHolderList[5505]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.rFKankle" "RefRN.placeHolderList[5506]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFKtoe" "RefRN.placeHolderList[5507]" ""
		
		5 4 "RefRN" "|Ref:medicInfo.rKneeControl" "RefRN.placeHolderList[5508]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rFootControl" "RefRN.placeHolderList[5509]" 
		""
		5 4 "RefRN" "|Ref:medicInfo.rToeControl" "RefRN.placeHolderList[5510]" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.rotateY" 
		"RefRN.placeHolderList[5605]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.rotateX" 
		"RefRN.placeHolderList[5606]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.rotateZ" 
		"RefRN.placeHolderList[5607]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.rotateOrder" 
		"RefRN.placeHolderList[5608]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.parentInverseMatrix" 
		"RefRN.placeHolderList[5609]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_L.message" 
		"RefRN.placeHolderList[5610]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.rotateY" 
		"RefRN.placeHolderList[5611]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.rotateX" 
		"RefRN.placeHolderList[5612]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.rotateZ" 
		"RefRN.placeHolderList[5613]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.rotateOrder" 
		"RefRN.placeHolderList[5614]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.parentInverseMatrix" 
		"RefRN.placeHolderList[5615]" ""
		5 3 "RefRN" "|Ref:medicInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:medic_eye_loc_R.message" 
		"RefRN.placeHolderList[5616]" ""
		5 4 "RefRN" "|Ref:medicInfo|Ref:viewTarget.translateX" "RefRN.placeHolderList[6344]" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:viewTarget.translateY" "RefRN.placeHolderList[6345]" 
		""
		5 4 "RefRN" "|Ref:medicInfo|Ref:viewTarget.translateZ" "RefRN.placeHolderList[6346]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:viewTarget.parentInverseMatrix" "RefRN.placeHolderList[6347]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:viewTarget.rotatePivot" "RefRN.placeHolderList[6348]" 
		""
		5 3 "RefRN" "|Ref:medicInfo|Ref:viewTarget.rotatePivotTranslate" "RefRN.placeHolderList[6349]" 
		""
		5 4 "RefRN" "Ref:zooRegister_zoo.zooRegzoovisman0" "RefRN.placeHolderList[6350]" 
		""
		5 4 "RefRN" "Ref:zooRegister_zoo.zooRegshaders0" "RefRN.placeHolderList[6351]" 
		""
		5 4 "RefRN" "Ref:lambert6SG.dagSetMembers" "RefRN.placeHolderList[6354]" 
		""
		"Ref:HeadRN" 1
		5 3 "RefRN" "|Ref:medicInfo|Ref:Head:medicHeadMesh.instObjGroups" "RefRN.placeHolderList[155]" 
		""
		"RefRN" 792
		0 "|RefRNfosterParent1|Ref:prp_glasses_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_backpack_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_hippouch_0_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_hippouch_0_B_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_0_L_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_0_R_parentConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:medicInfo_group|Ref:bip_pelvis" 
		"-s -r "
		2 "|Ref:medicInfo_group|Ref:bip_pelvis" "rotateX" " -av 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis" "rotateY" " -av 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis" "rotateZ" " -av 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis" "bindPose" " -type \"matrix\" 1 0 0 0 0 -0.99747 0.0710934 0 0 -0.0710934 -0.99747 0 0 48.466884 0 1"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" "bindPose" " -type \"matrix\" 1 0 0 0 0 -0.990515 0.137403 0 0 -0.137403 -0.990515 0 0 52.735937 -0.304271 1"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "rotateX" 
		" -av"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "rotateY" 
		" -av"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "rotateZ" 
		" -av"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" "bindPose" 
		" -type \"matrix\" 1 0 0 0 0 -0.985357 0.170502 0 0 -0.170502 -0.985357 0 0 58.894082 -1.158522 1"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"rotateX" " -av"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"rotateY" " -av"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"rotateZ" " -av"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 -0.993098 -0.117292 0 0 0.117292 -0.993098 0 0 64.893726 -2.196675 1"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 -0.978233 -0.20751 0 0 0.20751 -0.978233 0 0 69.961015 -1.598194 1"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 -0.995272 -0.0971305 0 0 0.0971305 -0.995272 0 0 73.380043 -0.872924 1"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"bindPose" " -type \"matrix\" 1 0 0 0 0 -1 0 0 0 0 -1 0 0 76.533746 -0.565148 1"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"lockInfluenceWeights" " 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L" 
		"translate" " -type \"double3\" 0 -10.567255 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L" 
		"translate" " -type \"double3\" 0 -11.573336 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L|Ref:prp_coat_front_1_L|Ref:prp_coat_front_2_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L" "translate" 
		" -type \"double3\" 7.620773 -0.770981 2.586593"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L" 
		"translate" " -type \"double3\" 0 -10.617058 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L" 
		"translate" " -type \"double3\" 0 -9.20521 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L|Ref:prp_coat_back_1_L|Ref:prp_coat_back_2_L" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_M" "translate" 
		" -type \"double3\" 0 -0.933851 4.388744"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_M" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M" 
		"translate" " -type \"double3\" 0 -10.23516 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M" 
		"translate" " -type \"double3\" 0 -10.154028 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_M|Ref:prp_coat_back_1_M|Ref:prp_coat_back_2_M" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R" "translate" 
		" -type \"double3\" -7.620773 -0.770982 2.586592"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R" 
		"translate" " -type \"double3\" 0 -10.617058 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R" 
		"translate" " -type \"double3\" 0 -9.20521 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R|Ref:prp_coat_back_1_R|Ref:prp_coat_back_2_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R" 
		"translate" " -type \"double3\" 0 -10.567255 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R" 
		"translate" " -type \"double3\" 0 -11.573336 0"
		2 "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R|Ref:prp_coat_front_1_R|Ref:prp_coat_front_2_R" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Ref:medicInfo_group|Ref:medic_head|Ref:medic_headShape" "instObjGroups.objectGroups" 
		" -s 10"
		2 "|Ref:medicInfo_group|Ref:body_mesh|Ref:body_meshShape" "instObjGroups.objectGroups" 
		" -s 10"
		2 "|Ref:medicInfo_group|Ref:body_mesh|Ref:body_meshShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:mesh_layer" "visibility" " 1"
		2 "Ref:skeleton_layer" "displayType" " 2"
		2 "Ref:skeleton_layer" "visibility" " 1"
		3 "Ref:mesh_layer.drawInfo" "|Ref:medicInfo_group|Ref:backpack_mesh.drawOverride" 
		""
		3 "|Ref:medicInfo_group|Ref:medic_head|Ref:medic_headShape.instObjGroups.objectGroups[13]" 
		"Ref:lambert3SG.dagSetMembers" "-na"
		3 "Ref:skinCluster4.outputGeometry[0]" "|Ref:medicInfo_group|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		""
		3 "Ref:lambert3SG.memberWireframeColor" "|Ref:medicInfo_group|Ref:medic_head|Ref:medic_headShape.instObjGroups.objectGroups[13].objectGrpColor" 
		""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[6355]" 
		""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[6356]" 
		""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[6357]" 
		""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[6358]" 
		""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[6359]" 
		""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[6360]" 
		""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[6361]" 
		""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.rotatePivotTranslate" 
		"RefRN.placeHolderList[6362]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[6363]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[6364]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[6365]" 
		""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[6366]" 
		""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateX" 
		"RefRN.placeHolderList[6367]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateY" 
		"RefRN.placeHolderList[6368]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" 
		"RefRN.placeHolderList[6369]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" 
		"RefRN.placeHolderList[6370]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[6371]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" 
		"RefRN.placeHolderList[6372]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" 
		"RefRN.placeHolderList[6373]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" 
		"RefRN.placeHolderList[6374]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" 
		"RefRN.placeHolderList[6375]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" 
		"RefRN.placeHolderList[6376]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[6377]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[6378]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[6379]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[6380]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[6381]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[6382]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[6383]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[6384]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[6385]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[6386]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[6387]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[6388]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.scale" 
		"RefRN.placeHolderList[6389]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotate" 
		"RefRN.placeHolderList[6390]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[6391]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[6392]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[6393]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translate" 
		"RefRN.placeHolderList[6394]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[6395]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[6396]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[6397]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[6398]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[6399]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[6400]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[6401]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentMatrix" 
		"RefRN.placeHolderList[6402]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[6403]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[6404]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[6405]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[6406]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[6407]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[6408]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[6409]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[6410]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[6411]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[6412]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[6413]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[6414]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[6415]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[6416]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[6417]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[6418]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[6419]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[6420]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[6421]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[6422]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[6423]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[6424]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[6425]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[6426]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[6427]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[6428]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[6429]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[6430]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[6431]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[6432]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[6433]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[6434]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[6435]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[6436]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[6437]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[6438]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[6439]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[6440]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[6441]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[6442]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[6443]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[6444]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[6445]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[6446]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.translateX" 
		"RefRN.placeHolderList[6447]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.translateY" 
		"RefRN.placeHolderList[6448]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.translateZ" 
		"RefRN.placeHolderList[6449]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotatePivot" 
		"RefRN.placeHolderList[6450]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotatePivotTranslate" 
		"RefRN.placeHolderList[6451]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotateX" 
		"RefRN.placeHolderList[6452]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotateY" 
		"RefRN.placeHolderList[6453]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotateZ" 
		"RefRN.placeHolderList[6454]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.rotateOrder" 
		"RefRN.placeHolderList[6455]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.jointOrient" 
		"RefRN.placeHolderList[6456]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_glasses.parentInverseMatrix" 
		"RefRN.placeHolderList[6457]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[6458]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[6459]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6460]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[6461]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[6462]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[6463]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[6464]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[6465]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[6466]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6467]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.message" 
		"RefRN.placeHolderList[6468]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[6469]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[6470]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[6471]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[6472]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6473]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6474]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[6475]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[6476]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[6477]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[6478]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[6479]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[6480]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[6481]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6482]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.message" 
		"RefRN.placeHolderList[6483]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[6484]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[6485]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[6486]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[6487]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[6488]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[6489]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[6490]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[6491]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[6492]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6493]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.message" 
		"RefRN.placeHolderList[6494]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[6495]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[6496]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6497]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[6498]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[6499]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[6500]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[6501]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[6502]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[6503]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6504]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[6505]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[6506]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[6507]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[6508]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6509]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[6510]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[6511]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[6512]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[6513]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[6514]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6515]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[6516]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[6517]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[6518]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[6519]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6520]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[6521]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[6522]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[6523]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[6524]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[6525]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6526]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[6527]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[6528]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[6529]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[6530]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6531]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[6532]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[6533]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[6534]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[6535]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[6536]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6537]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[6538]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[6539]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[6540]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[6541]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6542]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[6543]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[6544]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[6545]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[6546]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[6547]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6548]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[6549]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[6550]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[6551]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[6552]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6553]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[6554]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[6555]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[6556]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[6557]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[6558]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6559]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[6560]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[6561]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[6562]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[6563]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6564]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[6565]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[6566]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[6567]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[6568]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[6569]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6570]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[6571]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[6572]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[6573]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[6574]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6575]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[6576]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[6577]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[6578]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[6579]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[6580]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6581]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[6582]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[6583]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[6584]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[6585]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6586]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[6587]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[6588]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[6589]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[6590]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[6591]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6592]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[6593]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[6594]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[6595]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[6596]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6597]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[6598]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[6599]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[6600]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[6601]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[6602]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6603]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[6604]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[6605]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[6606]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[6607]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6608]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[6609]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[6610]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[6611]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[6612]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[6613]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6614]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[6615]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[6616]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[6617]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[6618]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6619]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[6620]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[6621]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[6622]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[6623]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[6624]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6625]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[6626]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[6627]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[6628]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[6629]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6630]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[6631]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[6632]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[6633]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[6634]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[6635]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6636]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[6637]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[6638]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[6639]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[6640]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6641]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[6642]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[6643]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[6644]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[6645]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[6646]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6647]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[6648]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[6649]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[6650]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[6651]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6652]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[6653]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[6654]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[6655]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[6656]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[6657]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6658]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[6659]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[6660]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[6661]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[6662]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6663]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[6664]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[6665]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[6666]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[6667]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[6668]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6669]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[6670]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[6671]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6672]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[6673]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[6674]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[6675]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[6676]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[6677]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[6678]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6679]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.message" 
		"RefRN.placeHolderList[6680]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[6681]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[6682]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[6683]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[6684]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6685]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6686]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[6687]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[6688]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[6689]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[6690]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[6691]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[6692]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[6693]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6694]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.message" 
		"RefRN.placeHolderList[6695]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[6696]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[6697]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[6698]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[6699]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[6700]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[6701]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[6702]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[6703]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[6704]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6705]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.message" 
		"RefRN.placeHolderList[6706]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[6707]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[6708]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6709]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[6710]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[6711]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[6712]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[6713]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[6714]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[6715]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6716]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[6717]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[6718]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[6719]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[6720]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6721]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[6722]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[6723]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[6724]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[6725]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[6726]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6727]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[6728]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[6729]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[6730]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[6731]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6732]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[6733]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[6734]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[6735]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[6736]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[6737]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6738]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[6739]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[6740]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[6741]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[6742]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6743]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[6744]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[6745]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[6746]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[6747]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[6748]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6749]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[6750]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[6751]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[6752]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[6753]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6754]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[6755]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[6756]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[6757]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[6758]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[6759]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6760]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[6761]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[6762]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[6763]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[6764]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6765]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[6766]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[6767]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[6768]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[6769]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[6770]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6771]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[6772]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[6773]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[6774]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[6775]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6776]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[6777]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[6778]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[6779]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[6780]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[6781]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6782]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[6783]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[6784]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[6785]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[6786]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6787]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[6788]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[6789]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[6790]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[6791]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[6792]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6793]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[6794]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[6795]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[6796]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[6797]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6798]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[6799]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[6800]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[6801]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[6802]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[6803]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6804]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[6805]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[6806]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[6807]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[6808]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6809]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[6810]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[6811]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[6812]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[6813]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[6814]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6815]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[6816]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[6817]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[6818]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[6819]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6820]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[6821]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[6822]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[6823]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[6824]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[6825]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6826]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[6827]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[6828]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[6829]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[6830]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6831]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[6832]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[6833]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[6834]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[6835]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[6836]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6837]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[6838]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[6839]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[6840]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[6841]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6842]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[6843]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[6844]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[6845]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[6846]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[6847]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6848]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[6849]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[6850]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[6851]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[6852]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6853]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[6854]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[6855]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[6856]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[6857]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[6858]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6859]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[6860]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[6861]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[6862]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[6863]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6864]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[6865]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[6866]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[6867]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[6868]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[6869]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6870]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[6871]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[6872]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[6873]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[6874]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6875]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[6876]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[6877]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[6878]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[6879]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[6880]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6881]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotateZ" 
		"RefRN.placeHolderList[6882]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotateX" 
		"RefRN.placeHolderList[6883]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotateY" 
		"RefRN.placeHolderList[6884]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.translateX" 
		"RefRN.placeHolderList[6885]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.translateY" 
		"RefRN.placeHolderList[6886]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.translateZ" 
		"RefRN.placeHolderList[6887]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotateOrder" 
		"RefRN.placeHolderList[6888]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.parentInverseMatrix" 
		"RefRN.placeHolderList[6889]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotatePivot" 
		"RefRN.placeHolderList[6890]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.rotatePivotTranslate" 
		"RefRN.placeHolderList[6891]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:prp_backpack.jointOrient" 
		"RefRN.placeHolderList[6892]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.scale" 
		"RefRN.placeHolderList[6893]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.message" 
		"RefRN.placeHolderList[6894]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[6895]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[6896]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[6897]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[6898]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[6899]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[6900]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6901]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6902]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6903]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotate" 
		"RefRN.placeHolderList[6904]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" 
		"RefRN.placeHolderList[6905]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" 
		"RefRN.placeHolderList[6906]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" 
		"RefRN.placeHolderList[6907]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" 
		"RefRN.placeHolderList[6908]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" 
		"RefRN.placeHolderList[6909]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[6910]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[6911]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[6912]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" 
		"RefRN.placeHolderList[6913]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" 
		"RefRN.placeHolderList[6914]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6915]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.message" 
		"RefRN.placeHolderList[6916]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[6917]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[6918]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[6919]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[6920]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[6921]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6922]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.message" 
		"RefRN.placeHolderList[6923]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[6924]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[6925]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[6926]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[6927]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[6928]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6929]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[6930]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[6931]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[6932]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[6933]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[6934]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6935]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.scale" 
		"RefRN.placeHolderList[6936]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.message" 
		"RefRN.placeHolderList[6937]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[6938]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[6939]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[6940]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[6941]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[6942]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[6943]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6944]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6945]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[6946]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotate" 
		"RefRN.placeHolderList[6947]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" 
		"RefRN.placeHolderList[6948]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" 
		"RefRN.placeHolderList[6949]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" 
		"RefRN.placeHolderList[6950]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" 
		"RefRN.placeHolderList[6951]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" 
		"RefRN.placeHolderList[6952]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[6953]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[6954]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[6955]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" 
		"RefRN.placeHolderList[6956]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" 
		"RefRN.placeHolderList[6957]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6958]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.message" 
		"RefRN.placeHolderList[6959]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[6960]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[6961]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[6962]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[6963]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[6964]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6965]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.message" 
		"RefRN.placeHolderList[6966]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[6967]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[6968]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[6969]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[6970]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[6971]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6972]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[6973]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[6974]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[6975]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[6976]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[6977]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[6978]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.translateX" 
		"RefRN.placeHolderList[6979]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.translateY" 
		"RefRN.placeHolderList[6980]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.translateZ" 
		"RefRN.placeHolderList[6981]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotatePivot" 
		"RefRN.placeHolderList[6982]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[6983]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotateX" 
		"RefRN.placeHolderList[6984]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotateY" 
		"RefRN.placeHolderList[6985]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotateZ" 
		"RefRN.placeHolderList[6986]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.rotateOrder" 
		"RefRN.placeHolderList[6987]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.jointOrient" 
		"RefRN.placeHolderList[6988]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[6989]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.translateX" 
		"RefRN.placeHolderList[6990]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.translateY" 
		"RefRN.placeHolderList[6991]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.translateZ" 
		"RefRN.placeHolderList[6992]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotatePivot" 
		"RefRN.placeHolderList[6993]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotatePivotTranslate" 
		"RefRN.placeHolderList[6994]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotateX" 
		"RefRN.placeHolderList[6995]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotateY" 
		"RefRN.placeHolderList[6996]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotateZ" 
		"RefRN.placeHolderList[6997]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.rotateOrder" 
		"RefRN.placeHolderList[6998]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.jointOrient" 
		"RefRN.placeHolderList[6999]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_hippouch_0_B.parentInverseMatrix" 
		"RefRN.placeHolderList[7000]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateX" 
		"RefRN.placeHolderList[7001]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateY" 
		"RefRN.placeHolderList[7002]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateZ" 
		"RefRN.placeHolderList[7003]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateX" 
		"RefRN.placeHolderList[7004]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateY" 
		"RefRN.placeHolderList[7005]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateZ" 
		"RefRN.placeHolderList[7006]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateOrder" 
		"RefRN.placeHolderList[7007]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[7008]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotatePivot" 
		"RefRN.placeHolderList[7009]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[7010]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.jointOrient" 
		"RefRN.placeHolderList[7011]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateX" 
		"RefRN.placeHolderList[7012]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateY" 
		"RefRN.placeHolderList[7013]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateZ" 
		"RefRN.placeHolderList[7014]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateX" 
		"RefRN.placeHolderList[7015]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateY" 
		"RefRN.placeHolderList[7016]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateZ" 
		"RefRN.placeHolderList[7017]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateOrder" 
		"RefRN.placeHolderList[7018]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[7019]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotatePivot" 
		"RefRN.placeHolderList[7020]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[7021]" ""
		5 3 "RefRN" "|Ref:medicInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.jointOrient" 
		"RefRN.placeHolderList[7022]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:backpack_mesh.drawOverride" "RefRN.placeHolderList[7023]" 
		""
		5 0 "RefRN" "Ref:lambert2SG.memberWireframeColor" "|Ref:medicInfo_group|Ref:medic_head|Ref:medic_headShape.instObjGroups.objectGroups[13].objectGrpColor" 
		"RefRN.placeHolderList[7024]" "RefRN.placeHolderList[7025]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[773].objectGroupId" 
		"RefRN.placeHolderList[7026]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:body_mesh|Ref:body_meshShape.instObjGroups.objectGroups[774].objectGroupId" 
		"RefRN.placeHolderList[7027]" ""
		5 4 "RefRN" "|Ref:medicInfo_group|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		"RefRN.placeHolderList[7028]" ""
		5 1 "RefRN" "Ref:skinCluster4.outputGeometry[0]" "RefRN.placeHolderList[7029]" 
		"Ref:body_meshShape.i"
		5 3 "RefRN" "Ref:skinCluster4.outputGeometry[0]" "RefRN.placeHolderList[7030]" 
		"Ref:body_meshShape.i"
		5 0 "RefRN" "|Ref:medicInfo_group|Ref:medic_head|Ref:medic_headShape.instObjGroups.objectGroups[13]" 
		"Ref:lambert2SG.dagSetMembers" "RefRN.placeHolderList[7031]" "RefRN.placeHolderList[7032]" 
		"Ref:lambert3SG.dsm";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 43 ".dsm";
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
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.9782328637422717 -0.20751015467825767 0
		 0 0.20751015467825767 -0.9782328637422717 0 0 69.961014679075859 -1.5981942058520004 1;
createNode ikSCsolver -n "ikSCsolver";
createNode ikRPsolver -n "ikRPsolver";
createNode ikSplineSolver -n "ikSplineSolver";
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
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.36496077";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.36496077";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.36496077";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.36496077";
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
createNode objectSet -n "hand_L";
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
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 32 "f[102:162]" "f[175:178]" "f[180:191]" "f[193:203]" "f[205:206]" "f[213:218]" "f[223]" "f[229]" "f[239]" "f[255:256]" "f[272:318]" "f[321:368]" "f[422:429]" "f[455]" "f[465:467]" "f[556:557]" "f[597:598]" "f[603]" "f[616]" "f[618:621]" "f[632]" "f[636]" "f[639]" "f[641]" "f[646]" "f[648:650]" "f[652]" "f[655:657]" "f[661:700]" "f[712:720]" "f[1064]" "f[1666:1675]";
	setAttr ".irc" -type "componentList" 12 "f[478]" "f[481]" "f[483]" "f[485]" "f[489]" "f[493]" "f[576]" "f[580]" "f[585]" "f[588]" "f[590]" "f[593]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 22 "f[163:169]" "f[171:174]" "f[231]" "f[263]" "f[382]" "f[384]" "f[396]" "f[414]" "f[442:449]" "f[456:460]" "f[475:509]" "f[522]" "f[531]" "f[546:555]" "f[558:596]" "f[599:602]" "f[609:615]" "f[617]" "f[643]" "f[703:705]" "f[710]" "f[1676:1727]";
	setAttr ".irc" -type "componentList" 4 "f[175:176]" "f[365:368]" "f[556:557]" "f[697:700]";
createNode objectSet -n "Medic";
	addAttr -ci true -sn "version" -ln "version" -at "long";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "bgImage" -ln "bgImage" -dt "string";
	addAttr -ci true -sn "bgColour" -ln "bgColour" -dt "string";
	addAttr -ci true -sn "filepath" -ln "filepath" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 85 ".dnsm";
	setAttr ".an" -type "string" "zooPickerCharacter";
	setAttr ".name" -type "string" "Medic";
	setAttr ".bgImage" -type "string" "pickerGrid.bmp";
	setAttr ".bgColour" -type "string" "0.0,0.0,0.0";
lockNode -l 1 ;
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
	setAttr ".posSize" -type "string" "63,286;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "IK";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "45,288;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
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
	setAttr ".posSize" -type "string" "105,179;40,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "COG";
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
	setAttr ".posSize" -type "string" "119,157;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
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
	setAttr ".posSize" -type "string" "109,302;40,14";
	setAttr ".colour" -type "string" "0.0,1.0,0.0";
	setAttr ".label" -type "string" "MAIN";
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
	setAttr ".posSize" -type "string" "62,253;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "174,253;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "174,286;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "IK";
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
	setAttr ".posSize" -type "string" "192,288;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "56,107;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "182,106;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_thumb_0_RControl_picker1";
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
	setAttr ".posSize" -type "string" "83,327;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "+";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_index_0_RControl_picker";
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
	setAttr ".posSize" -type "string" "64,322;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "+";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_middle_0_RControl_picker";
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
	setAttr ".posSize" -type "string" "46,322;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "+";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_ring_0_RControl_picker";
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
	setAttr ".posSize" -type "string" "26,322;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "+";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_pinky_0_RControl_picker";
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
	setAttr ".posSize" -type "string" "7,322;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "+";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_thumb_0_RControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "83,346;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" " ";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_thumb_1_RControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "83,365;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" " ";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_thumb_2_RControl_picker";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "83,384;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" " ";
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
	setAttr ".posSize" -type "string" "64,341;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "64,360;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "64,379;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "46,341;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "46,360;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "46,379;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "26,341;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "26,360;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "26,379;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "7,341;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "7,360;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "7,379;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_thumb_0_RControl_picker2";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "41,403;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
	setAttr ".label" -type "string" "+";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_thumb_0_LControl_picker";
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
	setAttr ".posSize" -type "string" "157,327;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "+";
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
	setAttr ".posSize" -type "string" "119,138;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
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
	setAttr ".posSize" -type "string" "119,119;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
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
	setAttr ".posSize" -type "string" "119,100;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_spine_0FKcontrol_picker";
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
	setAttr ".posSize" -type "string" "119,81;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "+";
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
	setAttr ".posSize" -type "string" "121,68;10,10";
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
	setAttr ".posSize" -type "string" "107,51;39,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "Head";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "HIPS";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "112,199;30,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "HIPS";
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
	setAttr ".posSize" -type "string" "92,82;20,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "137,82;20,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "IK2";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "57,133;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "IK";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "IK3";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "181,133;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "IK";
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
	setAttr ".posSize" -type "string" "76,141;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "162,141;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "rikHandControl_picker";
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
	setAttr ".posSize" -type "string" "57,152;14,14";
	setAttr ".colour" -type "string" "0.0,1.0,0.0";
	setAttr ".label" -type "string" "+";
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
	setAttr -s 2 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "181,152;14,14";
	setAttr ".colour" -type "string" "0.0,1.0,0.0";
	setAttr ".label" -type "string" "+";
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
	setAttr ".posSize" -type "string" "96,102;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "96,121;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "97,140;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "140,103;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "140,121;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "140,139;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "101,220;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "101,238;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "101,257;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "101,276;14,14";
	setAttr ".colour" -type "string" "0.337000012398,0.337000012398,1.0";
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
	setAttr ".posSize" -type "string" "140,220;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "140,238;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "140,258;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "140,276;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_index_2_LControl_picker";
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
	setAttr ".posSize" -type "string" "175,322;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "+";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_middle_0_LControl_picker";
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
	setAttr ".posSize" -type "string" "194,322;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "+";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_ring_0_LControl_picker";
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
	setAttr ".posSize" -type "string" "212,322;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "+";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "230,323;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "+";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "157,346;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "157,365;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "157,384;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "175,341;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "175,360;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "175,379;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "194,341;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "194,360;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "194,379;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "212,341;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "212,360;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "212,379;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "230,342;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "230,361;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
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
	setAttr ".posSize" -type "string" "230,380;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "Ref:bip_index_2_LControl_picker1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "200,403;14,14";
	setAttr ".colour" -type "string" "1.0,0.365999996662,0.365999996662";
	setAttr ".label" -type "string" "+";
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
	setAttr ".posSize" -type "string" "26,39;50,14";
	setAttr ".colour" -type "string" "0.600000023842,0.600000023842,0.600000023842";
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
	setAttr ".posSize" -type "string" "25,58;57,14";
	setAttr ".colour" -type "string" "0.600000023842,0.600000023842,0.600000023842";
	setAttr ".label" -type "string" "pouch2";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "pack";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "36,18;32,14";
	setAttr ".colour" -type "string" "0.654991328716,0.0361199975014,0.860000014305";
	setAttr ".label" -type "string" "pack";
	setAttr ".cmdStr" -type "string" "";
createNode displayLayer -n "Ref:pack_mesh_layer";
	setAttr ".dt" 2;
	setAttr ".do" 1;
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
	setAttr -s 7 ".st";
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
	setAttr -s 7 ".s";
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
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -l on ".bfs";
	setAttr -k on ".mbf";
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
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
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
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[6355]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[6356]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[6357]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[6358]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[6359]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[6360]";
connectAttr "RefRN.phl[6361]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[6362]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[6363]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "RefRN.phl[6364]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "RefRN.phl[6365]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[6366]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[6367]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[6368]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[6369]";
connectAttr "RefRN.phl[6370]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[6371]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[6372]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[6373]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[6374]";
connectAttr "RefRN.phl[6375]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[6376]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[6377]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[6378]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[6379]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[6380]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[6381]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[6382]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[6383]";
connectAttr "RefRN.phl[6384]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[6385]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "RefRN.phl[6386]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[6387]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[6388]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "RefRN.phl[6389]" "locator1_parentConstraint1.tg[0].ts";
connectAttr "RefRN.phl[6390]" "locator1_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[6391]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[6392]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[6393]";
connectAttr "RefRN.phl[6394]" "locator1_parentConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[6395]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[6396]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[6397]";
connectAttr "RefRN.phl[6398]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[6399]" "locator1_parentConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6400]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "RefRN.phl[6401]" "locator1_parentConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6402]" "locator1_parentConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6403]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[6404]" "locator1_parentConstraint1.tg[0].tro";
connectAttr "RefRN.phl[6405]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[6406]" "locator1_parentConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[6407]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[6408]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[6409]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[6410]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[6411]";
connectAttr "RefRN.phl[6412]" "neckControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[6413]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[6414]" "neckControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "RefRN.phl[6415]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[6416]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[6417]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[6418]";
connectAttr "RefRN.phl[6419]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[6420]" "neckControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[6421]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[6422]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "RefRN.phl[6423]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6424]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6425]" "headControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[6426]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6427]" "headControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "RefRN.phl[6428]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[6429]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[6430]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[6431]";
connectAttr "RefRN.phl[6432]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[6433]" "headControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[6434]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6435]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[6436]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "RefRN.phl[6437]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6438]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6439]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[6440]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[6441]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[6442]";
connectAttr "RefRN.phl[6443]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[6444]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6445]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[6446]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "Ref:prp_glasses_parentConstraint1.ctx" "RefRN.phl[6447]";
connectAttr "Ref:prp_glasses_parentConstraint1.cty" "RefRN.phl[6448]";
connectAttr "Ref:prp_glasses_parentConstraint1.ctz" "RefRN.phl[6449]";
connectAttr "RefRN.phl[6450]" "Ref:prp_glasses_parentConstraint1.crp";
connectAttr "RefRN.phl[6451]" "Ref:prp_glasses_parentConstraint1.crt";
connectAttr "Ref:prp_glasses_parentConstraint1.crx" "RefRN.phl[6452]";
connectAttr "Ref:prp_glasses_parentConstraint1.cry" "RefRN.phl[6453]";
connectAttr "Ref:prp_glasses_parentConstraint1.crz" "RefRN.phl[6454]";
connectAttr "RefRN.phl[6455]" "Ref:prp_glasses_parentConstraint1.cro";
connectAttr "RefRN.phl[6456]" "Ref:prp_glasses_parentConstraint1.cjo";
connectAttr "RefRN.phl[6457]" "Ref:prp_glasses_parentConstraint1.cpim";
connectAttr "RefRN.phl[6458]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6459]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6460]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[6461]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[6462]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[6463]";
connectAttr "RefRN.phl[6464]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[6465]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6466]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[6467]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[6468]" "lElbowControl.zooTrig1";
connectAttr "RefRN.phl[6469]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6470]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6471]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6472]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6473]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6474]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6475]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6476]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[6477]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[6478]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[6479]";
connectAttr "RefRN.phl[6480]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[6481]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[6482]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[6483]" "lElbowControl.zooTrig2";
connectAttr "RefRN.phl[6484]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6485]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[6486]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[6487]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[6488]";
connectAttr "RefRN.phl[6489]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[6490]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[6491]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[6492]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[6493]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[6494]" "lElbowControl.zooTrig3";
connectAttr "RefRN.phl[6495]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6496]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6497]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6498]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[6499]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[6500]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[6501]";
connectAttr "RefRN.phl[6502]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[6503]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[6504]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[6505]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[6506]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[6507]";
connectAttr "RefRN.phl[6508]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6509]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[6510]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[6511]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[6512]";
connectAttr "RefRN.phl[6513]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6514]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6515]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[6516]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[6517]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[6518]";
connectAttr "RefRN.phl[6519]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6520]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[6521]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[6522]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[6523]";
connectAttr "RefRN.phl[6524]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6525]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6526]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[6527]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[6528]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[6529]";
connectAttr "RefRN.phl[6530]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6531]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[6532]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[6533]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[6534]";
connectAttr "RefRN.phl[6535]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6536]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6537]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[6538]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[6539]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[6540]";
connectAttr "RefRN.phl[6541]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6542]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[6543]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[6544]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[6545]";
connectAttr "RefRN.phl[6546]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6547]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6548]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[6549]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[6550]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[6551]";
connectAttr "RefRN.phl[6552]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6553]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[6554]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[6555]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[6556]";
connectAttr "RefRN.phl[6557]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6558]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6559]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[6560]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[6561]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[6562]";
connectAttr "RefRN.phl[6563]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6564]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[6565]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[6566]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[6567]";
connectAttr "RefRN.phl[6568]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6569]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6570]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[6571]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[6572]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[6573]";
connectAttr "RefRN.phl[6574]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6575]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[6576]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[6577]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[6578]";
connectAttr "RefRN.phl[6579]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6580]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6581]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[6582]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[6583]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[6584]";
connectAttr "RefRN.phl[6585]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6586]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[6587]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[6588]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[6589]";
connectAttr "RefRN.phl[6590]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6591]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6592]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[6593]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[6594]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[6595]";
connectAttr "RefRN.phl[6596]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6597]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[6598]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[6599]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[6600]";
connectAttr "RefRN.phl[6601]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6602]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6603]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[6604]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[6605]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[6606]";
connectAttr "RefRN.phl[6607]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6608]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[6609]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[6610]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[6611]";
connectAttr "RefRN.phl[6612]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6613]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6614]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[6615]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[6616]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[6617]";
connectAttr "RefRN.phl[6618]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6619]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[6620]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[6621]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[6622]";
connectAttr "RefRN.phl[6623]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6624]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6625]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[6626]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[6627]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[6628]";
connectAttr "RefRN.phl[6629]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6630]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[6631]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[6632]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[6633]";
connectAttr "RefRN.phl[6634]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6635]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6636]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[6637]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[6638]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[6639]";
connectAttr "RefRN.phl[6640]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6641]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[6642]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[6643]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[6644]";
connectAttr "RefRN.phl[6645]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6646]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6647]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[6648]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[6649]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[6650]";
connectAttr "RefRN.phl[6651]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6652]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[6653]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[6654]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[6655]";
connectAttr "RefRN.phl[6656]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6657]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6658]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[6659]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[6660]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[6661]";
connectAttr "RefRN.phl[6662]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6663]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[6664]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[6665]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[6666]";
connectAttr "RefRN.phl[6667]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6668]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6669]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[6670]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6671]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6672]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[6673]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[6674]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[6675]";
connectAttr "RefRN.phl[6676]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[6677]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6678]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[6679]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[6680]" "rElbowControl.zooTrig1";
connectAttr "RefRN.phl[6681]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6682]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6683]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6684]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6685]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6686]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6687]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6688]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[6689]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[6690]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[6691]";
connectAttr "RefRN.phl[6692]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[6693]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[6694]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[6695]" "rElbowControl.zooTrig2";
connectAttr "RefRN.phl[6696]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6697]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[6698]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[6699]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[6700]";
connectAttr "RefRN.phl[6701]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[6702]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[6703]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[6704]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[6705]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[6706]" "rElbowControl.zooTrig3";
connectAttr "RefRN.phl[6707]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6708]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6709]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6710]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[6711]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[6712]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[6713]";
connectAttr "RefRN.phl[6714]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[6715]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[6716]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[6717]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[6718]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[6719]";
connectAttr "RefRN.phl[6720]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6721]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[6722]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[6723]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[6724]";
connectAttr "RefRN.phl[6725]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6726]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6727]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[6728]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[6729]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[6730]";
connectAttr "RefRN.phl[6731]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6732]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[6733]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[6734]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[6735]";
connectAttr "RefRN.phl[6736]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6737]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6738]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[6739]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[6740]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[6741]";
connectAttr "RefRN.phl[6742]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6743]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[6744]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[6745]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[6746]";
connectAttr "RefRN.phl[6747]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6748]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6749]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[6750]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[6751]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[6752]";
connectAttr "RefRN.phl[6753]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6754]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[6755]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[6756]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[6757]";
connectAttr "RefRN.phl[6758]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6759]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6760]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[6761]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[6762]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[6763]";
connectAttr "RefRN.phl[6764]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6765]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[6766]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[6767]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[6768]";
connectAttr "RefRN.phl[6769]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6770]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6771]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[6772]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[6773]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[6774]";
connectAttr "RefRN.phl[6775]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6776]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[6777]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[6778]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[6779]";
connectAttr "RefRN.phl[6780]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6781]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6782]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[6783]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[6784]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[6785]";
connectAttr "RefRN.phl[6786]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6787]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[6788]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[6789]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[6790]";
connectAttr "RefRN.phl[6791]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6792]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6793]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[6794]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[6795]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[6796]";
connectAttr "RefRN.phl[6797]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6798]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[6799]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[6800]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[6801]";
connectAttr "RefRN.phl[6802]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6803]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6804]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[6805]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[6806]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[6807]";
connectAttr "RefRN.phl[6808]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6809]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[6810]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[6811]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[6812]";
connectAttr "RefRN.phl[6813]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6814]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6815]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[6816]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[6817]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[6818]";
connectAttr "RefRN.phl[6819]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6820]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[6821]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[6822]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[6823]";
connectAttr "RefRN.phl[6824]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6825]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6826]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[6827]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[6828]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[6829]";
connectAttr "RefRN.phl[6830]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6831]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[6832]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[6833]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[6834]";
connectAttr "RefRN.phl[6835]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6836]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6837]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[6838]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[6839]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[6840]";
connectAttr "RefRN.phl[6841]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6842]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[6843]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[6844]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[6845]";
connectAttr "RefRN.phl[6846]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6847]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6848]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[6849]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[6850]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[6851]";
connectAttr "RefRN.phl[6852]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6853]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[6854]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[6855]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[6856]";
connectAttr "RefRN.phl[6857]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6858]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6859]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[6860]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[6861]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[6862]";
connectAttr "RefRN.phl[6863]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6864]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[6865]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[6866]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[6867]";
connectAttr "RefRN.phl[6868]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6869]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6870]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[6871]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[6872]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[6873]";
connectAttr "RefRN.phl[6874]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[6875]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[6876]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[6877]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[6878]";
connectAttr "RefRN.phl[6879]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[6880]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[6881]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "Ref:prp_backpack_parentConstraint1.crz" "RefRN.phl[6882]";
connectAttr "Ref:prp_backpack_parentConstraint1.crx" "RefRN.phl[6883]";
connectAttr "Ref:prp_backpack_parentConstraint1.cry" "RefRN.phl[6884]";
connectAttr "Ref:prp_backpack_parentConstraint1.ctx" "RefRN.phl[6885]";
connectAttr "Ref:prp_backpack_parentConstraint1.cty" "RefRN.phl[6886]";
connectAttr "Ref:prp_backpack_parentConstraint1.ctz" "RefRN.phl[6887]";
connectAttr "RefRN.phl[6888]" "Ref:prp_backpack_parentConstraint1.cro";
connectAttr "RefRN.phl[6889]" "Ref:prp_backpack_parentConstraint1.cpim";
connectAttr "RefRN.phl[6890]" "Ref:prp_backpack_parentConstraint1.crp";
connectAttr "RefRN.phl[6891]" "Ref:prp_backpack_parentConstraint1.crt";
connectAttr "RefRN.phl[6892]" "Ref:prp_backpack_parentConstraint1.cjo";
connectAttr "RefRN.phl[6893]" "locatorKneeL_parentConstraint1.tg[0].ts";
connectAttr "RefRN.phl[6894]" "lkneeControl.zooTrig1";
connectAttr "RefRN.phl[6895]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6896]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6897]" "locatorKneeL_parentConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6898]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6899]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6900]" "locatorKneeL_parentConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6901]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6902]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6903]" "locatorKneeL_parentConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6904]" "locatorKneeL_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[6905]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[6906]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[6907]";
connectAttr "RefRN.phl[6908]" "locatorKneeL_parentConstraint1.tg[0].tro";
connectAttr "RefRN.phl[6909]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[6910]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6911]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6912]" "locatorKneeL_parentConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6913]" "locatorKneeL_parentConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[6914]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[6915]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[6916]" "lkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[6917]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[6918]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[6919]";
connectAttr "RefRN.phl[6920]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[6921]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[6922]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[6923]" "lkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[6924]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[6925]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[6926]";
connectAttr "RefRN.phl[6927]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[6928]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[6929]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[6930]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[6931]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[6932]";
connectAttr "RefRN.phl[6933]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[6934]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[6935]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[6936]" "locatorKneeR_parentConstraint1.tg[0].ts";
connectAttr "RefRN.phl[6937]" "rkneeControl.zooTrig1";
connectAttr "RefRN.phl[6938]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6939]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6940]" "locatorKneeR_parentConstraint1.tg[0].tt";
connectAttr "RefRN.phl[6941]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6942]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6943]" "locatorKneeR_parentConstraint1.tg[0].trp";
connectAttr "RefRN.phl[6944]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6945]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6946]" "locatorKneeR_parentConstraint1.tg[0].trt";
connectAttr "RefRN.phl[6947]" "locatorKneeR_parentConstraint1.tg[0].tr";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[6948]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[6949]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[6950]";
connectAttr "RefRN.phl[6951]" "locatorKneeR_parentConstraint1.tg[0].tro";
connectAttr "RefRN.phl[6952]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[6953]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6954]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6955]" "locatorKneeR_parentConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[6956]" "locatorKneeR_parentConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[6957]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[6958]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[6959]" "rkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[6960]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[6961]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[6962]";
connectAttr "RefRN.phl[6963]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[6964]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[6965]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[6966]" "rkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[6967]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[6968]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[6969]";
connectAttr "RefRN.phl[6970]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[6971]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[6972]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[6973]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[6974]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[6975]";
connectAttr "RefRN.phl[6976]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[6977]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[6978]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.ctx" "RefRN.phl[6979]";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.cty" "RefRN.phl[6980]";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.ctz" "RefRN.phl[6981]";
connectAttr "RefRN.phl[6982]" "Ref:prp_hippouch_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[6983]" "Ref:prp_hippouch_0_L_parentConstraint1.crt";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.crx" "RefRN.phl[6984]";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.cry" "RefRN.phl[6985]";
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.crz" "RefRN.phl[6986]";
connectAttr "RefRN.phl[6987]" "Ref:prp_hippouch_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[6988]" "Ref:prp_hippouch_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[6989]" "Ref:prp_hippouch_0_L_parentConstraint1.cpim";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.ctx" "RefRN.phl[6990]";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.cty" "RefRN.phl[6991]";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.ctz" "RefRN.phl[6992]";
connectAttr "RefRN.phl[6993]" "Ref:prp_hippouch_0_B_parentConstraint1.crp";
connectAttr "RefRN.phl[6994]" "Ref:prp_hippouch_0_B_parentConstraint1.crt";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.crx" "RefRN.phl[6995]";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.cry" "RefRN.phl[6996]";
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.crz" "RefRN.phl[6997]";
connectAttr "RefRN.phl[6998]" "Ref:prp_hippouch_0_B_parentConstraint1.cro";
connectAttr "RefRN.phl[6999]" "Ref:prp_hippouch_0_B_parentConstraint1.cjo";
connectAttr "RefRN.phl[7000]" "Ref:prp_hippouch_0_B_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.ctx" "RefRN.phl[7001]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.cty" "RefRN.phl[7002]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.ctz" "RefRN.phl[7003]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.crx" "RefRN.phl[7004]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.cry" "RefRN.phl[7005]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.crz" "RefRN.phl[7006]";
connectAttr "RefRN.phl[7007]" "Ref:prp_coat_front_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[7008]" "Ref:prp_coat_front_0_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[7009]" "Ref:prp_coat_front_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[7010]" "Ref:prp_coat_front_0_L_parentConstraint1.crt";
connectAttr "RefRN.phl[7011]" "Ref:prp_coat_front_0_L_parentConstraint1.cjo";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.ctx" "RefRN.phl[7012]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.cty" "RefRN.phl[7013]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.ctz" "RefRN.phl[7014]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.crx" "RefRN.phl[7015]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.cry" "RefRN.phl[7016]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.crz" "RefRN.phl[7017]";
connectAttr "RefRN.phl[7018]" "Ref:prp_coat_front_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[7019]" "Ref:prp_coat_front_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[7020]" "Ref:prp_coat_front_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[7021]" "Ref:prp_coat_front_0_R_parentConstraint1.crt";
connectAttr "RefRN.phl[7022]" "Ref:prp_coat_front_0_R_parentConstraint1.cjo";
connectAttr "Ref:pack_mesh_layer.di" "RefRN.phl[7023]";
connectAttr "RefRN.phl[7024]" "RefRN.phl[7025]";
connectAttr "groupId12.id" "RefRN.phl[7026]";
connectAttr "groupId14.id" "RefRN.phl[7027]";
connectAttr "groupParts14.og" "RefRN.phl[7028]";
connectAttr "RefRN.phl[7029]" "RefRN.phl[2753]";
connectAttr "RefRN.phl[7030]" "groupParts12.ig";
connectAttr "RefRN.phl[7031]" "RefRN.phl[7032]";
connectAttr "Ref:bip_spine_0FKcontrolvisExp.out[0]" "Ref:bip_spine_0FKcontrol.v"
		 -l on;
connectAttr "Ref:bip_spine_0FKcontrol.stretchSpine" "Ref:bip_spine_0FKcontrol.sy"
		 -l on;
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
connectAttr "control_coatFront0L_0.s" "control_coatFront0L_1.is";
connectAttr "control_coatFront0L_1.tx" "effector10.tx";
connectAttr "control_coatFront0L_1.ty" "effector10.ty";
connectAttr "control_coatFront0L_1.tz" "effector10.tz";
connectAttr "control_coatFront0L_0.msg" "ikHandle1.hsj";
connectAttr "effector10.hp" "ikHandle1.hee";
connectAttr "ikSCsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_pointConstraint1.ctx" "ikHandle1.tx";
connectAttr "ikHandle1_pointConstraint1.cty" "ikHandle1.ty";
connectAttr "ikHandle1_pointConstraint1.ctz" "ikHandle1.tz";
connectAttr "ikHandle1.pim" "ikHandle1_pointConstraint1.cpim";
connectAttr "ikHandle1.rp" "ikHandle1_pointConstraint1.crp";
connectAttr "ikHandle1.rpt" "ikHandle1_pointConstraint1.crt";
connectAttr "coatLControl.t" "ikHandle1_pointConstraint1.tg[0].tt";
connectAttr "coatLControl.rp" "ikHandle1_pointConstraint1.tg[0].trp";
connectAttr "coatLControl.rpt" "ikHandle1_pointConstraint1.tg[0].trt";
connectAttr "coatLControl.pm" "ikHandle1_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle1_pointConstraint1.w0" "ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "locatorKneeL_parentConstraint1.ctx" "locatorKneeL.tx";
connectAttr "locatorKneeL_parentConstraint1.cty" "locatorKneeL.ty";
connectAttr "locatorKneeL_parentConstraint1.ctz" "locatorKneeL.tz";
connectAttr "locatorKneeL_parentConstraint1.crx" "locatorKneeL.rx";
connectAttr "locatorKneeL_parentConstraint1.cry" "locatorKneeL.ry";
connectAttr "locatorKneeL_parentConstraint1.crz" "locatorKneeL.rz";
connectAttr "locatorKneeL_parentConstraint1.w0" "locatorKneeL_parentConstraint1.tg[0].tw"
		;
connectAttr "locatorKneeL.ro" "locatorKneeL_parentConstraint1.cro";
connectAttr "locatorKneeL.pim" "locatorKneeL_parentConstraint1.cpim";
connectAttr "locatorKneeL.rp" "locatorKneeL_parentConstraint1.crp";
connectAttr "locatorKneeL.rpt" "locatorKneeL_parentConstraint1.crt";
connectAttr "control_coatFront0R_0.s" "control_coatFront0R_1.is";
connectAttr "control_coatFront0R_1.tx" "effector11.tx";
connectAttr "control_coatFront0R_1.ty" "effector11.ty";
connectAttr "control_coatFront0R_1.tz" "effector11.tz";
connectAttr "control_coatFront0R_0.msg" "ikHandle2.hsj";
connectAttr "effector11.hp" "ikHandle2.hee";
connectAttr "ikSCsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_pointConstraint1.ctx" "ikHandle2.tx";
connectAttr "ikHandle2_pointConstraint1.cty" "ikHandle2.ty";
connectAttr "ikHandle2_pointConstraint1.ctz" "ikHandle2.tz";
connectAttr "ikHandle2.pim" "ikHandle2_pointConstraint1.cpim";
connectAttr "ikHandle2.rp" "ikHandle2_pointConstraint1.crp";
connectAttr "ikHandle2.rpt" "ikHandle2_pointConstraint1.crt";
connectAttr "coatRControl.t" "ikHandle2_pointConstraint1.tg[0].tt";
connectAttr "coatRControl.rp" "ikHandle2_pointConstraint1.tg[0].trp";
connectAttr "coatRControl.rpt" "ikHandle2_pointConstraint1.tg[0].trt";
connectAttr "coatRControl.pm" "ikHandle2_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle2_pointConstraint1.w0" "ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "locatorKneeR_parentConstraint1.ctx" "locatorKneeR.tx";
connectAttr "locatorKneeR_parentConstraint1.cty" "locatorKneeR.ty";
connectAttr "locatorKneeR_parentConstraint1.ctz" "locatorKneeR.tz";
connectAttr "locatorKneeR_parentConstraint1.crx" "locatorKneeR.rx";
connectAttr "locatorKneeR_parentConstraint1.cry" "locatorKneeR.ry";
connectAttr "locatorKneeR_parentConstraint1.crz" "locatorKneeR.rz";
connectAttr "locatorKneeR_parentConstraint1.w0" "locatorKneeR_parentConstraint1.tg[0].tw"
		;
connectAttr "locatorKneeR.ro" "locatorKneeR_parentConstraint1.cro";
connectAttr "locatorKneeR.pim" "locatorKneeR_parentConstraint1.cpim";
connectAttr "locatorKneeR.rp" "locatorKneeR_parentConstraint1.crp";
connectAttr "locatorKneeR.rpt" "locatorKneeR_parentConstraint1.crt";
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
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.ctx" "Ref:bip_upperArm_LFKZeroGroup.tx"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.cty" "Ref:bip_upperArm_LFKZeroGroup.ty"
		 -l on;
connectAttr "Ref:bip_upperArm_LFKZeroGroup_parentConstraint1.ctz" "Ref:bip_upperArm_LFKZeroGroup.tz"
		 -l on;
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
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.ctx" "Ref:bip_upperArm_RFKZeroGroup.tx"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.cty" "Ref:bip_upperArm_RFKZeroGroup.ty"
		 -l on;
connectAttr "Ref:bip_upperArm_RFKZeroGroup_parentConstraint1.ctz" "Ref:bip_upperArm_RFKZeroGroup.tz"
		 -l on;
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
connectAttr "likHandControl_orientConstraint1.w0" "likHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "likHandControl.aim" "likHandControl_orientConstraint1.w0";
connectAttr "likHandControl.ro" "likHandControl_orientConstraint1.cro";
connectAttr "likHandControl.pim" "likHandControl_orientConstraint1.cpim";
connectAttr "lHandControlGroup_parentConstraint1.ctx" "lHandControlGroup.tx";
connectAttr "lHandControlGroup_parentConstraint1.cty" "lHandControlGroup.ty";
connectAttr "lHandControlGroup_parentConstraint1.ctz" "lHandControlGroup.tz";
connectAttr "lHandControlGroup_parentConstraint1.crx" "lHandControlGroup.rx";
connectAttr "lHandControlGroup_parentConstraint1.cry" "lHandControlGroup.ry";
connectAttr "lHandControlGroup_parentConstraint1.crz" "lHandControlGroup.rz";
connectAttr "lHandControl_pointConstraint1.ctx" "lHandControl.tx" -l on;
connectAttr "lHandControl_pointConstraint1.cty" "lHandControl.ty" -l on;
connectAttr "lHandControl_pointConstraint1.ctz" "lHandControl.tz" -l on;
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
connectAttr "lFootControlvisExp.out[0]" "lFootControl.v" -l on;
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
connectAttr "rHandControl.msg" "rikHandControl.zooTrig1";
connectAttr "rikHandControl_orientConstraint1.w0" "rikHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "rikHandControl.aim" "rikHandControl_orientConstraint1.w0";
connectAttr "rikHandControl.ro" "rikHandControl_orientConstraint1.cro";
connectAttr "rikHandControl.pim" "rikHandControl_orientConstraint1.cpim";
connectAttr "rHandControlGroup_parentConstraint1.ctx" "rHandControlGroup.tx";
connectAttr "rHandControlGroup_parentConstraint1.cty" "rHandControlGroup.ty";
connectAttr "rHandControlGroup_parentConstraint1.ctz" "rHandControlGroup.tz";
connectAttr "rHandControlGroup_parentConstraint1.crx" "rHandControlGroup.rx";
connectAttr "rHandControlGroup_parentConstraint1.cry" "rHandControlGroup.ry";
connectAttr "rHandControlGroup_parentConstraint1.crz" "rHandControlGroup.rz";
connectAttr "rHandControl_pointConstraint1.ctx" "rHandControl.tx" -l on;
connectAttr "rHandControl_pointConstraint1.cty" "rHandControl.ty" -l on;
connectAttr "rHandControl_pointConstraint1.ctz" "rHandControl.tz" -l on;
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
connectAttr "rFootControlvisExp.out[0]" "rFootControl.v" -l on;
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
connectAttr "poleVectorGroup_pointConstraint1.ctx" "poleVectorGroup.tx";
connectAttr "poleVectorGroup_pointConstraint1.cty" "poleVectorGroup.ty";
connectAttr "poleVectorGroup_pointConstraint1.ctz" "poleVectorGroup.tz";
connectAttr "rkneeControlvisExp.out[0]" "rkneeControl.v" -l on;
connectAttr "lkneeControlvisExp.out[0]" "lkneeControl.v" -l on;
connectAttr "lElbowControlvisExp.out[0]" "lElbowControl.v" -l on;
connectAttr "rElbowControlvisExp.out[0]" "rElbowControl.v" -l on;
connectAttr "poleVectorGroup.pim" "poleVectorGroup_pointConstraint1.cpim";
connectAttr "poleVectorGroup.rp" "poleVectorGroup_pointConstraint1.crp";
connectAttr "poleVectorGroup.rpt" "poleVectorGroup_pointConstraint1.crt";
connectAttr "UpperbodyControl.t" "poleVectorGroup_pointConstraint1.tg[0].tt";
connectAttr "UpperbodyControl.rp" "poleVectorGroup_pointConstraint1.tg[0].trp";
connectAttr "UpperbodyControl.rpt" "poleVectorGroup_pointConstraint1.tg[0].trt";
connectAttr "UpperbodyControl.pm" "poleVectorGroup_pointConstraint1.tg[0].tpm";
connectAttr "poleVectorGroup_pointConstraint1.w0" "poleVectorGroup_pointConstraint1.tg[0].tw"
		;
connectAttr "locator1_parentConstraint1.ctx" "locator1.tx";
connectAttr "locator1_parentConstraint1.cty" "locator1.ty";
connectAttr "locator1_parentConstraint1.ctz" "locator1.tz";
connectAttr "locator1_parentConstraint1.crx" "locator1.rx";
connectAttr "locator1_parentConstraint1.cry" "locator1.ry";
connectAttr "locator1_parentConstraint1.crz" "locator1.rz";
connectAttr "locator1_parentConstraint1.w0" "locator1_parentConstraint1.tg[0].tw"
		;
connectAttr "locator1.ro" "locator1_parentConstraint1.cro";
connectAttr "locator1.pim" "locator1_parentConstraint1.cpim";
connectAttr "locator1.rp" "locator1_parentConstraint1.crp";
connectAttr "locator1.rpt" "locator1_parentConstraint1.crt";
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
connectAttr "control_coatFront0R_0.t" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "control_coatFront0R_0.rp" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "control_coatFront0R_0.rpt" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "control_coatFront0R_0.r" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "control_coatFront0R_0.ro" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "control_coatFront0R_0.s" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "control_coatFront0R_0.pm" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "control_coatFront0R_0.jo" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.w0" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "control_coatFront0L_0.t" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "control_coatFront0L_0.rp" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "control_coatFront0L_0.rpt" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "control_coatFront0L_0.r" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "control_coatFront0L_0.ro" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "control_coatFront0L_0.s" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "control_coatFront0L_0.pm" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "control_coatFront0L_0.jo" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.w0" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_hippouch_0_BControl.t" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_hippouch_0_BControl.rp" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_hippouch_0_BControl.rpt" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_hippouch_0_BControl.r" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_hippouch_0_BControl.ro" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_hippouch_0_BControl.s" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_hippouch_0_BControl.pm" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_hippouch_0_B_parentConstraint1.w0" "Ref:prp_hippouch_0_B_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_hippouch_0_LControl.t" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_hippouch_0_LControl.rp" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_hippouch_0_LControl.rpt" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_hippouch_0_LControl.r" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_hippouch_0_LControl.ro" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_hippouch_0_LControl.s" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_hippouch_0_LControl.pm" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_hippouch_0_L_parentConstraint1.w0" "Ref:prp_hippouch_0_L_parentConstraint1.tg[0].tw"
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
connectAttr "BackPackControl.t" "Ref:prp_backpack_parentConstraint1.tg[0].tt";
connectAttr "BackPackControl.rp" "Ref:prp_backpack_parentConstraint1.tg[0].trp";
connectAttr "BackPackControl.rpt" "Ref:prp_backpack_parentConstraint1.tg[0].trt"
		;
connectAttr "BackPackControl.r" "Ref:prp_backpack_parentConstraint1.tg[0].tr";
connectAttr "BackPackControl.ro" "Ref:prp_backpack_parentConstraint1.tg[0].tro";
connectAttr "BackPackControl.s" "Ref:prp_backpack_parentConstraint1.tg[0].ts";
connectAttr "BackPackControl.pm" "Ref:prp_backpack_parentConstraint1.tg[0].tpm";
connectAttr "Ref:prp_backpack_parentConstraint1.w0" "Ref:prp_backpack_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_glassesControl.t" "Ref:prp_glasses_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_glassesControl.rp" "Ref:prp_glasses_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_glassesControl.rpt" "Ref:prp_glasses_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_glassesControl.r" "Ref:prp_glasses_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_glassesControl.ro" "Ref:prp_glasses_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_glassesControl.s" "Ref:prp_glasses_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_glassesControl.pm" "Ref:prp_glasses_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_glasses_parentConstraint1.w0" "Ref:prp_glasses_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RefRN.phl[5451]" "RefRN.phl[5420]";
connectAttr "main.main" "RefRN.phl[5452]";
connectAttr "plotted.plotted" "RefRN.phl[5453]";
connectAttr "UpperbodyControl.upperBodyControl" "RefRN.phl[5454]";
connectAttr "PelvisControl.pelvisControl" "RefRN.phl[5455]";
connectAttr "Ref:bip_spine_0FKcontrol.fkSpine0" "RefRN.phl[5456]";
connectAttr "Ref:bip_spine_1FKcontrol.fkSpine1" "RefRN.phl[5457]";
connectAttr "Ref:bip_spine_2FKcontrol.fkSpine2" "RefRN.phl[5458]";
connectAttr "Ref:bip_spine_3FKcontrol.fkSpine3" "RefRN.phl[5459]";
connectAttr "Ref:bip_spine_0ik.ikSpine0" "RefRN.phl[5460]";
connectAttr "Ref:bip_spine_1ik.ikSpine1" "RefRN.phl[5461]";
connectAttr "Ref:bip_spine_2ik.ikSpine2" "RefRN.phl[5462]";
connectAttr "Ref:bip_spine_3ik.ikSpine3" "RefRN.phl[5463]";
connectAttr "chestParent.chestParent" "RefRN.phl[5464]";
connectAttr "neckControl.neckControl" "RefRN.phl[5465]";
connectAttr "headControl.headControl" "RefRN.phl[5466]";
connectAttr "lShoulderControl.lFKshoulderControl" "RefRN.phl[5467]";
connectAttr "Ref:bip_upperArm_LFK.lFKshoulder" "RefRN.phl[5468]";
connectAttr "Ref:bip_lowerArm_LFK.lFKelbow" "RefRN.phl[5469]";
connectAttr "Ref:bip_hand_LFK.lFKwrist" "RefRN.phl[5470]";
connectAttr "Ref:bip_upperArm_LIK.lIKshoulder" "RefRN.phl[5471]";
connectAttr "Ref:bip_lowerArm_LIK.lIKelbow" "RefRN.phl[5472]";
connectAttr "Ref:bip_hand_LIK.lIKwrist" "RefRN.phl[5473]";
connectAttr "likHandControl.lIKcontrol" "RefRN.phl[5474]";
connectAttr "likHandControlWeaponGroup.lWeaponAttach" "RefRN.phl[5475]";
connectAttr "lElbowControl.lElbowControl" "RefRN.phl[5476]";
connectAttr "Ref:bip_hip_LIK.lIKupLeg" "RefRN.phl[5477]";
connectAttr "Ref:bip_knee_LIK.lIKknee" "RefRN.phl[5478]";
connectAttr "Ref:bip_foot_LIK.lIKankle" "RefRN.phl[5479]";
connectAttr "Ref:bip_toe_LIK.lIKtoe" "RefRN.phl[5480]";
connectAttr "Ref:bip_toeEnd_LIK.lIKtoeEnd" "RefRN.phl[5481]";
connectAttr "Ref:bip_hip_LFK.lFKupLeg" "RefRN.phl[5482]";
connectAttr "Ref:bip_knee_LFK.lFKknee" "RefRN.phl[5483]";
connectAttr "Ref:bip_foot_LFK.lFKankle" "RefRN.phl[5484]";
connectAttr "Ref:bip_toe_LFK.lFKtoe" "RefRN.phl[5485]";
connectAttr "lkneeControl.lKneeControl" "RefRN.phl[5486]";
connectAttr "lFootControl.lFootControl" "RefRN.phl[5487]";
connectAttr "lToeControl.lToeControl" "RefRN.phl[5488]";
connectAttr "rShoulderControl.rFKshoulderControl" "RefRN.phl[5489]";
connectAttr "Ref:bip_upperArm_RFK.rFKshoulder" "RefRN.phl[5490]";
connectAttr "Ref:bip_lowerArm_RFK.rFKelbow" "RefRN.phl[5491]";
connectAttr "Ref:bip_hand_RFK.rFKwrist" "RefRN.phl[5492]";
connectAttr "Ref:bip_upperArm_RIK.rIKshoulder" "RefRN.phl[5493]";
connectAttr "Ref:bip_lowerArm_RIK.rIKelbow" "RefRN.phl[5494]";
connectAttr "Ref:bip_hand_RIK.rIKwrist" "RefRN.phl[5495]";
connectAttr "rikHandControl.rIKcontrol" "RefRN.phl[5496]";
connectAttr "rikHandControlWeaponGroup.rWeaponAttach" "RefRN.phl[5497]";
connectAttr "rElbowControl.rElbowControl" "RefRN.phl[5498]";
connectAttr "Ref:bip_hip_RIK.rIKupLeg" "RefRN.phl[5499]";
connectAttr "Ref:bip_knee_RIK.rIKknee" "RefRN.phl[5500]";
connectAttr "Ref:bip_foot_RIK.rIKankle" "RefRN.phl[5501]";
connectAttr "Ref:bip_toe_RIK.rIKtoe" "RefRN.phl[5502]";
connectAttr "Ref:bip_toeEnd_RIK.rIKtoeEnd" "RefRN.phl[5503]";
connectAttr "Ref:bip_hip_RFK.rFKupLeg" "RefRN.phl[5504]";
connectAttr "Ref:bip_knee_RFK.rFKknee" "RefRN.phl[5505]";
connectAttr "Ref:bip_foot_RFK.rFKankle" "RefRN.phl[5506]";
connectAttr "Ref:bip_toe_RFK.rFKtoe" "RefRN.phl[5507]";
connectAttr "rkneeControl.rKneeControl" "RefRN.phl[5508]";
connectAttr "rFootControl.rFootControl" "RefRN.phl[5509]";
connectAttr "rToeControl.rToeControl" "RefRN.phl[5510]";
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
connectAttr "lHandControl.iog" "plotted.dsm" -na;
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
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "plotted.dsm" -na;
connectAttr "rkneeControl.iog" "plotted.dsm" -na;
connectAttr "rFootControl.iog" "plotted.dsm" -na;
connectAttr "rToeControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_hippouch_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_hippouch_0_BControl.iog" "plotted.dsm" -na;
connectAttr "coatLControl.iog" "plotted.dsm" -na;
connectAttr "coatRControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_glassesControl.iog" "plotted.dsm" -na;
connectAttr "hand_R.msg" "plotted.dnsm" -na;
connectAttr "hand_L.msg" "plotted.dnsm" -na;
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
connectAttr "Ref:bip_thumb_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "hand_L.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "hand_L.dsm" -na;
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
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_0.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_1.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_2.ft"
		;
connectAttr "Ref:bip_upperArm_RFK.parent" "switch_bip_upperArm_RFK_to_space_3.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_0.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_1.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_2.ft"
		;
connectAttr "Ref:bip_upperArm_LFK.parent" "switch_bip_upperArm_LFK_to_space_3.ft"
		;
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "groupParts12.og" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "IK.msg" "Medic.dnsm" -na;
connectAttr "picker1.msg" "Medic.dnsm" -na;
connectAttr "COG.msg" "Medic.dnsm" -na;
connectAttr "picker2.msg" "Medic.dnsm" -na;
connectAttr "MAIN.msg" "Medic.dnsm" -na;
connectAttr "picker3.msg" "Medic.dnsm" -na;
connectAttr "picker4.msg" "Medic.dnsm" -na;
connectAttr "IK1.msg" "Medic.dnsm" -na;
connectAttr "picker5.msg" "Medic.dnsm" -na;
connectAttr "picker6.msg" "Medic.dnsm" -na;
connectAttr "picker7.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_thumb_0_RControl_picker1.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_index_0_RControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_middle_0_RControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_ring_0_RControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_pinky_0_RControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_thumb_0_RControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_thumb_1_RControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_thumb_2_RControl_picker.msg" "Medic.dnsm" -na;
connectAttr "picker16.msg" "Medic.dnsm" -na;
connectAttr "picker17.msg" "Medic.dnsm" -na;
connectAttr "picker18.msg" "Medic.dnsm" -na;
connectAttr "picker19.msg" "Medic.dnsm" -na;
connectAttr "picker20.msg" "Medic.dnsm" -na;
connectAttr "picker21.msg" "Medic.dnsm" -na;
connectAttr "picker22.msg" "Medic.dnsm" -na;
connectAttr "picker23.msg" "Medic.dnsm" -na;
connectAttr "picker24.msg" "Medic.dnsm" -na;
connectAttr "picker25.msg" "Medic.dnsm" -na;
connectAttr "picker26.msg" "Medic.dnsm" -na;
connectAttr "picker27.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_thumb_0_RControl_picker2.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_thumb_0_LControl_picker.msg" "Medic.dnsm" -na;
connectAttr "picker30.msg" "Medic.dnsm" -na;
connectAttr "picker31.msg" "Medic.dnsm" -na;
connectAttr "picker32.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol_picker.msg" "Medic.dnsm" -na;
connectAttr "picker34.msg" "Medic.dnsm" -na;
connectAttr "Head.msg" "Medic.dnsm" -na;
connectAttr "HIPS.msg" "Medic.dnsm" -na;
connectAttr "picker35.msg" "Medic.dnsm" -na;
connectAttr "picker36.msg" "Medic.dnsm" -na;
connectAttr "IK2.msg" "Medic.dnsm" -na;
connectAttr "IK3.msg" "Medic.dnsm" -na;
connectAttr "picker37.msg" "Medic.dnsm" -na;
connectAttr "picker38.msg" "Medic.dnsm" -na;
connectAttr "rikHandControl_picker.msg" "Medic.dnsm" -na;
connectAttr "likHandControl_picker.msg" "Medic.dnsm" -na;
connectAttr "picker41.msg" "Medic.dnsm" -na;
connectAttr "picker42.msg" "Medic.dnsm" -na;
connectAttr "picker43.msg" "Medic.dnsm" -na;
connectAttr "picker44.msg" "Medic.dnsm" -na;
connectAttr "picker45.msg" "Medic.dnsm" -na;
connectAttr "picker46.msg" "Medic.dnsm" -na;
connectAttr "picker47.msg" "Medic.dnsm" -na;
connectAttr "picker48.msg" "Medic.dnsm" -na;
connectAttr "picker49.msg" "Medic.dnsm" -na;
connectAttr "picker50.msg" "Medic.dnsm" -na;
connectAttr "picker51.msg" "Medic.dnsm" -na;
connectAttr "picker52.msg" "Medic.dnsm" -na;
connectAttr "picker53.msg" "Medic.dnsm" -na;
connectAttr "picker54.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_index_2_LControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_middle_0_LControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_ring_0_LControl_picker.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_pinky_0_LControl_picker.msg" "Medic.dnsm" -na;
connectAttr "picker59.msg" "Medic.dnsm" -na;
connectAttr "picker60.msg" "Medic.dnsm" -na;
connectAttr "picker61.msg" "Medic.dnsm" -na;
connectAttr "picker62.msg" "Medic.dnsm" -na;
connectAttr "picker63.msg" "Medic.dnsm" -na;
connectAttr "picker64.msg" "Medic.dnsm" -na;
connectAttr "picker65.msg" "Medic.dnsm" -na;
connectAttr "picker66.msg" "Medic.dnsm" -na;
connectAttr "picker67.msg" "Medic.dnsm" -na;
connectAttr "picker68.msg" "Medic.dnsm" -na;
connectAttr "picker69.msg" "Medic.dnsm" -na;
connectAttr "picker70.msg" "Medic.dnsm" -na;
connectAttr "picker71.msg" "Medic.dnsm" -na;
connectAttr "picker72.msg" "Medic.dnsm" -na;
connectAttr "picker73.msg" "Medic.dnsm" -na;
connectAttr "Ref:bip_index_2_LControl_picker1.msg" "Medic.dnsm" -na;
connectAttr "pouch.msg" "Medic.dnsm" -na;
connectAttr "pouch2.msg" "Medic.dnsm" -na;
connectAttr "pack.msg" "Medic.dnsm" -na;
connectAttr "rFootControl.iog" "IK.dsm" -na;
connectAttr "rToeControl.iog" "picker1.dsm" -na;
connectAttr "UpperbodyControl.iog" "COG.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "picker2.dsm" -na;
connectAttr "main.iog" "MAIN.dsm" -na;
connectAttr "rkneeControl.iog" "picker3.dsm" -na;
connectAttr "lkneeControl.iog" "picker4.dsm" -na;
connectAttr "lFootControl.iog" "IK1.dsm" -na;
connectAttr "lToeControl.iog" "picker5.dsm" -na;
connectAttr "rElbowControl.iog" "picker6.dsm" -na;
connectAttr "lElbowControl.iog" "picker7.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "Ref:bip_thumb_0_RControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "Ref:bip_thumb_0_RControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "Ref:bip_thumb_0_RControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_index_2_RControl.iog" "Ref:bip_index_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_index_1_RControl.iog" "Ref:bip_index_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_index_0_RControl.iog" "Ref:bip_index_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "Ref:bip_middle_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "Ref:bip_middle_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "Ref:bip_middle_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "Ref:bip_ring_0_RControl_picker.dsm" -na
		;
connectAttr "Ref:bip_ring_1_RControl.iog" "Ref:bip_ring_0_RControl_picker.dsm" -na
		;
connectAttr "Ref:bip_ring_0_RControl.iog" "Ref:bip_ring_0_RControl_picker.dsm" -na
		;
connectAttr "Ref:bip_pinky_2_RControl.iog" "Ref:bip_pinky_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "Ref:bip_pinky_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "Ref:bip_pinky_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "Ref:bip_thumb_0_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "Ref:bip_thumb_1_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "Ref:bip_thumb_2_RControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker16.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker17.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker18.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker19.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker20.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker21.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker22.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker23.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker24.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker25.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker27.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_index_2_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_index_1_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_index_0_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "Ref:bip_thumb_0_RControl_picker2.dsm"
		 -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "Ref:bip_thumb_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "Ref:bip_thumb_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "Ref:bip_thumb_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "picker30.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "picker31.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "picker32.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "Ref:bip_spine_0FKcontrol_picker.dsm"
		 -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "Ref:bip_spine_0FKcontrol_picker.dsm"
		 -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "Ref:bip_spine_0FKcontrol_picker.dsm"
		 -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "Ref:bip_spine_0FKcontrol_picker.dsm"
		 -na;
connectAttr "neckControl.iog" "picker34.dsm" -na;
connectAttr "headControl.iog" "Head.dsm" -na;
connectAttr "PelvisControl.iog" "HIPS.dsm" -na;
connectAttr "rShoulderControl.iog" "picker35.dsm" -na;
connectAttr "lShoulderControl.iog" "picker36.dsm" -na;
connectAttr "rikHandControl.iog" "IK2.dsm" -na;
connectAttr "likHandControl.iog" "IK3.dsm" -na;
connectAttr "rHandControl.iog" "picker37.dsm" -na;
connectAttr "lHandControl.iog" "picker38.dsm" -na;
connectAttr "rHandControl.iog" "rikHandControl_picker.dsm" -na;
connectAttr "rikHandControl.iog" "rikHandControl_picker.dsm" -na;
connectAttr "likHandControl.iog" "likHandControl_picker.dsm" -na;
connectAttr "lHandControl.iog" "likHandControl_picker.dsm" -na;
connectAttr "Ref:bip_upperArm_RFK.iog" "picker41.dsm" -na;
connectAttr "Ref:bip_lowerArm_RFK.iog" "picker42.dsm" -na;
connectAttr "Ref:bip_hand_RFK.iog" "picker43.dsm" -na;
connectAttr "Ref:bip_upperArm_LFK.iog" "picker44.dsm" -na;
connectAttr "Ref:bip_lowerArm_LFK.iog" "picker45.dsm" -na;
connectAttr "Ref:bip_hand_LFK.iog" "picker46.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "picker47.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "picker48.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "picker49.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "picker50.dsm" -na;
connectAttr "Ref:bip_hip_LFK.iog" "picker51.dsm" -na;
connectAttr "Ref:bip_knee_LFK.iog" "picker52.dsm" -na;
connectAttr "Ref:bip_foot_LFK.iog" "picker53.dsm" -na;
connectAttr "Ref:bip_toe_LFK.iog" "picker54.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "Ref:bip_index_2_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_index_1_LControl.iog" "Ref:bip_index_2_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_index_0_LControl.iog" "Ref:bip_index_2_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "Ref:bip_middle_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "Ref:bip_middle_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "Ref:bip_middle_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "Ref:bip_ring_0_LControl_picker.dsm" -na
		;
connectAttr "Ref:bip_ring_1_LControl.iog" "Ref:bip_ring_0_LControl_picker.dsm" -na
		;
connectAttr "Ref:bip_ring_0_LControl.iog" "Ref:bip_ring_0_LControl_picker.dsm" -na
		;
connectAttr "Ref:bip_pinky_2_LControl.iog" "Ref:bip_pinky_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "Ref:bip_pinky_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "Ref:bip_pinky_0_LControl_picker.dsm"
		 -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker60.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker61.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker62.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker63.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker64.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker65.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker66.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker67.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker68.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker69.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker70.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker71.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker72.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker73.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_index_1_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_index_0_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_index_2_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "Ref:bip_index_2_LControl_picker1.dsm"
		 -na;
connectAttr "Ref:prp_hippouch_0_BControl.iog" "pouch.dsm" -na;
connectAttr "Ref:prp_hippouch_0_LControl.iog" "pouch2.dsm" -na;
connectAttr "BackPackControl.iog" "pack.dsm" -na;
connectAttr "layerManager.dli[1]" "Ref:pack_mesh_layer.id";
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
connectAttr "Ref:prp_hippouch_0_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_hippouch_0_BControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "coatLControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "coatRControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_glassesControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BackPackControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "switch_bip_upperArm_RFK_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_RFK_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_0.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "switch_bip_upperArm_LFK_to_space_3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of medic_rig.ma
