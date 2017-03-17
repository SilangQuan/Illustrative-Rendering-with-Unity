//Maya ASCII 2012 scene
//Name: demo_rig.ma
//Last modified: Wed, Mar 11, 2015 12:41:33 PM
//Codeset: 1252
file -rdi 1 -ns "Ref" -rfn "RefRN" "demo_reference.ma";
file -r -ns "Ref" -dr 1 -rfn "RefRN" "demo_reference.ma";
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
	setAttr ".t" -type "double3" -38.248335282351441 69.190990409861882 255.41865768146553 ;
	setAttr ".r" -type "double3" -5.1383527291154918 -9.7999999999997023 5.0432076883438978e-017 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.4210854715202004e-014 
		-2.8421709430404007e-014 ;
	setAttr ".rpt" -type "double3" -1.2560077420495506e-014 -3.6922420209988595e-015 
		5.1996492727385726e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 263.29922436651572;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.0004897179416616 67.513849472366132 2.211082348020966 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.8834942987620025e-005 1500.1104893868328 5.4915343859698984 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1500.0999999999999;
	setAttr ".ow" 77.899801767048743;
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
		26 -2.6000000000000001e-011 -3.1839765199381809e-015
		18.384776310850238 -2.6000000000000001e-011 18.384776310850235
		7.3651479880199044e-015 -2.6000000000000001e-011 26
		-18.384776310850231 -2.6000000000000001e-011 18.384776310850238
		-26 -2.6000000000000001e-011 7.2164496600635175e-015
		-18.384776310850242 -2.6000000000000001e-011 -18.384776310850228
		-1.3138307716070718e-014 -2.6000000000000001e-011 -26
		18.384776310850224 -2.6000000000000001e-011 -18.384776310850246
		26 -2.6000000000000001e-011 -2.0503455704090623e-014
		26 -2.6000000000000001e-011 -3.1839765199381809e-015
		18.384776310850238 2.6000000000000001e-011 18.384776310850235
		7.3651479880199044e-015 2.6000000000000001e-011 26
		-18.384776310850231 2.6000000000000001e-011 18.384776310850238
		-26 2.6000000000000001e-011 1.0400426180001698e-014
		-18.384776310850242 2.6000000000000001e-011 -18.384776310850228
		-1.3138307716070718e-014 2.6000000000000001e-011 -26
		18.384776310850224 2.6000000000000001e-011 -18.384776310850246
		26 -2.6000000000000001e-011 -2.0503455704090623e-014
		
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
	setAttr ".rp" -type "double3" 0 48.05946002943061 -1.0197144415624013 ;
	setAttr ".sp" -type "double3" 0 48.05946002943061 -1.0197144415624013 ;
	setAttr ".hdl" -type "double3" 0 48.05946002943061 -1.0197144415624013 ;
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
		10.18695112358591 46.43446002943061 -11.206665565148327
		14.406524438207043 46.43446002943061 -1.0197144415623998
		10.186951123585915 46.43446002943061 9.167236682023514
		4.4903408982080442e-015 46.43446002943061 13.386809996644642
		-10.186951123585914 46.43446002943061 9.1672366820235176
		-14.406524438207047 46.43446002943061 -1.0197144415623967
		-10.186951123585917 46.43446002943061 -11.206665565148313
		-7.7377432452366271e-015 46.43446002943061 -15.426238879769445
		10.18695112358591 46.43446002943061 -11.206665565148327
		14.406524438207043 46.43446002943061 -1.0197144415623998
		10.186951123585915 46.43446002943061 9.167236682023514
		10.18695112358591 47.517793362763946 -11.206665565148327
		14.406524438207043 47.517793362763946 -1.0197144415623998
		10.186951123585915 47.517793362763946 9.167236682023514
		4.4903408982080442e-015 47.517793362763946 13.386809996644642
		-10.186951123585914 47.517793362763946 9.1672366820235176
		-14.406524438207047 47.517793362763946 -1.0197144415623964
		-10.186951123585917 47.517793362763946 -11.206665565148313
		-7.7377432452366271e-015 47.517793362763946 -15.426238879769445
		10.18695112358591 47.517793362763946 -11.206665565148327
		14.406524438207043 47.517793362763946 -1.0197144415623998
		10.186951123585915 47.517793362763946 9.167236682023514
		10.18695112358591 48.601126696097275 -11.206665565148327
		14.406524438207043 48.601126696097275 -1.0197144415623995
		10.186951123585915 48.601126696097275 9.167236682023514
		4.4903408982080442e-015 48.601126696097275 13.386809996644642
		-10.186951123585914 48.601126696097275 9.1672366820235176
		-14.406524438207047 48.601126696097275 -1.0197144415623964
		-10.186951123585917 48.601126696097275 -11.206665565148313
		-7.7377432452366271e-015 48.601126696097275 -15.426238879769445
		10.18695112358591 48.601126696097275 -11.206665565148327
		14.406524438207043 48.601126696097275 -1.0197144415623995
		10.186951123585915 48.601126696097275 9.167236682023514
		10.18695112358591 49.68446002943061 -11.206665565148327
		14.406524438207043 49.68446002943061 -1.0197144415623995
		10.186951123585915 49.68446002943061 9.167236682023514
		4.4903408982080442e-015 49.68446002943061 13.386809996644642
		-10.186951123585914 49.68446002943061 9.1672366820235176
		-14.406524438207047 49.68446002943061 -1.0197144415623964
		-10.186951123585917 49.68446002943061 -11.206665565148313
		-7.7377432452366271e-015 49.68446002943061 -15.426238879769445
		10.18695112358591 49.68446002943061 -11.206665565148327
		14.406524438207043 49.68446002943061 -1.0197144415623995
		10.186951123585915 49.68446002943061 9.167236682023514
		
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
	setAttr ".t" -type "double3" 0 48.05946002943061 -1.0197144415624013 ;
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
		-3.4402672846566462e-015 -6.7319115461140155 -13.463823092228033
		13.463823092228033 -6.7319115461140164 -1.2365912479112172e-015
		1.8209172583722405e-015 -6.7319115461140173 13.463823092228033
		-13.463823092228033 -6.7319115461140164 1.9069817222842159e-015
		-3.4402672846566462e-015 -6.7319115461140155 -13.463823092228033
		13.463823092228033 -6.7319115461140164 -1.2365912479112172e-015
		1.8209172583722405e-015 -6.7319115461140173 13.463823092228033
		-3.4402672846566462e-015 -2.2439705153713381 -13.463823092228033
		13.463823092228033 -2.243970515371339 -9.6179319281983558e-016
		1.8209172583722405e-015 -2.2439705153713398 13.463823092228033
		-13.463823092228033 -2.243970515371339 2.1817797773755976e-015
		-3.4402672846566462e-015 -2.2439705153713381 -13.463823092228033
		13.463823092228033 -2.243970515371339 -9.6179319281983558e-016
		1.8209172583722405e-015 -2.2439705153713398 13.463823092228033
		-3.4402672846566462e-015 2.2439705153713398 -13.463823092228033
		13.463823092228033 2.243970515371339 -6.8699513772845403e-016
		1.8209172583722405e-015 2.2439705153713381 13.463823092228033
		-13.463823092228033 2.243970515371339 2.4565778324669792e-015
		-3.4402672846566462e-015 2.2439705153713398 -13.463823092228033
		13.463823092228033 2.243970515371339 -6.8699513772845403e-016
		1.8209172583722405e-015 2.2439705153713381 13.463823092228033
		-3.4402672846566462e-015 6.7319115461140173 -13.463823092228033
		13.463823092228033 6.7319115461140164 -4.1219708263707248e-016
		1.8209172583722405e-015 6.7319115461140155 13.463823092228033
		-13.463823092228033 6.7319115461140164 2.7313758875583609e-015
		-3.4402672846566462e-015 6.7319115461140173 -13.463823092228033
		13.463823092228033 6.7319115461140164 -4.1219708263707248e-016
		1.8209172583722405e-015 6.7319115461140155 13.463823092228033
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ikPelvis" -p "PelvisControl";
	setAttr ".t" -type "double3" 0 4.1675158544255595 -0.54128780111704167 ;
createNode transform -n "ikPelvisCluster" -p "ikPelvis";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -52.22697588385617 1.561002242679443 ;
	setAttr ".rp" -type "double3" 0 52.22697588385617 -1.561002242679443 ;
	setAttr ".sp" -type "double3" 0 52.22697588385617 -1.561002242679443 ;
createNode clusterHandle -n "ikPelvisClusterShape" -p "ikPelvisCluster";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 55.251018351409613 -3.1264044006627754 ;
createNode transform -n "Ref:bip_spine_0FKcontrolZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 157.79782924691935 0 0 ;
	setAttr ".rp" -type "double3" 0 52.22697588385617 -1.5610022426794421 ;
	setAttr ".sp" -type "double3" 0 52.22697588385617 -1.5610022426794421 ;
createNode transform -n "Ref:bip_spine_0FKcontrol" -p "Ref:bip_spine_0FKcontrolZeroGroup";
	addAttr -ci true -k true -sn "stretchSpine" -ln "stretchSpine" -dv 1 -min 0.1 -max 
		2 -at "double";
	addAttr -ci true -sn "fkSpine0" -ln "fkSpine0" -at "message";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 52.22697588385617 -1.5610022426794421 ;
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
	setAttr ".r" -type "double3" 21.83323309234645 0 0 ;
	setAttr ".rp" -type "double3" 0 -6.4930988454064149 -5.3290705182007514e-015 ;
	setAttr ".sp" -type "double3" 0 -6.4930988454064149 -5.3290705182007514e-015 ;
createNode transform -n "Ref:bip_spine_1FKcontrol" -p "Ref:bip_spine_1FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine1" -ln "fkSpine1" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -6.4930988454064149 -5.3290705182007514e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
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
	setAttr ".r" -type "double3" 11.318409842316866 0 0 ;
	setAttr ".rp" -type "double3" 0 -5.8570659234100901 1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 0 -5.8570659234100901 1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_spine_2FKcontrol" -p "Ref:bip_spine_2FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine2" -ln "fkSpine2" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -5.8570659234100901 1.0658141036401503e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
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
	setAttr ".r" -type "double3" 17.539280619188368 0 0 ;
	setAttr ".rp" -type "double3" 0 -5.7539338262039053 4.4408920985006262e-016 ;
	setAttr ".sp" -type "double3" 0 -5.7539338262039053 4.4408920985006262e-016 ;
createNode transform -n "Ref:bip_spine_3FKcontrol" -p "Ref:bip_spine_3FKcontrolZeroGroup";
	addAttr -ci true -sn "fkSpine3" -ln "fkSpine3" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -5.7539338262039053 4.4408920985006262e-016 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".rp" -type "double3" 0 69.744780526694669 -2.9593811329371715 ;
	setAttr ".sp" -type "double3" 0 69.744780526694669 -2.9593811329371715 ;
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
	setAttr ".or" -type "double3" 0 66.486433405446121 -3.6915133280571792 ;
createNode joint -n "Ref:bip_hip_LIK" -p "UpperbodyControl";
	addAttr -ci true -sn "lIKupLeg" -ln "lIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.14859337215282065 -10.186628655690543 -1.6670372584049316 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.0938891494225258 11.865071120526684 2.6987694580344987 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_LIK" -p "Ref:bip_hip_LIK";
	addAttr -ci true -sn "lIKknee" -ln "lIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -19.139112515110277 -1.1102230246251565e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.79689885361277e-014 2.4102442477408781e-023 7.352534574252555e-023 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 18.149730101340904 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_LIK" -p "Ref:bip_knee_LIK";
	addAttr -ci true -sn "lIKankle" -ln "lIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.6362536154067584e-008 -19.653946301652049 3.4540090787515965e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.049871494041493977 6.2934479722657297 8.1810610185871582 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -61.519955698047966 1.5969183508931684 -3.0588471570074893 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_LIK" -p "Ref:bip_foot_LIK";
	addAttr -ci true -sn "lIKtoe" -ln "lIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.3290705182007514e-015 -6.4567229964205417 -2.4424906541753444e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5380965117909813e-022 4.1135997987080946e-007 1.1388394521493541e-022 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -40.972041818602939 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_LIK" -p "Ref:bip_toe_LIK";
	addAttr -ci true -sn "lIKtoeEnd" -ln "lIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -4.7508209410472491 -1.315252481705323e-015 ;
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
	setAttr ".rst" -type "double3" 6.7319130921479786 44.858595185881434 -7.2164496600635175e-016 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_LFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" -5.0938891494225258 11.865071120526681 2.6987694580344965 ;
	setAttr ".rp" -type "double3" 6.7319130921479786 44.858595185881434 -6.6613381477509392e-016 ;
	setAttr ".sp" -type "double3" 6.7319130921479786 44.858595185881434 -6.6613381477509392e-016 ;
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
		-1.5331160820031275e-015 -1.0624341692583459e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.0624341692583459e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.379704171703426 -6
		6 -6.379704171703426 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.3797041717034242 6
		-6 -6.379704171703426 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.379704171703426 -6
		6 -6.379704171703426 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.3797041717034242 6
		-1.5331160820031275e-015 -12.759408343406852 -6
		6 -12.75940834340685 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.75940834340685 6
		-6 -12.75940834340685 1.1151561445099656e-015
		-1.5331160820031275e-015 -12.759408343406852 -6
		6 -12.75940834340685 -2.8574148255855469e-016
		8.1147111599677579e-016 -12.75940834340685 6
		-1.5331160820031275e-015 -19.139112515110277 -6
		6 -19.139112515110277 -1.2246063538223773e-016
		8.1147111599677579e-016 -19.139112515110277 6
		-6 -19.139112515110277 1.2784369916862826e-015
		-1.5331160820031275e-015 -19.139112515110277 -6
		6 -19.139112515110277 -1.2246063538223773e-016
		8.1147111599677579e-016 -19.139112515110277 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_LFKZeroGroup" -p "Ref:bip_hip_LFK";
	setAttr ".r" -type "double3" 18.149730101340904 -1.5902773407317584e-015 7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -1.27675647831893e-015 -19.139112515110277 -1.5543122344752192e-015 ;
	setAttr ".sp" -type "double3" -1.27675647831893e-015 -19.139112515110277 -1.5543122344752192e-015 ;
createNode transform -n "Ref:bip_knee_LFK" -p "Ref:bip_knee_LFKZeroGroup";
	addAttr -ci true -sn "lFKknee" -ln "lFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.27675647831893e-015 -19.139112515110277 -1.5543122344752192e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
		-1.5331160820031275e-015 -1.0910131854420271e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -1.0910131854420271e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -6.5513154338840156 -6
		6 -6.5513154338840156 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.5513154338840138 6
		-6 -6.5513154338840156 9.5187529733364862e-016
		-1.5331160820031275e-015 -6.5513154338840156 -6
		6 -6.5513154338840156 -4.4902232973487166e-016
		8.1147111599677579e-016 -6.5513154338840138 6
		-1.5331160820031275e-015 -13.102630867768031 -6
		6 -13.102630867768029 -2.8574148255855469e-016
		8.1147111599677579e-016 -13.102630867768029 6
		-6 -13.102630867768029 1.1151561445099656e-015
		-1.5331160820031275e-015 -13.102630867768031 -6
		6 -13.102630867768029 -2.8574148255855469e-016
		8.1147111599677579e-016 -13.102630867768029 6
		-1.5331160820031275e-015 -19.653946301652045 -6
		6 -19.653946301652045 -1.2246063538223773e-016
		8.1147111599677579e-016 -19.653946301652045 6
		-6 -19.653946301652045 1.2784369916862826e-015
		-1.5331160820031275e-015 -19.653946301652045 -6
		6 -19.653946301652045 -1.2246063538223773e-016
		8.1147111599677579e-016 -19.653946301652045 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_LFKZeroGroup" -p "Ref:bip_knee_LFK";
	setAttr ".r" -type "double3" -61.51995569804798 1.5969183508931679 -3.0588471570074884 ;
	setAttr ".rp" -type "double3" 2.6362537597357516e-008 -19.653946301652056 3.4540077464839669e-009 ;
	setAttr ".sp" -type "double3" 2.6362537597357516e-008 -19.653946301652056 3.4540077464839669e-009 ;
createNode transform -n "Ref:bip_foot_LFK" -p "Ref:bip_foot_LFKZeroGroup";
	addAttr -ci true -sn "lFKankle" -ln "lFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.6362537597357516e-008 -19.653946301652056 3.4540077464839669e-009 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
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
		-1.5331160820031275e-015 -3.5842012671264113e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -3.5842012671264113e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -2.1522409988068492 -6
		6 -2.1522409988068492 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.1522409988068483 6
		-6 -2.1522409988068492 9.5187529733364862e-016
		-1.5331160820031275e-015 -2.1522409988068492 -6
		6 -2.1522409988068492 -4.4902232973487166e-016
		8.1147111599677579e-016 -2.1522409988068483 6
		-1.5331160820031275e-015 -4.3044819976136983 -6
		6 -4.3044819976136974 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.3044819976136974 6
		-6 -4.3044819976136974 1.1151561445099656e-015
		-1.5331160820031275e-015 -4.3044819976136983 -6
		6 -4.3044819976136974 -2.8574148255855469e-016
		8.1147111599677579e-016 -4.3044819976136974 6
		-1.5331160820031275e-015 -6.4567229964205461 -6
		6 -6.4567229964205461 -1.2246063538223773e-016
		8.1147111599677579e-016 -6.4567229964205461 6
		-6 -6.4567229964205461 1.2784369916862826e-015
		-1.5331160820031275e-015 -6.4567229964205461 -6
		6 -6.4567229964205461 -1.2246063538223773e-016
		8.1147111599677579e-016 -6.4567229964205461 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_LFKZeroGroup" -p "Ref:bip_foot_LFK";
	setAttr ".r" -type "double3" -40.972041818602946 -1.5902773407317584e-015 0 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -6.4567229964205426 2.2204460492503131e-015 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -6.4567229964205426 2.2204460492503131e-015 ;
createNode transform -n "Ref:bip_toe_LFK" -p "Ref:bip_toe_LFKZeroGroup";
	addAttr -ci true -sn "lFKtoe" -ln "lFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -6.4567229964205426 2.2204460492503131e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000002 ;
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
		-1.5331160820031275e-015 -2.6372353973110027e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 -2.6372353973110027e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 -1.583606980349082 -6
		6 -1.583606980349082 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.5836069803490815 6
		-6 -1.583606980349082 9.5187529733364862e-016
		-1.5331160820031275e-015 -1.583606980349082 -6
		6 -1.583606980349082 -4.4902232973487166e-016
		8.1147111599677579e-016 -1.5836069803490815 6
		-1.5331160820031275e-015 -3.167213960698164 -6
		6 -3.1672139606981635 -2.8574148255855469e-016
		8.1147111599677579e-016 -3.1672139606981635 6
		-6 -3.1672139606981635 1.1151561445099656e-015
		-1.5331160820031275e-015 -3.167213960698164 -6
		6 -3.1672139606981635 -2.8574148255855469e-016
		8.1147111599677579e-016 -3.1672139606981635 6
		-1.5331160820031275e-015 -4.7508209410472455 -6
		6 -4.7508209410472455 -1.2246063538223773e-016
		8.1147111599677579e-016 -4.7508209410472455 6
		-6 -4.7508209410472455 1.2784369916862826e-015
		-1.5331160820031275e-015 -4.7508209410472455 -6
		6 -4.7508209410472455 -1.2246063538223773e-016
		8.1147111599677579e-016 -4.7508209410472455 6
		
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
	setAttr ".rst" -type "double3" 6.7319130921479804 44.858595185881434 -8.8817841970012523e-016 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_hip_RIK" -p "UpperbodyControl";
	addAttr -ci true -sn "rIKupLeg" -ln "rIKupLeg" -at "message";
	setAttr -l on -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.14859499385422098 -10.18666402551246 -1.6670411433240722 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 174.90611085057725 -11.865071120526672 -2.698769458034497 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_knee_RIK" -p "Ref:bip_hip_RIK";
	addAttr -ci true -sn "rIKknee" -ln "rIKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5384188592502142e-006 19.13918422882168 3.4344418018417144e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -2.2047309136985712e-013 2.8383266487837409e-020 2.0623774920163802e-019 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 18.149730101341135 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_foot_RIK" -p "Ref:bip_knee_RIK";
	addAttr -ci true -sn "rIKankle" -ln "rIKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.9644045103985945e-007 19.653921115177994 7.634711528092808e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -0.04987097088290899 6.2934666297529702 8.1810834175873097 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -61.519955698047966 1.596918350893171 -3.058847157007496 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toe_RIK" -p "Ref:bip_foot_RIK";
	addAttr -ci true -sn "rIKtoe" -ln "rIKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -9.6389448778211317e-007 6.4567230606463033 -4.160191044544348e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.3804133688108353e-011 -1.8901393376389011e-006 -2.3092802287185966e-019 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -40.972041818602925 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_toeEnd_RIK" -p "Ref:bip_toe_RIK";
	addAttr -ci true -sn "rIKtoeEnd" -ln "rIKtoeEnd" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.4696411391976767e-005 4.750827073152224 8.1302816925094365e-015 ;
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
	setAttr ".rst" -type "double3" -6.73191 44.858641614906766 -3.8857805861880479e-016 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_hip_RFKZeroGroup" -p "UpperbodyControl";
	setAttr ".r" -type "double3" 174.90611085057725 -11.865071120526666 -2.6987694580344961 ;
	setAttr ".rp" -type "double3" -6.73191 44.858641614906766 -4.4408920985006262e-016 ;
	setAttr ".sp" -type "double3" -6.73191 44.858641614906766 -4.4408920985006262e-016 ;
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
		-1.5331160820031275e-015 1.0624381501690597e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.0624381501690597e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.3797280762741027 -6
		6 6.3797280762741027 -4.4902232973487166e-016
		8.1147111599677579e-016 6.3797280762741 6
		-6 6.3797280762741027 9.5187529733364862e-016
		-1.5331160820031275e-015 6.3797280762741027 -6
		6 6.3797280762741027 -4.4902232973487166e-016
		8.1147111599677579e-016 6.3797280762741 6
		-1.5331160820031275e-015 12.759456152548205 -6
		6 12.759456152548204 -2.8574148255855469e-016
		8.1147111599677579e-016 12.759456152548204 6
		-6 12.759456152548204 1.1151561445099656e-015
		-1.5331160820031275e-015 12.759456152548205 -6
		6 12.759456152548204 -2.8574148255855469e-016
		8.1147111599677579e-016 12.759456152548204 6
		-1.5331160820031275e-015 19.139184228822305 -6
		6 19.139184228822305 -1.2246063538223773e-016
		8.1147111599677579e-016 19.139184228822305 6
		-6 19.139184228822305 1.2784369916862826e-015
		-1.5331160820031275e-015 19.139184228822305 -6
		6 19.139184228822305 -1.2246063538223773e-016
		8.1147111599677579e-016 19.139184228822305 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_knee_RFKZeroGroup" -p "Ref:bip_hip_RFK";
	setAttr ".r" -type "double3" 18.149730101341131 0 0 ;
	setAttr ".rp" -type "double3" -3.5384188597498145e-006 19.139184228821673 3.4344418013976252e-006 ;
	setAttr ".sp" -type "double3" -3.5384188597498145e-006 19.139184228821673 3.4344418013976252e-006 ;
createNode transform -n "Ref:bip_knee_RFK" -p "Ref:bip_knee_RFKZeroGroup";
	addAttr -ci true -sn "rFKknee" -ln "rFKknee" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5384188597498145e-006 19.139184228821673 3.4344418013976252e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999978 ;
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
		-1.5331160820031275e-015 1.0910117873119423e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 1.0910117873119423e-015 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 6.5513070383931771 -6
		6 6.5513070383931771 -4.4902232973487166e-016
		8.1147111599677579e-016 6.5513070383931744 6
		-6 6.5513070383931771 9.5187529733364862e-016
		-1.5331160820031275e-015 6.5513070383931771 -6
		6 6.5513070383931771 -4.4902232973487166e-016
		8.1147111599677579e-016 6.5513070383931744 6
		-1.5331160820031275e-015 13.102614076786354 -6
		6 13.102614076786352 -2.8574148255855469e-016
		8.1147111599677579e-016 13.102614076786352 6
		-6 13.102614076786352 1.1151561445099656e-015
		-1.5331160820031275e-015 13.102614076786354 -6
		6 13.102614076786352 -2.8574148255855469e-016
		8.1147111599677579e-016 13.102614076786352 6
		-1.5331160820031275e-015 19.653921115179529 -6
		6 19.653921115179529 -1.2246063538223773e-016
		8.1147111599677579e-016 19.653921115179529 6
		-6 19.653921115179529 1.2784369916862826e-015
		-1.5331160820031275e-015 19.653921115179529 -6
		6 19.653921115179529 -1.2246063538223773e-016
		8.1147111599677579e-016 19.653921115179529 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_foot_RFKZeroGroup" -p "Ref:bip_knee_RFK";
	setAttr ".r" -type "double3" -61.519955698047966 1.5969183508931708 -3.0588471570074951 ;
	setAttr ".rp" -type "double3" 9.9644044992963643e-007 19.653921115178008 7.634711528092808e-006 ;
	setAttr ".sp" -type "double3" 9.9644044992963643e-007 19.653921115178008 7.634711528092808e-006 ;
createNode transform -n "Ref:bip_foot_RFK" -p "Ref:bip_foot_RFKZeroGroup";
	addAttr -ci true -sn "rFKankle" -ln "rFKankle" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 9.9644044992963643e-007 19.653921115178008 7.634711528092808e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
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
		-1.5331160820031275e-015 3.5842013027796514e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 3.5842013027796514e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 2.152241020215905 -6
		6 2.152241020215905 -4.4902232973487166e-016
		8.1147111599677579e-016 2.1522410202159041 6
		-6 2.152241020215905 9.5187529733364862e-016
		-1.5331160820031275e-015 2.152241020215905 -6
		6 2.152241020215905 -4.4902232973487166e-016
		8.1147111599677579e-016 2.1522410202159041 6
		-1.5331160820031275e-015 4.30448204043181 -6
		6 4.3044820404318092 -2.8574148255855469e-016
		8.1147111599677579e-016 4.3044820404318092 6
		-6 4.3044820404318092 1.1151561445099656e-015
		-1.5331160820031275e-015 4.30448204043181 -6
		6 4.3044820404318092 -2.8574148255855469e-016
		8.1147111599677579e-016 4.3044820404318092 6
		-1.5331160820031275e-015 6.4567230606477137 -6
		6 6.4567230606477137 -1.2246063538223773e-016
		8.1147111599677579e-016 6.4567230606477137 6
		-6 6.4567230606477137 1.2784369916862826e-015
		-1.5331160820031275e-015 6.4567230606477137 -6
		6 6.4567230606477137 -1.2246063538223773e-016
		8.1147111599677579e-016 6.4567230606477137 6
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_toe_RFKZeroGroup" -p "Ref:bip_foot_RFK";
	setAttr ".r" -type "double3" -40.972041818602918 0 0 ;
	setAttr ".rp" -type "double3" -9.6389449122380455e-007 6.4567230606463006 -4.1601910529820429e-006 ;
	setAttr ".sp" -type "double3" -9.6389449122380455e-007 6.4567230606463006 -4.1601910529820429e-006 ;
createNode transform -n "Ref:bip_toe_RFK" -p "Ref:bip_toe_RFKZeroGroup";
	addAttr -ci true -sn "rFKtoe" -ln "rFKtoe" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -9.6389449122380455e-007 6.4567230606463006 -4.1601910529820429e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
		-1.5331160820031275e-015 2.6372388013834043e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-6 0 7.8859445015733165e-016
		-1.5331160820031275e-015 2.6372388013834043e-016 -6
		6 0 -6.1230317691118863e-016
		8.1147111599677579e-016 0 6
		-1.5331160820031275e-015 1.5836090244263086 -6
		6 1.5836090244263086 -4.4902232973487166e-016
		8.1147111599677579e-016 1.5836090244263081 6
		-6 1.5836090244263086 9.5187529733364862e-016
		-1.5331160820031275e-015 1.5836090244263086 -6
		6 1.5836090244263086 -4.4902232973487166e-016
		8.1147111599677579e-016 1.5836090244263081 6
		-1.5331160820031275e-015 3.1672180488526172 -6
		6 3.1672180488526167 -2.8574148255855469e-016
		8.1147111599677579e-016 3.1672180488526167 6
		-6 3.1672180488526167 1.1151561445099656e-015
		-1.5331160820031275e-015 3.1672180488526172 -6
		6 3.1672180488526167 -2.8574148255855469e-016
		8.1147111599677579e-016 3.1672180488526167 6
		-1.5331160820031275e-015 4.7508270732789253 -6
		6 4.7508270732789253 -1.2246063538223773e-016
		8.1147111599677579e-016 4.7508270732789253 6
		-6 4.7508270732789253 1.2784369916862826e-015
		-1.5331160820031275e-015 4.7508270732789253 -6
		6 4.7508270732789253 -1.2246063538223773e-016
		8.1147111599677579e-016 4.7508270732789253 6
		
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
	setAttr ".rst" -type "double3" -6.7319099999999992 44.858641614906787 -1.3322676295501878e-015 ;
	setAttr -k on ".w0";
createNode transform -n "codPiece_controlZeroGroup" -p "UpperbodyControl";
	setAttr ".t" -type "double3" -0.00037082634246193537 47.84800005233145 5.6943800745932975 ;
	setAttr ".r" -type "double3" 1.3061224839173222 -0.030067363754955521 -88.681493884061169 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "codPiece_control" -p "codPiece_controlZeroGroup";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "codPiece_controlShape" -p "codPiece_control";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.5152922 -5.2584009 -1.0359411 
		11.345475 -2.4338856 -1.0359411 2.5152922 5.1727781 -1.0359411 11.345475 1.9416808 
		-1.0359411 2.5149446 5.1576896 1.6977172 11.34513 1.9265922 1.6977172 2.5149446 -5.2734895 
		1.6977172 11.34513 -2.4489739 1.6977172;
	setAttr -s 8 ".vt[0:7]"  -2.5 -2.5 2.5 2.5 -2.5 2.5 -2.5 2.5 2.5 2.5 2.5 2.5
		 -2.5 2.5 -2.5 2.5 2.5 -2.5 -2.5 -2.5 -2.5 2.5 -2.5 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 1;
createNode joint -n "Ref:bip_spine_0ik" -p "main";
	addAttr -ci true -sn "ikSpine0" -ln "ikSpine0" -at "message";
	setAttr ".v" no;
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".t" -type "double3" 0 52.226975883856156 -1.5610022426794423 ;
	setAttr ".r" -type "double3" 2.9150354415877069 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 157.79782924691935 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_1ik" -p "Ref:bip_spine_0ik";
	addAttr -ci true -sn "ikSpine1" -ln "ikSpine1" -at "message";
	setAttr ".t" -type "double3" 0 -6.493098845406422 3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" -4.415202708181873 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 21.833233092346433 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_2ik" -p "Ref:bip_spine_1ik";
	addAttr -ci true -sn "ikSpine2" -ln "ikSpine2" -at "message";
	setAttr ".t" -type "double3" 0 -5.857065923410083 -1.3322676295501878e-015 ;
	setAttr ".r" -type "double3" 0.23644766798511602 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.318409842316919 0 0 ;
	setAttr ".radi" 2;
createNode joint -n "Ref:bip_spine_3ik" -p "Ref:bip_spine_2ik";
	addAttr -ci true -sn "ikSpine3" -ln "ikSpine3" -at "message";
	setAttr ".t" -type "double3" 0 -5.7539338262039479 5.3290705182007514e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 17.539280619188368 0 0 ;
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
	setAttr ".lr" -type "double3" 152.77496679810119 0 0 ;
	setAttr ".o" -type "double3" -152.77496679810119 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Ref:bip_spine_2ik";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikSpine" -p "main";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 69.88151355146006 -2.9286579945356488 ;
	setAttr ".r" -type "double3" -170.31424741702637 0 0 ;
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
		6 0 0 0 18.104098595020449 18.104098595020449 18.104098595020449
		4
		0 52.226975883856156 -1.5610022426794423
		0 58.275060818963063 -4.6918065586461086
		0 63.228086284197566 -4.4236455231771874
		0 69.744780526694669 -2.9593811329371715
		;
	setAttr ".dcv" yes;
	setAttr ".dep" yes;
	setAttr ".dh" yes;
createNode transform -n "chestParent" -p "main";
	addAttr -ci true -sn "chestParent" -ln "chestParent" -at "message";
	setAttr ".rp" -type "double3" 0 69.74478052669464 -2.9593811329371702 ;
	setAttr ".sp" -type "double3" 0 69.74478052669464 -2.9593811329371702 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -2.1316282072803006e-014 7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 151.51124719922896 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0.13564069268247891 -0.035233986229020076 ;
	setAttr ".tg[1].tor" -type "double3" 152.77496679735461 0 0 ;
	setAttr ".rst" -type "double3" 0 0 8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -2.4169194052175335e-010 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "neckControlZeroGroup" -p "chestParent";
	setAttr ".t" -type "double3" 0 143.85975991869643 15.766297514805899 ;
	setAttr ".r" -type "double3" -165.55655676522491 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 72.928789693227998 -1.2314144024920695 ;
	setAttr ".rpt" -type "double3" 0 -143.85975991869648 -15.766297514805899 ;
	setAttr ".sp" -type "double3" 0 72.928789693227984 -1.2314144024920692 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-014 -2.2204460492503136e-016 ;
createNode transform -n "lShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" 27.186372812422526 0.72477034050182232 79.111240142637641 ;
	setAttr ".rp" -type "double3" 2.7768792009999292 70.06722359050255 1.2235558529962929 ;
	setAttr ".sp" -type "double3" 2.7768792009999292 70.06722359050255 1.2235558529962929 ;
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
		-1.7247555922535185e-015 -2.7782643719979618 -6.75
		6.75 -2.7782643719979614 -5.0515012095173062e-016
		9.1290500549637277e-016 -2.7782643719979609 6.75
		-6.75 -2.7782643719979614 1.0708597095003547e-015
		-1.7247555922535185e-015 -2.7782643719979618 -6.75
		6.75 -2.7782643719979614 -5.0515012095173062e-016
		9.1290500549637277e-016 -2.7782643719979609 6.75
		-1.7247555922535185e-015 -5.5565287439959228 -6.75
		6.75 -5.5565287439959228 -3.2145916787837403e-016
		9.1290500549637277e-016 -5.5565287439959228 6.75
		-6.75 -5.5565287439959228 1.2545506625737113e-015
		-1.7247555922535185e-015 -5.5565287439959228 -6.75
		6.75 -5.5565287439959228 -3.2145916787837403e-016
		9.1290500549637277e-016 -5.5565287439959228 6.75
		-1.7247555922535185e-015 -8.3347931159938842 -6.75
		6.75 -8.3347931159938842 -1.3776821480501744e-016
		9.1290500549637277e-016 -8.3347931159938842 6.75
		-6.75 -8.3347931159938842 1.4382416156470679e-015
		-1.7247555922535185e-015 -8.3347931159938842 -6.75
		6.75 -8.3347931159938842 -1.3776821480501744e-016
		9.1290500549637277e-016 -8.3347931159938842 6.75
		
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
	setAttr ".rst" -type "double3" 2.7768792009999275 70.067223590502536 1.2235558529962867 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_LFKZeroGroup" -p "lShoulderControl";
	setAttr ".rp" -type "double3" 1.4803136480501244e-008 -8.3347931159938806 1.6298962179916998e-011 ;
	setAttr ".sp" -type "double3" 1.4803136480501244e-008 -8.3347931159938806 1.6298962179916998e-011 ;
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
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
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
		-1.7247555922535185e-015 -4.5174372098722193 -6.75
		6.75 -4.5174372098722184 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.5174372098722184 6.75
		-6.75 -4.5174372098722184 1.0708597095003547e-015
		-1.7247555922535185e-015 -4.5174372098722193 -6.75
		6.75 -4.5174372098722184 -5.0515012095173062e-016
		9.1290500549637277e-016 -4.5174372098722184 6.75
		-1.7247555922535185e-015 -9.0348744197444368 -6.75
		6.75 -9.0348744197444368 -3.2145916787837403e-016
		9.1290500549637277e-016 -9.0348744197444368 6.75
		-6.75 -9.0348744197444368 1.2545506625737113e-015
		-1.7247555922535185e-015 -9.0348744197444368 -6.75
		6.75 -9.0348744197444368 -3.2145916787837403e-016
		9.1290500549637277e-016 -9.0348744197444368 6.75
		-1.7247555922535185e-015 -13.552311629616657 -6.75
		6.75 -13.552311629616657 -1.3776821480501744e-016
		9.1290500549637277e-016 -13.552311629616657 6.75
		-6.75 -13.552311629616657 1.4382416156470679e-015
		-1.7247555922535185e-015 -13.552311629616657 -6.75
		6.75 -13.552311629616657 -1.3776821480501744e-016
		9.1290500549637277e-016 -13.552311629616657 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_LFKZeroGroup" -p "Ref:bip_upperArm_LFK";
	setAttr ".r" -type "double3" -10.582779398259973 1.9878466759146985e-016 0 ;
	setAttr ".rp" -type "double3" -1.3516965324811281e-014 -13.552311629616671 -1.4432899320127035e-015 ;
	setAttr ".sp" -type "double3" -1.3516965324811281e-014 -13.552311629616671 -1.4432899320127035e-015 ;
createNode transform -n "Ref:bip_lowerArm_LFK" -p "Ref:bip_lowerArm_LFKZeroGroup";
	addAttr -ci true -sn "lFKelbow" -ln "lFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3516965324811281e-014 -13.552311629616671 -1.4432899320127035e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
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
		-1.7247555922535185e-015 -3.9481458942764913 -6.75
		6.75 -3.9481458942764904 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.94814589427649 6.75
		-6.75 -3.9481458942764904 1.0708597095003547e-015
		-1.7247555922535185e-015 -3.9481458942764913 -6.75
		6.75 -3.9481458942764904 -5.0515012095173062e-016
		9.1290500549637277e-016 -3.94814589427649 6.75
		-1.7247555922535185e-015 -7.8962917885529809 -6.75
		6.75 -7.8962917885529809 -3.2145916787837403e-016
		9.1290500549637277e-016 -7.8962917885529809 6.75
		-6.75 -7.8962917885529809 1.2545506625737113e-015
		-1.7247555922535185e-015 -7.8962917885529809 -6.75
		6.75 -7.8962917885529809 -3.2145916787837403e-016
		9.1290500549637277e-016 -7.8962917885529809 6.75
		-1.7247555922535185e-015 -11.844437682829472 -6.75
		6.75 -11.844437682829472 -1.3776821480501744e-016
		9.1290500549637277e-016 -11.844437682829472 6.75
		-6.75 -11.844437682829472 1.4382416156470679e-015
		-1.7247555922535185e-015 -11.844437682829472 -6.75
		6.75 -11.844437682829472 -1.3776821480501744e-016
		9.1290500549637277e-016 -11.844437682829472 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_LFKZeroGroup" -p "Ref:bip_lowerArm_LFK";
	setAttr ".r" -type "double3" 5.963540027744092e-016 0 3.1805546814635152e-015 ;
	setAttr ".rp" -type "double3" -1.3600232051658168e-014 -11.844437682829462 1.8873791418627661e-015 ;
	setAttr ".sp" -type "double3" -1.3600232051658168e-014 -11.844437682829462 1.8873791418627661e-015 ;
createNode transform -n "Ref:bip_hand_LFK" -p "Ref:bip_hand_LFKZeroGroup";
	addAttr -ci true -sn "lFKwrist" -ln "lFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3600232051658168e-014 -11.844437682829462 1.8873791418627661e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
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
	setAttr ".rst" -type "double3" 1.4803124059881156e-008 -8.3347931159938931 1.6301016092512555e-011 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.4803106233539058e-008 -8.3347931159938859 
		1.630321645866889e-011 ;
	setAttr ".tg[0].tor" -type "double3" -23.765204982774886 -17.264425485832355 -53.909590180438833 ;
	setAttr ".tg[1].tot" -type "double3" 10.048303945750613 -4.7203002482485417 -0.58211735238384443 ;
	setAttr ".tg[1].tor" -type "double3" 161.12547019601905 -9.7385622994020853 -22.086220869765562 ;
	setAttr ".tg[2].tot" -type "double3" 10.048303945750613 20.559934884359933 -1.5644784616930765 ;
	setAttr ".tg[2].tor" -type "double3" -8.6901565708993331 5.4906647066349237 23.440175710185176 ;
	setAttr ".tg[3].tot" -type "double3" 10.048303945750613 68.619394913790543 -2.5841929032554778 ;
	setAttr ".tg[3].tor" -type "double3" -8.6901565708993331 5.4906647066349237 23.440175710185176 ;
	setAttr ".lr" -type "double3" -23.765204982774893 -17.264425485832355 -53.90959018043884 ;
	setAttr ".rst" -type "double3" -1.4863110742169283e-014 -3.5527136788005009e-015 
		1.7763568394002505e-015 ;
	setAttr ".rsrr" -type "double3" -23.76520498277489 -17.264425485832355 -53.909590180438819 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "rShoulderControlZeroGroup" -p "chestParent";
	setAttr ".r" -type "double3" -152.81362718757768 -0.72477034050180145 -79.111240142637698 ;
	setAttr ".rp" -type "double3" -2.77688 70.067241614906777 1.2235600000000004 ;
	setAttr ".sp" -type "double3" -2.77688 70.067241614906777 1.2235600000000004 ;
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
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
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
		-1.7247555922535185e-015 2.7782615211455135 -6.75
		6.75 2.7782615211455131 -5.0515012095173062e-016
		9.1290500549637277e-016 2.7782615211455126 6.75
		-6.75 2.7782615211455131 1.0708597095003547e-015
		-1.7247555922535185e-015 2.7782615211455135 -6.75
		6.75 2.7782615211455131 -5.0515012095173062e-016
		9.1290500549637277e-016 2.7782615211455126 6.75
		-1.7247555922535185e-015 5.5565230422910261 -6.75
		6.75 5.5565230422910261 -3.2145916787837403e-016
		9.1290500549637277e-016 5.5565230422910261 6.75
		-6.75 5.5565230422910261 1.2545506625737113e-015
		-1.7247555922535185e-015 5.5565230422910261 -6.75
		6.75 5.5565230422910261 -3.2145916787837403e-016
		9.1290500549637277e-016 5.5565230422910261 6.75
		-1.7247555922535185e-015 8.3347845634365392 -6.75
		6.75 8.3347845634365392 -1.3776821480501744e-016
		9.1290500549637277e-016 8.3347845634365392 6.75
		-6.75 8.3347845634365392 1.4382416156470679e-015
		-1.7247555922535185e-015 8.3347845634365392 -6.75
		6.75 8.3347845634365392 -1.3776821480501744e-016
		9.1290500549637277e-016 8.3347845634365392 6.75
		
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
	setAttr ".rst" -type "double3" -2.7768799999999971 70.067241614906806 1.2235599999999986 ;
	setAttr -k on ".w0";
createNode transform -n "Ref:bip_upperArm_RFKZeroGroup" -p "rShoulderControl";
	setAttr ".rp" -type "double3" -2.7292468111804469e-005 8.3347845633900661 5.4032549163807175e-006 ;
	setAttr ".sp" -type "double3" -2.7292468111804469e-005 8.3347845633900661 5.4032549163807175e-006 ;
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
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999944 ;
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
		-1.7247555922535185e-015 4.5174608642313352 -6.75
		6.75 4.5174608642313343 -5.0515012095173062e-016
		9.1290500549637277e-016 4.5174608642313334 6.75
		-6.75 4.5174608642313343 1.0708597095003547e-015
		-1.7247555922535185e-015 4.5174608642313352 -6.75
		6.75 4.5174608642313343 -5.0515012095173062e-016
		9.1290500549637277e-016 4.5174608642313334 6.75
		-1.7247555922535185e-015 9.0349217284626686 -6.75
		6.75 9.0349217284626686 -3.2145916787837403e-016
		9.1290500549637277e-016 9.0349217284626686 6.75
		-6.75 9.0349217284626686 1.2545506625737113e-015
		-1.7247555922535185e-015 9.0349217284626686 -6.75
		6.75 9.0349217284626686 -3.2145916787837403e-016
		9.1290500549637277e-016 9.0349217284626686 6.75
		-1.7247555922535185e-015 13.552382592694002 -6.75
		6.75 13.552382592694002 -1.3776821480501744e-016
		9.1290500549637277e-016 13.552382592694002 6.75
		-6.75 13.552382592694002 1.4382416156470679e-015
		-1.7247555922535185e-015 13.552382592694002 -6.75
		6.75 13.552382592694002 -1.3776821480501744e-016
		9.1290500549637277e-016 13.552382592694002 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_lowerArm_RFKZeroGroup" -p "Ref:bip_upperArm_RFK";
	setAttr ".r" -type "double3" -10.582779398260069 3.975693351829394e-016 3.1805546814635152e-015 ;
	setAttr ".rp" -type "double3" -1.3848580334527294e-005 13.552382592680807 1.2852356278181265e-005 ;
	setAttr ".sp" -type "double3" -1.3848580334527294e-005 13.552382592680807 1.2852356278181265e-005 ;
createNode transform -n "Ref:bip_lowerArm_RFK" -p "Ref:bip_lowerArm_RFKZeroGroup";
	addAttr -ci true -sn "rFKelbow" -ln "rFKelbow" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.3848580334527294e-005 13.552382592680807 1.2852356278181265e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 1 ;
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
		-1.7247555922535185e-015 3.9481470136043435 -6.75
		6.75 3.9481470136043431 -5.0515012095173062e-016
		9.1290500549637277e-016 3.9481470136043426 6.75
		-6.75 3.9481470136043431 1.0708597095003547e-015
		-1.7247555922535185e-015 3.9481470136043435 -6.75
		6.75 3.9481470136043431 -5.0515012095173062e-016
		9.1290500549637277e-016 3.9481470136043426 6.75
		-1.7247555922535185e-015 7.8962940272086861 -6.75
		6.75 7.8962940272086861 -3.2145916787837403e-016
		9.1290500549637277e-016 7.8962940272086861 6.75
		-6.75 7.8962940272086861 1.2545506625737113e-015
		-1.7247555922535185e-015 7.8962940272086861 -6.75
		6.75 7.8962940272086861 -3.2145916787837403e-016
		9.1290500549637277e-016 7.8962940272086861 6.75
		-1.7247555922535185e-015 11.844441040813029 -6.75
		6.75 11.844441040813029 -1.3776821480501744e-016
		9.1290500549637277e-016 11.844441040813029 6.75
		-6.75 11.844441040813029 1.4382416156470679e-015
		-1.7247555922535185e-015 11.844441040813029 -6.75
		6.75 11.844441040813029 -1.3776821480501744e-016
		9.1290500549637277e-016 11.844441040813029 6.75
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_hand_RFKZeroGroup" -p "Ref:bip_lowerArm_RFK";
	setAttr ".r" -type "double3" 3.975693351829396e-015 -1.5902773407317592e-015 0 ;
	setAttr ".rp" -type "double3" 7.2171749640637106e-005 11.844441040587512 1.1570869525967531e-005 ;
	setAttr ".sp" -type "double3" 7.2171749640637106e-005 11.844441040587512 1.1570869525967531e-005 ;
createNode transform -n "Ref:bip_hand_RFK" -p "Ref:bip_hand_RFKZeroGroup";
	addAttr -ci true -sn "rFKwrist" -ln "rFKwrist" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.2171749640637106e-005 11.844441040587512 1.1570869525967531e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".s" -type "double3" 0.99999999999999967 1 1 ;
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
	setAttr ".rst" -type "double3" -2.729246812371855e-005 8.3347845633900608 5.4032549135496488e-006 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.7292468099641055e-005 8.3347845633900661 
		5.4032549159008615e-006 ;
	setAttr ".tg[0].tor" -type "double3" -23.765204982774748 -17.264425485832209 -53.90959018043894 ;
	setAttr ".tg[1].tot" -type "double3" -10.048299999999943 -4.7203466506280227 -0.58211133222414546 ;
	setAttr ".tg[1].tor" -type "double3" -18.874529803980955 9.738562299402048 22.086220869765562 ;
	setAttr ".tg[2].tot" -type "double3" -10.048299999999943 20.559981585476116 -1.5644755584375687 ;
	setAttr ".tg[2].tor" -type "double3" 171.30984342910065 -5.4906647066348855 -23.440175710185169 ;
	setAttr ".tg[3].tot" -type "double3" -10.048299999999943 68.619441614906734 -2.5841899999999698 ;
	setAttr ".tg[3].tor" -type "double3" 171.30984342910065 -5.4906647066348855 -23.440175710185169 ;
	setAttr ".lr" -type "double3" -23.765204982774748 -17.264425485832209 -53.90959018043894 ;
	setAttr ".rst" -type "double3" 7.4246164771807344e-016 0 -3.5527136788005009e-015 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
	setAttr -k on ".w3";
createNode transform -n "neckControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 143.85975991869643 15.766297514805899 ;
	setAttr ".sp" -type "double3" 0 143.85975991869643 15.766297514805899 ;
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
	setAttr ".lr" -type "double3" -165.55655676522491 0 0 ;
	setAttr ".rsrr" -type "double3" -165.55655676522491 0 0 ;
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
	setAttr ".o" -type "double3" 0 74.114979392001786 18.72567864774307 ;
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
	setAttr ".rst" -type "double3" 0 72.928789693227955 -1.2314144024920672 ;
	setAttr -k on ".w0";
createNode transform -n "headControlZeroGroup" -p "neckControl";
	setAttr ".t" -type "double3" 0 -77.013099459106215 19.382701341245124 ;
	setAttr ".r" -type "double3" -14.443443234775089 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 76.171176458273777 -0.39628992872490004 ;
	setAttr ".rpt" -type "double3" 0 -2.5062861952646092 -18.986411412520219 ;
	setAttr ".sp" -type "double3" 0 76.171176458273806 -0.39628992872490021 ;
	setAttr ".spt" -type "double3" 0 -2.8421709430403995e-014 1.6653345369377341e-016 ;
createNode transform -n "headControlLockParent" -p "main";
	setAttr ".rp" -type "double3" 0 -77.013099459106215 19.382701341245124 ;
	setAttr ".sp" -type "double3" 0 -77.013099459106215 19.382701341245124 ;
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
	setAttr ".lr" -type "double3" -180 0 0 ;
	setAttr ".rsrr" -type "double3" -180 0 0 ;
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
	setAttr ".o" -type "double3" 0 -149.9418891523342 20.614115743737194 ;
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
	setAttr ".r" -type "double3" -1.3377586926819697e-014 0 0 ;
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
	setAttr ".rst" -type "double3" 0 76.171176458273806 -0.39628992872490021 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_LIK" -p "main";
	addAttr -ci true -sn "lIKshoulder" -ln "lIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.021318490567777442 -5.3097321409367666 0.45975151613177884 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.690156570899326 5.4906647066349157 23.440175710185208 ;
createNode joint -n "Ref:bip_lowerArm_LIK" -p "Ref:bip_upperArm_LIK";
	addAttr -ci true -sn "lIKelbow" -ln "lIKelbow" -at "message";
	setAttr ".t" -type "double3" -5.3290705182007514e-015 -13.552311629616668 3.9968028886505635e-015 ;
	setAttr ".r" -type "double3" 3.5251436728593319e-012 -8.3631640560064886e-027 3.682755885487255e-026 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -10.582779398259971 0 0 ;
createNode joint -n "Ref:bip_hand_LIK" -p "Ref:bip_lowerArm_LIK";
	addAttr -ci true -sn "lIKwrist" -ln "lIKwrist" -at "message";
	setAttr ".t" -type "double3" -2.8421709430404007e-014 -11.844437682829447 -1.0769163338864018e-014 ;
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
	setAttr ".rst" -type "double3" 10.048303945750609 68.619394913790543 -2.584192903255476 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_LIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 13.976808698327435 2.7889253037335706 4.9840884480906205 ;
	setAttr ".sp" -type "double3" 13.97680869832743 2.7889253037335706 4.9840884480906187 ;
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
	setAttr ".rst" -type "double3" 6.3711180906901497 43.508065706187686 -1.6385051890002456 ;
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
	setAttr ".rst" -type "double3" 5.5088588497485294 -12.213239267004909 2.0382372989130086 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" 20.347926789017585 46.296991009921257 3.3455832590903753 ;
	setAttr ".sp" -type "double3" 20.347926789017585 46.296991009921257 3.3455832590903753 ;
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
	setAttr ".tg[0].tot" -type "double3" 20.347926789017585 -1.7624690195093535 4.3652977006527758 ;
	setAttr ".rst" -type "double3" 0 0 -8.8817841970012523e-016 ;
	setAttr -k on ".w0";
createNode transform -n "likHandControlWeaponGroup" -p "likHandControlGroup";
	addAttr -ci true -sn "lWeaponAttach" -ln "lWeaponAttach" -at "message";
	setAttr ".t" -type "double3" 0 0 4.4408920985006262e-016 ;
	setAttr ".rp" -type "double3" 20.347926789017585 46.296991009921257 3.3455832590903749 ;
	setAttr ".sp" -type "double3" 20.347926789017585 46.296991009921257 3.3455832590903749 ;
createNode transform -n "likHandControlZeroGroup" -p "likHandControlWeaponGroup";
	setAttr ".t" -type "double3" 20.347926789017585 46.296991009921257 3.3455832590903749 ;
	setAttr ".rp" -type "double3" 20.347926789017585 46.296991009921257 3.3455832590903749 ;
	setAttr ".sp" -type "double3" 20.347926789017585 46.296991009921257 3.3455832590903749 ;
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
	setAttr ".lr" -type "double3" -19.209428666697189 0.31019617981674752 24.693917522808462 ;
	setAttr ".rsrr" -type "double3" -19.272935969159299 5.490664706634913 23.440175710185173 ;
	setAttr -k on ".w0";
createNode transform -n "lElbowControl" -p "main";
	addAttr -ci true -sn "lElbowControl" -ln "lElbowControl" -at "message";
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
	setAttr ".rp" -type "double3" 15.557162795499138 56.406155646785635 -0.54595560434246737 ;
	setAttr ".sp" -type "double3" 15.557162795499138 56.406155646785635 -0.54595560434246737 ;
	setAttr ".hdl" -type "double3" 15.557162795499138 56.406155646785635 -0.54595560434246737 ;
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
		14.557162795499138 56.406155646785635 -0.54595560434246759
		14.557162795499138 56.406155646785635 -0.54595560434246759
		14.557162795499138 56.406155646785635 -0.54595560434246759
		14.557162795499138 56.406155646785635 -0.54595560434246759
		14.557162795499138 56.406155646785635 -0.54595560434246759
		15.557162795499138 56.406155646785635 -1.5459556043424674
		15.557162795499138 55.406155646785635 -0.54595560434246737
		15.557162795499138 56.406155646785635 0.45404439565753263
		15.557162795499138 57.406155646785635 -0.54595560434246726
		15.557162795499138 56.406155646785635 -1.5459556043424674
		16.557162795499138 56.406155646785635 -0.54595560434246726
		16.557162795499138 56.406155646785635 -0.54595560434246726
		16.557162795499138 56.406155646785635 -0.54595560434246726
		16.557162795499138 56.406155646785635 -0.54595560434246726
		16.557162795499138 56.406155646785635 -0.54595560434246726
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 20.347926789017588 43.166630801877872 3.3455832590903727 ;
	setAttr ".rpt" -type "double3" -19.386647945340087 2.8662961826259155 -16.331523462417874 ;
	setAttr ".sp" -type "double3" 20.347926789017588 43.166630801877872 3.3455832590903736 ;
	setAttr ".spt" -type "double3" 0 0 -8.8817841970012513e-016 ;
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
	setAttr ".r" -type "double3" -3.975693351829396e-015 7.951386703658789e-016 -7.0568556994971777e-015 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" -1.4749492356926388 -3.5461464381530718 1.802600951764973 ;
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
		-1.1498370615023457e-015 -4.6338639711202034e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 4.6338639711202034e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 -4.6338639711202034e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 4.6338639711202034e-016 4.5
		-1.1498370615023457e-015 -2.0869068053622515 -4.5
		4.5 -2.0869068053622515 -3.3676674730115375e-016
		6.0860333699758185e-016 -2.086906805362251 4.5
		-4.5 -2.0869068053622515 7.1390647300023646e-016
		-1.1498370615023457e-015 -2.0869068053622515 -4.5
		4.5 -2.0869068053622515 -3.3676674730115375e-016
		6.0860333699758185e-016 -2.086906805362251 4.5
		-1.1498370615023457e-015 -4.173813610724503 -4.5
		4.5 -4.173813610724503 -2.1430611191891602e-016
		6.0860333699758185e-016 -4.173813610724503 4.5
		-4.5 -4.173813610724503 8.3636710838247419e-016
		-1.1498370615023457e-015 -4.173813610724503 -4.5
		4.5 -4.173813610724503 -2.1430611191891602e-016
		6.0860333699758185e-016 -4.173813610724503 4.5
		-1.1498370615023457e-015 -6.2607204160867544 -4.5
		4.5 -6.2607204160867544 -9.1845476536678294e-017
		6.0860333699758185e-016 -6.2607204160867544 4.5
		-4.5 -6.2607204160867544 9.5882774376471192e-016
		-1.1498370615023457e-015 -6.2607204160867544 -4.5
		4.5 -6.2607204160867544 -9.1845476536678294e-017
		6.0860333699758185e-016 -6.2607204160867544 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -29.89474375022478 -9.478451605147594 -24.687129983938995 ;
	setAttr ".rp" -type "double3" -2.6108975466089026 -2.2618786189621005 2.8145951764083335 ;
	setAttr ".sp" -type "double3" -2.6108975466089026 -2.2618786189621005 2.8145951764083335 ;
createNode transform -n "Ref:bip_thumb_0_LControlrollGroup" -p "Ref:bip_thumb_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -2.6108975466089008 -2.2618786189620983 2.8145951764083299 ;
	setAttr ".sp" -type "double3" -2.6108975466089008 -2.2618786189620983 2.8145951764083299 ;
createNode transform -n "Ref:bip_thumb_0_LControl" -p "Ref:bip_thumb_0_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -2.6108975466089008 -2.2618786189620983 2.8145951764083299 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -2.782985346280578e-015 1.5902773407317588e-015 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999967 ;
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
		-5.7491853075117283e-016 -2.1661517444804996e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.1661517444804996e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.1661517444804996e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.1661517444804996e-016 2.25
		-5.7491853075117283e-016 -0.9755480189270328 -2.25
		2.25 -0.9755480189270328 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.97554801892703269 2.25
		-2.25 -0.9755480189270328 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.9755480189270328 -2.25
		2.25 -0.9755480189270328 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.97554801892703269 2.25
		-5.7491853075117283e-016 -1.9510960378540656 -2.25
		2.25 -1.9510960378540656 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.9510960378540656 2.25
		-2.25 -1.9510960378540656 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.9510960378540656 -2.25
		2.25 -1.9510960378540656 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.9510960378540656 2.25
		-5.7491853075117283e-016 -2.9266440567810985 -2.25
		2.25 -2.9266440567810985 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.9266440567810985 2.25
		-2.25 -2.9266440567810985 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.9266440567810985 -2.25
		2.25 -2.9266440567810985 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.9266440567810985 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_LControlZeroGroup" -p "Ref:bip_thumb_0_LControl";
	setAttr ".r" -type "double3" 12.66175038195879 -1.5902773407317584e-015 -7.9513867036587919e-016 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 -2.9266440567810936 1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-016 -2.9266440567810936 1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_thumb_1_LControlrollGroup" -p "Ref:bip_thumb_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 1.3322676295501878e-015 -2.9266440567810905 1.9095836023552692e-014 ;
	setAttr ".sp" -type "double3" 1.3322676295501878e-015 -2.9266440567810905 1.9095836023552692e-014 ;
createNode transform -n "Ref:bip_thumb_1_LControl" -p "Ref:bip_thumb_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -2.9266440567810905 1.9095836023552692e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.888454342118963e-015 0 -1.590277340731758e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.2321487336257219e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2321487336257219e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2321487336257219e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2321487336257219e-016 2.25
		-5.7491853075117283e-016 -0.55491045776218295 -2.25
		2.25 -0.55491045776218295 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.55491045776218284 2.25
		-2.25 -0.55491045776218295 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.55491045776218295 -2.25
		2.25 -0.55491045776218295 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.55491045776218284 2.25
		-5.7491853075117283e-016 -1.1098209155243659 -2.25
		2.25 -1.1098209155243659 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1098209155243659 2.25
		-2.25 -1.1098209155243659 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1098209155243659 -2.25
		2.25 -1.1098209155243659 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1098209155243659 2.25
		-5.7491853075117283e-016 -1.664731373286549 -2.25
		2.25 -1.664731373286549 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.664731373286549 2.25
		-2.25 -1.664731373286549 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.664731373286549 -2.25
		2.25 -1.664731373286549 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.664731373286549 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_LControlZeroGroup" -p "Ref:bip_thumb_1_LControl";
	setAttr ".r" -type "double3" -25.368891613304097 -1.5902773407317588e-015 -7.9513867036587939e-016 ;
	setAttr ".rp" -type "double3" -2.6645352591003757e-015 -1.6647313732865638 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -2.6645352591003757e-015 -1.6647313732865638 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControlrollGroup" -p "Ref:bip_thumb_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 4.8849813083506888e-015 -1.6647313732865636 -7.5495165674510645e-015 ;
	setAttr ".sp" -type "double3" 4.8849813083506888e-015 -1.6647313732865636 -7.5495165674510645e-015 ;
createNode transform -n "Ref:bip_thumb_2_LControl" -p "Ref:bip_thumb_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.8849813083506888e-015 -1.6647313732865636 -7.5495165674510645e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -2.3854160110976388e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999967 ;
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
		-5.7491853075117283e-016 -1.1086279992810407e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.1086279992810407e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.1086279992810407e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.1086279992810407e-016 2.25
		-5.7491853075117283e-016 -0.49928166444545935 -2.25
		2.25 -0.49928166444545935 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.49928166444545929 2.25
		-2.25 -0.49928166444545935 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.49928166444545935 -2.25
		2.25 -0.49928166444545935 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.49928166444545929 2.25
		-5.7491853075117283e-016 -0.9985633288909187 -2.25
		2.25 -0.9985633288909187 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.9985633288909187 2.25
		-2.25 -0.9985633288909187 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.9985633288909187 -2.25
		2.25 -0.9985633288909187 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.9985633288909187 2.25
		-5.7491853075117283e-016 -1.497844993336378 -2.25
		2.25 -1.497844993336378 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.497844993336378 2.25
		-2.25 -1.497844993336378 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.497844993336378 -2.25
		2.25 -1.497844993336378 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.497844993336378 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 70.03136115475148 85.323192541423126 42.242791353164044 ;
	setAttr ".rp" -type "double3" -0.5278518131434623 -6.0319177781419224 3.9391029359353862 ;
	setAttr ".sp" -type "double3" -0.5278518131434623 -6.0319177781419224 3.9391029359353862 ;
createNode transform -n "Ref:bip_index_0_LControlrollGroup" -p "Ref:bip_index_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.52785181314346197 -6.0319177781419127 3.9391029359353844 ;
	setAttr ".sp" -type "double3" -0.52785181314346197 -6.0319177781419127 3.9391029359353844 ;
createNode transform -n "Ref:bip_index_0_LControlLiftGroup" -p "Ref:bip_index_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.52785181314346086 -9.5283275779937853 3.0572702265044769 ;
	setAttr ".sp" -type "double3" -0.52785181314346086 -9.5283275779937853 3.0572702265044769 ;
createNode transform -n "Ref:bip_index_0_LControl" -p "Ref:bip_index_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.52785181314346197 -6.0319177781419056 3.9391029359353809 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587919e-016 -9.4422717105948149e-016 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.846698139979454e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.846698139979454e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.846698139979454e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.846698139979454e-016 2.25
		-5.7491853075117283e-016 -0.83167890550772572 -2.25
		2.25 -0.83167890550772572 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.83167890550772561 2.25
		-2.25 -0.83167890550772572 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.83167890550772572 -2.25
		2.25 -0.83167890550772572 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.83167890550772561 2.25
		-5.7491853075117283e-016 -1.6633578110154514 -2.25
		2.25 -1.6633578110154514 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.6633578110154514 2.25
		-2.25 -1.6633578110154514 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.6633578110154514 -2.25
		2.25 -1.6633578110154514 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.6633578110154514 2.25
		-5.7491853075117283e-016 -2.495036716523177 -2.25
		2.25 -2.495036716523177 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.495036716523177 2.25
		-2.25 -2.495036716523177 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.495036716523177 -2.25
		2.25 -2.495036716523177 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.495036716523177 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_LControlZeroGroup" -p "Ref:bip_index_0_LControl";
	setAttr ".r" -type "double3" 34.636799333898381 0 2.2363275104040351e-015 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -2.4950367165231708 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -2.4950367165231708 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_index_1_LControlrollGroup" -p "Ref:bip_index_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -2.4950367165231739 1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -2.4950367165231739 1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_index_1_LControl" -p "Ref:bip_index_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -2.4950367165231739 1.0658141036401503e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.590277340731758e-015 3.975693351829395e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
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
		-5.7491853075117283e-016 -1.2488178925659066e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2488178925659066e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2488178925659066e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2488178925659066e-016 2.25
		-5.7491853075117283e-016 -0.56241757956134253 -2.25
		2.25 -0.56241757956134253 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.56241757956134242 2.25
		-2.25 -0.56241757956134253 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.56241757956134253 -2.25
		2.25 -0.56241757956134253 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.56241757956134242 2.25
		-5.7491853075117283e-016 -1.1248351591226851 -2.25
		2.25 -1.1248351591226851 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1248351591226851 2.25
		-2.25 -1.1248351591226851 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1248351591226851 -2.25
		2.25 -1.1248351591226851 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1248351591226851 2.25
		-5.7491853075117283e-016 -1.6872527386840277 -2.25
		2.25 -1.6872527386840277 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6872527386840277 2.25
		-2.25 -1.6872527386840277 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.6872527386840277 -2.25
		2.25 -1.6872527386840277 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.6872527386840277 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_LControlZeroGroup" -p "Ref:bip_index_1_LControl";
	setAttr ".r" -type "double3" -4.8673286979387198 -1.5902773407317592e-015 2.7829853462805787e-015 ;
	setAttr ".rp" -type "double3" 0 -1.687252738684025 -1.4210854715202004e-014 ;
	setAttr ".sp" -type "double3" 0 -1.687252738684025 -1.4210854715202004e-014 ;
createNode transform -n "Ref:bip_index_2_LControlrollGroup" -p "Ref:bip_index_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -1.7763568394002505e-015 -1.6872527386840197 -1.7763568394002505e-014 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-015 -1.6872527386840197 -1.7763568394002505e-014 ;
createNode transform -n "Ref:bip_index_2_LControl" -p "Ref:bip_index_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -1.6872527386840197 -1.7763568394002505e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999944 ;
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
		-5.7491853075117283e-016 -1.4310110432508623e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4310110432508623e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4310110432508623e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4310110432508623e-016 2.25
		-5.7491853075117283e-016 -0.64447008011476481 -2.25
		2.25 -0.64447008011476481 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.6444700801147647 2.25
		-2.25 -0.64447008011476481 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.64447008011476481 -2.25
		2.25 -0.64447008011476481 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.6444700801147647 2.25
		-5.7491853075117283e-016 -1.2889401602295296 -2.25
		2.25 -1.2889401602295296 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2889401602295296 2.25
		-2.25 -1.2889401602295296 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2889401602295296 -2.25
		2.25 -1.2889401602295296 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2889401602295296 2.25
		-5.7491853075117283e-016 -1.9334102403442945 -2.25
		2.25 -1.9334102403442945 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9334102403442945 2.25
		-2.25 -1.9334102403442945 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.9334102403442945 -2.25
		2.25 -1.9334102403442945 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9334102403442945 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 176.15378801676175 87.428310456257762 150.34971917451824 ;
	setAttr ".rp" -type "double3" -0.39121460380035433 -6.0210509904384786 1.6704838319236859 ;
	setAttr ".sp" -type "double3" -0.39121460380035433 -6.0210509904384786 1.6704838319236859 ;
createNode transform -n "Ref:bip_middle_0_LControlrollGroup" -p "Ref:bip_middle_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.39121460380035078 -6.0210509904384821 1.6704838319236899 ;
	setAttr ".sp" -type "double3" -0.39121460380035078 -6.0210509904384821 1.6704838319236899 ;
createNode transform -n "Ref:bip_middle_0_LControlLiftGroup" -p "Ref:bip_middle_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.39121460380035167 -10.064371654749184 0.48188954940153028 ;
	setAttr ".sp" -type "double3" -0.39121460380035167 -10.064371654749184 0.48188954940153028 ;
createNode transform -n "Ref:bip_middle_0_LControl" -p "Ref:bip_middle_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.39121460380034812 -6.0210509904384821 1.6704838319236934 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.9756933518293979e-016 -1.7393658414253617e-016 5.7927094540326774e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999967 ;
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
		-5.7491853075117283e-016 -2.4001906515446836e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.4001906515446836e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -2.4001906515446836e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 2.4001906515446836e-016 2.25
		-5.7491853075117283e-016 -1.0809497723914785 -2.25
		2.25 -1.0809497723914785 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.0809497723914783 2.25
		-2.25 -1.0809497723914785 3.5695323650011823e-016
		-5.7491853075117283e-016 -1.0809497723914785 -2.25
		2.25 -1.0809497723914785 -1.6838337365057687e-016
		3.0430166849879092e-016 -1.0809497723914783 2.25
		-5.7491853075117283e-016 -2.161899544782957 -2.25
		2.25 -2.161899544782957 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.161899544782957 2.25
		-2.25 -2.161899544782957 4.1818355419123709e-016
		-5.7491853075117283e-016 -2.161899544782957 -2.25
		2.25 -2.161899544782957 -1.0715305595945801e-016
		3.0430166849879092e-016 -2.161899544782957 2.25
		-5.7491853075117283e-016 -3.2428493171744357 -2.25
		2.25 -3.2428493171744357 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.2428493171744357 2.25
		-2.25 -3.2428493171744357 4.7941387188235596e-016
		-5.7491853075117283e-016 -3.2428493171744357 -2.25
		2.25 -3.2428493171744357 -4.5922738268339147e-017
		3.0430166849879092e-016 -3.2428493171744357 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_LControlZeroGroup" -p "Ref:bip_middle_0_LControl";
	setAttr ".r" -type "double3" 37.625573501832292 -7.4544250346801174e-017 -2.5981777256291327e-015 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -3.2428493171744401 0 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -3.2428493171744401 0 ;
createNode transform -n "Ref:bip_middle_1_LControlrollGroup" -p "Ref:bip_middle_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -3.2428493171744321 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -3.2428493171744321 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_1_LControl" -p "Ref:bip_middle_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -3.2428493171744321 -3.5527136788005009e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.3169484227934873e-015 -1.0684675883041504e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
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
		-5.7491853075117283e-016 -1.5988776247788069e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.5988776247788069e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.5988776247788069e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.5988776247788069e-016 2.25
		-5.7491853075117283e-016 -0.72007046751648585 -2.25
		2.25 -0.72007046751648585 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.72007046751648573 2.25
		-2.25 -0.72007046751648585 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.72007046751648585 -2.25
		2.25 -0.72007046751648585 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.72007046751648573 2.25
		-5.7491853075117283e-016 -1.4401409350329717 -2.25
		2.25 -1.4401409350329717 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4401409350329717 2.25
		-2.25 -1.4401409350329717 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4401409350329717 -2.25
		2.25 -1.4401409350329717 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4401409350329717 2.25
		-5.7491853075117283e-016 -2.1602114025494576 -2.25
		2.25 -2.1602114025494576 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.1602114025494576 2.25
		-2.25 -2.1602114025494576 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.1602114025494576 -2.25
		2.25 -2.1602114025494576 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.1602114025494576 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_LControlZeroGroup" -p "Ref:bip_middle_1_LControl";
	setAttr ".r" -type "double3" 6.7109646536385714 2.2363275104040355e-016 -1.0684675883041504e-015 ;
	setAttr ".rp" -type "double3" -5.3290705182007514e-015 -2.1602114025494554 -3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-015 -2.1602114025494554 -3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_middle_2_LControlrollGroup" -p "Ref:bip_middle_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" -3.5527136788005009e-015 -2.160211402549459 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-015 -2.160211402549459 1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_middle_2_LControl" -p "Ref:bip_middle_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -2.160211402549459 1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.180554681463516e-015 6.7089825312121054e-016 -4.0999337690740647e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.4594208884414442e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4594208884414442e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4594208884414442e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4594208884414442e-016 2.25
		-5.7491853075117283e-016 -0.65726473693616061 -2.25
		2.25 -0.65726473693616061 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.6572647369361605 2.25
		-2.25 -0.65726473693616061 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.65726473693616061 -2.25
		2.25 -0.65726473693616061 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.6572647369361605 2.25
		-5.7491853075117283e-016 -1.3145294738723212 -2.25
		2.25 -1.3145294738723212 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3145294738723212 2.25
		-2.25 -1.3145294738723212 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.3145294738723212 -2.25
		2.25 -1.3145294738723212 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.3145294738723212 2.25
		-5.7491853075117283e-016 -1.9717942108084818 -2.25
		2.25 -1.9717942108084818 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9717942108084818 2.25
		-2.25 -1.9717942108084818 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.9717942108084818 -2.25
		2.25 -1.9717942108084818 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.9717942108084818 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" -174.88898941283381 84.647352874090771 159.43234805959301 ;
	setAttr ".rp" -type "double3" -0.76240350729513462 -5.9923030281767939 -0.37924971384477524 ;
	setAttr ".sp" -type "double3" -0.76240350729513462 -5.9923030281767939 -0.37924971384477524 ;
createNode transform -n "Ref:bip_ring_0_LControlrollGroup" -p "Ref:bip_ring_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.76240350729513473 -5.9923030281767842 -0.37924971384477857 ;
	setAttr ".sp" -type "double3" -0.76240350729513473 -5.9923030281767842 -0.37924971384477857 ;
createNode transform -n "Ref:bip_ring_0_LControlLiftGroup" -p "Ref:bip_ring_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.76240350729513939 -9.7102318142379147 -1.4846887418120709 ;
	setAttr ".sp" -type "double3" -0.76240350729513939 -9.7102318142379147 -1.4846887418120709 ;
createNode transform -n "Ref:bip_ring_0_LControl" -p "Ref:bip_ring_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.76240350729513473 -5.9923030281767771 -0.37924971384478212 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.975693351829395e-016 8.1998675381481274e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999933 ;
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
		-5.7491853075117283e-016 -1.916675727818486e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.916675727818486e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.916675727818486e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.916675727818486e-016 2.25
		-5.7491853075117283e-016 -0.86319400935934076 -2.25
		2.25 -0.86319400935934076 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.86319400935934065 2.25
		-2.25 -0.86319400935934076 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.86319400935934076 -2.25
		2.25 -0.86319400935934076 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.86319400935934065 2.25
		-5.7491853075117283e-016 -1.7263880187186815 -2.25
		2.25 -1.7263880187186815 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7263880187186815 2.25
		-2.25 -1.7263880187186815 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.7263880187186815 -2.25
		2.25 -1.7263880187186815 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.7263880187186815 2.25
		-5.7491853075117283e-016 -2.5895820280780222 -2.25
		2.25 -2.5895820280780222 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.5895820280780222 2.25
		-2.25 -2.5895820280780222 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.5895820280780222 -2.25
		2.25 -2.5895820280780222 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.5895820280780222 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_LControlZeroGroup" -p "Ref:bip_ring_0_LControl";
	setAttr ".r" -type "double3" 30.574887239886873 0 -2.422688136271037e-015 ;
	setAttr ".rp" -type "double3" -2.6645352591003757e-015 -2.5895820280780284 0 ;
	setAttr ".sp" -type "double3" -2.6645352591003757e-015 -2.5895820280780284 0 ;
createNode transform -n "Ref:bip_ring_1_LControlrollGroup" -p "Ref:bip_ring_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -7.9936057773011271e-015 -2.5895820280780271 0 ;
	setAttr ".sp" -type "double3" -7.9936057773011271e-015 -2.5895820280780271 0 ;
createNode transform -n "Ref:bip_ring_1_LControl" -p "Ref:bip_ring_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.9936057773011271e-015 -2.5895820280780271 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635168e-015 -1.192708005548818e-015 5.5659706925611512e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.3597746458025469e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3597746458025469e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.3597746458025469e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.3597746458025469e-016 2.25
		-5.7491853075117283e-016 -0.61238805881441982 -2.25
		2.25 -0.61238805881441982 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61238805881441971 2.25
		-2.25 -0.61238805881441982 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.61238805881441982 -2.25
		2.25 -0.61238805881441982 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.61238805881441971 2.25
		-5.7491853075117283e-016 -1.2247761176288396 -2.25
		2.25 -1.2247761176288396 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2247761176288396 2.25
		-2.25 -1.2247761176288396 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.2247761176288396 -2.25
		2.25 -1.2247761176288396 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.2247761176288396 2.25
		-5.7491853075117283e-016 -1.8371641764432596 -2.25
		2.25 -1.8371641764432596 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8371641764432596 2.25
		-2.25 -1.8371641764432596 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.8371641764432596 -2.25
		2.25 -1.8371641764432596 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.8371641764432596 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_LControlZeroGroup" -p "Ref:bip_ring_1_LControl";
	setAttr ".r" -type "double3" 12.84072264566514 -1.5902773407317598e-015 1.9878466759146997e-016 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -1.8371641764432614 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 -1.8371641764432614 -1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_ring_2_LControlrollGroup" -p "Ref:bip_ring_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 -1.8371641764432631 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 -1.8371641764432631 -1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_ring_2_LControl" -p "Ref:bip_ring_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -1.8371641764432631 -1.0658141036401503e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.9756933518294004e-016 -7.9513867036588008e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.999999999999999 1 0.99999999999999956 ;
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
		-5.7491853075117283e-016 -1.4896963298088584e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4896963298088584e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.4896963298088584e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.4896963298088584e-016 2.25
		-5.7491853075117283e-016 -0.670899583582237 -2.25
		2.25 -0.670899583582237 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.67089958358223689 2.25
		-2.25 -0.670899583582237 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.670899583582237 -2.25
		2.25 -0.670899583582237 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.67089958358223689 2.25
		-5.7491853075117283e-016 -1.341799167164474 -2.25
		2.25 -1.341799167164474 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.341799167164474 2.25
		-2.25 -1.341799167164474 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.341799167164474 -2.25
		2.25 -1.341799167164474 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.341799167164474 2.25
		-5.7491853075117283e-016 -2.0126987507467109 -2.25
		2.25 -2.0126987507467109 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0126987507467109 2.25
		-2.25 -2.0126987507467109 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.0126987507467109 -2.25
		2.25 -2.0126987507467109 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.0126987507467109 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_LControlZeroGroup" -p "lHandControl";
	setAttr ".r" -type "double3" 150.33623194468029 74.857577706100003 119.78224515793421 ;
	setAttr ".rp" -type "double3" -0.97082418025685768 -6.0383972146721661 -1.9009615229156409 ;
	setAttr ".sp" -type "double3" -0.97082418025685768 -6.0383972146721661 -1.9009615229156409 ;
createNode transform -n "Ref:bip_pinky_0_LControlrollGroup" -p "Ref:bip_pinky_0_LControlZeroGroup";
	setAttr ".rp" -type "double3" -0.97082418025685868 -6.0383972146721625 -1.9009615229156438 ;
	setAttr ".sp" -type "double3" -0.97082418025685868 -6.0383972146721625 -1.9009615229156438 ;
createNode transform -n "Ref:bip_pinky_0_LControlLiftGroup" -p "Ref:bip_pinky_0_LControlrollGroup";
	setAttr ".rp" -type "double3" -0.97082418025686357 -9.3433972672437378 -2.881526324188056 ;
	setAttr ".sp" -type "double3" -0.97082418025686357 -9.3433972672437378 -2.881526324188056 ;
createNode transform -n "Ref:bip_pinky_0_LControl" -p "Ref:bip_pinky_0_LControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.97082418025686001 -6.0383972146721554 -1.9009615229156509 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.5902773407317588e-015 9.9392333795734919e-016 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999978 ;
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
		-5.7491853075117283e-016 -1.6007199130899459e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6007199130899459e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.6007199130899459e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.6007199130899459e-016 2.25
		-5.7491853075117283e-016 -0.72090016041164129 -2.25
		2.25 -0.72090016041164129 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.72090016041164118 2.25
		-2.25 -0.72090016041164129 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.72090016041164129 -2.25
		2.25 -0.72090016041164129 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.72090016041164118 2.25
		-5.7491853075117283e-016 -1.4418003208232826 -2.25
		2.25 -1.4418003208232826 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4418003208232826 2.25
		-2.25 -1.4418003208232826 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.4418003208232826 -2.25
		2.25 -1.4418003208232826 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.4418003208232826 2.25
		-5.7491853075117283e-016 -2.162700481234924 -2.25
		2.25 -2.162700481234924 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.162700481234924 2.25
		-2.25 -2.162700481234924 4.7941387188235596e-016
		-5.7491853075117283e-016 -2.162700481234924 -2.25
		2.25 -2.162700481234924 -4.5922738268339147e-017
		3.0430166849879092e-016 -2.162700481234924 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_LControlZeroGroup" -p "Ref:bip_pinky_0_LControl";
	setAttr ".r" -type "double3" 27.932541484869361 0 3.975693351829395e-016 ;
	setAttr ".rp" -type "double3" -3.1086244689504383e-015 -2.1627004812349369 -7.1054273576010019e-015 ;
	setAttr ".sp" -type "double3" -3.1086244689504383e-015 -2.1627004812349369 -7.1054273576010019e-015 ;
createNode transform -n "Ref:bip_pinky_1_LControlrollGroup" -p "Ref:bip_pinky_1_LControlZeroGroup";
	setAttr ".rp" -type "double3" -6.6613381477509392e-015 -2.1627004812349249 -1.0658141036401503e-014 ;
	setAttr ".sp" -type "double3" -6.6613381477509392e-015 -2.1627004812349249 -1.0658141036401503e-014 ;
createNode transform -n "Ref:bip_pinky_1_LControl" -p "Ref:bip_pinky_1_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -6.6613381477509392e-015 -2.1627004812349249 -1.0658141036401503e-014 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635176e-015 0 7.9513867036587899e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000002 ;
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
		-5.7491853075117283e-016 -1.0335490673649264e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0335490673649264e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.0335490673649264e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.0335490673649264e-016 2.25
		-5.7491853075117283e-016 -0.46546911946538061 -2.25
		2.25 -0.46546911946538061 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.46546911946538055 2.25
		-2.25 -0.46546911946538061 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.46546911946538061 -2.25
		2.25 -0.46546911946538061 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.46546911946538055 2.25
		-5.7491853075117283e-016 -0.93093823893076122 -2.25
		2.25 -0.93093823893076122 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.93093823893076122 2.25
		-2.25 -0.93093823893076122 4.1818355419123709e-016
		-5.7491853075117283e-016 -0.93093823893076122 -2.25
		2.25 -0.93093823893076122 -1.0715305595945801e-016
		3.0430166849879092e-016 -0.93093823893076122 2.25
		-5.7491853075117283e-016 -1.3964073583961418 -2.25
		2.25 -1.3964073583961418 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3964073583961418 2.25
		-2.25 -1.3964073583961418 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.3964073583961418 -2.25
		2.25 -1.3964073583961418 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.3964073583961418 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_LControlZeroGroup" -p "Ref:bip_pinky_1_LControl";
	setAttr ".r" -type "double3" 21.152990207498537 0 3.1805546814635183e-015 ;
	setAttr ".rp" -type "double3" 0 -1.3964073583961483 3.5527136788005009e-015 ;
	setAttr ".sp" -type "double3" 0 -1.3964073583961483 3.5527136788005009e-015 ;
createNode transform -n "Ref:bip_pinky_2_LControlrollGroup" -p "Ref:bip_pinky_2_LControlZeroGroup";
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 -1.39640735839615 -1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-015 -1.39640735839615 -1.7763568394002505e-015 ;
createNode transform -n "Ref:bip_pinky_2_LControl" -p "Ref:bip_pinky_2_LControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -1.39640735839615 -1.7763568394002505e-015 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -7.9513867036587939e-016 3.1805546814635176e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999933 ;
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
		-5.7491853075117283e-016 -1.2955409361493403e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2955409361493403e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 -1.2955409361493403e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 1.2955409361493403e-016 2.25
		-5.7491853075117283e-016 -0.58345976772853925 -2.25
		2.25 -0.58345976772853925 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58345976772853914 2.25
		-2.25 -0.58345976772853925 3.5695323650011823e-016
		-5.7491853075117283e-016 -0.58345976772853925 -2.25
		2.25 -0.58345976772853925 -1.6838337365057687e-016
		3.0430166849879092e-016 -0.58345976772853914 2.25
		-5.7491853075117283e-016 -1.1669195354570785 -2.25
		2.25 -1.1669195354570785 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1669195354570785 2.25
		-2.25 -1.1669195354570785 4.1818355419123709e-016
		-5.7491853075117283e-016 -1.1669195354570785 -2.25
		2.25 -1.1669195354570785 -1.0715305595945801e-016
		3.0430166849879092e-016 -1.1669195354570785 2.25
		-5.7491853075117283e-016 -1.7503793031856176 -2.25
		2.25 -1.7503793031856176 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7503793031856176 2.25
		-2.25 -1.7503793031856176 4.7941387188235596e-016
		-5.7491853075117283e-016 -1.7503793031856176 -2.25
		2.25 -1.7503793031856176 -4.5922738268339147e-017
		3.0430166849879092e-016 -1.7503793031856176 2.25
		
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
	setAttr ".rst" -type "double3" 20.347926789017588 46.29699100992125 3.3455832590903718 ;
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
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-014 -3.1303602080433754 
		1.7506617467357453e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.7829853462805772e-015 5.9635400277440928e-015 
		-3.180554681463516e-015 ;
	setAttr ".tg[1].tot" -type "double3" -3.5527136788005009e-015 -3.1303602080433901 
		-4.2706148684492763e-015 ;
	setAttr ".tg[1].tor" -type "double3" 0 1.1927080055488188e-015 2.5444437451708134e-014 ;
	setAttr ".lr" -type "double3" -19.209428666697193 0.31019617981674841 24.693917522808466 ;
	setAttr ".rst" -type "double3" 20.652796442467771 -2.4076817816186065 17.36001622267819 ;
	setAttr ".rsrr" -type "double3" -19.272935969159295 5.4906647066349148 23.440175710185176 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lkneeControl" -p "main";
	addAttr -ci true -sn "lKneeControl" -ln "lKneeControl" -at "message";
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
	setAttr ".rp" -type "double3" 7.9785256503683817 25.832666650165695 1.6630178440340415 ;
	setAttr ".sp" -type "double3" 7.9785256503683817 25.832666650165695 1.6630178440340415 ;
	setAttr ".hdl" -type "double3" 7.9785256503683817 25.832666650165695 1.6630178440340415 ;
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
		6.9785256503683817 25.832666650165695 1.6630178440340413
		6.9785256503683817 25.832666650165695 1.6630178440340413
		6.9785256503683817 25.832666650165695 1.6630178440340413
		6.9785256503683817 25.832666650165695 1.6630178440340413
		6.9785256503683817 25.832666650165695 1.6630178440340413
		7.9785256503683817 25.832666650165695 0.66301784403404151
		7.9785256503683817 24.832666650165695 1.6630178440340415
		7.9785256503683817 25.832666650165695 2.6630178440340417
		7.9785256503683817 26.832666650165695 1.6630178440340417
		7.9785256503683817 25.832666650165695 0.66301784403404151
		8.9785256503683826 25.832666650165695 1.6630178440340417
		8.9785256503683826 25.832666650165695 1.6630178440340417
		8.9785256503683826 25.832666650165695 1.6630178440340417
		8.9785256503683826 25.832666650165695 1.6630178440340417
		8.9785256503683826 25.832666650165695 1.6630178440340417
		
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
	setAttr ".r" -type "double3" 0 14.098804757477497 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 8.3814458025372502 6.6650204824952244 -0.66017046274123459 ;
	setAttr ".rpt" -type "double3" -0.4132875561986924 0 -2.0217901898508406 ;
	setAttr ".sp" -type "double3" 8.3814458025372502 6.6650204824952244 -0.66017046274123459 ;
	setAttr ".hdl" -type "double3" 8.3814458025372502 6.6650204824952244 -0.66017046274123459 ;
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
		5.2744504051611703 6.6650204824952244 -0.66017046274123559
		5.2744504051611703 6.6650204824952244 -0.66017046274123559
		5.2744504051611703 6.6650204824952244 -0.66017046274123559
		5.2744504051611703 6.6650204824952244 -0.66017046274123559
		5.2744504051611703 6.6650204824952244 -0.66017046274123559
		6.8279481038492111 1.429871902060798 -4.4924580407034513
		6.8279481038492111 1.429871902060798 3.6799764395515879
		6.8279481038492111 11.900169062929651 3.6799764395515879
		6.8279481038492111 11.900169062929651 -4.4924580407034513
		6.8279481038492111 1.429871902060798 -4.4924580407034513
		9.9349435012252929 1.429871902060798 -4.4924580407034513
		9.9349435012252929 1.429871902060798 3.6799764395515888
		9.9349435012252929 11.900169062929651 3.6799764395515879
		9.9349435012252929 11.900169062929651 -4.4924580407034513
		9.9349435012252929 1.429871902060798 -4.4924580407034513
		11.488441199913334 6.6650204824952235 -0.66017046274123492
		11.488441199913334 6.6650204824952235 -0.66017046274123492
		11.488441199913334 6.6650204824952235 -0.66017046274123492
		11.488441199913334 6.6650204824952235 -0.66017046274123492
		11.488441199913334 6.6650204824952235 -0.66017046274123492
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "lReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" 7.968158246338561 6.6650204824952235 -2.6819606525920743 ;
	setAttr ".sp" -type "double3" 7.968158246338561 6.6650204824952235 -2.6819606525920743 ;
createNode transform -n "lReverseControl" -p "lReverseControlZeroGroup";
	setAttr ".t" -type "double3" 7.968158246338561 6.6650204824952235 -2.6819606525920743 ;
createNode transform -n "lReverseBallZeroGroup" -p "lReverseControl";
	setAttr ".r" -type "double3" 49.60662379678071 7.5390338281329141 8.7658250235876487 ;
	setAttr ".rp" -type "double3" -3.4972025275692431e-015 -8.0509741596743964 -1.8357845988014136 ;
	setAttr ".sp" -type "double3" -3.4972025275692431e-015 -8.0509741596743964 -1.8357845988014136 ;
createNode transform -n "lReverseBall" -p "lReverseBallZeroGroup";
	setAttr ".t" -type "double3" -3.4972025275692431e-015 -8.0509741596743964 -1.8357845988014136 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "lReverseLrollZeroGroup" -p "lReverseBall";
	setAttr ".r" -type "double3" 3.5311250384401269e-031 0 0 ;
	setAttr ".rp" -type "double3" -2.9066562085411491 0.023694574832917124 0.1842262806851549 ;
	setAttr ".sp" -type "double3" -2.9066562085411491 0.023694574832917124 0.1842262806851549 ;
createNode transform -n "lReverseLroll" -p "lReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -2.9066562085411491 0.023694574832917124 0.1842262806851549 ;
createNode transform -n "lReverseRrollZeroGroup" -p "lReverseLroll";
	setAttr ".r" -type "double3" 3.5311250384401269e-031 0 0 ;
	setAttr ".rp" -type "double3" 6.1501417197443269 -0.0014539957046510335 0.88850228487123228 ;
	setAttr ".sp" -type "double3" 6.1501417197443269 -0.0014539957046510335 0.88850228487123228 ;
createNode transform -n "lReverseRroll" -p "lReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 6.1501417197443269 -0.0014539957046510335 0.88850228487123228 ;
createNode transform -n "lReverseHeelLiftZeroGroup" -p "lReverseRroll";
	setAttr ".r" -type "double3" -3.5311250384401269e-031 0 -3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -1.495776971596078 -0.022240579128263775 -9.6304025443148138 ;
	setAttr ".sp" -type "double3" -1.495776971596078 -0.022240579128263775 -9.6304025443148138 ;
createNode transform -n "lReverseHeelLift" -p "lReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -1.495776971596078 -0.022240579128263775 -9.6304025443148138 ;
createNode transform -n "lReverseToeLiftZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -3.5311250384401269e-031 0 -3.5311250384401269e-031 ;
	setAttr ".rp" -type "double3" -2.8286687956468248 -2.3065895351805126e-015 13.850607694847522 ;
	setAttr ".sp" -type "double3" -2.8286687956468248 -2.3065895351805126e-015 13.850607694847522 ;
createNode transform -n "lReverseToeLift" -p "lReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" -2.8286687956468248 -2.3065895351805126e-015 13.850607694847522 ;
createNode transform -n "lReverseAnkleLiftZeroGroup" -p "lReverseToeLift";
	setAttr ".r" -type "double3" -90.000000000000099 -11.542619267576546 -8.1155137634017695e-016 ;
	setAttr ".rp" -type "double3" 1.0809602560397229 2.4314073835399777 -5.2929337160891006 ;
	setAttr ".sp" -type "double3" 1.0809602560397229 2.4314073835399777 -5.2929337160891006 ;
createNode transform -n "lReverseAnkleLift" -p "lReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" 1.0809602560397229 2.4314073835399777 -5.2929337160891006 ;
createNode transform -n "lReverseAnkleEndZeroGroup" -p "lReverseAnkleLift";
	setAttr ".r" -type "double3" 40.972041818602911 5.649800061504203e-030 0 ;
	setAttr ".rp" -type "double3" 5.5511151231257827e-015 4.8750171262120068 4.2336130989552565 ;
	setAttr ".sp" -type "double3" 5.5511151231257827e-015 4.8750171262120068 4.2336130989552565 ;
createNode transform -n "lReverseAnkleEnd" -p "lReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 5.5511151231257827e-015 4.8750171262120068 4.2336130989552565 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode ikHandle -n "Ref:bip_foot_LIKikHandle" -p "lReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.4360871512189997 -0.78912192719901808 0.4602739698103866 ;
	setAttr ".r" -type "double3" 49.893544415397997 -9.190805873863642 -10.737700243563857 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 6.993437802417219 0.16989939168254775 -2.6819606569302437 ;
	setAttr ".rpt" -type "double3" 0.4426489034788208 0.61922253507695868 2.2216866602744019 ;
	setAttr ".sp" -type "double3" 6.9934377926822844 0.1698993931434627 -2.6819606547611698 ;
	setAttr ".spt" -type "double3" 1.7763568394002509e-015 0 4.4408920985006252e-016 ;
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
	setAttr ".rst" -type "double3" 0.80395863911338594 -13.922207149566505 -13.108448667069844 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_LIKikHandle" -p "lReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.9651134839568321 2.6539261641895986 -10.689395183847562 ;
	setAttr ".r" -type "double3" 8.0642888466185353e-015 -25.641419999999997 -2.9898062666137363e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".rp" -type "double3" 5.9828676790573931 -0.22251878688484128 3.1141294129828756 ;
	setAttr ".rpt" -type "double3" -1.9367940715372329 0 2.2823320228511159 ;
	setAttr ".sp" -type "double3" 5.9828676790573905 -0.2225187868848395 3.1141294129828756 ;
	setAttr ".spt" -type "double3" 8.8817841970012543e-016 0 0 ;
	setAttr ".pv" -type "double3" -1.9595523158025645 6.3935438804917791e-008 -0.40019335530816202 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "lReverseToeWiggleZeroGroup" -p "lReverseHeelLift";
	setAttr ".r" -type "double3" -90.000000000000099 -11.542619267576546 -8.1155137634017695e-016 ;
	setAttr ".rp" -type "double3" -1.7477085396071017 2.4314073835399754 8.5576739787584231 ;
	setAttr ".sp" -type "double3" -1.7477085396071017 2.4314073835399754 8.5576739787584231 ;
createNode transform -n "lReverseToeWiggle" -p "lReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" -1.7477085396071017 2.4314073835399754 8.5576739787584231 ;
createNode transform -n "lReverseToeWiggleEndZeroGroup" -p "lReverseToeWiggle";
	setAttr ".r" -type "double3" 90.000000000000099 7.9513867036588481e-016 11.542619267576546 ;
	setAttr ".rp" -type "double3" 5.3290705182007514e-015 -5.4021868162856244 -2.431407383539987 ;
	setAttr ".sp" -type "double3" 5.3290705182007514e-015 -5.4021868162856244 -2.431407383539987 ;
createNode transform -n "lReverseToeWiggleEnd" -p "lReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -5.4021868162856244 -2.431407383539987 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode ikHandle -n "Ref:bip_toeEnd_LIKikHandle" -p "lReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.5311433290429677 1.239520338718622 -8.1394076278890122 ;
	setAttr ".r" -type "double3" 5.9353532045392349e-015 -25.64142 2.0014184565226376e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 5.6454348537135619 1.1918870546780103 5.6107723825299187 ;
	setAttr ".rpt" -type "double3" -2.983954910907844 0 1.8904425810694572 ;
	setAttr ".sp" -type "double3" 5.645434853713561 1.1918870546780111 5.6107723825299143 ;
	setAttr ".spt" -type "double3" 8.8817841970012543e-016 0 8.8817841970012543e-016 ;
	setAttr ".pv" -type "double3" -1.9595523152351955 9.2505041371623579e-008 -0.4001933580862907 ;
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
	setAttr ".lr" -type "double3" 90.000000000000099 0 0 ;
	setAttr ".o" -type "double3" -90.000000000000099 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "lToeControlZeroGroup" -p "lReverseHeelLift";
	setAttr ".t" -type "double3" -1.7477085396070979 2.4314073835399745 8.5576739787584302 ;
	setAttr ".r" -type "double3" 7.4201818722717004e-015 -11.542619267576541 -3.5838859043552513e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
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
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-3.1069953973760809 -4.0356489353761182e-016 -6.7260815589601931e-016
		-3.1069953973760809 -4.0356489353761182e-016 -6.7260815589601931e-016
		-3.1069953973760809 -4.0356489353761182e-016 -6.7260815589601931e-016
		-3.1069953973760809 -4.0356489353761182e-016 -6.7260815589601931e-016
		-3.1069953973760809 -4.0356489353761182e-016 -6.7260815589601931e-016
		-1.55349769868804 -3.6584577088906864 -0.34914064049877286
		-1.5534976986880402 -3.658457708890686 4.6037317473296255
		-1.5534976986880404 3.658457708890686 4.6037317473296255
		-1.5534976986880402 3.658457708890686 -0.34914064049877308
		-1.55349769868804 -3.658457708890686 -0.3491406404987733
		1.5534976986880407 -3.6584577088906869 -0.34914064049877308
		1.5534976986880404 -3.658457708890686 4.6037317473296264
		1.5534976986880402 3.6584577088906869 4.6037317473296264
		1.5534976986880404 3.6584577088906869 -0.3491406404987733
		1.5534976986880407 -3.6584577088906864 -0.34914064049877352
		3.1069953973760809 -4.7526212414396913e-016 -2.0621886178556125e-016
		3.1069953973760809 -4.7526212414396913e-016 -2.0621886178556125e-016
		3.1069953973760809 -4.7526212414396913e-016 -2.0621886178556125e-016
		3.1069953973760809 -4.7526212414396913e-016 -2.0621886178556125e-016
		3.1069953973760809 -4.7526212414396913e-016 -2.0621886178556125e-016
		
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-015 -8.3430481393910918e-016 
		3.9914839452582802e-016 ;
	setAttr ".tg[0].tor" -type "double3" -49.027958181397196 -4.0250540385902974e-006 
		0 ;
	setAttr ".lr" -type "double3" -49.027958181397189 14.098800732423463 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 -8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" -49.027958181397189 14.098800732423456 0 ;
	setAttr -k on ".w0";
createNode joint -n "Ref:bip_upperArm_RIK" -p "main";
	addAttr -ci true -sn "rIKshoulder" -ln "rIKshoulder" -at "message";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -0.021313516833053422 -5.3076222680836205 0.45956196997983051 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 171.30984342910068 -5.4906647066349281 -23.44017571018518 ;
createNode joint -n "Ref:bip_lowerArm_RIK" -p "Ref:bip_upperArm_RIK";
	addAttr -ci true -sn "rIKelbow" -ln "rIKelbow" -at "message";
	setAttr ".t" -type "double3" -1.3848580321607074e-005 13.552382592680818 1.2852356283288291e-005 ;
	setAttr ".r" -type "double3" 6.6096088665560001e-013 -4.2602339985859131e-018 2.4574730468706378e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -10.58277939826009 0 0 ;
createNode joint -n "Ref:bip_hand_RIK" -p "Ref:bip_lowerArm_RIK";
	addAttr -ci true -sn "rIKwrist" -ln "rIKwrist" -at "message";
	setAttr ".t" -type "double3" 7.2171749664562412e-005 11.844441040587519 1.157086953651465e-005 ;
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
	setAttr ".rst" -type "double3" -10.0483 68.619441614906776 -2.5841900000000004 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_hand_RIKikHandle" -p "main";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -13.976792761327721 2.7889033212268757 4.984081200711028 ;
	setAttr ".sp" -type "double3" -13.976792761327724 2.7889033212268686 4.9840812007110289 ;
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
	setAttr ".rst" -type "double3" -6.3711069573910333 43.508038171723051 -1.6385011712491582 ;
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
	setAttr ".rst" -type "double3" -5.5089000000000148 -12.213299999999961 2.0382340000000032 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlGroup" -p "main";
	setAttr ".rp" -type "double3" -20.347899718718754 46.296941492949927 3.3455800294618698 ;
	setAttr ".sp" -type "double3" -20.347899718718754 46.296941492949927 3.3455800294618698 ;
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
	setAttr ".tg[0].tot" -type "double3" -20.347899718718754 -1.7625185364806839 4.3652944710242707 ;
	setAttr ".rst" -type "double3" 0 0 -4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "rikHandControlWeaponGroup" -p "rikHandControlGroup";
	addAttr -ci true -sn "rWeaponAttach" -ln "rWeaponAttach" -at "message";
	setAttr ".rp" -type "double3" -20.347899718718754 46.296941492949927 3.3455800294618698 ;
	setAttr ".sp" -type "double3" -20.347899718718754 46.296941492949927 3.3455800294618698 ;
createNode transform -n "rikHandControlZeroGroup" -p "rikHandControlWeaponGroup";
	setAttr ".t" -type "double3" -20.347899718718754 46.296941492949927 3.3455800294618698 ;
	setAttr ".rp" -type "double3" -20.347899718718754 46.296941492949927 3.3455800294618698 ;
	setAttr ".sp" -type "double3" -20.347899718718754 46.296941492949927 3.3455800294618698 ;
createNode transform -n "rikHandControl" -p "rikHandControlZeroGroup";
	addAttr -ci true -k true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "aim" -ln "aim" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "rIKcontrol" -ln "rIKcontrol" -at "message";
	addAttr -ci true -sn "zooCmd0" -ln "zooCmd0" -dt "string";
	addAttr -ci true -sn "zooCmd1" -ln "zooCmd1" -dt "string";
	addAttr -ci true -sn "zooTrig1" -ln "zooTrig1" -at "message";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
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
	setAttr ".lr" -type "double3" 160.7905560414743 -0.31225406097590258 -24.693415211917831 ;
	setAttr ".rsrr" -type "double3" 160.72706414866192 -5.4906566873364371 -23.440176941550053 ;
	setAttr -k on ".w0";
createNode transform -n "rElbowControl" -p "main";
	addAttr -ci true -sn "rElbowControl" -ln "rElbowControl" -at "message";
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
	setAttr ".rp" -type "double3" -15.557200000000014 56.406141614906815 -0.54595599999999733 ;
	setAttr ".sp" -type "double3" -15.557200000000014 56.406141614906815 -0.54595599999999733 ;
	setAttr ".hdl" -type "double3" -15.557200000000014 56.406141614906815 -0.54595599999999733 ;
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
		-16.557200000000016 56.406141614906815 -0.54595599999999755
		-16.557200000000016 56.406141614906815 -0.54595599999999755
		-16.557200000000016 56.406141614906815 -0.54595599999999755
		-16.557200000000016 56.406141614906815 -0.54595599999999755
		-16.557200000000016 56.406141614906815 -0.54595599999999755
		-15.557200000000014 56.406141614906815 -1.5459559999999972
		-15.557200000000014 55.406141614906815 -0.54595599999999733
		-15.557200000000014 56.406141614906815 0.45404400000000267
		-15.557200000000014 57.406141614906815 -0.54595599999999722
		-15.557200000000014 56.406141614906815 -1.5459559999999972
		-14.557200000000014 56.406141614906815 -0.54595599999999722
		-14.557200000000014 56.406141614906815 -0.54595599999999722
		-14.557200000000014 56.406141614906815 -0.54595599999999722
		-14.557200000000014 56.406141614906815 -0.54595599999999722
		-14.557200000000014 56.406141614906815 -0.54595599999999722
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rHandControlGroup" -p "main";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -20.34790000000001 49.427288801965304 3.3455800000000053 ;
	setAttr ".rpt" -type "double3" -18.389222302363045 -84.689482132997384 7.8034062981333978 ;
	setAttr ".sp" -type "double3" -20.347900000000013 49.427288801965304 3.3455800000000062 ;
	setAttr ".spt" -type "double3" 3.5527136788005005e-015 0 -8.8817841970012513e-016 ;
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
	setAttr ".r" -type "double3" -5.9635400277440939e-016 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".hdl" -type "double3" 1.4749492356926375 3.546146438153075 -1.802600951764967 ;
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
		-1.1498370615023457e-015 4.6338446961905723e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -4.6338446961905723e-016 4.5
		-4.5 0 5.9144583761799874e-016
		-1.1498370615023457e-015 4.6338446961905723e-016 -4.5
		4.5 0 -4.5922738268339147e-016
		6.0860333699758185e-016 -4.6338446961905723e-016 4.5
		-1.1498370615023457e-015 2.0868981247056611 -4.5
		4.5 2.0868981247056611 -3.3676674730115375e-016
		6.0860333699758185e-016 2.0868981247056606 4.5
		-4.5 2.0868981247056611 7.1390647300023646e-016
		-1.1498370615023457e-015 2.0868981247056611 -4.5
		4.5 2.0868981247056611 -3.3676674730115375e-016
		6.0860333699758185e-016 2.0868981247056606 4.5
		-1.1498370615023457e-015 4.1737962494113221 -4.5
		4.5 4.1737962494113221 -2.1430611191891602e-016
		6.0860333699758185e-016 4.1737962494113221 4.5
		-4.5 4.1737962494113221 8.3636710838247419e-016
		-1.1498370615023457e-015 4.1737962494113221 -4.5
		4.5 4.1737962494113221 -2.1430611191891602e-016
		6.0860333699758185e-016 4.1737962494113221 4.5
		-1.1498370615023457e-015 6.2606943741169836 -4.5
		4.5 6.2606943741169836 -9.1845476536678294e-017
		6.0860333699758185e-016 6.2606943741169836 4.5
		-4.5 6.2606943741169836 9.5882774376471192e-016
		-1.1498370615023457e-015 6.2606943741169836 -4.5
		4.5 6.2606943741169836 -9.1845476536678294e-017
		6.0860333699758185e-016 6.2606943741169836 4.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -29.894743750224727 -9.4784516051475727 -24.687129983938963 ;
	setAttr ".rp" -type "double3" 2.610885612124497 2.2618243688031097 -2.8146195239658454 ;
	setAttr ".sp" -type "double3" 2.610885612124497 2.2618243688031097 -2.8146195239658454 ;
createNode transform -n "Ref:bip_thumb_0_RControlrollGroup" -p "Ref:bip_thumb_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.6108856121244957 2.2618243688031097 -2.8146195239658427 ;
	setAttr ".sp" -type "double3" 2.6108856121244957 2.2618243688031097 -2.8146195239658427 ;
createNode transform -n "Ref:bip_thumb_0_RControl" -p "Ref:bip_thumb_0_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.6108856121244957 2.2618243688031097 -2.8146195239658427 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.5781240166464552e-015 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
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
		-5.7491853075117283e-016 2.1661472949266235e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.1661472949266235e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.1661472949266235e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.1661472949266235e-016 2.25
		-5.7491853075117283e-016 0.97554601502611493 -2.25
		2.25 0.97554601502611493 -1.6838337365057687e-016
		3.0430166849879092e-016 0.97554601502611482 2.25
		-2.25 0.97554601502611493 3.5695323650011823e-016
		-5.7491853075117283e-016 0.97554601502611493 -2.25
		2.25 0.97554601502611493 -1.6838337365057687e-016
		3.0430166849879092e-016 0.97554601502611482 2.25
		-5.7491853075117283e-016 1.9510920300522299 -2.25
		2.25 1.9510920300522299 -1.0715305595945801e-016
		3.0430166849879092e-016 1.9510920300522299 2.25
		-2.25 1.9510920300522299 4.1818355419123709e-016
		-5.7491853075117283e-016 1.9510920300522299 -2.25
		2.25 1.9510920300522299 -1.0715305595945801e-016
		3.0430166849879092e-016 1.9510920300522299 2.25
		-5.7491853075117283e-016 2.9266380450783447 -2.25
		2.25 2.9266380450783447 -4.5922738268339147e-017
		3.0430166849879092e-016 2.9266380450783447 2.25
		-2.25 2.9266380450783447 4.7941387188235596e-016
		-5.7491853075117283e-016 2.9266380450783447 -2.25
		2.25 2.9266380450783447 -4.5922738268339147e-017
		3.0430166849879092e-016 2.9266380450783447 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_1_RControlZeroGroup" -p "Ref:bip_thumb_0_RControl";
	setAttr ".r" -type "double3" 12.66175038195882 1.5902773407317588e-015 1.5902773407317588e-015 ;
	setAttr ".rp" -type "double3" -3.0384056333376819e-005 2.9266380449186356 3.3988430274689563e-006 ;
	setAttr ".sp" -type "double3" -3.0384056333376819e-005 2.9266380449186356 3.3988430274689563e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControlrollGroup" -p "Ref:bip_thumb_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -3.0384056331600462e-005 2.9266380449186329 3.3988430243603318e-006 ;
	setAttr ".sp" -type "double3" -3.0384056331600462e-005 2.9266380449186329 3.3988430243603318e-006 ;
createNode transform -n "Ref:bip_thumb_1_RControl" -p "Ref:bip_thumb_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -3.0384056331600462e-005 2.9266380449186329 3.3988430243603318e-006 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.0811623476677833e-015 -1.5902773407317588e-015 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999944 ;
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
		-5.7491853075117283e-016 1.2321527944888239e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2321527944888239e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2321527944888239e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2321527944888239e-016 2.25
		-5.7491853075117283e-016 0.55491228661233827 -2.25
		2.25 0.55491228661233827 -1.6838337365057687e-016
		3.0430166849879092e-016 0.55491228661233816 2.25
		-2.25 0.55491228661233827 3.5695323650011823e-016
		-5.7491853075117283e-016 0.55491228661233827 -2.25
		2.25 0.55491228661233827 -1.6838337365057687e-016
		3.0430166849879092e-016 0.55491228661233816 2.25
		-5.7491853075117283e-016 1.1098245732246765 -2.25
		2.25 1.1098245732246765 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1098245732246765 2.25
		-2.25 1.1098245732246765 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1098245732246765 -2.25
		2.25 1.1098245732246765 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1098245732246765 2.25
		-5.7491853075117283e-016 1.6647368598370149 -2.25
		2.25 1.6647368598370149 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6647368598370149 2.25
		-2.25 1.6647368598370149 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6647368598370149 -2.25
		2.25 1.6647368598370149 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6647368598370149 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_thumb_2_RControlZeroGroup" -p "Ref:bip_thumb_1_RControl";
	setAttr ".r" -type "double3" -25.368891613304157 1.5902773407317588e-015 7.9513867036587939e-016 ;
	setAttr ".rp" -type "double3" -1.1584907386286147e-005 1.664736858292363 7.0772086393944278e-005 ;
	setAttr ".sp" -type "double3" -1.1584907386286147e-005 1.664736858292363 7.0772086393944278e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControlrollGroup" -p "Ref:bip_thumb_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.158490738495388e-005 1.6647368582923687 7.0772086405490597e-005 ;
	setAttr ".sp" -type "double3" -1.158490738495388e-005 1.6647368582923687 7.0772086405490597e-005 ;
createNode transform -n "Ref:bip_thumb_2_RControl" -p "Ref:bip_thumb_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.158490738495388e-005 1.6647368582923687 7.0772086405490597e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -1.5902773407317588e-015 1.5902773407317584e-015 -1.5902773407317584e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
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
		-5.7491853075117283e-016 1.1086521615760728e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.1086521615760728e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.1086521615760728e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.1086521615760728e-016 2.25
		-5.7491853075117283e-016 0.49929254617574964 -2.25
		2.25 0.49929254617574964 -1.6838337365057687e-016
		3.0430166849879092e-016 0.49929254617574959 2.25
		-2.25 0.49929254617574964 3.5695323650011823e-016
		-5.7491853075117283e-016 0.49929254617574964 -2.25
		2.25 0.49929254617574964 -1.6838337365057687e-016
		3.0430166849879092e-016 0.49929254617574959 2.25
		-5.7491853075117283e-016 0.99858509235149928 -2.25
		2.25 0.99858509235149928 -1.0715305595945801e-016
		3.0430166849879092e-016 0.99858509235149928 2.25
		-2.25 0.99858509235149928 4.1818355419123709e-016
		-5.7491853075117283e-016 0.99858509235149928 -2.25
		2.25 0.99858509235149928 -1.0715305595945801e-016
		3.0430166849879092e-016 0.99858509235149928 2.25
		-5.7491853075117283e-016 1.497877638527249 -2.25
		2.25 1.497877638527249 -4.5922738268339147e-017
		3.0430166849879092e-016 1.497877638527249 2.25
		-2.25 1.497877638527249 4.7941387188235596e-016
		-5.7491853075117283e-016 1.497877638527249 -2.25
		2.25 1.497877638527249 -4.5922738268339147e-017
		3.0430166849879092e-016 1.497877638527249 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 70.031361154752702 85.323192541423069 42.242791353165238 ;
	setAttr ".rp" -type "double3" 0.52785371664539549 6.0319010105710138 -3.9391071402661941 ;
	setAttr ".sp" -type "double3" 0.52785371664539549 6.0319010105710138 -3.9391071402661941 ;
createNode transform -n "Ref:bip_index_0_RControlrollGroup" -p "Ref:bip_index_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.52785371664539582 6.0319010105710094 -3.939107140266195 ;
	setAttr ".sp" -type "double3" 0.52785371664539582 6.0319010105710094 -3.939107140266195 ;
createNode transform -n "Ref:bip_index_0_RControlLiftGroup" -p "Ref:bip_index_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.5278341307087735 9.5283077539168008 -3.0572837144438152 ;
	setAttr ".sp" -type "double3" 0.5278341307087735 9.5283077539168008 -3.0572837144438152 ;
createNode transform -n "Ref:bip_index_0_RControl" -p "Ref:bip_index_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.5278537166453976 6.0319010105710023 -3.939107140266195 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 7.951386703658788e-016 6.957463365701439e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000009 1.0000000000000002 ;
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
		-5.7491853075117283e-016 1.8466912309658371e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.8466912309658371e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.8466912309658371e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.8466912309658371e-016 2.25
		-5.7491853075117283e-016 0.83167579396461067 -2.25
		2.25 0.83167579396461067 -1.6838337365057687e-016
		3.0430166849879092e-016 0.83167579396461055 2.25
		-2.25 0.83167579396461067 3.5695323650011823e-016
		-5.7491853075117283e-016 0.83167579396461067 -2.25
		2.25 0.83167579396461067 -1.6838337365057687e-016
		3.0430166849879092e-016 0.83167579396461055 2.25
		-5.7491853075117283e-016 1.6633515879292213 -2.25
		2.25 1.6633515879292213 -1.0715305595945801e-016
		3.0430166849879092e-016 1.6633515879292213 2.25
		-2.25 1.6633515879292213 4.1818355419123709e-016
		-5.7491853075117283e-016 1.6633515879292213 -2.25
		2.25 1.6633515879292213 -1.0715305595945801e-016
		3.0430166849879092e-016 1.6633515879292213 2.25
		-5.7491853075117283e-016 2.495027381893832 -2.25
		2.25 2.495027381893832 -4.5922738268339147e-017
		3.0430166849879092e-016 2.495027381893832 2.25
		-2.25 2.495027381893832 4.7941387188235596e-016
		-5.7491853075117283e-016 2.495027381893832 -2.25
		2.25 2.495027381893832 -4.5922738268339147e-017
		3.0430166849879092e-016 2.495027381893832 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_1_RControlZeroGroup" -p "Ref:bip_index_0_RControl";
	setAttr ".r" -type "double3" 34.636799333898416 7.9513867036587939e-016 4.9696166897867459e-016 ;
	setAttr ".rp" -type "double3" 1.9901549848100331e-006 2.4950273818582129 -1.3183533241090117e-005 ;
	setAttr ".sp" -type "double3" 1.9901549848100331e-006 2.4950273818582129 -1.3183533241090117e-005 ;
createNode transform -n "Ref:bip_index_1_RControlrollGroup" -p "Ref:bip_index_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.9901549848100331e-006 2.4950273818582165 -1.3183533241090117e-005 ;
	setAttr ".sp" -type "double3" 1.9901549848100331e-006 2.4950273818582165 -1.3183533241090117e-005 ;
createNode transform -n "Ref:bip_index_1_RControl" -p "Ref:bip_index_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.9901549848100331e-006 2.4950273818582165 -1.3183533241090117e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270351e-015 0 -7.9513867036587939e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
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
		-5.7491853075117283e-016 1.2488081030167683e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2488081030167683e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2488081030167683e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2488081030167683e-016 2.25
		-5.7491853075117283e-016 0.56241317074035735 -2.25
		2.25 0.56241317074035735 -1.6838337365057687e-016
		3.0430166849879092e-016 0.56241317074035724 2.25
		-2.25 0.56241317074035735 3.5695323650011823e-016
		-5.7491853075117283e-016 0.56241317074035735 -2.25
		2.25 0.56241317074035735 -1.6838337365057687e-016
		3.0430166849879092e-016 0.56241317074035724 2.25
		-5.7491853075117283e-016 1.1248263414807147 -2.25
		2.25 1.1248263414807147 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1248263414807147 2.25
		-2.25 1.1248263414807147 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1248263414807147 -2.25
		2.25 1.1248263414807147 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1248263414807147 2.25
		-5.7491853075117283e-016 1.6872395122210722 -2.25
		2.25 1.6872395122210722 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6872395122210722 2.25
		-2.25 1.6872395122210722 4.7941387188235596e-016
		-5.7491853075117283e-016 1.6872395122210722 -2.25
		2.25 1.6872395122210722 -4.5922738268339147e-017
		3.0430166849879092e-016 1.6872395122210722 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_index_2_RControlZeroGroup" -p "Ref:bip_index_1_RControl";
	setAttr ".r" -type "double3" -4.8673286979387393 0 3.975693351829395e-016 ;
	setAttr ".rp" -type "double3" -4.3152183215156015e-005 1.6872395115616001 -1.906019969410977e-005 ;
	setAttr ".sp" -type "double3" -4.3152183215156015e-005 1.6872395115616001 -1.906019969410977e-005 ;
createNode transform -n "Ref:bip_index_2_RControlrollGroup" -p "Ref:bip_index_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -4.3152183216932372e-005 1.687239511561609 -1.9060199697662483e-005 ;
	setAttr ".sp" -type "double3" -4.3152183216932372e-005 1.687239511561609 -1.9060199697662483e-005 ;
createNode transform -n "Ref:bip_index_2_RControl" -p "Ref:bip_index_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -4.3152183216932372e-005 1.687239511561609 -1.9060199697662483e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.180554681463516e-015 7.951386703658788e-016 -7.951386703658788e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
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
		-5.7491853075117283e-016 1.4310138325786209e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4310138325786209e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4310138325786209e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4310138325786209e-016 2.25
		-5.7491853075117283e-016 0.64447133631631026 -2.25
		2.25 0.64447133631631026 -1.6838337365057687e-016
		3.0430166849879092e-016 0.64447133631631015 2.25
		-2.25 0.64447133631631026 3.5695323650011823e-016
		-5.7491853075117283e-016 0.64447133631631026 -2.25
		2.25 0.64447133631631026 -1.6838337365057687e-016
		3.0430166849879092e-016 0.64447133631631015 2.25
		-5.7491853075117283e-016 1.2889426726326205 -2.25
		2.25 1.2889426726326205 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2889426726326205 2.25
		-2.25 1.2889426726326205 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2889426726326205 -2.25
		2.25 1.2889426726326205 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2889426726326205 2.25
		-5.7491853075117283e-016 1.9334140089489309 -2.25
		2.25 1.9334140089489309 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9334140089489309 2.25
		-2.25 1.9334140089489309 4.7941387188235596e-016
		-5.7491853075117283e-016 1.9334140089489309 -2.25
		2.25 1.9334140089489309 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9334140089489309 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 176.15378801675996 87.428310456257719 150.34971917451634 ;
	setAttr ".rp" -type "double3" 0.39116816846374691 6.0210208746612555 -1.6705056530805631 ;
	setAttr ".sp" -type "double3" 0.39116816846374691 6.0210208746612555 -1.6705056530805631 ;
createNode transform -n "Ref:bip_middle_0_RControlrollGroup" -p "Ref:bip_middle_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.39116816846374647 6.0210208746612608 -1.6705056530805678 ;
	setAttr ".sp" -type "double3" 0.39116816846374647 6.0210208746612608 -1.6705056530805678 ;
createNode transform -n "Ref:bip_middle_0_RControlLiftGroup" -p "Ref:bip_middle_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.39116534391278357 10.064351397374761 -0.48190289948043508 ;
	setAttr ".sp" -type "double3" 0.39116534391278357 10.064351397374761 -0.48190289948043508 ;
createNode transform -n "Ref:bip_middle_0_RControl" -p "Ref:bip_middle_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.39116816846374647 6.021020874661267 -1.6705056530805713 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 1.242404172446686e-016 7.8892664950364556e-016 ;
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
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 2 2 2
		9 -2 -1 0 1 2 3 4 5 6
		
		28
		-5.7491853075117283e-016 2.4001849711180158e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.4001849711180158e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 2.4001849711180158e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -2.4001849711180158e-016 2.25
		-5.7491853075117283e-016 1.080947214154736 -2.25
		2.25 1.080947214154736 -1.6838337365057687e-016
		3.0430166849879092e-016 1.0809472141547358 2.25
		-2.25 1.080947214154736 3.5695323650011823e-016
		-5.7491853075117283e-016 1.080947214154736 -2.25
		2.25 1.080947214154736 -1.6838337365057687e-016
		3.0430166849879092e-016 1.0809472141547358 2.25
		-5.7491853075117283e-016 2.1618944283094721 -2.25
		2.25 2.1618944283094721 -1.0715305595945801e-016
		3.0430166849879092e-016 2.1618944283094721 2.25
		-2.25 2.1618944283094721 4.1818355419123709e-016
		-5.7491853075117283e-016 2.1618944283094721 -2.25
		2.25 2.1618944283094721 -1.0715305595945801e-016
		3.0430166849879092e-016 2.1618944283094721 2.25
		-5.7491853075117283e-016 3.2428416424642084 -2.25
		2.25 3.2428416424642084 -4.5922738268339147e-017
		3.0430166849879092e-016 3.2428416424642084 2.25
		-2.25 3.2428416424642084 4.7941387188235596e-016
		-5.7491853075117283e-016 3.2428416424642084 -2.25
		2.25 3.2428416424642084 -4.5922738268339147e-017
		3.0430166849879092e-016 3.2428416424642084 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_1_RControlZeroGroup" -p "Ref:bip_middle_0_RControl";
	setAttr ".r" -type "double3" 37.625573501832314 -2.4848083448933725e-017 7.873736442880874e-016 ;
	setAttr ".rp" -type "double3" 2.2090385023432191e-006 3.2428416420440658 5.2154605644005869e-005 ;
	setAttr ".sp" -type "double3" 2.2090385023432191e-006 3.2428416420440658 5.2154605644005869e-005 ;
createNode transform -n "Ref:bip_middle_1_RControlrollGroup" -p "Ref:bip_middle_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 2.2090384987905054e-006 3.2428416420440715 5.2154605640453156e-005 ;
	setAttr ".sp" -type "double3" 2.2090384987905054e-006 3.2428416420440715 5.2154605640453156e-005 ;
createNode transform -n "Ref:bip_middle_1_RControl" -p "Ref:bip_middle_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.2090384987905054e-006 3.2428416420440715 5.2154605640453156e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635168e-015 1.9629985924657642e-015 1.3666445896913548e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
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
		-5.7491853075117283e-016 1.5988647215650377e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.5988647215650377e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.5988647215650377e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.5988647215650377e-016 2.25
		-5.7491853075117283e-016 0.72006465642561357 -2.25
		2.25 0.72006465642561357 -1.6838337365057687e-016
		3.0430166849879092e-016 0.72006465642561346 2.25
		-2.25 0.72006465642561357 3.5695323650011823e-016
		-5.7491853075117283e-016 0.72006465642561357 -2.25
		2.25 0.72006465642561357 -1.6838337365057687e-016
		3.0430166849879092e-016 0.72006465642561346 2.25
		-5.7491853075117283e-016 1.4401293128512271 -2.25
		2.25 1.4401293128512271 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4401293128512271 2.25
		-2.25 1.4401293128512271 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4401293128512271 -2.25
		2.25 1.4401293128512271 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4401293128512271 2.25
		-5.7491853075117283e-016 2.1601939692768406 -2.25
		2.25 2.1601939692768406 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1601939692768406 2.25
		-2.25 2.1601939692768406 4.7941387188235596e-016
		-5.7491853075117283e-016 2.1601939692768406 -2.25
		2.25 2.1601939692768406 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1601939692768406 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_middle_2_RControlZeroGroup" -p "Ref:bip_middle_1_RControl";
	setAttr ".r" -type "double3" 6.7109646536387197 3.2302508483613845e-016 2.9569219304231134e-015 ;
	setAttr ".rp" -type "double3" -1.0067178923378606e-005 2.1601939678725213 -7.723885467925129e-005 ;
	setAttr ".sp" -type "double3" -1.0067178923378606e-005 2.1601939678725213 -7.723885467925129e-005 ;
createNode transform -n "Ref:bip_middle_2_RControlrollGroup" -p "Ref:bip_middle_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.0067178923378606e-005 2.1601939678725284 -7.7238854682804003e-005 ;
	setAttr ".sp" -type "double3" -1.0067178923378606e-005 2.1601939678725284 -7.7238854682804003e-005 ;
createNode transform -n "Ref:bip_middle_2_RControl" -p "Ref:bip_middle_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.0067178923378606e-005 2.1601939678725284 -7.7238854682804003e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 1.888454342118963e-015 8.4483483726374669e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
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
		-5.7491853075117283e-016 1.4594596563816401e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4594596563816401e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4594596563816401e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4594596563816401e-016 2.25
		-5.7491853075117283e-016 0.65728219646426267 -2.25
		2.25 0.65728219646426267 -1.6838337365057687e-016
		3.0430166849879092e-016 0.65728219646426256 2.25
		-2.25 0.65728219646426267 3.5695323650011823e-016
		-5.7491853075117283e-016 0.65728219646426267 -2.25
		2.25 0.65728219646426267 -1.6838337365057687e-016
		3.0430166849879092e-016 0.65728219646426256 2.25
		-5.7491853075117283e-016 1.3145643929285253 -2.25
		2.25 1.3145643929285253 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3145643929285253 2.25
		-2.25 1.3145643929285253 4.1818355419123709e-016
		-5.7491853075117283e-016 1.3145643929285253 -2.25
		2.25 1.3145643929285253 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3145643929285253 2.25
		-5.7491853075117283e-016 1.9718465893927881 -2.25
		2.25 1.9718465893927881 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9718465893927881 2.25
		-2.25 1.9718465893927881 4.7941387188235596e-016
		-5.7491853075117283e-016 1.9718465893927881 -2.25
		2.25 1.9718465893927881 -4.5922738268339147e-017
		3.0430166849879092e-016 1.9718465893927881 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" -174.88898941283475 84.647352874090799 159.43234805959219 ;
	setAttr ".rp" -type "double3" 0.76239833223415199 5.9922473690098581 0.37922175781570711 ;
	setAttr ".sp" -type "double3" 0.76239833223415199 5.9922473690098581 0.37922175781570711 ;
createNode transform -n "Ref:bip_ring_0_RControlrollGroup" -p "Ref:bip_ring_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.7623983322341501 5.9922473690098554 0.37922175781570999 ;
	setAttr ".sp" -type "double3" 0.7623983322341501 5.9922473690098554 0.37922175781570999 ;
createNode transform -n "Ref:bip_ring_0_RControlLiftGroup" -p "Ref:bip_ring_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.76239379138368379 9.7101895877489888 1.4846431973922447 ;
	setAttr ".sp" -type "double3" 0.76239379138368379 9.7101895877489888 1.4846431973922447 ;
createNode transform -n "Ref:bip_ring_0_RControl" -p "Ref:bip_ring_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.76239833223414921 5.9922473690098483 0.37922175781570999 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.9878466759146975e-016 -7.951386703658788e-016 1.2672522558956194e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
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
		-5.7491853075117283e-016 1.9166900372134194e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9166900372134194e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.9166900372134194e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.9166900372134194e-016 2.25
		-5.7491853075117283e-016 0.86320045373790977 -2.25
		2.25 0.86320045373790977 -1.6838337365057687e-016
		3.0430166849879092e-016 0.86320045373790966 2.25
		-2.25 0.86320045373790977 3.5695323650011823e-016
		-5.7491853075117283e-016 0.86320045373790977 -2.25
		2.25 0.86320045373790977 -1.6838337365057687e-016
		3.0430166849879092e-016 0.86320045373790966 2.25
		-5.7491853075117283e-016 1.7264009074758195 -2.25
		2.25 1.7264009074758195 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7264009074758195 2.25
		-2.25 1.7264009074758195 4.1818355419123709e-016
		-5.7491853075117283e-016 1.7264009074758195 -2.25
		2.25 1.7264009074758195 -1.0715305595945801e-016
		3.0430166849879092e-016 1.7264009074758195 2.25
		-5.7491853075117283e-016 2.5896013612137292 -2.25
		2.25 2.5896013612137292 -4.5922738268339147e-017
		3.0430166849879092e-016 2.5896013612137292 2.25
		-2.25 2.5896013612137292 4.7941387188235596e-016
		-5.7491853075117283e-016 2.5896013612137292 -2.25
		2.25 2.5896013612137292 -4.5922738268339147e-017
		3.0430166849879092e-016 2.5896013612137292 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_1_RControlZeroGroup" -p "Ref:bip_ring_0_RControl";
	setAttr ".r" -type "double3" 30.574887239886912 -3.975693351829395e-016 1.2672522558956196e-015 ;
	setAttr ".rp" -type "double3" -1.1314439265497356e-005 2.5896013603059793 -6.762681963579098e-005 ;
	setAttr ".sp" -type "double3" -1.1314439265497356e-005 2.5896013603059793 -6.762681963579098e-005 ;
createNode transform -n "Ref:bip_ring_1_RControlrollGroup" -p "Ref:bip_ring_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" -1.1314439271714605e-005 2.5896013603059806 -6.762681963579098e-005 ;
	setAttr ".sp" -type "double3" -1.1314439271714605e-005 2.5896013603059806 -6.762681963579098e-005 ;
createNode transform -n "Ref:bip_ring_1_RControl" -p "Ref:bip_ring_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.1314439271714605e-005 2.5896013603059806 -6.762681963579098e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635176e-015 -3.975693351829395e-016 -3.379339349054986e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
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
		-5.7491853075117283e-016 1.3597503160045944e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3597503160045944e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.3597503160045944e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.3597503160045944e-016 2.25
		-5.7491853075117283e-016 0.61237710164752057 -2.25
		2.25 0.61237710164752057 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61237710164752046 2.25
		-2.25 0.61237710164752057 3.5695323650011823e-016
		-5.7491853075117283e-016 0.61237710164752057 -2.25
		2.25 0.61237710164752057 -1.6838337365057687e-016
		3.0430166849879092e-016 0.61237710164752046 2.25
		-5.7491853075117283e-016 1.2247542032950411 -2.25
		2.25 1.2247542032950411 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2247542032950411 2.25
		-2.25 1.2247542032950411 4.1818355419123709e-016
		-5.7491853075117283e-016 1.2247542032950411 -2.25
		2.25 1.2247542032950411 -1.0715305595945801e-016
		3.0430166849879092e-016 1.2247542032950411 2.25
		-5.7491853075117283e-016 1.8371313049425617 -2.25
		2.25 1.8371313049425617 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8371313049425617 2.25
		-2.25 1.8371313049425617 4.7941387188235596e-016
		-5.7491853075117283e-016 1.8371313049425617 -2.25
		2.25 1.8371313049425617 -4.5922738268339147e-017
		3.0430166849879092e-016 1.8371313049425617 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_ring_2_RControlZeroGroup" -p "Ref:bip_ring_1_RControl";
	setAttr ".r" -type "double3" 12.84072264566514 -1.1927080055488194e-015 -3.1805546814635183e-015 ;
	setAttr ".rp" -type "double3" 1.3547177612593941e-005 1.8371313047482225 2.3033716708198426e-005 ;
	setAttr ".sp" -type "double3" 1.3547177612593941e-005 1.8371313047482225 2.3033716708198426e-005 ;
createNode transform -n "Ref:bip_ring_2_RControlrollGroup" -p "Ref:bip_ring_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.354717761348212e-005 1.8371313047482154 2.303371671175114e-005 ;
	setAttr ".sp" -type "double3" 1.354717761348212e-005 1.8371313047482154 2.303371671175114e-005 ;
createNode transform -n "Ref:bip_ring_2_RControl" -p "Ref:bip_ring_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.354717761348212e-005 1.8371313047482154 2.303371671175114e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 3.1805546814635168e-015 0 0 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999989 ;
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
		-5.7491853075117283e-016 1.4897279259472942e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4897279259472942e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.4897279259472942e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.4897279259472942e-016 2.25
		-5.7491853075117283e-016 0.67091381321796562 -2.25
		2.25 0.67091381321796562 -1.6838337365057687e-016
		3.0430166849879092e-016 0.6709138132179655 2.25
		-2.25 0.67091381321796562 3.5695323650011823e-016
		-5.7491853075117283e-016 0.67091381321796562 -2.25
		2.25 0.67091381321796562 -1.6838337365057687e-016
		3.0430166849879092e-016 0.6709138132179655 2.25
		-5.7491853075117283e-016 1.3418276264359312 -2.25
		2.25 1.3418276264359312 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3418276264359312 2.25
		-2.25 1.3418276264359312 4.1818355419123709e-016
		-5.7491853075117283e-016 1.3418276264359312 -2.25
		2.25 1.3418276264359312 -1.0715305595945801e-016
		3.0430166849879092e-016 1.3418276264359312 2.25
		-5.7491853075117283e-016 2.012741439653897 -2.25
		2.25 2.012741439653897 -4.5922738268339147e-017
		3.0430166849879092e-016 2.012741439653897 2.25
		-2.25 2.012741439653897 4.7941387188235596e-016
		-5.7491853075117283e-016 2.012741439653897 -2.25
		2.25 2.012741439653897 -4.5922738268339147e-017
		3.0430166849879092e-016 2.012741439653897 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_0_RControlZeroGroup" -p "rHandControl";
	setAttr ".r" -type "double3" 150.33623194468004 74.85757770609996 119.78224515793409 ;
	setAttr ".rp" -type "double3" 0.97083165992102383 6.0383723044133486 1.90095309279025 ;
	setAttr ".sp" -type "double3" 0.97083165992102383 6.0383723044133486 1.90095309279025 ;
createNode transform -n "Ref:bip_pinky_0_RControlrollGroup" -p "Ref:bip_pinky_0_RControlZeroGroup";
	setAttr ".rp" -type "double3" 0.97083165992102227 6.0383723044133593 1.900953092790246 ;
	setAttr ".sp" -type "double3" 0.97083165992102227 6.0383723044133593 1.900953092790246 ;
createNode transform -n "Ref:bip_pinky_0_RControlLiftGroup" -p "Ref:bip_pinky_0_RControlrollGroup";
	setAttr ".rp" -type "double3" 0.97084149733793756 9.3433616209133792 2.8815162586526926 ;
	setAttr ".sp" -type "double3" 0.97084149733793756 9.3433616209133792 2.8815162586526926 ;
createNode transform -n "Ref:bip_pinky_0_RControl" -p "Ref:bip_pinky_0_RControlLiftGroup";
	setAttr -l on -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ovt" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.97083165992102138 6.0383723044133735 1.9009530927902389 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 1.5902773407317576e-015 1.5902773407317584e-015 5.9635400277440939e-016 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000007 ;
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
		-5.7491853075117283e-016 1.6007324237423633e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6007324237423633e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.6007324237423633e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.6007324237423633e-016 2.25
		-5.7491853075117283e-016 0.72090579470859784 -2.25
		2.25 0.72090579470859784 -1.6838337365057687e-016
		3.0430166849879092e-016 0.72090579470859772 2.25
		-2.25 0.72090579470859784 3.5695323650011823e-016
		-5.7491853075117283e-016 0.72090579470859784 -2.25
		2.25 0.72090579470859784 -1.6838337365057687e-016
		3.0430166849879092e-016 0.72090579470859772 2.25
		-5.7491853075117283e-016 1.4418115894171957 -2.25
		2.25 1.4418115894171957 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4418115894171957 2.25
		-2.25 1.4418115894171957 4.1818355419123709e-016
		-5.7491853075117283e-016 1.4418115894171957 -2.25
		2.25 1.4418115894171957 -1.0715305595945801e-016
		3.0430166849879092e-016 1.4418115894171957 2.25
		-5.7491853075117283e-016 2.1627173841257936 -2.25
		2.25 2.1627173841257936 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1627173841257936 2.25
		-2.25 2.1627173841257936 4.7941387188235596e-016
		-5.7491853075117283e-016 2.1627173841257936 -2.25
		2.25 2.1627173841257936 -4.5922738268339147e-017
		3.0430166849879092e-016 2.1627173841257936 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_1_RControlZeroGroup" -p "Ref:bip_pinky_0_RControl";
	setAttr ".r" -type "double3" 27.932541484869382 -1.5902773407317584e-015 -5.9635400277440939e-016 ;
	setAttr ".rp" -type "double3" 5.9637205511720026e-006 2.1627173840118261 -2.1385392823702887e-005 ;
	setAttr ".sp" -type "double3" 5.9637205511720026e-006 2.1627173840118261 -2.1385392823702887e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControlrollGroup" -p "Ref:bip_pinky_1_RControlZeroGroup";
	setAttr ".rp" -type "double3" 5.9637205516160918e-006 2.1627173840118257 -2.13853928272556e-005 ;
	setAttr ".sp" -type "double3" 5.9637205516160918e-006 2.1627173840118257 -2.13853928272556e-005 ;
createNode transform -n "Ref:bip_pinky_1_RControl" -p "Ref:bip_pinky_1_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.9637205516160918e-006 2.1627173840118257 -2.13853928272556e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 0 7.9513867036587939e-016 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000002 ;
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
		-5.7491853075117283e-016 1.0334867726672745e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0334867726672745e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.0334867726672745e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.0334867726672745e-016 2.25
		-5.7491853075117283e-016 0.46544106442766742 -2.25
		2.25 0.46544106442766742 -1.6838337365057687e-016
		3.0430166849879092e-016 0.46544106442766736 2.25
		-2.25 0.46544106442766742 3.5695323650011823e-016
		-5.7491853075117283e-016 0.46544106442766742 -2.25
		2.25 0.46544106442766742 -1.6838337365057687e-016
		3.0430166849879092e-016 0.46544106442766736 2.25
		-5.7491853075117283e-016 0.93088212885533483 -2.25
		2.25 0.93088212885533483 -1.0715305595945801e-016
		3.0430166849879092e-016 0.93088212885533483 2.25
		-2.25 0.93088212885533483 4.1818355419123709e-016
		-5.7491853075117283e-016 0.93088212885533483 -2.25
		2.25 0.93088212885533483 -1.0715305595945801e-016
		3.0430166849879092e-016 0.93088212885533483 2.25
		-5.7491853075117283e-016 1.3963231932830023 -2.25
		2.25 1.3963231932830023 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3963231932830023 2.25
		-2.25 1.3963231932830023 4.7941387188235596e-016
		-5.7491853075117283e-016 1.3963231932830023 -2.25
		2.25 1.3963231932830023 -4.5922738268339147e-017
		3.0430166849879092e-016 1.3963231932830023 2.25
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Ref:bip_pinky_2_RControlZeroGroup" -p "Ref:bip_pinky_1_RControl";
	setAttr ".r" -type "double3" 21.152990207498735 -1.5902773407317592e-015 -1.5902773407317592e-015 ;
	setAttr ".rp" -type "double3" 1.3711113284742282e-005 1.3963231929394837 2.7772689271898798e-005 ;
	setAttr ".sp" -type "double3" 1.3711113284742282e-005 1.3963231929394837 2.7772689271898798e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControlrollGroup" -p "Ref:bip_pinky_2_RControlZeroGroup";
	setAttr ".rp" -type "double3" 1.3711113282077747e-005 1.3963231929394837 2.7772689270122441e-005 ;
	setAttr ".sp" -type "double3" 1.3711113282077747e-005 1.3963231929394837 2.7772689270122441e-005 ;
createNode transform -n "Ref:bip_pinky_2_RControl" -p "Ref:bip_pinky_2_RControlrollGroup";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.3711113282077747e-005 1.3963231929394837 2.7772689270122441e-005 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" -3.1805546814635187e-015 -7.9513867036587959e-016 1.5902773407317592e-015 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999922 ;
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
		-5.7491853075117283e-016 1.2955732606715367e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2955732606715367e-016 2.25
		-2.25 0 2.9572291880899937e-016
		-5.7491853075117283e-016 1.2955732606715367e-016 -2.25
		2.25 0 -2.2961369134169574e-016
		3.0430166849879092e-016 -1.2955732606715367e-016 2.25
		-5.7491853075117283e-016 0.58347432539915112 -2.25
		2.25 0.58347432539915112 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58347432539915101 2.25
		-2.25 0.58347432539915112 3.5695323650011823e-016
		-5.7491853075117283e-016 0.58347432539915112 -2.25
		2.25 0.58347432539915112 -1.6838337365057687e-016
		3.0430166849879092e-016 0.58347432539915101 2.25
		-5.7491853075117283e-016 1.1669486507983022 -2.25
		2.25 1.1669486507983022 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1669486507983022 2.25
		-2.25 1.1669486507983022 4.1818355419123709e-016
		-5.7491853075117283e-016 1.1669486507983022 -2.25
		2.25 1.1669486507983022 -1.0715305595945801e-016
		3.0430166849879092e-016 1.1669486507983022 2.25
		-5.7491853075117283e-016 1.7504229761974535 -2.25
		2.25 1.7504229761974535 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7504229761974535 2.25
		-2.25 1.7504229761974535 4.7941387188235596e-016
		-5.7491853075117283e-016 1.7504229761974535 -2.25
		2.25 1.7504229761974535 -4.5922738268339147e-017
		3.0430166849879092e-016 1.7504229761974535 2.25
		
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
	setAttr ".rst" -type "double3" -20.347900000000024 46.296941614906807 3.345580000000004 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 3.1303471870584283 
		-9.7186604458224719e-015 ;
	setAttr ".tg[0].tor" -type "double3" -5.5659706925611528e-015 5.9635400277440943e-015 
		-2.8624992133171654e-014 ;
	setAttr ".tg[1].tot" -type "double3" -3.0799455785768259e-007 3.1303471870599644 
		-8.1588759185431046e-012 ;
	setAttr ".tg[1].tor" -type "double3" -2.1866313435061676e-015 -2.3854160110976368e-015 
		9.5416640443905471e-015 ;
	setAttr ".lr" -type "double3" 160.7905560414743 -0.31225406097590258 -24.693415211917827 ;
	setAttr ".rst" -type "double3" 17.123079071881786 78.887400252244305 -6.774917815971385 ;
	setAttr ".rsrr" -type "double3" 160.72706403084061 -5.4906647066349183 -23.440175710185155 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "rkneeControl" -p "main";
	addAttr -ci true -sn "rKneeControl" -ln "rKneeControl" -at "message";
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
	setAttr ".rp" -type "double3" -7.9785299999998145 25.83264161490672 1.6630199999998729 ;
	setAttr ".sp" -type "double3" -7.9785299999998145 25.83264161490672 1.6630199999998729 ;
	setAttr ".hdl" -type "double3" -7.9785299999998145 25.83264161490672 1.6630199999998729 ;
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
		-8.9785299999998145 25.83264161490672 1.6630199999998727
		-8.9785299999998145 25.83264161490672 1.6630199999998727
		-8.9785299999998145 25.83264161490672 1.6630199999998727
		-8.9785299999998145 25.83264161490672 1.6630199999998727
		-8.9785299999998145 25.83264161490672 1.6630199999998727
		-7.9785299999998145 25.83264161490672 0.66301999999987293
		-7.9785299999998145 24.83264161490672 1.6630199999998729
		-7.9785299999998145 25.83264161490672 2.6630199999998729
		-7.9785299999998145 26.83264161490672 1.6630199999998732
		-7.9785299999998145 25.83264161490672 0.66301999999987293
		-6.9785299999998145 25.83264161490672 1.6630199999998732
		-6.9785299999998145 25.83264161490672 1.6630199999998732
		-6.9785299999998145 25.83264161490672 1.6630199999998732
		-6.9785299999998145 25.83264161490672 1.6630199999998732
		-6.9785299999998145 25.83264161490672 1.6630199999998732
		
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
	setAttr ".r" -type "double3" 0 -14.09880073242344 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -8.3814472980280819 6.6650216149067605 -0.66016999142476518 ;
	setAttr ".rpt" -type "double3" 0.4132872980280809 0 -2.0217900085752336 ;
	setAttr ".sp" -type "double3" -8.3814472980280819 6.6650216149067605 -0.66016999142476518 ;
	setAttr ".hdl" -type "double3" -8.3814472980280819 6.6650216149067605 -0.66016999142476518 ;
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
		-11.488442695404162 6.6650216149067605 -0.66016999142476607
		-11.488442695404162 6.6650216149067605 -0.66016999142476607
		-11.488442695404162 6.6650216149067605 -0.66016999142476607
		-11.488442695404162 6.6650216149067605 -0.66016999142476607
		-11.488442695404162 6.6650216149067605 -0.66016999142476607
		-9.934944996716121 1.4298724682665664 -4.4924580994455203
		-9.9349449967161227 1.4298724682665673 3.6799763808097907
		-9.9349449967161227 11.900170761546953 3.6799763808097907
		-9.934944996716121 11.900170761546953 -4.4924580994455212
		-9.934944996716121 1.4298724682665673 -4.4924580994455212
		-6.827949599340041 1.4298724682665664 -4.4924580994455212
		-6.8279495993400419 1.4298724682665673 3.6799763808097907
		-6.8279495993400419 11.900170761546955 3.6799763808097907
		-6.827949599340041 11.900170761546955 -4.4924580994455212
		-6.827949599340041 1.4298724682665664 -4.4924580994455212
		-5.2744519006520019 6.6650216149067596 -0.66016999142476562
		-5.2744519006520019 6.6650216149067596 -0.66016999142476562
		-5.2744519006520019 6.6650216149067596 -0.66016999142476562
		-5.2744519006520019 6.6650216149067596 -0.66016999142476562
		-5.2744519006520019 6.6650216149067596 -0.66016999142476562
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "rReverseControlZeroGroup" -p "main";
	setAttr ".rp" -type "double3" -7.96816 6.6650216149067676 -2.681959999999997 ;
	setAttr ".sp" -type "double3" -7.96816 6.6650216149067676 -2.681959999999997 ;
createNode transform -n "rReverseControl" -p "rReverseControlZeroGroup";
	setAttr ".t" -type "double3" -7.96816 6.6650216149067676 -2.681959999999997 ;
createNode transform -n "rReverseBallZeroGroup" -p "rReverseControl";
	setAttr ".r" -type "double3" -130.39337615729764 7.5390341233693849 8.7658253735961633 ;
	setAttr ".rp" -type "double3" 1.5418681184597993e-006 8.0509741017665259 1.8357861489143648 ;
	setAttr ".sp" -type "double3" 1.5418681184597993e-006 8.0509741017665259 1.8357861489143648 ;
createNode transform -n "rReverseBall" -p "rReverseBallZeroGroup";
	setAttr ".t" -type "double3" 1.5418681184597993e-006 8.0509741017665259 1.8357861489143648 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rReverseLrollZeroGroup" -p "rReverseBall";
	setAttr ".r" -type "double3" 1.765562519220063e-031 3.180554681463516e-015 1.0593375115320377e-030 ;
	setAttr ".rp" -type "double3" -3.2434855026733391 0.022240579128265166 1.0727285913470785 ;
	setAttr ".sp" -type "double3" -3.2434855026733391 0.022240579128265166 1.0727285913470785 ;
createNode transform -n "rReverseLroll" -p "rReverseLrollZeroGroup";
	setAttr ".t" -type "double3" -3.2434855026733391 0.022240579128265166 1.0727285913470785 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "rReverseRrollZeroGroup" -p "rReverseLroll";
	setAttr ".r" -type "double3" -8.8278125961003172e-031 0 -7.0622500768802538e-031 ;
	setAttr ".rp" -type "double3" 6.1501417126793676 0.0014539957046505361 -0.88850233377430277 ;
	setAttr ".sp" -type "double3" 6.1501417126793676 0.0014539957046505361 -0.88850233377430277 ;
createNode transform -n "rReverseRroll" -p "rReverseRrollZeroGroup";
	setAttr ".t" -type "double3" 6.1501417126793676 0.0014539957046505361 -0.88850233377430277 ;
createNode transform -n "rReverseHeelLiftZeroGroup" -p "rReverseRroll";
	setAttr ".r" -type "double3" -1.4124500153760508e-030 0 2.8249000307521022e-030 ;
	setAttr ".rp" -type "double3" -4.6543648176597756 -0.023694574832909727 -8.7419002224342357 ;
	setAttr ".sp" -type "double3" -4.6543648176597756 -0.023694574832909727 -8.7419002224342357 ;
createNode transform -n "rReverseHeelLift" -p "rReverseHeelLiftZeroGroup";
	setAttr ".t" -type "double3" -4.6543648176597756 -0.023694574832909727 -8.7419002224342357 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "rReverseToeLiftZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" -3.5311250384401278e-031 0 -2.8249000307521022e-030 ;
	setAttr ".rp" -type "double3" 2.8286689057804231 -9.6554224788045103e-015 13.85060767235526 ;
	setAttr ".sp" -type "double3" 2.8286689057804231 -9.6554224788045103e-015 13.85060767235526 ;
createNode transform -n "rReverseToeLift" -p "rReverseToeLiftZeroGroup";
	setAttr ".t" -type "double3" 2.8286689057804231 -9.6554224788045103e-015 13.85060767235526 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "rReverseAnkleLiftZeroGroup" -p "rReverseToeLift";
	setAttr ".r" -type "double3" 89.999999999999929 11.542619723165975 8.1155137765806908e-016 ;
	setAttr ".rp" -type "double3" -1.0809619855601789 2.4314116149067653 -5.2929294472780954 ;
	setAttr ".sp" -type "double3" -1.0809619855601789 2.4314116149067653 -5.2929294472780954 ;
createNode transform -n "rReverseAnkleLift" -p "rReverseAnkleLiftZeroGroup";
	setAttr ".t" -type "double3" -1.0809619855601789 2.4314116149067653 -5.2929294472780954 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "rReverseAnkleEndZeroGroup" -p "rReverseAnkleLift";
	setAttr ".r" -type "double3" 40.972041818602911 0 0 ;
	setAttr ".rp" -type "double3" 9.6389448378531029e-007 -4.8750199025028591 -4.233610000000013 ;
	setAttr ".sp" -type "double3" 9.6389448378531029e-007 -4.8750199025028591 -4.233610000000013 ;
createNode transform -n "rReverseAnkleEnd" -p "rReverseAnkleEndZeroGroup";
	setAttr ".t" -type "double3" 9.6389448378531029e-007 -4.8750199025028591 -4.233610000000013 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode ikHandle -n "Ref:bip_foot_RIKikHandle" -p "rReverseAnkleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.4360887344351863 0.78912229360714148 -0.46027140598926675 ;
	setAttr ".r" -type "double3" -130.10645558460203 -9.1908058738636456 -10.737700243563866 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -6.9934397867754257 0.16990157272445297 -2.6819597029211204 ;
	setAttr ".rpt" -type "double3" -0.44264861131264832 -0.95902386599974443 3.1422311291865275 ;
	setAttr ".sp" -type "double3" -6.9934404534219503 0.16990147268120737 -2.6819598514605687 ;
	setAttr ".spt" -type "double3" 0 -8.3266726846886716e-017 4.4408920985006252e-016 ;
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
	setAttr ".rst" -type "double3" -0.80396533154305416 13.922256955516422 13.108500065036125 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Ref:bip_toe_RIKikHandle" -p "rReverseToeLift";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.9651119098322436 2.6539273309277704 -10.689394541158748 ;
	setAttr ".r" -type "double3" 1.5365230487112268e-014 25.641420455589433 1.1291252317162856e-014 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999933 0.99999999999999944 ;
	setAttr ".rp" -type "double3" -5.982869469451698 -0.22251571961789626 3.1141325551063308 ;
	setAttr ".rpt" -type "double3" 1.9367956504804895 0 2.2823325203579832 ;
	setAttr ".sp" -type "double3" -5.9828694694517006 -0.22251571961789551 3.1141325551063321 ;
	setAttr ".spt" -type "double3" 3.552713678800499e-015 1.3877787807814447e-016 -2.2204460492503119e-015 ;
	setAttr ".pv" -type "double3" 0.26240296271188879 1.5100601071085162 1.2848591977642658 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "rReverseToeWiggleZeroGroup" -p "rReverseHeelLift";
	setAttr ".r" -type "double3" 89.999999999999929 11.542619723165974 -2.8832096804552182e-030 ;
	setAttr ".rp" -type "double3" 1.7477069202202471 2.4314116149067564 8.5576782250771686 ;
	setAttr ".sp" -type "double3" 1.7477069202202471 2.4314116149067564 8.5576782250771686 ;
createNode transform -n "rReverseToeWiggle" -p "rReverseToeWiggleZeroGroup";
	setAttr ".t" -type "double3" 1.7477069202202471 2.4314116149067564 8.5576782250771686 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "rReverseToeWiggleEndZeroGroup" -p "rReverseToeWiggle";
	setAttr ".r" -type "double3" -89.999999999999929 -7.9513867036587071e-016 11.542619723165965 ;
	setAttr ".rp" -type "double3" 2.5057626042990222e-006 5.4021829798779901 2.4314116149067746 ;
	setAttr ".sp" -type "double3" 2.5057626042990222e-006 5.4021829798779901 2.4314116149067746 ;
createNode transform -n "rReverseToeWiggleEnd" -p "rReverseToeWiggleEndZeroGroup";
	setAttr ".t" -type "double3" 2.5057626042990222e-006 5.4021829798779901 2.4314116149067746 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode ikHandle -n "Ref:bip_toeEnd_RIKikHandle" -p "rReverseToeWiggleEnd";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.5311451935798299 1.2395215673107174 -8.1394076900453722 ;
	setAttr ".r" -type "double3" 1.4111163117589241e-014 25.641420455589429 -4.2446558979097117e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -5.6454748720501069 1.191890053281879 5.6107722561386195 ;
	setAttr ".rpt" -type "double3" 2.9839588568685027 0 1.8904599321179112 ;
	setAttr ".sp" -type "double3" -5.6454748720501087 1.191890053281879 5.6107722561386169 ;
	setAttr ".spt" -type "double3" 0 -2.2204460492503126e-016 8.8817841970012543e-016 ;
	setAttr ".pv" -type "double3" 1.9595552053080871 7.4468939307618127e-009 -0.40017920654374495 ;
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
	setAttr ".t" -type "double3" 1.7477069202202364 2.4314116149067577 8.5576782250771721 ;
	setAttr ".r" -type "double3" 1.4137986205880584e-014 11.542619723165974 2.5198600155127378e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999911 0.99999999999999922 ;
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
	setAttr ".cpr" 0;
	setAttr ".cps" 1;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 1 no 
		4 0 0.99999999999999989 2 3
		5 0 1.4142135623730949 2.8284271247461898 4.2426406871192848 5.6568542494923797
		
		
		20
		-3.1069953973760804 -4.0356489353761163e-016 -7.5884460158530196e-016
		-3.1069953973760804 -4.0356489353761163e-016 -7.5884460158530196e-016
		-3.1069953973760804 -4.0356489353761163e-016 -7.5884460158530196e-016
		-3.1069953973760804 -4.0356489353761163e-016 -7.5884460158530196e-016
		-3.1069953973760804 -4.0356489353761163e-016 -7.5884460158530196e-016
		-1.5534976986880398 -3.6584661716242586 -0.34914064049877269
		-1.5534976986880402 -3.6584661716242581 4.6037317473296246
		-1.5534976986880404 3.6584661716242581 4.6037317473296246
		-1.55349769868804 3.6584661716242581 -0.34914064049877291
		-1.5534976986880398 -3.6584661716242577 -0.34914064049877314
		1.5534976986880404 -3.6584661716242586 -0.3491406404987728
		1.55349769868804 -3.6584661716242581 4.6037317473296246
		1.5534976986880398 3.6584661716242586 4.6037317473296246
		1.5534976986880402 3.6584661716242586 -0.34914064049877302
		1.5534976986880404 -3.6584661716242586 -0.34914064049877325
		3.1069953973760804 -4.7526212414396904e-016 -1.1998241609627836e-016
		3.1069953973760804 -4.7526212414396904e-016 -1.1998241609627836e-016
		3.1069953973760804 -4.7526212414396904e-016 -1.1998241609627836e-016
		3.1069953973760804 -4.7526212414396904e-016 -1.1998241609627836e-016
		3.1069953973760804 -4.7526212414396904e-016 -1.1998241609627836e-016
		
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 7.0515537399832857e-015 
		2.0045876070184932e-015 ;
	setAttr ".tg[0].tor" -type "double3" 130.9720418186028 -1.2722218725854064e-014 
		0 ;
	setAttr ".lr" -type "double3" 130.9720418186028 -14.098800732423442 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 0 8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 130.9720418186028 -14.098800732423442 0 ;
	setAttr -k on ".w0";
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
	setAttr ".rst" -type "double3" 0 48.05946002943061 -1.0197144415624013 ;
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
	setAttr ".lr" -type "double3" -172.5997026196687 0 0 ;
	setAttr ".o" -type "double3" 172.5997026196687 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ref:bip_crotchflap_0_parentConstraint1" -p "RefRNfosterParent1";
	addAttr -ci true -k true -sn "w0" -ln "codPiece_controlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.3994881642442891e-014 2.8406096919120216e-017 
		-2.0746208570510127e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 -5.466578358765419e-016 0 ;
	setAttr ".lr" -type "double3" 1.1927080055488188e-015 -1.1927080055488188e-015 -1.2414111463266072e-032 ;
	setAttr ".rst" -type "double3" -0.00037082634246222426 1.0744789862949702 -6.6309332225409516 ;
	setAttr ".rsrr" -type "double3" 1.1927080055488188e-015 -1.1927080055488188e-015 
		-1.2414111463266072e-032 ;
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
	setAttr ".lr" -type "double3" 0.14859499385424543 -10.186664025512451 -1.667041143324079 ;
	setAttr ".rsrr" -type "double3" 1.0436195048552164e-014 6.0008121529174942e-015 
		2.9817700138720524e-016 ;
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
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 0 0 ;
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
	setAttr ".lr" -type "double3" -0.04987097088290407 6.293466629752972 8.1810834175873133 ;
	setAttr ".rsrr" -type "double3" 1.4343556170896992e-014 -1.9878466759147012e-016 
		2.1866313435061676e-015 ;
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
	setAttr ".lr" -type "double3" -1.5634866151187209e-030 -1.8901393376389011e-006 
		9.4787915988669346e-023 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 0 0 ;
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
	setAttr ".lr" -type "double3" 0.14859337215282187 -10.186628655690543 -1.6670372584049358 ;
	setAttr ".rsrr" -type "double3" -2.981770013872047e-016 -1.5902773407317584e-015 
		1.5902773407317584e-015 ;
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
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -0.049871494041484089 6.2934479722657315 8.1810610185871617 ;
	setAttr ".rsrr" -type "double3" 1.8573942378077958e-015 -2.5842006786891076e-015 
		3.9756933518293955e-016 ;
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
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -7.1054273576010019e-015 -6.6613381477509392e-016 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635152e-015 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 -7.1054273576010019e-015 -3.5527136788005009e-015 ;
	setAttr ".tg[1].tor" -type "double3" -3.1805546814635152e-015 0 0 ;
	setAttr ".lr" -type "double3" 9.5416640443905503e-015 0 0 ;
	setAttr ".rst" -type "double3" 0 -4.2025207769297808 0 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 0 7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.0574213095717126e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 -7.1054273576010019e-015 -4.4408920985006262e-015 ;
	setAttr ".tg[1].tor" -type "double3" -2.484808344893372e-016 0 0 ;
	setAttr ".lr" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -6.493098845406422 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" 9.5416640443905503e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 7.1054273576010019e-015 2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781101e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 1.4210854715202004e-014 -2.6645352591003757e-015 ;
	setAttr ".tg[1].tor" -type "double3" -9.5416640443905471e-015 0 0 ;
	setAttr ".lr" -type "double3" -2.8624992133171654e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.857065923410083 -2.2204460492503131e-016 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635152e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 -7.1054273576010019e-015 1.3322676295501878e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854067e-014 0 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 2.1316282072803006e-014 -1.5099033134902129e-014 ;
	setAttr ".tg[1].tor" -type "double3" -9.5416640443905471e-015 0 0 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -5.7539338262039195 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -6.0430538947806815e-014 3.0314661807699149e-014 7.1562480332928977e-015 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854065e-014 1.6996089079070669e-014 
		6.3114131960291637e-015 ;
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
	setAttr ".lr" -type "double3" -0.021313516833094244 -5.3076222680836187 0.45956196997985771 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905487e-015 7.9513867036587935e-015 
		1.7890620083232281e-014 ;
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
	setAttr ".lr" -type "double3" 9.5416640443905487e-015 0 0 ;
	setAttr ".rsrr" -type "double3" -1.1131941385122306e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-015 3.9968028886505635e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.1010408144269281e-014 7.9513867036587903e-015 
		1.9083328088781094e-014 ;
	setAttr ".lr" -type "double3" -3.1805546814635152e-015 1.1927080055488189e-014 1.9083328088781101e-014 ;
	setAttr ".rst" -type "double3" 0.9708316599210427 6.0383723044133486 1.9009530927902683 ;
	setAttr ".rsrr" -type "double3" -3.6576378836830429e-014 3.9756933518293442e-016 
		-1.5902773407317578e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 5.3290705182007514e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317578e-014 3.1805546814635152e-015 
		9.541664044390544e-015 ;
	setAttr ".lr" -type "double3" 5.4069429584879788e-014 0 0 ;
	setAttr ".rst" -type "double3" 5.963720543622486e-006 2.1627173840118399 -2.13853928272556e-005 ;
	setAttr ".rsrr" -type "double3" 5.7249984266343308e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-015 3.5527136788005009e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -1.4630551534732177e-013 5.5659706925611512e-015 
		-1.1131941385122302e-014 ;
	setAttr ".lr" -type "double3" 2.0037494493220155e-013 0 0 ;
	setAttr ".rst" -type "double3" 1.3711113289627264e-005 1.3963231929394819 2.7772689268346085e-005 ;
	setAttr ".rsrr" -type "double3" 1.3358329662146771e-013 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 9.7699626167013776e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -5.7647553601526204e-015 4.3732626870123328e-015 
		1.0436195048552157e-014 ;
	setAttr ".lr" -type "double3" 6.997220299219735e-014 -2.7432284127622828e-014 3.1805546814634994e-015 ;
	setAttr ".rst" -type "double3" 0.76239833223417364 5.992247369009867 0.37922175781572975 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-015 -1.1927080055488186e-015 
		-6.3611093629270335e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-015 -1.2434497875801753e-014 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317584e-014 8.7465253740246672e-015 
		1.3914926731402878e-015 ;
	setAttr ".lr" -type "double3" 4.4527765540489235e-014 0 0 ;
	setAttr ".rst" -type "double3" -1.1314439257614772e-005 2.5896013603059744 -6.7626819642896407e-005 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-015 -1.9539925233402755e-014 
		1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781091e-014 5.9635400277440928e-015 
		-7.5538173684758504e-015 ;
	setAttr ".lr" -type "double3" 2.5444437451708134e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.3547177611261674e-005 1.8371313047482101 2.3033716701092999e-005 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976374e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 8.5487172896137054e-015 
		7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905471e-015 3.180554681463516e-015 
		-5.6793400732969129e-015 ;
	setAttr ".lr" -type "double3" 3.594026790053774e-013 -5.1684013573782224e-014 2.5444437451707973e-014 ;
	setAttr ".rst" -type "double3" 0.39116816846377134 6.0210208746612555 -1.6705056530805442 ;
	setAttr ".rsrr" -type "double3" -1.1131941385122309e-014 7.9513867036587939e-016 
		1.5902773407317584e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 6.2172489379008766e-015 -1.2434497875801753e-014 
		2.1316282072803006e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.2722218725854061e-014 5.143553273929279e-015 
		-1.1554358803754176e-014 ;
	setAttr ".lr" -type "double3" 2.6080548388000838e-013 0 0 ;
	setAttr ".rst" -type "double3" 2.2090385079914787e-006 3.2428416420440502 5.2154605647558583e-005 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -5.3290705182007514e-015 
		5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635152e-015 -2.1866313435061676e-015 
		-9.5665121278394809e-015 ;
	setAttr ".lr" -type "double3" 2.1071174764695799e-013 0 0 ;
	setAttr ".rst" -type "double3" -1.0067178929512588e-005 2.1601939678725302 -7.7238854704120286e-005 ;
	setAttr ".rsrr" -type "double3" -4.2142349529391595e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 5.1070259132757201e-015 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270304e-015 -2.5444437451708122e-014 
		4.1247818525229953e-015 ;
	setAttr ".lr" -type "double3" -2.9420130803537529e-013 6.6791648310733893e-014 1.9083328088780927e-014 ;
	setAttr ".rst" -type "double3" 0.52785371664541714 6.0319010105710227 -3.9391071402661741 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952752e-015 1.9878466759146977e-014 
		-3.1805546814635168e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 5.3290705182007514e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -5.4069429584879788e-014 -3.5781240166464542e-014 
		-1.1927080055488179e-014 ;
	setAttr ".lr" -type "double3" -1.3994440598439473e-013 0 0 ;
	setAttr ".rst" -type "double3" 1.9901549821454978e-006 2.4950273818582018 -1.318353323398469e-005 ;
	setAttr ".rsrr" -type "double3" 7.6333312355124402e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 0 7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952729e-014 -1.5107634736951694e-014 
		-6.3611093629270304e-015 ;
	setAttr ".lr" -type "double3" -1.526666247102488e-013 0 0 ;
	setAttr ".rst" -type "double3" -4.3152183214045792e-005 1.6872395115615912 -1.9060199683451629e-005 ;
	setAttr ".rsrr" -type "double3" -7.9513867036587919e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 1.1102230246251565e-014 
		1.3322676295501878e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.1927080055488184e-015 1.590277340731758e-015 
		-3.9756933518293952e-015 ;
	setAttr ".lr" -type "double3" 2.6835930124848441e-015 -8.7465253740246703e-015 -2.2760844439223292e-014 ;
	setAttr ".rst" -type "double3" 2.6108856121245161 2.2618243688031257 -2.8146195239658272 ;
	setAttr ".rsrr" -type "double3" -7.8519943698630585e-015 7.9513867036587959e-016 
		3.2799470152592526e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -6.8833827526759706e-015 4.2188474935755949e-015 
		-2.1316282072803006e-014 ;
	setAttr ".tg[0].tor" -type "double3" -4.9696166897867451e-015 -4.7708320221952736e-015 
		9.5416640443905471e-015 ;
	setAttr ".lr" -type "double3" -7.9513867036587919e-015 0 0 ;
	setAttr ".rst" -type "double3" -3.0384056344701094e-005 2.9266380449186342 3.3988430034881389e-006 ;
	setAttr ".rsrr" -type "double3" 3.180554681463516e-015 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.3092638912203256e-014 -7.1054273576010019e-015 
		-2.3536728122053319e-014 ;
	setAttr ".tg[0].tor" -type "double3" 2.9420130803537528e-014 1.5902773407317587e-014 
		-1.2722218725854067e-014 ;
	setAttr ".lr" -type "double3" -3.1805546814635168e-015 0 0 ;
	setAttr ".rst" -type "double3" -1.1584907390727039e-005 1.6647368582923523 7.0772086390835653e-005 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905503e-015 0 0 ;
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
	setAttr ".lr" -type "double3" -1.7655625192200627e-030 3.1805546814635155e-014 -6.361109362927032e-015 ;
	setAttr ".rsrr" -type "double3" 0 1.9083328088781101e-014 0 ;
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
	setAttr ".lr" -type "double3" -0.021318490567795913 -5.3097321409367666 0.45975151613183302 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952775e-015 -3.1805546814635152e-015 
		5.6653630263568904e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.9968028886505635e-015 1.2434497875801753e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.8624992133171654e-014 -1.9083328088781091e-014 
		2.8426207465580171e-014 ;
	setAttr ".lr" -type "double3" 6.3611093629270351e-015 1.5902773407317598e-015 -1.5902773407317587e-014 ;
	setAttr ".rst" -type "double3" -0.97082418025683737 -6.0383972146721678 -1.9009615229156307 ;
	setAttr ".rsrr" -type "double3" -3.4986101496098681e-014 -1.3119788061037012e-014 
		-1.5902773407317581e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 2.1316282072803006e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708134e-014 1.5902773407317584e-015 
		3.8166656177562201e-014 ;
	setAttr ".lr" -type "double3" 6.9972202992197363e-014 0 0 ;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -2.1627004812349262 0 ;
	setAttr ".rsrr" -type "double3" 4.4527765540489235e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 1.0658141036401503e-014 
		-1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708134e-014 -1.5902773407317588e-015 
		6.3611093629270351e-015 ;
	setAttr ".lr" -type "double3" 7.6333312355124402e-014 0 0 ;
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 -1.3964073583961394 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317578e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 1.1102230246251565e-016 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -3.8763010180336611e-014 -1.2722218725854061e-014 
		1.4859153902462363e-014 ;
	setAttr ".lr" -type "double3" 1.0018747246610078e-013 4.2539918864574547e-014 -1.1131941385122272e-014 ;
	setAttr ".rst" -type "double3" -0.76240350729511874 -5.9923030281768046 -0.37924971384476702 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-014 9.5416640443905535e-015 
		-1.5902773407317581e-014 ;
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
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 5.3290705182007514e-015 
		-3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905503e-015 1.590277340731758e-015 
		2.7829853462805764e-015 ;
	setAttr ".lr" -type "double3" 1.526666247102488e-013 0 0 ;
	setAttr ".rst" -type "double3" 3.3306690738754696e-016 -2.5895820280780257 3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708134e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 2.3092638912203256e-014 
		1.2434497875801753e-014 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317587e-014 5.5659706925611543e-015 
		2.3059021440610497e-014 ;
	setAttr ".lr" -type "double3" 1.5107634736951704e-013 0 0 ;
	setAttr ".rst" -type "double3" -6.6613381477509392e-016 -1.8371641764432542 3.5527136788005009e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -6.2172489379008766e-015 -7.7715611723760958e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.311978806103701e-014 -6.6344382808653032e-015 
		1.8677993727520366e-014 ;
	setAttr ".lr" -type "double3" -2.2263882770244621e-014 3.9756933518293967e-014 -1.5902773407317665e-015 ;
	setAttr ".rst" -type "double3" -0.39121460380033568 -6.0210509904384946 1.6704838319236912 ;
	setAttr ".rsrr" -type "double3" -4.7708320221952744e-015 -1.3914926731402885e-014 
		-4.7708320221952744e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-015 1.5987211554602254e-014 
		-1.4210854715202004e-014 ;
	setAttr ".tg[0].tor" -type "double3" -4.1347210859025721e-014 -9.7901448788798846e-015 
		-5.938691944295159e-015 ;
	setAttr ".lr" -type "double3" 1.2086107789561363e-013 0 0 ;
	setAttr ".rst" -type "double3" -4.2188474935755949e-015 -3.2428493171744339 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-015 1.4210854715202004e-014 
		-1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.180554681463516e-015 5.2677936911739494e-015 
		1.7194873746662139e-014 ;
	setAttr ".lr" -type "double3" 9.2236085762441989e-014 0 0 ;
	setAttr ".rst" -type "double3" 6.1617377866696188e-015 -2.1602114025494679 7.1054273576010019e-015 ;
	setAttr ".rsrr" -type "double3" -3.1010408144269288e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 4.4408920985006262e-015 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781107e-014 6.3611093629270304e-015 
		8.8459177078204022e-015 ;
	setAttr ".lr" -type "double3" -1.272221872585407e-014 1.8288189418415221e-014 -9.5416640443905535e-015 ;
	setAttr ".rst" -type "double3" -0.52785181314344243 -6.0319177781419153 3.9391029359353937 ;
	setAttr ".rsrr" -type "double3" -1.590277340731757e-015 -2.1468744099878741e-014 
		-9.5416640443905519e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" 0 2.3092638912203256e-014 -1.7763568394002505e-014 ;
	setAttr ".tg[0].tor" -type "double3" -3.4986101496098681e-014 -1.1131941385122302e-014 
		-4.3335057534940402e-014 ;
	setAttr ".rst" -type "double3" 3.1086244689504383e-015 -2.4950367165231717 0 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854064e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 -8.8817841970012523e-015 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781107e-014 9.5416640443905503e-015 
		2.4251729446159314e-014 ;
	setAttr ".lr" -type "double3" -6.361109362927031e-014 0 0 ;
	setAttr ".rst" -type "double3" -2.886579864025407e-015 -1.6872527386840339 -3.5527136788005009e-015 ;
	setAttr ".rsrr" -type "double3" -4.8503458892318622e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -1.9984014443252818e-015 -5.773159728050814e-015 
		6.6613381477509392e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.0933156717530834e-014 4.7708320221952752e-015 
		-1.1131941385122309e-014 ;
	setAttr ".lr" -type "double3" 5.4665783587654193e-015 7.9513867036587821e-016 2.0574213095717126e-014 ;
	setAttr ".rst" -type "double3" -2.6108975466088857 -2.2618786189621209 2.8145951764083437 ;
	setAttr ".rsrr" -type "double3" 1.9878466759146916e-016 -7.9513867036587935e-015 
		9.9392333795734934e-015 ;
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
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-015 -1.1990408665951691e-014 
		1.7763568394002505e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.7990012417028009e-014 1.5902773407317587e-014 
		-1.3517357396219949e-014 ;
	setAttr ".lr" -type "double3" 2.5444437451708134e-014 0 0 ;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -2.9266440567811087 8.8817841970012523e-016 ;
	setAttr ".rsrr" -type "double3" 2.2263882770244617e-014 0 0 ;
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 6.2172489379008766e-015 
		-2.6645352591003757e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.1440947092076119e-015 1.5902773407317587e-014 
		-1.1131941385122312e-014 ;
	setAttr ".lr" -type "double3" 2.5444437451708134e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -1.6647313732865503 -1.021405182655144e-014 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-014 0 0 ;
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
	setAttr ".lr" -type "double3" -2.8624992133171654e-014 0 0 ;
	setAttr ".rsrr" -type "double3" -1.4312496066585827e-014 0 0 ;
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
	setAttr ".lr" -type "double3" -2.8624992133171648e-014 0 0 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708128e-014 0 0 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 7 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "RefRN";
	setAttr -s 661 ".phl";
	setAttr ".phl[632]" 0;
	setAttr ".phl[649]" 0;
	setAttr ".phl[1927]" 0;
	setAttr ".phl[1930]" 0;
	setAttr ".phl[1934]" 0;
	setAttr ".phl[1937]" 0;
	setAttr ".phl[1941]" 0;
	setAttr ".phl[1944]" 0;
	setAttr ".phl[1947]" 0;
	setAttr ".phl[1951]" 0;
	setAttr ".phl[1974]" 0;
	setAttr ".phl[2639]" 0;
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
	setAttr ".phl[2974]" 0;
	setAttr ".phl[2975]" 0;
	setAttr ".phl[2976]" 0;
	setAttr ".phl[2977]" 0;
	setAttr ".phl[2978]" 0;
	setAttr ".phl[2979]" 0;
	setAttr ".phl[2980]" 0;
	setAttr ".phl[2981]" 0;
	setAttr ".phl[2982]" 0;
	setAttr ".phl[2983]" 0;
	setAttr ".phl[2984]" 0;
	setAttr ".phl[2985]" 0;
	setAttr ".phl[2986]" 0;
	setAttr ".phl[2987]" 0;
	setAttr ".phl[2988]" 0;
	setAttr ".phl[2989]" 0;
	setAttr ".phl[2990]" 0;
	setAttr ".phl[2991]" 0;
	setAttr ".phl[2992]" 0;
	setAttr ".phl[2993]" 0;
	setAttr ".phl[2994]" 0;
	setAttr ".phl[2995]" 0;
	setAttr ".phl[2996]" 0;
	setAttr ".phl[2997]" 0;
	setAttr ".phl[2998]" 0;
	setAttr ".phl[2999]" 0;
	setAttr ".phl[3000]" 0;
	setAttr ".phl[3001]" 0;
	setAttr ".phl[3002]" 0;
	setAttr ".phl[3003]" 0;
	setAttr ".phl[3004]" 0;
	setAttr ".phl[3005]" 0;
	setAttr ".phl[3006]" 0;
	setAttr ".phl[3007]" 0;
	setAttr ".phl[3008]" 0;
	setAttr ".phl[3009]" 0;
	setAttr ".phl[3010]" 0;
	setAttr ".phl[3011]" 0;
	setAttr ".phl[3012]" 0;
	setAttr ".phl[3013]" 0;
	setAttr ".phl[3014]" 0;
	setAttr ".phl[3015]" 0;
	setAttr ".phl[3016]" 0;
	setAttr ".phl[3017]" 0;
	setAttr ".phl[3018]" 0;
	setAttr ".phl[3019]" 0;
	setAttr ".phl[3020]" 0;
	setAttr ".phl[3021]" 0;
	setAttr ".phl[3022]" 0;
	setAttr ".phl[3023]" 0;
	setAttr ".phl[3024]" 0;
	setAttr ".phl[3025]" 0;
	setAttr ".phl[3026]" 0;
	setAttr ".phl[3027]" 0;
	setAttr ".phl[3028]" 0;
	setAttr ".phl[3029]" 0;
	setAttr ".phl[3030]" 0;
	setAttr ".phl[3031]" 0;
	setAttr ".phl[3032]" 0;
	setAttr ".phl[3033]" 0;
	setAttr ".phl[3034]" 0;
	setAttr ".phl[3035]" 0;
	setAttr ".phl[3036]" 0;
	setAttr ".phl[3037]" 0;
	setAttr ".phl[3038]" 0;
	setAttr ".phl[3039]" 0;
	setAttr ".phl[3040]" 0;
	setAttr ".phl[3041]" 0;
	setAttr ".phl[3042]" 0;
	setAttr ".phl[3043]" 0;
	setAttr ".phl[3044]" 0;
	setAttr ".phl[3045]" 0;
	setAttr ".phl[3046]" 0;
	setAttr ".phl[3047]" 0;
	setAttr ".phl[3048]" 0;
	setAttr ".phl[3049]" 0;
	setAttr ".phl[3050]" 0;
	setAttr ".phl[3051]" 0;
	setAttr ".phl[3052]" 0;
	setAttr ".phl[3053]" 0;
	setAttr ".phl[3054]" 0;
	setAttr ".phl[3055]" 0;
	setAttr ".phl[3056]" 0;
	setAttr ".phl[3057]" 0;
	setAttr ".phl[3058]" 0;
	setAttr ".phl[3059]" 0;
	setAttr ".phl[3060]" 0;
	setAttr ".phl[3061]" 0;
	setAttr ".phl[3062]" 0;
	setAttr ".phl[3063]" 0;
	setAttr ".phl[3064]" 0;
	setAttr ".phl[3065]" 0;
	setAttr ".phl[3066]" 0;
	setAttr ".phl[3067]" 0;
	setAttr ".phl[3068]" 0;
	setAttr ".phl[3069]" 0;
	setAttr ".phl[3070]" 0;
	setAttr ".phl[3071]" 0;
	setAttr ".phl[3072]" 0;
	setAttr ".phl[3073]" 0;
	setAttr ".phl[3074]" 0;
	setAttr ".phl[3075]" 0;
	setAttr ".phl[3076]" 0;
	setAttr ".phl[3077]" 0;
	setAttr ".phl[3078]" 0;
	setAttr ".phl[3079]" 0;
	setAttr ".phl[3080]" 0;
	setAttr ".phl[3081]" 0;
	setAttr ".phl[3082]" 0;
	setAttr ".phl[3083]" 0;
	setAttr ".phl[3084]" 0;
	setAttr ".phl[3085]" 0;
	setAttr ".phl[3086]" 0;
	setAttr ".phl[3087]" 0;
	setAttr ".phl[3088]" 0;
	setAttr ".phl[3089]" 0;
	setAttr ".phl[3090]" 0;
	setAttr ".phl[3091]" 0;
	setAttr ".phl[3092]" 0;
	setAttr ".phl[3093]" 0;
	setAttr ".phl[3094]" 0;
	setAttr ".phl[3095]" 0;
	setAttr ".phl[3096]" 0;
	setAttr ".phl[3097]" 0;
	setAttr ".phl[3098]" 0;
	setAttr ".phl[3099]" 0;
	setAttr ".phl[3100]" 0;
	setAttr ".phl[3101]" 0;
	setAttr ".phl[3102]" 0;
	setAttr ".phl[3103]" 0;
	setAttr ".phl[3104]" 0;
	setAttr ".phl[3105]" 0;
	setAttr ".phl[3106]" 0;
	setAttr ".phl[3107]" 0;
	setAttr ".phl[3108]" 0;
	setAttr ".phl[3109]" 0;
	setAttr ".phl[3110]" 0;
	setAttr ".phl[3111]" 0;
	setAttr ".phl[3112]" 0;
	setAttr ".phl[3113]" 0;
	setAttr ".phl[3114]" 0;
	setAttr ".phl[3115]" 0;
	setAttr ".phl[3116]" 0;
	setAttr ".phl[3117]" 0;
	setAttr ".phl[3118]" 0;
	setAttr ".phl[3119]" 0;
	setAttr ".phl[3120]" 0;
	setAttr ".phl[3121]" 0;
	setAttr ".phl[3122]" 0;
	setAttr ".phl[3123]" 0;
	setAttr ".phl[3124]" 0;
	setAttr ".phl[3125]" 0;
	setAttr ".phl[3126]" 0;
	setAttr ".phl[3127]" 0;
	setAttr ".phl[3128]" 0;
	setAttr ".phl[3129]" 0;
	setAttr ".phl[3130]" 0;
	setAttr ".phl[3131]" 0;
	setAttr ".phl[3132]" 0;
	setAttr ".phl[3133]" 0;
	setAttr ".phl[3134]" 0;
	setAttr ".phl[3135]" 0;
	setAttr ".phl[3136]" 0;
	setAttr ".phl[3137]" 0;
	setAttr ".phl[3138]" 0;
	setAttr ".phl[3139]" 0;
	setAttr ".phl[3140]" 0;
	setAttr ".phl[3141]" 0;
	setAttr ".phl[3142]" 0;
	setAttr ".phl[3143]" 0;
	setAttr ".phl[3144]" 0;
	setAttr ".phl[3145]" 0;
	setAttr ".phl[3146]" 0;
	setAttr ".phl[3147]" 0;
	setAttr ".phl[3148]" 0;
	setAttr ".phl[3149]" 0;
	setAttr ".phl[3150]" 0;
	setAttr ".phl[3151]" 0;
	setAttr ".phl[3152]" 0;
	setAttr ".phl[3153]" 0;
	setAttr ".phl[3154]" 0;
	setAttr ".phl[3155]" 0;
	setAttr ".phl[3156]" 0;
	setAttr ".phl[3157]" 0;
	setAttr ".phl[3158]" 0;
	setAttr ".phl[3159]" 0;
	setAttr ".phl[3160]" 0;
	setAttr ".phl[3161]" 0;
	setAttr ".phl[3162]" 0;
	setAttr ".phl[3163]" 0;
	setAttr ".phl[3164]" 0;
	setAttr ".phl[3165]" 0;
	setAttr ".phl[3166]" 0;
	setAttr ".phl[3167]" 0;
	setAttr ".phl[3168]" 0;
	setAttr ".phl[3169]" 0;
	setAttr ".phl[3170]" 0;
	setAttr ".phl[3171]" 0;
	setAttr ".phl[3172]" 0;
	setAttr ".phl[3173]" 0;
	setAttr ".phl[3174]" 0;
	setAttr ".phl[3175]" 0;
	setAttr ".phl[3176]" 0;
	setAttr ".phl[3177]" 0;
	setAttr ".phl[3178]" 0;
	setAttr ".phl[3179]" 0;
	setAttr ".phl[3180]" 0;
	setAttr ".phl[3181]" 0;
	setAttr ".phl[3182]" 0;
	setAttr ".phl[3183]" 0;
	setAttr ".phl[3184]" 0;
	setAttr ".phl[3185]" 0;
	setAttr ".phl[3186]" 0;
	setAttr ".phl[3187]" 0;
	setAttr ".phl[3188]" 0;
	setAttr ".phl[3189]" 0;
	setAttr ".phl[3190]" 0;
	setAttr ".phl[3191]" 0;
	setAttr ".phl[3192]" 0;
	setAttr ".phl[3193]" 0;
	setAttr ".phl[3194]" 0;
	setAttr ".phl[3195]" 0;
	setAttr ".phl[3196]" 0;
	setAttr ".phl[3197]" 0;
	setAttr ".phl[3198]" 0;
	setAttr ".phl[3199]" 0;
	setAttr ".phl[3200]" 0;
	setAttr ".phl[3201]" 0;
	setAttr ".phl[3202]" 0;
	setAttr ".phl[3203]" 0;
	setAttr ".phl[3204]" 0;
	setAttr ".phl[3205]" 0;
	setAttr ".phl[3206]" 0;
	setAttr ".phl[3207]" 0;
	setAttr ".phl[3208]" 0;
	setAttr ".phl[3209]" 0;
	setAttr ".phl[3210]" 0;
	setAttr ".phl[3211]" 0;
	setAttr ".phl[3212]" 0;
	setAttr ".phl[3213]" 0;
	setAttr ".phl[3214]" 0;
	setAttr ".phl[3215]" 0;
	setAttr ".phl[3216]" 0;
	setAttr ".phl[3217]" 0;
	setAttr ".phl[3218]" 0;
	setAttr ".phl[3219]" 0;
	setAttr ".phl[3220]" 0;
	setAttr ".phl[3221]" 0;
	setAttr ".phl[3222]" 0;
	setAttr ".phl[3223]" 0;
	setAttr ".phl[3224]" 0;
	setAttr ".phl[3225]" 0;
	setAttr ".phl[3226]" 0;
	setAttr ".phl[3227]" 0;
	setAttr ".phl[3228]" 0;
	setAttr ".phl[3229]" 0;
	setAttr ".phl[3230]" 0;
	setAttr ".phl[3231]" 0;
	setAttr ".phl[3232]" 0;
	setAttr ".phl[3233]" 0;
	setAttr ".phl[3234]" 0;
	setAttr ".phl[3235]" 0;
	setAttr ".phl[3236]" 0;
	setAttr ".phl[3237]" 0;
	setAttr ".phl[3238]" 0;
	setAttr ".phl[3239]" 0;
	setAttr ".phl[3240]" 0;
	setAttr ".phl[3241]" 0;
	setAttr ".phl[3242]" 0;
	setAttr ".phl[3243]" 0;
	setAttr ".phl[3244]" 0;
	setAttr ".phl[3245]" 0;
	setAttr ".phl[3246]" 0;
	setAttr ".phl[3247]" 0;
	setAttr ".phl[3248]" 0;
	setAttr ".phl[3249]" 0;
	setAttr ".phl[3250]" 0;
	setAttr ".phl[3251]" 0;
	setAttr ".phl[3252]" 0;
	setAttr ".phl[3253]" 0;
	setAttr ".phl[3254]" 0;
	setAttr ".phl[3255]" 0;
	setAttr ".phl[3256]" 0;
	setAttr ".phl[3257]" 0;
	setAttr ".phl[3258]" 0;
	setAttr ".phl[3259]" 0;
	setAttr ".phl[3260]" 0;
	setAttr ".phl[3261]" 0;
	setAttr ".phl[3262]" 0;
	setAttr ".phl[3263]" 0;
	setAttr ".phl[3264]" 0;
	setAttr ".phl[3265]" 0;
	setAttr ".phl[3266]" 0;
	setAttr ".phl[3267]" 0;
	setAttr ".phl[3268]" 0;
	setAttr ".phl[3269]" 0;
	setAttr ".phl[3270]" 0;
	setAttr ".phl[3271]" 0;
	setAttr ".phl[3272]" 0;
	setAttr ".phl[3273]" 0;
	setAttr ".phl[3274]" 0;
	setAttr ".phl[3275]" 0;
	setAttr ".phl[3276]" 0;
	setAttr ".phl[3277]" 0;
	setAttr ".phl[3278]" 0;
	setAttr ".phl[3279]" 0;
	setAttr ".phl[3280]" 0;
	setAttr ".phl[3281]" 0;
	setAttr ".phl[3282]" 0;
	setAttr ".phl[3283]" 0;
	setAttr ".phl[3284]" 0;
	setAttr ".phl[3285]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"RefRN"
		"RefRN" 62
		2 "|Ref:demoInfo|Ref:demo_mesh|Ref:demo_meshShape" "instObjGroups.objectGroups" 
		" -s 14"
		2 "|Ref:demoInfo|Ref:demo_mesh|Ref:demo_meshShape" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "|Ref:demoInfo|Ref:game_hands" "visibility" " 0"
		2 "|Ref:demoInfo|Ref:smile" "visibility" " 0"
		2 "|Ref:demoInfo|Ref:smile|Ref:smileShape" "instObjGroups.objectGroups" " -s 6"
		
		2 "|Ref:demoInfo|Ref:smile|Ref:smileShape" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "|Ref:lod_group" "visibility" " 0"
		2 "|Ref:demoInfo|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_R_0|Ref:bip_grenade_1_R_1" 
		"translate" " -type \"double3\" 3.410466 0 0"
		2 "|Ref:demoInfo|Ref:game_meshes" "visibility" " 1"
		2 "|Ref:demoInfo|Ref:sfm_meshes" "visibility" " 0"
		2 "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape" 
		"instObjGroups.objectGroups" " -s 10"
		2 "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "Ref:groupParts14" "inputRemoveComponent" " -type \"componentList\" 2 \"f[0:1943]\" \"f[1966:2290]\""
		
		2 "Ref:groupParts14" "groupId" " 100"
		2 "Ref:groupParts15" "inputComponents" " -type \"componentList\" 1 \"f[1944:1965]\""
		
		2 "Ref:groupParts15" "inputRemoveComponent" " -type \"componentList\" 1 \"f[1944:1965]\""
		
		2 "Ref:groupParts15" "groupId" " 101"
		2 "Ref:lod_layer" "visibility" " 0"
		3 "Ref:skinCluster4.outputGeometry[0]" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape.inMesh" 
		""
		3 "Ref:skinCluster12.outputGeometry[0]" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.inMesh" 
		""
		3 "Ref:skinCluster3.outputGeometry[0]" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape.inMesh" 
		""
		3 "Ref:groupId241.message" "Ref:head_eyepatch_demoman_headSG.groupNodes" 
		"-na"
		3 "Ref:groupId241.groupId" "Ref:groupParts14.groupId" ""
		3 "Ref:groupId242.groupId" "Ref:groupParts15.groupId" ""
		3 "|Ref:demoInfo|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[44]" 
		"Ref:eyeball_rSG1.dagSetMembers" "-na"
		3 "Ref:groupId242.message" "Ref:eyeball_rSG1.groupNodes" "-na"
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_hands.instObjGroups" "RefRN.placeHolderList[632]" 
		""
		5 3 "RefRN" "|Ref:demoInfo|Ref:game_hands.instObjGroups" "RefRN.placeHolderList[649]" 
		""
		5 4 "RefRN" "|Ref:demoInfo|Ref:smile|Ref:smileShape.instObjGroups.objectGroups[9].objectGroupId" 
		"RefRN.placeHolderList[1280]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:smile|Ref:smileShape.instObjGroups.objectGroups[17].objectGroupId" 
		"RefRN.placeHolderList[1281]" ""
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand.instObjGroups" 
		"RefRN.placeHolderList[1927]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape.instObjGroups.objectGroups[133].objectGroupId" 
		"RefRN.placeHolderList[1928]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape.instObjGroups.objectGroups[134].objectGroupId" 
		"RefRN.placeHolderList[1929]" ""
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape.instObjGroups.objectGroups[135]" 
		"RefRN.placeHolderList[1930]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape.instObjGroups.objectGroups[135].objectGroupId" 
		"RefRN.placeHolderList[1931]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape.instObjGroups.objectGroups[135].objectGrpColor" 
		"RefRN.placeHolderList[1932]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_left_hand|Ref:sfm_left_handShape.inMesh" 
		"RefRN.placeHolderList[1933]" ""
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand.instObjGroups" 
		"RefRN.placeHolderList[1934]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape.instObjGroups.objectGroups[133].objectGroupId" 
		"RefRN.placeHolderList[1935]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape.instObjGroups.objectGroups[134].objectGroupId" 
		"RefRN.placeHolderList[1936]" ""
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape.instObjGroups.objectGroups[135]" 
		"RefRN.placeHolderList[1937]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape.instObjGroups.objectGroups[135].objectGroupId" 
		"RefRN.placeHolderList[1938]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape.instObjGroups.objectGroups[135].objectGrpColor" 
		"RefRN.placeHolderList[1939]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_right_hand|Ref:sfm_right_handShape.inMesh" 
		"RefRN.placeHolderList[1940]" ""
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[30]" 
		"RefRN.placeHolderList[1941]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[30].objectGroupId" 
		"RefRN.placeHolderList[1942]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[30].objectGrpColor" 
		"RefRN.placeHolderList[1943]" ""
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[31]" 
		"RefRN.placeHolderList[1944]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[31].objectGroupId" 
		"RefRN.placeHolderList[1945]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[31].objectGrpColor" 
		"RefRN.placeHolderList[1946]" ""
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[32]" 
		"RefRN.placeHolderList[1947]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[32].objectGroupId" 
		"RefRN.placeHolderList[1948]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.instObjGroups.objectGroups[32].objectGrpColor" 
		"RefRN.placeHolderList[1949]" ""
		5 4 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_demoman_mesh|Ref:sfm_demoman_meshShape.inMesh" 
		"RefRN.placeHolderList[1950]" ""
		5 3 "RefRN" "|Ref:demoInfo|Ref:sfm_meshes|Ref:sfm_head_zero_mesh.instObjGroups" 
		"RefRN.placeHolderList[1951]" ""
		5 3 "RefRN" "Ref:skinCluster12.outputGeometry[0]" "RefRN.placeHolderList[1974]" 
		"Ref:sfm_demoman_meshShape.i"
		5 0 "RefRN" "|Ref:demoInfo|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[48]" 
		"Ref:eyeball_rSG1.dagSetMembers" "RefRN.placeHolderList[2639]" "RefRN.placeHolderList[2640]" 
		""
		5 4 "RefRN" "Ref:eyeball_rSG1.groupNodes" "RefRN.placeHolderList[2641]" 
		""
		"Ref:HeadRN" 0
		"RefRN" 732
		0 "|RefRNfosterParent1|Ref:bip_head_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_neck_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_L_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_L_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_L_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_L_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_L_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_2_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_1_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_thumb_0_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_2_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_1_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_index_0_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_2_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_1_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_middle_0_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_2_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_1_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_ring_0_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_2_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_1_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pinky_0_R_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hand_R_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_lowerArm_R_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_upperArm_R_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_collar_R_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_3_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_2_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_1_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_spine_0_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_L_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_L_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_L_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_L_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_toe_R_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_foot_R_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_knee_R_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_hip_R_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_crotchflap_0_parentConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_orientConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis" 
		"-s -r "
		0 "|RefRNfosterParent1|Ref:bip_pelvis_pointConstraint1" "|Ref:demoInfo_group|Ref:bip_pelvis" 
		"-s -r "
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_grenade_2_R_0" 
		"translate" " -type \"double3\" -8.506479 -4.067927 -5.22645"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_jacketcollar_0_R" 
		"translate" " -type \"double3\" -5.368891 -3.675739 -2.769736"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_jacketcollar_0_L" 
		"translate" " -type \"double3\" 5.368891 -3.674501 -2.768497"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_grenade_2_L_0" 
		"translate" " -type \"double3\" 8.593743 -3.960248 -5.017101"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_jacketcollar_0_B" 
		"translate" " -type \"double3\" 0 -3.844182 3.787864"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_R_0" 
		"translate" " -type \"double3\" -8.427104 -4.060835 -8.03246"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_L_0" 
		"translate" " -type \"double3\" 8.412485 -4.102078 -8.035315"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_grenade_0_R_0" 
		"translate" " -type \"double3\" -7.542028 -3.737436 -9.217503"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_grenade_0_L_0" 
		"translate" " -type \"double3\" 8.174987 -3.638927 -9.011279"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_stomachpouch_0" 
		"translate" " -type \"double3\" -0.000370826 0.492117 -9.619193"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0" "translate" " -type \"double3\" -0.000370826 1.074479 -6.630933"
		
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0" "translateX" 
		" -av"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0" "translateY" 
		" -av"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0" "translateZ" 
		" -av"
		2 "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hippouch_0" "translate" " -type \"double3\" -8.530733 -0.244536 -1.908014"
		
		2 "|Ref:demoInfo_group|Ref:meshes|Ref:game_left_hand|Ref:game_left_handShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|Ref:demoInfo_group|Ref:meshes|Ref:game_left_hand|Ref:game_left_handShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:demoInfo_group|Ref:meshes|Ref:game_right_hand|Ref:game_right_handShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|Ref:demoInfo_group|Ref:meshes|Ref:game_right_hand|Ref:game_right_handShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:demoInfo_group|Ref:meshes|Ref:demoman_mesh|Ref:demoman_meshShape" 
		"instObjGroups.objectGroups" " -s 4"
		2 "|Ref:demoInfo_group|Ref:meshes|Ref:demoman_mesh|Ref:demoman_meshShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape" 
		"instObjGroups.objectGroups" " -s 8"
		2 "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Ref:demoInfo_group|Ref:bodygroups|Ref:grenade_mesh|Ref:grenade_meshShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "Ref:mesh_layer" "displayType" " 2"
		2 "Ref:mesh_layer" "visibility" " 1"
		2 "Ref:skeleton_layer" "displayType" " 2"
		2 "Ref:skeleton_layer" "visibility" " 1"
		3 "Ref:skinCluster2.outputGeometry[0]" "|Ref:demoInfo_group|Ref:meshes|Ref:game_right_hand|Ref:game_right_handShape.inMesh" 
		""
		3 "Ref:groupId319.groupId" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[43].objectGroupId" 
		""
		3 "Ref:head_eyepatch_demoman_headSG.memberWireframeColor" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[43].objectGrpColor" 
		""
		3 "Ref:groupId320.groupId" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[44].objectGroupId" 
		""
		3 "Ref:lambert2SG.memberWireframeColor" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[44].objectGrpColor" 
		""
		3 "Ref:skinCluster4.outputGeometry[0]" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.inMesh" 
		""
		3 "Ref:skinCluster1.outputGeometry[0]" "|Ref:demoInfo_group|Ref:meshes|Ref:game_left_hand|Ref:game_left_handShape.inMesh" 
		""
		3 "Ref:skinCluster7.outputGeometry[0]" "|Ref:demoInfo_group|Ref:bodygroups|Ref:grenade_mesh|Ref:grenade_meshShape.inMesh" 
		""
		3 "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[43]" 
		"Ref:head_eyepatch_demoman_headSG.dagSetMembers" "-na"
		3 "Ref:skinCluster3.outputGeometry[0]" "|Ref:demoInfo_group|Ref:meshes|Ref:demoman_mesh|Ref:demoman_meshShape.inMesh" 
		""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.translateX" "RefRN.placeHolderList[2642]" 
		""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.translateY" "RefRN.placeHolderList[2643]" 
		""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.translateZ" "RefRN.placeHolderList[2644]" 
		""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.rotatePivot" "RefRN.placeHolderList[2645]" 
		""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.rotatePivotTranslate" 
		"RefRN.placeHolderList[2646]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[2647]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.parentInverseMatrix" 
		"RefRN.placeHolderList[2648]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.rotateX" "RefRN.placeHolderList[2649]" 
		""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.rotateY" "RefRN.placeHolderList[2650]" 
		""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.rotateZ" "RefRN.placeHolderList[2651]" 
		""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.rotateOrder" "RefRN.placeHolderList[2652]" 
		""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis.jointOrient" "RefRN.placeHolderList[2653]" 
		""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateX" 
		"RefRN.placeHolderList[2654]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateY" 
		"RefRN.placeHolderList[2655]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.translateZ" 
		"RefRN.placeHolderList[2656]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivot" 
		"RefRN.placeHolderList[2657]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[2658]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateX" 
		"RefRN.placeHolderList[2659]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateY" 
		"RefRN.placeHolderList[2660]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateZ" 
		"RefRN.placeHolderList[2661]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.rotateOrder" 
		"RefRN.placeHolderList[2662]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.jointOrient" 
		"RefRN.placeHolderList[2663]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0.parentInverseMatrix" 
		"RefRN.placeHolderList[2664]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateX" 
		"RefRN.placeHolderList[2665]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateY" 
		"RefRN.placeHolderList[2666]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.translateZ" 
		"RefRN.placeHolderList[2667]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivot" 
		"RefRN.placeHolderList[2668]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotatePivotTranslate" 
		"RefRN.placeHolderList[2669]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateX" 
		"RefRN.placeHolderList[2670]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateY" 
		"RefRN.placeHolderList[2671]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateZ" 
		"RefRN.placeHolderList[2672]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.rotateOrder" 
		"RefRN.placeHolderList[2673]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.jointOrient" 
		"RefRN.placeHolderList[2674]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1.parentInverseMatrix" 
		"RefRN.placeHolderList[2675]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateX" 
		"RefRN.placeHolderList[2676]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateY" 
		"RefRN.placeHolderList[2677]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.translateZ" 
		"RefRN.placeHolderList[2678]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivot" 
		"RefRN.placeHolderList[2679]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotatePivotTranslate" 
		"RefRN.placeHolderList[2680]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateX" 
		"RefRN.placeHolderList[2681]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateY" 
		"RefRN.placeHolderList[2682]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateZ" 
		"RefRN.placeHolderList[2683]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.rotateOrder" 
		"RefRN.placeHolderList[2684]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.jointOrient" 
		"RefRN.placeHolderList[2685]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2.parentInverseMatrix" 
		"RefRN.placeHolderList[2686]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translate" 
		"RefRN.placeHolderList[2687]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateX" 
		"RefRN.placeHolderList[2688]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateY" 
		"RefRN.placeHolderList[2689]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.translateZ" 
		"RefRN.placeHolderList[2690]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[2691]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivot" 
		"RefRN.placeHolderList[2692]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[2693]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotatePivotTranslate" 
		"RefRN.placeHolderList[2694]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateX" 
		"RefRN.placeHolderList[2695]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateY" 
		"RefRN.placeHolderList[2696]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateZ" 
		"RefRN.placeHolderList[2697]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.rotateOrder" 
		"RefRN.placeHolderList[2698]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentMatrix" 
		"RefRN.placeHolderList[2699]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.jointOrient" 
		"RefRN.placeHolderList[2700]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3.parentInverseMatrix" 
		"RefRN.placeHolderList[2701]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[2702]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.translate" 
		"RefRN.placeHolderList[2703]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[2704]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivot" 
		"RefRN.placeHolderList[2705]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[2706]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotatePivotTranslate" 
		"RefRN.placeHolderList[2707]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateX" 
		"RefRN.placeHolderList[2708]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateY" 
		"RefRN.placeHolderList[2709]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateZ" 
		"RefRN.placeHolderList[2710]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.rotateOrder" 
		"RefRN.placeHolderList[2711]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[2712]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentMatrix" 
		"RefRN.placeHolderList[2713]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.jointOrient" 
		"RefRN.placeHolderList[2714]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck.parentInverseMatrix" 
		"RefRN.placeHolderList[2715]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.translate" 
		"RefRN.placeHolderList[2716]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivot" 
		"RefRN.placeHolderList[2717]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotatePivotTranslate" 
		"RefRN.placeHolderList[2718]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateX" 
		"RefRN.placeHolderList[2719]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateY" 
		"RefRN.placeHolderList[2720]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateZ" 
		"RefRN.placeHolderList[2721]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.rotateOrder" 
		"RefRN.placeHolderList[2722]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentMatrix" 
		"RefRN.placeHolderList[2723]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.jointOrient" 
		"RefRN.placeHolderList[2724]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_neck|Ref:bip_head.parentInverseMatrix" 
		"RefRN.placeHolderList[2725]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.translate" 
		"RefRN.placeHolderList[2726]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivot" 
		"RefRN.placeHolderList[2727]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2728]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateX" 
		"RefRN.placeHolderList[2729]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateY" 
		"RefRN.placeHolderList[2730]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateZ" 
		"RefRN.placeHolderList[2731]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.rotateOrder" 
		"RefRN.placeHolderList[2732]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentMatrix" 
		"RefRN.placeHolderList[2733]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.jointOrient" 
		"RefRN.placeHolderList[2734]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2735]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.message" 
		"RefRN.placeHolderList[2736]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[2737]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.translate" 
		"RefRN.placeHolderList[2738]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[2739]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivot" 
		"RefRN.placeHolderList[2740]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2741]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2742]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[2743]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentMatrix" 
		"RefRN.placeHolderList[2744]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateY" 
		"RefRN.placeHolderList[2745]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateX" 
		"RefRN.placeHolderList[2746]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateZ" 
		"RefRN.placeHolderList[2747]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.rotateOrder" 
		"RefRN.placeHolderList[2748]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.jointOrient" 
		"RefRN.placeHolderList[2749]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2750]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.message" 
		"RefRN.placeHolderList[2751]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentMatrix" 
		"RefRN.placeHolderList[2752]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotate" 
		"RefRN.placeHolderList[2753]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateX" 
		"RefRN.placeHolderList[2754]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateY" 
		"RefRN.placeHolderList[2755]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateZ" 
		"RefRN.placeHolderList[2756]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[2757]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.rotateOrder" 
		"RefRN.placeHolderList[2758]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[2759]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.jointOrient" 
		"RefRN.placeHolderList[2760]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2761]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentMatrix" 
		"RefRN.placeHolderList[2762]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.message" 
		"RefRN.placeHolderList[2763]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.translate" 
		"RefRN.placeHolderList[2764]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivot" 
		"RefRN.placeHolderList[2765]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2766]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateX" 
		"RefRN.placeHolderList[2767]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateY" 
		"RefRN.placeHolderList[2768]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateZ" 
		"RefRN.placeHolderList[2769]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.rotateOrder" 
		"RefRN.placeHolderList[2770]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.jointOrient" 
		"RefRN.placeHolderList[2771]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2772]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateX" 
		"RefRN.placeHolderList[2773]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateY" 
		"RefRN.placeHolderList[2774]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.translateZ" 
		"RefRN.placeHolderList[2775]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivot" 
		"RefRN.placeHolderList[2776]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2777]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateX" 
		"RefRN.placeHolderList[2778]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateY" 
		"RefRN.placeHolderList[2779]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateZ" 
		"RefRN.placeHolderList[2780]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.rotateOrder" 
		"RefRN.placeHolderList[2781]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.jointOrient" 
		"RefRN.placeHolderList[2782]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2783]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateX" 
		"RefRN.placeHolderList[2784]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateY" 
		"RefRN.placeHolderList[2785]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.translateZ" 
		"RefRN.placeHolderList[2786]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivot" 
		"RefRN.placeHolderList[2787]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2788]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateX" 
		"RefRN.placeHolderList[2789]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateY" 
		"RefRN.placeHolderList[2790]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateZ" 
		"RefRN.placeHolderList[2791]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.rotateOrder" 
		"RefRN.placeHolderList[2792]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.jointOrient" 
		"RefRN.placeHolderList[2793]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2794]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateX" 
		"RefRN.placeHolderList[2795]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateY" 
		"RefRN.placeHolderList[2796]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.translateZ" 
		"RefRN.placeHolderList[2797]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivot" 
		"RefRN.placeHolderList[2798]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2799]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateX" 
		"RefRN.placeHolderList[2800]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateY" 
		"RefRN.placeHolderList[2801]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateZ" 
		"RefRN.placeHolderList[2802]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.rotateOrder" 
		"RefRN.placeHolderList[2803]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.jointOrient" 
		"RefRN.placeHolderList[2804]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_thumb_0_L|Ref:bip_thumb_1_L|Ref:bip_thumb_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2805]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateX" 
		"RefRN.placeHolderList[2806]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateY" 
		"RefRN.placeHolderList[2807]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.translateZ" 
		"RefRN.placeHolderList[2808]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivot" 
		"RefRN.placeHolderList[2809]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2810]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateX" 
		"RefRN.placeHolderList[2811]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateY" 
		"RefRN.placeHolderList[2812]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateZ" 
		"RefRN.placeHolderList[2813]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.rotateOrder" 
		"RefRN.placeHolderList[2814]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.jointOrient" 
		"RefRN.placeHolderList[2815]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2816]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateX" 
		"RefRN.placeHolderList[2817]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateY" 
		"RefRN.placeHolderList[2818]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.translateZ" 
		"RefRN.placeHolderList[2819]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivot" 
		"RefRN.placeHolderList[2820]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2821]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateX" 
		"RefRN.placeHolderList[2822]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateY" 
		"RefRN.placeHolderList[2823]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateZ" 
		"RefRN.placeHolderList[2824]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.rotateOrder" 
		"RefRN.placeHolderList[2825]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.jointOrient" 
		"RefRN.placeHolderList[2826]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2827]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateX" 
		"RefRN.placeHolderList[2828]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateY" 
		"RefRN.placeHolderList[2829]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.translateZ" 
		"RefRN.placeHolderList[2830]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivot" 
		"RefRN.placeHolderList[2831]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2832]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateX" 
		"RefRN.placeHolderList[2833]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateY" 
		"RefRN.placeHolderList[2834]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateZ" 
		"RefRN.placeHolderList[2835]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.rotateOrder" 
		"RefRN.placeHolderList[2836]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.jointOrient" 
		"RefRN.placeHolderList[2837]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_index_0_L|Ref:bip_index_1_L|Ref:bip_index_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2838]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateX" 
		"RefRN.placeHolderList[2839]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateY" 
		"RefRN.placeHolderList[2840]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.translateZ" 
		"RefRN.placeHolderList[2841]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivot" 
		"RefRN.placeHolderList[2842]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2843]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateX" 
		"RefRN.placeHolderList[2844]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateY" 
		"RefRN.placeHolderList[2845]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateZ" 
		"RefRN.placeHolderList[2846]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.rotateOrder" 
		"RefRN.placeHolderList[2847]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.jointOrient" 
		"RefRN.placeHolderList[2848]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2849]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateX" 
		"RefRN.placeHolderList[2850]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateY" 
		"RefRN.placeHolderList[2851]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.translateZ" 
		"RefRN.placeHolderList[2852]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivot" 
		"RefRN.placeHolderList[2853]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2854]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateX" 
		"RefRN.placeHolderList[2855]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateY" 
		"RefRN.placeHolderList[2856]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateZ" 
		"RefRN.placeHolderList[2857]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.rotateOrder" 
		"RefRN.placeHolderList[2858]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.jointOrient" 
		"RefRN.placeHolderList[2859]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2860]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateX" 
		"RefRN.placeHolderList[2861]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateY" 
		"RefRN.placeHolderList[2862]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.translateZ" 
		"RefRN.placeHolderList[2863]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivot" 
		"RefRN.placeHolderList[2864]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2865]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateX" 
		"RefRN.placeHolderList[2866]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateY" 
		"RefRN.placeHolderList[2867]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateZ" 
		"RefRN.placeHolderList[2868]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.rotateOrder" 
		"RefRN.placeHolderList[2869]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.jointOrient" 
		"RefRN.placeHolderList[2870]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_middle_0_L|Ref:bip_middle_1_L|Ref:bip_middle_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2871]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateX" 
		"RefRN.placeHolderList[2872]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateY" 
		"RefRN.placeHolderList[2873]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.translateZ" 
		"RefRN.placeHolderList[2874]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivot" 
		"RefRN.placeHolderList[2875]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2876]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateX" 
		"RefRN.placeHolderList[2877]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateY" 
		"RefRN.placeHolderList[2878]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateZ" 
		"RefRN.placeHolderList[2879]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.rotateOrder" 
		"RefRN.placeHolderList[2880]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.jointOrient" 
		"RefRN.placeHolderList[2881]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2882]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateX" 
		"RefRN.placeHolderList[2883]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateY" 
		"RefRN.placeHolderList[2884]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.translateZ" 
		"RefRN.placeHolderList[2885]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivot" 
		"RefRN.placeHolderList[2886]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2887]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateX" 
		"RefRN.placeHolderList[2888]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateY" 
		"RefRN.placeHolderList[2889]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateZ" 
		"RefRN.placeHolderList[2890]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.rotateOrder" 
		"RefRN.placeHolderList[2891]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.jointOrient" 
		"RefRN.placeHolderList[2892]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2893]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateX" 
		"RefRN.placeHolderList[2894]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateY" 
		"RefRN.placeHolderList[2895]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.translateZ" 
		"RefRN.placeHolderList[2896]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivot" 
		"RefRN.placeHolderList[2897]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2898]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateX" 
		"RefRN.placeHolderList[2899]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateY" 
		"RefRN.placeHolderList[2900]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateZ" 
		"RefRN.placeHolderList[2901]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.rotateOrder" 
		"RefRN.placeHolderList[2902]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.jointOrient" 
		"RefRN.placeHolderList[2903]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_ring_0_L|Ref:bip_ring_1_L|Ref:bip_ring_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2904]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateX" 
		"RefRN.placeHolderList[2905]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateY" 
		"RefRN.placeHolderList[2906]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.translateZ" 
		"RefRN.placeHolderList[2907]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivot" 
		"RefRN.placeHolderList[2908]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2909]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateX" 
		"RefRN.placeHolderList[2910]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateY" 
		"RefRN.placeHolderList[2911]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateZ" 
		"RefRN.placeHolderList[2912]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.rotateOrder" 
		"RefRN.placeHolderList[2913]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.jointOrient" 
		"RefRN.placeHolderList[2914]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2915]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateX" 
		"RefRN.placeHolderList[2916]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateY" 
		"RefRN.placeHolderList[2917]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.translateZ" 
		"RefRN.placeHolderList[2918]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivot" 
		"RefRN.placeHolderList[2919]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2920]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateX" 
		"RefRN.placeHolderList[2921]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateY" 
		"RefRN.placeHolderList[2922]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateZ" 
		"RefRN.placeHolderList[2923]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.rotateOrder" 
		"RefRN.placeHolderList[2924]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.jointOrient" 
		"RefRN.placeHolderList[2925]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2926]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateX" 
		"RefRN.placeHolderList[2927]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateY" 
		"RefRN.placeHolderList[2928]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.translateZ" 
		"RefRN.placeHolderList[2929]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivot" 
		"RefRN.placeHolderList[2930]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[2931]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateX" 
		"RefRN.placeHolderList[2932]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateY" 
		"RefRN.placeHolderList[2933]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateZ" 
		"RefRN.placeHolderList[2934]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.rotateOrder" 
		"RefRN.placeHolderList[2935]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.jointOrient" 
		"RefRN.placeHolderList[2936]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_L|Ref:bip_upperArm_L|Ref:bip_lowerArm_L|Ref:bip_hand_L|Ref:bip_pinky_0_L|Ref:bip_pinky_1_L|Ref:bip_pinky_2_L.parentInverseMatrix" 
		"RefRN.placeHolderList[2937]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.translate" 
		"RefRN.placeHolderList[2938]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivot" 
		"RefRN.placeHolderList[2939]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2940]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateX" 
		"RefRN.placeHolderList[2941]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateY" 
		"RefRN.placeHolderList[2942]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateZ" 
		"RefRN.placeHolderList[2943]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.rotateOrder" 
		"RefRN.placeHolderList[2944]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentMatrix" 
		"RefRN.placeHolderList[2945]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.jointOrient" 
		"RefRN.placeHolderList[2946]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2947]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.message" 
		"RefRN.placeHolderList[2948]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[2949]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.translate" 
		"RefRN.placeHolderList[2950]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[2951]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivot" 
		"RefRN.placeHolderList[2952]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2953]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2954]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[2955]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentMatrix" 
		"RefRN.placeHolderList[2956]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateY" 
		"RefRN.placeHolderList[2957]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateX" 
		"RefRN.placeHolderList[2958]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateZ" 
		"RefRN.placeHolderList[2959]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.rotateOrder" 
		"RefRN.placeHolderList[2960]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.jointOrient" 
		"RefRN.placeHolderList[2961]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2962]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.message" 
		"RefRN.placeHolderList[2963]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentMatrix" 
		"RefRN.placeHolderList[2964]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotate" 
		"RefRN.placeHolderList[2965]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateX" 
		"RefRN.placeHolderList[2966]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateY" 
		"RefRN.placeHolderList[2967]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateZ" 
		"RefRN.placeHolderList[2968]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[2969]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.rotateOrder" 
		"RefRN.placeHolderList[2970]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[2971]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.jointOrient" 
		"RefRN.placeHolderList[2972]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2973]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentMatrix" 
		"RefRN.placeHolderList[2974]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.message" 
		"RefRN.placeHolderList[2975]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.translate" 
		"RefRN.placeHolderList[2976]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivot" 
		"RefRN.placeHolderList[2977]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2978]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateX" 
		"RefRN.placeHolderList[2979]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateY" 
		"RefRN.placeHolderList[2980]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateZ" 
		"RefRN.placeHolderList[2981]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.rotateOrder" 
		"RefRN.placeHolderList[2982]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.jointOrient" 
		"RefRN.placeHolderList[2983]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2984]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateX" 
		"RefRN.placeHolderList[2985]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateY" 
		"RefRN.placeHolderList[2986]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.translateZ" 
		"RefRN.placeHolderList[2987]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivot" 
		"RefRN.placeHolderList[2988]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[2989]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateX" 
		"RefRN.placeHolderList[2990]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateY" 
		"RefRN.placeHolderList[2991]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateZ" 
		"RefRN.placeHolderList[2992]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.rotateOrder" 
		"RefRN.placeHolderList[2993]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.jointOrient" 
		"RefRN.placeHolderList[2994]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[2995]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateX" 
		"RefRN.placeHolderList[2996]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateY" 
		"RefRN.placeHolderList[2997]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.translateZ" 
		"RefRN.placeHolderList[2998]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivot" 
		"RefRN.placeHolderList[2999]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3000]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateX" 
		"RefRN.placeHolderList[3001]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateY" 
		"RefRN.placeHolderList[3002]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateZ" 
		"RefRN.placeHolderList[3003]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.rotateOrder" 
		"RefRN.placeHolderList[3004]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.jointOrient" 
		"RefRN.placeHolderList[3005]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3006]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateX" 
		"RefRN.placeHolderList[3007]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateY" 
		"RefRN.placeHolderList[3008]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.translateZ" 
		"RefRN.placeHolderList[3009]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivot" 
		"RefRN.placeHolderList[3010]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3011]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateX" 
		"RefRN.placeHolderList[3012]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateY" 
		"RefRN.placeHolderList[3013]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateZ" 
		"RefRN.placeHolderList[3014]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.rotateOrder" 
		"RefRN.placeHolderList[3015]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.jointOrient" 
		"RefRN.placeHolderList[3016]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_thumb_0_R|Ref:bip_thumb_1_R|Ref:bip_thumb_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3017]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateX" 
		"RefRN.placeHolderList[3018]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateY" 
		"RefRN.placeHolderList[3019]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.translateZ" 
		"RefRN.placeHolderList[3020]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivot" 
		"RefRN.placeHolderList[3021]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3022]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateX" 
		"RefRN.placeHolderList[3023]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateY" 
		"RefRN.placeHolderList[3024]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateZ" 
		"RefRN.placeHolderList[3025]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.rotateOrder" 
		"RefRN.placeHolderList[3026]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.jointOrient" 
		"RefRN.placeHolderList[3027]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3028]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateX" 
		"RefRN.placeHolderList[3029]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateY" 
		"RefRN.placeHolderList[3030]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.translateZ" 
		"RefRN.placeHolderList[3031]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivot" 
		"RefRN.placeHolderList[3032]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3033]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateX" 
		"RefRN.placeHolderList[3034]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateY" 
		"RefRN.placeHolderList[3035]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateZ" 
		"RefRN.placeHolderList[3036]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.rotateOrder" 
		"RefRN.placeHolderList[3037]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.jointOrient" 
		"RefRN.placeHolderList[3038]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3039]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateX" 
		"RefRN.placeHolderList[3040]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateY" 
		"RefRN.placeHolderList[3041]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.translateZ" 
		"RefRN.placeHolderList[3042]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivot" 
		"RefRN.placeHolderList[3043]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3044]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateX" 
		"RefRN.placeHolderList[3045]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateY" 
		"RefRN.placeHolderList[3046]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateZ" 
		"RefRN.placeHolderList[3047]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.rotateOrder" 
		"RefRN.placeHolderList[3048]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.jointOrient" 
		"RefRN.placeHolderList[3049]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_index_0_R|Ref:bip_index_1_R|Ref:bip_index_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3050]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateX" 
		"RefRN.placeHolderList[3051]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateY" 
		"RefRN.placeHolderList[3052]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.translateZ" 
		"RefRN.placeHolderList[3053]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivot" 
		"RefRN.placeHolderList[3054]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3055]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateX" 
		"RefRN.placeHolderList[3056]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateY" 
		"RefRN.placeHolderList[3057]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateZ" 
		"RefRN.placeHolderList[3058]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.rotateOrder" 
		"RefRN.placeHolderList[3059]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.jointOrient" 
		"RefRN.placeHolderList[3060]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3061]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateX" 
		"RefRN.placeHolderList[3062]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateY" 
		"RefRN.placeHolderList[3063]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.translateZ" 
		"RefRN.placeHolderList[3064]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivot" 
		"RefRN.placeHolderList[3065]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3066]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateX" 
		"RefRN.placeHolderList[3067]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateY" 
		"RefRN.placeHolderList[3068]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateZ" 
		"RefRN.placeHolderList[3069]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.rotateOrder" 
		"RefRN.placeHolderList[3070]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.jointOrient" 
		"RefRN.placeHolderList[3071]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3072]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateX" 
		"RefRN.placeHolderList[3073]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateY" 
		"RefRN.placeHolderList[3074]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.translateZ" 
		"RefRN.placeHolderList[3075]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivot" 
		"RefRN.placeHolderList[3076]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3077]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateX" 
		"RefRN.placeHolderList[3078]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateY" 
		"RefRN.placeHolderList[3079]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateZ" 
		"RefRN.placeHolderList[3080]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.rotateOrder" 
		"RefRN.placeHolderList[3081]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.jointOrient" 
		"RefRN.placeHolderList[3082]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_middle_0_R|Ref:bip_middle_1_R|Ref:bip_middle_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3083]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateX" 
		"RefRN.placeHolderList[3084]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateY" 
		"RefRN.placeHolderList[3085]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.translateZ" 
		"RefRN.placeHolderList[3086]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivot" 
		"RefRN.placeHolderList[3087]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3088]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateX" 
		"RefRN.placeHolderList[3089]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateY" 
		"RefRN.placeHolderList[3090]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateZ" 
		"RefRN.placeHolderList[3091]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.rotateOrder" 
		"RefRN.placeHolderList[3092]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.jointOrient" 
		"RefRN.placeHolderList[3093]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3094]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateX" 
		"RefRN.placeHolderList[3095]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateY" 
		"RefRN.placeHolderList[3096]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.translateZ" 
		"RefRN.placeHolderList[3097]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivot" 
		"RefRN.placeHolderList[3098]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3099]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateX" 
		"RefRN.placeHolderList[3100]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateY" 
		"RefRN.placeHolderList[3101]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateZ" 
		"RefRN.placeHolderList[3102]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.rotateOrder" 
		"RefRN.placeHolderList[3103]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.jointOrient" 
		"RefRN.placeHolderList[3104]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3105]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateX" 
		"RefRN.placeHolderList[3106]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateY" 
		"RefRN.placeHolderList[3107]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.translateZ" 
		"RefRN.placeHolderList[3108]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivot" 
		"RefRN.placeHolderList[3109]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3110]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateX" 
		"RefRN.placeHolderList[3111]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateY" 
		"RefRN.placeHolderList[3112]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateZ" 
		"RefRN.placeHolderList[3113]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.rotateOrder" 
		"RefRN.placeHolderList[3114]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.jointOrient" 
		"RefRN.placeHolderList[3115]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_ring_0_R|Ref:bip_ring_1_R|Ref:bip_ring_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3116]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateX" 
		"RefRN.placeHolderList[3117]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateY" 
		"RefRN.placeHolderList[3118]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.translateZ" 
		"RefRN.placeHolderList[3119]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivot" 
		"RefRN.placeHolderList[3120]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3121]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateX" 
		"RefRN.placeHolderList[3122]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateY" 
		"RefRN.placeHolderList[3123]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateZ" 
		"RefRN.placeHolderList[3124]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.rotateOrder" 
		"RefRN.placeHolderList[3125]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.jointOrient" 
		"RefRN.placeHolderList[3126]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3127]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateX" 
		"RefRN.placeHolderList[3128]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateY" 
		"RefRN.placeHolderList[3129]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.translateZ" 
		"RefRN.placeHolderList[3130]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivot" 
		"RefRN.placeHolderList[3131]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3132]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateX" 
		"RefRN.placeHolderList[3133]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateY" 
		"RefRN.placeHolderList[3134]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateZ" 
		"RefRN.placeHolderList[3135]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.rotateOrder" 
		"RefRN.placeHolderList[3136]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.jointOrient" 
		"RefRN.placeHolderList[3137]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3138]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateX" 
		"RefRN.placeHolderList[3139]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateY" 
		"RefRN.placeHolderList[3140]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.translateZ" 
		"RefRN.placeHolderList[3141]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivot" 
		"RefRN.placeHolderList[3142]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3143]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateX" 
		"RefRN.placeHolderList[3144]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateY" 
		"RefRN.placeHolderList[3145]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateZ" 
		"RefRN.placeHolderList[3146]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.rotateOrder" 
		"RefRN.placeHolderList[3147]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.jointOrient" 
		"RefRN.placeHolderList[3148]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_collar_R|Ref:bip_upperArm_R|Ref:bip_lowerArm_R|Ref:bip_hand_R|Ref:bip_pinky_0_R|Ref:bip_pinky_1_R|Ref:bip_pinky_2_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3149]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_grenade_2_R_0.instObjGroups" 
		"RefRN.placeHolderList[3150]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_grenade_2_R_0.instObjGroups" 
		"RefRN.placeHolderList[3151]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_grenade_2_R_0.instObjGroups" 
		"RefRN.placeHolderList[3152]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_jacketcollar_0_R.instObjGroups" 
		"RefRN.placeHolderList[3153]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_jacketcollar_0_L.instObjGroups" 
		"RefRN.placeHolderList[3154]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_grenade_2_L_0.instObjGroups" 
		"RefRN.placeHolderList[3155]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_grenade_2_L_0.instObjGroups" 
		"RefRN.placeHolderList[3156]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_grenade_2_L_0.instObjGroups" 
		"RefRN.placeHolderList[3157]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_spine_3|Ref:bip_jacketcollar_0_B.instObjGroups" 
		"RefRN.placeHolderList[3158]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_R_0.instObjGroups" 
		"RefRN.placeHolderList[3159]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_R_0.instObjGroups" 
		"RefRN.placeHolderList[3160]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_R_0.instObjGroups" 
		"RefRN.placeHolderList[3161]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_L_0.instObjGroups" 
		"RefRN.placeHolderList[3162]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_L_0.instObjGroups" 
		"RefRN.placeHolderList[3163]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_spine_2|Ref:bip_grenade_1_L_0.instObjGroups" 
		"RefRN.placeHolderList[3164]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_grenade_0_R_0.instObjGroups" 
		"RefRN.placeHolderList[3165]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_grenade_0_R_0.instObjGroups" 
		"RefRN.placeHolderList[3166]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_grenade_0_R_0.instObjGroups" 
		"RefRN.placeHolderList[3167]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_grenade_0_L_0.instObjGroups" 
		"RefRN.placeHolderList[3168]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_grenade_0_L_0.instObjGroups" 
		"RefRN.placeHolderList[3169]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_spine_1|Ref:bip_grenade_0_L_0.instObjGroups" 
		"RefRN.placeHolderList[3170]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_stomachpouch_0.instObjGroups" 
		"RefRN.placeHolderList[3171]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_spine_0|Ref:bip_stomachpouch_0.instObjGroups" 
		"RefRN.placeHolderList[3172]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.message" 
		"RefRN.placeHolderList[3173]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[3174]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.translate" 
		"RefRN.placeHolderList[3175]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[3176]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivot" 
		"RefRN.placeHolderList[3177]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[3178]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotatePivotTranslate" 
		"RefRN.placeHolderList[3179]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateX" 
		"RefRN.placeHolderList[3180]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateY" 
		"RefRN.placeHolderList[3181]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateZ" 
		"RefRN.placeHolderList[3182]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.rotateOrder" 
		"RefRN.placeHolderList[3183]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[3184]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentMatrix" 
		"RefRN.placeHolderList[3185]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.jointOrient" 
		"RefRN.placeHolderList[3186]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L.parentInverseMatrix" 
		"RefRN.placeHolderList[3187]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.message" 
		"RefRN.placeHolderList[3188]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateX" 
		"RefRN.placeHolderList[3189]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateY" 
		"RefRN.placeHolderList[3190]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateZ" 
		"RefRN.placeHolderList[3191]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.rotateOrder" 
		"RefRN.placeHolderList[3192]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.jointOrient" 
		"RefRN.placeHolderList[3193]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L.parentInverseMatrix" 
		"RefRN.placeHolderList[3194]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.message" 
		"RefRN.placeHolderList[3195]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateX" 
		"RefRN.placeHolderList[3196]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateY" 
		"RefRN.placeHolderList[3197]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateZ" 
		"RefRN.placeHolderList[3198]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.rotateOrder" 
		"RefRN.placeHolderList[3199]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.jointOrient" 
		"RefRN.placeHolderList[3200]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L.parentInverseMatrix" 
		"RefRN.placeHolderList[3201]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateX" 
		"RefRN.placeHolderList[3202]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateY" 
		"RefRN.placeHolderList[3203]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateZ" 
		"RefRN.placeHolderList[3204]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.rotateOrder" 
		"RefRN.placeHolderList[3205]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.jointOrient" 
		"RefRN.placeHolderList[3206]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_L|Ref:bip_knee_L|Ref:bip_foot_L|Ref:bip_toe_L.parentInverseMatrix" 
		"RefRN.placeHolderList[3207]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.message" 
		"RefRN.placeHolderList[3208]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[3209]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.translate" 
		"RefRN.placeHolderList[3210]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[3211]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivot" 
		"RefRN.placeHolderList[3212]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3213]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotatePivotTranslate" 
		"RefRN.placeHolderList[3214]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateX" 
		"RefRN.placeHolderList[3215]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateY" 
		"RefRN.placeHolderList[3216]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateZ" 
		"RefRN.placeHolderList[3217]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.rotateOrder" 
		"RefRN.placeHolderList[3218]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[3219]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentMatrix" 
		"RefRN.placeHolderList[3220]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.jointOrient" 
		"RefRN.placeHolderList[3221]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3222]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.message" 
		"RefRN.placeHolderList[3223]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateX" 
		"RefRN.placeHolderList[3224]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateY" 
		"RefRN.placeHolderList[3225]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateZ" 
		"RefRN.placeHolderList[3226]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.rotateOrder" 
		"RefRN.placeHolderList[3227]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.jointOrient" 
		"RefRN.placeHolderList[3228]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3229]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.message" 
		"RefRN.placeHolderList[3230]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateX" 
		"RefRN.placeHolderList[3231]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateY" 
		"RefRN.placeHolderList[3232]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateZ" 
		"RefRN.placeHolderList[3233]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.rotateOrder" 
		"RefRN.placeHolderList[3234]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.jointOrient" 
		"RefRN.placeHolderList[3235]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3236]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateX" 
		"RefRN.placeHolderList[3237]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateY" 
		"RefRN.placeHolderList[3238]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateZ" 
		"RefRN.placeHolderList[3239]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.rotateOrder" 
		"RefRN.placeHolderList[3240]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.jointOrient" 
		"RefRN.placeHolderList[3241]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hip_R|Ref:bip_knee_R|Ref:bip_foot_R|Ref:bip_toe_R.parentInverseMatrix" 
		"RefRN.placeHolderList[3242]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.instObjGroups" 
		"RefRN.placeHolderList[3243]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.translateX" 
		"RefRN.placeHolderList[3244]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.translateY" 
		"RefRN.placeHolderList[3245]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.translateZ" 
		"RefRN.placeHolderList[3246]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.rotateX" 
		"RefRN.placeHolderList[3247]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.rotateY" 
		"RefRN.placeHolderList[3248]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.rotateZ" 
		"RefRN.placeHolderList[3249]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.rotateOrder" 
		"RefRN.placeHolderList[3250]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.parentInverseMatrix" 
		"RefRN.placeHolderList[3251]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.rotatePivot" 
		"RefRN.placeHolderList[3252]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.rotatePivotTranslate" 
		"RefRN.placeHolderList[3253]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_crotchflap_0.jointOrient" 
		"RefRN.placeHolderList[3254]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hippouch_0.instObjGroups" 
		"RefRN.placeHolderList[3255]" ""
		5 3 "RefRN" "|Ref:demoInfo_group|Ref:bip_pelvis|Ref:bip_hippouch_0.instObjGroups" 
		"RefRN.placeHolderList[3256]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:game_left_hand|Ref:game_left_handShape.instObjGroups.objectGroups[29].objectGroupId" 
		"RefRN.placeHolderList[3257]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:game_left_hand|Ref:game_left_handShape.inMesh" 
		"RefRN.placeHolderList[3258]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:game_right_hand|Ref:game_right_handShape.instObjGroups.objectGroups[7].objectGroupId" 
		"RefRN.placeHolderList[3259]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:game_right_hand|Ref:game_right_handShape.inMesh" 
		"RefRN.placeHolderList[3260]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:demoman_mesh|Ref:demoman_meshShape.instObjGroups.objectGroups[30].objectGroupId" 
		"RefRN.placeHolderList[3261]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:demoman_mesh|Ref:demoman_meshShape.instObjGroups.objectGroups[31].objectGroupId" 
		"RefRN.placeHolderList[3262]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:demoman_mesh|Ref:demoman_meshShape.inMesh" 
		"RefRN.placeHolderList[3263]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[47].objectGroupId" 
		"RefRN.placeHolderList[3264]" ""
		5 0 "RefRN" "Ref:head_eyepatch_demoman_headSG.memberWireframeColor" 
		"|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[47].objectGrpColor" 
		"RefRN.placeHolderList[3265]" "RefRN.placeHolderList[3266]" "Ref:head_zero_meshShape.iog.og[43].gco"
		
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[48].objectGroupId" 
		"RefRN.placeHolderList[3267]" ""
		5 0 "RefRN" "Ref:lambert2SG.memberWireframeColor" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[48].objectGrpColor" 
		"RefRN.placeHolderList[3268]" "RefRN.placeHolderList[3269]" "Ref:head_zero_meshShape.iog.og[44].gco"
		
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.inMesh" 
		"RefRN.placeHolderList[3270]" ""
		5 4 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.compInstObjGroups.compObjectGroups[0].compObjectGroupId" 
		"RefRN.placeHolderList[3271]" ""
		5 0 "RefRN" "Ref:skinCluster7.outputGeometry[0]" "|Ref:demoInfo_group|Ref:bodygroups|Ref:grenade_mesh|Ref:grenade_meshShape.inMesh" 
		"RefRN.placeHolderList[3272]" "RefRN.placeHolderList[3273]" "Ref:grenade_meshShape.i"
		
		5 0 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.instObjGroups.objectGroups[47]" 
		"Ref:head_eyepatch_demoman_headSG.dagSetMembers" "RefRN.placeHolderList[3274]" "RefRN.placeHolderList[3275]" 
		""
		5 0 "RefRN" "|Ref:demoInfo_group|Ref:meshes|Ref:head_zero_mesh|Ref:head_zero_meshShape.compInstObjGroups.compObjectGroups[0]" 
		"Ref:head_eyepatch_demoman_headSG.dagSetMembers" "RefRN.placeHolderList[3276]" "RefRN.placeHolderList[3277]" 
		""
		5 4 "RefRN" "Ref:head_eyepatch_demoman_headSG.groupNodes" "RefRN.placeHolderList[3278]" 
		""
		5 4 "RefRN" "Ref:head_eyepatch_demoman_headSG.groupNodes" "RefRN.placeHolderList[3279]" 
		""
		5 3 "RefRN" "Ref:skinCluster1.outputGeometry[0]" "RefRN.placeHolderList[3280]" 
		"Ref:game_left_handShape.i"
		5 3 "RefRN" "Ref:skinCluster2.outputGeometry[0]" "RefRN.placeHolderList[3281]" 
		"Ref:game_right_handShape.i"
		5 1 "RefRN" "Ref:skinCluster3.outputGeometry[0]" "RefRN.placeHolderList[3282]" 
		"Ref:demoman_meshShape.i"
		5 3 "RefRN" "Ref:skinCluster3.outputGeometry[0]" "RefRN.placeHolderList[3283]" 
		"Ref:demoman_meshShape.i"
		5 1 "RefRN" "Ref:skinCluster4.outputGeometry[0]" "RefRN.placeHolderList[3284]" 
		"Ref:head_zero_meshShape.i"
		5 3 "RefRN" "Ref:skinCluster4.outputGeometry[0]" "RefRN.placeHolderList[3285]" 
		"Ref:head_zero_meshShape.i";
lockNode -l 1 ;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode objectSet -n "plotted";
	addAttr -ci true -sn "plotted" -ln "plotted" -at "message";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 51 ".dsm";
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
	setAttr ".txf" -type "matrix" 1 0 0 0 0 -0.87891076230790932 -0.47698623868968154 0
		 0 0.47698623868968154 -0.87891076230790932 0 0 69.744780526694669 -2.9593811329371715 1;
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
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/18.01125797";
createNode expression -n "stretchyBack1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/18.01125797";
createNode expression -n "stretchyBack2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/18.01125797";
createNode expression -n "stretchyBack3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]/18.01125797";
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
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode objectSet -n "hand_R";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 16 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode objectSet -n "hand_L";
	addAttr -ci true -h true -sn "zooSetMenuHidden" -ln "zooSetMenuHidden" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 16 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:1943]" "f[1966:2290]";
	setAttr ".irc" -type "componentList" 1 "f[1944:1965]";
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1944:1965]";
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[39:114]" "f[471:548]" "f[550:551]" "f[558]" "f[562]" "f[567]" "f[570]" "f[573]" "f[581]" "f[738:745]" "f[998:1005]";
	setAttr ".irc" -type "componentList" 13 "f[115:138]" "f[707:724]" "f[749:808]" "f[810:811]" "f[818]" "f[822]" "f[827]" "f[830]" "f[833]" "f[841]" "f[916]" "f[926]" "f[928]";
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 25 "f[35:36]" "f[115:261]" "f[323:326]" "f[328]" "f[330]" "f[333]" "f[339:361]" "f[366:373]" "f[549]" "f[552:557]" "f[559:561]" "f[563:566]" "f[568:569]" "f[571:572]" "f[574:580]" "f[582:662]" "f[664]" "f[666]" "f[668:718]" "f[725:732]" "f[746:831]" "f[844:847]" "f[849:853]" "f[855:997]" "f[1006:1091]";
	setAttr ".irc" -type "componentList" 16 "f[59:62]" "f[97]" "f[99:103]" "f[113:114]" "f[262:285]" "f[327]" "f[329]" "f[332]" "f[335]" "f[453:467]" "f[469:503]" "f[514:535]" "f[545:546]" "f[832]" "f[834:840]" "f[842:843]";
createNode objectSet -n "Demo";
	addAttr -ci true -sn "version" -ln "version" -at "long";
	addAttr -ci true -sn "name" -ln "name" -dt "string";
	addAttr -ci true -sn "bgImage" -ln "bgImage" -dt "string";
	addAttr -ci true -sn "bgColour" -ln "bgColour" -dt "string";
	addAttr -ci true -sn "filepath" -ln "filepath" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 93 ".dnsm";
	setAttr ".an" -type "string" "zooPickerCharacter";
	setAttr ".name" -type "string" "Demo";
	setAttr ".bgImage" -type "string" "pickerGrid.bmp";
	setAttr ".bgColour" -type "string" "0,0,0";
lockNode -l 1 ;
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
	setAttr ".posSize" -type "string" "118,213;14,14";
	setAttr ".colour" -type "string" "1.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "118,194;14,14";
	setAttr ".colour" -type "string" "1.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "118,175;14,14";
	setAttr ".colour" -type "string" "1.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "118,156;14,14";
	setAttr ".colour" -type "string" "1.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "118,137;14,14";
	setAttr ".colour" -type "string" "1.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "106,251;40,14";
	setAttr ".colour" -type "string" "1.0,0.0,1.0";
	setAttr ".label" -type "string" "COG";
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
	setAttr ".posSize" -type "string" "120,119;10,10";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
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
	setAttr ".posSize" -type "string" "117,99;16,16";
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
	setAttr ".posSize" -type "string" "106,232;39,14";
	setAttr ".colour" -type "string" "1.0,0.408999979496,1.0";
	setAttr ".label" -type "string" "hips";
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
	setAttr ".posSize" -type "string" "78,134;25,14";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "143,134;25,14";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "47,189;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "ik";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "ik1";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "190,189;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "ik";
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
	setAttr ".posSize" -type "string" "70,225;16,16";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "163,225;16,16";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "71,152;14,22";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "164,153;14,22";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "71,181;14,22";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "164,181;14,22";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "73,209;10,10";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "166,209;10,10";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "82,256;12,12";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "82,273;12,12";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "82,290;12,12";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "82,307;12,12";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "62,248;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "62,267;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "62,286;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "62,305;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "43,248;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "43,267;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "43,286;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "43,305;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "24,249;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "24,268;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "24,287;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "24,306;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "6,251;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "6,270;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "6,289;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr ".posSize" -type "string" "6,308;14,14";
	setAttr ".colour" -type "string" "0.430999994278,0.430999994278,1.0";
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
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "35,226;14,14";
	setAttr ".colour" -type "string" "0.35900002718,0.35900002718,1.0";
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
	setAttr ".posSize" -type "string" "157,256;12,12";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "157,273;12,12";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "157,290;12,12";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "157,307;12,12";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "174,249;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "174,268;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "174,287;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "174,306;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "192,248;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr -s 3 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "211,249;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "211,268;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "211,287;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "211,306;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "192,267;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "192,286;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "192,305;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "229,251;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "229,270;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "229,289;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "229,308;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr -s 15 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "201,226;14,14";
	setAttr ".colour" -type "string" "1.0,0.257000029087,0.274956166744";
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
	setAttr ".posSize" -type "string" "32,157;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
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
	setAttr ".posSize" -type "string" "209,154;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
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
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "107,271;10,10";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "105,285;14,22";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "105,312;14,22";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "105,339;14,22";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr ".posSize" -type "string" "105,366;14,22";
	setAttr ".colour" -type "string" "0.0,0.0,1.0";
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
	setAttr -s 4 ".dsm";
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "134,270;10,10";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "133,285;14,22";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "133,312;14,22";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "133,339;14,22";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "133,366;14,22";
	setAttr ".colour" -type "string" "1.0,0.0,0.0";
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
	setAttr ".posSize" -type "string" "77,336;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
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
	setAttr ".posSize" -type "string" "164,339;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "ik3";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "76,377;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "ik";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "ik2";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "167,378;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "ik";
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
	setAttr ".posSize" -type "string" "56,379;14,14";
	setAttr ".colour" -type "string" "1.0,1.0,0.0";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker75";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "185,380;14,14";
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
	setAttr ".posSize" -type "string" "106,419;40,14";
	setAttr ".colour" -type "string" "0.0,1.0,0.0";
	setAttr ".label" -type "string" "MAIN";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker76";
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
	setAttr ".posSize" -type "string" "170,13;10,10";
	setAttr ".colour" -type "string" "1.0,0.583000004292,0.583000004292";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker77";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "170,43;10,10";
	setAttr ".colour" -type "string" "1.0,0.583000004292,0.583000004292";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker78";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "170,58;10,10";
	setAttr ".colour" -type "string" "1.0,0.583000004292,0.583000004292";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker79";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "170,28;10,10";
	setAttr ".colour" -type "string" "1.0,0.583000004292,0.583000004292";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker80";
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
	setAttr ".posSize" -type "string" "197,14;10,10";
	setAttr ".colour" -type "string" "1.0,0.467000007629,0.467000007629";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker81";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "197,43;10,10";
	setAttr ".colour" -type "string" "1.0,0.467000007629,0.467000007629";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker82";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "197,58;10,10";
	setAttr ".colour" -type "string" "1.0,0.467000007629,0.467000007629";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker83";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "197,29;10,10";
	setAttr ".colour" -type "string" "1.0,0.467000007629,0.467000007629";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker84";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "180,97;14,14";
	setAttr ".colour" -type "string" "1.0,0.394999980927,0.394999980927";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker85";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "180,80;14,14";
	setAttr ".colour" -type "string" "1.0,0.45300000906,0.45300000906";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode objectSet -n "picker86";
	addAttr -ci true -sn "posSize" -ln "posSize" -dt "string";
	addAttr -ci true -sn "colour" -ln "colour" -dt "string";
	addAttr -ci true -sn "label" -ln "label" -dt "string";
	addAttr -ci true -sn "cmdStr" -ln "cmdStr" -dt "string";
	addAttr -ci true -sn "cmdIsPython" -ln "cmdIsPython" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cmdMode" -ln "cmdMode" -min 0 -max 2 -en "selection first:cmd first:cmd only" 
		-at "enum";
	setAttr ".ihi" 0;
	setAttr ".an" -type "string" "zooPickerButton";
	setAttr ".posSize" -type "string" "155,85;14,14";
	setAttr ".colour" -type "string" "1.0,0.45300000906,0.45300000906";
	setAttr ".label" -type "string" "";
	setAttr ".cmdStr" -type "string" "";
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:165]";
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:165]";
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
	setAttr -s 7 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 69 ".dsm";
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
connectAttr "Ref:bip_pelvis_pointConstraint1.ctx" "RefRN.phl[2642]";
connectAttr "Ref:bip_pelvis_pointConstraint1.cty" "RefRN.phl[2643]";
connectAttr "Ref:bip_pelvis_pointConstraint1.ctz" "RefRN.phl[2644]";
connectAttr "RefRN.phl[2645]" "Ref:bip_pelvis_pointConstraint1.crp";
connectAttr "RefRN.phl[2646]" "Ref:bip_pelvis_pointConstraint1.crt";
connectAttr "RefRN.phl[2647]" "Ref:bip_pelvis_orientConstraint1.cpim";
connectAttr "RefRN.phl[2648]" "Ref:bip_pelvis_pointConstraint1.cpim";
connectAttr "Ref:bip_pelvis_orientConstraint1.crx" "RefRN.phl[2649]";
connectAttr "Ref:bip_pelvis_orientConstraint1.cry" "RefRN.phl[2650]";
connectAttr "Ref:bip_pelvis_orientConstraint1.crz" "RefRN.phl[2651]";
connectAttr "RefRN.phl[2652]" "Ref:bip_pelvis_orientConstraint1.cro";
connectAttr "RefRN.phl[2653]" "Ref:bip_pelvis_orientConstraint1.cjo";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctx" "RefRN.phl[2654]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cty" "RefRN.phl[2655]";
connectAttr "Ref:bip_spine_0_parentConstraint1.ctz" "RefRN.phl[2656]";
connectAttr "RefRN.phl[2657]" "Ref:bip_spine_0_parentConstraint1.crp";
connectAttr "RefRN.phl[2658]" "Ref:bip_spine_0_parentConstraint1.crt";
connectAttr "Ref:bip_spine_0_parentConstraint1.crx" "RefRN.phl[2659]";
connectAttr "Ref:bip_spine_0_parentConstraint1.cry" "RefRN.phl[2660]";
connectAttr "Ref:bip_spine_0_parentConstraint1.crz" "RefRN.phl[2661]";
connectAttr "RefRN.phl[2662]" "Ref:bip_spine_0_parentConstraint1.cro";
connectAttr "RefRN.phl[2663]" "Ref:bip_spine_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[2664]" "Ref:bip_spine_0_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctx" "RefRN.phl[2665]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cty" "RefRN.phl[2666]";
connectAttr "Ref:bip_spine_1_parentConstraint1.ctz" "RefRN.phl[2667]";
connectAttr "RefRN.phl[2668]" "Ref:bip_spine_1_parentConstraint1.crp";
connectAttr "RefRN.phl[2669]" "Ref:bip_spine_1_parentConstraint1.crt";
connectAttr "Ref:bip_spine_1_parentConstraint1.crx" "RefRN.phl[2670]";
connectAttr "Ref:bip_spine_1_parentConstraint1.cry" "RefRN.phl[2671]";
connectAttr "Ref:bip_spine_1_parentConstraint1.crz" "RefRN.phl[2672]";
connectAttr "RefRN.phl[2673]" "Ref:bip_spine_1_parentConstraint1.cro";
connectAttr "RefRN.phl[2674]" "Ref:bip_spine_1_parentConstraint1.cjo";
connectAttr "RefRN.phl[2675]" "Ref:bip_spine_1_parentConstraint1.cpim";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctx" "RefRN.phl[2676]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cty" "RefRN.phl[2677]";
connectAttr "Ref:bip_spine_2_parentConstraint1.ctz" "RefRN.phl[2678]";
connectAttr "RefRN.phl[2679]" "Ref:bip_spine_2_parentConstraint1.crp";
connectAttr "RefRN.phl[2680]" "Ref:bip_spine_2_parentConstraint1.crt";
connectAttr "Ref:bip_spine_2_parentConstraint1.crx" "RefRN.phl[2681]";
connectAttr "Ref:bip_spine_2_parentConstraint1.cry" "RefRN.phl[2682]";
connectAttr "Ref:bip_spine_2_parentConstraint1.crz" "RefRN.phl[2683]";
connectAttr "RefRN.phl[2684]" "Ref:bip_spine_2_parentConstraint1.cro";
connectAttr "RefRN.phl[2685]" "Ref:bip_spine_2_parentConstraint1.cjo";
connectAttr "RefRN.phl[2686]" "Ref:bip_spine_2_parentConstraint1.cpim";
connectAttr "RefRN.phl[2687]" "neckControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctx" "RefRN.phl[2688]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cty" "RefRN.phl[2689]";
connectAttr "Ref:bip_spine_3_parentConstraint1.ctz" "RefRN.phl[2690]";
connectAttr "RefRN.phl[2691]" "neckControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[2692]" "Ref:bip_spine_3_parentConstraint1.crp";
connectAttr "RefRN.phl[2693]" "neckControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "RefRN.phl[2694]" "Ref:bip_spine_3_parentConstraint1.crt";
connectAttr "Ref:bip_spine_3_parentConstraint1.crx" "RefRN.phl[2695]";
connectAttr "Ref:bip_spine_3_parentConstraint1.cry" "RefRN.phl[2696]";
connectAttr "Ref:bip_spine_3_parentConstraint1.crz" "RefRN.phl[2697]";
connectAttr "RefRN.phl[2698]" "Ref:bip_spine_3_parentConstraint1.cro";
connectAttr "RefRN.phl[2699]" "neckControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[2700]" "Ref:bip_spine_3_parentConstraint1.cjo";
connectAttr "RefRN.phl[2701]" "Ref:bip_spine_3_parentConstraint1.cpim";
connectAttr "RefRN.phl[2702]" "headControlLockParent_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2703]" "neckControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2704]" "headControlLockParent_pointConstraint1.tg[0].trp"
		;
connectAttr "RefRN.phl[2705]" "neckControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2706]" "headControlLockParent_pointConstraint1.tg[0].trt"
		;
connectAttr "RefRN.phl[2707]" "neckControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_neck_orientConstraint1.crx" "RefRN.phl[2708]";
connectAttr "Ref:bip_neck_orientConstraint1.cry" "RefRN.phl[2709]";
connectAttr "Ref:bip_neck_orientConstraint1.crz" "RefRN.phl[2710]";
connectAttr "RefRN.phl[2711]" "Ref:bip_neck_orientConstraint1.cro";
connectAttr "RefRN.phl[2712]" "headControlLockParent_pointConstraint1.tg[0].tpm"
		;
connectAttr "RefRN.phl[2713]" "neckControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2714]" "Ref:bip_neck_orientConstraint1.cjo";
connectAttr "RefRN.phl[2715]" "Ref:bip_neck_orientConstraint1.cpim";
connectAttr "RefRN.phl[2716]" "headControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2717]" "headControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2718]" "headControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_head_orientConstraint1.crx" "RefRN.phl[2719]";
connectAttr "Ref:bip_head_orientConstraint1.cry" "RefRN.phl[2720]";
connectAttr "Ref:bip_head_orientConstraint1.crz" "RefRN.phl[2721]";
connectAttr "RefRN.phl[2722]" "Ref:bip_head_orientConstraint1.cro";
connectAttr "RefRN.phl[2723]" "headControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2724]" "Ref:bip_head_orientConstraint1.cjo";
connectAttr "RefRN.phl[2725]" "Ref:bip_head_orientConstraint1.cpim";
connectAttr "RefRN.phl[2726]" "lShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2727]" "lShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2728]" "lShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_L_orientConstraint1.crx" "RefRN.phl[2729]";
connectAttr "Ref:bip_collar_L_orientConstraint1.cry" "RefRN.phl[2730]";
connectAttr "Ref:bip_collar_L_orientConstraint1.crz" "RefRN.phl[2731]";
connectAttr "RefRN.phl[2732]" "Ref:bip_collar_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2733]" "lShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2734]" "Ref:bip_collar_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2735]" "Ref:bip_collar_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2736]" "lElbowControl.zooTrig1";
connectAttr "RefRN.phl[2737]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2738]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2739]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2740]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2741]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2742]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2743]" "Ref:bip_upperArm_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2744]" "Ref:bip_upperArm_LIK_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.cry" "RefRN.phl[2745]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crx" "RefRN.phl[2746]";
connectAttr "Ref:bip_upperArm_L_orientConstraint1.crz" "RefRN.phl[2747]";
connectAttr "RefRN.phl[2748]" "Ref:bip_upperArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2749]" "Ref:bip_upperArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2750]" "Ref:bip_upperArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2751]" "lElbowControl.zooTrig2";
connectAttr "RefRN.phl[2752]" "likHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2753]" "likHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crx" "RefRN.phl[2754]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.cry" "RefRN.phl[2755]";
connectAttr "Ref:bip_lowerArm_L_orientConstraint1.crz" "RefRN.phl[2756]";
connectAttr "RefRN.phl[2757]" "likHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[2758]" "Ref:bip_lowerArm_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2759]" "likHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[2760]" "Ref:bip_lowerArm_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2761]" "Ref:bip_lowerArm_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[2762]" "lHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2763]" "lElbowControl.zooTrig3";
connectAttr "RefRN.phl[2764]" "lHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2765]" "lHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2766]" "lHandControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hand_L_orientConstraint1.crx" "RefRN.phl[2767]";
connectAttr "Ref:bip_hand_L_orientConstraint1.cry" "RefRN.phl[2768]";
connectAttr "Ref:bip_hand_L_orientConstraint1.crz" "RefRN.phl[2769]";
connectAttr "RefRN.phl[2770]" "Ref:bip_hand_L_orientConstraint1.cro";
connectAttr "RefRN.phl[2771]" "Ref:bip_hand_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[2772]" "Ref:bip_hand_L_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctx" "RefRN.phl[2773]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cty" "RefRN.phl[2774]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.ctz" "RefRN.phl[2775]";
connectAttr "RefRN.phl[2776]" "Ref:bip_thumb_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2777]" "Ref:bip_thumb_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crx" "RefRN.phl[2778]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.cry" "RefRN.phl[2779]";
connectAttr "Ref:bip_thumb_0_L_parentConstraint1.crz" "RefRN.phl[2780]";
connectAttr "RefRN.phl[2781]" "Ref:bip_thumb_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2782]" "Ref:bip_thumb_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2783]" "Ref:bip_thumb_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctx" "RefRN.phl[2784]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cty" "RefRN.phl[2785]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.ctz" "RefRN.phl[2786]";
connectAttr "RefRN.phl[2787]" "Ref:bip_thumb_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2788]" "Ref:bip_thumb_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crx" "RefRN.phl[2789]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.cry" "RefRN.phl[2790]";
connectAttr "Ref:bip_thumb_1_L_parentConstraint1.crz" "RefRN.phl[2791]";
connectAttr "RefRN.phl[2792]" "Ref:bip_thumb_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2793]" "Ref:bip_thumb_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2794]" "Ref:bip_thumb_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctx" "RefRN.phl[2795]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cty" "RefRN.phl[2796]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.ctz" "RefRN.phl[2797]";
connectAttr "RefRN.phl[2798]" "Ref:bip_thumb_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2799]" "Ref:bip_thumb_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crx" "RefRN.phl[2800]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.cry" "RefRN.phl[2801]";
connectAttr "Ref:bip_thumb_2_L_parentConstraint1.crz" "RefRN.phl[2802]";
connectAttr "RefRN.phl[2803]" "Ref:bip_thumb_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2804]" "Ref:bip_thumb_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2805]" "Ref:bip_thumb_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctx" "RefRN.phl[2806]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cty" "RefRN.phl[2807]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.ctz" "RefRN.phl[2808]";
connectAttr "RefRN.phl[2809]" "Ref:bip_index_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2810]" "Ref:bip_index_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crx" "RefRN.phl[2811]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.cry" "RefRN.phl[2812]";
connectAttr "Ref:bip_index_0_L_parentConstraint1.crz" "RefRN.phl[2813]";
connectAttr "RefRN.phl[2814]" "Ref:bip_index_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2815]" "Ref:bip_index_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2816]" "Ref:bip_index_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctx" "RefRN.phl[2817]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cty" "RefRN.phl[2818]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.ctz" "RefRN.phl[2819]";
connectAttr "RefRN.phl[2820]" "Ref:bip_index_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2821]" "Ref:bip_index_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crx" "RefRN.phl[2822]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.cry" "RefRN.phl[2823]";
connectAttr "Ref:bip_index_1_L_parentConstraint1.crz" "RefRN.phl[2824]";
connectAttr "RefRN.phl[2825]" "Ref:bip_index_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2826]" "Ref:bip_index_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2827]" "Ref:bip_index_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctx" "RefRN.phl[2828]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cty" "RefRN.phl[2829]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.ctz" "RefRN.phl[2830]";
connectAttr "RefRN.phl[2831]" "Ref:bip_index_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2832]" "Ref:bip_index_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crx" "RefRN.phl[2833]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.cry" "RefRN.phl[2834]";
connectAttr "Ref:bip_index_2_L_parentConstraint1.crz" "RefRN.phl[2835]";
connectAttr "RefRN.phl[2836]" "Ref:bip_index_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2837]" "Ref:bip_index_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2838]" "Ref:bip_index_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctx" "RefRN.phl[2839]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cty" "RefRN.phl[2840]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.ctz" "RefRN.phl[2841]";
connectAttr "RefRN.phl[2842]" "Ref:bip_middle_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2843]" "Ref:bip_middle_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crx" "RefRN.phl[2844]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.cry" "RefRN.phl[2845]";
connectAttr "Ref:bip_middle_0_L_parentConstraint1.crz" "RefRN.phl[2846]";
connectAttr "RefRN.phl[2847]" "Ref:bip_middle_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2848]" "Ref:bip_middle_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2849]" "Ref:bip_middle_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctx" "RefRN.phl[2850]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cty" "RefRN.phl[2851]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.ctz" "RefRN.phl[2852]";
connectAttr "RefRN.phl[2853]" "Ref:bip_middle_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2854]" "Ref:bip_middle_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crx" "RefRN.phl[2855]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.cry" "RefRN.phl[2856]";
connectAttr "Ref:bip_middle_1_L_parentConstraint1.crz" "RefRN.phl[2857]";
connectAttr "RefRN.phl[2858]" "Ref:bip_middle_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2859]" "Ref:bip_middle_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2860]" "Ref:bip_middle_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctx" "RefRN.phl[2861]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cty" "RefRN.phl[2862]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.ctz" "RefRN.phl[2863]";
connectAttr "RefRN.phl[2864]" "Ref:bip_middle_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2865]" "Ref:bip_middle_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crx" "RefRN.phl[2866]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.cry" "RefRN.phl[2867]";
connectAttr "Ref:bip_middle_2_L_parentConstraint1.crz" "RefRN.phl[2868]";
connectAttr "RefRN.phl[2869]" "Ref:bip_middle_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2870]" "Ref:bip_middle_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2871]" "Ref:bip_middle_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctx" "RefRN.phl[2872]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cty" "RefRN.phl[2873]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.ctz" "RefRN.phl[2874]";
connectAttr "RefRN.phl[2875]" "Ref:bip_ring_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2876]" "Ref:bip_ring_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crx" "RefRN.phl[2877]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.cry" "RefRN.phl[2878]";
connectAttr "Ref:bip_ring_0_L_parentConstraint1.crz" "RefRN.phl[2879]";
connectAttr "RefRN.phl[2880]" "Ref:bip_ring_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2881]" "Ref:bip_ring_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2882]" "Ref:bip_ring_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctx" "RefRN.phl[2883]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cty" "RefRN.phl[2884]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.ctz" "RefRN.phl[2885]";
connectAttr "RefRN.phl[2886]" "Ref:bip_ring_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2887]" "Ref:bip_ring_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crx" "RefRN.phl[2888]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.cry" "RefRN.phl[2889]";
connectAttr "Ref:bip_ring_1_L_parentConstraint1.crz" "RefRN.phl[2890]";
connectAttr "RefRN.phl[2891]" "Ref:bip_ring_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2892]" "Ref:bip_ring_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2893]" "Ref:bip_ring_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctx" "RefRN.phl[2894]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cty" "RefRN.phl[2895]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.ctz" "RefRN.phl[2896]";
connectAttr "RefRN.phl[2897]" "Ref:bip_ring_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2898]" "Ref:bip_ring_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crx" "RefRN.phl[2899]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.cry" "RefRN.phl[2900]";
connectAttr "Ref:bip_ring_2_L_parentConstraint1.crz" "RefRN.phl[2901]";
connectAttr "RefRN.phl[2902]" "Ref:bip_ring_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2903]" "Ref:bip_ring_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2904]" "Ref:bip_ring_2_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctx" "RefRN.phl[2905]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cty" "RefRN.phl[2906]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.ctz" "RefRN.phl[2907]";
connectAttr "RefRN.phl[2908]" "Ref:bip_pinky_0_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2909]" "Ref:bip_pinky_0_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crx" "RefRN.phl[2910]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.cry" "RefRN.phl[2911]";
connectAttr "Ref:bip_pinky_0_L_parentConstraint1.crz" "RefRN.phl[2912]";
connectAttr "RefRN.phl[2913]" "Ref:bip_pinky_0_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2914]" "Ref:bip_pinky_0_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2915]" "Ref:bip_pinky_0_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctx" "RefRN.phl[2916]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cty" "RefRN.phl[2917]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.ctz" "RefRN.phl[2918]";
connectAttr "RefRN.phl[2919]" "Ref:bip_pinky_1_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2920]" "Ref:bip_pinky_1_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crx" "RefRN.phl[2921]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.cry" "RefRN.phl[2922]";
connectAttr "Ref:bip_pinky_1_L_parentConstraint1.crz" "RefRN.phl[2923]";
connectAttr "RefRN.phl[2924]" "Ref:bip_pinky_1_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2925]" "Ref:bip_pinky_1_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2926]" "Ref:bip_pinky_1_L_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctx" "RefRN.phl[2927]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cty" "RefRN.phl[2928]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.ctz" "RefRN.phl[2929]";
connectAttr "RefRN.phl[2930]" "Ref:bip_pinky_2_L_parentConstraint1.crp";
connectAttr "RefRN.phl[2931]" "Ref:bip_pinky_2_L_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crx" "RefRN.phl[2932]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.cry" "RefRN.phl[2933]";
connectAttr "Ref:bip_pinky_2_L_parentConstraint1.crz" "RefRN.phl[2934]";
connectAttr "RefRN.phl[2935]" "Ref:bip_pinky_2_L_parentConstraint1.cro";
connectAttr "RefRN.phl[2936]" "Ref:bip_pinky_2_L_parentConstraint1.cjo";
connectAttr "RefRN.phl[2937]" "Ref:bip_pinky_2_L_parentConstraint1.cpim";
connectAttr "RefRN.phl[2938]" "rShoulderControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2939]" "rShoulderControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2940]" "rShoulderControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_collar_R_orientConstraint1.crx" "RefRN.phl[2941]";
connectAttr "Ref:bip_collar_R_orientConstraint1.cry" "RefRN.phl[2942]";
connectAttr "Ref:bip_collar_R_orientConstraint1.crz" "RefRN.phl[2943]";
connectAttr "RefRN.phl[2944]" "Ref:bip_collar_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2945]" "rShoulderControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2946]" "Ref:bip_collar_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2947]" "Ref:bip_collar_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[2948]" "rElbowControl.zooTrig1";
connectAttr "RefRN.phl[2949]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2950]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2951]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2952]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2953]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2954]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[2955]" "Ref:bip_upperArm_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2956]" "Ref:bip_upperArm_RIK_pointConstraint1.tg[0].tpm";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.cry" "RefRN.phl[2957]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crx" "RefRN.phl[2958]";
connectAttr "Ref:bip_upperArm_R_orientConstraint1.crz" "RefRN.phl[2959]";
connectAttr "RefRN.phl[2960]" "Ref:bip_upperArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2961]" "Ref:bip_upperArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2962]" "Ref:bip_upperArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[2963]" "rElbowControl.zooTrig2";
connectAttr "RefRN.phl[2964]" "rikHandControl_orientConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2965]" "rikHandControl_orientConstraint1.tg[0].tr";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crx" "RefRN.phl[2966]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.cry" "RefRN.phl[2967]";
connectAttr "Ref:bip_lowerArm_R_orientConstraint1.crz" "RefRN.phl[2968]";
connectAttr "RefRN.phl[2969]" "rikHandControl_orientConstraint1.tg[0].tro";
connectAttr "RefRN.phl[2970]" "Ref:bip_lowerArm_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2971]" "rikHandControl_orientConstraint1.tg[0].tjo";
connectAttr "RefRN.phl[2972]" "Ref:bip_lowerArm_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2973]" "Ref:bip_lowerArm_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[2974]" "rHandControl_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[2975]" "rElbowControl.zooTrig3";
connectAttr "RefRN.phl[2976]" "rHandControl_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[2977]" "rHandControl_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[2978]" "rHandControl_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hand_R_orientConstraint1.crx" "RefRN.phl[2979]";
connectAttr "Ref:bip_hand_R_orientConstraint1.cry" "RefRN.phl[2980]";
connectAttr "Ref:bip_hand_R_orientConstraint1.crz" "RefRN.phl[2981]";
connectAttr "RefRN.phl[2982]" "Ref:bip_hand_R_orientConstraint1.cro";
connectAttr "RefRN.phl[2983]" "Ref:bip_hand_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[2984]" "Ref:bip_hand_R_orientConstraint1.cpim";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctx" "RefRN.phl[2985]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cty" "RefRN.phl[2986]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.ctz" "RefRN.phl[2987]";
connectAttr "RefRN.phl[2988]" "Ref:bip_thumb_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[2989]" "Ref:bip_thumb_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crx" "RefRN.phl[2990]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.cry" "RefRN.phl[2991]";
connectAttr "Ref:bip_thumb_0_R_parentConstraint1.crz" "RefRN.phl[2992]";
connectAttr "RefRN.phl[2993]" "Ref:bip_thumb_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[2994]" "Ref:bip_thumb_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[2995]" "Ref:bip_thumb_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctx" "RefRN.phl[2996]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cty" "RefRN.phl[2997]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.ctz" "RefRN.phl[2998]";
connectAttr "RefRN.phl[2999]" "Ref:bip_thumb_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3000]" "Ref:bip_thumb_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crx" "RefRN.phl[3001]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.cry" "RefRN.phl[3002]";
connectAttr "Ref:bip_thumb_1_R_parentConstraint1.crz" "RefRN.phl[3003]";
connectAttr "RefRN.phl[3004]" "Ref:bip_thumb_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3005]" "Ref:bip_thumb_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3006]" "Ref:bip_thumb_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctx" "RefRN.phl[3007]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cty" "RefRN.phl[3008]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.ctz" "RefRN.phl[3009]";
connectAttr "RefRN.phl[3010]" "Ref:bip_thumb_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3011]" "Ref:bip_thumb_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crx" "RefRN.phl[3012]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.cry" "RefRN.phl[3013]";
connectAttr "Ref:bip_thumb_2_R_parentConstraint1.crz" "RefRN.phl[3014]";
connectAttr "RefRN.phl[3015]" "Ref:bip_thumb_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3016]" "Ref:bip_thumb_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3017]" "Ref:bip_thumb_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctx" "RefRN.phl[3018]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cty" "RefRN.phl[3019]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.ctz" "RefRN.phl[3020]";
connectAttr "RefRN.phl[3021]" "Ref:bip_index_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3022]" "Ref:bip_index_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crx" "RefRN.phl[3023]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.cry" "RefRN.phl[3024]";
connectAttr "Ref:bip_index_0_R_parentConstraint1.crz" "RefRN.phl[3025]";
connectAttr "RefRN.phl[3026]" "Ref:bip_index_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3027]" "Ref:bip_index_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3028]" "Ref:bip_index_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctx" "RefRN.phl[3029]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cty" "RefRN.phl[3030]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.ctz" "RefRN.phl[3031]";
connectAttr "RefRN.phl[3032]" "Ref:bip_index_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3033]" "Ref:bip_index_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crx" "RefRN.phl[3034]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.cry" "RefRN.phl[3035]";
connectAttr "Ref:bip_index_1_R_parentConstraint1.crz" "RefRN.phl[3036]";
connectAttr "RefRN.phl[3037]" "Ref:bip_index_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3038]" "Ref:bip_index_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3039]" "Ref:bip_index_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctx" "RefRN.phl[3040]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cty" "RefRN.phl[3041]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.ctz" "RefRN.phl[3042]";
connectAttr "RefRN.phl[3043]" "Ref:bip_index_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3044]" "Ref:bip_index_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crx" "RefRN.phl[3045]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.cry" "RefRN.phl[3046]";
connectAttr "Ref:bip_index_2_R_parentConstraint1.crz" "RefRN.phl[3047]";
connectAttr "RefRN.phl[3048]" "Ref:bip_index_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3049]" "Ref:bip_index_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3050]" "Ref:bip_index_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctx" "RefRN.phl[3051]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cty" "RefRN.phl[3052]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.ctz" "RefRN.phl[3053]";
connectAttr "RefRN.phl[3054]" "Ref:bip_middle_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3055]" "Ref:bip_middle_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crx" "RefRN.phl[3056]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.cry" "RefRN.phl[3057]";
connectAttr "Ref:bip_middle_0_R_parentConstraint1.crz" "RefRN.phl[3058]";
connectAttr "RefRN.phl[3059]" "Ref:bip_middle_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3060]" "Ref:bip_middle_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3061]" "Ref:bip_middle_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctx" "RefRN.phl[3062]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cty" "RefRN.phl[3063]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.ctz" "RefRN.phl[3064]";
connectAttr "RefRN.phl[3065]" "Ref:bip_middle_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3066]" "Ref:bip_middle_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crx" "RefRN.phl[3067]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.cry" "RefRN.phl[3068]";
connectAttr "Ref:bip_middle_1_R_parentConstraint1.crz" "RefRN.phl[3069]";
connectAttr "RefRN.phl[3070]" "Ref:bip_middle_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3071]" "Ref:bip_middle_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3072]" "Ref:bip_middle_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctx" "RefRN.phl[3073]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cty" "RefRN.phl[3074]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.ctz" "RefRN.phl[3075]";
connectAttr "RefRN.phl[3076]" "Ref:bip_middle_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3077]" "Ref:bip_middle_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crx" "RefRN.phl[3078]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.cry" "RefRN.phl[3079]";
connectAttr "Ref:bip_middle_2_R_parentConstraint1.crz" "RefRN.phl[3080]";
connectAttr "RefRN.phl[3081]" "Ref:bip_middle_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3082]" "Ref:bip_middle_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3083]" "Ref:bip_middle_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctx" "RefRN.phl[3084]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cty" "RefRN.phl[3085]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.ctz" "RefRN.phl[3086]";
connectAttr "RefRN.phl[3087]" "Ref:bip_ring_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3088]" "Ref:bip_ring_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crx" "RefRN.phl[3089]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.cry" "RefRN.phl[3090]";
connectAttr "Ref:bip_ring_0_R_parentConstraint1.crz" "RefRN.phl[3091]";
connectAttr "RefRN.phl[3092]" "Ref:bip_ring_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3093]" "Ref:bip_ring_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3094]" "Ref:bip_ring_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctx" "RefRN.phl[3095]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cty" "RefRN.phl[3096]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.ctz" "RefRN.phl[3097]";
connectAttr "RefRN.phl[3098]" "Ref:bip_ring_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3099]" "Ref:bip_ring_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crx" "RefRN.phl[3100]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.cry" "RefRN.phl[3101]";
connectAttr "Ref:bip_ring_1_R_parentConstraint1.crz" "RefRN.phl[3102]";
connectAttr "RefRN.phl[3103]" "Ref:bip_ring_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3104]" "Ref:bip_ring_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3105]" "Ref:bip_ring_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctx" "RefRN.phl[3106]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cty" "RefRN.phl[3107]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.ctz" "RefRN.phl[3108]";
connectAttr "RefRN.phl[3109]" "Ref:bip_ring_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3110]" "Ref:bip_ring_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crx" "RefRN.phl[3111]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.cry" "RefRN.phl[3112]";
connectAttr "Ref:bip_ring_2_R_parentConstraint1.crz" "RefRN.phl[3113]";
connectAttr "RefRN.phl[3114]" "Ref:bip_ring_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3115]" "Ref:bip_ring_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3116]" "Ref:bip_ring_2_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctx" "RefRN.phl[3117]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cty" "RefRN.phl[3118]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.ctz" "RefRN.phl[3119]";
connectAttr "RefRN.phl[3120]" "Ref:bip_pinky_0_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3121]" "Ref:bip_pinky_0_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crx" "RefRN.phl[3122]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.cry" "RefRN.phl[3123]";
connectAttr "Ref:bip_pinky_0_R_parentConstraint1.crz" "RefRN.phl[3124]";
connectAttr "RefRN.phl[3125]" "Ref:bip_pinky_0_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3126]" "Ref:bip_pinky_0_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3127]" "Ref:bip_pinky_0_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctx" "RefRN.phl[3128]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cty" "RefRN.phl[3129]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.ctz" "RefRN.phl[3130]";
connectAttr "RefRN.phl[3131]" "Ref:bip_pinky_1_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3132]" "Ref:bip_pinky_1_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crx" "RefRN.phl[3133]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.cry" "RefRN.phl[3134]";
connectAttr "Ref:bip_pinky_1_R_parentConstraint1.crz" "RefRN.phl[3135]";
connectAttr "RefRN.phl[3136]" "Ref:bip_pinky_1_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3137]" "Ref:bip_pinky_1_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3138]" "Ref:bip_pinky_1_R_parentConstraint1.cpim";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctx" "RefRN.phl[3139]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cty" "RefRN.phl[3140]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.ctz" "RefRN.phl[3141]";
connectAttr "RefRN.phl[3142]" "Ref:bip_pinky_2_R_parentConstraint1.crp";
connectAttr "RefRN.phl[3143]" "Ref:bip_pinky_2_R_parentConstraint1.crt";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crx" "RefRN.phl[3144]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.cry" "RefRN.phl[3145]";
connectAttr "Ref:bip_pinky_2_R_parentConstraint1.crz" "RefRN.phl[3146]";
connectAttr "RefRN.phl[3147]" "Ref:bip_pinky_2_R_parentConstraint1.cro";
connectAttr "RefRN.phl[3148]" "Ref:bip_pinky_2_R_parentConstraint1.cjo";
connectAttr "RefRN.phl[3149]" "Ref:bip_pinky_2_R_parentConstraint1.cpim";
connectAttr "RefRN.phl[3150]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3151]" "picker76.dsm" -na;
connectAttr "RefRN.phl[3152]" "picker79.dsm" -na;
connectAttr "RefRN.phl[3153]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3154]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3155]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3156]" "picker80.dsm" -na;
connectAttr "RefRN.phl[3157]" "picker83.dsm" -na;
connectAttr "RefRN.phl[3158]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3159]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3160]" "picker76.dsm" -na;
connectAttr "RefRN.phl[3161]" "picker77.dsm" -na;
connectAttr "RefRN.phl[3162]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3163]" "picker80.dsm" -na;
connectAttr "RefRN.phl[3164]" "picker81.dsm" -na;
connectAttr "RefRN.phl[3165]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3166]" "picker76.dsm" -na;
connectAttr "RefRN.phl[3167]" "picker78.dsm" -na;
connectAttr "RefRN.phl[3168]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3169]" "picker80.dsm" -na;
connectAttr "RefRN.phl[3170]" "picker82.dsm" -na;
connectAttr "RefRN.phl[3171]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3172]" "picker85.dsm" -na;
connectAttr "RefRN.phl[3173]" "lkneeControl.zooTrig1";
connectAttr "RefRN.phl[3174]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[3175]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[3176]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[3177]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[3178]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[3179]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_L_orientConstraint1.crx" "RefRN.phl[3180]";
connectAttr "Ref:bip_hip_L_orientConstraint1.cry" "RefRN.phl[3181]";
connectAttr "Ref:bip_hip_L_orientConstraint1.crz" "RefRN.phl[3182]";
connectAttr "RefRN.phl[3183]" "Ref:bip_hip_L_orientConstraint1.cro";
connectAttr "RefRN.phl[3184]" "Ref:bip_hip_LFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[3185]" "Ref:bip_hip_LIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[3186]" "Ref:bip_hip_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[3187]" "Ref:bip_hip_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[3188]" "lkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_L_orientConstraint1.crx" "RefRN.phl[3189]";
connectAttr "Ref:bip_knee_L_orientConstraint1.cry" "RefRN.phl[3190]";
connectAttr "Ref:bip_knee_L_orientConstraint1.crz" "RefRN.phl[3191]";
connectAttr "RefRN.phl[3192]" "Ref:bip_knee_L_orientConstraint1.cro";
connectAttr "RefRN.phl[3193]" "Ref:bip_knee_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[3194]" "Ref:bip_knee_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[3195]" "lkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_L_orientConstraint1.crx" "RefRN.phl[3196]";
connectAttr "Ref:bip_foot_L_orientConstraint1.cry" "RefRN.phl[3197]";
connectAttr "Ref:bip_foot_L_orientConstraint1.crz" "RefRN.phl[3198]";
connectAttr "RefRN.phl[3199]" "Ref:bip_foot_L_orientConstraint1.cro";
connectAttr "RefRN.phl[3200]" "Ref:bip_foot_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[3201]" "Ref:bip_foot_L_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_L_orientConstraint1.crx" "RefRN.phl[3202]";
connectAttr "Ref:bip_toe_L_orientConstraint1.cry" "RefRN.phl[3203]";
connectAttr "Ref:bip_toe_L_orientConstraint1.crz" "RefRN.phl[3204]";
connectAttr "RefRN.phl[3205]" "Ref:bip_toe_L_orientConstraint1.cro";
connectAttr "RefRN.phl[3206]" "Ref:bip_toe_L_orientConstraint1.cjo";
connectAttr "RefRN.phl[3207]" "Ref:bip_toe_L_orientConstraint1.cpim";
connectAttr "RefRN.phl[3208]" "rkneeControl.zooTrig1";
connectAttr "RefRN.phl[3209]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[3210]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tt";
connectAttr "RefRN.phl[3211]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[3212]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trp";
connectAttr "RefRN.phl[3213]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].trt";
connectAttr "RefRN.phl[3214]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].trt";
connectAttr "Ref:bip_hip_R_orientConstraint1.crx" "RefRN.phl[3215]";
connectAttr "Ref:bip_hip_R_orientConstraint1.cry" "RefRN.phl[3216]";
connectAttr "Ref:bip_hip_R_orientConstraint1.crz" "RefRN.phl[3217]";
connectAttr "RefRN.phl[3218]" "Ref:bip_hip_R_orientConstraint1.cro";
connectAttr "RefRN.phl[3219]" "Ref:bip_hip_RFK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[3220]" "Ref:bip_hip_RIK_pointConstraint1.tg[0].tpm";
connectAttr "RefRN.phl[3221]" "Ref:bip_hip_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[3222]" "Ref:bip_hip_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[3223]" "rkneeControl.zooTrig2";
connectAttr "Ref:bip_knee_R_orientConstraint1.crx" "RefRN.phl[3224]";
connectAttr "Ref:bip_knee_R_orientConstraint1.cry" "RefRN.phl[3225]";
connectAttr "Ref:bip_knee_R_orientConstraint1.crz" "RefRN.phl[3226]";
connectAttr "RefRN.phl[3227]" "Ref:bip_knee_R_orientConstraint1.cro";
connectAttr "RefRN.phl[3228]" "Ref:bip_knee_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[3229]" "Ref:bip_knee_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[3230]" "rkneeControl.zooTrig3";
connectAttr "Ref:bip_foot_R_orientConstraint1.crx" "RefRN.phl[3231]";
connectAttr "Ref:bip_foot_R_orientConstraint1.cry" "RefRN.phl[3232]";
connectAttr "Ref:bip_foot_R_orientConstraint1.crz" "RefRN.phl[3233]";
connectAttr "RefRN.phl[3234]" "Ref:bip_foot_R_orientConstraint1.cro";
connectAttr "RefRN.phl[3235]" "Ref:bip_foot_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[3236]" "Ref:bip_foot_R_orientConstraint1.cpim";
connectAttr "Ref:bip_toe_R_orientConstraint1.crx" "RefRN.phl[3237]";
connectAttr "Ref:bip_toe_R_orientConstraint1.cry" "RefRN.phl[3238]";
connectAttr "Ref:bip_toe_R_orientConstraint1.crz" "RefRN.phl[3239]";
connectAttr "RefRN.phl[3240]" "Ref:bip_toe_R_orientConstraint1.cro";
connectAttr "RefRN.phl[3241]" "Ref:bip_toe_R_orientConstraint1.cjo";
connectAttr "RefRN.phl[3242]" "Ref:bip_toe_R_orientConstraint1.cpim";
connectAttr "RefRN.phl[3243]" "plotted.dsm" -na;
connectAttr "Ref:bip_crotchflap_0_parentConstraint1.ctx" "RefRN.phl[3244]";
connectAttr "Ref:bip_crotchflap_0_parentConstraint1.cty" "RefRN.phl[3245]";
connectAttr "Ref:bip_crotchflap_0_parentConstraint1.ctz" "RefRN.phl[3246]";
connectAttr "Ref:bip_crotchflap_0_parentConstraint1.crx" "RefRN.phl[3247]";
connectAttr "Ref:bip_crotchflap_0_parentConstraint1.cry" "RefRN.phl[3248]";
connectAttr "Ref:bip_crotchflap_0_parentConstraint1.crz" "RefRN.phl[3249]";
connectAttr "RefRN.phl[3250]" "Ref:bip_crotchflap_0_parentConstraint1.cro";
connectAttr "RefRN.phl[3251]" "Ref:bip_crotchflap_0_parentConstraint1.cpim";
connectAttr "RefRN.phl[3252]" "Ref:bip_crotchflap_0_parentConstraint1.crp";
connectAttr "RefRN.phl[3253]" "Ref:bip_crotchflap_0_parentConstraint1.crt";
connectAttr "RefRN.phl[3254]" "Ref:bip_crotchflap_0_parentConstraint1.cjo";
connectAttr "RefRN.phl[3255]" "plotted.dsm" -na;
connectAttr "RefRN.phl[3256]" "picker86.dsm" -na;
connectAttr "groupId43.id" "RefRN.phl[3257]";
connectAttr "groupParts42.og" "RefRN.phl[3258]";
connectAttr "groupId44.id" "RefRN.phl[3259]";
connectAttr "groupParts43.og" "RefRN.phl[3260]";
connectAttr "groupId31.id" "RefRN.phl[3261]";
connectAttr "groupId38.id" "RefRN.phl[3262]";
connectAttr "groupParts37.og" "RefRN.phl[3263]";
connectAttr "groupId28.id" "RefRN.phl[3264]";
connectAttr "RefRN.phl[3265]" "RefRN.phl[3266]";
connectAttr "groupId30.id" "RefRN.phl[3267]";
connectAttr "RefRN.phl[3268]" "RefRN.phl[3269]";
connectAttr "groupParts29.og" "RefRN.phl[3270]";
connectAttr "groupId29.id" "RefRN.phl[3271]";
connectAttr "RefRN.phl[3272]" "RefRN.phl[3273]";
connectAttr "RefRN.phl[3274]" "RefRN.phl[3275]";
connectAttr "RefRN.phl[3276]" "RefRN.phl[3277]";
connectAttr "groupId28.msg" "RefRN.phl[3278]";
connectAttr "groupId29.msg" "RefRN.phl[3279]";
connectAttr "RefRN.phl[3280]" "groupParts42.ig";
connectAttr "RefRN.phl[3281]" "groupParts43.ig";
connectAttr "RefRN.phl[3282]" "RefRN.phl[1940]";
connectAttr "RefRN.phl[3283]" "groupParts30.ig";
connectAttr "RefRN.phl[3284]" "RefRN.phl[1933]";
connectAttr "RefRN.phl[3285]" "groupParts28.ig";
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
connectAttr "rHandControl.msg" "rikHandControl.zooTrig1";
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
connectAttr "codPiece_control.t" "Ref:bip_crotchflap_0_parentConstraint1.tg[0].tt"
		;
connectAttr "codPiece_control.rp" "Ref:bip_crotchflap_0_parentConstraint1.tg[0].trp"
		;
connectAttr "codPiece_control.rpt" "Ref:bip_crotchflap_0_parentConstraint1.tg[0].trt"
		;
connectAttr "codPiece_control.r" "Ref:bip_crotchflap_0_parentConstraint1.tg[0].tr"
		;
connectAttr "codPiece_control.ro" "Ref:bip_crotchflap_0_parentConstraint1.tg[0].tro"
		;
connectAttr "codPiece_control.s" "Ref:bip_crotchflap_0_parentConstraint1.tg[0].ts"
		;
connectAttr "codPiece_control.pm" "Ref:bip_crotchflap_0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ref:bip_crotchflap_0_parentConstraint1.w0" "Ref:bip_crotchflap_0_parentConstraint1.tg[0].tw"
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
connectAttr "RefRN.phl[1974]" "RefRN.phl[1950]";
connectAttr "RefRN.phl[2639]" "RefRN.phl[2640]";
connectAttr "groupId30.msg" "RefRN.phl[2641]";
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
connectAttr "codPiece_control.iog" "plotted.dsm" -na;
connectAttr "rHandControl.iog" "plotted.dsm" -na;
connectAttr "lHandControl.iog" "plotted.dsm" -na;
connectAttr "hand_L.msg" "plotted.dnsm" -na;
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
connectAttr "rHandControl.iog" "hand_R.dsm" -na;
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
connectAttr "lHandControl.iog" "hand_L.dsm" -na;
connectAttr "groupId28.id" "groupParts28.gi";
connectAttr "groupParts28.og" "groupParts29.ig";
connectAttr "groupId30.id" "groupParts29.gi";
connectAttr "groupId31.id" "groupParts30.gi";
connectAttr "groupParts30.og" "groupParts37.ig";
connectAttr "groupId38.id" "groupParts37.gi";
connectAttr "picker1.msg" "Demo.dnsm" -na;
connectAttr "picker2.msg" "Demo.dnsm" -na;
connectAttr "picker3.msg" "Demo.dnsm" -na;
connectAttr "picker4.msg" "Demo.dnsm" -na;
connectAttr "picker5.msg" "Demo.dnsm" -na;
connectAttr "COG.msg" "Demo.dnsm" -na;
connectAttr "picker6.msg" "Demo.dnsm" -na;
connectAttr "picker7.msg" "Demo.dnsm" -na;
connectAttr "hips.msg" "Demo.dnsm" -na;
connectAttr "picker8.msg" "Demo.dnsm" -na;
connectAttr "picker9.msg" "Demo.dnsm" -na;
connectAttr "ik.msg" "Demo.dnsm" -na;
connectAttr "ik1.msg" "Demo.dnsm" -na;
connectAttr "picker10.msg" "Demo.dnsm" -na;
connectAttr "picker11.msg" "Demo.dnsm" -na;
connectAttr "picker12.msg" "Demo.dnsm" -na;
connectAttr "picker13.msg" "Demo.dnsm" -na;
connectAttr "picker14.msg" "Demo.dnsm" -na;
connectAttr "picker15.msg" "Demo.dnsm" -na;
connectAttr "picker16.msg" "Demo.dnsm" -na;
connectAttr "picker17.msg" "Demo.dnsm" -na;
connectAttr "picker18.msg" "Demo.dnsm" -na;
connectAttr "picker19.msg" "Demo.dnsm" -na;
connectAttr "picker20.msg" "Demo.dnsm" -na;
connectAttr "picker21.msg" "Demo.dnsm" -na;
connectAttr "picker22.msg" "Demo.dnsm" -na;
connectAttr "picker23.msg" "Demo.dnsm" -na;
connectAttr "picker24.msg" "Demo.dnsm" -na;
connectAttr "picker25.msg" "Demo.dnsm" -na;
connectAttr "picker26.msg" "Demo.dnsm" -na;
connectAttr "picker27.msg" "Demo.dnsm" -na;
connectAttr "picker28.msg" "Demo.dnsm" -na;
connectAttr "picker29.msg" "Demo.dnsm" -na;
connectAttr "picker30.msg" "Demo.dnsm" -na;
connectAttr "picker31.msg" "Demo.dnsm" -na;
connectAttr "picker32.msg" "Demo.dnsm" -na;
connectAttr "picker33.msg" "Demo.dnsm" -na;
connectAttr "picker34.msg" "Demo.dnsm" -na;
connectAttr "picker35.msg" "Demo.dnsm" -na;
connectAttr "picker36.msg" "Demo.dnsm" -na;
connectAttr "picker37.msg" "Demo.dnsm" -na;
connectAttr "picker38.msg" "Demo.dnsm" -na;
connectAttr "picker39.msg" "Demo.dnsm" -na;
connectAttr "picker40.msg" "Demo.dnsm" -na;
connectAttr "picker41.msg" "Demo.dnsm" -na;
connectAttr "picker42.msg" "Demo.dnsm" -na;
connectAttr "picker43.msg" "Demo.dnsm" -na;
connectAttr "picker44.msg" "Demo.dnsm" -na;
connectAttr "picker45.msg" "Demo.dnsm" -na;
connectAttr "picker46.msg" "Demo.dnsm" -na;
connectAttr "picker47.msg" "Demo.dnsm" -na;
connectAttr "picker48.msg" "Demo.dnsm" -na;
connectAttr "picker49.msg" "Demo.dnsm" -na;
connectAttr "picker50.msg" "Demo.dnsm" -na;
connectAttr "picker51.msg" "Demo.dnsm" -na;
connectAttr "picker52.msg" "Demo.dnsm" -na;
connectAttr "picker53.msg" "Demo.dnsm" -na;
connectAttr "picker54.msg" "Demo.dnsm" -na;
connectAttr "picker55.msg" "Demo.dnsm" -na;
connectAttr "picker56.msg" "Demo.dnsm" -na;
connectAttr "picker57.msg" "Demo.dnsm" -na;
connectAttr "picker58.msg" "Demo.dnsm" -na;
connectAttr "picker59.msg" "Demo.dnsm" -na;
connectAttr "picker60.msg" "Demo.dnsm" -na;
connectAttr "picker61.msg" "Demo.dnsm" -na;
connectAttr "picker62.msg" "Demo.dnsm" -na;
connectAttr "picker63.msg" "Demo.dnsm" -na;
connectAttr "picker64.msg" "Demo.dnsm" -na;
connectAttr "picker65.msg" "Demo.dnsm" -na;
connectAttr "picker66.msg" "Demo.dnsm" -na;
connectAttr "picker67.msg" "Demo.dnsm" -na;
connectAttr "picker68.msg" "Demo.dnsm" -na;
connectAttr "picker69.msg" "Demo.dnsm" -na;
connectAttr "picker70.msg" "Demo.dnsm" -na;
connectAttr "picker71.msg" "Demo.dnsm" -na;
connectAttr "picker72.msg" "Demo.dnsm" -na;
connectAttr "picker73.msg" "Demo.dnsm" -na;
connectAttr "ik3.msg" "Demo.dnsm" -na;
connectAttr "ik2.msg" "Demo.dnsm" -na;
connectAttr "picker74.msg" "Demo.dnsm" -na;
connectAttr "picker75.msg" "Demo.dnsm" -na;
connectAttr "MAIN.msg" "Demo.dnsm" -na;
connectAttr "picker76.msg" "Demo.dnsm" -na;
connectAttr "picker77.msg" "Demo.dnsm" -na;
connectAttr "picker78.msg" "Demo.dnsm" -na;
connectAttr "picker79.msg" "Demo.dnsm" -na;
connectAttr "picker80.msg" "Demo.dnsm" -na;
connectAttr "picker81.msg" "Demo.dnsm" -na;
connectAttr "picker82.msg" "Demo.dnsm" -na;
connectAttr "picker83.msg" "Demo.dnsm" -na;
connectAttr "picker84.msg" "Demo.dnsm" -na;
connectAttr "picker85.msg" "Demo.dnsm" -na;
connectAttr "picker86.msg" "Demo.dnsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "picker1.dsm" -na;
connectAttr "Ref:bip_spine_0FKcontrol.iog" "picker2.dsm" -na;
connectAttr "Ref:bip_spine_1FKcontrol.iog" "picker3.dsm" -na;
connectAttr "Ref:bip_spine_2FKcontrol.iog" "picker4.dsm" -na;
connectAttr "Ref:bip_spine_3FKcontrol.iog" "picker5.dsm" -na;
connectAttr "UpperbodyControl.iog" "COG.dsm" -na;
connectAttr "neckControl.iog" "picker6.dsm" -na;
connectAttr "headControl.iog" "picker7.dsm" -na;
connectAttr "PelvisControl.iog" "hips.dsm" -na;
connectAttr "rShoulderControl.iog" "picker8.dsm" -na;
connectAttr "lShoulderControl.iog" "picker9.dsm" -na;
connectAttr "rikHandControl.iog" "ik.dsm" -na;
connectAttr "likHandControl.iog" "ik1.dsm" -na;
connectAttr "rHandControl.iog" "picker10.dsm" -na;
connectAttr "lHandControl.iog" "picker11.dsm" -na;
connectAttr "Ref:bip_upperArm_RFK.iog" "picker12.dsm" -na;
connectAttr "Ref:bip_upperArm_LFK.iog" "picker13.dsm" -na;
connectAttr "Ref:bip_lowerArm_RFK.iog" "picker14.dsm" -na;
connectAttr "Ref:bip_lowerArm_LFK.iog" "picker15.dsm" -na;
connectAttr "Ref:bip_hand_RFK.iog" "picker16.dsm" -na;
connectAttr "Ref:bip_hand_LFK.iog" "picker17.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker18.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker18.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker18.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker19.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker20.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker21.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker22.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker22.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker22.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker23.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker24.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker25.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker26.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker27.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker28.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker29.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker30.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker30.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker30.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker31.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker32.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker33.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker34.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker34.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker34.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker35.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker36.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker37.dsm" -na;
connectAttr "Ref:bip_thumb_2_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_thumb_1_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_thumb_0_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_index_2_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_index_1_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_index_0_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_middle_2_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_middle_1_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_middle_0_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_ring_2_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_ring_1_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_ring_0_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_pinky_2_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_pinky_1_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_pinky_0_RControl.iog" "picker38.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker39.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker39.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker39.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker40.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker41.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker42.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker43.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker43.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker43.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker44.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker45.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker46.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker47.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker47.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker47.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker48.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker48.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker48.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker49.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker50.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker51.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker52.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker53.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker54.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker55.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker55.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker55.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker56.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker57.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker58.dsm" -na;
connectAttr "Ref:bip_pinky_2_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_pinky_1_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_pinky_0_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_ring_2_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_ring_1_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_ring_0_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_middle_2_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_middle_1_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_middle_0_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_index_2_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_index_1_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_index_0_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_thumb_2_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_thumb_1_LControl.iog" "picker59.dsm" -na;
connectAttr "Ref:bip_thumb_0_LControl.iog" "picker59.dsm" -na;
connectAttr "rElbowControl.iog" "picker60.dsm" -na;
connectAttr "lElbowControl.iog" "picker61.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "picker62.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "picker62.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "picker62.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "picker62.dsm" -na;
connectAttr "Ref:bip_hip_RFK.iog" "picker63.dsm" -na;
connectAttr "Ref:bip_knee_RFK.iog" "picker64.dsm" -na;
connectAttr "Ref:bip_foot_RFK.iog" "picker65.dsm" -na;
connectAttr "Ref:bip_toe_RFK.iog" "picker66.dsm" -na;
connectAttr "Ref:bip_toe_LFK.iog" "picker67.dsm" -na;
connectAttr "Ref:bip_foot_LFK.iog" "picker67.dsm" -na;
connectAttr "Ref:bip_knee_LFK.iog" "picker67.dsm" -na;
connectAttr "Ref:bip_hip_LFK.iog" "picker67.dsm" -na;
connectAttr "Ref:bip_hip_LFK.iog" "picker68.dsm" -na;
connectAttr "Ref:bip_knee_LFK.iog" "picker69.dsm" -na;
connectAttr "Ref:bip_foot_LFK.iog" "picker70.dsm" -na;
connectAttr "Ref:bip_toe_LFK.iog" "picker71.dsm" -na;
connectAttr "rkneeControl.iog" "picker72.dsm" -na;
connectAttr "lkneeControl.iog" "picker73.dsm" -na;
connectAttr "rFootControl.iog" "ik3.dsm" -na;
connectAttr "lFootControl.iog" "ik2.dsm" -na;
connectAttr "rToeControl.iog" "picker74.dsm" -na;
connectAttr "lToeControl.iog" "picker75.dsm" -na;
connectAttr "main.iog" "MAIN.dsm" -na;
connectAttr "codPiece_control.iog" "picker84.dsm" -na;
connectAttr "groupId43.id" "groupParts42.gi";
connectAttr "groupId44.id" "groupParts43.gi";
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
connectAttr "codPiece_controlShape.iog" ":initialShadingGroup.dsm" -na;
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
// End of demo_rig.ma
