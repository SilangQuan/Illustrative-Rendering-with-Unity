//Maya ASCII 2012 scene
//Name: spy_rig.ma
//Last modified: Tue, Mar 10, 2015 07:48:47 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "spy_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "spy_reference.ma";
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
	setAttr ".t" -type "double3" 20.363395785040026 41.031571928578025 133.64661374394785 ;
	setAttr ".r" -type "double3" 0.86164727116281026 9.7999999995742986 -1.2608019220843576e-017 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 1.4210854715202004e-014 0 ;
	setAttr ".rpt" -type "double3" 9.3402964651768652e-016 -2.6768171987152274e-016 
		1.6500719716035614e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 131.80886530031071;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.5448153267337652 66.877836654118525 5.3673215362465605 ;
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
		20 -1.9999999999999999e-011 -2.4492127076447545e-015
		14.142135623730951 -1.9999999999999999e-011 14.142135623730947
		5.6654984523230034e-015 -1.9999999999999999e-011 20
		-14.142135623730947 -1.9999999999999999e-011 14.142135623730953
		-20 -1.9999999999999999e-011 5.5511151231257827e-015
		-14.142135623730956 -1.9999999999999999e-011 -14.142135623730946
		-1.010639055082363e-014 -1.9999999999999999e-011 -20
		14.142135623730942 -1.9999999999999999e-011 -14.14213562373096
		20 -1.9999999999999999e-011 -1.5771889003146633e-014
		20 -1.9999999999999999e-011 -2.4492127076447545e-015
		14.142135623730951 1.9999999999999999e-011 14.142135623730951
		5.6654984523230034e-015 1.9999999999999999e-011 20
		-14.142135623730947 1.9999999999999999e-011 14.142135623730956
		-20 1.9999999999999999e-011 8.0003278307705372e-015
		-14.142135623730956 1.9999999999999999e-011 -14.142135623730942
		-1.010639055082363e-014 1.9999999999999999e-011 -20
		14.142135623730942 1.9999999999999999e-011 -14.142135623730956
		20 -1.9999999999999999e-011 -1.5771889003146633e-014
		
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
	setAttr ".rp" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
	setAttr ".sp" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
	setAttr ".hdl" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
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
		7.836116248912238 45.448848031532144 -8.6633094979020626
		11.08194187554388 45.448848031532144 -0.82719324898981006
		7.8361162489122425 45.448848031532144 7.0089229999224312
		3.4541083832369569e-015 45.448848031532144 10.254748626554068
		-7.8361162489122416 45.448848031532144 7.0089229999224338
		-11.081941875543881 45.448848031532144 -0.82719324898980762
		-7.8361162489122442 45.448848031532144 -8.6633094979020502
		-5.9521101886435596e-015 45.448848031532144 -11.909135124533691
		7.836116248912238 45.448848031532144 -8.6633094979020626
		11.08194187554388 45.448848031532144 -0.82719324898981006
		7.8361162489122425 45.448848031532144 7.0089229999224312
		7.836116248912238 46.28218136486548 -8.6633094979020626
		11.08194187554388 46.28218136486548 -0.82719324898981006
		7.8361162489122425 46.28218136486548 7.0089229999224312
		3.4541083832369569e-015 46.28218136486548 10.254748626554068
		-7.8361162489122416 46.28218136486548 7.0089229999224338
		-11.081941875543881 46.28218136486548 -0.82719324898980762
		-7.8361162489122442 46.28218136486548 -8.6633094979020502
		-5.9521101886435596e-015 46.28218136486548 -11.909135124533691
		7.836116248912238 46.28218136486548 -8.6633094979020626
		11.08194187554388 46.28218136486548 -0.82719324898981006
		7.8361162489122425 46.28218136486548 7.0089229999224312
		7.836116248912238 47.115514698198808 -8.6633094979020626
		11.08194187554388 47.115514698198808 -0.82719324898980995
		7.8361162489122425 47.115514698198808 7.0089229999224312
		3.4541083832369569e-015 47.115514698198808 10.254748626554068
		-7.8361162489122416 47.115514698198808 7.0089229999224338
		-11.081941875543881 47.115514698198808 -0.82719324898980751
		-7.8361162489122442 47.115514698198808 -8.6633094979020502
		-5.9521101886435596e-015 47.115514698198808 -11.909135124533691
		7.836116248912238 47.115514698198808 -8.6633094979020626
		11.08194187554388 47.115514698198808 -0.82719324898980995
		7.8361162489122425 47.115514698198808 7.0089229999224312
		7.836116248912238 47.948848031532144 -8.6633094979020626
		11.08194187554388 47.948848031532144 -0.82719324898980995
		7.8361162489122425 47.948848031532144 7.0089229999224312
		3.4541083832369569e-015 47.948848031532144 10.254748626554068
		-7.8361162489122416 47.948848031532144 7.0089229999224338
		-11.081941875543881 47.948848031532144 -0.82719324898980751
		-7.8361162489122442 47.948848031532144 -8.6633094979020502
		-5.9521101886435596e-015 47.948848031532144 -11.909135124533691
		7.836116248912238 47.948848031532144 -8.6633094979020626
		11.08194187554388 47.948848031532144 -0.82719324898980995
		7.8361162489122425 47.948848031532144 7.0089229999224312
		
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
	setAttr ".t" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
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
		-2.5583221124545886e-015 -5.0061221243833431 -10.012244248766688
		10.012244248766688 -5.006122124383344 -9.1957934422959308e-016
		1.3541078356965009e-015 -5.0061221243833449 10.012244248766688
		-10.012244248766688 -5.006122124383344 1.4181088573916891e-015
		-2.5583221124545886e-015 -5.0061221243833431 -10.012244248766688
		10.012244248766688 -5.006122124383344 -9.1957934422959308e-016
		1.3541078356965009e-015 -5.0061221243833449 10.012244248766688
		-2.5583221124545886e-015 -1.6687073747944474 -10.012244248766688
		10.012244248766688 -1.6687073747944481 -7.1522837884523906e-016
		1.3541078356965009e-015 -1.6687073747944488 10.012244248766688
		-10.012244248766688 -1.6687073747944481 1.6224598227760431e-015
		-2.5583221124545886e-015 -1.6687073747944474 -10.012244248766688
		10.012244248766688 -1.6687073747944481 -7.1522837884523906e-016
		1.3541078356965009e-015 -1.6687073747944488 10.012244248766688
		-2.5583221124545886e-015 1.6687073747944488 -10.012244248766688
		10.012244248766688 1.6687073747944481 -5.1087741346088504e-016
		1.3541078356965009e-015 1.6687073747944474 10.012244248766688
		-10.012244248766688 1.6687073747944481 1.8268107881603969e-015
		-2.5583221124545886e-015 1.6687073747944488 -10.012244248766688
		10.012244248766688 1.6687073747944481 -5.1087741346088504e-016
		1.3541078356965009e-015 1.6687073747944474 10.012244248766688
		-2.5583221124545886e-015 5.0061221243833449 -10.012244248766688
		10.012244248766688 5.006122124383344 -3.0652644807653103e-016
		1.3541078356965009e-015 5.0061221243833431 10.012244248766688
		-10.012244248766688 5.006122124383344 2.0311617535447513e-015
		-2.5583221124545886e-015 5.0061221243833449 -10.012244248766688
		10.012244248766688 5.006122124383344 -3.0652644807653103e-016
		1.3541078356965009e-015 5.0061221243833431 10.012244248766688
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 5.0051288550555881 0.054513224238779912 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -51.703976886587732 0.77268002475103137 ;
	setAttr ".rp" -type "double3" 0 51.703976886587732 -0.77268002475103137 ;
	setAttr ".sp" -type "double3" 0 51.703976886587732 -0.77268002475103137 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 54.607691269990625 -1.3359268096252945 ;
createNode transform -n "Ref:prp_coat_front_0_LControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 18.581172114966591 -46.185452326073438 2.8507859118370389 ;
	setAttr ".r" -type "double3" -150.36210095101293 -67.378043832554752 161.28510570606818 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 8.0614333152770961 47.41368293762207 0.33424150943756087 ;
	setAttr ".rpt" -type "double3" -18.581172114966577 -0.51339570545870594 -2.0235926628472303 ;
	setAttr ".sp" -type "double3" 8.0614333152770996 47.41368293762207 0.33424150943756092 ;
	setAttr ".spt" -type "double3" -3.5527136788004997e-015 0 -5.5511151231257815e-017 ;
createNode transform -n "Ref:prp_coat_front_0_LControl" -p "Ref:prp_coat_front_0_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" 8.0614333152770996 47.41368293762207 0.33424150943756092 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_coat_front_0_LControlShape" -p "Ref:prp_coat_front_0_LControl";
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
		-5.7491853075117283e-016 -5.629890234048546e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 5.629890234048546e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -5.629890234048546e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 5.629890234048546e-016 2.25
		-5.7491853075117283e-016 -2.5354771560197826 -2.25
		2.25 -2.5354771560197826 -1.6838337365057687e-016
		3.0430166849879092e-016 -2.5354771560197822 2.25
		-2.25 -2.5354771560197826 3.5695323650011823e-016
		-5.7491853075117283e-016 -2.5354771560197826 -2.25
		2.25 -2.5354771560197826 -1.6838337365057687e-016
		3.0430166849879092e-016 -2.5354771560197822 2.25
		-5.7491853075117283e-016 -5.0709543120395653 -2.25
		2.25 -5.0709543120395653 -1.0715305595945801e-016
		3.0430166849879092e-016 -5.0709543120395653 2.25
		-2.25 -5.0709543120395653 4.1818355419123709e-016
		-5.7491853075117283e-016 -5.0709543120395653 -2.25
		2.25 -5.0709543120395653 -1.0715305595945801e-016
		3.0430166849879092e-016 -5.0709543120395653 2.25
		-5.7491853075117283e-016 -7.6064314680593483 -2.25
		2.25 -7.6064314680593483 -4.5922738268339147e-017
		3.0430166849879092e-016 -7.6064314680593483 2.25
		-2.25 -7.6064314680593483 4.7941387188235596e-016
		-5.7491853075117283e-016 -7.6064314680593483 -2.25
		2.25 -7.6064314680593483 -4.5922738268339147e-017
		3.0430166849879092e-016 -7.6064314680593483 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_0_LControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" 4.1384463234423601 -47.021896879026258 -1.2714754694172705 ;
	setAttr ".r" -type "double3" 1.6129064459649036 -11.350123110633755 5.9154661699872557 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 3.7543477326084851 45.803989843346493 -4.801860307894267 ;
	setAttr ".rpt" -type "double3" -4.138446323442361 0.32304884749411666 2.0986687184070814 ;
	setAttr ".sp" -type "double3" 3.7543477326084851 45.8039898433465 -4.801860307894267 ;
	setAttr ".spt" -type "double3" 0 -7.1054273576010011e-015 0 ;
createNode transform -n "Ref:prp_coat_back_0_LControl" -p "Ref:prp_coat_back_0_LControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" 3.7543477326084851 45.8039898433465 -4.801860307894267 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_coat_back_0_LControlShape" -p "Ref:prp_coat_back_0_LControl";
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
		-5.7491853075117283e-016 -7.1920947325026451e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.1920947325026451e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -7.1920947325026451e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.1920947325026451e-016 2.25
		-5.7491853075117283e-016 -3.2390315157312219 -2.25
		2.25 -3.2390315157312219 -1.6838337365057687e-016
		3.0430166849879092e-016 -3.2390315157312215 2.25
		-2.25 -3.2390315157312219 3.5695323650011823e-016
		-5.7491853075117283e-016 -3.2390315157312219 -2.25
		2.25 -3.2390315157312219 -1.6838337365057687e-016
		3.0430166849879092e-016 -3.2390315157312215 2.25
		-5.7491853075117283e-016 -6.4780630314624439 -2.25
		2.25 -6.4780630314624439 -1.0715305595945801e-016
		3.0430166849879092e-016 -6.4780630314624439 2.25
		-2.25 -6.4780630314624439 4.1818355419123709e-016
		-5.7491853075117283e-016 -6.4780630314624439 -2.25
		2.25 -6.4780630314624439 -1.0715305595945801e-016
		3.0430166849879092e-016 -6.4780630314624439 2.25
		-5.7491853075117283e-016 -9.7170945471936658 -2.25
		2.25 -9.7170945471936658 -4.5922738268339147e-017
		3.0430166849879092e-016 -9.7170945471936658 2.25
		-2.25 -9.7170945471936658 4.7941387188235596e-016
		-5.7491853075117283e-016 -9.7170945471936658 -2.25
		2.25 -9.7170945471936658 -4.5922738268339147e-017
		3.0430166849879092e-016 -9.7170945471936658 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_front_0_RControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" -18.581171991672655 -46.185452357997292 2.85078579331927 ;
	setAttr ".r" -type "double3" 29.637898558804277 112.62195620536444 18.714893988611674 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -8.0614333152770996 47.41368293762207 0.33424150943756098 ;
	setAttr ".rpt" -type "double3" 18.581171991672651 -0.51339567353484483 -2.0235925443294533 ;
	setAttr ".sp" -type "double3" -8.0614333152770996 47.41368293762207 0.33424150943756092 ;
	setAttr ".spt" -type "double3" 0 0 5.5511151231257839e-017 ;
createNode transform -n "Ref:prp_coat_front_0_RControl" -p "Ref:prp_coat_front_0_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" -8.0614333152770996 47.41368293762207 0.33424150943756092 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_coat_front_0_RControlShape" -p "Ref:prp_coat_front_0_RControl";
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
		-5.7491853075117283e-016 -5.6299018415927501e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 5.6299018415927501e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -5.6299018415927501e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 5.6299018415927501e-016 2.25
		-5.7491853075117283e-016 -2.5354823835929579 -2.25
		2.25 -2.5354823835929579 -1.6838337365057687e-016
		3.0430166849879092e-016 -2.5354823835929574 2.25
		-2.25 -2.5354823835929579 3.5695323650011823e-016
		-5.7491853075117283e-016 -2.5354823835929579 -2.25
		2.25 -2.5354823835929579 -1.6838337365057687e-016
		3.0430166849879092e-016 -2.5354823835929574 2.25
		-5.7491853075117283e-016 -5.0709647671859157 -2.25
		2.25 -5.0709647671859157 -1.0715305595945801e-016
		3.0430166849879092e-016 -5.0709647671859157 2.25
		-2.25 -5.0709647671859157 4.1818355419123709e-016
		-5.7491853075117283e-016 -5.0709647671859157 -2.25
		2.25 -5.0709647671859157 -1.0715305595945801e-016
		3.0430166849879092e-016 -5.0709647671859157 2.25
		-5.7491853075117283e-016 -7.6064471507788731 -2.25
		2.25 -7.6064471507788731 -4.5922738268339147e-017
		3.0430166849879092e-016 -7.6064471507788731 2.25
		-2.25 -7.6064471507788731 4.7941387188235596e-016
		-5.7491853075117283e-016 -7.6064471507788731 -2.25
		2.25 -7.6064471507788731 -4.5922738268339147e-017
		3.0430166849879092e-016 -7.6064471507788731 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:prp_coat_back_0_RControlZeroGroup" -p "PelvisControl";
	setAttr ".t" -type "double3" -4.1384462538972713 -47.021896939369419 -1.2714758856867743 ;
	setAttr ".r" -type "double3" 1.6129068662390997 11.350123205325509 -5.9154659879298572 ;
	setAttr ".rp" -type "double3" -3.7543481345544087 45.803989843107004 -4.8018602926339318 ;
	setAttr ".rpt" -type "double3" 4.1384462538972713 0.32304890783726947 2.098669134676586 ;
	setAttr ".sp" -type "double3" -3.7543481345544087 45.803989843107004 -4.8018602926339318 ;
createNode transform -n "Ref:prp_coat_back_0_RControl" -p "Ref:prp_coat_back_0_RControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" -3.7543481345544087 45.803989843107004 -4.8018602926339318 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_coat_back_0_RControlShape" -p "Ref:prp_coat_back_0_RControl";
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
		-5.7491853075117283e-016 -7.1920947325026451e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.1920947325026451e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -7.1920947325026451e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.1920947325026451e-016 2.25
		-5.7491853075117283e-016 -3.2390315157312219 -2.25
		2.25 -3.2390315157312219 -1.6838337365057687e-016
		3.0430166849879092e-016 -3.2390315157312215 2.25
		-2.25 -3.2390315157312219 3.5695323650011823e-016
		-5.7491853075117283e-016 -3.2390315157312219 -2.25
		2.25 -3.2390315157312219 -1.6838337365057687e-016
		3.0430166849879092e-016 -3.2390315157312215 2.25
		-5.7491853075117283e-016 -6.4780630314624439 -2.25
		2.25 -6.4780630314624439 -1.0715305595945801e-016
		3.0430166849879092e-016 -6.4780630314624439 2.25
		-2.25 -6.4780630314624439 4.1818355419123709e-016
		-5.7491853075117283e-016 -6.4780630314624439 -2.25
		2.25 -6.4780630314624439 -1.0715305595945801e-016
		3.0430166849879092e-016 -6.4780630314624439 2.25
		-5.7491853075117283e-016 -9.7170945471936658 -2.25
		2.25 -9.7170945471936658 -4.5922738268339147e-017
		3.0430166849879092e-016 -9.7170945471936658 2.25
		-2.25 -9.7170945471936658 4.7941387188235596e-016
		-5.7491853075117283e-016 -9.7170945471936658 -2.25
		2.25 -9.7170945471936658 -4.5922738268339147e-017
		3.0430166849879092e-016 -9.7170945471936658 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_spine_0FKcontrolZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 166.80024653202113 0 0 ;
	setAttr ".rp" -type "double3" 0 51.703976886587732 -0.7726800247510337 ;
	setAttr ".sp" -type "double3" 0 51.703976886587732 -0.7726800247510337 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -k true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0.1 -max 
		2 -at "double";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 51.703976886587732 -0.7726800247510337 ;
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
	setAttr ".r" -type "double3" -4.6929474800491455 0 0 ;
	setAttr ".rp" -type "double3" 0 -5.1785104136763351 5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" 0 -5.1785104136763351 5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -5.1785104136763351 5.3290705182007514e-015 ;
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
	setAttr ".r" -type "double3" 17.020177132185779 0 0 ;
	setAttr ".rp" -type "double3" 0 -7.2723806620927718 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 0 -7.2723806620927718 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.2723806620927718 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".r" -type "double3" 12.960979184347551 0 0 ;
	setAttr ".rp" -type "double3" 0 -4.878670881985876 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 0 -4.878670881985876 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -4.878670881985876 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
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
	setAttr ".rp" -type "double3" 0 68.544417095896193 -4.2637999397477371 ;
	setAttr ".sp" -type "double3" 0 68.544417095896193 -4.2637999397477371 ;
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
	setAttr ".or" -type "double3" 0 65.532483963160772 -4.4247525212784247 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.032148024593002721 -11.650619233203516 -0.31510601868889571 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.8098137942837358 11.906169167689187 6.7761164878237983 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -22.299508110324268 1.1102230246251565e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.0859818989602797e-012 -1.252905906822387e-021 -2.0984654879389256e-020 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4160519598086654 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.0817958912289214e-008 -18.044932992050377 4.9542037139360673e-010 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.99313211201093765 3.6564838373491009 10.992108013792718 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081718 -0.7995306279977471 -6.5822866026390843 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -7.070961509833972 5.2180482157382357e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.817444586876601 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -4.4316522744662095 5.9994824640921652e-016 ;
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
	setAttr ".rst" -type "double3" 5.0061242487641913 43.539607071174473 6.9388939039072284e-018 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 5.8098137942837278 11.906169167689182 6.7761164878237947 ;
	setAttr ".rp" -type "double3" 5.0061242487641913 43.539607071174473 0 ;
	setAttr ".sp" -type "double3" 5.0061242487641913 43.539607071174473 0 ;
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
		-1.5331160820031275e-015 -1.2378713670948709e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.2378713670948709e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -7.4331693701080903 -6
		6 -7.4331693701080903 -4.4902232973487166e-016
		8.1147111599677579e-016 -7.4331693701080876 6
		-6 -7.4331693701080903 9.5187529733364862e-016
		-1.5331160820031275e-015 -7.4331693701080903 -6
		6 -7.4331693701080903 -4.4902232973487166e-016
		8.1147111599677579e-016 -7.4331693701080876 6
		-1.5331160820031275e-015 -14.866338740216181 -6
		6 -14.866338740216179 -2.8574148255855469e-016
		8.1147111599677579e-016 -14.866338740216179 6
		-6 -14.866338740216179 1.1151561445099656e-015
		-1.5331160820031275e-015 -14.866338740216181 -6
		6 -14.866338740216179 -2.8574148255855469e-016
		8.1147111599677579e-016 -14.866338740216179 6
		-1.5331160820031275e-015 -22.299508110324268 -6
		6 -22.299508110324268 -1.2246063538223773e-016
		8.1147111599677579e-016 -22.299508110324268 6
		-6 -22.299508110324268 1.2784369916862826e-015
		-1.5331160820031275e-015 -22.299508110324268 -6
		6 -22.299508110324268 -1.2246063538223773e-016
		8.1147111599677579e-016 -22.299508110324268 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 3.4160519598086654 -1.5902773407317576e-015 0 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -22.299508110324268 -2.2204460492503131e-016 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -22.299508110324268 -2.2204460492503131e-016 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -22.299508110324268 -2.2204460492503131e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
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
		-1.5331160820031275e-015 -1.0016950042796223e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.0016950042796223e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.0149776640167927 -6
		6 -6.0149776640167927 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.0149776640167909 6
		-6 -6.0149776640167927 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.0149776640167927 -6
		6 -6.0149776640167927 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.0149776640167909 6
		-1.5331160820031275e-015 -12.029955328033585 -6
		6 -12.029955328033584 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.029955328033584 6
		-6 -12.029955328033584 1.1151561445099656e-015
		-1.5331160820031275e-015 -12.029955328033585 -6
		6 -12.029955328033584 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.029955328033584 6
		-1.5331160820031275e-015 -18.044932992050377 -6
		6 -18.044932992050377 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.044932992050377 6
		-6 -18.044932992050377 1.2784369916862826e-015
		-1.5331160820031275e-015 -18.044932992050377 -6
		6 -18.044932992050377 -1.2246063538223773e-016
		8.1147111599677579e-016 -18.044932992050377 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -73.952305249081718 -0.79953062799774832 -6.5822866026390843 ;
	setAttr ".rp" -type "double3" 2.0817956691843165e-008 -18.04493299205037 4.954228138842609e-010 ;
	setAttr ".sp" -type "double3" 2.0817956691843165e-008 -18.04493299205037 4.954228138842609e-010 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.0817956691843165e-008 -18.04493299205037 4.954228138842609e-010 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999944 0.99999999999999978 ;
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
		-1.5331160820031275e-015 -3.925172137227967e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -3.925172137227967e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.3569871699446572 -6
		6 -2.3569871699446572 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.3569871699446563 6
		-6 -2.3569871699446572 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.3569871699446572 -6
		6 -2.3569871699446572 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.3569871699446563 6
		-1.5331160820031275e-015 -4.7139743398893144 -6
		6 -4.7139743398893135 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.7139743398893135 6
		-6 -4.7139743398893135 1.1151561445099656e-015
		-1.5331160820031275e-015 -4.7139743398893144 -6
		6 -4.7139743398893135 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.7139743398893135 6
		-1.5331160820031275e-015 -7.0709615098339702 -6
		6 -7.0709615098339702 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.0709615098339702 6
		-6 -7.0709615098339702 1.2784369916862826e-015
		-1.5331160820031275e-015 -7.0709615098339702 -6
		6 -7.0709615098339702 -1.2246063538223773e-016
		8.1147111599677579e-016 -7.0709615098339702 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -23.817444586876594 0 1.590277340731758e-015 ;
	setAttr ".rp" -type "double3" 2.7755575615628914e-015 -7.0709615098339729 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 2.7755575615628914e-015 -7.0709615098339729 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.7755575615628914e-015 -7.0709615098339729 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
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
		-1.5331160820031275e-015 -2.4600611961224157e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -2.4600611961224157e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -1.4772174248220706 -6
		6 -1.4772174248220706 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.4772174248220702 6
		-6 -1.4772174248220706 9.5187529733364862e-016
		-1.5331160820031275e-015 -1.4772174248220706 -6
		6 -1.4772174248220706 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.4772174248220702 6
		-1.5331160820031275e-015 -2.9544348496441413 -6
		6 -2.9544348496441408 -2.8574148255855469e-016
		8.1147111599677579e-016 -2.9544348496441408 6
		-6 -2.9544348496441408 1.1151561445099656e-015
		-1.5331160820031275e-015 -2.9544348496441413 -6
		6 -2.9544348496441408 -2.8574148255855469e-016
		8.1147111599677579e-016 -2.9544348496441408 6
		-1.5331160820031275e-015 -4.4316522744662112 -6
		6 -4.4316522744662112 -1.2246063538223773e-016
		8.1147111599677579e-016 -4.4316522744662112 6
		-6 -4.4316522744662112 1.2784369916862826e-015
		-1.5331160820031275e-015 -4.4316522744662112 -6
		6 -4.4316522744662112 -1.2246063538223773e-016
		8.1147111599677579e-016 -4.4316522744662112 6
		
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
	setAttr ".rst" -type "double3" 5.0061242487641922 43.539607071174487 4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.0321706905056688 -11.654096150174938 -0.31520789240979807 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.19018620571649 -11.906169167689164 -6.7761164878237778 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.2188898857098422e-005 22.299533783232331 5.6528051661786094e-007 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -5.4297888939131478e-013 9.9876790770286161e-019 3.3966135416544683e-017 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4160519598085726 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.3175158620224465e-005 18.044912593944311 1.7582851311814807e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.99332604885393239 3.6575922993226304 10.995383903818361 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081476 -0.7995306279976796 -6.5822866026390789 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.6896098808701936e-005 7.0709478770737402 2.6711631626596954e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 2.3296940170811159e-012 -4.1135997986420937e-007 5.0976685214593231e-014 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.817444586876533 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.5098189084360456e-005 4.4316508862803961 -5.4918057256782178e-007 ;
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
	setAttr ".rst" -type "double3" -5.00612 43.5396 6.9388939039072284e-018 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -174.19018620571649 -11.906169167689161 -6.776116487823777 ;
	setAttr ".rp" -type "double3" -5.00612 43.5396 0 ;
	setAttr ".sp" -type "double3" -5.00612 43.5396 0 ;
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
		-1.5331160820031275e-015 1.2378727922297688e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.2378727922297688e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 7.4331779277574173 -6
		6 7.4331779277574173 -4.4902232973487166e-016
		8.1147111599677579e-016 7.4331779277574146 6
		-6 7.4331779277574173 9.5187529733364862e-016
		-1.5331160820031275e-015 7.4331779277574173 -6
		6 7.4331779277574173 -4.4902232973487166e-016
		8.1147111599677579e-016 7.4331779277574146 6
		-1.5331160820031275e-015 14.866355855514835 -6
		6 14.866355855514833 -2.8574148255855469e-016
		8.1147111599677579e-016 14.866355855514833 6
		-6 14.866355855514833 1.1151561445099656e-015
		-1.5331160820031275e-015 14.866355855514835 -6
		6 14.866355855514833 -2.8574148255855469e-016
		8.1147111599677579e-016 14.866355855514833 6
		-1.5331160820031275e-015 22.299533783272249 -6
		6 22.299533783272249 -1.2246063538223773e-016
		8.1147111599677579e-016 22.299533783272249 6
		-6 22.299533783272249 1.2784369916862826e-015
		-1.5331160820031275e-015 22.299533783272249 -6
		6 22.299533783272249 -1.2246063538223773e-016
		8.1147111599677579e-016 22.299533783272249 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 3.4160519598085717 0 0 ;
	setAttr ".rp" -type "double3" -4.2188898854655932e-005 22.299533783232331 5.6528051639581633e-007 ;
	setAttr ".sp" -type "double3" -4.2188898854655932e-005 22.299533783232331 5.6528051639581633e-007 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.2188898854655932e-005 22.299533783232331 5.6528051639581633e-007 ;
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
		-1.5331160820031275e-015 1.0016938719594402e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.0016938719594402e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.0149708646611257 -6
		6 6.0149708646611257 -4.4902232973487166e-016
		8.1147111599677579e-016 6.014970864661124 6
		-6 6.0149708646611257 9.5187529733364862e-016
		-1.5331160820031275e-015 6.0149708646611257 -6
		6 6.0149708646611257 -4.4902232973487166e-016
		8.1147111599677579e-016 6.014970864661124 6
		-1.5331160820031275e-015 12.029941729322251 -6
		6 12.02994172932225 -2.8574148255855469e-016
		8.1147111599677579e-016 12.02994172932225 6
		-6 12.02994172932225 1.1151561445099656e-015
		-1.5331160820031275e-015 12.029941729322251 -6
		6 12.02994172932225 -2.8574148255855469e-016
		8.1147111599677579e-016 12.02994172932225 6
		-1.5331160820031275e-015 18.044912593983376 -6
		6 18.044912593983376 -1.2246063538223773e-016
		8.1147111599677579e-016 18.044912593983376 6
		-6 18.044912593983376 1.2784369916862826e-015
		-1.5331160820031275e-015 18.044912593983376 -6
		6 18.044912593983376 -1.2246063538223773e-016
		8.1147111599677579e-016 18.044912593983376 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -73.952305249081476 -0.7995306279976796 -6.5822866026390789 ;
	setAttr ".rp" -type "double3" 3.3175158619336287e-005 18.044912593944307 1.7582851313147074e-005 ;
	setAttr ".sp" -type "double3" 3.3175158619336287e-005 18.044912593944307 1.7582851313147074e-005 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.3175158619336287e-005 18.044912593944307 1.7582851313147074e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
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
		-1.5331160820031275e-015 3.9251645696124258e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 3.9251645696124258e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.3569826257432527 -6
		6 2.3569826257432527 -4.4902232973487166e-016
		8.1147111599677579e-016 2.3569826257432518 6
		-6 2.3569826257432527 9.5187529733364862e-016
		-1.5331160820031275e-015 2.3569826257432527 -6
		6 2.3569826257432527 -4.4902232973487166e-016
		8.1147111599677579e-016 2.3569826257432518 6
		-1.5331160820031275e-015 4.7139652514865054 -6
		6 4.7139652514865045 -2.8574148255855469e-016
		8.1147111599677579e-016 4.7139652514865045 6
		-6 4.7139652514865045 1.1151561445099656e-015
		-1.5331160820031275e-015 4.7139652514865054 -6
		6 4.7139652514865045 -2.8574148255855469e-016
		8.1147111599677579e-016 4.7139652514865045 6
		-1.5331160820031275e-015 7.0709478772297576 -6
		6 7.0709478772297576 -1.2246063538223773e-016
		8.1147111599677579e-016 7.0709478772297576 6
		-6 7.0709478772297576 1.2784369916862826e-015
		-1.5331160820031275e-015 7.0709478772297576 -6
		6 7.0709478772297576 -1.2246063538223773e-016
		8.1147111599677579e-016 7.0709478772297576 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -23.817444586876533 -1.5902773407317588e-015 3.1805546814635176e-015 ;
	setAttr ".rp" -type "double3" 4.6896098811366471e-005 7.0709478770737411 2.6711631589959595e-006 ;
	setAttr ".sp" -type "double3" 4.6896098811366471e-005 7.0709478770737411 2.6711631589959595e-006 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.6896098811366471e-005 7.0709478770737411 2.6711631589959595e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
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
		-1.5331160820031275e-015 2.4600604255639577e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 2.4600604255639577e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 1.477216962117166 -6
		6 1.477216962117166 -4.4902232973487166e-016
		8.1147111599677579e-016 1.4772169621171656 6
		-6 1.477216962117166 9.5187529733364862e-016
		-1.5331160820031275e-015 1.477216962117166 -6
		6 1.477216962117166 -4.4902232973487166e-016
		8.1147111599677579e-016 1.4772169621171656 6
		-1.5331160820031275e-015 2.954433924234332 -6
		6 2.9544339242343316 -2.8574148255855469e-016
		8.1147111599677579e-016 2.9544339242343316 6
		-6 2.9544339242343316 1.1151561445099656e-015
		-1.5331160820031275e-015 2.954433924234332 -6
		6 2.9544339242343316 -2.8574148255855469e-016
		8.1147111599677579e-016 2.9544339242343316 6
		-1.5331160820031275e-015 4.4316508863514974 -6
		6 4.4316508863514974 -1.2246063538223773e-016
		8.1147111599677579e-016 4.4316508863514974 6
		-6 4.4316508863514974 1.2784369916862826e-015
		-1.5331160820031275e-015 4.4316508863514974 -6
		6 4.4316508863514974 -1.2246063538223773e-016
		8.1147111599677579e-016 4.4316508863514974 6
		
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
	setAttr ".rst" -type "double3" -5.0061200000000019 43.539599999999993 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 51.703976886587732 -0.7726800247510307 ;
	setAttr ".r" -type "double3" -1.3121505012030177 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 166.80024653202113 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -5.1785104136763493 0 ;
	setAttr ".r" -type "double3" 4.3231316717607049 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.6929474800491526 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" 0 -7.2723806620927789 0 ;
	setAttr ".r" -type "double3" -5.9234391759247949 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 17.020177132185786 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 0 -4.8786708819858688 -3.7747582837255322e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 12.960979184347551 0 0 ;
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
	setAttr ".lr" -type "double3" 170.82400263715854 0 0 ;
	setAttr ".o" -type "double3" -170.82400263715854 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 68.613750551320777 -4.2600948778671688 ;
	setAttr ".r" -type "double3" 176.21501817879067 0 0 ;
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
createNode nurbsCurve -n "SpineCurveShapeOrig" -p "SpineCurve";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 17.32956195775499 17.32956195775499 17.32956195775499
		4
		0 51.703976886587732 -0.7726800247510307
		0 57.511405653393517 -1.8991735944995582
		0 62.52055083042535 -4.5857051028091123
		0 68.544417095896193 -4.2637999397477371
		;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 0 68.544417095896208 -4.2637999397477371 ;
	setAttr ".sp" -type "double3" 0 68.544417095896208 -4.2637999397477371 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-014 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 167.91154463149468 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0.069037043513304752 -0.0073987935558825768 ;
	setAttr ".tg[1].tor" -type "double3" 170.8240026378551 0 0 ;
	setAttr ".rst" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" 0 145.33154304227372 5.0498908092291073 ;
	setAttr ".r" -type "double3" -170.77509521126413 0 0 ;
	setAttr ".rp" -type "double3" 0 72.869476126558908 -3.337499101452428 ;
	setAttr ".rpt" -type "double3" 0 -145.33154304227375 -5.0498908092291082 ;
	setAttr ".sp" -type "double3" 0 72.869476126558908 -3.337499101452428 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" 12.488189916677776 -0.84138588538478609 75.539703433293653 ;
	setAttr ".rp" -type "double3" 0.86243947193359083 69.199765189298745 -0.91020734013008253 ;
	setAttr ".sp" -type "double3" 0.86243947193359083 69.199765189298745 -0.91020734013008253 ;
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
		-1.7247555922535185e-015 -3.1588707640120823 -6.75
		6.75 -3.1588707640120819 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.1588707640120814 6.75
		-6.75 -3.1588707640120819 1.0708597095003547e-015
		-1.7247555922535185e-015 -3.1588707640120823 -6.75
		6.75 -3.1588707640120819 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.1588707640120814 6.75
		-1.7247555922535185e-015 -6.3177415280241638 -6.75
		6.75 -6.3177415280241638 -3.2145916787837403e-016
		9.1290500549637277e-016 -6.3177415280241638 6.75
		-6.75 -6.3177415280241638 1.2545506625737113e-015
		-1.7247555922535185e-015 -6.3177415280241638 -6.75
		6.75 -6.3177415280241638 -3.2145916787837403e-016
		9.1290500549637277e-016 -6.3177415280241638 6.75
		-1.7247555922535185e-015 -9.4766122920362452 -6.75
		6.75 -9.4766122920362452 -1.3776821480501744e-016
		9.1290500549637277e-016 -9.4766122920362452 6.75
		-6.75 -9.4766122920362452 1.4382416156470679e-015
		-1.7247555922535185e-015 -9.4766122920362452 -6.75
		6.75 -9.4766122920362452 -1.3776821480501744e-016
		9.1290500549637277e-016 -9.4766122920362452 6.75
		
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
	setAttr ".rst" -type "double3" 0.86243947193361326 69.199765189298759 -0.91020734013008475 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".r" -type "double3" -14.355827840073799 -17.43072945458746 -42.604101251230794 ;
	setAttr ".rp" -type "double3" 8.6970523352492002e-009 -9.4766122920362506 3.9968028886505635e-015 ;
	setAttr ".sp" -type "double3" 8.6970523352492002e-009 -9.4766122920362506 3.9968028886505635e-015 ;
createNode transform -n "Ref:bip_upperArm_LFK" -p "Ref:bip_upperArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKshoulder" -ln "lFKshoulder" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
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
		-1.7247555922535185e-015 -4.1757154078215581 -6.75
		6.75 -4.1757154078215581 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.1757154078215573 6.75
		-6.75 -4.1757154078215581 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.1757154078215581 -6.75
		6.75 -4.1757154078215581 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.1757154078215573 6.75
		-1.7247555922535185e-015 -8.3514308156431163 -6.75
		6.75 -8.3514308156431163 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.3514308156431163 6.75
		-6.75 -8.3514308156431163 1.2545506625737113e-015
		-1.7247555922535185e-015 -8.3514308156431163 -6.75
		6.75 -8.3514308156431163 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.3514308156431163 6.75
		-1.7247555922535185e-015 -12.527146223464673 -6.75
		6.75 -12.527146223464673 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.527146223464673 6.75
		-6.75 -12.527146223464673 1.4382416156470679e-015
		-1.7247555922535185e-015 -12.527146223464673 -6.75
		6.75 -12.527146223464673 -1.3776821480501744e-016
		9.1290500549637277e-016 -12.527146223464673 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -33.312169074236742 0 0 ;
	setAttr ".rp" -type "double3" 9.9920072216264089e-016 -12.527146223464687 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 9.9920072216264089e-016 -12.527146223464687 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.9920072216264089e-016 -12.527146223464687 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
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
		-1.7247555922535185e-015 -4.337831666666669 -6.75
		6.75 -4.337831666666669 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.3378316666666681 6.75
		-6.75 -4.337831666666669 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.337831666666669 -6.75
		6.75 -4.337831666666669 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.3378316666666681 6.75
		-1.7247555922535185e-015 -8.6756633333333379 -6.75
		6.75 -8.6756633333333379 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.6756633333333379 6.75
		-6.75 -8.6756633333333379 1.2545506625737113e-015
		-1.7247555922535185e-015 -8.6756633333333379 -6.75
		6.75 -8.6756633333333379 -3.2145916787837403e-016
		9.1290500549637277e-016 -8.6756633333333379 6.75
		-1.7247555922535185e-015 -13.013495000000006 -6.75
		6.75 -13.013495000000006 -1.3776821480501744e-016
		9.1290500549637277e-016 -13.013495000000006 6.75
		-6.75 -13.013495000000006 1.4382416156470679e-015
		-1.7247555922535185e-015 -13.013495000000006 -6.75
		6.75 -13.013495000000006 -1.3776821480501744e-016
		9.1290500549637277e-016 -13.013495000000006 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" -6.3611093629270375e-015 3.1805546814635183e-015 3.1805546814635183e-015 ;
	setAttr ".rp" -type "double3" 5.8841820305133297e-015 -13.013494999999988 0 ;
	setAttr ".sp" -type "double3" 5.8841820305133297e-015 -13.013494999999988 0 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.8841820305133297e-015 -13.013494999999988 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999967 ;
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
	setAttr ".rst" -type "double3" 8.6970466384173051e-009 -9.4766122920362506 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -167.51181008332182 0.84138588538476444 -75.539703433293639 ;
	setAttr ".rp" -type "double3" -0.862439 69.19980000000001 -0.91020699999999799 ;
	setAttr ".sp" -type "double3" -0.862439 69.19980000000001 -0.91020699999999799 ;
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
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
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
		-1.7247555922535185e-015 3.158874 -6.75
		6.75 3.1588739999999995 -5.0515012095173062e-016
		9.1290500549637277e-016 3.1588739999999991 6.75
		-6.75 3.1588739999999995 1.0708597095003547e-015
		-1.7247555922535185e-015 3.158874 -6.75
		6.75 3.1588739999999995 -5.0515012095173062e-016
		9.1290500549637277e-016 3.1588739999999991 6.75
		-1.7247555922535185e-015 6.317747999999999 -6.75
		6.75 6.317747999999999 -3.2145916787837403e-016
		9.1290500549637277e-016 6.317747999999999 6.75
		-6.75 6.317747999999999 1.2545506625737113e-015
		-1.7247555922535185e-015 6.317747999999999 -6.75
		6.75 6.317747999999999 -3.2145916787837403e-016
		9.1290500549637277e-016 6.317747999999999 6.75
		-1.7247555922535185e-015 9.476621999999999 -6.75
		6.75 9.476621999999999 -1.3776821480501744e-016
		9.1290500549637277e-016 9.476621999999999 6.75
		-6.75 9.476621999999999 1.4382416156470679e-015
		-1.7247555922535185e-015 9.476621999999999 -6.75
		6.75 9.476621999999999 -1.3776821480501744e-016
		9.1290500549637277e-016 9.476621999999999 6.75
		
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
	setAttr ".rst" -type "double3" -0.86243900000003149 69.19980000000001 -0.9102069999999981 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".r" -type "double3" -14.355827840074165 -17.430729454587784 -42.604101251230666 ;
	setAttr ".rp" -type "double3" -4.1910919179599659e-015 9.4766220000000132 2.2204460492503131e-015 ;
	setAttr ".sp" -type "double3" -4.1910919179599659e-015 9.4766220000000132 2.2204460492503131e-015 ;
createNode transform -n "Ref:bip_upperArm_RFK" -p "Ref:bip_upperArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKshoulder" -ln "rFKshoulder" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
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
		-1.7247555922535185e-015 4.1757180000000016 -6.75
		6.75 4.1757180000000007 -5.0515012095173062e-016
		9.1290500549637277e-016 4.1757180000000007 6.75
		-6.75 4.1757180000000007 1.0708597095003547e-015
		-1.7247555922535185e-015 4.1757180000000016 -6.75
		6.75 4.1757180000000007 -5.0515012095173062e-016
		9.1290500549637277e-016 4.1757180000000007 6.75
		-1.7247555922535185e-015 8.3514360000000014 -6.75
		6.75 8.3514360000000014 -3.2145916787837403e-016
		9.1290500549637277e-016 8.3514360000000014 6.75
		-6.75 8.3514360000000014 1.2545506625737113e-015
		-1.7247555922535185e-015 8.3514360000000014 -6.75
		6.75 8.3514360000000014 -3.2145916787837403e-016
		9.1290500549637277e-016 8.3514360000000014 6.75
		-1.7247555922535185e-015 12.527154000000003 -6.75
		6.75 12.527154000000003 -1.3776821480501744e-016
		9.1290500549637277e-016 12.527154000000003 6.75
		-6.75 12.527154000000003 1.4382416156470679e-015
		-1.7247555922535185e-015 12.527154000000003 -6.75
		6.75 12.527154000000003 -1.3776821480501744e-016
		9.1290500549637277e-016 12.527154000000003 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -33.312169074236678 0 3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 5.440092820663267e-015 12.527153999999994 8.8817841970012523e-016 ;
	setAttr ".sp" -type "double3" 5.440092820663267e-015 12.527153999999994 8.8817841970012523e-016 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.440092820663267e-015 12.527153999999994 8.8817841970012523e-016 ;
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
		-1.7247555922535185e-015 4.3378316666666681 -6.75
		6.75 4.3378316666666672 -5.0515012095173062e-016
		9.1290500549637277e-016 4.3378316666666672 6.75
		-6.75 4.3378316666666672 1.0708597095003547e-015
		-1.7247555922535185e-015 4.3378316666666681 -6.75
		6.75 4.3378316666666672 -5.0515012095173062e-016
		9.1290500549637277e-016 4.3378316666666672 6.75
		-1.7247555922535185e-015 8.6756633333333344 -6.75
		6.75 8.6756633333333344 -3.2145916787837403e-016
		9.1290500549637277e-016 8.6756633333333344 6.75
		-6.75 8.6756633333333344 1.2545506625737113e-015
		-1.7247555922535185e-015 8.6756633333333344 -6.75
		6.75 8.6756633333333344 -3.2145916787837403e-016
		9.1290500549637277e-016 8.6756633333333344 6.75
		-1.7247555922535185e-015 13.013495000000002 -6.75
		6.75 13.013495000000002 -1.3776821480501744e-016
		9.1290500549637277e-016 13.013495000000002 6.75
		-6.75 13.013495000000002 1.4382416156470679e-015
		-1.7247555922535185e-015 13.013495000000002 -6.75
		6.75 13.013495000000002 -1.3776821480501744e-016
		9.1290500549637277e-016 13.013495000000002 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 3.1805546814635168e-015 0 ;
	setAttr ".rp" -type "double3" -3.7747582837255322e-015 13.013495000000006 0 ;
	setAttr ".sp" -type "double3" -3.7747582837255322e-015 13.013495000000006 0 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.7747582837255322e-015 13.013495000000006 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999944 ;
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
	setAttr ".rst" -type "double3" 1.5987211554602254e-014 9.4766220000000416 6.6613381477509392e-016 ;
	setAttr -k on ".w0";
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 145.33154304227372 5.0498908092291073 ;
	setAttr ".sp" -type "double3" 0 145.33154304227372 5.0498908092291073 ;
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
	setAttr ".lr" -type "double3" -170.77509521126413 0 0 ;
	setAttr ".rsrr" -type "double3" -170.77509521126413 0 0 ;
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
	setAttr ".o" -type "double3" 0 76.787125946377515 9.3136907489768443 ;
	setAttr -k on ".w0";
createNode transform -n "neckControl" -p "neckControlLockParent";
	addAttr -ci true -sn "neckControl" -ln "neckControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317588e-015 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
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
	setAttr ".rst" -type "double3" 0 72.86947612655888 -3.3374991014524245 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0 -77.109121800882832 14.976058200299009 ;
	setAttr ".r" -type "double3" -9.2249047887359623 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 75.691068172087611 -2.8792421854895607 ;
	setAttr ".rpt" -type "double3" 0 -1.4405091346259906 -12.096816014809455 ;
	setAttr ".sp" -type "double3" 0 75.691068172087597 -2.8792421854895602 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 -4.4408920985006271e-016 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 -77.109121800882832 14.976058200299009 ;
	setAttr ".sp" -type "double3" 0 -77.109121800882832 14.976058200299009 ;
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
	setAttr ".lr" -type "double3" -180.00000000000009 0 0 ;
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
	setAttr ".o" -type "double3" 0 -149.97859792744174 18.313557301751437 ;
	setAttr -k on ".w0";
createNode transform -n "headControl" -p "headControlLockParent";
	addAttr -ci true -sn "headControl" -ln "headControl" -at "message";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.4967864267551438e-014 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
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
	setAttr ".rst" -type "double3" 0 75.691068172087597 -2.8792421854895602 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_cigControlZeroGroup" -p "headControl";
	setAttr ".t" -type "double3" 53.534251782037465 -9.4450341927131092 -57.679346822032947 ;
	setAttr ".r" -type "double3" 72.120967029401129 -44.192571519272043 11.444725592710434 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 1.0819373379999997 74.754624195687597 2.4876541975104418 ;
	setAttr ".rpt" -type "double3" -53.534251782037458 -64.373146026574503 49.82479624152252 ;
	setAttr ".sp" -type "double3" 1.0819373379999999 74.754624195687612 2.4876541975104423 ;
	setAttr ".spt" -type "double3" -2.2204460492503128e-016 -1.4210854715202002e-014 
		-4.4408920985006252e-016 ;
createNode transform -n "Ref:prp_cigControl" -p "Ref:prp_cigControlZeroGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".t" -type "double3" 1.0819373379999999 74.754624195687612 2.4876541975104423 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_cigControlShape" -p "Ref:prp_cigControl";
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
		-1.9163951025039094e-016 -1.1823760052897148e-016 -0.75
		0.75 0 -7.6537897113898579e-017
		1.0143388949959697e-016 0 0.75
		-0.75 0 9.8574306269666456e-017
		-1.9163951025039094e-016 -1.1823760052897148e-016 -0.75
		0.75 0 -7.6537897113898579e-017
		1.0143388949959697e-016 0 0.75
		-1.9163951025039094e-016 -0.70999308491127677 -0.75
		0.75 -0.70999308491127677 -5.6127791216858958e-017
		1.0143388949959697e-016 -0.70999308491127655 0.75
		-0.75 -0.70999308491127677 1.1898441216670608e-016
		-1.9163951025039094e-016 -0.70999308491127677 -0.75
		0.75 -0.70999308491127677 -5.6127791216858958e-017
		1.0143388949959697e-016 -0.70999308491127655 0.75
		-1.9163951025039094e-016 -1.4199861698225535 -0.75
		0.75 -1.4199861698225533 -3.5717685319819337e-017
		1.0143388949959697e-016 -1.4199861698225533 0.75
		-0.75 -1.4199861698225533 1.393945180637457e-016
		-1.9163951025039094e-016 -1.4199861698225535 -0.75
		0.75 -1.4199861698225533 -3.5717685319819337e-017
		1.0143388949959697e-016 -1.4199861698225533 0.75
		-1.9163951025039094e-016 -2.1299792547338301 -0.75
		0.75 -2.1299792547338301 -1.5307579422779716e-017
		1.0143388949959697e-016 -2.1299792547338301 0.75
		-0.75 -2.1299792547338301 1.5980462396078532e-016
		-1.9163951025039094e-016 -2.1299792547338301 -0.75
		0.75 -2.1299792547338301 -1.5307579422779716e-017
		1.0143388949959697e-016 -2.1299792547338301 0.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode joint -n "Ref:bip_upperArm_LIK" -p "main";
	addAttr -ci true -sn "lIKshoulder" -ln "lIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.17448097925814576 8.0560309755546982 -2.477398929991693 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.4877573803629316 -9.3871507088809309 30.72823218527968 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" -1.9539925233402755e-014 -12.52714622346468 3.9968028886505635e-015 ;
	setAttr ".r" -type "double3" -4.8856659610853674e-014 -8.0027873941618568e-029 2.6053424667542944e-028 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -33.312169074236721 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" 2.1316282072803006e-014 -13.013494999999995 -1.5987211554602254e-014 ;
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
	setAttr ".rst" -type "double3" 9.8292472550250327 66.918494915529195 -2.9591935901275304 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 14.087862380281974 4.9245961715218058 7.7199432430689559 ;
	setAttr ".sp" -type "double3" 14.087862380281528 4.9245961715218627 7.7199432430687853 ;
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
	setAttr ".rst" -type "double3" 6.1211125197227094 41.673142888849888 -1.8428222971131945 ;
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
	setAttr ".rst" -type "double3" 6.2438989123589241 -10.817018387560736 0.96707397828795716 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
	setAttr ".sp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
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
	setAttr ".tg[0].tot" -type "double3" 20.20897490000468 -0.10110897116044981 6.7043141949455736 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 0 8.8817841970012523e-016 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".rp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
	setAttr ".sp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
createNode transform -n "likHandControlZeroGroup" -p "likHandControlWeaponGroup";
	setAttr ".t" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
	setAttr ".rp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
	setAttr ".sp" -type "double3" 20.208974900004684 46.597739060371694 5.8771209459557614 ;
createNode transform -n "likHandControl" -p "likHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lIKcontrol" -ln "lIKcontrol" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
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
	setAttr ".lr" -type "double3" -37.506441682198258 -1.5361284697415176 27.652704566508859 ;
	setAttr ".rsrr" -type "double3" -37.799926431215866 -9.3871489067052796 30.728232041912971 ;
	setAttr -k on ".w0";
createNode transform -n "lElbowControl" -p "main";
	addAttr -ci true -sn "lElbowControl" -ln "lElbowControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 16.073146167383957 56.101476527968458 -1.9921196118395732 ;
	setAttr ".sp" -type "double3" 16.073146167383957 56.101476527968458 -1.9921196118395732 ;
	setAttr ".hdl" -type "double3" 16.073146167383957 56.101476527968458 -1.9921196118395732 ;
	setAttr ".dh" yes;
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
		15.073146167383957 56.101476527968458 -1.9921196118395734
		15.073146167383957 56.101476527968458 -1.9921196118395734
		15.073146167383957 56.101476527968458 -1.9921196118395734
		15.073146167383957 56.101476527968458 -1.9921196118395734
		15.073146167383957 56.101476527968458 -1.9921196118395734
		16.073146167383957 56.101476527968458 -2.9921196118395734
		16.073146167383957 55.101476527968458 -1.9921196118395732
		16.073146167383957 56.101476527968458 -0.9921196118395732
		16.073146167383957 57.101476527968458 -1.992119611839573
		16.073146167383957 56.101476527968458 -2.9921196118395734
		17.073146167383957 56.101476527968458 -1.992119611839573
		17.073146167383957 56.101476527968458 -1.992119611839573
		17.073146167383957 56.101476527968458 -1.992119611839573
		17.073146167383957 56.101476527968458 -1.992119611839573
		17.073146167383957 56.101476527968458 -1.992119611839573
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" 20.208974708766565 44.482041216290241 5.8771209091768171 ;
	setAttr ".rpt" -type "double3" -19.698479986454792 0.90032758171123994 -24.897509894396531 ;
	setAttr ".sp" -type "double3" 20.208974708766569 44.482041216290241 5.8771209091768171 ;
	setAttr ".spt" -type "double3" -3.5527136788005005e-015 0 0 ;
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
	setAttr ".r" -type "double3" -1.5902773407317584e-015 0 3.1805546814635176e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -1.0230580895483263 -4.0049913037864622 0.95571795107371749 ;
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
		-1.1498370615023457e-015 -3.1318617779238672e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 3.1318617779238672e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -3.1318617779238672e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 3.1318617779238672e-016 4.5
		-1.1498370615023457e-015 -1.4104651536033828 -4.5
		4.5 -1.4104651536033828 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.4104651536033825 4.5
		-4.5 -1.4104651536033828 7.1390647300023646e-016
		-1.1498370615023457e-015 -1.4104651536033828 -4.5
		4.5 -1.4104651536033828 -3.3676674730115375e-016
		6.0860333699758185e-016 -1.4104651536033825 4.5
		-1.1498370615023457e-015 -2.8209303072067655 -4.5
		4.5 -2.8209303072067655 -2.1430611191891602e-016
		6.0860333699758185e-016 -2.8209303072067655 4.5
		-4.5 -2.8209303072067655 8.3636710838247419e-016
		-1.1498370615023457e-015 -2.8209303072067655 -4.5
		4.5 -2.8209303072067655 -2.1430611191891602e-016
		6.0860333699758185e-016 -2.8209303072067655 4.5
		-1.1498370615023457e-015 -4.2313954608101483 -4.5
		4.5 -4.2313954608101483 -9.1845476536678294e-017
		6.0860333699758185e-016 -4.2313954608101483 4.5
		-4.5 -4.2313954608101483 9.5882774376471192e-016
		-1.1498370615023457e-015 -4.2313954608101483 -4.5
		4.5 -4.2313954608101483 -9.1845476536678294e-017
		6.0860333699758185e-016 -4.2313954608101483 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -29.434324833552406 28.868600440827745 -26.613112067211116 ;
	setAttr ".rp" -type "double3" -0.24750294155042241 -1.3428441808931124 1.6847418967996184 ;
	setAttr ".sp" -type "double3" -0.24750294155042241 -1.3428441808931124 1.6847418967996184 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.2475029415504256 -1.3428441808931146 1.6847418967996206 ;
	setAttr ".sp" -type "double3" -0.2475029415504256 -1.3428441808931146 1.6847418967996206 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.2475029415504256 -1.3428441808931146 1.6847418967996206 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587939e-016 7.951386703658788e-016 -3.975693351829394e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.4962982493035668e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4962982493035668e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4962982493035668e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4962982493035668e-016 2.25
		-5.7491853075117283e-016 -0.6738728237998669 -2.25
		2.25 -0.6738728237998669 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.67387282379986679 2.25
		-2.25 -0.6738728237998669 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.6738728237998669 -2.25
		2.25 -0.6738728237998669 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.67387282379986679 2.25
		-5.7491853075117283e-016 -1.3477456475997338 -2.25
		2.25 -1.3477456475997338 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3477456475997338 2.25
		-2.25 -1.3477456475997338 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.3477456475997338 -2.25
		2.25 -1.3477456475997338 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3477456475997338 2.25
		-5.7491853075117283e-016 -2.0216184713996008 -2.25
		2.25 -2.0216184713996008 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0216184713996008 2.25
		-2.25 -2.0216184713996008 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.0216184713996008 -2.25
		2.25 -2.0216184713996008 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0216184713996008 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 10.703360410658593 0 0 ;
	setAttr ".rp" -type "double3" -8.4238171993433753e-015 -2.0216184713995982 1.1546319456101628e-014 ;
	setAttr ".sp" -type "double3" -8.4238171993433753e-015 -2.0216184713995982 1.1546319456101628e-014 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.1976530878143876e-014 -2.0216184713996066 1.8873791418627661e-014 ;
	setAttr ".sp" -type "double3" -1.1976530878143876e-014 -2.0216184713996066 1.8873791418627661e-014 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.1976530878143876e-014 -2.0216184713996066 1.8873791418627661e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.1430118386509511e-015 -7.951386703658788e-016 7.951386703658788e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -8.409714868882e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 8.409714868882e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -8.409714868882e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 8.409714868882e-017 2.25
		-5.7491853075117283e-016 -0.37873988749789095 -2.25
		2.25 -0.37873988749789095 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.37873988749789089 2.25
		-2.25 -0.37873988749789095 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.37873988749789095 -2.25
		2.25 -0.37873988749789095 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.37873988749789089 2.25
		-5.7491853075117283e-016 -0.7574797749957819 -2.25
		2.25 -0.7574797749957819 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.7574797749957819 2.25
		-2.25 -0.7574797749957819 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.7574797749957819 -2.25
		2.25 -0.7574797749957819 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.7574797749957819 2.25
		-5.7491853075117283e-016 -1.1362196624936729 -2.25
		2.25 -1.1362196624936729 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.1362196624936729 2.25
		-2.25 -1.1362196624936729 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.1362196624936729 -2.25
		2.25 -1.1362196624936729 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.1362196624936729 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -12.038514910468917 0 0 ;
	setAttr ".rp" -type "double3" 3.4694469519536142e-015 -1.136219662493686 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 3.4694469519536142e-015 -1.136219662493686 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.4278135885301708e-015 -1.1362196624936824 0 ;
	setAttr ".sp" -type "double3" 3.4278135885301708e-015 -1.1362196624936824 0 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.4278135885301708e-015 -1.1362196624936824 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.3417965062424221e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.3666319352831631e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3666319352831631e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3666319352831631e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3666319352831631e-016 2.25
		-5.7491853075117283e-016 -0.61547630744938731 -2.25
		2.25 -0.61547630744938731 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61547630744938719 2.25
		-2.25 -0.61547630744938731 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.61547630744938731 -2.25
		2.25 -0.61547630744938731 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61547630744938719 2.25
		-5.7491853075117283e-016 -1.2309526148987746 -2.25
		2.25 -1.2309526148987746 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2309526148987746 2.25
		-2.25 -1.2309526148987746 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2309526148987746 -2.25
		2.25 -1.2309526148987746 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2309526148987746 2.25
		-5.7491853075117283e-016 -1.8464289223481618 -2.25
		2.25 -1.8464289223481618 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8464289223481618 2.25
		-2.25 -1.8464289223481618 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8464289223481618 -2.25
		2.25 -1.8464289223481618 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8464289223481618 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 177.50984281828732 59.198052489195 155.36824194606262 ;
	setAttr ".rp" -type "double3" 0.19761329068689482 -4.588444500277844 1.3289102735303633 ;
	setAttr ".sp" -type "double3" 0.19761329068689482 -4.588444500277844 1.3289102735303633 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0.19761329068690081 -4.5884445002778458 1.328910273530358 ;
	setAttr ".sp" -type "double3" 0.19761329068690081 -4.5884445002778458 1.328910273530358 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" 0.19761329068690681 -7.4042282485800524 0.53476142021086193 ;
	setAttr ".sp" -type "double3" 0.19761329068690681 -7.4042282485800524 0.53476142021086193 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.19761329068690614 -4.5884445002778458 1.3289102735303508 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.9878466759146985e-016 -7.9513867036587939e-016 4.9696166897867459e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
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
		-5.7491853075117283e-016 -1.298613856145988e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.298613856145988e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.298613856145988e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.298613856145988e-016 2.25
		-5.7491853075117283e-016 -0.58484368786372343 -2.25
		2.25 -0.58484368786372343 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58484368786372332 2.25
		-2.25 -0.58484368786372343 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58484368786372343 -2.25
		2.25 -0.58484368786372343 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58484368786372332 2.25
		-5.7491853075117283e-016 -1.1696873757274469 -2.25
		2.25 -1.1696873757274469 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1696873757274469 2.25
		-2.25 -1.1696873757274469 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1696873757274469 -2.25
		2.25 -1.1696873757274469 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1696873757274469 2.25
		-5.7491853075117283e-016 -1.7545310635911702 -2.25
		2.25 -1.7545310635911702 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7545310635911702 2.25
		-2.25 -1.7545310635911702 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7545310635911702 -2.25
		2.25 -1.7545310635911702 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7545310635911702 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 37.98113299310932 0 4.9696166897867449e-016 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.7545310635911848 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.7545310635911848 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.7545310635911857 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.7545310635911857 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -1.7545310635911857 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270335e-015 0 -1.9878466759146976e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
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
		-5.7491853075117283e-016 -9.0817299886581297e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 9.0817299886581297e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -9.0817299886581297e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 9.0817299886581297e-017 2.25
		-5.7491853075117283e-016 -0.40900475792800212 -2.25
		2.25 -0.40900475792800212 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.40900475792800206 2.25
		-2.25 -0.40900475792800212 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.40900475792800212 -2.25
		2.25 -0.40900475792800212 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.40900475792800206 2.25
		-5.7491853075117283e-016 -0.81800951585600423 -2.25
		2.25 -0.81800951585600423 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.81800951585600423 2.25
		-2.25 -0.81800951585600423 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.81800951585600423 -2.25
		2.25 -0.81800951585600423 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.81800951585600423 2.25
		-5.7491853075117283e-016 -1.2270142737840064 -2.25
		2.25 -1.2270142737840064 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.2270142737840064 2.25
		-2.25 -1.2270142737840064 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.2270142737840064 -2.25
		2.25 -1.2270142737840064 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.2270142737840064 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" 5.3089924386767144 0 5.1684013573782128e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.2270142737839969 -1.4210854715202004e-014 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.2270142737839969 -1.4210854715202004e-014 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -1.2270142737840004 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -1.2270142737840004 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -1.2270142737840004 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.5902773407317576e-015 -3.9756933518293928e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000007 ;
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
		-5.7491853075117283e-016 -1.2836435515875698e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2836435515875698e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2836435515875698e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2836435515875698e-016 2.25
		-5.7491853075117283e-016 -0.57810166206063196 -2.25
		2.25 -0.57810166206063196 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.57810166206063185 2.25
		-2.25 -0.57810166206063196 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.57810166206063196 -2.25
		2.25 -0.57810166206063196 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.57810166206063185 2.25
		-5.7491853075117283e-016 -1.1562033241212639 -2.25
		2.25 -1.1562033241212639 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1562033241212639 2.25
		-2.25 -1.1562033241212639 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1562033241212639 -2.25
		2.25 -1.1562033241212639 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1562033241212639 2.25
		-5.7491853075117283e-016 -1.734304986181896 -2.25
		2.25 -1.734304986181896 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.734304986181896 2.25
		-2.25 -1.734304986181896 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.734304986181896 -2.25
		2.25 -1.734304986181896 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.734304986181896 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 179.82865331956606 51.982906158062796 154.61220448028442 ;
	setAttr ".rp" -type "double3" -0.37702267624845476 -4.2073368447255968 0.24673492329544544 ;
	setAttr ".sp" -type "double3" -0.37702267624845476 -4.2073368447255968 0.24673492329544544 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.37702267624845387 -4.2073368447255941 0.24673492329544544 ;
	setAttr ".sp" -type "double3" -0.37702267624845387 -4.2073368447255941 0.24673492329544544 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.37702267624845653 -7.3722795523973028 -0.58094909037306652 ;
	setAttr ".sp" -type "double3" -0.37702267624845653 -7.3722795523973028 -0.58094909037306652 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.37702267624845209 -4.2073368447255941 0.24673492329544544 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587968e-016 -1.5902773407317592e-015 -2.9817700138720484e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.7558740334095879e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7558740334095879e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.7558740334095879e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.7558740334095879e-016 2.25
		-5.7491853075117283e-016 -0.790775364257295 -2.25
		2.25 -0.790775364257295 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79077536425729489 2.25
		-2.25 -0.790775364257295 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.790775364257295 -2.25
		2.25 -0.790775364257295 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.79077536425729489 2.25
		-5.7491853075117283e-016 -1.58155072851459 -2.25
		2.25 -1.58155072851459 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.58155072851459 2.25
		-2.25 -1.58155072851459 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.58155072851459 -2.25
		2.25 -1.58155072851459 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.58155072851459 2.25
		-5.7491853075117283e-016 -2.372326092771885 -2.25
		2.25 -2.372326092771885 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.372326092771885 2.25
		-2.25 -2.372326092771885 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.372326092771885 -2.25
		2.25 -2.372326092771885 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.372326092771885 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 41.37218319654972 1.5902773407317584e-015 -3.975693351829396e-016 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -2.3723260927718801 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -2.3723260927718801 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -7.1054273576010019e-015 -2.3723260927718801 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-015 -2.3723260927718801 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-015 -2.3723260927718801 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
		-5.7491853075117283e-016 -1.1694889590442374e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.1694889590442374e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.1694889590442374e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.1694889590442374e-016 2.25
		-5.7491853075117283e-016 -0.52669100401655367 -2.25
		2.25 -0.52669100401655367 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.52669100401655355 2.25
		-2.25 -0.52669100401655367 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.52669100401655367 -2.25
		2.25 -0.52669100401655367 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.52669100401655355 2.25
		-5.7491853075117283e-016 -1.0533820080331073 -2.25
		2.25 -1.0533820080331073 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0533820080331073 2.25
		-2.25 -1.0533820080331073 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.0533820080331073 -2.25
		2.25 -1.0533820080331073 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0533820080331073 2.25
		-5.7491853075117283e-016 -1.5800730120496609 -2.25
		2.25 -1.5800730120496609 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.5800730120496609 2.25
		-2.25 -1.5800730120496609 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.5800730120496609 -2.25
		2.25 -1.5800730120496609 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.5800730120496609 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 1.9626660162425253 -1.5902773407317584e-015 -3.1805546814635168e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.5800730120496667 0 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.5800730120496667 0 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.5800730120496596 -5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.5800730120496596 -5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -1.5800730120496596 -5.3290705182007514e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
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
		-5.7491853075117283e-016 -1.210760775948114e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.210760775948114e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.210760775948114e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.210760775948114e-016 2.25
		-5.7491853075117283e-016 -0.54527817793947386 -2.25
		2.25 -0.54527817793947386 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.54527817793947375 2.25
		-2.25 -0.54527817793947386 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.54527817793947386 -2.25
		2.25 -0.54527817793947386 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.54527817793947375 2.25
		-5.7491853075117283e-016 -1.0905563558789477 -2.25
		2.25 -1.0905563558789477 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0905563558789477 2.25
		-2.25 -1.0905563558789477 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.0905563558789477 -2.25
		2.25 -1.0905563558789477 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.0905563558789477 2.25
		-5.7491853075117283e-016 -1.6358345338184215 -2.25
		2.25 -1.6358345338184215 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6358345338184215 2.25
		-2.25 -1.6358345338184215 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6358345338184215 -2.25
		2.25 -1.6358345338184215 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6358345338184215 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -176.198924389323 46.689051655795517 155.1435484896781 ;
	setAttr ".rp" -type "double3" -1.1710480260854064 -3.8571527380709059 -0.7406770742417077 ;
	setAttr ".sp" -type "double3" -1.1710480260854064 -3.8571527380709059 -0.7406770742417077 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.1710480260853995 -3.8571527380709125 -0.74067707424170948 ;
	setAttr ".sp" -type "double3" -1.1710480260853995 -3.8571527380709125 -0.74067707424170948 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -1.1710480260853882 -6.8453776240084618 -1.6233571314667543 ;
	setAttr ".sp" -type "double3" -1.1710480260853882 -6.8453776240084618 -1.6233571314667543 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.1710480260853933 -3.8571527380709272 -0.74067707424170948 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587959e-016 3.1805546814635168e-015 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
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
		-5.7491853075117283e-016 -1.2513167979942501e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2513167979942501e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2513167979942501e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2513167979942501e-016 2.25
		-5.7491853075117283e-016 -0.56354298651693469 -2.25
		2.25 -0.56354298651693469 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.56354298651693457 2.25
		-2.25 -0.56354298651693469 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.56354298651693469 -2.25
		2.25 -0.56354298651693469 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.56354298651693457 2.25
		-5.7491853075117283e-016 -1.1270859730338694 -2.25
		2.25 -1.1270859730338694 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1270859730338694 2.25
		-2.25 -1.1270859730338694 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1270859730338694 -2.25
		2.25 -1.1270859730338694 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1270859730338694 2.25
		-5.7491853075117283e-016 -1.6906289595508039 -2.25
		2.25 -1.6906289595508039 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6906289595508039 2.25
		-2.25 -1.6906289595508039 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6906289595508039 -2.25
		2.25 -1.6906289595508039 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6906289595508039 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 28.163696160124818 3.1805546814635176e-015 1.9878466759146984e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.6906289595508168 0 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.6906289595508168 0 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 2.6645352591003757e-015 -1.6906289595508124 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-015 -1.6906289595508124 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -1.6906289595508124 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 -4.7708320221952767e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.0535574873536785e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0535574873536785e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0535574873536785e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0535574873536785e-016 2.25
		-5.7491853075117283e-016 -0.47448011074594226 -2.25
		2.25 -0.47448011074594226 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.47448011074594221 2.25
		-2.25 -0.47448011074594226 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.47448011074594226 -2.25
		2.25 -0.47448011074594226 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.47448011074594221 2.25
		-5.7491853075117283e-016 -0.94896022149188453 -2.25
		2.25 -0.94896022149188453 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.94896022149188453 2.25
		-2.25 -0.94896022149188453 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.94896022149188453 -2.25
		2.25 -0.94896022149188453 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.94896022149188453 2.25
		-5.7491853075117283e-016 -1.4234403322378268 -2.25
		2.25 -1.4234403322378268 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.4234403322378268 2.25
		-2.25 -1.4234403322378268 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.4234403322378268 -2.25
		2.25 -1.4234403322378268 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.4234403322378268 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 13.419380546313329 -3.1805546814635168e-015 0 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -1.423440332237826 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 -1.423440332237826 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 7.9936057773011271e-015 -1.4234403322378331 7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 7.9936057773011271e-015 -1.4234403322378331 7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.9936057773011271e-015 -1.4234403322378331 7.1054273576010019e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270351e-015 3.1805546814635168e-015 1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
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
		-5.7491853075117283e-016 -1.3020770735302263e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3020770735302263e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3020770735302263e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3020770735302263e-016 2.25
		-5.7491853075117283e-016 -0.58640338231583933 -2.25
		2.25 -0.58640338231583933 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58640338231583922 2.25
		-2.25 -0.58640338231583933 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58640338231583933 -2.25
		2.25 -0.58640338231583933 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58640338231583922 2.25
		-5.7491853075117283e-016 -1.1728067646316787 -2.25
		2.25 -1.1728067646316787 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1728067646316787 2.25
		-2.25 -1.1728067646316787 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1728067646316787 -2.25
		2.25 -1.1728067646316787 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1728067646316787 2.25
		-5.7491853075117283e-016 -1.7592101469475181 -2.25
		2.25 -1.7592101469475181 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7592101469475181 2.25
		-2.25 -1.7592101469475181 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7592101469475181 -2.25
		2.25 -1.7592101469475181 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7592101469475181 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -176.87589629592048 43.789667966965972 151.35001943964056 ;
	setAttr ".rp" -type "double3" -1.966130564956438 -3.3981763725770833 -1.5474453812200801 ;
	setAttr ".sp" -type "double3" -1.966130564956438 -3.3981763725770833 -1.5474453812200801 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.9661305649564387 -3.3981763725770922 -1.5474453812200828 ;
	setAttr ".sp" -type "double3" -1.9661305649564387 -3.3981763725770922 -1.5474453812200828 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -1.9661305649564342 -5.9883903457886412 -2.2319884095329612 ;
	setAttr ".sp" -type "double3" -1.9661305649564342 -5.9883903457886412 -2.2319884095329612 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -1.9661305649564378 -3.3981763725771001 -1.5474453812200863 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635183e-015 -3.1805546814635183e-015 3.1805546814635183e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 1 ;
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
		-5.7491853075117283e-016 -1.0642005590358508e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0642005590358508e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0642005590358508e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0642005590358508e-016 2.25
		-5.7491853075117283e-016 -0.47927332411213314 -2.25
		2.25 -0.47927332411213314 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.47927332411213308 2.25
		-2.25 -0.47927332411213314 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.47927332411213314 -2.25
		2.25 -0.47927332411213314 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.47927332411213308 2.25
		-5.7491853075117283e-016 -0.95854664822426627 -2.25
		2.25 -0.95854664822426627 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.95854664822426627 2.25
		-2.25 -0.95854664822426627 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.95854664822426627 -2.25
		2.25 -0.95854664822426627 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.95854664822426627 2.25
		-5.7491853075117283e-016 -1.4378199723363994 -2.25
		2.25 -1.4378199723363994 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.4378199723363994 2.25
		-2.25 -1.4378199723363994 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.4378199723363994 -2.25
		2.25 -1.4378199723363994 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.4378199723363994 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 24.348262730400982 3.1805546814635168e-015 -2.3854160110976376e-015 ;
	setAttr ".rp" -type "double3" 6.2172489379008766e-015 -1.4378199723364142 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 6.2172489379008766e-015 -1.4378199723364142 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 7.1054273576010019e-015 -1.4378199723364133 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-015 -1.4378199723364133 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-015 -1.4378199723364133 -7.1054273576010019e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 -6.3611093629270335e-015 1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -7.8411156640871016e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.8411156640871016e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -7.8411156640871016e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 7.8411156640871016e-017 2.25
		-5.7491853075117283e-016 -0.3531324558295163 -2.25
		2.25 -0.3531324558295163 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.35313245582951625 2.25
		-2.25 -0.3531324558295163 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.3531324558295163 -2.25
		2.25 -0.3531324558295163 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.35313245582951625 2.25
		-5.7491853075117283e-016 -0.7062649116590326 -2.25
		2.25 -0.7062649116590326 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.7062649116590326 2.25
		-2.25 -0.7062649116590326 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.7062649116590326 -2.25
		2.25 -0.7062649116590326 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.7062649116590326 2.25
		-5.7491853075117283e-016 -1.0593973674885488 -2.25
		2.25 -1.0593973674885488 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.0593973674885488 2.25
		-2.25 -1.0593973674885488 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.0593973674885488 -2.25
		2.25 -1.0593973674885488 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.0593973674885488 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" 18.453507192123315 0 1.5902773407317584e-015 ;
	setAttr ".rp" -type "double3" -5.3290705182007514e-015 -1.0593973674885291 -1.2434497875801753e-014 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-015 -1.0593973674885291 -1.2434497875801753e-014 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 0 -1.0593973674885433 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" 0 -1.0593973674885433 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.0593973674885433 -7.1054273576010019e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 3.1805546814635168e-015 6.3611093629270335e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
		-5.7491853075117283e-016 -1.0285433296617763e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0285433296617763e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0285433296617763e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0285433296617763e-016 2.25
		-5.7491853075117283e-016 -0.46321473561991849 -2.25
		2.25 -0.46321473561991849 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.46321473561991844 2.25
		-2.25 -0.46321473561991849 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.46321473561991849 -2.25
		2.25 -0.46321473561991849 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.46321473561991844 2.25
		-5.7491853075117283e-016 -0.92642947123983699 -2.25
		2.25 -0.92642947123983699 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.92642947123983699 2.25
		-2.25 -0.92642947123983699 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.92642947123983699 -2.25
		2.25 -0.92642947123983699 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.92642947123983699 2.25
		-5.7491853075117283e-016 -1.3896442068597554 -2.25
		2.25 -1.3896442068597554 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3896442068597554 2.25
		-2.25 -1.3896442068597554 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3896442068597554 -2.25
		2.25 -1.3896442068597554 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3896442068597554 2.25
		
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
	setAttr ".rst" -type "double3" 20.208974708766569 46.597738946695316 5.8771209091768171 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-014 -2.1156977304050719 
		1.7545050493430204e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.7493050748049341e-014 -3.1805546814635168e-015 
		-6.3611093629270335e-015 ;
	setAttr ".tg[1].tot" -type "double3" -2.2549283684725197e-007 -2.1156977304050941 
		-4.2594153293616523e-015 ;
	setAttr ".tg[1].tor" -type "double3" 1.1131941385122309e-014 6.3611093629270335e-015 
		-1.9083328088781101e-014 ;
	setAttr ".lr" -type "double3" -37.506441682198265 -1.5361284697415187 27.652704566508859 ;
	setAttr ".rst" -type "double3" 20.370871458411248 -0.32972100714592756 26.176869075794464 ;
	setAttr ".rsrr" -type "double3" -37.799926454599664 -9.3871507088809452 30.728232185279694 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lkneeControl" -p "main";
	addAttr -ci true -sn "lKneeControl" -ln "lKneeControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.1612784965552017 21.454661446953992 -2.2087437392940861 ;
	setAttr ".sp" -type "double3" 7.1612784965552017 21.454661446953992 -2.2087437392940861 ;
	setAttr ".hdl" -type "double3" 7.1612784965552017 21.454661446953992 -2.2087437392940861 ;
	setAttr ".dh" yes;
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
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		6.1612784965552017 21.454661446953992 -2.2087437392940865
		7.1612784965552017 21.454661446953992 -3.2087437392940861
		7.1612784965552017 20.454661446953992 -2.2087437392940861
		7.1612784965552017 21.454661446953992 -1.2087437392940861
		7.1612784965552017 22.454661446953992 -2.2087437392940861
		7.1612784965552017 21.454661446953992 -3.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		8.1612784965552017 21.454661446953992 -2.2087437392940861
		
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
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".r" -type "double3" 0 12.089163556883973 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 9.5333370556802279 3.6971503677444391 -3.1120045785414745 ;
	setAttr ".rpt" -type "double3" -0.86318051881282276 0 -1.9275860338281705 ;
	setAttr ".sp" -type "double3" 9.5333370556802279 3.6971503677444391 -3.1120045785414745 ;
	setAttr ".hdl" -type "double3" 9.5333370556802279 3.6971503677444391 -3.1120045785414745 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		7.8455120040447213 3.6971503677444391 -3.1120045785414749
		8.6894245298624746 0.8149976459738042 -5.432400484761029
		8.6894245298624746 0.8149976459738042 1.1559608393685816
		8.6894245298624746 6.5793030895150739 1.1559608393685816
		8.6894245298624746 6.5793030895150739 -5.432400484761029
		8.6894245298624746 0.8149976459738042 -5.432400484761029
		10.377249581497981 0.81499764597380375 -5.432400484761029
		10.377249581497981 0.8149976459738042 1.1559608393685825
		10.377249581497981 6.5793030895150739 1.1559608393685816
		10.377249581497981 6.5793030895150739 -5.432400484761029
		10.377249581497981 0.8149976459738042 -5.4324004847610299
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		11.221162107315735 3.6971503677444386 -3.1120045785414745
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 8.6701565368674043 3.6971503677444355 -5.0395906123696497 ;
	setAttr ".sp" -type "double3" 8.6701565368674043 3.6971503677444355 -5.0395906123696497 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 8.6701565368674043 3.6971503677444355 -5.0395906123696497 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 67.290848178065403 -7.3790028432976529 -17.06068906704958 ;
	setAttr ".rp" -type "double3" -5.2146838736000234e-008 -7.4108713566312066 -0.77004312258524066 ;
	setAttr ".sp" -type "double3" -5.2146838736000234e-008 -7.4108713566312066 -0.77004312258524066 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" -5.2146838736000234e-008 -7.4108713566312066 -0.77004312258524066 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".r" -type "double3" -8.8278125961003172e-032 0 7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" -1.562133556764427 -0.035195030272006413 -0.32667805984821485 ;
	setAttr ".sp" -type "double3" -1.562133556764427 -0.035195030272006413 -0.32667805984821485 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -1.562133556764427 -0.035195030272006413 -0.32667805984821485 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".r" -type "double3" -8.8278125961003172e-032 0 7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" 3.2687087681890978 0.036825998686253726 -0.84214040058538187 ;
	setAttr ".sp" -type "double3" 3.2687087681890978 0.036825998686253726 -0.84214040058538187 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 3.2687087681890978 0.036825998686253726 -0.84214040058538187 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" 1.2358937634540444e-030 0 -2.8249000307521015e-030 ;
	setAttr ".rp" -type "double3" -4.5824248213430492 -0.0016309684142466019 -7.4040872768870827 ;
	setAttr ".sp" -type "double3" -4.5824248213430492 -0.0016309684142466019 -7.4040872768870827 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -4.5824248213430492 -0.0016309684142466019 -7.4040872768870827 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" 1.2358937634540444e-030 0 -2.8249000307521015e-030 ;
	setAttr ".rp" -type "double3" 4.2852926617054177 -4.1610212065746548e-016 12.774454519085662 ;
	setAttr ".sp" -type "double3" 4.2852926617054177 -4.1610212065746548e-016 12.774454519085662 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 4.2852926617054177 -4.1610212065746548e-016 12.774454519085662 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -90.000000000000014 18.544438670575214 0 ;
	setAttr ".rp" -type "double3" -1.4094430797803739 0.84172745861739062 -4.2015490291761814 ;
	setAttr ".sp" -type "double3" -1.4094430797803739 0.84172745861739062 -4.2015490291761814 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -1.4094430797803739 0.84172745861739062 -4.2015490291761814 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 23.817444586876615 -2.8249000307521015e-030 0 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 6.4687755165553522 2.855422909127046 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 6.4687755165553522 2.855422909127046 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 6.4687755165553522 2.855422909127046 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.1444203143978307 -3.0192600712521891 1.0726809422325585 ;
	setAttr ".r" -type "double3" 66.653670814816195 -4.8515454094756398 -11.086252099919541 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 8.2724191241112521 0.23792126971163036 -5.0395906123738614 ;
	setAttr ".rpt" -type "double3" 0.87200116671196692 2.7813388004723194 3.9669096676177098 ;
	setAttr ".sp" -type "double3" 8.2724191241023703 0.23792126971265004 -5.0395906123717591 ;
	setAttr ".spt" -type "double3" -1.7763568394002503e-015 -5.5511151231257815e-017 
		2.6645352591003745e-015 ;
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
	setAttr ".rst" -type "double3" 2.5699443031718028 -7.3555221610257018 -20.894012108249399 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.7914515193970555 1.2512414676887122 -6.3766929810672828 ;
	setAttr ".r" -type "double3" -2.8197737287702434e-014 6.4552756245823684 -8.0222785487248538e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".rp" -type "double3" 7.0906598474058304 -0.40951398858019716 2.9912948950645237 ;
	setAttr ".rpt" -type "double3" 0.29134876939087889 0 -0.81615099122931301 ;
	setAttr ".sp" -type "double3" 7.0906598498299998 -0.40951399011760792 2.9912948981072076 ;
	setAttr ".spt" -type "double3" 0 1.1102230246251563e-016 0 ;
	setAttr ".pv" -type "double3" 0.25686437339608165 1.8296735227340757 0.76571240938468954 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -90.000000000000014 18.544438670575218 -2.9796094956115853e-030 ;
	setAttr ".rp" -type "double3" 2.8758495819250465 0.84172745861739018 8.5729054899094788 ;
	setAttr ".sp" -type "double3" 2.8758495819250465 0.84172745861739018 8.5729054899094788 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 2.8758495819250465 0.84172745861739018 8.5729054899094788 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 90.000000000000014 1.4124500153760504e-030 -18.544438670575222 ;
	setAttr ".rp" -type "double3" -5.2146839291111746e-008 -4.4316525179341513 -0.84172745861739195 ;
	setAttr ".sp" -type "double3" -5.2146839291111746e-008 -4.4316525179341513 -0.84172745861739195 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -5.2146839291111746e-008 -4.4316525179341513 -0.84172745861739195 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.8253166011030961 0.47392728858520849 -4.2673090993136222 ;
	setAttr ".r" -type "double3" -2.8550948193360633e-014 6.4552756245823737 -1.2143194463527895e-014 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999889 0.99999999999999911 ;
	setAttr ".rp" -type "double3" 5.3086205781714773 0.36780020736597652 4.8951801224748301 ;
	setAttr ".rpt" -type "double3" 0.51669630934140853 0 -0.62787136466089088 ;
	setAttr ".sp" -type "double3" 5.3086205781714826 0.36780020736597618 4.8951801224748328 ;
	setAttr ".spt" -type "double3" -3.552713678800499e-015 -3.8857805861880435e-016 
		-4.4408920985006222e-015 ;
	setAttr ".pv" -type "double3" -1.8961545139801088 -1.006266154936933e-008 0.63608023009118719 ;
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
	setAttr ".lr" -type "double3" 90.000000000000014 0 0 ;
	setAttr ".o" -type "double3" -90.000000000000014 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "lToeControlZeroGroup" -p "lReverseHeelLift";
	setAttr ".t" -type "double3" 2.8758495819250451 0.84172745861739118 8.5729054899094841 ;
	setAttr ".r" -type "double3" -2.9553457573746665e-014 18.544438670575218 -1.4329767112662835e-014 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-1.6878250516355064 -2.1923010824175641e-016 -3.653835137362607e-016
		-0.843912525817753 -1.0292074034976897 -0.18966501208066194
		-0.84391252581775333 -1.0292074034976895 3.2494036751315232
		-0.84391252581775344 1.0292074034976897 3.2494036751315232
		-0.84391252581775311 1.0292074034976897 -0.18966501208066194
		-0.843912525817753 -1.0292074034976895 -0.18966501208066217
		0.84391252581775333 -1.0292074034976899 -0.18966501208066217
		0.843912525817753 -1.0292074034976897 3.2494036751315236
		0.84391252581775289 1.0292074034976899 3.2494036751315232
		0.84391252581775322 1.0292074034976899 -0.18966501208066217
		0.84391252581775333 -1.0292074034976897 -0.18966501208066239
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		1.6878250516355064 -2.5817847039655571e-016 -1.1202506490205143e-016
		
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -3.450991666554651e-015 
		-5.6805075055714352e-015 ;
	setAttr ".tg[0].tor" -type "double3" -66.182555413123438 -5.108911213033076e-007 
		-7.9513867036587919e-016 ;
	setAttr ".lr" -type "double3" -66.182555413123453 12.089163556883975 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 -8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -66.182555413123453 12.089163556883975 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.17448088528537584 8.0560301530891483 -2.4773978497980131 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 175.51224261963702 9.3871507088809647 -30.728232185279744 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 12.527154000000003 8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -33.312169074236678 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 13.013495000000013 -2.3092638912203256e-014 ;
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
	setAttr ".rst" -type "double3" -9.8292559666333705 66.918527380847152 -2.9591953491331449 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -14.087868840751341 4.9245969244794239 7.7199433911757289 ;
	setAttr ".sp" -type "double3" -14.08786884075375 4.9245969244791112 7.7199433911766429 ;
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
	setAttr ".rst" -type "double3" -6.1211183276759158 41.673167696515208 -1.8428236652868444 ;
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
	setAttr ".rst" -type "double3" -6.2439027884133385 -10.817025102491975 0.96707457862301638 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888854 ;
	setAttr ".sp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888854 ;
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
	setAttr ".tg[0].tot" -type "double3" -20.208987168427257 -0.10108341053751246 6.7043129748786967 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 0 0 1.7763568394002505e-015 ;
	setAttr ".rp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
	setAttr ".sp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
createNode transform -n "rikHandControlZeroGroup" -p "rikHandControlWeaponGroup";
	setAttr ".t" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
	setAttr ".rp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
	setAttr ".sp" -type "double3" -20.208987168427257 46.597764620994631 5.8771197258888837 ;
createNode transform -n "rikHandControl" -p "rikHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
	setAttr -k on ".lock";
	setAttr -k on ".aim";
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
	setAttr ".lr" -type "double3" 142.49355823023745 1.5361292152083084 -27.65270569147151 ;
	setAttr ".rsrr" -type "double3" 142.20007352537368 9.3871522523242152 -30.728232308063745 ;
	setAttr -k on ".w0";
createNode transform -n "rElbowControl" -p "main";
	addAttr -ci true -sn "rElbowControl" -ln "rElbowControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -16.073158755046709 56.101502278355177 -1.9921207705101285 ;
	setAttr ".sp" -type "double3" -16.073158755046709 56.101502278355177 -1.9921207705101285 ;
	setAttr ".hdl" -type "double3" -16.073158755046709 56.101502278355177 -1.9921207705101285 ;
	setAttr ".dh" yes;
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
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-17.073158755046709 56.101502278355177 -1.9921207705101287
		-16.073158755046709 56.101502278355177 -2.9921207705101285
		-16.073158755046709 55.101502278355177 -1.9921207705101285
		-16.073158755046709 56.101502278355177 -0.99212077051012848
		-16.073158755046709 57.101502278355177 -1.9921207705101283
		-16.073158755046709 56.101502278355177 -2.9921207705101285
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		-15.073158755046709 56.101502278355177 -1.9921207705101283
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -20.208987296429338 48.71344709822359 5.8771197505062682 ;
	setAttr ".rpt" -type "double3" -14.903352369797062 -76.810337767329017 22.294354655217429 ;
	setAttr ".sp" -type "double3" -20.208987296429338 48.713447098223575 5.8771197505062673 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 8.8817841970012543e-016 ;
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
	setAttr ".r" -type "double3" 0 0 -3.1805546814635168e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 1.0230580895483268 4.0049913037864613 -0.95571795107371726 ;
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
		-1.1498370615023457e-015 3.1318390860554214e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -3.1318390860554214e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 3.1318390860554214e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -3.1318390860554214e-016 4.5
		-1.1498370615023457e-015 1.4104549340943551 -4.5
		4.5 1.4104549340943551 -3.3676674730115375e-016
		6.0860333699758185e-016 1.4104549340943549 4.5
		-4.5 1.4104549340943551 7.1390647300023646e-016
		-1.1498370615023457e-015 1.4104549340943551 -4.5
		4.5 1.4104549340943551 -3.3676674730115375e-016
		6.0860333699758185e-016 1.4104549340943549 4.5
		-1.1498370615023457e-015 2.8209098681887101 -4.5
		4.5 2.8209098681887101 -2.1430611191891602e-016
		6.0860333699758185e-016 2.8209098681887101 4.5
		-4.5 2.8209098681887101 8.3636710838247419e-016
		-1.1498370615023457e-015 2.8209098681887101 -4.5
		4.5 2.8209098681887101 -2.1430611191891602e-016
		6.0860333699758185e-016 2.8209098681887101 4.5
		-1.1498370615023457e-015 4.231364802283065 -4.5
		4.5 4.231364802283065 -9.1845476536678294e-017
		6.0860333699758185e-016 4.231364802283065 4.5
		-4.5 4.231364802283065 9.5882774376471192e-016
		-1.1498370615023457e-015 4.231364802283065 -4.5
		4.5 4.231364802283065 -9.1845476536678294e-017
		6.0860333699758185e-016 4.231364802283065 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -29.434324833552321 28.868600440827738 -26.613112067211112 ;
	setAttr ".rp" -type "double3" 0.24749839881904512 1.3427813495108722 -1.6847126876674743 ;
	setAttr ".sp" -type "double3" 0.24749839881904512 1.3427813495108722 -1.6847126876674743 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.24749839881903923 1.3427813495108678 -1.6847126876674752 ;
	setAttr ".sp" -type "double3" 0.24749839881903923 1.3427813495108678 -1.6847126876674752 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.24749839881903923 1.3427813495108678 -1.6847126876674752 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 4.4726550208080719e-016 0 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999944 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 1.4963501301150425e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4963501301150425e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4963501301150425e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4963501301150425e-016 2.25
		-5.7491853075117283e-016 0.67389618884018987 -2.25
		2.25 0.67389618884018987 -1.6838337365057687e-016
		3.0430166849879092e-016 0.67389618884018976 2.25
		-2.25 0.67389618884018987 3.5695323650011823e-016
		-5.7491853075117283e-016 0.67389618884018987 -2.25
		2.25 0.67389618884018987 -1.6838337365057687e-016
		3.0430166849879092e-016 0.67389618884018976 2.25
		-5.7491853075117283e-016 1.3477923776803797 -2.25
		2.25 1.3477923776803797 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3477923776803797 2.25
		-2.25 1.3477923776803797 4.1818355419123709e-016
		-5.7491853075117283e-016 1.3477923776803797 -2.25
		2.25 1.3477923776803797 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3477923776803797 2.25
		-5.7491853075117283e-016 2.0216885665205697 -2.25
		2.25 2.0216885665205697 -4.5922738268339147e-017
		3.0430166849879092e-016 2.0216885665205697 2.25
		-2.25 2.0216885665205697 4.7941387188235596e-016
		-5.7491853075117283e-016 2.0216885665205697 -2.25
		2.25 2.0216885665205697 -4.5922738268339147e-017
		3.0430166849879092e-016 2.0216885665205697 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 10.703360410658473 0 0 ;
	setAttr ".rp" -type "double3" 2.0814292837345594e-006 2.0216885664921405 1.0516409934879789e-005 ;
	setAttr ".sp" -type "double3" 2.0814292837345594e-006 2.0216885664921405 1.0516409934879789e-005 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.0814292874121731e-006 2.0216885664921418 1.0516409929550719e-005 ;
	setAttr ".sp" -type "double3" 2.0814292874121731e-006 2.0216885664921418 1.0516409929550719e-005 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.0814292874121731e-006 2.0216885664921418 1.0516409929550719e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -5.963540027744092e-016 7.951386703658788e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
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
		-5.7491853075117283e-016 8.4090676601100705e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -8.4090676601100705e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 8.4090676601100705e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -8.4090676601100705e-017 2.25
		-5.7491853075117283e-016 0.37871073980605002 -2.25
		2.25 0.37871073980605002 -1.6838337365057687e-016
		3.0430166849879092e-016 0.37871073980604997 2.25
		-2.25 0.37871073980605002 3.5695323650011823e-016
		-5.7491853075117283e-016 0.37871073980605002 -2.25
		2.25 0.37871073980605002 -1.6838337365057687e-016
		3.0430166849879092e-016 0.37871073980604997 2.25
		-5.7491853075117283e-016 0.75742147961210005 -2.25
		2.25 0.75742147961210005 -1.0715305595945801e-016
		3.0430166849879092e-016 0.75742147961210005 2.25
		-2.25 0.75742147961210005 4.1818355419123709e-016
		-5.7491853075117283e-016 0.75742147961210005 -2.25
		2.25 0.75742147961210005 -1.0715305595945801e-016
		3.0430166849879092e-016 0.75742147961210005 2.25
		-5.7491853075117283e-016 1.13613221941815 -2.25
		2.25 1.13613221941815 -4.5922738268339147e-017
		3.0430166849879092e-016 1.13613221941815 2.25
		-2.25 1.13613221941815 4.7941387188235596e-016
		-5.7491853075117283e-016 1.13613221941815 -2.25
		2.25 1.13613221941815 -4.5922738268339147e-017
		3.0430166849879092e-016 1.13613221941815 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -12.038514910468763 0 0 ;
	setAttr ".rp" -type "double3" -3.9650617279854417e-005 1.1361322186132892 1.6022840217289058e-005 ;
	setAttr ".sp" -type "double3" -3.9650617279854417e-005 1.1361322186132892 1.6022840217289058e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.9650617279993194e-005 1.1361322186132892 1.6022840213292255e-005 ;
	setAttr ".sp" -type "double3" -3.9650617279993194e-005 1.1361322186132892 1.6022840213292255e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.9650617279993194e-005 1.1361322186132892 1.6022840213292255e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -4.0253895187272666e-015 0 -1.1927080055488182e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 0.99999999999999956 ;
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
		-5.7491853075117283e-016 1.3666323611337427e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3666323611337427e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3666323611337427e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3666323611337427e-016 2.25
		-5.7491853075117283e-016 0.61547649923543846 -2.25
		2.25 0.61547649923543846 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61547649923543835 2.25
		-2.25 0.61547649923543846 3.5695323650011823e-016
		-5.7491853075117283e-016 0.61547649923543846 -2.25
		2.25 0.61547649923543846 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61547649923543835 2.25
		-5.7491853075117283e-016 1.2309529984708769 -2.25
		2.25 1.2309529984708769 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2309529984708769 2.25
		-2.25 1.2309529984708769 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2309529984708769 -2.25
		2.25 1.2309529984708769 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2309529984708769 2.25
		-5.7491853075117283e-016 1.8464294977063154 -2.25
		2.25 1.8464294977063154 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8464294977063154 2.25
		-2.25 1.8464294977063154 4.7941387188235596e-016
		-5.7491853075117283e-016 1.8464294977063154 -2.25
		2.25 1.8464294977063154 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8464294977063154 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 177.5098428182873 59.198052489194986 155.36824194606257 ;
	setAttr ".rp" -type "double3" -0.19768865559352533 4.5883859039748591 -1.3288708370847822 ;
	setAttr ".sp" -type "double3" -0.19768865559352533 4.5883859039748591 -1.3288708370847822 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" -0.19768865559352555 4.5883859039748733 -1.3288708370847857 ;
	setAttr ".sp" -type "double3" -0.19768865559352555 4.5883859039748733 -1.3288708370847857 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" -0.19770192947744403 7.4041814814250042 -0.53469313215253367 ;
	setAttr ".sp" -type "double3" -0.19770192947744403 7.4041814814250042 -0.53469313215253367 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.197688655593522 4.5883859039748804 -1.3288708370847893 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.9756933518293979e-016 7.9513867036587959e-016 8.6968292071268074e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 0.99999999999999989 ;
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
		-5.7491853075117283e-016 1.2986711013642561e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2986711013642561e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2986711013642561e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2986711013642561e-016 2.25
		-5.7491853075117283e-016 0.58486946881808954 -2.25
		2.25 0.58486946881808954 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58486946881808943 2.25
		-2.25 0.58486946881808954 3.5695323650011823e-016
		-5.7491853075117283e-016 0.58486946881808954 -2.25
		2.25 0.58486946881808954 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58486946881808943 2.25
		-5.7491853075117283e-016 1.1697389376361791 -2.25
		2.25 1.1697389376361791 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1697389376361791 2.25
		-2.25 1.1697389376361791 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1697389376361791 -2.25
		2.25 1.1697389376361791 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1697389376361791 2.25
		-5.7491853075117283e-016 1.7546084064542686 -2.25
		2.25 1.7546084064542686 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7546084064542686 2.25
		-2.25 1.7546084064542686 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7546084064542686 -2.25
		2.25 1.7546084064542686 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7546084064542686 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 37.981132993109291 0 8.1998675381481314e-016 ;
	setAttr ".rp" -type "double3" 6.0847915239747863e-006 1.7546084048713486 7.428181847757287e-005 ;
	setAttr ".sp" -type "double3" 6.0847915239747863e-006 1.7546084048713486 7.428181847757287e-005 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 6.0847915239747863e-006 1.7546084048713535 7.4281818474020156e-005 ;
	setAttr ".sp" -type "double3" 6.0847915239747863e-006 1.7546084048713535 7.4281818474020156e-005 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 6.0847915239747863e-006 1.7546084048713535 7.4281818474020156e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 1.5902773407317588e-015 -2.3854160110976384e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
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
		-5.7491853075117283e-016 9.0811807842882803e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -9.0811807842882803e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 9.0811807842882803e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -9.0811807842882803e-017 2.25
		-5.7491853075117283e-016 0.40898002396204808 -2.25
		2.25 0.40898002396204808 -1.6838337365057687e-016
		3.0430166849879092e-016 0.40898002396204802 2.25
		-2.25 0.40898002396204808 3.5695323650011823e-016
		-5.7491853075117283e-016 0.40898002396204808 -2.25
		2.25 0.40898002396204808 -1.6838337365057687e-016
		3.0430166849879092e-016 0.40898002396204802 2.25
		-5.7491853075117283e-016 0.81796004792409616 -2.25
		2.25 0.81796004792409616 -1.0715305595945801e-016
		3.0430166849879092e-016 0.81796004792409616 2.25
		-2.25 0.81796004792409616 4.1818355419123709e-016
		-5.7491853075117283e-016 0.81796004792409616 -2.25
		2.25 0.81796004792409616 -1.0715305595945801e-016
		3.0430166849879092e-016 0.81796004792409616 2.25
		-5.7491853075117283e-016 1.2269400718861443 -2.25
		2.25 1.2269400718861443 -4.5922738268339147e-017
		3.0430166849879092e-016 1.2269400718861443 2.25
		-2.25 1.2269400718861443 4.7941387188235596e-016
		-5.7491853075117283e-016 1.2269400718861443 -2.25
		2.25 1.2269400718861443 -4.5922738268339147e-017
		3.0430166849879092e-016 1.2269400718861443 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" 5.3089924386768281 7.9513867036587899e-016 2.7829853462805764e-015 ;
	setAttr ".rp" -type "double3" -3.8717350893335833e-005 1.2269400708689648 3.1575466113764605e-005 ;
	setAttr ".sp" -type "double3" -3.8717350893335833e-005 1.2269400708689648 3.1575466113764605e-005 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.8717350891559477e-005 1.2269400708689648 3.1575466113764605e-005 ;
	setAttr ".sp" -type "double3" -3.8717350891559477e-005 1.2269400708689648 3.1575466113764605e-005 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.8717350891559477e-005 1.2269400708689648 3.1575466113764605e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.180554681463516e-015 7.9513867036587899e-016 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
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
		-5.7491853075117283e-016 1.2836480827856713e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2836480827856713e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2836480827856713e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2836480827856713e-016 2.25
		-5.7491853075117283e-016 0.57810370273084011 -2.25
		2.25 0.57810370273084011 -1.6838337365057687e-016
		3.0430166849879092e-016 0.57810370273084 2.25
		-2.25 0.57810370273084011 3.5695323650011823e-016
		-5.7491853075117283e-016 0.57810370273084011 -2.25
		2.25 0.57810370273084011 -1.6838337365057687e-016
		3.0430166849879092e-016 0.57810370273084 2.25
		-5.7491853075117283e-016 1.1562074054616802 -2.25
		2.25 1.1562074054616802 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1562074054616802 2.25
		-2.25 1.1562074054616802 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1562074054616802 -2.25
		2.25 1.1562074054616802 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1562074054616802 2.25
		-5.7491853075117283e-016 1.7343111081925202 -2.25
		2.25 1.7343111081925202 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7343111081925202 2.25
		-2.25 1.7343111081925202 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7343111081925202 -2.25
		2.25 1.7343111081925202 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7343111081925202 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 179.82865331956611 51.982906158062775 154.61220448028445 ;
	setAttr ".rp" -type "double3" 0.37700330450688302 4.2073119325362445 -0.24666353749382353 ;
	setAttr ".sp" -type "double3" 0.37700330450688302 4.2073119325362445 -0.24666353749382353 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.37700330450688924 4.2073119325362365 -0.24666353749381997 ;
	setAttr ".sp" -type "double3" 0.37700330450688924 4.2073119325362365 -0.24666353749381997 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.37703754362408404 7.3722791777767469 0.58104261166346904 ;
	setAttr ".sp" -type "double3" 0.37703754362408404 7.3722791777767469 0.58104261166346904 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.37700330450689812 4.2073119325362294 -0.24666353749381642 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -7.9513867036587939e-016 0 -9.9392333795734899e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
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
		-5.7491853075117283e-016 1.7558812902777193e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7558812902777193e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.7558812902777193e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.7558812902777193e-016 2.25
		-5.7491853075117283e-016 0.79077863246015623 -2.25
		2.25 0.79077863246015623 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79077863246015612 2.25
		-2.25 0.79077863246015623 3.5695323650011823e-016
		-5.7491853075117283e-016 0.79077863246015623 -2.25
		2.25 0.79077863246015623 -1.6838337365057687e-016
		3.0430166849879092e-016 0.79077863246015612 2.25
		-5.7491853075117283e-016 1.5815572649203125 -2.25
		2.25 1.5815572649203125 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5815572649203125 2.25
		-2.25 1.5815572649203125 4.1818355419123709e-016
		-5.7491853075117283e-016 1.5815572649203125 -2.25
		2.25 1.5815572649203125 -1.0715305595945801e-016
		3.0430166849879092e-016 1.5815572649203125 2.25
		-5.7491853075117283e-016 2.3723358973804687 -2.25
		2.25 2.3723358973804687 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3723358973804687 2.25
		-2.25 2.3723358973804687 4.7941387188235596e-016
		-5.7491853075117283e-016 2.3723358973804687 -2.25
		2.25 2.3723358973804687 -4.5922738268339147e-017
		3.0430166849879092e-016 2.3723358973804687 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 41.372183196549692 -1.5902773407317584e-015 1.7890620083232284e-015 ;
	setAttr ".rp" -type "double3" 6.8478234368285484e-005 2.3723358963647936 -1.1392299658297134e-005 ;
	setAttr ".sp" -type "double3" 6.8478234368285484e-005 2.3723358963647936 -1.1392299658297134e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 6.8478234371838198e-005 2.3723358963647936 -1.1392299663626204e-005 ;
	setAttr ".sp" -type "double3" 6.8478234371838198e-005 2.3723358963647936 -1.1392299663626204e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 6.8478234371838198e-005 2.3723358963647936 -1.1392299663626204e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 3.1805546814635168e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
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
		-5.7491853075117283e-016 1.1694828757071388e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.1694828757071388e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.1694828757071388e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.1694828757071388e-016 2.25
		-5.7491853075117283e-016 0.52668826432508464 -2.25
		2.25 0.52668826432508464 -1.6838337365057687e-016
		3.0430166849879092e-016 0.52668826432508453 2.25
		-2.25 0.52668826432508464 3.5695323650011823e-016
		-5.7491853075117283e-016 0.52668826432508464 -2.25
		2.25 0.52668826432508464 -1.6838337365057687e-016
		3.0430166849879092e-016 0.52668826432508453 2.25
		-5.7491853075117283e-016 1.0533765286501693 -2.25
		2.25 1.0533765286501693 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0533765286501693 2.25
		-2.25 1.0533765286501693 4.1818355419123709e-016
		-5.7491853075117283e-016 1.0533765286501693 -2.25
		2.25 1.0533765286501693 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0533765286501693 2.25
		-5.7491853075117283e-016 1.580064792975254 -2.25
		2.25 1.580064792975254 -4.5922738268339147e-017
		3.0430166849879092e-016 1.580064792975254 2.25
		-2.25 1.580064792975254 4.7941387188235596e-016
		-5.7491853075117283e-016 1.580064792975254 -2.25
		2.25 1.580064792975254 -4.5922738268339147e-017
		3.0430166849879092e-016 1.580064792975254 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 1.9626660162426832 -3.1805546814635152e-015 -4.7708320221952728e-015 ;
	setAttr ".rp" -type "double3" -6.6039473987089536e-005 1.5800647913811332 2.6008281665212962e-005 ;
	setAttr ".sp" -type "double3" -6.6039473987089536e-005 1.5800647913811332 2.6008281665212962e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -6.603947398531318e-005 1.580064791381119 2.600828167231839e-005 ;
	setAttr ".sp" -type "double3" -6.603947398531318e-005 1.580064791381119 2.600828167231839e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.603947398531318e-005 1.580064791381119 2.600828167231839e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -6.3611093629270304e-015 -1.5902773407317576e-015 -4.7708320221952728e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
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
		-5.7491853075117283e-016 1.210805620169434e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.210805620169434e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.210805620169434e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.210805620169434e-016 2.25
		-5.7491853075117283e-016 0.54529837398131653 -2.25
		2.25 0.54529837398131653 -1.6838337365057687e-016
		3.0430166849879092e-016 0.54529837398131642 2.25
		-2.25 0.54529837398131653 3.5695323650011823e-016
		-5.7491853075117283e-016 0.54529837398131653 -2.25
		2.25 0.54529837398131653 -1.6838337365057687e-016
		3.0430166849879092e-016 0.54529837398131642 2.25
		-5.7491853075117283e-016 1.0905967479626331 -2.25
		2.25 1.0905967479626331 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0905967479626331 2.25
		-2.25 1.0905967479626331 4.1818355419123709e-016
		-5.7491853075117283e-016 1.0905967479626331 -2.25
		2.25 1.0905967479626331 -1.0715305595945801e-016
		3.0430166849879092e-016 1.0905967479626331 2.25
		-5.7491853075117283e-016 1.6358951219439497 -2.25
		2.25 1.6358951219439497 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6358951219439497 2.25
		-2.25 1.6358951219439497 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6358951219439497 -2.25
		2.25 1.6358951219439497 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6358951219439497 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -176.19892438932288 46.689051655795517 155.1435484896781 ;
	setAttr ".rp" -type "double3" 1.1710172487595076 3.8571156106059163 0.74070443466187008 ;
	setAttr ".sp" -type "double3" 1.1710172487595076 3.8571156106059163 0.74070443466187008 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.1710172487595063 3.8571156106059146 0.74070443466187186 ;
	setAttr ".sp" -type "double3" 1.1710172487595063 3.8571156106059146 0.74070443466187186 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 1.1710118713393278 6.8453584527659093 1.6233920476325849 ;
	setAttr ".sp" -type "double3" 1.1710118713393278 6.8453584527659093 1.6233920476325849 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.1710172487595072 3.8571156106059079 0.74070443466187896 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 7.9513867036587919e-016 3.1805546814635176e-015 -2.3854160110976384e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
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
		-5.7491853075117283e-016 1.2513477017993582e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2513477017993582e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2513477017993582e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2513477017993582e-016 2.25
		-5.7491853075117283e-016 0.56355690435345163 -2.25
		2.25 0.56355690435345163 -1.6838337365057687e-016
		3.0430166849879092e-016 0.56355690435345152 2.25
		-2.25 0.56355690435345163 3.5695323650011823e-016
		-5.7491853075117283e-016 0.56355690435345163 -2.25
		2.25 0.56355690435345163 -1.6838337365057687e-016
		3.0430166849879092e-016 0.56355690435345152 2.25
		-5.7491853075117283e-016 1.1271138087069033 -2.25
		2.25 1.1271138087069033 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1271138087069033 2.25
		-2.25 1.1271138087069033 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1271138087069033 -2.25
		2.25 1.1271138087069033 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1271138087069033 2.25
		-5.7491853075117283e-016 1.6906707130603549 -2.25
		2.25 1.6906707130603549 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6906707130603549 2.25
		-2.25 1.6906707130603549 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6906707130603549 -2.25
		2.25 1.6906707130603549 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6906707130603549 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 28.163696160124719 0 -1.9878466759146976e-015 ;
	setAttr ".rp" -type "double3" 1.02943902939856e-005 1.6906707126992844 3.3390134955624262e-005 ;
	setAttr ".sp" -type "double3" 1.02943902939856e-005 1.6906707126992844 3.3390134955624262e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.0294390295761957e-005 1.6906707126992853 3.3390134957400619e-005 ;
	setAttr ".sp" -type "double3" 1.0294390295761957e-005 1.6906707126992853 3.3390134957400619e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.0294390295761957e-005 1.6906707126992853 3.3390134957400619e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.590277340731758e-015 1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
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
		-5.7491853075117283e-016 1.0535323803664426e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0535323803664426e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0535323803664426e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0535323803664426e-016 2.25
		-5.7491853075117283e-016 0.47446880356410626 -2.25
		2.25 0.47446880356410626 -1.6838337365057687e-016
		3.0430166849879092e-016 0.4744688035641062 2.25
		-2.25 0.47446880356410626 3.5695323650011823e-016
		-5.7491853075117283e-016 0.47446880356410626 -2.25
		2.25 0.47446880356410626 -1.6838337365057687e-016
		3.0430166849879092e-016 0.4744688035641062 2.25
		-5.7491853075117283e-016 0.94893760712821251 -2.25
		2.25 0.94893760712821251 -1.0715305595945801e-016
		3.0430166849879092e-016 0.94893760712821251 2.25
		-2.25 0.94893760712821251 4.1818355419123709e-016
		-5.7491853075117283e-016 0.94893760712821251 -2.25
		2.25 0.94893760712821251 -1.0715305595945801e-016
		3.0430166849879092e-016 0.94893760712821251 2.25
		-5.7491853075117283e-016 1.4234064106923188 -2.25
		2.25 1.4234064106923188 -4.5922738268339147e-017
		3.0430166849879092e-016 1.4234064106923188 2.25
		-2.25 1.4234064106923188 4.7941387188235596e-016
		-5.7491853075117283e-016 1.4234064106923188 -2.25
		2.25 1.4234064106923188 -4.5922738268339147e-017
		3.0430166849879092e-016 1.4234064106923188 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 13.419380546313405 3.1805546814635168e-015 -1.5902773407317584e-015 ;
	setAttr ".rp" -type "double3" -3.1343620947588136e-005 1.4234064101499282 -2.3699300893298414e-005 ;
	setAttr ".sp" -type "double3" -3.1343620947588136e-005 1.4234064101499282 -2.3699300893298414e-005 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.1343620950252671e-005 1.4234064101499246 -2.3699300891522057e-005 ;
	setAttr ".sp" -type "double3" -3.1343620950252671e-005 1.4234064101499246 -2.3699300891522057e-005 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.1343620950252671e-005 1.4234064101499246 -2.3699300891522057e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635183e-015 1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
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
		-5.7491853075117283e-016 1.3020978444616986e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3020978444616986e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3020978444616986e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3020978444616986e-016 2.25
		-5.7491853075117283e-016 0.58641273671176319 -2.25
		2.25 0.58641273671176319 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58641273671176308 2.25
		-2.25 0.58641273671176319 3.5695323650011823e-016
		-5.7491853075117283e-016 0.58641273671176319 -2.25
		2.25 0.58641273671176319 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58641273671176308 2.25
		-5.7491853075117283e-016 1.1728254734235264 -2.25
		2.25 1.1728254734235264 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1728254734235264 2.25
		-2.25 1.1728254734235264 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1728254734235264 -2.25
		2.25 1.1728254734235264 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1728254734235264 2.25
		-5.7491853075117283e-016 1.7592382101352895 -2.25
		2.25 1.7592382101352895 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7592382101352895 2.25
		-2.25 1.7592382101352895 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7592382101352895 -2.25
		2.25 1.7592382101352895 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7592382101352895 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -176.87589629592046 43.789667966965958 151.35001943964056 ;
	setAttr ".rp" -type "double3" 1.9660911224990214 3.3981591151080233 1.5474740923319725 ;
	setAttr ".sp" -type "double3" 1.9660911224990214 3.3981591151080233 1.5474740923319725 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.966091122499015 3.3981591151080304 1.5474740923319708 ;
	setAttr ".sp" -type "double3" 1.966091122499015 3.3981591151080304 1.5474740923319708 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 1.9660698104692134 5.9883829905728412 2.2320378717694149 ;
	setAttr ".sp" -type "double3" 1.9660698104692134 5.9883829905728412 2.2320378717694149 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 1.9660911224990123 3.3981591151080237 1.5474740923319672 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.590277340731758e-015 0 7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
		-5.7491853075117283e-016 1.0641818256042153e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0641818256042153e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0641818256042153e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0641818256042153e-016 2.25
		-5.7491853075117283e-016 0.4792648873245598 -2.25
		2.25 0.4792648873245598 -1.6838337365057687e-016
		3.0430166849879092e-016 0.47926488732455974 2.25
		-2.25 0.4792648873245598 3.5695323650011823e-016
		-5.7491853075117283e-016 0.4792648873245598 -2.25
		2.25 0.4792648873245598 -1.6838337365057687e-016
		3.0430166849879092e-016 0.47926488732455974 2.25
		-5.7491853075117283e-016 0.95852977464911959 -2.25
		2.25 0.95852977464911959 -1.0715305595945801e-016
		3.0430166849879092e-016 0.95852977464911959 2.25
		-2.25 0.95852977464911959 4.1818355419123709e-016
		-5.7491853075117283e-016 0.95852977464911959 -2.25
		2.25 0.95852977464911959 -1.0715305595945801e-016
		3.0430166849879092e-016 0.95852977464911959 2.25
		-5.7491853075117283e-016 1.4377946619736794 -2.25
		2.25 1.4377946619736794 -4.5922738268339147e-017
		3.0430166849879092e-016 1.4377946619736794 2.25
		-2.25 1.4377946619736794 4.7941387188235596e-016
		-5.7491853075117283e-016 1.4377946619736794 -2.25
		2.25 1.4377946619736794 -4.5922738268339147e-017
		3.0430166849879092e-016 1.4377946619736794 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 24.348262730400947 3.1805546814635176e-015 -2.3854160110976384e-015 ;
	setAttr ".rp" -type "double3" -3.5496894200903739e-005 1.4377946615243036 -5.6739299445496272e-006 ;
	setAttr ".sp" -type "double3" -3.5496894200903739e-005 1.4377946615243036 -5.6739299445496272e-006 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.5496894196462847e-005 1.4377946615242916 -5.6739299445496272e-006 ;
	setAttr ".sp" -type "double3" -3.5496894196462847e-005 1.4377946615242916 -5.6739299445496272e-006 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5496894196462847e-005 1.4377946615242916 -5.6739299445496272e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 3.1805546814635176e-015 -1.5902773407317588e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
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
		-5.7491853075117283e-016 7.8412888149137133e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -7.8412888149137133e-017 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 7.8412888149137133e-017 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -7.8412888149137133e-017 2.25
		-5.7491853075117283e-016 0.35314025384949838 -2.25
		2.25 0.35314025384949838 -1.6838337365057687e-016
		3.0430166849879092e-016 0.35314025384949832 2.25
		-2.25 0.35314025384949838 3.5695323650011823e-016
		-5.7491853075117283e-016 0.35314025384949838 -2.25
		2.25 0.35314025384949838 -1.6838337365057687e-016
		3.0430166849879092e-016 0.35314025384949832 2.25
		-5.7491853075117283e-016 0.70628050769899675 -2.25
		2.25 0.70628050769899675 -1.0715305595945801e-016
		3.0430166849879092e-016 0.70628050769899675 2.25
		-2.25 0.70628050769899675 4.1818355419123709e-016
		-5.7491853075117283e-016 0.70628050769899675 -2.25
		2.25 0.70628050769899675 -1.0715305595945801e-016
		3.0430166849879092e-016 0.70628050769899675 2.25
		-5.7491853075117283e-016 1.0594207615484952 -2.25
		2.25 1.0594207615484952 -4.5922738268339147e-017
		3.0430166849879092e-016 1.0594207615484952 2.25
		-2.25 1.0594207615484952 4.7941387188235596e-016
		-5.7491853075117283e-016 1.0594207615484952 -2.25
		2.25 1.0594207615484952 -4.5922738268339147e-017
		3.0430166849879092e-016 1.0594207615484952 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" 18.453507192123272 0 -4.7708320221952752e-015 ;
	setAttr ".rp" -type "double3" -7.1271654000781837e-006 1.0594207613231763 2.0654512745466036e-005 ;
	setAttr ".sp" -type "double3" -7.1271654000781837e-006 1.0594207613231763 2.0654512745466036e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -7.1271654018545405e-006 1.0594207613231763 2.0654512743689679e-005 ;
	setAttr ".sp" -type "double3" -7.1271654018545405e-006 1.0594207613231763 2.0654512743689679e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1271654018545405e-006 1.0594207613231763 2.0654512743689679e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 1.5902773407317584e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
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
		-5.7491853075117283e-016 1.0285637149489298e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0285637149489298e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0285637149489298e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0285637149489298e-016 2.25
		-5.7491853075117283e-016 0.46322391633708132 -2.25
		2.25 0.46322391633708132 -1.6838337365057687e-016
		3.0430166849879092e-016 0.46322391633708127 2.25
		-2.25 0.46322391633708132 3.5695323650011823e-016
		-5.7491853075117283e-016 0.46322391633708132 -2.25
		2.25 0.46322391633708132 -1.6838337365057687e-016
		3.0430166849879092e-016 0.46322391633708127 2.25
		-5.7491853075117283e-016 0.92644783267416264 -2.25
		2.25 0.92644783267416264 -1.0715305595945801e-016
		3.0430166849879092e-016 0.92644783267416264 2.25
		-2.25 0.92644783267416264 4.1818355419123709e-016
		-5.7491853075117283e-016 0.92644783267416264 -2.25
		2.25 0.92644783267416264 -1.0715305595945801e-016
		3.0430166849879092e-016 0.92644783267416264 2.25
		-5.7491853075117283e-016 1.389671749011244 -2.25
		2.25 1.389671749011244 -4.5922738268339147e-017
		3.0430166849879092e-016 1.389671749011244 2.25
		-2.25 1.389671749011244 4.7941387188235596e-016
		-5.7491853075117283e-016 1.389671749011244 -2.25
		2.25 1.389671749011244 -4.5922738268339147e-017
		3.0430166849879092e-016 1.389671749011244 2.25
		
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
	setAttr ".rst" -type "double3" -20.208987296429338 46.597764697082042 5.8771197505062656 ;
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-015 2.1156824011416027 
		1.9011005585245147e-014 ;
	setAttr ".tg[0].tor" -type "double3" 4.7708320221952752e-015 3.180554681463516e-015 
		1.2722218725854064e-014 ;
	setAttr ".tg[1].tot" -type "double3" -1.5092990324205857e-007 2.1156824011416044 
		1.9112238042482682e-014 ;
	setAttr ".tg[1].tor" -type "double3" 0 -6.3611093629270335e-015 -2.5444437451708134e-014 ;
	setAttr ".lr" -type "double3" 142.49355823023745 1.536129215208307 -27.652705691471514 ;
	setAttr ".rst" -type "double3" 14.230965769645273 73.149575405287806 -21.01500474340169 ;
	setAttr ".rsrr" -type "double3" 142.20007354540033 9.3871507088809718 -30.72823218527973 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "rkneeControl" -p "main";
	addAttr -ci true -sn "rKneeControl" -ln "rKneeControl" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0 0 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -7.161317599926206 21.454633863804432 -2.2087555364203872 ;
	setAttr ".sp" -type "double3" -7.161317599926206 21.454633863804432 -2.2087555364203872 ;
	setAttr ".hdl" -type "double3" -7.161317599926206 21.454633863804432 -2.2087555364203872 ;
	setAttr ".dh" yes;
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
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-8.1613175999262069 21.454633863804432 -2.2087555364203877
		-7.161317599926206 21.454633863804432 -3.2087555364203872
		-7.161317599926206 20.454633863804432 -2.2087555364203872
		-7.161317599926206 21.454633863804432 -1.2087555364203872
		-7.161317599926206 22.454633863804432 -2.2087555364203872
		-7.161317599926206 21.454633863804432 -3.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		-6.161317599926206 21.454633863804432 -2.2087555364203872
		
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
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" 0 -12.089161139776348 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -9.5333420975430965 3.6971414049102895 -3.1120230335238297 ;
	setAttr ".rpt" -type "double3" 0.86318428311741369 0 -1.9275863147216807 ;
	setAttr ".sp" -type "double3" -9.5333420975430965 3.6971414049102895 -3.1120230335238297 ;
	setAttr ".hdl" -type "double3" -9.5333420975430965 3.6971414049102895 -3.1120230335238297 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-11.221167149178603 3.6971414049102895 -3.1120230335238301
		-10.37725462336085 0.81499316455672943 -5.4324099133439425
		-10.37725462336085 0.81499316455672943 1.1559514107893776
		-10.37725462336085 6.5792896452638496 1.1559514107893776
		-10.37725462336085 6.5792896452638496 -5.4324099133439425
		-10.37725462336085 0.81499316455672943 -5.4324099133439425
		-8.6894295717253431 0.81499316455672899 -5.4324099133439425
		-8.6894295717253431 0.81499316455672943 1.1559514107893776
		-8.6894295717253431 6.5792896452638505 1.1559514107893776
		-8.6894295717253431 6.5792896452638505 -5.4324099133439425
		-8.6894295717253431 0.81499316455672943 -5.4324099133439434
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		-7.8455170459075898 3.6971414049102891 -3.1120230335238297
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -8.6701577913647228 3.6971414021702138 -5.0396093433492108 ;
	setAttr ".sp" -type "double3" -8.6701577913647228 3.6971414021702138 -5.0396093433492108 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -8.6701577913647228 3.6971414021702138 -5.0396093433492108 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -113.6613330758445 2.8043332732948465 6.3712354089316978 ;
	setAttr ".rp" -type "double3" 5.2017198775566875e-006 7.4108842515258342 0.77002763037848376 ;
	setAttr ".sp" -type "double3" 5.2017198775566875e-006 7.4108842515258342 0.77002763037848376 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" 5.2017198775566875e-006 7.4108842515258342 0.77002763037848376 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" -7.0622500768802538e-031 0 -7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" -2.0435369214668935 0.0016309684142482507 -0.32014433666886344 ;
	setAttr ".sp" -type "double3" -2.0435369214668935 0.0016309684142482507 -0.32014433666886344 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.0435369214668935 0.0016309684142482507 -0.32014433666886344 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" -7.0622500768802538e-031 0 -7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" 3.3128029763681779 -0.036825998686254025 -0.64729738551960514 ;
	setAttr ".sp" -type "double3" 3.3128029763681779 -0.036825998686254025 -0.64729738551960514 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 3.3128029763681779 -0.036825998686254025 -0.64729738551960514 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" 2.1186750230640761e-030 0 -1.4124500153760508e-030 ;
	setAttr ".rp" -type "double3" -2.3648002249905451 0.035195030272010749 -8.0083606732534225 ;
	setAttr ".sp" -type "double3" -2.3648002249905451 0.035195030272010749 -8.0083606732534225 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -2.3648002249905451 0.035195030272010749 -8.0083606732534225 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 2.1186750230640761e-030 0 -1.4124500153760508e-030 ;
	setAttr ".rp" -type "double3" 1.6324513366553492 -6.0817133295986167e-015 13.374809310420341 ;
	setAttr ".sp" -type "double3" 1.6324513366553492 -6.0817133295986167e-015 13.374809310420341 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 1.6324513366553492 -6.0817133295986167e-015 13.374809310420341 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 90.000000000000057 6.9587699540071419 -4.0051972696890664e-016 ;
	setAttr ".rp" -type "double3" -0.53687963771961622 0.84172155459865494 -4.3990435786117148 ;
	setAttr ".sp" -type "double3" -0.53687963771961622 0.84172155459865494 -4.3990435786117148 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -0.53687963771961622 0.84172155459865494 -4.3990435786117148 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 23.817444586876572 -7.0622500768802538e-031 0 ;
	setAttr ".rp" -type "double3" -4.6896098812698739e-005 -6.4687619661257596 -2.855419847571556 ;
	setAttr ".sp" -type "double3" -4.6896098812698739e-005 -6.4687619661257596 -2.855419847571556 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" -4.6896098812698739e-005 -6.4687619661257596 -2.855419847571556 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.1444271318051751 3.0192777502492163 -1.0726846993541317 ;
	setAttr ".r" -type "double3" -113.34632918518376 -4.8515454094756487 -11.08625209991955 ;
	setAttr ".rp" -type "double3" -8.2724221083797413 0.23792497449942474 -5.0396093433491949 ;
	setAttr ".rpt" -type "double3" -0.87200502342542929 -3.2572027247486428 6.1122940427033257 ;
	setAttr ".sp" -type "double3" -8.2724221083797609 0.2379249744994425 -5.0396093433492029 ;
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
	setAttr ".rst" -type "double3" -2.5699891645957935 7.3555281973151345 20.894031865192101 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.1892442431687309 1.2512447052918436 -9.5406264409872801 ;
	setAttr ".r" -type "double3" 3.0891953769088545e-014 19.047933 7.6115886721801194e-015 ;
	setAttr ".rp" -type "double3" -7.0905970974101002 -0.40952315069439882 2.9912876545310048 ;
	setAttr ".rpt" -type "double3" 1.3644732165216156 0 2.1502952078440383 ;
	setAttr ".sp" -type "double3" -7.0905970974100994 -0.40952315069439815 2.9912876545310043 ;
	setAttr ".pv" -type "double3" 1.9852657079997498 5.3104572663215202e-006 -0.24232224126573709 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 90.000000000000057 6.9587699540071419 4.0051972696890383e-016 ;
	setAttr ".rp" -type "double3" 1.0955716989357338 0.84172155459864906 8.975765731808627 ;
	setAttr ".sp" -type "double3" 1.0955716989357338 0.84172155459864906 8.975765731808627 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 1.0955716989357338 0.84172155459864906 8.975765731808627 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -90.000000000000057 0 6.9587699540071455 ;
	setAttr ".rp" -type "double3" -4.1694378931866893e-005 4.4316841212099582 0.84172155459865017 ;
	setAttr ".sp" -type "double3" -4.1694378931866893e-005 4.4316841212099582 0.84172155459865017 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" -4.1694378931866893e-005 4.4316841212099582 0.84172155459865017 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4204046686920435 0.47392224144186951 -6.3596950422767495 ;
	setAttr ".r" -type "double3" 3.1364421352098584e-014 19.047933000000004 1.5891452180391663e-014 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -5.3086441971157106 0.36779986233661538 4.8951664964238608 ;
	setAttr ".rpt" -type "double3" 1.8882520414742108 0 1.4644935370140166 ;
	setAttr ".sp" -type "double3" -5.3086441971157123 0.36779986233661532 4.8951664964238617 ;
	setAttr ".spt" -type "double3" 8.8817841970012504e-016 0 -8.8817841970012504e-016 ;
	setAttr ".pv" -type "double3" 1.985268551610281 -5.8569041677605695e-008 -0.24229894342982655 ;
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
	setAttr ".lr" -type "double3" -90.000000000000057 0 0 ;
	setAttr ".o" -type "double3" 90.000000000000057 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "rToeControlZeroGroup" -p "rReverseHeelLift";
	setAttr ".t" -type "double3" 1.0955718198210398 0.84172154088217532 8.9757657097772388 ;
	setAttr ".r" -type "double3" 2.9417191003432539e-014 6.958769954007141 -9.0757090183040531e-016 ;
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
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-1.6878250516355067 -2.1923010824175641e-016 -4.5907662542950476e-016
		-0.84391252581775311 -1.0291955680272693 -0.18966501208066194
		-0.84391252581775333 -1.0291955680272691 3.2494036751315232
		-0.84391252581775344 1.0291955680272693 3.2494036751315227
		-0.84391252581775322 1.0291955680272693 -0.18966501208066194
		-0.84391252581775311 -1.0291955680272691 -0.18966501208066217
		0.84391252581775344 -1.0291955680272695 -0.18966501208066205
		0.84391252581775322 -1.0291955680272693 3.2494036751315232
		0.84391252581775311 1.0291955680272695 3.2494036751315232
		0.84391252581775333 1.0291955680272695 -0.18966501208066205
		0.84391252581775344 -1.0291955680272693 -0.18966501208066228
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		1.6878250516355067 -2.5817847039655571e-016 -1.8331953208807239e-017
		
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
	setAttr ".tg[0].tot" -type "double3" 2.3574981966589803e-008 -2.7400750292128879e-009 
		-4.2026005268528053e-011 ;
	setAttr ".tg[0].tor" -type "double3" 113.81744458687659 -1.9062165107305524e-006 
		0 ;
	setAttr ".lr" -type "double3" 113.81744458687659 -12.089163045992859 1.6263450109377633e-015 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 113.81744458687659 -12.08916304599286 1.6263450109377633e-015 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:prp_pantsFront_RControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Ref:prp_pantsFront_RControl" -p "Ref:prp_pantsFront_RControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pantsFront_RControlShape" -p "Ref:prp_pantsFront_RControl";
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
createNode parentConstraint -n "Ref:prp_pantsFront_RControlGroup_parentConstraint1" 
		-p "Ref:prp_pantsFront_RControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_RFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_RIKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
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
	setAttr ".tg[0].tot" -type "double3" 0.2199224399220478 17.390200958518161 -3.2877448866046421 ;
	setAttr ".tg[0].tor" -type "double3" -73.952305126446007 -0.79953186901401696 -6.5822864332919622 ;
	setAttr ".tg[1].tot" -type "double3" 0.21992239035317679 17.390200958228956 -3.2877448914494272 ;
	setAttr ".tg[1].tor" -type "double3" -73.952305271173287 -0.79953061489897226 -6.5822865066299006 ;
	setAttr ".lr" -type "double3" 115.01549963017743 -0.58381021611911044 1.3289996920008911 ;
	setAttr ".rst" -type "double3" -9.1287964706439126 71.819467515748244 -1.1631242593681714 ;
	setAttr ".rsrr" -type "double3" -66.182555288124846 12.089161793477613 -1.2197587524922128e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_pantsBack_RControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Ref:prp_pantsBack_RControl" -p "Ref:prp_pantsBack_RControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pantsBack_RControlShape" -p "Ref:prp_pantsBack_RControl";
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
createNode parentConstraint -n "Ref:prp_pantsBack_RControlGroup_parentConstraint1" 
		-p "Ref:prp_pantsBack_RControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_RFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_RIKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
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
	setAttr ".tg[0].tot" -type "double3" 0.25573963171305047 18.439130914754401 2.7803694700522206 ;
	setAttr ".tg[0].tor" -type "double3" -73.952305126446007 -0.79953186901401696 -6.5822864332919622 ;
	setAttr ".tg[1].tot" -type "double3" 0.25573971722664246 18.439130914418094 2.7803694644182482 ;
	setAttr ".tg[1].tor" -type "double3" -73.952305271173287 -0.79953061489897226 -6.5822865066299006 ;
	setAttr ".lr" -type "double3" 115.01549963017743 -0.58381021611911044 1.3289996920008911 ;
	setAttr ".rst" -type "double3" -7.8398301215255568 72.03554162553479 4.8548011721823974 ;
	setAttr ".rsrr" -type "double3" -66.182555288124846 12.089161793477613 -1.2197587524922128e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_pantsFront_LControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "Ref:prp_pantsFront_LControl" -p "Ref:prp_pantsFront_LControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pantsFront_LControlShape" -p "Ref:prp_pantsFront_LControl";
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
createNode parentConstraint -n "Ref:prp_pantsFront_LControlGroup_parentConstraint1" 
		-p "Ref:prp_pantsFront_LControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_LFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_LIKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
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
	setAttr ".tg[0].tot" -type "double3" -0.21990804124939767 -17.390226661623498 3.2877595969484554 ;
	setAttr ".tg[0].tor" -type "double3" -73.952305249081732 -0.79953062799773511 -6.5822866026389546 ;
	setAttr ".tg[1].tot" -type "double3" -0.21990804124939589 -17.390226661623487 3.287759596948459 ;
	setAttr ".tg[1].tor" -type "double3" -73.952305249081732 -0.79953062799775743 -6.5822866026391127 ;
	setAttr ".lr" -type "double3" -64.984897989052612 0.58723767194592835 -1.3285641126253402 ;
	setAttr ".rst" -type "double3" 9.1287767599822303 71.819465552484729 -1.1631432613453143 ;
	setAttr ".rsrr" -type "double3" 113.81744458687669 -12.089163045992837 -3.008738270234863e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_pantsBack_LControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "Ref:prp_pantsBack_LControl" -p "Ref:prp_pantsBack_LControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_pantsBack_LControlShape" -p "Ref:prp_pantsBack_LControl";
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
createNode parentConstraint -n "Ref:prp_pantsBack_LControlGroup_parentConstraint1" 
		-p "Ref:prp_pantsBack_LControlGroup";
	addAttr -ci true -k true -sn "w0" -ln "bip_knee_LFKW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "bip_knee_LIKW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
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
	setAttr ".tg[0].tot" -type "double3" -0.25569978766978552 -18.43915106154445 -2.7803390056974027 ;
	setAttr ".tg[0].tor" -type "double3" -73.952305249081732 -0.79953062799773511 -6.5822866026389546 ;
	setAttr ".tg[1].tot" -type "double3" -0.25569978766978463 -18.43915106154444 -2.7803390056973991 ;
	setAttr ".tg[1].tor" -type "double3" -73.952305249081732 -0.79953062799775743 -6.5822866026391127 ;
	setAttr ".lr" -type "double3" -64.984897989052612 0.58723767194592835 -1.3285641126253402 ;
	setAttr ".rst" -type "double3" 7.8398381540643367 72.035533386362729 4.85477133248465 ;
	setAttr ".rsrr" -type "double3" 113.81744458687669 -12.089163045992837 -3.008738270234863e-014 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_wristOuter_RControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "Ref:prp_wristOuter_RControl" -p "Ref:prp_wristOuter_RControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_wristOuter_RControlShape" -p "Ref:prp_wristOuter_RControl";
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
createNode parentConstraint -n "Ref:prp_wristOuter_RControlGroup_parentConstraint1" 
		-p "Ref:prp_wristOuter_RControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" -1.7250787743783165 13.709135572155416 1.1485831910545077 ;
	setAttr ".tg[0].tor" -type "double3" 0.00013058663104212545 42.792804551460591 -0.17794172820706158 ;
	setAttr ".tg[1].tot" -type "double3" -1.7250787743783271 13.709135572155413 1.1485831910545059 ;
	setAttr ".tg[1].tor" -type "double3" 0.00013058663105296111 42.792804551460598 -0.17794172820710494 ;
	setAttr ".lr" -type "double3" 134.66227670057279 -31.175765813259222 1.3959278322013771 ;
	setAttr ".rst" -type "double3" -22.380041776499233 29.261174231935435 -8.5629768700043343 ;
	setAttr ".rsrr" -type "double3" -41.448600163678798 24.11297320360649 3.4600602193795664 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_wristInner_RControlGroup" -p "main";
createNode transform -n "Ref:prp_wristInner_RControl" -p "Ref:prp_wristInner_RControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_wristInner_RControlShape" -p "Ref:prp_wristInner_RControl";
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
createNode parentConstraint -n "Ref:prp_wristInner_RControlGroup_parentConstraint1" 
		-p "Ref:prp_wristInner_RControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" 2.5775728054310698 13.695775631130948 -1.951925109972855 ;
	setAttr ".tg[0].tor" -type "double3" 0.00011302501830839765 32.023152907915097 -0.17797050925720717 ;
	setAttr ".tg[1].tot" -type "double3" 2.5775728054310711 13.695775631130946 -1.9519251099728532 ;
	setAttr ".tg[1].tor" -type "double3" 0.00011302501831402473 32.023152907915104 -0.17797050925724095 ;
	setAttr ".lr" -type "double3" 138.48827529196851 -23.338759469994198 -6.9269284199372878 ;
	setAttr ".rst" -type "double3" -17.412276363257622 29.991147226606188 -10.270193041451828 ;
	setAttr ".rsrr" -type "double3" -38.912827881236758 15.872716883449039 10.848491821391343 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_wristOuter_LControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Ref:prp_wristOuter_LControl" -p "Ref:prp_wristOuter_LControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_wristOuter_LControlShape" -p "Ref:prp_wristOuter_LControl";
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
createNode parentConstraint -n "Ref:prp_wristOuter_LControlGroup_parentConstraint1" 
		-p "Ref:prp_wristOuter_LControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" 1.7250645456249338 -13.709154255017891 -1.148587981546946 ;
	setAttr ".tg[0].tor" -type "double3" 0.00013058664353783188 42.792804551460634 -0.17794172820709642 ;
	setAttr ".tg[1].tot" -type "double3" 1.7250645456249578 -13.709154255017918 -1.1485879815469566 ;
	setAttr ".tg[1].tor" -type "double3" 0.00013058664352916336 42.792804551460605 -0.17794172820708765 ;
	setAttr ".lr" -type "double3" -45.337723633036106 31.175766507453915 -1.3959291275208321 ;
	setAttr ".rst" -type "double3" 22.380025090163322 29.261223007874648 -8.5629832708502001 ;
	setAttr ".rsrr" -type "double3" 138.55139983633373 -24.112973203606533 -3.4600602193794852 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Ref:prp_wristInner_LControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "Ref:prp_wristInner_LControl" -p "Ref:prp_wristInner_LControlGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".dh" yes;
createNode nurbsSurface -n "Ref:prp_wristInner_LControlShape" -p "Ref:prp_wristInner_LControl";
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
createNode parentConstraint -n "Ref:prp_wristInner_LControlGroup_parentConstraint1" 
		-p "Ref:prp_wristInner_LControlGroup";
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
	setAttr ".tg[0].tot" -type "double3" -2.5775889852303946 -13.695790117672077 1.9518861920116075 ;
	setAttr ".tg[0].tor" -type "double3" 0.00011302504329827504 32.023152907915069 -0.17797050925725225 ;
	setAttr ".tg[1].tot" -type "double3" -2.5775889852303715 -13.695790117672093 1.9518861920115924 ;
	setAttr ".tg[1].tor" -type "double3" 0.0001130250432870209 32.023152907915041 -0.17797050925724467 ;
	setAttr ".lr" -type "double3" -41.511724906169803 23.33876019819548 6.9269272188163251 ;
	setAttr ".rst" -type "double3" 17.412271157244341 29.991209654377798 -10.270169981654716 ;
	setAttr ".rsrr" -type "double3" 141.08717211878823 -15.872716883449014 -10.848491821391306 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
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
	setAttr ".lr" -type "double3" 179.37598925560837 0 0 ;
	setAttr ".o" -type "double3" -179.37598925560837 0 0 ;
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
	setAttr ".rst" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_0_RControlW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-015 -2.2759572004815709e-015 
		9.9920072216264089e-016 ;
	setAttr ".tg[0].tor" -type "double3" -3.975693351829394e-016 4.7708320221952736e-015 
		-7.9513867036587899e-016 ;
	setAttr ".lr" -type "double3" -4.9696166897867469e-016 -6.3611093629270335e-015 
		2.3854160110976376e-015 ;
	setAttr ".rst" -type "double3" -3.7543481345544079 0.93809252740880567 3.9646855733137234 ;
	setAttr ".rsrr" -type "double3" -1.987846675914698e-016 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_0_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_front_0_RControlW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.6653345369377348e-016 -6.4392935428259079e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270351e-015 -6.3611093629270335e-015 
		-9.5416640443905503e-015 ;
	setAttr ".lr" -type "double3" -3.1805546814635183e-015 -1.2722218725854064e-014 
		2.0673605429512857e-014 ;
	setAttr ".rst" -type "double3" -8.0614333152771014 -0.72744149624840304 -1.1535807343154263 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317552e-015 -1.9083328088781091e-014 
		1.4312496066585818e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_back_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_back_0_LControlW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 2.2759572004815709e-015 
		-1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317576e-015 -3.180554681463516e-015 
		-7.9513867036587899e-016 ;
	setAttr ".lr" -type "double3" 3.975693351829395e-016 -8.2760743088440433e-033 2.3854160110976372e-015 ;
	setAttr ".rst" -type "double3" 3.7543477326084842 0.93809252733552029 3.9646855885757626 ;
	setAttr ".rsrr" -type "double3" -9.9392333795734874e-017 6.8967285907033694e-034 
		7.9513867036587899e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_coat_front_0_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_coat_front_0_LControlW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -5.5511151231257827e-017 -1.7763568394002505e-015 
		2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635152e-015 -2.8624992133171641e-014 
		1.8288189418415214e-014 ;
	setAttr ".lr" -type "double3" -2.862499213317166e-014 6.3611093629270323e-014 -2.544443745170815e-014 ;
	setAttr ".rst" -type "double3" 8.0614333152770978 -0.72744149624841015 -1.1535807343154243 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317625e-015 3.1805546814635149e-014 
		-1.7493050748049334e-014 ;
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
	setAttr ".lr" -type "double3" 0.032170690505618091 -11.654096150174935 -0.31520789240978703 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-014 2.2860236773019026e-015 
		-2.9817700138720499e-016 ;
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
	setAttr ".lr" -type "double3" 1.1927080055488188e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -1.0734372049939369e-014 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_pantsBack_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pantsBack_RControlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" -2.075210035660797e-008 -8.8637928617479388e-008 3.9126224372610383e-008 ;
	setAttr ".rst" -type "double3" 0.25573971722664357 18.439130914418094 2.7803694644182477 ;
	setAttr ".rsrr" -type "double3" -2.0752097523926466e-008 -8.8637935773727426e-008 
		3.9126229541011742e-008 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_pantsFront_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pantsFront_RControlW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" -2.075210035660797e-008 -8.8637928617479388e-008 3.9126224372610383e-008 ;
	setAttr ".rst" -type "double3" 0.21992239035317773 17.390200958228945 -3.2877448914494249 ;
	setAttr ".rsrr" -type "double3" -2.0752097523926466e-008 -8.8637935773727426e-008 
		3.9126229541011742e-008 ;
	setAttr -k on ".w0";
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
	setAttr ".lr" -type "double3" -0.99332604885393894 3.6575922993226313 10.995383903818365 ;
	setAttr ".rsrr" -type "double3" -1.4138559482443289e-014 -3.9756933518293979e-016 
		-1.5902773407317584e-015 ;
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
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
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
	setAttr ".lr" -type "double3" 0.032148024593009507 -11.650619233203514 -0.31510601868889415 ;
	setAttr ".rsrr" -type "double3" 176.14219390119879 -12.46010910140485 -5.6802692781476836 ;
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
	setAttr ".rsrr" -type "double3" -174.88117021888442 -12.352813195600532 -5.9127786965862486 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_pantsBack_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pantsBack_LControlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".lr" -type "double3" 1.943120125706617e-014 2.5046868116525197e-014 -1.5902773407317578e-014 ;
	setAttr ".rst" -type "double3" -0.25569978766978618 -18.439151061544447 -2.7803390056974036 ;
	setAttr ".rsrr" -type "double3" 2.4848083448933281e-016 -3.2600685485001048e-014 
		1.5505204072134644e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_pantsFront_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_pantsFront_LControlW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" 1.943120125706617e-014 2.5046868116525197e-014 -1.5902773407317578e-014 ;
	setAttr ".rst" -type "double3" -0.21990804124939523 -17.390226661623487 3.2877595969484541 ;
	setAttr ".rsrr" -type "double3" 2.4848083448933281e-016 -3.2600685485001048e-014 
		1.5505204072134644e-014 ;
	setAttr -k on ".w0";
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
	setAttr ".lr" -type "double3" -0.99313211201093587 3.6564838373491 10.992108013792718 ;
	setAttr ".rsrr" -type "double3" 1.8611214503251355e-014 -1.5902773407317576e-015 
		-1.1927080055488188e-015 ;
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
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 1.4210854715202004e-014 1.7763568394002505e-015 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 -4.4408920985006262e-016 ;
	setAttr ".tg[1].tor" -type "double3" 1.590277340731758e-015 0 0 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.0054257108988196 -3.3306690738754696e-015 ;
	setAttr ".rsrr" -type "double3" 13.823764212370486 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -5.5511151231257827e-015 ;
	setAttr ".tg[1].tot" -type "double3" 0 1.4210854715202004e-014 -3.1086244689504383e-015 ;
	setAttr ".tg[1].tor" -type "double3" 9.5416640443905471e-015 0 0 ;
	setAttr ".lr" -type "double3" 1.590277340731758e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.1785104136763493 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976364e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.8580710319057069e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr ".tg[1].tor" -type "double3" 9.4422717105948137e-015 0 0 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -7.2723806620927718 0 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-014 1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 -1.4210854715202004e-014 4.4408920985006262e-015 ;
	setAttr ".tg[1].tor" -type "double3" 7.9513867036587888e-015 0 0 ;
	setAttr ".lr" -type "double3" -4.7708320221952752e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -4.878670881985876 4.4408920985006262e-016 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -6.3611093629270335e-015 8.2495637050459969e-015 -7.7526020360673219e-015 ;
	setAttr ".rsrr" -type "double3" -7.9513867036587919e-015 7.5538173684758519e-015 
		-7.7401779943428574e-015 ;
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
	setAttr ".lr" -type "double3" 9.5651513771305723 8.9427225976344626 -59.525162394141162 ;
	setAttr ".rsrr" -type "double3" 9.6554270699675957 0.58617602609505914 -58.441203783656462 ;
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
	setAttr ".lr" -type "double3" 12.557309855987342 0 0 ;
	setAttr ".rsrr" -type "double3" 12.557309855987343 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_wristInner_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_wristInner_RControlW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" -5.1516289010501843e-014 -6.398745473697814e-015 3.6640052050668339e-014 ;
	setAttr ".rst" -type "double3" 2.5775728054310711 13.695775631130953 -1.9519251099728461 ;
	setAttr ".rsrr" -type "double3" -1.4505068713315061e-014 -2.0358927747710544e-017 
		-1.5157330903849573e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_wristOuter_R_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_wristOuter_RControlW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" -4.6627428591924148e-014 -3.8192923804840971e-014 
		2.5525193722917186e-014 ;
	setAttr ".rst" -type "double3" -1.7250787743783071 13.709135572155443 1.1485831910545201 ;
	setAttr ".rsrr" -type "double3" 5.9386919442951606e-015 -1.9079943022725312e-014 
		-3.1712366501701676e-015 ;
	setAttr -k on ".w0";
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 2.6645352591003757e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317581e-014 -9.5416640443905503e-015 
		0 ;
	setAttr ".lr" -type "double3" -4.2937488199757487e-014 4.4130196205306282e-014 -2.544443745170815e-014 ;
	setAttr ".rst" -type "double3" 1.9660911224990301 3.398159115108033 1.547474092331985 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 -4.7708320221952736e-015 
		-1.2722218725854067e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 -1.0658141036401503e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270304e-015 -1.9083328088781101e-014 
		1.4312496066585827e-014 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" -3.5496894200903739e-005 1.4377946615243045 -5.6739299516550545e-006 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -1.7763568394002505e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244605e-014 -6.361109362927032e-015 
		9.5416640443905471e-015 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" -7.1271653974136484e-006 1.0594207613231834 2.0654512740136965e-005 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.5987211554602254e-014 -3.1086244689504383e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.2937488199757462e-014 -9.5416640443905471e-015 
		9.5416640443905471e-015 ;
	setAttr ".lr" -type "double3" 4.6118042881221007e-014 3.5781240166464497e-015 1.9083328088781107e-014 ;
	setAttr ".rst" -type "double3" 1.1710172487595116 3.8571156106059226 0.74070443466187541 ;
	setAttr ".rsrr" -type "double3" 3.8166656177562208e-014 -7.9513867036587872e-015 
		-1.590277340731759e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 1.7763568394002505e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635168e-015 -1.5902773407317581e-014 
		1.5902773407317581e-014 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.0294390283327459e-005 1.6906707126992884 3.3390134959176976e-005 ;
	setAttr ".rsrr" -type "double3" -6.0430538947806815e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -9.7699626167013776e-015 8.8817841970012523e-015 
		1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270304e-015 -7.9513867036587919e-015 
		1.9083328088781101e-014 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr ".rst" -type "double3" -3.1343620955581741e-005 1.4234064101499317 -2.3699300891522057e-005 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-014 -4.4408920985006262e-016 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.5322904210855115e-014 -2.2263882770244611e-014 
		1.4511280734177294e-014 ;
	setAttr ".lr" -type "double3" 2.7034714792439897e-014 2.9817700138720474e-014 3.1805546814635247e-015 ;
	setAttr ".rst" -type "double3" 0.37700330450687858 4.2073119325362489 -0.24666353749381997 ;
	setAttr ".rsrr" -type "double3" 4.1347210859025721e-014 1.749305074804935e-014 -2.2263882770244611e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -1.9539925233402755e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708122e-014 -1.4312496066585827e-014 
		2.3854160110976371e-014 ;
	setAttr ".lr" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 6.8478234371838198e-005 2.372335896364782 -1.139229965474442e-005 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 -7.1054273576010019e-015 
		1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781094e-014 -1.2722218725854061e-014 
		5.0888874903416243e-014 ;
	setAttr ".lr" -type "double3" -6.5598940305185035e-014 0 0 ;
	setAttr ".rst" -type "double3" -6.6039473991530429e-005 1.5800647913811314 2.6008281684752887e-005 ;
	setAttr ".rsrr" -type "double3" -4.9298597562684508e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-014 -6.3282712403633923e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.6896696745274924e-014 -1.4312496066585821e-014 
		6.957463365701439e-016 ;
	setAttr ".lr" -type "double3" -4.7708320221952688e-015 2.9221346135946045e-014 1.5902773407317574e-014 ;
	setAttr ".rst" -type "double3" -0.19768865559352733 4.5883859039748502 -1.3288708370847768 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854064e-014 3.776908684237926e-015 -9.5416640443905487e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -2.3092638912203256e-014 
		1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244617e-014 -1.9878466759146965e-014 
		9.1440947092076056e-015 ;
	setAttr ".lr" -type "double3" -5.7249984266343308e-014 0 0 ;
	setAttr ".rst" -type "double3" 6.0847915199779834e-006 1.7546084048713451 7.428181847757287e-005 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-015 -1.5987211554602254e-014 
		8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635152e-015 -1.4312496066585821e-014 
		2.1468744099878731e-014 ;
	setAttr ".lr" -type "double3" -3.975693351829396e-015 0 0 ;
	setAttr ".rst" -type "double3" -3.8717350898664904e-005 1.2269400708689702 3.1575466108435535e-005 ;
	setAttr ".rsrr" -type "double3" 3.6576378836830441e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.7462034302725442e-015 6.4392935428259079e-015 
		-1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" -3.2302508483613835e-015 4.7708320221952736e-015 
		3.5781240166464568e-015 ;
	setAttr ".lr" -type "double3" -1.5902773407317576e-015 3.1805546814635168e-015 2.5444437451708134e-014 ;
	setAttr ".rst" -type "double3" 0.24749839881905444 1.3427813495108767 -1.684712687667469 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-014 -3.5781240166464583e-015 
		-8.7465253740246735e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -6.411537967210279e-015 1.4654943925052066e-014 
		-6.8833827526759706e-015 ;
	setAttr ".tg[0].tor" -type "double3" 8.3489560388417272e-015 1.2722218725854061e-014 
		-2.3854160110976364e-015 ;
	setAttr ".lr" -type "double3" 2.2263882770244611e-014 0 0 ;
	setAttr ".rst" -type "double3" 2.0814292831516923e-006 2.021688566492144 1.0516409937988414e-005 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587888e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.124100812432971e-015 -2.7200464103316335e-014 
		-1.5543122344752192e-014 ;
	setAttr ".tg[0].tor" -type "double3" -2.5245652784116664e-014 -1.0336802714756422e-014 
		2.2263882770244605e-014 ;
	setAttr ".lr" -type "double3" 4.4527765540489235e-014 0 0 ;
	setAttr ".rst" -type "double3" -3.9650617274844535e-005 1.1361322186132607 1.60228402135143e-005 ;
	setAttr ".rsrr" -type "double3" 2.2263882770244617e-014 0 0 ;
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
	setAttr ".lr" -type "double3" -4.7708320221952704e-015 2.0673605429512861e-014 2.5444437451708134e-014 ;
	setAttr ".rsrr" -type "double3" -1.7655625192200641e-030 1.5902773407317587e-014 
		-1.272221872585407e-014 ;
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
	setAttr ".lr" -type "double3" 9.5651512905564466 8.9427235891798222 -59.525163320381125 ;
	setAttr ".rsrr" -type "double3" 9.6554270699675939 0.58617602609504438 -58.441203783656462 ;
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
	setAttr ".lr" -type "double3" 12.557309855987331 0 0 ;
	setAttr ".rsrr" -type "double3" 12.557309855987331 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Ref:prp_wristInner_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_wristInner_LControlW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" -3.9943294144161061e-015 -3.814696455674305e-014 3.0373676005890363e-014 ;
	setAttr ".rst" -type "double3" -2.5775889852303902 -13.695790117672093 1.9518861920115897 ;
	setAttr ".rsrr" -type "double3" 1.2952063497756704e-014 1.9752285085382495e-017 
		3.2923710569837186e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_wristOuter_L_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_wristOuter_LControlW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" 1.4026743106923085e-014 -1.2682714155683304e-014 2.2322896968435831e-014 ;
	setAttr ".rst" -type "double3" 1.7250645456249316 -13.709154255017928 -1.1485879815469691 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-015 6.3783986788033658e-015 9.4919678774926796e-015 ;
	setAttr -k on ".w0";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -1.7763568394002505e-015 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635168e-015 6.3611093629270304e-015 
		0 ;
	setAttr ".lr" -type "double3" 0 -2.6637145457256941e-014 0 ;
	setAttr ".rst" -type "double3" -1.9661305649564156 -3.398176372577085 -1.5474453812200828 ;
	setAttr ".rsrr" -type "double3" -7.9513867036587888e-015 -1.1927080055488172e-015 
		1.9083328088781097e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-015 2.6645352591003757e-014 
		-8.8817841970012523e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.2263882770244624e-014 0 1.5902773407317584e-015 ;
	setAttr ".lr" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -1.4378199723363898 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 2.1316282072803006e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.4986101496098688e-014 -7.9513867036587919e-015 
		6.3611093629270335e-015 ;
	setAttr ".lr" -type "double3" 3.1805546814635168e-014 0 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -1.059397367488554 0 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -6.2172489379008766e-015 9.3258734068513149e-015 
		1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" 3.2600685485001048e-014 -3.1805546814635152e-015 
		-1.5902773407317578e-014 ;
	setAttr ".lr" -type "double3" -7.3152757673660883e-014 -1.4212778279721511e-029 
		-2.2263882770244617e-014 ;
	setAttr ".rst" -type "double3" -1.1710480260853764 -3.8571527380709041 -0.74067707424170592 ;
	setAttr ".rsrr" -type "double3" -3.657637883683046e-014 -1.5902773407317578e-014 
		2.862499213317166e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 1.2434497875801753e-014 
		-1.5987211554602254e-014 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416268e-014 -1.4312496066585821e-014 
		-7.9513867036587888e-015 ;
	setAttr ".lr" -type "double3" 2.8624992133171654e-014 0 0 ;
	setAttr ".rst" -type "double3" 5.3290705182007514e-015 -1.6906289595508053 0 ;
	setAttr ".rsrr" -type "double3" 5.4069429584879788e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 1.0658141036401503e-014 
		-1.5987211554602254e-014 ;
	setAttr ".tg[0].tor" -type "double3" -3.4986101496098681e-014 -1.4312496066585818e-014 
		-1.2722218725854061e-014 ;
	setAttr ".lr" -type "double3" 3.4986101496098681e-014 0 0 ;
	setAttr ".rst" -type "double3" -7.1054273576010019e-015 -1.4234403322378189 -1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 1.2212453270876722e-014 1.0658141036401503e-014 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952759e-015 2.0673605429512845e-014 
		-1.1330726052713771e-014 ;
	setAttr ".lr" -type "double3" 0 -6.7586786981099735e-015 0 ;
	setAttr ".rst" -type "double3" -0.37702267624843699 -4.2073368447255906 0.24673492329544366 ;
	setAttr ".rsrr" -type "double3" 1.4312496066585827e-014 1.5902773407317558e-015 
		2.2263882770244617e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 1.4210854715202004e-014 
		-1.5987211554602254e-014 ;
	setAttr ".tg[0].tor" -type "double3" -6.0430538947806815e-014 -1.5902773407317576e-015 
		-2.7034714792439875e-014 ;
	setAttr ".lr" -type "double3" 2.5444437451708134e-014 0 0 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -2.3723260927718766 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 2.4868995751603507e-014 
		-1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781094e-014 6.3611093629270304e-015 
		-1.7493050748049331e-014 ;
	setAttr ".lr" -type "double3" -4.7708320221952752e-015 0 0 ;
	setAttr ".rst" -type "double3" 4.4408920985006262e-015 -1.5800730120496613 0 ;
	setAttr ".rsrr" -type "double3" -2.1866313435061677e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 2.2204460492503131e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.3732626870123352e-015 0 1.5082786653502756e-014 ;
	setAttr ".lr" -type "double3" -8.9055531080978507e-014 1.4511280734177259e-014 -5.0888874903416294e-014 ;
	setAttr ".rst" -type "double3" 0.19761329068690614 -4.5884445002778476 1.3289102735303651 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905487e-015 1.2324649390671124e-014 
		1.0262332142966615e-030 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 8.8817841970012523e-015 
		-1.7763568394002505e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781104e-014 -7.9513867036587856e-015 
		1.590277340731757e-015 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.2204460492503131e-015 -1.7545310635911677 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-014 -5.3290705182007514e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708128e-014 -3.1805546814635152e-015 
		-7.9513867036587856e-015 ;
	setAttr ".lr" -type "double3" -2.1468744099878737e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.1102230246251565e-014 -1.2270142737840093 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.9511731360403246e-015 -2.2204460492503131e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -3.7769086842379252e-015 2.3854160110976368e-015 
		-1.1529510720305246e-014 ;
	setAttr ".lr" -type "double3" -2.3854160110976376e-015 -3.9756933518293969e-016 
		-5.5659706925611543e-015 ;
	setAttr ".rst" -type "double3" -0.24750294155040464 -1.3428441808931142 1.6847418967996184 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976384e-015 -7.9513867036587919e-015 
		9.5416640443905503e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.04638520070921e-014 1.2212453270876722e-014 
		2.6423307986078726e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.4560976901075146e-014 8.7465253740246672e-015 
		-1.5107634736951698e-014 ;
	setAttr ".lr" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 -2.0216184713995897 2.9309887850104133e-014 ;
	setAttr ".rsrr" -type "double3" 1.4312496066585827e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 8.3960616237277463e-015 2.0539125955565396e-014 
		3.1974423109204508e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.9320738469741769e-015 -1.0336802714756422e-014 
		1.2324649390671119e-014 ;
	setAttr ".lr" -type "double3" -1.2722218725854067e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -1.1362196624936767 5.3290705182007514e-015 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952752e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -1.8288189418415221e-014 0 0 ;
	setAttr ".rsrr" -type "double3" -2.0673605429512861e-014 0 0 ;
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
	setAttr ".lr" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-015 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:prp_cig_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "prp_cigControlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lo" yes;
	setAttr ".tg[0].tot" -type "double3" -1.9984014443252818e-015 -9.9920072216264089e-016 
		2.28948804359419e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.4809457735564499e-014 -2.7829853462805764e-015 
		0 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-014 9.5416640443905503e-015 -3.1805546814635187e-015 ;
	setAttr ".rst" -type "double3" 1.0819373379999988 0.93644397639995702 -5.3668963829999976 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585827e-014 3.9725156682451432e-031 
		3.1805546814635168e-015 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr -s 773 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[770]" 0;
	setAttr ".phl[783]" 0;
	setAttr ".phl[843]" 0;
	setAttr ".phl[844]" 0;
	setAttr ".phl[845]" 0;
	setAttr ".phl[846]" 0;
	setAttr ".phl[847]" 0;
	setAttr ".phl[848]" 0;
	setAttr ".phl[849]" 0;
	setAttr ".phl[850]" 0;
	setAttr ".phl[851]" 0;
	setAttr ".phl[852]" 0;
	setAttr ".phl[853]" 0;
	setAttr ".phl[854]" 0;
	setAttr ".phl[855]" 0;
	setAttr ".phl[856]" 0;
	setAttr ".phl[857]" 0;
	setAttr ".phl[858]" 0;
	setAttr ".phl[859]" 0;
	setAttr ".phl[860]" 0;
	setAttr ".phl[861]" 0;
	setAttr ".phl[862]" 0;
	setAttr ".phl[863]" 0;
	setAttr ".phl[864]" 0;
	setAttr ".phl[865]" 0;
	setAttr ".phl[866]" 0;
	setAttr ".phl[867]" 0;
	setAttr ".phl[868]" 0;
	setAttr ".phl[869]" 0;
	setAttr ".phl[870]" 0;
	setAttr ".phl[871]" 0;
	setAttr ".phl[872]" 0;
	setAttr ".phl[873]" 0;
	setAttr ".phl[874]" 0;
	setAttr ".phl[875]" 0;
	setAttr ".phl[876]" 0;
	setAttr ".phl[877]" 0;
	setAttr ".phl[878]" 0;
	setAttr ".phl[879]" 0;
	setAttr ".phl[880]" 0;
	setAttr ".phl[881]" 0;
	setAttr ".phl[882]" 0;
	setAttr ".phl[883]" 0;
	setAttr ".phl[884]" 0;
	setAttr ".phl[885]" 0;
	setAttr ".phl[886]" 0;
	setAttr ".phl[887]" 0;
	setAttr ".phl[888]" 0;
	setAttr ".phl[889]" 0;
	setAttr ".phl[890]" 0;
	setAttr ".phl[891]" 0;
	setAttr ".phl[892]" 0;
	setAttr ".phl[893]" 0;
	setAttr ".phl[894]" 0;
	setAttr ".phl[895]" 0;
	setAttr ".phl[896]" 0;
	setAttr ".phl[897]" 0;
	setAttr ".phl[898]" 0;
	setAttr ".phl[899]" 0;
	setAttr ".phl[900]" 0;
	setAttr ".phl[901]" 0;
	setAttr ".phl[902]" 0;
	setAttr ".phl[903]" 0;
	setAttr ".phl[904]" 0;
	setAttr ".phl[905]" 0;
	setAttr ".phl[906]" 0;
	setAttr ".phl[907]" 0;
	setAttr ".phl[908]" 0;
	setAttr ".phl[909]" 0;
	setAttr ".phl[910]" 0;
	setAttr ".phl[911]" 0;
	setAttr ".phl[912]" 0;
	setAttr ".phl[913]" 0;
	setAttr ".phl[914]" 0;
	setAttr ".phl[915]" 0;
	setAttr ".phl[916]" 0;
	setAttr ".phl[917]" 0;
	setAttr ".phl[918]" 0;
	setAttr ".phl[919]" 0;
	setAttr ".phl[920]" 0;
	setAttr ".phl[921]" 0;
	setAttr ".phl[922]" 0;
	setAttr ".phl[923]" 0;
	setAttr ".phl[924]" 0;
	setAttr ".phl[925]" 0;
	setAttr ".phl[926]" 0;
	setAttr ".phl[927]" 0;
	setAttr ".phl[928]" 0;
	setAttr ".phl[929]" 0;
	setAttr ".phl[930]" 0;
	setAttr ".phl[931]" 0;
	setAttr ".phl[932]" 0;
	setAttr ".phl[933]" 0;
	setAttr ".phl[934]" 0;
	setAttr ".phl[935]" 0;
	setAttr ".phl[936]" 0;
	setAttr ".phl[937]" 0;
	setAttr ".phl[938]" 0;
	setAttr ".phl[939]" 0;
	setAttr ".phl[940]" 0;
	setAttr ".phl[941]" 0;
	setAttr ".phl[942]" 0;
	setAttr ".phl[943]" 0;
	setAttr ".phl[944]" 0;
	setAttr ".phl[945]" 0;
	setAttr ".phl[946]" 0;
	setAttr ".phl[947]" 0;
	setAttr ".phl[948]" 0;
	setAttr ".phl[949]" 0;
	setAttr ".phl[950]" 0;
	setAttr ".phl[951]" 0;
	setAttr ".phl[952]" 0;
	setAttr ".phl[953]" 0;
	setAttr ".phl[954]" 0;
	setAttr ".phl[955]" 0;
	setAttr ".phl[956]" 0;
	setAttr ".phl[957]" 0;
	setAttr ".phl[958]" 0;
	setAttr ".phl[959]" 0;
	setAttr ".phl[960]" 0;
	setAttr ".phl[961]" 0;
	setAttr ".phl[962]" 0;
	setAttr ".phl[963]" 0;
	setAttr ".phl[964]" 0;
	setAttr ".phl[965]" 0;
	setAttr ".phl[966]" 0;
	setAttr ".phl[967]" 0;
	setAttr ".phl[968]" 0;
	setAttr ".phl[969]" 0;
	setAttr ".phl[970]" 0;
	setAttr ".phl[971]" 0;
	setAttr ".phl[972]" 0;
	setAttr ".phl[973]" 0;
	setAttr ".phl[974]" 0;
	setAttr ".phl[975]" 0;
	setAttr ".phl[976]" 0;
	setAttr ".phl[977]" 0;
	setAttr ".phl[978]" 0;
	setAttr ".phl[979]" 0;
	setAttr ".phl[980]" 0;
	setAttr ".phl[981]" 0;
	setAttr ".phl[982]" 0;
	setAttr ".phl[983]" 0;
	setAttr ".phl[984]" 0;
	setAttr ".phl[985]" 0;
	setAttr ".phl[986]" 0;
	setAttr ".phl[987]" 0;
	setAttr ".phl[988]" 0;
	setAttr ".phl[989]" 0;
	setAttr ".phl[990]" 0;
	setAttr ".phl[991]" 0;
	setAttr ".phl[992]" 0;
	setAttr ".phl[993]" 0;
	setAttr ".phl[994]" 0;
	setAttr ".phl[995]" 0;
	setAttr ".phl[996]" 0;
	setAttr ".phl[997]" 0;
	setAttr ".phl[998]" 0;
	setAttr ".phl[999]" 0;
	setAttr ".phl[1000]" 0;
	setAttr ".phl[1001]" 0;
	setAttr ".phl[1002]" 0;
	setAttr ".phl[1003]" 0;
	setAttr ".phl[1004]" 0;
	setAttr ".phl[1005]" 0;
	setAttr ".phl[1006]" 0;
	setAttr ".phl[1007]" 0;
	setAttr ".phl[1008]" 0;
	setAttr ".phl[1009]" 0;
	setAttr ".phl[1010]" 0;
	setAttr ".phl[1011]" 0;
	setAttr ".phl[1012]" 0;
	setAttr ".phl[1013]" 0;
	setAttr ".phl[1014]" 0;
	setAttr ".phl[1015]" 0;
	setAttr ".phl[1016]" 0;
	setAttr ".phl[1017]" 0;
	setAttr ".phl[1018]" 0;
	setAttr ".phl[1019]" 0;
	setAttr ".phl[1020]" 0;
	setAttr ".phl[1021]" 0;
	setAttr ".phl[1022]" 0;
	setAttr ".phl[1023]" 0;
	setAttr ".phl[1024]" 0;
	setAttr ".phl[1025]" 0;
	setAttr ".phl[1026]" 0;
	setAttr ".phl[1027]" 0;
	setAttr ".phl[1028]" 0;
	setAttr ".phl[1029]" 0;
	setAttr ".phl[1030]" 0;
	setAttr ".phl[1031]" 0;
	setAttr ".phl[1032]" 0;
	setAttr ".phl[1033]" 0;
	setAttr ".phl[1034]" 0;
	setAttr ".phl[1035]" 0;
	setAttr ".phl[1036]" 0;
	setAttr ".phl[1037]" 0;
	setAttr ".phl[1038]" 0;
	setAttr ".phl[1039]" 0;
	setAttr ".phl[1040]" 0;
	setAttr ".phl[1041]" 0;
	setAttr ".phl[1042]" 0;
	setAttr ".phl[1043]" 0;
	setAttr ".phl[1044]" 0;
	setAttr ".phl[1045]" 0;
	setAttr ".phl[1046]" 0;
	setAttr ".phl[1047]" 0;
	setAttr ".phl[1048]" 0;
	setAttr ".phl[1049]" 0;
	setAttr ".phl[1050]" 0;
	setAttr ".phl[1051]" 0;
	setAttr ".phl[1052]" 0;
	setAttr ".phl[1053]" 0;
	setAttr ".phl[1054]" 0;
	setAttr ".phl[1055]" 0;
	setAttr ".phl[1056]" 0;
	setAttr ".phl[1057]" 0;
	setAttr ".phl[1058]" 0;
	setAttr ".phl[1059]" 0;
	setAttr ".phl[1060]" 0;
	setAttr ".phl[1061]" 0;
	setAttr ".phl[1062]" 0;
	setAttr ".phl[1063]" 0;
	setAttr ".phl[1064]" 0;
	setAttr ".phl[1065]" 0;
	setAttr ".phl[1066]" 0;
	setAttr ".phl[1067]" 0;
	setAttr ".phl[1068]" 0;
	setAttr ".phl[1069]" 0;
	setAttr ".phl[1070]" 0;
	setAttr ".phl[1071]" 0;
	setAttr ".phl[1072]" 0;
	setAttr ".phl[1073]" 0;
	setAttr ".phl[1074]" 0;
	setAttr ".phl[1075]" 0;
	setAttr ".phl[1076]" 0;
	setAttr ".phl[1077]" 0;
	setAttr ".phl[1078]" 0;
	setAttr ".phl[1079]" 0;
	setAttr ".phl[1080]" 0;
	setAttr ".phl[1081]" 0;
	setAttr ".phl[1082]" 0;
	setAttr ".phl[1083]" 0;
	setAttr ".phl[1084]" 0;
	setAttr ".phl[1085]" 0;
	setAttr ".phl[1086]" 0;
	setAttr ".phl[1087]" 0;
	setAttr ".phl[1088]" 0;
	setAttr ".phl[1089]" 0;
	setAttr ".phl[1090]" 0;
	setAttr ".phl[1091]" 0;
	setAttr ".phl[1092]" 0;
	setAttr ".phl[1093]" 0;
	setAttr ".phl[1094]" 0;
	setAttr ".phl[1095]" 0;
	setAttr ".phl[1096]" 0;
	setAttr ".phl[1097]" 0;
	setAttr ".phl[1098]" 0;
	setAttr ".phl[1099]" 0;
	setAttr ".phl[1100]" 0;
	setAttr ".phl[1101]" 0;
	setAttr ".phl[1102]" 0;
	setAttr ".phl[1103]" 0;
	setAttr ".phl[1104]" 0;
	setAttr ".phl[1105]" 0;
	setAttr ".phl[1106]" 0;
	setAttr ".phl[1107]" 0;
	setAttr ".phl[1108]" 0;
	setAttr ".phl[1109]" 0;
	setAttr ".phl[1110]" 0;
	setAttr ".phl[1111]" 0;
	setAttr ".phl[1112]" 0;
	setAttr ".phl[1113]" 0;
	setAttr ".phl[1114]" 0;
	setAttr ".phl[1115]" 0;
	setAttr ".phl[1116]" 0;
	setAttr ".phl[1117]" 0;
	setAttr ".phl[1118]" 0;
	setAttr ".phl[1119]" 0;
	setAttr ".phl[1120]" 0;
	setAttr ".phl[1121]" 0;
	setAttr ".phl[1122]" 0;
	setAttr ".phl[1123]" 0;
	setAttr ".phl[1124]" 0;
	setAttr ".phl[1125]" 0;
	setAttr ".phl[1126]" 0;
	setAttr ".phl[1127]" 0;
	setAttr ".phl[1128]" 0;
	setAttr ".phl[1129]" 0;
	setAttr ".phl[1130]" 0;
	setAttr ".phl[1131]" 0;
	setAttr ".phl[1132]" 0;
	setAttr ".phl[1133]" 0;
	setAttr ".phl[1134]" 0;
	setAttr ".phl[1135]" 0;
	setAttr ".phl[1136]" 0;
	setAttr ".phl[1137]" 0;
	setAttr ".phl[1138]" 0;
	setAttr ".phl[1139]" 0;
	setAttr ".phl[1140]" 0;
	setAttr ".phl[1141]" 0;
	setAttr ".phl[1142]" 0;
	setAttr ".phl[1143]" 0;
	setAttr ".phl[1144]" 0;
	setAttr ".phl[1145]" 0;
	setAttr ".phl[1146]" 0;
	setAttr ".phl[1147]" 0;
	setAttr ".phl[1148]" 0;
	setAttr ".phl[1149]" 0;
	setAttr ".phl[1150]" 0;
	setAttr ".phl[1151]" 0;
	setAttr ".phl[1152]" 0;
	setAttr ".phl[1153]" 0;
	setAttr ".phl[1154]" 0;
	setAttr ".phl[1155]" 0;
	setAttr ".phl[1156]" 0;
	setAttr ".phl[1157]" 0;
	setAttr ".phl[1158]" 0;
	setAttr ".phl[1159]" 0;
	setAttr ".phl[1160]" 0;
	setAttr ".phl[1161]" 0;
	setAttr ".phl[1162]" 0;
	setAttr ".phl[1163]" 0;
	setAttr ".phl[1164]" 0;
	setAttr ".phl[1165]" 0;
	setAttr ".phl[1166]" 0;
	setAttr ".phl[1167]" 0;
	setAttr ".phl[1168]" 0;
	setAttr ".phl[1169]" 0;
	setAttr ".phl[1170]" 0;
	setAttr ".phl[1171]" 0;
	setAttr ".phl[1172]" 0;
	setAttr ".phl[1173]" 0;
	setAttr ".phl[1174]" 0;
	setAttr ".phl[1175]" 0;
	setAttr ".phl[1176]" 0;
	setAttr ".phl[1177]" 0;
	setAttr ".phl[1178]" 0;
	setAttr ".phl[1179]" 0;
	setAttr ".phl[1180]" 0;
	setAttr ".phl[1181]" 0;
	setAttr ".phl[1182]" 0;
	setAttr ".phl[1183]" 0;
	setAttr ".phl[1184]" 0;
	setAttr ".phl[1185]" 0;
	setAttr ".phl[1186]" 0;
	setAttr ".phl[1187]" 0;
	setAttr ".phl[1188]" 0;
	setAttr ".phl[1189]" 0;
	setAttr ".phl[1190]" 0;
	setAttr ".phl[1191]" 0;
	setAttr ".phl[1192]" 0;
	setAttr ".phl[1193]" 0;
	setAttr ".phl[1194]" 0;
	setAttr ".phl[1195]" 0;
	setAttr ".phl[1196]" 0;
	setAttr ".phl[1197]" 0;
	setAttr ".phl[1198]" 0;
	setAttr ".phl[1199]" 0;
	setAttr ".phl[1200]" 0;
	setAttr ".phl[1201]" 0;
	setAttr ".phl[1202]" 0;
	setAttr ".phl[1203]" 0;
	setAttr ".phl[1204]" 0;
	setAttr ".phl[1205]" 0;
	setAttr ".phl[1206]" 0;
	setAttr ".phl[1207]" 0;
	setAttr ".phl[1208]" 0;
	setAttr ".phl[1209]" 0;
	setAttr ".phl[1210]" 0;
	setAttr ".phl[1211]" 0;
	setAttr ".phl[1212]" 0;
	setAttr ".phl[1213]" 0;
	setAttr ".phl[1214]" 0;
	setAttr ".phl[1215]" 0;
	setAttr ".phl[1216]" 0;
	setAttr ".phl[1217]" 0;
	setAttr ".phl[1218]" 0;
	setAttr ".phl[1219]" 0;
	setAttr ".phl[1220]" 0;
	setAttr ".phl[1221]" 0;
	setAttr ".phl[1222]" 0;
	setAttr ".phl[1223]" 0;
	setAttr ".phl[1224]" 0;
	setAttr ".phl[1225]" 0;
	setAttr ".phl[1226]" 0;
	setAttr ".phl[1227]" 0;
	setAttr ".phl[1228]" 0;
	setAttr ".phl[1229]" 0;
	setAttr ".phl[1230]" 0;
	setAttr ".phl[1231]" 0;
	setAttr ".phl[1232]" 0;
	setAttr ".phl[1233]" 0;
	setAttr ".phl[1234]" 0;
	setAttr ".phl[1235]" 0;
	setAttr ".phl[1236]" 0;
	setAttr ".phl[1237]" 0;
	setAttr ".phl[1238]" 0;
	setAttr ".phl[1239]" 0;
	setAttr ".phl[1240]" 0;
	setAttr ".phl[1241]" 0;
	setAttr ".phl[1242]" 0;
	setAttr ".phl[1243]" 0;
	setAttr ".phl[1244]" 0;
	setAttr ".phl[1245]" 0;
	setAttr ".phl[1246]" 0;
	setAttr ".phl[1247]" 0;
	setAttr ".phl[1248]" 0;
	setAttr ".phl[1249]" 0;
	setAttr ".phl[1250]" 0;
	setAttr ".phl[1251]" 0;
	setAttr ".phl[1252]" 0;
	setAttr ".phl[1253]" 0;
	setAttr ".phl[1254]" 0;
	setAttr ".phl[1255]" 0;
	setAttr ".phl[1256]" 0;
	setAttr ".phl[1257]" 0;
	setAttr ".phl[1258]" 0;
	setAttr ".phl[1259]" 0;
	setAttr ".phl[1260]" 0;
	setAttr ".phl[1261]" 0;
	setAttr ".phl[1262]" 0;
	setAttr ".phl[1263]" 0;
	setAttr ".phl[1264]" 0;
	setAttr ".phl[1265]" 0;
	setAttr ".phl[1266]" 0;
	setAttr ".phl[1267]" 0;
	setAttr ".phl[1268]" 0;
	setAttr ".phl[1269]" 0;
	setAttr ".phl[1270]" 0;
	setAttr ".phl[1271]" 0;
	setAttr ".phl[1272]" 0;
	setAttr ".phl[1273]" 0;
	setAttr ".phl[1274]" 0;
	setAttr ".phl[1275]" 0;
	setAttr ".phl[1276]" 0;
	setAttr ".phl[1277]" 0;
	setAttr ".phl[1278]" 0;
	setAttr ".phl[1279]" 0;
	setAttr ".phl[1280]" 0;
	setAttr ".phl[1281]" 0;
	setAttr ".phl[1282]" 0;
	setAttr ".phl[1283]" 0;
	setAttr ".phl[1284]" 0;
	setAttr ".phl[1285]" 0;
	setAttr ".phl[1286]" 0;
	setAttr ".phl[1287]" 0;
	setAttr ".phl[1288]" 0;
	setAttr ".phl[1289]" 0;
	setAttr ".phl[1290]" 0;
	setAttr ".phl[1291]" 0;
	setAttr ".phl[1292]" 0;
	setAttr ".phl[1293]" 0;
	setAttr ".phl[1294]" 0;
	setAttr ".phl[1295]" 0;
	setAttr ".phl[1296]" 0;
	setAttr ".phl[1297]" 0;
	setAttr ".phl[1298]" 0;
	setAttr ".phl[1299]" 0;
	setAttr ".phl[1300]" 0;
	setAttr ".phl[1301]" 0;
	setAttr ".phl[1302]" 0;
	setAttr ".phl[1303]" 0;
	setAttr ".phl[1304]" 0;
	setAttr ".phl[1305]" 0;
	setAttr ".phl[1306]" 0;
	setAttr ".phl[1307]" 0;
	setAttr ".phl[1308]" 0;
	setAttr ".phl[1309]" 0;
	setAttr ".phl[1310]" 0;
	setAttr ".phl[1311]" 0;
	setAttr ".phl[1312]" 0;
	setAttr ".phl[1313]" 0;
	setAttr ".phl[1314]" 0;
	setAttr ".phl[1315]" 0;
	setAttr ".phl[1316]" 0;
	setAttr ".phl[1317]" 0;
	setAttr ".phl[1318]" 0;
	setAttr ".phl[1319]" 0;
	setAttr ".phl[1320]" 0;
	setAttr ".phl[1321]" 0;
	setAttr ".phl[1322]" 0;
	setAttr ".phl[1323]" 0;
	setAttr ".phl[1324]" 0;
	setAttr ".phl[1325]" 0;
	setAttr ".phl[1326]" 0;
	setAttr ".phl[1327]" 0;
	setAttr ".phl[1328]" 0;
	setAttr ".phl[1329]" 0;
	setAttr ".phl[1330]" 0;
	setAttr ".phl[1331]" 0;
	setAttr ".phl[1332]" 0;
	setAttr ".phl[1333]" 0;
	setAttr ".phl[1334]" 0;
	setAttr ".phl[1335]" 0;
	setAttr ".phl[1336]" 0;
	setAttr ".phl[1337]" 0;
	setAttr ".phl[1338]" 0;
	setAttr ".phl[1339]" 0;
	setAttr ".phl[1340]" 0;
	setAttr ".phl[1341]" 0;
	setAttr ".phl[1342]" 0;
	setAttr ".phl[1343]" 0;
	setAttr ".phl[1344]" 0;
	setAttr ".phl[1345]" 0;
	setAttr ".phl[1346]" 0;
	setAttr ".phl[1347]" 0;
	setAttr ".phl[1348]" 0;
	setAttr ".phl[1349]" 0;
	setAttr ".phl[1350]" 0;
	setAttr ".phl[1351]" 0;
	setAttr ".phl[1352]" 0;
	setAttr ".phl[1353]" 0;
	setAttr ".phl[1354]" 0;
	setAttr ".phl[1355]" 0;
	setAttr ".phl[1356]" 0;
	setAttr ".phl[1357]" 0;
	setAttr ".phl[1358]" 0;
	setAttr ".phl[1359]" 0;
	setAttr ".phl[1360]" 0;
	setAttr ".phl[1361]" 0;
	setAttr ".phl[1362]" 0;
	setAttr ".phl[1363]" 0;
	setAttr ".phl[1364]" 0;
	setAttr ".phl[1365]" 0;
	setAttr ".phl[1366]" 0;
	setAttr ".phl[1367]" 0;
	setAttr ".phl[1368]" 0;
	setAttr ".phl[1369]" 0;
	setAttr ".phl[1370]" 0;
	setAttr ".phl[1371]" 0;
	setAttr ".phl[1372]" 0;
	setAttr ".phl[1373]" 0;
	setAttr ".phl[1374]" 0;
	setAttr ".phl[1375]" 0;
	setAttr ".phl[1376]" 0;
	setAttr ".phl[1377]" 0;
	setAttr ".phl[1378]" 0;
	setAttr ".phl[1379]" 0;
	setAttr ".phl[1380]" 0;
	setAttr ".phl[1381]" 0;
	setAttr ".phl[1382]" 0;
	setAttr ".phl[1383]" 0;
	setAttr ".phl[1384]" 0;
	setAttr ".phl[1385]" 0;
	setAttr ".phl[1386]" 0;
	setAttr ".phl[1387]" 0;
	setAttr ".phl[1388]" 0;
	setAttr ".phl[1389]" 0;
	setAttr ".phl[1390]" 0;
	setAttr ".phl[1391]" 0;
	setAttr ".phl[1392]" 0;
	setAttr ".phl[1393]" 0;
	setAttr ".phl[1394]" 0;
	setAttr ".phl[1395]" 0;
	setAttr ".phl[1396]" 0;
	setAttr ".phl[1397]" 0;
	setAttr ".phl[1398]" 0;
	setAttr ".phl[1399]" 0;
	setAttr ".phl[1400]" 0;
	setAttr ".phl[1401]" 0;
	setAttr ".phl[1402]" 0;
	setAttr ".phl[1403]" 0;
	setAttr ".phl[1404]" 0;
	setAttr ".phl[1405]" 0;
	setAttr ".phl[1406]" 0;
	setAttr ".phl[1407]" 0;
	setAttr ".phl[1408]" 0;
	setAttr ".phl[1409]" 0;
	setAttr ".phl[1410]" 0;
	setAttr ".phl[1411]" 0;
	setAttr ".phl[1412]" 0;
	setAttr ".phl[1413]" 0;
	setAttr ".phl[1414]" 0;
	setAttr ".phl[1415]" 0;
	setAttr ".phl[1416]" 0;
	setAttr ".phl[1417]" 0;
	setAttr ".phl[1418]" 0;
	setAttr ".phl[1419]" 0;
	setAttr ".phl[1420]" 0;
	setAttr ".phl[1421]" 0;
	setAttr ".phl[1422]" 0;
	setAttr ".phl[1423]" 0;
	setAttr ".phl[1424]" 0;
	setAttr ".phl[1425]" 0;
	setAttr ".phl[1426]" 0;
	setAttr ".phl[1427]" 0;
	setAttr ".phl[1428]" 0;
	setAttr ".phl[1429]" 0;
	setAttr ".phl[1430]" 0;
	setAttr ".phl[1431]" 0;
	setAttr ".phl[1432]" 0;
	setAttr ".phl[1433]" 0;
	setAttr ".phl[1434]" 0;
	setAttr ".phl[1435]" 0;
	setAttr ".phl[1436]" 0;
	setAttr ".phl[1437]" 0;
	setAttr ".phl[1438]" 0;
	setAttr ".phl[1439]" 0;
	setAttr ".phl[1440]" 0;
	setAttr ".phl[1441]" 0;
	setAttr ".phl[1442]" 0;
	setAttr ".phl[1443]" 0;
	setAttr ".phl[1444]" 0;
	setAttr ".phl[1445]" 0;
	setAttr ".phl[1446]" 0;
	setAttr ".phl[1447]" 0;
	setAttr ".phl[1448]" 0;
	setAttr ".phl[1449]" 0;
	setAttr ".phl[1450]" 0;
	setAttr ".phl[1451]" 0;
	setAttr ".phl[1452]" 0;
	setAttr ".phl[1453]" 0;
	setAttr ".phl[1454]" 0;
	setAttr ".phl[1455]" 0;
	setAttr ".phl[1456]" 0;
	setAttr ".phl[1457]" 0;
	setAttr ".phl[1458]" 0;
	setAttr ".phl[1459]" 0;
	setAttr ".phl[1460]" 0;
	setAttr ".phl[1461]" 0;
	setAttr ".phl[1462]" 0;
	setAttr ".phl[1463]" 0;
	setAttr ".phl[1464]" 0;
	setAttr ".phl[1465]" 0;
	setAttr ".phl[1466]" 0;
	setAttr ".phl[1467]" 0;
	setAttr ".phl[1468]" 0;
	setAttr ".phl[1469]" 0;
	setAttr ".phl[1470]" 0;
	setAttr ".phl[1471]" 0;
	setAttr ".phl[1472]" 0;
	setAttr ".phl[1473]" 0;
	setAttr ".phl[1474]" 0;
	setAttr ".phl[1475]" 0;
	setAttr ".phl[1476]" 0;
	setAttr ".phl[1477]" 0;
	setAttr ".phl[1478]" 0;
	setAttr ".phl[1479]" 0;
	setAttr ".phl[1480]" 0;
	setAttr ".phl[1481]" 0;
	setAttr ".phl[1482]" 0;
	setAttr ".phl[1483]" 0;
	setAttr ".phl[1484]" 0;
	setAttr ".phl[1485]" 0;
	setAttr ".phl[1486]" 0;
	setAttr ".phl[1487]" 0;
	setAttr ".phl[1488]" 0;
	setAttr ".phl[1489]" 0;
	setAttr ".phl[1490]" 0;
	setAttr ".phl[1491]" 0;
	setAttr ".phl[1492]" 0;
	setAttr ".phl[1493]" 0;
	setAttr ".phl[1494]" 0;
	setAttr ".phl[1495]" 0;
	setAttr ".phl[1496]" 0;
	setAttr ".phl[1497]" 0;
	setAttr ".phl[1498]" 0;
	setAttr ".phl[1499]" 0;
	setAttr ".phl[1500]" 0;
	setAttr ".phl[1501]" 0;
	setAttr ".phl[1502]" 0;
	setAttr ".phl[1503]" 0;
	setAttr ".phl[1504]" 0;
	setAttr ".phl[1505]" 0;
	setAttr ".phl[1506]" 0;
	setAttr ".phl[1507]" 0;
	setAttr ".phl[1508]" 0;
	setAttr ".phl[1509]" 0;
	setAttr ".phl[1510]" 0;
	setAttr ".phl[1511]" 0;
	setAttr ".phl[1512]" 0;
	setAttr ".phl[1513]" 0;
	setAttr ".phl[1514]" 0;
	setAttr ".phl[1515]" 0;
	setAttr ".phl[1516]" 0;
	setAttr ".phl[1517]" 0;
	setAttr ".phl[1518]" 0;
	setAttr ".phl[1519]" 0;
	setAttr ".phl[1520]" 0;
	setAttr ".phl[1521]" 0;
	setAttr ".phl[1522]" 0;
	setAttr ".phl[1523]" 0;
	setAttr ".phl[1524]" 0;
	setAttr ".phl[1525]" 0;
	setAttr ".phl[1526]" 0;
	setAttr ".phl[1527]" 0;
	setAttr ".phl[1528]" 0;
	setAttr ".phl[1529]" 0;
	setAttr ".phl[1530]" 0;
	setAttr ".phl[1531]" 0;
	setAttr ".phl[1532]" 0;
	setAttr ".phl[1533]" 0;
	setAttr ".phl[1534]" 0;
	setAttr ".phl[1535]" 0;
	setAttr ".phl[1536]" 0;
	setAttr ".phl[1537]" 0;
	setAttr ".phl[1538]" 0;
	setAttr ".phl[1539]" 0;
	setAttr ".phl[1540]" 0;
	setAttr ".phl[1541]" 0;
	setAttr ".phl[1542]" 0;
	setAttr ".phl[1543]" 0;
	setAttr ".phl[1544]" 0;
	setAttr ".phl[1545]" 0;
	setAttr ".phl[1546]" 0;
	setAttr ".phl[1547]" 0;
	setAttr ".phl[1548]" 0;
	setAttr ".phl[1549]" 0;
	setAttr ".phl[1550]" 0;
	setAttr ".phl[1551]" 0;
	setAttr ".phl[1552]" 0;
	setAttr ".phl[1553]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 121
		1 |Ref:spyInfo "main" "main" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "plotted" "plotted" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "upperBodyControl" "upperBodyControl" " -ci 1 -at \"message\""
		
		1 |Ref:spyInfo "pelvisControl" "pelvisControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "fkSpine0" "fkSpine0" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "fkSpine1" "fkSpine1" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "fkSpine2" "fkSpine2" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "fkSpine3" "fkSpine3" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "ikSpine0" "ikSpine0" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "ikSpine1" "ikSpine1" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "ikSpine2" "ikSpine2" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "ikSpine3" "ikSpine3" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "chestParent" "chestParent" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "neckControl" "neckControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "headControl" "headControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lFKshoulderControl" "lFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:spyInfo "lFKshoulder" "lFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lFKelbow" "lFKelbow" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lFKwrist" "lFKwrist" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKshoulder" "lIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKelbow" "lIKelbow" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKwrist" "lIKwrist" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKcontrol" "lIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lWeaponAttach" "lWeaponAttach" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lElbowControl" "lElbowControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKupLeg" "lIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKknee" "lIKknee" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKankle" "lIKankle" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKtoe" "lIKtoe" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lIKtoeEnd" "lIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lFKupLeg" "lFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lFKknee" "lFKknee" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lFKankle" "lFKankle" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lFKtoe" "lFKtoe" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lKneeControl" "lKneeControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lFootControl" "lFootControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "lToeControl" "lToeControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rFKshoulderControl" "rFKshoulderControl" " -ci 1 -at \"message\""
		
		1 |Ref:spyInfo "rFKshoulder" "rFKshoulder" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rFKelbow" "rFKelbow" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rFKwrist" "rFKwrist" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKshoulder" "rIKshoulder" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKelbow" "rIKelbow" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKwrist" "rIKwrist" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKcontrol" "rIKcontrol" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rWeaponAttach" "rWeaponAttach" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rElbowControl" "rElbowControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKupLeg" "rIKupLeg" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKknee" "rIKknee" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKankle" "rIKankle" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKtoe" "rIKtoe" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rIKtoeEnd" "rIKtoeEnd" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rFKupLeg" "rFKupLeg" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rFKknee" "rFKknee" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rFKankle" "rFKankle" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rFKtoe" "rFKtoe" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rKneeControl" "rKneeControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rFootControl" "rFootControl" " -ci 1 -at \"message\""
		1 |Ref:spyInfo "rToeControl" "rToeControl" " -ci 1 -at \"message\""
		2 "|Ref:spyInfo" "overrideEnabled" " 0"
		5 3 "RefRN" "|Ref:spyInfo|Ref:cig_mesh.instObjGroups" "RefRN.placeHolderList[770]" 
		""
		5 3 "RefRN" "|Ref:spyInfo|Ref:head_mesh.instObjGroups" "RefRN.placeHolderList[783]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.main" "RefRN.placeHolderList[784]" ""
		5 4 "RefRN" "|Ref:spyInfo.plotted" "RefRN.placeHolderList[785]" ""
		5 4 "RefRN" "|Ref:spyInfo.upperBodyControl" "RefRN.placeHolderList[786]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.pelvisControl" "RefRN.placeHolderList[787]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.fkSpine0" "RefRN.placeHolderList[788]" ""
		5 4 "RefRN" "|Ref:spyInfo.fkSpine1" "RefRN.placeHolderList[789]" ""
		5 4 "RefRN" "|Ref:spyInfo.fkSpine2" "RefRN.placeHolderList[790]" ""
		5 4 "RefRN" "|Ref:spyInfo.fkSpine3" "RefRN.placeHolderList[791]" ""
		5 4 "RefRN" "|Ref:spyInfo.ikSpine0" "RefRN.placeHolderList[792]" ""
		5 4 "RefRN" "|Ref:spyInfo.ikSpine1" "RefRN.placeHolderList[793]" ""
		5 4 "RefRN" "|Ref:spyInfo.ikSpine2" "RefRN.placeHolderList[794]" ""
		5 4 "RefRN" "|Ref:spyInfo.ikSpine3" "RefRN.placeHolderList[795]" ""
		5 4 "RefRN" "|Ref:spyInfo.chestParent" "RefRN.placeHolderList[796]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.neckControl" "RefRN.placeHolderList[797]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.headControl" "RefRN.placeHolderList[798]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.lFKshoulderControl" "RefRN.placeHolderList[799]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.lFKshoulder" "RefRN.placeHolderList[800]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.lFKelbow" "RefRN.placeHolderList[801]" ""
		5 4 "RefRN" "|Ref:spyInfo.lFKwrist" "RefRN.placeHolderList[802]" ""
		5 4 "RefRN" "|Ref:spyInfo.lIKshoulder" "RefRN.placeHolderList[803]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.lIKelbow" "RefRN.placeHolderList[804]" ""
		5 4 "RefRN" "|Ref:spyInfo.lIKwrist" "RefRN.placeHolderList[805]" ""
		5 4 "RefRN" "|Ref:spyInfo.lIKcontrol" "RefRN.placeHolderList[806]" ""
		
		5 4 "RefRN" "|Ref:spyInfo.lWeaponAttach" "RefRN.placeHolderList[807]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.lElbowControl" "RefRN.placeHolderList[808]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.lIKupLeg" "RefRN.placeHolderList[809]" ""
		5 4 "RefRN" "|Ref:spyInfo.lIKknee" "RefRN.placeHolderList[810]" ""
		5 4 "RefRN" "|Ref:spyInfo.lIKankle" "RefRN.placeHolderList[811]" ""
		5 4 "RefRN" "|Ref:spyInfo.lIKtoe" "RefRN.placeHolderList[812]" ""
		5 4 "RefRN" "|Ref:spyInfo.lIKtoeEnd" "RefRN.placeHolderList[813]" ""
		
		5 4 "RefRN" "|Ref:spyInfo.lFKupLeg" "RefRN.placeHolderList[814]" ""
		5 4 "RefRN" "|Ref:spyInfo.lFKknee" "RefRN.placeHolderList[815]" ""
		5 4 "RefRN" "|Ref:spyInfo.lFKankle" "RefRN.placeHolderList[816]" ""
		5 4 "RefRN" "|Ref:spyInfo.lFKtoe" "RefRN.placeHolderList[817]" ""
		5 4 "RefRN" "|Ref:spyInfo.lKneeControl" "RefRN.placeHolderList[818]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.lFootControl" "RefRN.placeHolderList[819]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.lToeControl" "RefRN.placeHolderList[820]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.rFKshoulderControl" "RefRN.placeHolderList[821]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.rFKshoulder" "RefRN.placeHolderList[822]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.rFKelbow" "RefRN.placeHolderList[823]" ""
		5 4 "RefRN" "|Ref:spyInfo.rFKwrist" "RefRN.placeHolderList[824]" ""
		5 4 "RefRN" "|Ref:spyInfo.rIKshoulder" "RefRN.placeHolderList[825]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.rIKelbow" "RefRN.placeHolderList[826]" ""
		5 4 "RefRN" "|Ref:spyInfo.rIKwrist" "RefRN.placeHolderList[827]" ""
		5 4 "RefRN" "|Ref:spyInfo.rIKcontrol" "RefRN.placeHolderList[828]" ""
		
		5 4 "RefRN" "|Ref:spyInfo.rWeaponAttach" "RefRN.placeHolderList[829]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.rElbowControl" "RefRN.placeHolderList[830]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.rIKupLeg" "RefRN.placeHolderList[831]" ""
		5 4 "RefRN" "|Ref:spyInfo.rIKknee" "RefRN.placeHolderList[832]" ""
		5 4 "RefRN" "|Ref:spyInfo.rIKankle" "RefRN.placeHolderList[833]" ""
		5 4 "RefRN" "|Ref:spyInfo.rIKtoe" "RefRN.placeHolderList[834]" ""
		5 4 "RefRN" "|Ref:spyInfo.rIKtoeEnd" "RefRN.placeHolderList[835]" ""
		
		5 4 "RefRN" "|Ref:spyInfo.rFKupLeg" "RefRN.placeHolderList[836]" ""
		5 4 "RefRN" "|Ref:spyInfo.rFKknee" "RefRN.placeHolderList[837]" ""
		5 4 "RefRN" "|Ref:spyInfo.rFKankle" "RefRN.placeHolderList[838]" ""
		5 4 "RefRN" "|Ref:spyInfo.rFKtoe" "RefRN.placeHolderList[839]" ""
		5 4 "RefRN" "|Ref:spyInfo.rKneeControl" "RefRN.placeHolderList[840]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.rFootControl" "RefRN.placeHolderList[841]" 
		""
		5 4 "RefRN" "|Ref:spyInfo.rToeControl" "RefRN.placeHolderList[842]" 
		""
		"Ref:HeadRN" 1
		5 3 "RefRN" "|Ref:spyInfo|Ref:Head:spyHeadMesh.instObjGroups" "RefRN.placeHolderList[1]" 
		""
		"RefRN" 829
		0 "|RefRNfosterParent1|Ref:prp_cig_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_wristOuter_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_wristInner_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_wristOuter_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_wristInner_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pantsFront_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pantsBack_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pantsFront_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_pantsBack_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_0_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_0_L_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_front_0_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:prp_coat_back_0_R_parentConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:spyInfo_group|Ref:bip_pelvis" 
		"-s -r "
		1 Ref:bones "zooSetMenuHidden" "zooSetMenuHidden" " -ci 1 -h 1 -min 0 -max 1 -at \"bool\""
		
		1 Ref:bones_nohelpers "zooSetMenuHidden" "zooSetMenuHidden" " -ci 1 -h 1 -min 0 -max 1 -at \"bool\""
		
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"translate" " -type \"double3\" 2.08143e-006 2.021689 1.05164e-005"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"translate" " -type \"double3\" 6.08479e-006 1.754608 7.42818e-005"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"translate" " -type \"double3\" -3.87174e-005 1.22694 3.15755e-005"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"translate" " -type \"double3\" 6.84782e-005 2.372336 -1.13923e-005"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"translate" " -type \"double3\" -6.60395e-005 1.580065 2.60083e-005"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"translate" " -type \"double3\" 1.02944e-005 1.690671 3.33901e-005"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"translate" " -type \"double3\" -3.13436e-005 1.423406 -2.36993e-005"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"translate" " -type \"double3\" -3.54969e-005 1.437795 -5.67393e-006"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"translate" " -type \"double3\" -7.12717e-006 1.059421 2.06545e-005"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"translateX" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"translateY" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"translateZ" " -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R" "translate" 
		" -type \"double3\" -8.061433 -0.727441 -1.153581"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R" "translateX" 
		" -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R" "translateY" 
		" -av"
		2 "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R" "translateZ" 
		" -av"
		2 "|Ref:spyInfo_group|Ref:body_mesh" "instObjGroups.objectGroups" " -s 3"
		
		2 "|Ref:spyInfo_group|Ref:body_mesh" "instObjGroups.objectGroups[469].objectGrpCompList" 
		" -type \"componentList\" 0"
		2 "|Ref:spyInfo_group|Ref:body_mesh" "instObjGroups.objectGroups[470].objectGrpCompList" 
		" -type \"componentList\" 0"
		2 "|Ref:spyInfo_group|Ref:body_mesh" "instObjGroups.objectGroups[471].objectGrpCompList" 
		" -type \"componentList\" 0"
		2 "|Ref:spyInfo_group|Ref:body_mesh|Ref:body_meshShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:bones" "zooSetMenuHidden" " 0"
		2 "Ref:skeleton_layer" "visibility" " 1"
		2 "Ref:bones_nohelpers" "zooSetMenuHidden" " 0"
		3 "Ref:skinCluster4.outputGeometry[0]" "|Ref:spyInfo_group|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[843]" 
		""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[844]" 
		""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[845]" 
		""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[846]" 
		""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.rotatePivotTranslate" 
		"RefRN.placeHolderList[847]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[848]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[849]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[850]" 
		""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[851]" 
		""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[852]" 
		""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[853]" 
		""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[854]" 
		""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateX" 
		"RefRN.placeHolderList[855]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateY" 
		"RefRN.placeHolderList[856]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" 
		"RefRN.placeHolderList[857]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" 
		"RefRN.placeHolderList[858]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[859]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" 
		"RefRN.placeHolderList[860]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" 
		"RefRN.placeHolderList[861]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" 
		"RefRN.placeHolderList[862]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" 
		"RefRN.placeHolderList[863]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" 
		"RefRN.placeHolderList[864]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[865]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[866]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[867]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[868]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[869]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[870]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[871]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[872]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[873]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[874]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[875]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[876]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[877]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[878]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[879]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[880]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[881]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[882]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[883]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[884]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[885]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[886]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[887]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[888]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[889]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[890]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[891]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[892]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[893]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[894]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[895]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[896]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[897]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[898]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[899]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[900]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[901]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[902]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[903]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[904]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[905]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[906]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[907]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[908]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[909]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[910]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[911]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[912]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[913]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[914]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[915]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[916]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[917]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[918]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[919]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[920]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[921]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[922]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[923]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[924]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[925]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[926]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.translateX" 
		"RefRN.placeHolderList[927]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.translateY" 
		"RefRN.placeHolderList[928]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.translateZ" 
		"RefRN.placeHolderList[929]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotatePivot" 
		"RefRN.placeHolderList[930]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotatePivotTranslate" 
		"RefRN.placeHolderList[931]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotateX" 
		"RefRN.placeHolderList[932]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotateY" 
		"RefRN.placeHolderList[933]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotateZ" 
		"RefRN.placeHolderList[934]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.rotateOrder" 
		"RefRN.placeHolderList[935]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.jointOrient" 
		"RefRN.placeHolderList[936]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head|Ref:prp_cig.parentInverseMatrix" 
		"RefRN.placeHolderList[937]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[938]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[939]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[940]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[941]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[942]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[943]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[944]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[945]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[946]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[947]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[948]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[949]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[950]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[951]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[952]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[953]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[954]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[955]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[956]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[957]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[958]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[959]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[960]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[961]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[962]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[963]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[964]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[965]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[966]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[967]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[968]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[969]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[970]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[971]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[972]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[973]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[974]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[975]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[976]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[977]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[978]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[979]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[980]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[981]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[982]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[983]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[984]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[985]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[986]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[987]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[988]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[989]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[990]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[991]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[992]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[993]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[994]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[995]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[996]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[997]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[998]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[999]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[1000]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[1001]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[1002]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1003]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[1004]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[1005]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[1006]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[1007]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1008]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[1009]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[1010]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[1011]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[1012]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[1013]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1014]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[1015]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[1016]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[1017]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[1018]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1019]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[1020]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[1021]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[1022]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[1023]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[1024]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1025]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[1026]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[1027]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[1028]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[1029]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1030]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[1031]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[1032]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[1033]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[1034]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[1035]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1036]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[1037]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[1038]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[1039]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[1040]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1041]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[1042]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[1043]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[1044]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[1045]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[1046]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1047]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[1048]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[1049]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[1050]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[1051]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1052]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[1053]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[1054]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[1055]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[1056]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[1057]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1058]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[1059]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[1060]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[1061]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[1062]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1063]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[1064]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[1065]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[1066]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[1067]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[1068]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1069]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[1070]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[1071]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[1072]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[1073]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1074]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[1075]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[1076]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[1077]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[1078]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[1079]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1080]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[1081]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[1082]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[1083]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[1084]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1085]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[1086]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[1087]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[1088]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[1089]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[1090]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1091]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[1092]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[1093]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[1094]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[1095]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1096]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[1097]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[1098]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[1099]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[1100]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[1101]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1102]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[1103]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[1104]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[1105]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[1106]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1107]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[1108]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[1109]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[1110]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[1111]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[1112]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1113]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[1114]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[1115]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[1116]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[1117]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1118]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[1119]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[1120]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[1121]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[1122]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[1123]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1124]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[1125]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[1126]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[1127]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[1128]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1129]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[1130]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[1131]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[1132]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[1133]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[1134]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1135]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[1136]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[1137]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[1138]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[1139]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1140]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[1141]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[1142]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[1143]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[1144]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[1145]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1146]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.translateX" 
		"RefRN.placeHolderList[1147]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.translateY" 
		"RefRN.placeHolderList[1148]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.translateZ" 
		"RefRN.placeHolderList[1149]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotatePivot" 
		"RefRN.placeHolderList[1150]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1151]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotateX" 
		"RefRN.placeHolderList[1152]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotateY" 
		"RefRN.placeHolderList[1153]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotateZ" 
		"RefRN.placeHolderList[1154]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.rotateOrder" 
		"RefRN.placeHolderList[1155]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.jointOrient" 
		"RefRN.placeHolderList[1156]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristOuter_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1157]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.translateX" 
		"RefRN.placeHolderList[1158]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.translateY" 
		"RefRN.placeHolderList[1159]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.translateZ" 
		"RefRN.placeHolderList[1160]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotatePivot" 
		"RefRN.placeHolderList[1161]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1162]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotateX" 
		"RefRN.placeHolderList[1163]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotateY" 
		"RefRN.placeHolderList[1164]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotateZ" 
		"RefRN.placeHolderList[1165]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.rotateOrder" 
		"RefRN.placeHolderList[1166]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.jointOrient" 
		"RefRN.placeHolderList[1167]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:prp_wristInner_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1168]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[1169]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[1170]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1171]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[1172]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[1173]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[1174]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[1175]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[1176]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[1177]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1178]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[1179]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[1180]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[1181]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[1182]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[1183]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[1184]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1185]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1186]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[1187]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[1188]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[1189]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[1190]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[1191]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1192]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[1193]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[1194]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[1195]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[1196]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[1197]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[1198]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[1199]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[1200]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[1201]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1202]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[1203]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[1204]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1205]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[1206]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[1207]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[1208]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[1209]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[1210]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[1211]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1212]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[1213]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[1214]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[1215]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[1216]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1217]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[1218]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[1219]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[1220]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[1221]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[1222]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1223]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[1224]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[1225]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[1226]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[1227]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1228]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[1229]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[1230]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[1231]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[1232]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[1233]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1234]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[1235]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[1236]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[1237]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[1238]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1239]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[1240]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[1241]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[1242]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[1243]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[1244]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1245]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[1246]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[1247]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[1248]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[1249]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1250]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[1251]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[1252]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[1253]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[1254]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[1255]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1256]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[1257]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[1258]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[1259]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[1260]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1261]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[1262]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[1263]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[1264]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[1265]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[1266]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1267]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[1268]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[1269]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[1270]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[1271]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1272]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[1273]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[1274]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[1275]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[1276]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[1277]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1278]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[1279]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[1280]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[1281]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[1282]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1283]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[1284]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[1285]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[1286]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[1287]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[1288]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1289]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[1290]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[1291]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[1292]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[1293]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1294]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[1295]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[1296]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[1297]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[1298]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[1299]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1300]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[1301]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[1302]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[1303]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[1304]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1305]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[1306]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[1307]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[1308]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[1309]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[1310]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1311]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[1312]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[1313]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[1314]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[1315]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1316]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[1317]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[1318]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[1319]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[1320]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[1321]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1322]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[1323]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[1324]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[1325]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[1326]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1327]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[1328]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[1329]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[1330]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[1331]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[1332]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1333]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[1334]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[1335]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[1336]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[1337]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1338]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[1339]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[1340]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[1341]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[1342]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[1343]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1344]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[1345]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[1346]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[1347]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[1348]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1349]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[1350]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[1351]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[1352]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[1353]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[1354]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1355]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[1356]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[1357]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[1358]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[1359]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1360]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[1361]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[1362]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[1363]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[1364]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[1365]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1366]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[1367]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[1368]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[1369]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[1370]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1371]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[1372]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[1373]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[1374]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[1375]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[1376]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1377]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.translateX" 
		"RefRN.placeHolderList[1378]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.translateY" 
		"RefRN.placeHolderList[1379]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.translateZ" 
		"RefRN.placeHolderList[1380]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotatePivot" 
		"RefRN.placeHolderList[1381]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1382]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotateX" 
		"RefRN.placeHolderList[1383]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotateY" 
		"RefRN.placeHolderList[1384]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotateZ" 
		"RefRN.placeHolderList[1385]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.rotateOrder" 
		"RefRN.placeHolderList[1386]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.jointOrient" 
		"RefRN.placeHolderList[1387]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristOuter_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1388]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.translateX" 
		"RefRN.placeHolderList[1389]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.translateY" 
		"RefRN.placeHolderList[1390]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.translateZ" 
		"RefRN.placeHolderList[1391]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotatePivot" 
		"RefRN.placeHolderList[1392]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1393]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotateX" 
		"RefRN.placeHolderList[1394]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotateY" 
		"RefRN.placeHolderList[1395]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotateZ" 
		"RefRN.placeHolderList[1396]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.rotateOrder" 
		"RefRN.placeHolderList[1397]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.jointOrient" 
		"RefRN.placeHolderList[1398]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:prp_wristInner_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1399]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[1400]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[1401]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[1402]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[1403]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[1404]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[1405]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1406]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1407]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" 
		"RefRN.placeHolderList[1408]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" 
		"RefRN.placeHolderList[1409]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" 
		"RefRN.placeHolderList[1410]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" 
		"RefRN.placeHolderList[1411]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" 
		"RefRN.placeHolderList[1412]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1413]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[1414]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[1415]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[1416]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[1417]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[1418]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1419]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[1420]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[1421]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[1422]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[1423]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[1424]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1425]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[1426]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[1427]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[1428]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[1429]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[1430]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1431]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.translateX" 
		"RefRN.placeHolderList[1432]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.translateY" 
		"RefRN.placeHolderList[1433]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.translateZ" 
		"RefRN.placeHolderList[1434]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotatePivot" 
		"RefRN.placeHolderList[1435]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1436]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotateX" 
		"RefRN.placeHolderList[1437]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotateY" 
		"RefRN.placeHolderList[1438]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotateZ" 
		"RefRN.placeHolderList[1439]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.rotateOrder" 
		"RefRN.placeHolderList[1440]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.jointOrient" 
		"RefRN.placeHolderList[1441]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsFront_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1442]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.translateX" 
		"RefRN.placeHolderList[1443]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.translateY" 
		"RefRN.placeHolderList[1444]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.translateZ" 
		"RefRN.placeHolderList[1445]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotatePivot" 
		"RefRN.placeHolderList[1446]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1447]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotateX" 
		"RefRN.placeHolderList[1448]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotateY" 
		"RefRN.placeHolderList[1449]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotateZ" 
		"RefRN.placeHolderList[1450]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.rotateOrder" 
		"RefRN.placeHolderList[1451]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.jointOrient" 
		"RefRN.placeHolderList[1452]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:prp_pantsBack_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1453]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[1454]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[1455]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[1456]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[1457]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[1458]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[1459]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1460]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1461]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" 
		"RefRN.placeHolderList[1462]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" 
		"RefRN.placeHolderList[1463]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" 
		"RefRN.placeHolderList[1464]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" 
		"RefRN.placeHolderList[1465]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" 
		"RefRN.placeHolderList[1466]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1467]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[1468]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[1469]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[1470]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[1471]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[1472]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1473]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[1474]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[1475]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[1476]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[1477]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[1478]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1479]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[1480]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[1481]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[1482]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[1483]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[1484]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1485]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.translateX" 
		"RefRN.placeHolderList[1486]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.translateY" 
		"RefRN.placeHolderList[1487]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.translateZ" 
		"RefRN.placeHolderList[1488]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotatePivot" 
		"RefRN.placeHolderList[1489]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1490]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotateX" 
		"RefRN.placeHolderList[1491]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotateY" 
		"RefRN.placeHolderList[1492]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotateZ" 
		"RefRN.placeHolderList[1493]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.rotateOrder" 
		"RefRN.placeHolderList[1494]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.jointOrient" 
		"RefRN.placeHolderList[1495]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsFront_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1496]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.translateX" 
		"RefRN.placeHolderList[1497]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.translateY" 
		"RefRN.placeHolderList[1498]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.translateZ" 
		"RefRN.placeHolderList[1499]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotatePivot" 
		"RefRN.placeHolderList[1500]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1501]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotateX" 
		"RefRN.placeHolderList[1502]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotateY" 
		"RefRN.placeHolderList[1503]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotateZ" 
		"RefRN.placeHolderList[1504]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.rotateOrder" 
		"RefRN.placeHolderList[1505]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.jointOrient" 
		"RefRN.placeHolderList[1506]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:prp_pantsBack_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1507]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateX" 
		"RefRN.placeHolderList[1508]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateY" 
		"RefRN.placeHolderList[1509]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.translateZ" 
		"RefRN.placeHolderList[1510]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotatePivot" 
		"RefRN.placeHolderList[1511]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1512]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateX" 
		"RefRN.placeHolderList[1513]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateY" 
		"RefRN.placeHolderList[1514]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateZ" 
		"RefRN.placeHolderList[1515]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.rotateOrder" 
		"RefRN.placeHolderList[1516]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.jointOrient" 
		"RefRN.placeHolderList[1517]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1518]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateX" 
		"RefRN.placeHolderList[1519]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateY" 
		"RefRN.placeHolderList[1520]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.translateZ" 
		"RefRN.placeHolderList[1521]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotatePivot" 
		"RefRN.placeHolderList[1522]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[1523]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateX" 
		"RefRN.placeHolderList[1524]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateY" 
		"RefRN.placeHolderList[1525]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateZ" 
		"RefRN.placeHolderList[1526]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.rotateOrder" 
		"RefRN.placeHolderList[1527]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.jointOrient" 
		"RefRN.placeHolderList[1528]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[1529]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateX" 
		"RefRN.placeHolderList[1530]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateY" 
		"RefRN.placeHolderList[1531]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.translateZ" 
		"RefRN.placeHolderList[1532]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotatePivot" 
		"RefRN.placeHolderList[1533]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1534]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateX" 
		"RefRN.placeHolderList[1535]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateY" 
		"RefRN.placeHolderList[1536]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateZ" 
		"RefRN.placeHolderList[1537]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.rotateOrder" 
		"RefRN.placeHolderList[1538]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.jointOrient" 
		"RefRN.placeHolderList[1539]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_front_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1540]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateX" 
		"RefRN.placeHolderList[1541]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateY" 
		"RefRN.placeHolderList[1542]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.translateZ" 
		"RefRN.placeHolderList[1543]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotatePivot" 
		"RefRN.placeHolderList[1544]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[1545]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateX" 
		"RefRN.placeHolderList[1546]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateY" 
		"RefRN.placeHolderList[1547]" ""
		5 4 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateZ" 
		"RefRN.placeHolderList[1548]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.rotateOrder" 
		"RefRN.placeHolderList[1549]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.jointOrient" 
		"RefRN.placeHolderList[1550]" ""
		5 3 "RefRN" "|Ref:spyInfo_group|Ref:bip_pelvis|Ref:prp_coat_back_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[1551]" ""
		5 0 "RefRN" "Ref:skinCluster4.outputGeometry[0]" "|Ref:spyInfo_group|Ref:body_mesh|Ref:body_meshShape.inMesh" 
		"RefRN.placeHolderList[1552]" "RefRN.placeHolderList[1553]" "Ref:body_meshShape.i";
lockNode -l 1 ;
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	setAttr ".ihi" 0;
	setAttr -s 81 ".dsm";
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
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.97782545333777926 -0.20942154331578924 0
		 0 0.20942154331578924 -0.97782545333777926 0 0 68.544417095896193 -4.2637999397477371 1;
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
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.27820185";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.27820185";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.27820185";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/17.27820185";
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
createNode expression -n "fkParent8";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent9";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode expression -n "fkParent10";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]= 1 - .I[0]";
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode objectSet -n "spy";
	addAttr -ci true -sn "version" -ln "version" -at "long";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "bgImage" -ln "bgImage" -dt "string";
	addAttr -ci true -sn "bgColour" -ln "bgColour" -dt "string";
	addAttr -ci true -sn "filepath" -ln "filepath" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 68 ".dnsm";
	setAttr ".an" -type "string" "zooPickerCharacter";
	setAttr ".name" -type "string" "spy";
	setAttr ".bgImage" -type "string" "pickerGrid.bmp";
	setAttr ".bgColour" -type "string" "0,0,0";
lockNode -l 1 ;
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
	setAttr ".posSize" -type "string" "105,400;39,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "main";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "L_foot";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "188,396;45,14";
	setAttr ".colour" -type "string" "0.675000011921,0.433467030525,0.167400017381";
	setAttr ".label" -type "string" "L_foot";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "L_toe";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "203,415;42,14";
	setAttr ".colour" -type "string" "0.675000011921,0.433467030525,0.167400017381";
	setAttr ".label" -type "string" "L_toe";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "R_foot";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "16,396;45,14";
	setAttr ".colour" -type "string" "0.675000011921,0.433467030525,0.167400017381";
	setAttr ".label" -type "string" "R_foot";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "R_toe";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "6,415;42,14";
	setAttr ".colour" -type "string" "0.675000011921,0.433467030525,0.167400017381";
	setAttr ".label" -type "string" "R_toe";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "knee";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "176,370;43,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431586921215,0.164700016379";
	setAttr ".label" -type "string" "knee";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "knee1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "37,370;43,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431586921215,0.164700016379";
	setAttr ".label" -type "string" "knee";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "hip";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "118,335;32,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431586921215,0.164700016379";
	setAttr ".label" -type "string" "hip";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "main_hip";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "103,318;63,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431586921215,0.164700016379";
	setAttr ".label" -type "string" "main_hip";
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
	setAttr ".posSize" -type "string" "24,240;40,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431586921215,0.164700016379";
	setAttr ".label" -type "string" "elbow";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "elbow1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "188,247;40,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431586921215,0.164700016379";
	setAttr ".label" -type "string" "elbow";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "spine_0";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "106,269;56,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "spine_0";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "spine_1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "106,251;56,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "spine_1";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "spine_2";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "106,232;56,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "spine_2";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "spine_3";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "106,214;56,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "spine_3";
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
	setAttr ".posSize" -type "string" "113,176;43,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "neck";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "head";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "113,155;43,20";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "head";
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
	setAttr ".posSize" -type "string" "168,198;67,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "shoulder";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "shoulder1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "32,198;67,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "shoulder";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "tranHand";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "6,276;56,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "tranHand";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "rotHand";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "1,294;56,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "rotHand";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "tranHand1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "183,276;56,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "tranHand";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "rotHand1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "193,294;56,14";
	setAttr ".colour" -type "string" "0.675000011921,0.431541025639,0.160649985075";
	setAttr ".label" -type "string" "rotHand";
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
	setAttr ".posSize" -type "string" "169,303;7,20";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "159,293;7,20";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "102,293;7,20";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "92,303;7,20";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "161,179;22,7";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "74,88;14,14";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "56,63;14,14";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "39,59;14,14";
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
	setAttr ".posSize" -type "string" "22,65;14,14";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "6,72;14,14";
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
	setAttr ".posSize" -type "string" "74,107;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "74,122;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "74,137;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "56,81;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "56,97;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "56,113;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "39,77;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "39,93;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "39,109;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "22,84;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "22,99;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "22,114;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "6,91;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "6,107;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "6,123;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "161,88;14,14";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "178,63;14,14";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "197,59;14,14";
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
	setAttr ".posSize" -type "string" "216,65;14,14";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "232,72;14,14";
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
	setAttr ".posSize" -type "string" "232,90;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "232,107;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "232,124;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "216,84;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "216,99;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "216,114;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "197,77;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "197,93;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "197,109;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "178,81;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "178,97;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "178,113;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "161,107;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "161,122;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "161,137;14,14";
	setAttr ".colour" -type "string" "0.0,0.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
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
	setAttr -s 81 ".dsm";
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
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[843]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[844]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[845]";
connectAttr "RefRN.phl[846]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[847]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[848]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "RefRN.phl[849]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[850]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[851]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[852]";
connectAttr "RefRN.phl[853]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[854]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[855]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[856]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[857]";
connectAttr "RefRN.phl[858]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[859]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[860]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[861]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[862]";
connectAttr "RefRN.phl[863]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[864]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[865]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[866]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[867]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[868]";
connectAttr "RefRN.phl[869]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[870]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[871]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[872]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[873]";
connectAttr "RefRN.phl[874]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[875]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[876]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[877]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[878]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[879]";
connectAttr "RefRN.phl[880]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[881]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[882]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[883]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[884]";
connectAttr "RefRN.phl[885]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[886]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[887]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[888]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[889]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[890]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[891]";
connectAttr "RefRN.phl[892]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[893]" "neckControlLockParent_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[894]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "RefRN.phl[895]" "neckControlLockParent_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[896]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[897]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[898]";
connectAttr "RefRN.phl[899]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[900]" "neckControlLockParent_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[901]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[902]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "RefRN.phl[903]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[904]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[905]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[906]" "headControlLockParent_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[907]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[908]" "headControlLockParent_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[909]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[910]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[911]";
connectAttr "RefRN.phl[912]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[913]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[914]" "headControlLockParent_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[915]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[916]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "RefRN.phl[917]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[918]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[919]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[920]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[921]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[922]";
connectAttr "RefRN.phl[923]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[924]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[925]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[926]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "Ref:prp_cig_parentConstraint1.ctx" "RefRN.phl[927]";
connectAttr "Ref:prp_cig_parentConstraint1.cty" "RefRN.phl[928]";
connectAttr "Ref:prp_cig_parentConstraint1.ctz" "RefRN.phl[929]";
connectAttr "RefRN.phl[930]" "Ref:prp_cig_parentConstraint1.crp";
connectAttr "RefRN.phl[931]" "Ref:prp_cig_parentConstraint1.crt";
connectAttr "Ref:prp_cig_parentConstraint1.crx" "RefRN.phl[932]";
connectAttr "Ref:prp_cig_parentConstraint1.cry" "RefRN.phl[933]";
connectAttr "Ref:prp_cig_parentConstraint1.crz" "RefRN.phl[934]";
connectAttr "RefRN.phl[935]" "Ref:prp_cig_parentConstraint1.cro";
connectAttr "RefRN.phl[936]" "Ref:prp_cig_parentConstraint1.cjo";
connectAttr "RefRN.phl[937]" "Ref:prp_cig_parentConstraint1.cpim";
connectAttr "RefRN.phl[938]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[939]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[940]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[941]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[942]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[943]";
connectAttr "RefRN.phl[944]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[945]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[946]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[947]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[948]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[949]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[950]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[951]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[952]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[953]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[954]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[955]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[956]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[957]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[958]";
connectAttr "RefRN.phl[959]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[960]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[961]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[962]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[963]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[964]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[965]";
connectAttr "RefRN.phl[966]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[967]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[968]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[969]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[970]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[971]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[972]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[973]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[974]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[975]";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[976]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[977]";
connectAttr "RefRN.phl[978]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[979]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[980]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[981]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[982]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[983]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[984]";
connectAttr "RefRN.phl[985]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[986]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[987]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[988]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[989]";
connectAttr "RefRN.phl[990]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[991]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[992]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[993]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[994]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[995]";
connectAttr "RefRN.phl[996]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[997]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[998]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[999]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[1000]";
connectAttr "RefRN.phl[1001]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1002]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1003]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[1004]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[1005]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[1006]";
connectAttr "RefRN.phl[1007]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1008]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[1009]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[1010]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[1011]";
connectAttr "RefRN.phl[1012]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1013]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1014]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[1015]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[1016]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[1017]";
connectAttr "RefRN.phl[1018]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1019]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[1020]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[1021]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[1022]";
connectAttr "RefRN.phl[1023]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1024]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1025]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[1026]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[1027]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[1028]";
connectAttr "RefRN.phl[1029]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1030]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[1031]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[1032]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[1033]";
connectAttr "RefRN.phl[1034]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1035]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1036]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[1037]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[1038]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[1039]";
connectAttr "RefRN.phl[1040]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1041]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[1042]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[1043]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[1044]";
connectAttr "RefRN.phl[1045]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1046]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1047]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[1048]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[1049]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[1050]";
connectAttr "RefRN.phl[1051]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1052]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[1053]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[1054]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[1055]";
connectAttr "RefRN.phl[1056]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1057]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1058]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[1059]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[1060]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[1061]";
connectAttr "RefRN.phl[1062]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1063]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[1064]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[1065]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[1066]";
connectAttr "RefRN.phl[1067]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1068]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1069]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[1070]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[1071]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[1072]";
connectAttr "RefRN.phl[1073]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1074]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[1075]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[1076]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[1077]";
connectAttr "RefRN.phl[1078]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1079]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1080]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[1081]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[1082]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[1083]";
connectAttr "RefRN.phl[1084]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1085]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[1086]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[1087]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[1088]";
connectAttr "RefRN.phl[1089]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1090]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1091]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[1092]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[1093]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[1094]";
connectAttr "RefRN.phl[1095]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1096]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[1097]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[1098]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[1099]";
connectAttr "RefRN.phl[1100]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1101]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1102]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[1103]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[1104]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[1105]";
connectAttr "RefRN.phl[1106]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1107]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[1108]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[1109]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[1110]";
connectAttr "RefRN.phl[1111]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1112]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1113]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[1114]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[1115]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[1116]";
connectAttr "RefRN.phl[1117]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1118]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[1119]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[1120]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[1121]";
connectAttr "RefRN.phl[1122]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1123]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1124]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[1125]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[1126]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[1127]";
connectAttr "RefRN.phl[1128]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1129]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[1130]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[1131]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[1132]";
connectAttr "RefRN.phl[1133]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1134]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1135]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[1136]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[1137]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[1138]";
connectAttr "RefRN.phl[1139]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1140]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[1141]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[1142]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[1143]";
connectAttr "RefRN.phl[1144]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1145]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1146]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.ctx" "RefRN.phl[1147]";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.cty" "RefRN.phl[1148]";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.ctz" "RefRN.phl[1149]";
connectAttr "RefRN.phl[1150]" "Ref:prp_wristOuter_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1151]" "Ref:prp_wristOuter_L_parentConstraint1.crt";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.crx" "RefRN.phl[1152]";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.cry" "RefRN.phl[1153]";
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.crz" "RefRN.phl[1154]";
connectAttr "RefRN.phl[1155]" "Ref:prp_wristOuter_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1156]" "Ref:prp_wristOuter_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1157]" "Ref:prp_wristOuter_L_parentConstraint1.cpim";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.ctx" "RefRN.phl[1158]";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.cty" "RefRN.phl[1159]";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.ctz" "RefRN.phl[1160]";
connectAttr "RefRN.phl[1161]" "Ref:prp_wristInner_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1162]" "Ref:prp_wristInner_L_parentConstraint1.crt";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.crx" "RefRN.phl[1163]";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.cry" "RefRN.phl[1164]";
connectAttr "Ref:prp_wristInner_L_parentConstraint1.crz" "RefRN.phl[1165]";
connectAttr "RefRN.phl[1166]" "Ref:prp_wristInner_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1167]" "Ref:prp_wristInner_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1168]" "Ref:prp_wristInner_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[1169]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[1170]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[1171]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[1172]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[1173]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[1174]";
connectAttr "RefRN.phl[1175]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[1176]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1177]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[1178]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[1179]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1180]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1181]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[1182]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[1183]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[1184]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[1185]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[1186]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[1187]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[1188]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[1189]";
connectAttr "RefRN.phl[1190]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[1191]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[1192]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[1193]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[1194]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[1195]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[1196]";
connectAttr "RefRN.phl[1197]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[1198]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[1199]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1200]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[1201]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[1202]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[1203]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[1204]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[1205]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[1206]";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[1207]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[1208]";
connectAttr "RefRN.phl[1209]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[1210]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1211]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[1212]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[1213]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[1214]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[1215]";
connectAttr "RefRN.phl[1216]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1217]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[1218]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[1219]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[1220]";
connectAttr "RefRN.phl[1221]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1222]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1223]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[1224]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[1225]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[1226]";
connectAttr "RefRN.phl[1227]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1228]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[1229]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[1230]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[1231]";
connectAttr "RefRN.phl[1232]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1233]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1234]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[1235]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[1236]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[1237]";
connectAttr "RefRN.phl[1238]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1239]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[1240]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[1241]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[1242]";
connectAttr "RefRN.phl[1243]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1244]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1245]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[1246]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[1247]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[1248]";
connectAttr "RefRN.phl[1249]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1250]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[1251]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[1252]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[1253]";
connectAttr "RefRN.phl[1254]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1255]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1256]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[1257]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[1258]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[1259]";
connectAttr "RefRN.phl[1260]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1261]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[1262]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[1263]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[1264]";
connectAttr "RefRN.phl[1265]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1266]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1267]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[1268]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[1269]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[1270]";
connectAttr "RefRN.phl[1271]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1272]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[1273]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[1274]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[1275]";
connectAttr "RefRN.phl[1276]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1277]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1278]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[1279]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[1280]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[1281]";
connectAttr "RefRN.phl[1282]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1283]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[1284]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[1285]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[1286]";
connectAttr "RefRN.phl[1287]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1288]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1289]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[1290]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[1291]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[1292]";
connectAttr "RefRN.phl[1293]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1294]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[1295]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[1296]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[1297]";
connectAttr "RefRN.phl[1298]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1299]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1300]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[1301]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[1302]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[1303]";
connectAttr "RefRN.phl[1304]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1305]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[1306]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[1307]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[1308]";
connectAttr "RefRN.phl[1309]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1310]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1311]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[1312]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[1313]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[1314]";
connectAttr "RefRN.phl[1315]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1316]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[1317]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[1318]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[1319]";
connectAttr "RefRN.phl[1320]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1321]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1322]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[1323]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[1324]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[1325]";
connectAttr "RefRN.phl[1326]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1327]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[1328]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[1329]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[1330]";
connectAttr "RefRN.phl[1331]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1332]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1333]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[1334]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[1335]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[1336]";
connectAttr "RefRN.phl[1337]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1338]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[1339]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[1340]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[1341]";
connectAttr "RefRN.phl[1342]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1343]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1344]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[1345]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[1346]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[1347]";
connectAttr "RefRN.phl[1348]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1349]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[1350]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[1351]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[1352]";
connectAttr "RefRN.phl[1353]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1354]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1355]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[1356]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[1357]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[1358]";
connectAttr "RefRN.phl[1359]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1360]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[1361]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[1362]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[1363]";
connectAttr "RefRN.phl[1364]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1365]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1366]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[1367]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[1368]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[1369]";
connectAttr "RefRN.phl[1370]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1371]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[1372]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[1373]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[1374]";
connectAttr "RefRN.phl[1375]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1376]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1377]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.ctx" "RefRN.phl[1378]";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.cty" "RefRN.phl[1379]";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.ctz" "RefRN.phl[1380]";
connectAttr "RefRN.phl[1381]" "Ref:prp_wristOuter_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1382]" "Ref:prp_wristOuter_R_parentConstraint1.crt";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.crx" "RefRN.phl[1383]";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.cry" "RefRN.phl[1384]";
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.crz" "RefRN.phl[1385]";
connectAttr "RefRN.phl[1386]" "Ref:prp_wristOuter_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1387]" "Ref:prp_wristOuter_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1388]" "Ref:prp_wristOuter_R_parentConstraint1.cpim";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.ctx" "RefRN.phl[1389]";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.cty" "RefRN.phl[1390]";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.ctz" "RefRN.phl[1391]";
connectAttr "RefRN.phl[1392]" "Ref:prp_wristInner_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1393]" "Ref:prp_wristInner_R_parentConstraint1.crt";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.crx" "RefRN.phl[1394]";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.cry" "RefRN.phl[1395]";
connectAttr "Ref:prp_wristInner_R_parentConstraint1.crz" "RefRN.phl[1396]";
connectAttr "RefRN.phl[1397]" "Ref:prp_wristInner_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1398]" "Ref:prp_wristInner_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1399]" "Ref:prp_wristInner_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[1400]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1401]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1402]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[1403]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[1404]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[1405]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[1406]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[1407]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[1408]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[1409]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[1410]";
connectAttr "RefRN.phl[1411]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[1412]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[1413]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[1414]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[1415]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[1416]";
connectAttr "RefRN.phl[1417]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[1418]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[1419]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[1420]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[1421]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[1422]";
connectAttr "RefRN.phl[1423]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[1424]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[1425]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[1426]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[1427]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[1428]";
connectAttr "RefRN.phl[1429]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[1430]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[1431]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.ctx" "RefRN.phl[1432]";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.cty" "RefRN.phl[1433]";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.ctz" "RefRN.phl[1434]";
connectAttr "RefRN.phl[1435]" "Ref:prp_pantsFront_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1436]" "Ref:prp_pantsFront_L_parentConstraint1.crt";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.crx" "RefRN.phl[1437]";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.cry" "RefRN.phl[1438]";
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.crz" "RefRN.phl[1439]";
connectAttr "RefRN.phl[1440]" "Ref:prp_pantsFront_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1441]" "Ref:prp_pantsFront_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1442]" "Ref:prp_pantsFront_L_parentConstraint1.cpim";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.ctx" "RefRN.phl[1443]";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.cty" "RefRN.phl[1444]";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.ctz" "RefRN.phl[1445]";
connectAttr "RefRN.phl[1446]" "Ref:prp_pantsBack_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1447]" "Ref:prp_pantsBack_L_parentConstraint1.crt";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.crx" "RefRN.phl[1448]";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.cry" "RefRN.phl[1449]";
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.crz" "RefRN.phl[1450]";
connectAttr "RefRN.phl[1451]" "Ref:prp_pantsBack_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1452]" "Ref:prp_pantsBack_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1453]" "Ref:prp_pantsBack_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[1454]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1455]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[1456]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[1457]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[1458]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[1459]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[1460]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[1461]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[1462]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[1463]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[1464]";
connectAttr "RefRN.phl[1465]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[1466]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[1467]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[1468]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[1469]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[1470]";
connectAttr "RefRN.phl[1471]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[1472]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[1473]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[1474]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[1475]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[1476]";
connectAttr "RefRN.phl[1477]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[1478]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[1479]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[1480]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[1481]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[1482]";
connectAttr "RefRN.phl[1483]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[1484]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[1485]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.ctx" "RefRN.phl[1486]";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.cty" "RefRN.phl[1487]";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.ctz" "RefRN.phl[1488]";
connectAttr "RefRN.phl[1489]" "Ref:prp_pantsFront_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1490]" "Ref:prp_pantsFront_R_parentConstraint1.crt";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.crx" "RefRN.phl[1491]";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.cry" "RefRN.phl[1492]";
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.crz" "RefRN.phl[1493]";
connectAttr "RefRN.phl[1494]" "Ref:prp_pantsFront_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1495]" "Ref:prp_pantsFront_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1496]" "Ref:prp_pantsFront_R_parentConstraint1.cpim";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.ctx" "RefRN.phl[1497]";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.cty" "RefRN.phl[1498]";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.ctz" "RefRN.phl[1499]";
connectAttr "RefRN.phl[1500]" "Ref:prp_pantsBack_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1501]" "Ref:prp_pantsBack_R_parentConstraint1.crt";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.crx" "RefRN.phl[1502]";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.cry" "RefRN.phl[1503]";
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.crz" "RefRN.phl[1504]";
connectAttr "RefRN.phl[1505]" "Ref:prp_pantsBack_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1506]" "Ref:prp_pantsBack_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1507]" "Ref:prp_pantsBack_R_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.ctx" "RefRN.phl[1508]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.cty" "RefRN.phl[1509]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.ctz" "RefRN.phl[1510]";
connectAttr "RefRN.phl[1511]" "Ref:prp_coat_front_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1512]" "Ref:prp_coat_front_0_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.crx" "RefRN.phl[1513]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.cry" "RefRN.phl[1514]";
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.crz" "RefRN.phl[1515]";
connectAttr "RefRN.phl[1516]" "Ref:prp_coat_front_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1517]" "Ref:prp_coat_front_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1518]" "Ref:prp_coat_front_0_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.ctx" "RefRN.phl[1519]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.cty" "RefRN.phl[1520]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.ctz" "RefRN.phl[1521]";
connectAttr "RefRN.phl[1522]" "Ref:prp_coat_back_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[1523]" "Ref:prp_coat_back_0_L_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.crx" "RefRN.phl[1524]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.cry" "RefRN.phl[1525]";
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.crz" "RefRN.phl[1526]";
connectAttr "RefRN.phl[1527]" "Ref:prp_coat_back_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[1528]" "Ref:prp_coat_back_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[1529]" "Ref:prp_coat_back_0_L_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.ctx" "RefRN.phl[1530]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.cty" "RefRN.phl[1531]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.ctz" "RefRN.phl[1532]";
connectAttr "RefRN.phl[1533]" "Ref:prp_coat_front_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1534]" "Ref:prp_coat_front_0_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.crx" "RefRN.phl[1535]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.cry" "RefRN.phl[1536]";
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.crz" "RefRN.phl[1537]";
connectAttr "RefRN.phl[1538]" "Ref:prp_coat_front_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1539]" "Ref:prp_coat_front_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1540]" "Ref:prp_coat_front_0_R_parentConstraint1.cpim";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.ctx" "RefRN.phl[1541]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.cty" "RefRN.phl[1542]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.ctz" "RefRN.phl[1543]";
connectAttr "RefRN.phl[1544]" "Ref:prp_coat_back_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[1545]" "Ref:prp_coat_back_0_R_parentConstraint1.crt";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.crx" "RefRN.phl[1546]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.cry" "RefRN.phl[1547]";
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.crz" "RefRN.phl[1548]";
connectAttr "RefRN.phl[1549]" "Ref:prp_coat_back_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[1550]" "Ref:prp_coat_back_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[1551]" "Ref:prp_coat_back_0_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[1552]" "RefRN.phl[1553]";
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
connectAttr "rShoulderControl_pointConstraint1.ctx" "rShoulderControl.tx" -l on;
connectAttr "rShoulderControl_pointConstraint1.cty" "rShoulderControl.ty" -l on;
connectAttr "rShoulderControl_pointConstraint1.ctz" "rShoulderControl.tz" -l on;
connectAttr "rShoulderControl_pointConstraint1.w0" "rShoulderControl_pointConstraint1.tg[0].tw"
		;
connectAttr "rShoulderControl.pim" "rShoulderControl_pointConstraint1.cpim";
connectAttr "rShoulderControl.rp" "rShoulderControl_pointConstraint1.crp";
connectAttr "rShoulderControl.rpt" "rShoulderControl_pointConstraint1.crt";
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
connectAttr "likHandControl_orientConstraint1.w0" "likHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "likHandControl.aim" "likHandControl_orientConstraint1.w0";
connectAttr "likHandControl.ro" "likHandControl_orientConstraint1.cro";
connectAttr "likHandControl.pim" "likHandControl_orientConstraint1.cpim";
connectAttr "lElbowControlvisExp.out[0]" "lElbowControl.v" -l on;
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
connectAttr "lkneeControlvisExp.out[0]" "lkneeControl.v" -l on;
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
connectAttr "rikHandControl_orientConstraint1.w0" "rikHandControl_orientConstraint1.tg[0].tw"
		;
connectAttr "rikHandControl.aim" "rikHandControl_orientConstraint1.w0";
connectAttr "rikHandControl.ro" "rikHandControl_orientConstraint1.cro";
connectAttr "rikHandControl.pim" "rikHandControl_orientConstraint1.cpim";
connectAttr "rElbowControlvisExp.out[0]" "rElbowControl.v" -l on;
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
connectAttr "rkneeControlvisExp.out[0]" "rkneeControl.v" -l on;
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
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.ctx" "Ref:prp_pantsFront_RControlGroup.tx"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.cty" "Ref:prp_pantsFront_RControlGroup.ty"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.ctz" "Ref:prp_pantsFront_RControlGroup.tz"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.crx" "Ref:prp_pantsFront_RControlGroup.rx"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.cry" "Ref:prp_pantsFront_RControlGroup.ry"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.crz" "Ref:prp_pantsFront_RControlGroup.rz"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup.ro" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup.pim" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup.rp" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup.rpt" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_knee_RFK.t" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_knee_RFK.rp" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_knee_RFK.rpt" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_knee_RFK.r" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_knee_RFK.ro" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_knee_RFK.s" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_knee_RFK.pm" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.w0" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_RIK.t" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_knee_RIK.rp" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_knee_RIK.rpt" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_knee_RIK.r" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_knee_RIK.ro" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_knee_RIK.s" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_knee_RIK.pm" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_knee_RIK.jo" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_pantsFront_RControlGroup_parentConstraint1.w1" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent3.out[0]" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.w0"
		;
connectAttr "main.rLegIKFK" "Ref:prp_pantsFront_RControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.ctx" "Ref:prp_pantsBack_RControlGroup.tx"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.cty" "Ref:prp_pantsBack_RControlGroup.ty"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.ctz" "Ref:prp_pantsBack_RControlGroup.tz"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.crx" "Ref:prp_pantsBack_RControlGroup.rx"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.cry" "Ref:prp_pantsBack_RControlGroup.ry"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.crz" "Ref:prp_pantsBack_RControlGroup.rz"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup.ro" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup.pim" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup.rp" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup.rpt" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_knee_RFK.t" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_knee_RFK.rp" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_knee_RFK.rpt" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_knee_RFK.r" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_knee_RFK.ro" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_knee_RFK.s" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_knee_RFK.pm" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.w0" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_RIK.t" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_knee_RIK.rp" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_knee_RIK.rpt" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_knee_RIK.r" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_knee_RIK.ro" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_knee_RIK.s" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_knee_RIK.pm" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_knee_RIK.jo" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_pantsBack_RControlGroup_parentConstraint1.w1" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent4.out[0]" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.w0"
		;
connectAttr "main.rLegIKFK" "Ref:prp_pantsBack_RControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.ctx" "Ref:prp_pantsFront_LControlGroup.tx"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.cty" "Ref:prp_pantsFront_LControlGroup.ty"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.ctz" "Ref:prp_pantsFront_LControlGroup.tz"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.crx" "Ref:prp_pantsFront_LControlGroup.rx"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.cry" "Ref:prp_pantsFront_LControlGroup.ry"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.crz" "Ref:prp_pantsFront_LControlGroup.rz"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup.ro" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup.pim" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup.rp" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup.rpt" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_knee_LFK.t" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_knee_LFK.rp" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_knee_LFK.rpt" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_knee_LFK.r" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_knee_LFK.ro" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_knee_LFK.s" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_knee_LFK.pm" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.w0" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_LIK.t" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_knee_LIK.rp" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_knee_LIK.rpt" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_knee_LIK.r" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_knee_LIK.ro" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_knee_LIK.s" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_knee_LIK.pm" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_knee_LIK.jo" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_pantsFront_LControlGroup_parentConstraint1.w1" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent5.out[0]" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.w0"
		;
connectAttr "main.lLegIKFK" "Ref:prp_pantsFront_LControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.ctx" "Ref:prp_pantsBack_LControlGroup.tx"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.cty" "Ref:prp_pantsBack_LControlGroup.ty"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.ctz" "Ref:prp_pantsBack_LControlGroup.tz"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.crx" "Ref:prp_pantsBack_LControlGroup.rx"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.cry" "Ref:prp_pantsBack_LControlGroup.ry"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.crz" "Ref:prp_pantsBack_LControlGroup.rz"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup.ro" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup.pim" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup.rp" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup.rpt" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_knee_LFK.t" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_knee_LFK.rp" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_knee_LFK.rpt" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_knee_LFK.r" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_knee_LFK.ro" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_knee_LFK.s" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_knee_LFK.pm" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.w0" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_knee_LIK.t" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_knee_LIK.rp" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_knee_LIK.rpt" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_knee_LIK.r" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_knee_LIK.ro" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_knee_LIK.s" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_knee_LIK.pm" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_knee_LIK.jo" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_pantsBack_LControlGroup_parentConstraint1.w1" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent6.out[0]" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.w0"
		;
connectAttr "main.lLegIKFK" "Ref:prp_pantsBack_LControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.ctx" "Ref:prp_wristOuter_RControlGroup.tx"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.cty" "Ref:prp_wristOuter_RControlGroup.ty"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.ctz" "Ref:prp_wristOuter_RControlGroup.tz"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.crx" "Ref:prp_wristOuter_RControlGroup.rx"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.cry" "Ref:prp_wristOuter_RControlGroup.ry"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.crz" "Ref:prp_wristOuter_RControlGroup.rz"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup.ro" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup.pim" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup.rp" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup.rpt" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_lowerArm_RFK.t" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_lowerArm_RFK.rp" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_lowerArm_RFK.rpt" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_lowerArm_RFK.r" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_RFK.ro" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_RFK.s" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_lowerArm_RFK.pm" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.w0" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_RIK.t" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_lowerArm_RIK.rp" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_lowerArm_RIK.rpt" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_lowerArm_RIK.r" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_RIK.ro" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_RIK.s" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_lowerArm_RIK.pm" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_RIK.jo" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_wristOuter_RControlGroup_parentConstraint1.w1" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent7.out[0]" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.w0"
		;
connectAttr "main.rArmIKFK" "Ref:prp_wristOuter_RControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.ctx" "Ref:prp_wristInner_RControlGroup.tx"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.cty" "Ref:prp_wristInner_RControlGroup.ty"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.ctz" "Ref:prp_wristInner_RControlGroup.tz"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.crx" "Ref:prp_wristInner_RControlGroup.rx"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.cry" "Ref:prp_wristInner_RControlGroup.ry"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.crz" "Ref:prp_wristInner_RControlGroup.rz"
		;
connectAttr "Ref:prp_wristInner_RControlGroup.ro" "Ref:prp_wristInner_RControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_wristInner_RControlGroup.pim" "Ref:prp_wristInner_RControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_wristInner_RControlGroup.rp" "Ref:prp_wristInner_RControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_wristInner_RControlGroup.rpt" "Ref:prp_wristInner_RControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_lowerArm_RFK.t" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_lowerArm_RFK.rp" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_lowerArm_RFK.rpt" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_lowerArm_RFK.r" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_RFK.ro" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_RFK.s" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_lowerArm_RFK.pm" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.w0" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_RIK.t" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_lowerArm_RIK.rp" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_lowerArm_RIK.rpt" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_lowerArm_RIK.r" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_RIK.ro" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_RIK.s" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_lowerArm_RIK.pm" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_RIK.jo" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_wristInner_RControlGroup_parentConstraint1.w1" "Ref:prp_wristInner_RControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent8.out[0]" "Ref:prp_wristInner_RControlGroup_parentConstraint1.w0"
		;
connectAttr "main.rArmIKFK" "Ref:prp_wristInner_RControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.ctx" "Ref:prp_wristOuter_LControlGroup.tx"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.cty" "Ref:prp_wristOuter_LControlGroup.ty"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.ctz" "Ref:prp_wristOuter_LControlGroup.tz"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.crx" "Ref:prp_wristOuter_LControlGroup.rx"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.cry" "Ref:prp_wristOuter_LControlGroup.ry"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.crz" "Ref:prp_wristOuter_LControlGroup.rz"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup.ro" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup.pim" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup.rp" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup.rpt" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_lowerArm_LFK.t" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_lowerArm_LFK.rp" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_lowerArm_LFK.rpt" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_lowerArm_LFK.r" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_LFK.ro" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_LFK.s" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_lowerArm_LFK.pm" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.w0" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_LIK.t" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_lowerArm_LIK.rp" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_lowerArm_LIK.rpt" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_lowerArm_LIK.r" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_LIK.ro" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_LIK.s" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_lowerArm_LIK.pm" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_LIK.jo" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_wristOuter_LControlGroup_parentConstraint1.w1" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent9.out[0]" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.w0"
		;
connectAttr "main.lArmIKFK" "Ref:prp_wristOuter_LControlGroup_parentConstraint1.w1"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.ctx" "Ref:prp_wristInner_LControlGroup.tx"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.cty" "Ref:prp_wristInner_LControlGroup.ty"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.ctz" "Ref:prp_wristInner_LControlGroup.tz"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.crx" "Ref:prp_wristInner_LControlGroup.rx"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.cry" "Ref:prp_wristInner_LControlGroup.ry"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.crz" "Ref:prp_wristInner_LControlGroup.rz"
		;
connectAttr "Ref:prp_wristInner_LControlGroup.ro" "Ref:prp_wristInner_LControlGroup_parentConstraint1.cro"
		;
connectAttr "Ref:prp_wristInner_LControlGroup.pim" "Ref:prp_wristInner_LControlGroup_parentConstraint1.cpim"
		;
connectAttr "Ref:prp_wristInner_LControlGroup.rp" "Ref:prp_wristInner_LControlGroup_parentConstraint1.crp"
		;
connectAttr "Ref:prp_wristInner_LControlGroup.rpt" "Ref:prp_wristInner_LControlGroup_parentConstraint1.crt"
		;
connectAttr "Ref:bip_lowerArm_LFK.t" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:bip_lowerArm_LFK.rp" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:bip_lowerArm_LFK.rpt" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:bip_lowerArm_LFK.r" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:bip_lowerArm_LFK.ro" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:bip_lowerArm_LFK.s" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:bip_lowerArm_LFK.pm" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.w0" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:bip_lowerArm_LIK.t" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tt"
		;
connectAttr "Ref:bip_lowerArm_LIK.rp" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].trp"
		;
connectAttr "Ref:bip_lowerArm_LIK.rpt" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].trt"
		;
connectAttr "Ref:bip_lowerArm_LIK.r" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tr"
		;
connectAttr "Ref:bip_lowerArm_LIK.ro" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tro"
		;
connectAttr "Ref:bip_lowerArm_LIK.s" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].ts"
		;
connectAttr "Ref:bip_lowerArm_LIK.pm" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tpm"
		;
connectAttr "Ref:bip_lowerArm_LIK.jo" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tjo"
		;
connectAttr "Ref:prp_wristInner_LControlGroup_parentConstraint1.w1" "Ref:prp_wristInner_LControlGroup_parentConstraint1.tg[1].tw"
		;
connectAttr "fkParent10.out[0]" "Ref:prp_wristInner_LControlGroup_parentConstraint1.w0"
		;
connectAttr "main.lArmIKFK" "Ref:prp_wristInner_LControlGroup_parentConstraint1.w1"
		;
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
connectAttr "Ref:prp_coat_back_0_RControl.t" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_0_RControl.rp" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_0_RControl.rpt" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_0_RControl.r" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_0_RControl.ro" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_0_RControl.s" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_0_RControl.pm" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_0_R_parentConstraint1.w0" "Ref:prp_coat_back_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_front_0_RControl.t" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_front_0_RControl.rp" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_front_0_RControl.rpt" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_front_0_RControl.r" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_front_0_RControl.ro" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_front_0_RControl.s" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_front_0_RControl.pm" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_0_R_parentConstraint1.w0" "Ref:prp_coat_front_0_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_back_0_LControl.t" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_back_0_LControl.rp" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_back_0_LControl.rpt" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_back_0_LControl.r" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_back_0_LControl.ro" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_back_0_LControl.s" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_back_0_LControl.pm" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_back_0_L_parentConstraint1.w0" "Ref:prp_coat_back_0_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_coat_front_0_LControl.t" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_coat_front_0_LControl.rp" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_coat_front_0_LControl.rpt" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_coat_front_0_LControl.r" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_coat_front_0_LControl.ro" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_coat_front_0_LControl.s" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_coat_front_0_LControl.pm" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_coat_front_0_L_parentConstraint1.w0" "Ref:prp_coat_front_0_L_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_pantsBack_RControl.t" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_pantsBack_RControl.rp" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pantsBack_RControl.rpt" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pantsBack_RControl.r" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_pantsBack_RControl.ro" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pantsBack_RControl.s" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_pantsBack_RControl.pm" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsBack_R_parentConstraint1.w0" "Ref:prp_pantsBack_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_pantsFront_RControl.t" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_pantsFront_RControl.rp" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pantsFront_RControl.rpt" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pantsFront_RControl.r" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_pantsFront_RControl.ro" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pantsFront_RControl.s" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_pantsFront_RControl.pm" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsFront_R_parentConstraint1.w0" "Ref:prp_pantsFront_R_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_pantsBack_LControl.t" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_pantsBack_LControl.rp" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pantsBack_LControl.rpt" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pantsBack_LControl.r" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_pantsBack_LControl.ro" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pantsBack_LControl.s" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_pantsBack_LControl.pm" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsBack_L_parentConstraint1.w0" "Ref:prp_pantsBack_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_pantsFront_LControl.t" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_pantsFront_LControl.rp" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_pantsFront_LControl.rpt" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_pantsFront_LControl.r" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_pantsFront_LControl.ro" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_pantsFront_LControl.s" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_pantsFront_LControl.pm" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_pantsFront_L_parentConstraint1.w0" "Ref:prp_pantsFront_L_parentConstraint1.tg[0].tw"
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
connectAttr "Ref:prp_wristInner_RControl.t" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_wristInner_RControl.rp" "Ref:prp_wristInner_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_wristInner_RControl.rpt" "Ref:prp_wristInner_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_wristInner_RControl.r" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_wristInner_RControl.ro" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_wristInner_RControl.s" "Ref:prp_wristInner_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_wristInner_RControl.pm" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristInner_R_parentConstraint1.w0" "Ref:prp_wristInner_R_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_wristOuter_RControl.t" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_wristOuter_RControl.rp" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_wristOuter_RControl.rpt" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_wristOuter_RControl.r" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_wristOuter_RControl.ro" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_wristOuter_RControl.s" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_wristOuter_RControl.pm" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristOuter_R_parentConstraint1.w0" "Ref:prp_wristOuter_R_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Ref:prp_wristInner_LControl.t" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_wristInner_LControl.rp" "Ref:prp_wristInner_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_wristInner_LControl.rpt" "Ref:prp_wristInner_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_wristInner_LControl.r" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_wristInner_LControl.ro" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_wristInner_LControl.s" "Ref:prp_wristInner_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_wristInner_LControl.pm" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristInner_L_parentConstraint1.w0" "Ref:prp_wristInner_L_parentConstraint1.tg[0].tw"
		;
connectAttr "Ref:prp_wristOuter_LControl.t" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tt"
		;
connectAttr "Ref:prp_wristOuter_LControl.rp" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].trp"
		;
connectAttr "Ref:prp_wristOuter_LControl.rpt" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].trt"
		;
connectAttr "Ref:prp_wristOuter_LControl.r" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tr"
		;
connectAttr "Ref:prp_wristOuter_LControl.ro" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tro"
		;
connectAttr "Ref:prp_wristOuter_LControl.s" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].ts"
		;
connectAttr "Ref:prp_wristOuter_LControl.pm" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:prp_wristOuter_L_parentConstraint1.w0" "Ref:prp_wristOuter_L_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Ref:prp_cigControl.t" "Ref:prp_cig_parentConstraint1.tg[0].tt";
connectAttr "Ref:prp_cigControl.rp" "Ref:prp_cig_parentConstraint1.tg[0].trp";
connectAttr "Ref:prp_cigControl.rpt" "Ref:prp_cig_parentConstraint1.tg[0].trt";
connectAttr "Ref:prp_cigControl.r" "Ref:prp_cig_parentConstraint1.tg[0].tr";
connectAttr "Ref:prp_cigControl.ro" "Ref:prp_cig_parentConstraint1.tg[0].tro";
connectAttr "Ref:prp_cigControl.s" "Ref:prp_cig_parentConstraint1.tg[0].ts";
connectAttr "Ref:prp_cigControl.pm" "Ref:prp_cig_parentConstraint1.tg[0].tpm";
connectAttr "Ref:prp_cig_parentConstraint1.w0" "Ref:prp_cig_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "main.main" "RefRN.phl[784]";
connectAttr "plotted.plotted" "RefRN.phl[785]";
connectAttr "UpperbodyControl.upperBodyControl" "RefRN.phl[786]";
connectAttr "PelvisControl.pelvisControl" "RefRN.phl[787]";
connectAttr "Ref:bip_spine_0FKcontrol.fkSpine0" "RefRN.phl[788]";
connectAttr "Ref:bip_spine_1FKcontrol.fkSpine1" "RefRN.phl[789]";
connectAttr "Ref:bip_spine_2FKcontrol.fkSpine2" "RefRN.phl[790]";
connectAttr "Ref:bip_spine_3FKcontrol.fkSpine3" "RefRN.phl[791]";
connectAttr "Ref:bip_spine_0ik.ikSpine0" "RefRN.phl[792]";
connectAttr "Ref:bip_spine_1ik.ikSpine1" "RefRN.phl[793]";
connectAttr "Ref:bip_spine_2ik.ikSpine2" "RefRN.phl[794]";
connectAttr "Ref:bip_spine_3ik.ikSpine3" "RefRN.phl[795]";
connectAttr "chestParent.chestParent" "RefRN.phl[796]";
connectAttr "neckControl.neckControl" "RefRN.phl[797]";
connectAttr "headControl.headControl" "RefRN.phl[798]";
connectAttr "lShoulderControl.lFKshoulderControl" "RefRN.phl[799]";
connectAttr "Ref:bip_upperArm_LFK.lFKshoulder" "RefRN.phl[800]";
connectAttr "Ref:bip_lowerArm_LFK.lFKelbow" "RefRN.phl[801]";
connectAttr "Ref:bip_hand_LFK.lFKwrist" "RefRN.phl[802]";
connectAttr "Ref:bip_upperArm_LIK.lIKshoulder" "RefRN.phl[803]";
connectAttr "Ref:bip_lowerArm_LIK.lIKelbow" "RefRN.phl[804]";
connectAttr "Ref:bip_hand_LIK.lIKwrist" "RefRN.phl[805]";
connectAttr "likHandControl.lIKcontrol" "RefRN.phl[806]";
connectAttr "likHandControlWeaponGroup.lWeaponAttach" "RefRN.phl[807]";
connectAttr "lElbowControl.lElbowControl" "RefRN.phl[808]";
connectAttr "Ref:bip_hip_LIK.lIKupLeg" "RefRN.phl[809]";
connectAttr "Ref:bip_knee_LIK.lIKknee" "RefRN.phl[810]";
connectAttr "Ref:bip_foot_LIK.lIKankle" "RefRN.phl[811]";
connectAttr "Ref:bip_toe_LIK.lIKtoe" "RefRN.phl[812]";
connectAttr "Ref:bip_toeEnd_LIK.lIKtoeEnd" "RefRN.phl[813]";
connectAttr "Ref:bip_hip_LFK.lFKupLeg" "RefRN.phl[814]";
connectAttr "Ref:bip_knee_LFK.lFKknee" "RefRN.phl[815]";
connectAttr "Ref:bip_foot_LFK.lFKankle" "RefRN.phl[816]";
connectAttr "Ref:bip_toe_LFK.lFKtoe" "RefRN.phl[817]";
connectAttr "lkneeControl.lKneeControl" "RefRN.phl[818]";
connectAttr "lFootControl.lFootControl" "RefRN.phl[819]";
connectAttr "lToeControl.lToeControl" "RefRN.phl[820]";
connectAttr "rShoulderControl.rFKshoulderControl" "RefRN.phl[821]";
connectAttr "Ref:bip_upperArm_RFK.rFKshoulder" "RefRN.phl[822]";
connectAttr "Ref:bip_lowerArm_RFK.rFKelbow" "RefRN.phl[823]";
connectAttr "Ref:bip_hand_RFK.rFKwrist" "RefRN.phl[824]";
connectAttr "Ref:bip_upperArm_RIK.rIKshoulder" "RefRN.phl[825]";
connectAttr "Ref:bip_lowerArm_RIK.rIKelbow" "RefRN.phl[826]";
connectAttr "Ref:bip_hand_RIK.rIKwrist" "RefRN.phl[827]";
connectAttr "rikHandControl.rIKcontrol" "RefRN.phl[828]";
connectAttr "rikHandControlWeaponGroup.rWeaponAttach" "RefRN.phl[829]";
connectAttr "rElbowControl.rElbowControl" "RefRN.phl[830]";
connectAttr "Ref:bip_hip_RIK.rIKupLeg" "RefRN.phl[831]";
connectAttr "Ref:bip_knee_RIK.rIKknee" "RefRN.phl[832]";
connectAttr "Ref:bip_foot_RIK.rIKankle" "RefRN.phl[833]";
connectAttr "Ref:bip_toe_RIK.rIKtoe" "RefRN.phl[834]";
connectAttr "Ref:bip_toeEnd_RIK.rIKtoeEnd" "RefRN.phl[835]";
connectAttr "Ref:bip_hip_RFK.rFKupLeg" "RefRN.phl[836]";
connectAttr "Ref:bip_knee_RFK.rFKknee" "RefRN.phl[837]";
connectAttr "Ref:bip_foot_RFK.rFKankle" "RefRN.phl[838]";
connectAttr "Ref:bip_toe_RFK.rFKtoe" "RefRN.phl[839]";
connectAttr "rkneeControl.rKneeControl" "RefRN.phl[840]";
connectAttr "rFootControl.rFootControl" "RefRN.phl[841]";
connectAttr "rToeControl.rToeControl" "RefRN.phl[842]";
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
connectAttr "Ref:bip_thumb_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "plotted.dsm" -na;
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
connectAttr "Ref:bip_thumb_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "plotted.dsm" -na;
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "plotted.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "plotted.dsm" -na;
connectAttr "rkneeControl.iog" "plotted.dsm" -na;
connectAttr "rFootControl.iog" "plotted.dsm" -na;
connectAttr "rToeControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_cigControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_front_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_0_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_front_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_coat_back_0_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_pantsFront_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_pantsBack_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_pantsFront_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_pantsBack_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_wristOuter_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_wristInner_RControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_wristOuter_LControl.iog" "plotted.dsm" -na;
connectAttr "Ref:prp_wristInner_LControl.iog" "plotted.dsm" -na;
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
connectAttr "main.rLegIKFK" "fkParent3.in[0]";
connectAttr ":time1.o" "fkParent3.tim";
connectAttr "main.rLegIKFK" "fkParent4.in[0]";
connectAttr ":time1.o" "fkParent4.tim";
connectAttr "main.lLegIKFK" "fkParent5.in[0]";
connectAttr ":time1.o" "fkParent5.tim";
connectAttr "main.lLegIKFK" "fkParent6.in[0]";
connectAttr ":time1.o" "fkParent6.tim";
connectAttr "main.rArmIKFK" "fkParent7.in[0]";
connectAttr ":time1.o" "fkParent7.tim";
connectAttr "main.rArmIKFK" "fkParent8.in[0]";
connectAttr ":time1.o" "fkParent8.tim";
connectAttr "main.lArmIKFK" "fkParent9.in[0]";
connectAttr ":time1.o" "fkParent9.tim";
connectAttr "main.lArmIKFK" "fkParent10.in[0]";
connectAttr ":time1.o" "fkParent10.tim";
connectAttr "main1.msg" "spy.dnsm" -na;
connectAttr "L_foot.msg" "spy.dnsm" -na;
connectAttr "L_toe.msg" "spy.dnsm" -na;
connectAttr "R_foot.msg" "spy.dnsm" -na;
connectAttr "R_toe.msg" "spy.dnsm" -na;
connectAttr "knee.msg" "spy.dnsm" -na;
connectAttr "knee1.msg" "spy.dnsm" -na;
connectAttr "hip.msg" "spy.dnsm" -na;
connectAttr "main_hip.msg" "spy.dnsm" -na;
connectAttr "elbow.msg" "spy.dnsm" -na;
connectAttr "elbow1.msg" "spy.dnsm" -na;
connectAttr "spine_0.msg" "spy.dnsm" -na;
connectAttr "spine_1.msg" "spy.dnsm" -na;
connectAttr "spine_2.msg" "spy.dnsm" -na;
connectAttr "spine_3.msg" "spy.dnsm" -na;
connectAttr "neck.msg" "spy.dnsm" -na;
connectAttr "head.msg" "spy.dnsm" -na;
connectAttr "shoulder.msg" "spy.dnsm" -na;
connectAttr "shoulder1.msg" "spy.dnsm" -na;
connectAttr "tranHand.msg" "spy.dnsm" -na;
connectAttr "rotHand.msg" "spy.dnsm" -na;
connectAttr "tranHand1.msg" "spy.dnsm" -na;
connectAttr "rotHand1.msg" "spy.dnsm" -na;
connectAttr "picker1.msg" "spy.dnsm" -na;
connectAttr "picker2.msg" "spy.dnsm" -na;
connectAttr "picker3.msg" "spy.dnsm" -na;
connectAttr "picker4.msg" "spy.dnsm" -na;
connectAttr "picker5.msg" "spy.dnsm" -na;
connectAttr "picker6.msg" "spy.dnsm" -na;
connectAttr "picker7.msg" "spy.dnsm" -na;
connectAttr "picker8.msg" "spy.dnsm" -na;
connectAttr "picker9.msg" "spy.dnsm" -na;
connectAttr "picker10.msg" "spy.dnsm" -na;
connectAttr "picker11.msg" "spy.dnsm" -na;
connectAttr "picker12.msg" "spy.dnsm" -na;
connectAttr "picker13.msg" "spy.dnsm" -na;
connectAttr "picker14.msg" "spy.dnsm" -na;
connectAttr "picker15.msg" "spy.dnsm" -na;
connectAttr "picker16.msg" "spy.dnsm" -na;
connectAttr "picker17.msg" "spy.dnsm" -na;
connectAttr "picker18.msg" "spy.dnsm" -na;
connectAttr "picker19.msg" "spy.dnsm" -na;
connectAttr "picker20.msg" "spy.dnsm" -na;
connectAttr "picker21.msg" "spy.dnsm" -na;
connectAttr "picker22.msg" "spy.dnsm" -na;
connectAttr "picker23.msg" "spy.dnsm" -na;
connectAttr "picker24.msg" "spy.dnsm" -na;
connectAttr "picker25.msg" "spy.dnsm" -na;
connectAttr "picker26.msg" "spy.dnsm" -na;
connectAttr "picker27.msg" "spy.dnsm" -na;
connectAttr "picker28.msg" "spy.dnsm" -na;
connectAttr "picker29.msg" "spy.dnsm" -na;
connectAttr "picker30.msg" "spy.dnsm" -na;
connectAttr "picker31.msg" "spy.dnsm" -na;
connectAttr "picker32.msg" "spy.dnsm" -na;
connectAttr "picker33.msg" "spy.dnsm" -na;
connectAttr "picker34.msg" "spy.dnsm" -na;
connectAttr "picker35.msg" "spy.dnsm" -na;
connectAttr "picker36.msg" "spy.dnsm" -na;
connectAttr "picker37.msg" "spy.dnsm" -na;
connectAttr "picker38.msg" "spy.dnsm" -na;
connectAttr "picker39.msg" "spy.dnsm" -na;
connectAttr "picker40.msg" "spy.dnsm" -na;
connectAttr "picker41.msg" "spy.dnsm" -na;
connectAttr "picker42.msg" "spy.dnsm" -na;
connectAttr "picker43.msg" "spy.dnsm" -na;
connectAttr "picker44.msg" "spy.dnsm" -na;
connectAttr "picker45.msg" "spy.dnsm" -na;
connectAttr "main.iog" "main1.dsm" -na;
connectAttr "lFootControl.iog" "L_foot.dsm" -na;
connectAttr "lToeControl.iog" "L_toe.dsm" -na;
connectAttr "rFootControl.iog" "R_foot.dsm" -na;
connectAttr "rToeControl.iog" "R_toe.dsm" -na;
connectAttr "lkneeControl.iog" "knee.dsm" -na;
connectAttr "rkneeControl.iog" "knee1.dsm" -na;
connectAttr "PelvisControl.iog" "hip.dsm" -na;
connectAttr "UpperbodyControl.iog" "main_hip.dsm" -na;
connectAttr "rElbowControl.iog" "elbow.dsm" -na;
connectAttr "lElbowControl.iog" "elbow1.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "spine_0.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "spine_1.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "spine_2.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "spine_3.dsm" -na;
connectAttr "neckControl.iog" "neck.dsm" -na;
connectAttr "headControl.iog" "head.dsm" -na;
connectAttr "lShoulderControl.iog" "shoulder.dsm" -na;
connectAttr "rShoulderControl.iog" "shoulder1.dsm" -na;
connectAttr "rikHandControl.iog" "tranHand.dsm" -na;
connectAttr "rHandControl.iog" "rotHand.dsm" -na;
connectAttr "likHandControl.iog" "tranHand1.dsm" -na;
connectAttr "lHandControl.iog" "rotHand1.dsm" -na;
connectAttr "Ref:prp_coat_front_0_LControl.iog" "picker1.dsm" -na;
connectAttr "Ref:prp_coat_back_0_LControl.iog" "picker2.dsm" -na;
connectAttr "Ref:prp_coat_back_0_RControl.iog" "picker3.dsm" -na;
connectAttr "Ref:prp_coat_front_0_RControl.iog" "picker4.dsm" -na;
connectAttr "Ref:prp_cigControl.iog" "picker5.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker6.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker6.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker6.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker7.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker7.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker7.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker8.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker8.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker8.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker9.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker9.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker9.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker10.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker10.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker10.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker11.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker12.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker13.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker14.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker15.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker16.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker17.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker18.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker19.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker20.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker21.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker22.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker23.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker24.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker25.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker27.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker27.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker27.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker28.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker28.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker28.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker29.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker29.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker29.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker30.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker30.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker30.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker31.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker32.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker33.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker34.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker35.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker36.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker37.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker39.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker40.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker41.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker42.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker43.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker44.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker45.dsm" -na;
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
connectAttr "Ref:prp_cigControlShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ref:prp_coat_front_0_LControlShape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Ref:prp_coat_back_0_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_coat_front_0_RControlShape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "Ref:prp_coat_back_0_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_pantsFront_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_pantsBack_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_pantsFront_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_pantsBack_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_wristOuter_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_wristInner_RControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_wristOuter_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "Ref:prp_wristInner_LControlShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of spy_rig.ma
