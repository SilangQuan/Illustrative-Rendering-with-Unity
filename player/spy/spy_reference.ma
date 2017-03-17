//Maya ASCII 2012 scene
//Name: spy_reference.ma
//Last modified: Wed, Mar 11, 2015 01:26:36 PM
//Codeset: 1252
requires maya "2012";
requires "Mayatomr" "2012.0m - 3.9.1.47 ";
requires "vstUtils" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012";
fileInfo "cutIdentifier" "201109261253-811691";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.685272675889017 69.480792571301777 116.17605774403307 ;
	setAttr ".r" -type "double3" -13.380447974872958 -2170.9819423890544 0 ;
	setAttr ".rp" -type "double3" 0 -5.3290705182007514e-015 7.1054273576010019e-015 ;
	setAttr ".rpt" -type "double3" -2.5899484483449872e-011 -3.0530606354240859e-012 
		2.977881271013549e-012 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 119.55881900939987;
	setAttr ".ow" 13.700000000000006;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 76.903850555419922 -0.6001899242401123 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.091164718559941 101.70447241002815 14.41250965781188 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.3376081713718211;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.99439427929254176 77.786254788909972 108.08665807570559 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 100.1;
	setAttr ".ow" 14.677442002631702;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 152.68507840899309 77.435351648915471 3.2765535388415929 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-015 0 0 ;
	setAttr ".rpt" -type "double3" -3.0324308063472696e-015 0 1.2560739669470199e-015 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 129.78872553610708;
	setAttr ".ow" 6.9260107286788166;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 1.2045839351770837e-005 56.215116629303132 6.1695388295552753 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "spyInfo_group";
createNode joint -n "bip_pelvis" -p "spyInfo_group";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 46.698848031532144 -0.82719324898981128 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.37598925560837 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -0.99994069318767709 -0.010890826752274133 0
		 0 0.010890826752274133 -0.99994069318767709 0 0 46.698848031532144 -0.82719324898981128 1;
createNode joint -n "bip_spine_0" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -5.0054257108988178 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -13.823764212370486 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -0.97357988541123974 0.22834668099763883 0
		 0 -0.22834668099763883 -0.97357988541123974 0 0 51.703976886587732 -0.7726800247510337 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_0";
createNode joint -n "bip_spine_1" -p "bip_spine_0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -5.1785104136763449 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.6929474800491482 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -0.95163355108230174 0.30723538932630839 0
		 0 -0.30723538932630839 -0.95163355108230174 0 0 56.745670461735656 -1.9551756902257367 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_1";
createNode joint -n "bip_spine_2" -p "bip_spine_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -7.2723806620927753 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 17.020177132185786 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -0.99988404995363922 0.015227824805549017 0
		 0 -0.015227824805549017 -0.99988404995363922 0 0 63.666311896025263 -4.1895083942729272 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_2";
createNode joint -n "bip_spine_3" -p "bip_spine_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -4.8786708819858795 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 12.960979184347551 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -0.97782545333777915 -0.20942154331578924 0
		 0 0.20942154331578924 -0.97782545333777915 0 0 68.544417095896193 -4.2637999397477415 1;
	setAttr ".ds" 1;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "spine_3";
createNode joint -n "bip_neck" -p "bip_spine_3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 -4.4231401585009245 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.8635505797694272 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -0.9870666761752962 -0.16031025165052021 0
		 0 0.16031025165052021 -0.9870666761752962 0 0 72.869476126558894 -3.3374991014524333 1;
createNode joint -n "bip_head" -p "bip_neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 -2.8585627634212512 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.2249047887359801 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 1.5820678100908481e-015 0 0 -1.5820678100908481e-015 -1 0
		 0 75.691068172087583 -2.879242185489566 1;
createNode joint -n "bip_headEnd" -p "bip_head";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -6.4932082274450087 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "prp_cig" -p "bip_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.0819373379999999 0.93644397639999999 -5.3668963830000003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 72.120967029401172 -44.192571519272043 11.444725592710414 ;
	setAttr ".bps" -type "matrix" 0.70274456034469468 -0.14226912066537853 -0.69707214849758692 0
		 -0.71113485451339031 -0.16926886321503773 -0.6823747289005565 0 -0.02091175751009228 0.97524742975871959 -0.22012530328621993 0
		 1.0819373379999999 74.754624195687597 2.487654197510436 1;
	setAttr ".radi" 0.15;
createNode joint -n "prp_cigEnd" -p "prp_cig";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 -2.129979254733831 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.15;
createNode transform -n "cig_smoke" -p "prp_cig";
	setAttr ".t" -type "double3" -4.8849813083506888e-015 -2.1299792547338301 -2.1684043449710089e-014 ;
	setAttr ".r" -type "double3" 9.6410563781862979e-015 -9.9392333795734919e-016 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999878 0.99999999999999878 ;
createNode vstAttachment -n "cig_smoke" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_neck|bip_head|prp_cig|cig_smoke";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -4.2655124346928698e-018 1.0679608553534935e-018 -7.3476319701643768e-019 ;
createNode transform -n "head" -p "bip_head";
	setAttr ".t" -type "double3" 0 -9.0770664487946675 -4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" -179.99999999999983 88.952769613174041 90.000000000001393 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999956 ;
createNode vstAttachment -n "head" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_neck|bip_head|head";
	setAttr -k off ".v";
createNode transform -n "eyeglow_L" -p "bip_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.2245589667693668 -2.6337143603170858 -5.8923702502061044 ;
	setAttr ".r" -type "double3" 90 64.999999999999901 6.0206668180656288e-014 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode vstAttachment -n "eyeglow_L" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_neck|bip_head|eyeglow_L";
	setAttr -k off ".v";
createNode transform -n "eyeglow_R" -p "bip_head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.22456 -2.6337143603170858 -5.8923702502061044 ;
	setAttr ".r" -type "double3" 90 114.9999999999999 5.0888874903416268e-014 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode vstAttachment -n "eyeglow_R" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_neck|bip_head|eyeglow_R";
	setAttr -k off ".v";
createNode joint -n "bip_collar_L" -p "bip_spine_3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.86243947193359083 -1.3431305843897121 -3.1419841949019349 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -170.56414335691102 -10.859809129832978 -75.271727769055659 ;
	setAttr ".pa" -type "double3" -2.3244467489899225 2.055107454958989e-007 -8.3419937158154824e-009 ;
	setAttr ".bps" -type "matrix" 0.24968213650014248 0.96821650385656299 0.01468442618894697 0
		 -0.94620392863969704 0.24072634944739446 0.21621505523097548 0 0.20580805654669382 -0.067879498683367595 0.97623532896477783 0
		 0.86243947193359083 69.199765189298731 -0.91020734013008875 1;
createNode joint -n "bip_upperArm_L" -p "bip_collar_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 8.6970686277720866e-009 -9.4766122920362452 0 ;
	setAttr ".r" -type "double3" 9.6554270699675921 0.58617602609503927 -58.441203783656476 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -28.219804506012011 9.751568635562144 9.7676868508184835 ;
	setAttr ".pa" -type "double3" 23.396363342333345 1.8876894005930528e-007 8.1673390050378454e-008 ;
	setAttr ".bps" -type "matrix" 0.049440737522716521 0.9921416552879212 -0.11493715376567235 0
		 -0.96173869926074984 0.016242958724072165 -0.27348645420958068 0 -0.26947038393383932 0.12406088075792471 0.95498408889788189 0
		 9.8292472550208601 66.918494915530559 -2.9591935901473279 1;
createNode joint -n "bip_lowerArm_L" -p "bip_upperArm_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 -12.527146223464671 0 ;
	setAttr ".r" -type "double3" 12.55730985598732 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -45.869478930224048 0 0 ;
	setAttr ".pa" -type "double3" -45.869478930224048 1.4321398951416595e-007 -1.4762794431333097e-007 ;
	setAttr ".bps" -type "matrix" 0.049440737522716521 0.9921416552879212 -0.11493715376567235 0
		 -0.47624023037149554 -0.077735483174845826 -0.87587238661307198 0 -0.87792417465799111 0.098041473357539807 0.46865447085562745 0
		 21.877088569424988 66.715016996492409 0.46681121187296437 1;
createNode joint -n "bip_hand_L" -p "bip_lowerArm_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 -13.013495 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.049440737522716521 0.9921416552879212 -0.11493715376567235 0
		 -0.47624023037149554 -0.077735483174845826 -0.87587238661307198 0 -0.87792417465799111 0.098041473357539807 0.46865447085562745 0
		 28.074638426163293 67.726627318110843 11.864972135700246 1;
createNode joint -n "bip_thumb_0_L" -p "bip_hand_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.24750294155040886 -1.342844180893108 1.6847418967996184 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -29.434324833552385 28.868600440827738 -26.613112067211127 ;
	setAttr ".bps" -type "matrix" 0.64940012679491654 0.75995515414570003 0.027342988244374769 0
		 -0.034819093337805543 0.065634054590015728 -0.9972360811849964 0 -0.75964933097968301 0.6466531795061865 0.069083712817566229 0
		 27.222842480996011 67.750630559012052 13.859141379091934 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_thumb_1_L" -p "bip_thumb_0_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -2.0216184713996004 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 10.703360410658579 0 0 ;
	setAttr ".bps" -type "matrix" 0.64940012679491654 0.75995515414570003 0.027342988244374769 0
		 -0.17529860632605426 0.18459132098873055 -0.96705555312803992 0 -0.73996613026468305 0.62321281108704829 0.25309270664736572 0
		 27.293233403245104 67.617943541900033 15.875172261161675 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_thumb_2_L" -p "bip_thumb_1_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -1.1362196624936738 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -12.038514910468905 0 0 ;
	setAttr ".bps" -type "matrix" 0.64940012679491654 0.75995515414570003 0.027342988244374769 0
		 -0.017109253674599867 0.050548741865216074 -0.99857503380293999 0 -0.7602543973943493 0.6480069354437723 0.045828624890193237 0
		 27.492411126560505 67.408207253466955 16.973959795349451 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_thumbEnd_L" -p "bip_thumb_2_L";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -1.8464289223481598 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode joint -n "bip_index_0_L" -p "bip_hand_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.19761329068691103 -4.5884445002778467 1.3289102735303651 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 177.50984281828732 59.198052489195021 155.36824194606257 ;
	setAttr ".bps" -type "matrix" 0.62943189212847406 -0.56262090018538646 -0.53597874570374016 0
		 -0.44052643142328729 0.3098392142946903 -0.84257707333081 0 0.6401187049204492 0.76645768569428185 -0.052826694493719295 0
		 29.102927983774617 68.409660966866795 16.483950602878387 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_index_1_L" -p "bip_index_0_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -1.7545310635911706 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 37.98113299310932 0 0 ;
	setAttr ".bps" -type "matrix" 0.62943189212847406 -0.56262090018538646 -0.53597874570374016 0
		 0.046701448387054256 0.71589899342228658 -0.69664022704370787 0 0.7756509961897301 0.41345659251188938 0.4768848689341455 0
		 29.875845292039738 67.866038440668078 17.96227825150703 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_index_2_L" -p "bip_index_1_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -1.2270142737840064 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.3089924386767153 0 0 ;
	setAttr ".bps" -type "matrix" 0.62943189212847406 -0.56262090018538646 -0.53597874570374016 0
		 0.11826966141890868 0.75108376322022863 -0.64952711091593174 0 0.76800246116755777 0.34544305363044331 0.53929705760281033 0
		 29.818541948262435 66.987620157151326 18.81706575378179 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_indexEnd_L" -p "bip_index_2_L";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -1.7343049861818969 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode joint -n "bip_middle_0_L" -p "bip_hand_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.3770226762484421 -4.2073368447255994 0.24673492329544189 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.82865331956609 51.982906158062789 154.61220448028442 ;
	setAttr ".bps" -type "matrix" 0.53838617598216199 -0.64981147228843295 -0.5365495093592425 0
		 -0.41125225554832123 0.35313387416847575 -0.84033805651129578 0 0.73553511664482951 0.67308358871473206 -0.077114037536461927 0
		 29.84308666127593 67.70381703392934 15.70902963740691 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_middle_1_L" -p "bip_middle_0_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -2.3723260927718854 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.372183196549685 0 0 ;
	setAttr ".bps" -type "matrix" 0.53838617598216199 -0.64981147228843295 -0.5365495093592425 0
		 0.1775333081462111 0.7098759661295484 -0.6815849449703999 0 0.82378531791357335 0.27170050274885316 0.49755058717285583 0
		 30.818711117824503 66.866068329997844 17.702585535617871 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_middle_2_L" -p "bip_middle_1_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -1.5800730120496582 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9626660162425469 0 0 ;
	setAttr ".bps" -type "matrix" 0.53838617598216199 -0.64981147228843295 -0.5365495093592425 0
		 0.20564239381473098 0.71876479757178324 -0.66414484236327609 0 0.8172218373106851 0.24722907647348599 0.52060181748493328 0
		 30.538195528882778 65.74441247401387 18.77953951258495 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_middleEnd_L" -p "bip_middle_2_L";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -1.6358345338184224 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode joint -n "bip_ring_0_L" -p "bip_hand_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.1710480260853877 -3.8571527380709085 -0.74067707424170948 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -176.19892438932294 46.689051655795531 155.1435484896781 ;
	setAttr ".bps" -type "matrix" 0.47072274342265447 -0.71127504653143736 -0.52202289892910958 0
		 -0.35869300642266949 0.38628912697856765 -0.84977646326643053 0 0.80607656334129729 0.58725507112313435 -0.073294307228091854 0
		 30.503930565727792 66.792002351221143 15.030821014663079 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_ring_1_L" -p "bip_ring_0_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -1.6906289595508024 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 28.163696160124772 0 0 ;
	setAttr ".bps" -type "matrix" 0.47072274342265447 -0.71127504653143736 -0.52202289892910958 0
		 0.064237176014089126 0.61773338137602829 -0.78375956437639316 0 0.87993959113247355 0.33540017548510614 0.33647145234354647 0
		 31.110347349974298 66.138930766391582 16.467477712605966 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_ring_2_L" -p "bip_ring_1_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -1.4234403322378264 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 13.419380546313329 0 0 ;
	setAttr ".bps" -type "matrix" 0.47072274342265447 -0.71127504653143736 -0.52202289892910958 0
		 0.26669702028497499 0.67870631926069236 -0.68427365254459338 0 0.84100701435586456 0.18288121931271314 0.50917743609367661 0
		 31.018909562806783 65.259624156771295 17.583112687316472 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_ringEnd_L" -p "bip_ring_2_L";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -1.7592101469475159 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode joint -n "bip_pinky_0_L" -p "bip_hand_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.9661305649564225 -3.3981763725770886 -1.5474453812200828 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -176.87589629592046 43.789667966965958 151.35001943964056 ;
	setAttr ".bps" -type "matrix" 0.41138114154404726 -0.72327406830719965 -0.55465320561254206 0
		 -0.34885413952054367 0.43725114269359033 -0.82892232902276852 0 0.84206077317572381 0.53449608074101129 -0.072440278514102771 0
		 30.954319488620939 65.888392342003286 14.342105240035593 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_pinky_1_L" -p "bip_pinky_0_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -1.4378199723363987 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 24.348262730400961 0 0 ;
	setAttr ".bps" -type "matrix" 0.41138114154404726 -0.72327406830719965 -0.55465320561254206 0
		 0.029340670902549937 0.61872348985518499 -0.78506074168334861 0 0.91099104354154059 0.30668528692419039 0.27575252196729277 0
		 31.455908937855806 65.259703916111533 15.533946320220133 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_pinky_2_L" -p "bip_pinky_1_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 -1.05939736748855 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 18.453507192123293 0 0 ;
	setAttr ".bps" -type "matrix" 0.41138114154404726 -0.72327406830719965 -0.55465320561254206 0
		 0.3161925771221058 0.68398587297699476 -0.65740822913983965 0 0.85486128146898666 0.095068121272330969 0.51007278084892138 0
		 31.424825508341296 64.604229879755621 16.365637603278081 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_pinkyEnd_L" -p "bip_pinky_2_L";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -1.3896442068597568 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode transform -n "weapon_bone_L" -p "bip_hand_L";
	setAttr ".t" -type "double3" -2.741027504698863 -2.732544506295814 1.1223845197303461 ;
	setAttr ".r" -type "double3" 9.8019056631627567e-005 12.141558487213445 -0.17800982600764056 ;
	setAttr ".s" -type "double3" 0.99999999999999822 0.999999999999998 0.99999999999999822 ;
createNode vstAttachment -n "weapon_bone_L" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_L|bip_upperArm_L|bip_lowerArm_L|bip_hand_L|weapon_bone_L";
	setAttr -k off ".v";
	setAttr ".typ" 0;
createNode transform -n "effect_hand_L" -p "bip_hand_L";
	setAttr ".t" -type "double3" -1.1909383160515756 -3.9840790204546321 0.39392991434479818 ;
	setAttr ".r" -type "double3" -193.89972089122992 -143.36542149350797 -4.4211751567282898 ;
	setAttr ".s" -type "double3" 0.99999999999999822 0.999999999999998 0.99999999999999822 ;
createNode vstAttachment -n "effect_hand_L" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_L|bip_upperArm_L|bip_lowerArm_L|bip_hand_L|effect_hand_L";
	setAttr -k off ".v";
	setAttr ".typ" 0;
createNode joint -n "prp_wristOuter_L" -p "bip_lowerArm_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 1.7250645456249334 -13.709154255017928 -1.1485879815469673 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.00013058664349665641 42.792804551460613 -0.1779417282071267 ;
	setAttr ".bps" -type "matrix" 0.63378257793418269 0.6616178679915713 -0.40072614172448223 0
		 -0.47608577681572278 -0.074652149103592219 -0.8762245087578785 0 -0.6096408590480723 0.74611584448294821 0.26767362513072779 0
		 29.499600969164788 69.379603862207915 11.737715966003037 1;
createNode joint -n "prp_wristInner_L" -p "bip_lowerArm_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -2.577588985230383 -13.69579011767209 1.9518861920115924 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.00011302504327202265 32.023152907915069 -0.17797050925726732 ;
	setAttr ".bps" -type "matrix" 0.50870126735680632 0.78938431882642623 -0.3436501386301456 0
		 -0.47608577681572251 -0.074652149103592816 -0.87622450875787861 0 -0.7173321083733456 0.60934346129679129 0.33783900377472209 0
		 26.558528835576467 65.413698254383604 13.67359652081787 1;
createNode joint -n "hlp_suitArmTop_L" -p "bip_upperArm_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 23.396363342333345 1.8876894005930528e-007 8.1673390050378454e-008 ;
	setAttr ".bps" -type "matrix" 0.049440737522716521 0.9921416552879212 -0.11493715376567235 0
		 -0.96173869926074984 0.016242958724072165 -0.27348645420958068 0 -0.26947038393383932 0.12406088075792471 0.95498408889788189 0
		 10.516527162780061 69.789588839739949 -3.6834416010692013 1;
createNode vstHelperBone -n "hlp_suitArmTop_LShape" -p "hlp_suitArmTop_L";
	setAttr -k off ".v" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tda" -type "double3" -2.9357155280763557e-017 -1 -7.0900299545995005e-017 ;
	setAttr ".bt" -type "double3" 2.9657546017618759 -0.41627660476213535 -0.52065649521541113 ;
	setAttr -s 3 ".trg";
	setAttr ".trg[0].tl" 45;
	setAttr ".trg[0].ta" -type "double3" -28.219804506012011 9.751568635562144 9.7676868508184818 ;
	setAttr ".trg[0].tn" -type "string" "Bind";
	setAttr ".trg[1].tl" 45;
	setAttr ".trg[1].ta" -type "double3" -11.036545641414396 -27.776466776388627 -75.038726636462286 ;
	setAttr ".trg[1].tt" -type "double3" -1.3008966728380387 1.3273326134383956 -0.016048789937528896 ;
	setAttr ".trg[2].tl" 45;
	setAttr ".trg[2].ta" -type "double3" -27.356043276698408 -12.108344030627503 -29.818403419764543 ;
	setAttr ".trg[2].tt" -type "double3" -0.30579970773939946 1.3652095115420089 -0.016048760293010833 ;
	setAttr ".dwf" 0;
	setAttr ".wfos" 1;
createNode joint -n "hlp_suitArmpitBack_L" -p "bip_upperArm_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 30.226344198162977 0 0 ;
	setAttr ".pa" -type "double3" 23.396363342333345 1.8876894005930528e-007 8.1673390050378454e-008 ;
	setAttr ".bps" -type "matrix" 0.049440737522716521 0.9921416552879212 -0.11493715376567235 0
		 -0.96664004817363691 0.076489012959995495 0.24445132064129776 0 0.25132176734234302 0.099017002272082377 0.96282553067571497 0
		 9.8000421492510199 63.107715596508115 -3.4755873537972013 1;
createNode vstHelperBone -n "hlp_suitArmpitBack_LShape" -p "hlp_suitArmpitBack_L";
	setAttr -k off ".v" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tda" -type "double3" 6.6469030824370308e-017 -1 -1.4180059909198998e-016 ;
	setAttr ".bt" -type "double3" -3.7229239821733353 0.10741604966565887 -0.95804656868025395 ;
	setAttr -s 3 ".trg";
	setAttr ".trg[0].tl" 45;
	setAttr ".trg[0].ta" -type "double3" -28.219804506012011 9.751568635562144 9.7676868508184818 ;
	setAttr ".trg[0].tn" -type "string" "Bind";
	setAttr ".trg[1].tl" 45;
	setAttr ".trg[1].ta" -type "double3" -11.036545641414396 -27.776466776388627 -75.038726636462286 ;
	setAttr ".trg[1].tt" -type "double3" 1.3872908423150037 -3.0785033992041235 -1.2964886850713384 ;
	setAttr ".trg[2].tl" 45;
	setAttr ".trg[2].ta" -type "double3" -27.356043276698408 -12.108344030627503 -29.818403419764543 ;
	setAttr ".trg[2].tt" -type "double3" 0.49248525099089502 -1.6103581328844108 -0.64824433595509445 ;
	setAttr ".dwf" 0;
	setAttr ".wfos" 1;
createNode joint -n "bip_collar_R" -p "bip_spine_3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.862439 -1.3431646944100351 -3.1419772373790043 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.435856643089398 10.859809129833 75.271727769055673 ;
	setAttr ".pa" -type "double3" -2.3244467489899225 2.055107454958989e-007 -8.3419937158154824e-009 ;
	setAttr ".bps" -type "matrix" 0.24968213650014226 -0.9682165038565631 -0.014684426188946498 0
		 -0.94620392863969571 -0.24072634944739407 -0.21621505523098261 0 0.20580805654670084 0.067879498683368844 -0.97623532896477616 0
		 -0.86243899999999996 69.199799999999996 -0.91020700000000376 1;
createNode joint -n "bip_upperArm_R" -p "bip_collar_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 9.476622 0 ;
	setAttr ".r" -type "double3" 9.6554270699675921 0.58617602609503927 -58.441203783656476 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -28.219804506012505 9.7515686355622133 9.7676868508184338 ;
	setAttr ".pa" -type "double3" 23.396363342333345 1.8876894005930528e-007 8.1673390050378454e-008 ;
	setAttr ".bps" -type "matrix" 0.049440737522715883 -0.99214165528792131 0.11493715376567269 0
		 -0.96173869926074951 -0.016242958724071471 0.27348645420958201 0 -0.26947038393384076 -0.12406088075792504 -0.95498408889788144 0
		 -9.8292559666333705 66.918527380847138 -2.9591953491331489 1;
createNode joint -n "bip_lowerArm_R" -p "bip_upperArm_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 12.527154 0 ;
	setAttr ".r" -type "double3" 12.55730985598732 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -45.869478930224012 0 0 ;
	setAttr ".pa" -type "double3" -45.869478930224048 1.4321398951416595e-007 -1.4762794431333097e-007 ;
	setAttr ".bps" -type "matrix" 0.049440737522715883 -0.99214165528792131 0.11493715376567269 0
		 -0.47624023037149482 0.077735483174846493 0.87587238661307221 0 -0.87792417465799155 -0.098041473357539571 -0.46865447085562673 0
		 -21.877104760032466 66.715049335495053 0.46681157966423292 1;
createNode joint -n "bip_hand_R" -p "bip_lowerArm_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 13.013495 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.049440737522715883 -0.99214165528792131 0.11493715376567269 0
		 -0.47624023037149482 0.077735483174846493 0.87587238661307221 0 -0.87792417465799155 -0.098041473357539571 -0.46865447085562673 0
		 -28.074654616770765 67.726659657113501 11.864972503491515 1;
createNode joint -n "bip_thumb_0_R" -p "bip_hand_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.24749839881906133 1.3427813495108811 -1.6847126876674601 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -29.434324833552317 28.868600440827731 -26.613112067211116 ;
	setAttr ".bps" -type "matrix" 0.64940012679491577 -0.75995515414570058 -0.02734298824437488 0
		 -0.034819093337805793 -0.065634054590015978 0.99723608118499618 0 -0.75964933097968346 -0.64665317950618606 -0.069083712817566534 0
		 -27.222854616770768 67.750659657113502 13.859072503491511 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_thumb_1_R" -p "bip_thumb_0_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.081429286704406e-006 2.0216885664921476 1.0516409947314287e-005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 10.703360410658465 0 0 ;
	setAttr ".bps" -type "matrix" 0.64940012679491577 -0.75995515414570058 -0.02734298824437488 0
		 -0.1752986063260531 -0.18459132098872943 0.96705555312804004 0 -0.73996613026468383 -0.62321281108704818 -0.25309270664736405 0
		 -27.293254616770771 67.617959657113502 15.875172503491513 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_thumb_2_R" -p "bip_thumb_1_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.9650617274844535e-005 1.1361322186132643 1.6022840213736345e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -12.038514910468784 0 0 ;
	setAttr ".bps" -type "matrix" 0.64940012679491577 -0.75995515414570058 -0.02734298824437488 0
		 -0.017109253674600172 -0.050548741865216407 0.99857503380293966 0 -0.76025439739434963 -0.64800693544377175 -0.045828624890193737 0
		 -27.492454616770758 67.40825965711349 16.973872503491513 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_thumbEnd_R" -p "bip_thumb_2_R";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -3.2229849917797537e-005 1.8464294973580002 -1.5732537960388981e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode joint -n "bip_index_0_R" -p "bip_hand_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.19768865559351401 4.5883859039748618 -1.328870837084775 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 177.5098428182873 59.198052489195014 155.36824194606257 ;
	setAttr ".bps" -type "matrix" 0.62943189212847495 0.56262090018538669 0.53597874570373971 0
		 -0.44052643142328712 -0.30983921429468952 0.84257707333081033 0 0.64011870492044887 -0.76645768569428252 0.052826694493719545 0
		 -29.102954616770766 68.409759657113497 16.483872503491515 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_index_1_R" -p "bip_index_0_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 6.0847915257511431e-006 1.7546084048713464 7.428181847757287e-005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 37.98113299310932 0 0 ;
	setAttr ".bps" -type "matrix" 0.62943189212847495 0.56262090018538669 0.53597874570373971 0
		 0.046701448387054145 -0.71589899342228636 0.6966402270437082 0 0.77565099618972977 -0.41345659251189038 -0.47688486893414556 0
		 -29.875854616770759 67.866059657113496 17.962272503491516 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_index_2_R" -p "bip_index_1_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.8717350893335833e-005 1.2269400708689613 3.1575466110211892e-005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.3089924386767908 0 0 ;
	setAttr ".bps" -type "matrix" 0.62943189212847495 0.56262090018538669 0.53597874570373971 0
		 0.11826966141890954 -0.75108376322022885 0.64952711091593129 0 0.76800246116755722 -0.34544305363044336 -0.53929705760281132 0
		 -29.818554616770751 66.987659657113497 18.816972503491506 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_indexEnd_R" -p "bip_index_2_R";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 6.5535293387597449e-006 1.7343111079744737 -2.6708945096487469e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364625159366e-007 -3.531125038440126e-031 4.739395799433465e-023 ;
	setAttr ".radi" 0.3;
createNode joint -n "bip_middle_0_R" -p "bip_hand_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.3770033045068879 4.2073119325362516 -0.24666353749381997 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.82865331956606 51.982906158062796 154.61220448028442 ;
	setAttr ".bps" -type "matrix" 0.53838617598216287 0.64981147228843283 0.53654950935924184 0
		 -0.41125225554832118 -0.35313387416847486 0.84033805651129623 0 0.73553511664482885 -0.67308358871473262 0.077114037536462024 0
		 -29.843154616770764 67.703859657113497 15.708972503491516 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_middle_1_R" -p "bip_middle_0_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 6.8478234371838198e-005 2.3723358963647936 -1.139229965474442e-005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.37218319654972 0 0 ;
	setAttr ".bps" -type "matrix" 0.53838617598216287 0.64981147228843283 0.53654950935924184 0
		 0.17753330814621121 -0.7098759661295484 0.68158494497040012 0 0.82378531791357279 -0.27170050274885382 -0.49755058717285644 0
		 -30.818754616770747 66.866159657113499 17.70257250349152 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_middle_2_R" -p "bip_middle_1_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -6.6039473988865893e-005 1.5800647913811305 2.6008281679423817e-005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9626660162427325 0 0 ;
	setAttr ".bps" -type "matrix" 0.53838617598216287 0.64981147228843283 0.53654950935924184 0
		 0.20564239381473373 -0.71876479757178402 0.66414484236327465 0 0.81722183731068376 -0.24722907647348435 -0.52060181748493606 0
		 -30.538254616770775 65.744459657113509 18.779472503491508 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_middleEnd_R" -p "bip_middle_2_R";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.582240248827361e-005 1.6358951214918802 -2.8500508538087388e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364625159387e-007 7.1090937697726979e-023 -9.4787915459000549e-023 ;
	setAttr ".radi" 0.3;
createNode joint -n "bip_ring_0_R" -p "bip_hand_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1710172487595185 3.8571156106059235 0.74070443466187541 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -176.19892438932294 46.689051655795531 155.1435484896781 ;
	setAttr ".bps" -type "matrix" 0.47072274342265541 0.71127504653143747 0.52202289892910891 0
		 -0.35869300642266916 -0.38628912697856715 0.84977646326643086 0 0.80607656334129696 -0.5872550711231348 0.073294307228091465 0
		 -30.503954616770766 66.792059657113498 15.030772503491512 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_ring_1_R" -p "bip_ring_0_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0294390289544708e-005 1.6906707126992906 3.3390134959176976e-005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 28.163696160124772 0 0 ;
	setAttr ".bps" -type "matrix" 0.47072274342265541 0.71127504653143747 0.52202289892910891 0
		 0.064237176014089237 -0.61773338137602796 0.78375956437639327 0 0.879939591132473 -0.33540017548510681 -0.33647145234354697 0
		 -31.110354616770756 66.138959657113517 16.467472503491525 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_ring_2_R" -p "bip_ring_1_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.1343620950252671e-005 1.4234064101499331 -2.3699300886192987e-005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 13.419380546313381 0 0 ;
	setAttr ".bps" -type "matrix" 0.47072274342265541 0.71127504653143747 0.52202289892910891 0
		 0.26669702028497577 -0.67870631926069247 0.68427365254459283 0 0.84100701435586378 -0.18288121931271323 -0.50917743609367772 0
		 -31.018954616770746 65.259659657113517 17.583072503491518 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_ringEnd_R" -p "bip_ring_2_R";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.1871386208284207e-005 1.7592382100481636 1.2869425571437887e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode joint -n "bip_pinky_0_R" -p "bip_hand_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.9660911224990405 3.3981591151080348 1.5474740923319779 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -176.87589629592046 43.789667966965979 151.35001943964053 ;
	setAttr ".bps" -type "matrix" 0.41138114154404842 0.72327406830719965 0.55465320561254172 0
		 -0.34885413952054328 -0.43725114269359033 0.82892232902276863 0 0.84206077317572336 -0.53449608074101207 0.072440278514101925 0
		 -30.954354616770768 65.888459657113501 14.342072503491517 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_pinky_1_R" -p "bip_pinky_0_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.5496894200903739e-005 1.4377946615243005 -5.6739299409969135e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 24.348262730400947 0 0 ;
	setAttr ".bps" -type "matrix" 0.41138114154404842 0.72327406830719965 0.55465320561254172 0
		 0.029340670902549881 -0.61872348985518522 0.78506074168334838 0 0.91099104354154004 -0.30668528692419128 -0.27575252196729344 0
		 -31.45595461677075 65.259759657113491 15.533872503491521 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_pinky_2_R" -p "bip_pinky_1_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -7.12716539652547e-006 1.0594207613231772 2.0654512734807895e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 18.453507192123272 0 0 ;
	setAttr ".bps" -type "matrix" 0.41138114154404842 0.72327406830719965 0.55465320561254172 0
		 0.31619257712210525 -0.68398587297699509 0.65740822913983943 0 0.85486128146898621 -0.095068121272332023 -0.51007278084892171 0
		 -31.424854616770766 64.604259657113502 16.365572503491521 1;
	setAttr ".radi" 0.3;
createNode joint -n "bip_pinkyEnd_R" -p "bip_pinky_2_R";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.004031608393575e-005 1.3896717487942318 -1.4196236744368207e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.3;
createNode transform -n "weapon_bone" -p "bip_hand_R";
	setAttr ".t" -type "double3" 2.740992224742 2.7325510556732207 -1.1223452953716322 ;
	setAttr ".r" -type "double3" 9.8019056612107496e-005 12.141558487213446 -0.17800982600763718 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999911 0.99999999999999889 ;
createNode vstAttachment -n "weapon_bone" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone";
	setAttr -k off ".v";
	setAttr ".typ" 0;
createNode transform -n "weapon_bone_1" -p "bip_hand_R";
	setAttr ".t" -type "double3" 3.1188214636615443 2.7313741170650365 0.63386322952577601 ;
	setAttr ".r" -type "double3" 9.8019056612107496e-005 12.141558487213446 -0.17800982600763718 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999911 0.99999999999999889 ;
createNode vstAttachment -n "weapon_bone_1" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_1";
	setAttr -k off ".v";
	setAttr ".typ" 0;
createNode transform -n "weapon_bone_2" -p "bip_hand_R";
	setAttr ".t" -type "double3" 3.4245703522671178 2.7304217088489722 2.0550311787890916 ;
	setAttr ".r" -type "double3" 9.8019056612107496e-005 12.141558487213446 -0.17800982600763718 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999911 0.99999999999999889 ;
createNode vstAttachment -n "weapon_bone_2" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_2";
	setAttr -k off ".v";
	setAttr ".typ" 0;
createNode transform -n "weapon_bone_3" -p "bip_hand_R";
	setAttr ".t" -type "double3" 3.7612179105567005 2.7293730512336012 3.6198209061398905 ;
	setAttr ".r" -type "double3" 9.8019056612107496e-005 12.141558487213446 -0.17800982600763718 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999911 0.99999999999999889 ;
createNode vstAttachment -n "weapon_bone_3" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_3";
	setAttr -k off ".v";
	setAttr ".typ" 0;
createNode transform -n "effect_hand_R" -p "bip_hand_R";
	setAttr ".t" -type "double3" 1.191 3.984 -0.394 ;
	setAttr ".r" -type "double3" -166.1 -216.635 -184.421 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999911 0.99999999999999889 ;
createNode vstAttachment -n "effect_hand_R" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|effect_hand_R";
	setAttr -k off ".v";
	setAttr ".typ" 0;
createNode joint -n "prp_wristOuter_R" -p "bip_lowerArm_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -1.72507877437831 13.709135572155434 1.1485831910545201 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.00013058663104996443 42.792804551460613 -0.17794172820711798 ;
	setAttr ".bps" -type "matrix" 0.63378257793418247 -0.66161786799157163 0.40072614172448212 0
		 -0.47608577681558967 0.074652149103755117 0.87622450875793678 0 -0.60964085904817666 -0.74611584448293189 -0.26767362513053666 0
		 -29.499604760032454 69.379649335495088 11.737700579664237 1;
createNode joint -n "prp_wristInner_R" -p "bip_lowerArm_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 2.5775728054310756 13.695775631130957 -1.9519251099728443 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.00011302501833136024 32.023152907915104 -0.17797050925725794 ;
	setAttr ".bps" -type "matrix" 0.50870126735680643 -0.78938431882642612 0.34365013863014593 0
		 -0.47608577681540953 0.074652149103858895 0.87622450875802571 0 -0.71733210837355321 -0.60934346129675909 -0.33783900377433956 0
		 -26.558504760032452 65.413749335495112 13.673600579664241 1;
createNode joint -n "hlp_suitArmTop_R" -p "bip_upperArm_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 23.396363342333345 1.8876894005930528e-007 8.1673390050378454e-008 ;
	setAttr ".bps" -type "matrix" 0.049440737522715883 -0.99214165528792131 0.11493715376567269 0
		 -0.96173869926074951 -0.016242958724071471 0.27348645420958201 0 -0.26947038393384076 -0.12406088075792504 -0.95498408889788144 0
		 -10.516505957548581 69.789627371515635 -3.6834453498001114 1;
createNode vstHelperBone -n "hlp_suitArmTop_RShape" -p "hlp_suitArmTop_R";
	setAttr -k off ".v" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tda" -type "double3" 1.6796334258933968e-006 0.99999999999834766 6.9535054739770634e-007 ;
	setAttr ".bt" -type "double3" -2.9657592869743992 0.41624719781298225 0.52064955299874649 ;
	setAttr -s 3 ".trg";
	setAttr ".trg[0].tl" 90;
	setAttr ".trg[0].ta" -type "double3" -28.219804506012448 9.7515686355622044 9.7676868508184036 ;
	setAttr ".trg[0].tn" -type "string" "Bind";
	setAttr ".trg[1].tl" 45;
	setAttr ".trg[1].ta" -type "double3" -11.036545641414509 -27.77646677638905 -75.038726636462243 ;
	setAttr ".trg[1].tt" -type "double3" 1.3009048828975223 -1.3272984576163671 0.016058944044885948 ;
	setAttr ".trg[2].tl" 45;
	setAttr ".trg[2].ta" -type "double3" -27.356043276698795 -12.108344030627725 -29.818403419764472 ;
	setAttr ".trg[2].tt" -type "double3" 0.30581004371326959 -1.3651788573307586 0.016059146792255508 ;
createNode joint -n "hlp_suitArmpitBack_R" -p "bip_upperArm_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 30.226344198163016 0 0 ;
	setAttr ".pa" -type "double3" 23.396363342333345 1.8876894005930528e-007 8.1673390050378454e-008 ;
	setAttr ".bps" -type "matrix" 0.049440737522715883 -0.99214165528792131 0.11493715376567269 0
		 -0.96664004817363725 -0.076489012959995134 -0.24445132064129699 0 0.25132176734234224 -0.099017002272082974 -0.96282553067571508 0
		 -9.8000459671124691 63.1077273960491 -3.4755953611265733 1;
createNode vstHelperBone -n "hlp_suitArmpitBack_RShape" -p "hlp_suitArmpitBack_R";
	setAttr -k off ".v" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tda" -type "double3" 1.6796334258933968e-006 0.99999999999834766 6.9535054739770634e-007 ;
	setAttr ".bt" -type "double3" 3.722944037709667 -0.10742212525353523 0.95805375798445613 ;
	setAttr -s 3 ".trg";
	setAttr ".trg[0].tl" 45;
	setAttr ".trg[0].ta" -type "double3" -28.219804506012448 9.7515686355622044 9.7676868508184036 ;
	setAttr ".trg[0].tn" -type "string" "Bind";
	setAttr ".trg[1].tl" 45;
	setAttr ".trg[1].ta" -type "double3" -11.036545641414504 -27.776466776389036 -75.038726636462243 ;
	setAttr ".trg[1].tt" -type "double3" -1.3873071452296162 3.0785138756266144 1.2964847387375196 ;
	setAttr ".trg[2].tl" 45;
	setAttr ".trg[2].ta" -type "double3" -27.356043276698781 -12.108344030627725 -29.818403419764479 ;
	setAttr ".trg[2].tt" -type "double3" -0.4924999523474427 1.6103656706566314 0.64824071503754688 ;
createNode transform -n "flag" -p "bip_spine_2";
	setAttr ".t" -type "double3" 0 -1.3947911986181936 8.9489406973396619 ;
	setAttr ".r" -type "double3" 1.4945339089219301 -0.077365642394714745 2.9626411436661 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999933 ;
createNode vstAttachment -n "flag" -p "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|flag";
	setAttr -k off ".v";
createNode joint -n "medal_bone" -p "bip_spine_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.3880272857779108 -2.0542660191357101 -7.4520472762140777 ;
	setAttr ".r" -type "double3" -22.139235379884411 12.465229668682591 -3.825935938703505 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.12747618415779 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode joint -n "bip_hip_L" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.0061242487641913 3.1500447774815541 -0.861550936762982 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -174.8236327699536 -11.979088111364792 -6.6450347245753543 ;
	setAttr ".bps" -type "matrix" 0.96057560888731219 0.1633436110027606 -0.22497414152597225 0
		 -0.23598877037581883 0.90685333909890109 -0.34917949771096668 0 0.14698231140949716 0.38850467964974722 0.90964845628570679 0
		 5.0061242487641913 43.539607071174473 0 1;
createNode joint -n "bip_knee_L" -p "bip_hip_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -22.299508110324265 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4160519598086654 0 0 ;
	setAttr ".bps" -type "matrix" 0.96057560888731219 0.1633436110027606 -0.22497414152597225 0
		 -0.0087136334073509014 0.82649522272412967 0.56287629138828899 0 0.27788229919088342 -0.53872489413314706 0.79533446815639675 0
		 10.268557747705213 23.317223681063886 7.7865310411646549 1;
createNode joint -n "bip_foot_L" -p "bip_knee_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.0817958690244609e-008 -18.04493299205037 4.9542037139360673e-010 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081718 -0.7995306279977471 -6.5822866026390843 ;
	setAttr ".bps" -type "matrix" 0.95902714300122993 0.060001777595216729 -0.27688756864892383 0
		 -0.27633425893522423 0.41370475506772014 -0.86746051954718884 0 0.062500530602697973 0.90843170481867941 0.41333463604518977 0
		 10.425794698793043 8.4031727718908051 -2.3705339240403154 1;
createNode joint -n "bip_toe_L" -p "bip_foot_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -7.0709615098339693 0 ;
	setAttr -av ".ty";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.817444586876601 0 0 ;
	setAttr ".bps" -type "matrix" 0.95902714300122993 0.060001777595216729 -0.27688756864892383 0
		 -0.27803994304974622 0.011625927992065521 -0.96049915557860743 0 -0.054412581778410574 0.99813056484797524 0.027832471332426278 0
		 12.379743607572507 5.4778823723716661 3.7632460209784346 1;
createNode joint -n "bip_toeEnd_L" -p "bip_toe_L";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 -4.4316522744662112 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "prp_pantsFront_L" -p "bip_knee_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.21990804124939278 -17.39022666162349 3.2877595969484554 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081718 -0.7995306279977471 -6.5822866026390843 ;
	setAttr ".bps" -type "matrix" 0.95902714300122993 0.060001777595216715 -0.27688756864892383 0
		 -0.22617187912888576 0.75073116415809105 -0.62068429998925112 0 0.17062596542791206 0.65787727263316509 0.73354227831430519 0
		 11.208175841472148 8.334986858947147 1.2187750409461318 1;
createNode joint -n "prp_pantsBack_L" -p "bip_knee_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.25569978766978524 -18.439151061544454 -2.7803390056974031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081718 -0.7995306279977471 -6.5822866026390843 ;
	setAttr ".bps" -type "matrix" 0.95902714300122993 0.060001777595216715 -0.27688756864892383 0
		 -0.22617187912888576 0.75073116415809105 -0.62068429998925112 0 0.17062596542791206 0.65787727263316509 0.73354227831430519 0
		 9.3637847425576393 8.8735571429271047 -5.0527450574224053 1;
createNode joint -n "bip_hip_R" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.00612 3.1500518482366573 -0.86155101377391818 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.176367230046222 11.979088111364767 6.6450347245753365 ;
	setAttr ".bps" -type "matrix" 0.9605756088873123 -0.16334361100276026 0.22497414152597203 0
		 -0.23598877037581889 -0.90685333909889987 0.3491794977109694 0 0.14698231140949639 -0.38850467964974988 -0.90964845628570556 0
		 -5.0061200000000001 43.5396 0 1;
createNode joint -n "bip_knee_R" -p "bip_hip_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -4.2188898856210244e-005 22.299533783232327 5.6528051728399475e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4160519598085712 0 0 ;
	setAttr ".bps" -type "matrix" 0.9605756088873123 -0.16334361100276026 0.22497414152597203 0
		 -0.0087136334073519423 -0.82649522272413201 -0.56287629138828543 0 0.27788229919088303 0.53872489413314351 -0.79533446815639919 0
		 -10.268599999999999 23.317199999999993 7.7865300000000044 1;
createNode joint -n "bip_foot_R" -p "bip_knee_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.3175158620224465e-005 18.044912593944311 1.7582851311814807e-005 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081476 -0.7995306279976796 -6.5822866026390789 ;
	setAttr ".bps" -type "matrix" 0.95902714300122982 -0.060001777595216882 0.27688756864892411 0
		 -0.27633425893522456 -0.41370475506772042 0.86746051954718861 0 0.062500530602698029 -0.9084317048186793 -0.41333463604518994 0
		 -10.425799999999997 8.4031700000000011 -2.3705300000000022 1;
createNode joint -n "bip_toe_R" -p "bip_foot_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 4.6896098808701936e-005 7.0709478770737393 2.6711631593290264e-006 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.817444586876533 0 0 ;
	setAttr ".bps" -type "matrix" 0.95902714300122982 -0.060001777595216882 0.27688756864892411 0
		 -0.27803994304974661 -0.011625927992066964 0.96049915557860721 0 -0.054412581778410345 -0.99813056484797502 -0.027832471332427611 0
		 -12.379699999999994 5.477879999999999 3.7632500000000002 1;
createNode joint -n "bip_toeEnd_R" -p "bip_toe_R";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -2.509818908791317e-005 4.4316508862803916 -5.4918057368347206e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "prp_pantsFront_R" -p "bip_knee_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.21992239035317457 17.390200958228949 -3.2877448914494236 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081476 -0.7995306279976796 -6.5822866026390789 ;
	setAttr ".bps" -type "matrix" 0.95902714300122982 -0.060001777595216882 0.27688756864892405 0
		 -0.22617187912888601 -0.75073116415809105 0.62068429998925079 0 0.17062596542791217 -0.65787727263316509 -0.73354227831430519 0
		 -11.2082 8.334990000000003 1.2187799999999998 1;
createNode joint -n "prp_pantsBack_R" -p "bip_knee_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.25573971722664218 18.439130914418101 2.7803694644182486 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -73.952305249081476 -0.7995306279976796 -6.5822866026390789 ;
	setAttr ".bps" -type "matrix" 0.95902714300122982 -0.060001777595216882 0.27688756864892405 0
		 -0.22617187912888601 -0.75073116415809105 0.62068429998925079 0 0.17062596542791217 -0.65787727263316509 -0.73354227831430519 0
		 -9.3637799999999984 8.8735599999999994 -5.0527500000000032 1;
createNode joint -n "hlp_thigh_L" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.37598925560837 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1.0000000000000002 0 0 0 0 1.0000000000000002 0
		 4.2951831817626953 43.048092414295326 5.2513569892849574 1;
createNode vstHelperBone -n "hlp_thigh_LShape" -p "hlp_thigh_L";
	setAttr -k off ".v" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tda" -type "double3" -2.9872130429042333e-017 -1 -1.9914753619361556e-017 ;
	setAttr ".bt" -type "double3" 4.2951831817626953 3.5843386650085449 -6.1179494857788086 ;
	setAttr -s 3 ".trg";
	setAttr ".trg[0].tl" 45;
	setAttr ".trg[0].ta" -type "double3" 158.368 -13.1052 -9.50804 ;
	setAttr ".trg[0].tt" -type "double3" -1.34362e-007 -3.6257300000000001e-008 -1.4030000000000001e-007 ;
	setAttr ".trg[1].tl" 49.09;
	setAttr ".trg[1].ta" -type "double3" 107.316 -13.1052 -9.50804 ;
	setAttr ".trg[1].tt" -type "double3" 0.218671 -3.43551 -0.360505 ;
	setAttr ".trg[2].tl" 70.662;
	setAttr ".trg[2].ta" -type "double3" 84.15 -9.32706 -9.51274 ;
	setAttr ".trg[2].tt" -type "double3" 0.218671 -6.38827 -0.840956 ;
createNode joint -n "hlp_thigh_R" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.62401074439105964 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1.0000000000000002 -9.7821056810332152e-015 0
		 0 9.7821056810332152e-015 -1.0000000000000002 0 -4.2951798439025879 43.048100012078478 5.2513599332286427 1;
createNode vstHelperBone -n "hlp_thigh_RShape" -p "hlp_thigh_R";
	setAttr -k off ".v" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".tda" -type "double3" -1.8919184260191918e-006 0.99999999999820988 2.5349432169940269e-008 ;
	setAttr ".bt" -type "double3" -4.2951798439025879 3.5843310356140137 -6.1179523468017578 ;
	setAttr -s 3 ".trg";
	setAttr ".trg[0].tl" 45;
	setAttr ".trg[0].ta" -type "double3" -21.6315 13.1052 9.50804 ;
	setAttr ".trg[1].tl" 49.09;
	setAttr ".trg[1].ta" -type "double3" -72.6841 13.1052 9.50804 ;
	setAttr ".trg[1].tt" -type "double3" -0.218674 -4.61789 -0.552891 ;
	setAttr ".trg[2].tl" 70.662;
	setAttr ".trg[2].ta" -type "double3" -95.8541 13.1052 9.50804 ;
	setAttr ".trg[2].tt" -type "double3" -0.218675 -5.37565 -0.676189 ;
createNode joint -n "prp_coat_front_0_L" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 8.0614333152770996 -0.72744149624841015 -1.1535807343154252 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 31.161332342304163 67.170574714197656 -159.87992955812487 ;
	setAttr ".pa" -type "double3" 3.1740344519320276 2.0536446140913498e-007 1.1388299415222949e-008 ;
	setAttr ".bps" -type "matrix" -0.36431148677367853 0.1234181989688538 0.92306288451439567 0
		 -0.15345463620951599 0.96967507475575876 -0.19021546736061939 0 -0.91854712194342925 -0.21094595886316042 -0.33432467334724919 0
		 8.0614333152770996 47.41368293762207 0.33424150943756104 1;
createNode joint -n "prp_coat_frontEnd_L" -p "prp_coat_front_0_L";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -7.6064314680593457 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "prp_coat_back_0_L" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.7543477326084851 0.93809252733552029 3.9646855885757626 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.02001914640761 11.285138484711998 -6.0396777134551014 ;
	setAttr ".pa" -type "double3" 3.3642778662391044 2.05325516007227e-007 1.2070122194942519e-008 ;
	setAttr ".bps" -type "matrix" 0.97522204163322102 0.10104546029249888 0.196803923911616 0
		 -0.10853011150386001 0.99371004672219898 0.027596339255864619 0 -0.19277755162282723 -0.048271710117232164 0.98005441562837015 0
		 3.7543477326084851 45.8039898433465 -4.801860307894267 1;
createNode joint -n "prp_coat_backEnd_L" -p "prp_coat_back_0_L";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -9.7170945471936623 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "prp_coat_front_0_R" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -8.0614333152770996 -0.72744149624841015 -1.1535807343154252 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 31.161331852674731 -67.170574679414187 159.87992986330804 ;
	setAttr ".pa" -type "double3" -176.8259664411957 -2.0536446158665596e-007 -1.1388296213997737e-008 ;
	setAttr ".bps" -type "matrix" -0.36431148800995028 -0.12341819722350726 -0.92306288425982952 0
		 0.15345463339908022 0.96967507570233791 -0.19021546480246873 0 0.91854712192262067 -0.21094595553308149 -0.33432467550557143 0
		 -8.0614333152770996 47.41368293762207 0.33424150943756104 1;
createNode joint -n "prp_coat_frontEnd_R" -p "prp_coat_front_0_R";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -7.606447150778874 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "prp_coat_back_0_R" -p "bip_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.7543481345544087 0.93809252740880567 3.9646855733137243 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.02001872655487 -11.285138581369731 6.0396775325167589 ;
	setAttr ".pa" -type "double3" 3.3642778662391044 2.05325516007227e-007 1.2070122194942519e-008 ;
	setAttr ".bps" -type "matrix" 0.97522204163077053 -0.10104545716020881 -0.19680392553197723 0
		 0.10853010980576633 0.99371004670827223 0.027596346435574019 0 0.19277755259121832 -0.048271716960641878 0.98005441510082103 0
		 -3.7543481345544087 45.803989843107004 -4.8018602926339318 1;
createNode joint -n "prp_coat_backEnd_R" -p "prp_coat_back_0_R";
	setAttr -k off ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -9.7170945471936623 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "mvm" -p "bip_pelvis";
	setAttr ".t" -type "double3" 4.8578173974257055 -0.72752373248555813 3.300364608798025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.28594932393158567 -26.157429618724851 -179.53916428057326 ;
createNode transform -n "prop_bone" -p "bip_pelvis";
createNode vstAttachment -n "prop_bone" -p "|spyInfo_group|bip_pelvis|prop_bone";
	setAttr -k off ".v";
	setAttr ".typ" 0;
createNode transform -n "prop_bone_1" -p "bip_pelvis";
createNode vstAttachment -n "prop_bone_1" -p "|spyInfo_group|bip_pelvis|prop_bone_1";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 46.687069653350832 -1.3357332542372329 ;
	setAttr ".typ" 0;
createNode transform -n "prop_bone_2" -p "bip_pelvis";
createNode vstAttachment -n "prop_bone_2" -p "|spyInfo_group|bip_pelvis|prop_bone_2";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 46.687069653350832 -1.3357332542372329 ;
	setAttr ".typ" 0;
createNode transform -n "prop_bone_3" -p "bip_pelvis";
createNode vstAttachment -n "prop_bone_3" -p "|spyInfo_group|bip_pelvis|prop_bone_3";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 46.687069653350832 -1.3357332542372329 ;
	setAttr ".typ" 0;
createNode transform -n "prop_bone_4" -p "bip_pelvis";
createNode vstAttachment -n "prop_bone_4" -p "|spyInfo_group|bip_pelvis|prop_bone_4";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 46.687069653350832 -1.3357332542372329 ;
	setAttr ".typ" 0;
createNode transform -n "prop_bone_5" -p "bip_pelvis";
createNode vstAttachment -n "prop_bone_5" -p "|spyInfo_group|bip_pelvis|prop_bone_5";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 46.687069653350832 -1.3357332542372329 ;
	setAttr ".typ" 0;
createNode transform -n "prop_bone_6" -p "bip_pelvis";
createNode vstAttachment -n "prop_bone_6" -p "|spyInfo_group|bip_pelvis|prop_bone_6";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 46.687069653350832 -1.3357332542372329 ;
	setAttr ".typ" 0;
createNode transform -n "hands_mesh" -p "spyInfo_group";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "hands_meshShape" -p "hands_mesh";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr ".ns" 0.035;
	setAttr ".tgsp" 1;
createNode mesh -n "hands_meshOrig1" -p "hands_mesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 438 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.077800035 0.63130951 0.075569607
		 0.62342745 0.095355831 0.43506277 0.10677721 0.42597705 0.023538314 0.620866 0.017925534
		 0.60884011 0.043355603 0.59081537 0.048828453 0.60535794 0.081342459 0.64318943 0.11737731
		 0.42048109 0.13200329 0.40719381 0.14157714 0.41126975 0.16628015 0.61599535 0.15599146
		 0.63097835 0.1729836 0.46634278 0.14026722 0.60580397 0.015635291 0.57733941 0.028028924
		 0.58159286 0.014330153 0.60159218 0.010127825 0.5964852 0.081306621 0.44196969 0.067524843
		 0.45250282 0.051442679 0.43622816 0.069522791 0.42620388 0.022480033 0.53740215 0.022471346
		 0.51929092 0.044538841 0.52050036 0.040529557 0.54042733 0.093989059 0.44965497 0.068865553
		 0.59288782 0.074225686 0.61072469 0.052580521 0.62034935 0.066637792 0.52705622 0.062571846
		 0.54705364 0.19312154 0.54324198 0.18253246 0.56869417 0.19227175 0.57053387 0.18901251
		 0.5755918 0.056259856 0.57052284 0.098781697 0.53345209 0.096794493 0.54970145 0.15733893
		 0.52201039 0.12443253 0.52229762 0.13181822 0.50154728 0.1616427 0.51049232 0.18042786
		 0.4893443 0.17634174 0.49556926 0.17338204 0.49095893 0.14202394 0.5506326 0.14825855
		 0.53899038 0.15297326 0.54111856 0.14570504 0.5518555 0.10586119 0.50016218 0.075971201
		 0.48782399 0.10722374 0.48276713 0.17829052 0.47467288 0.17110351 0.4755908 0.10393241
		 0.5165391 0.070769727 0.51169425 0.12148131 0.54005045 0.081670403 0.41954899 0.16496681
		 0.58359033 0.19888473 0.50633556 0.16825892 0.50133944 0.14041872 0.58011615 0.18563776
		 0.56092119 0.16587925 0.55671734 0.17047097 0.54623401 0.18977115 0.55136347 0.20612809
		 0.49601895 0.20159455 0.48622149 0.035812534 0.56461412 0.078178495 0.4647865 0.105778
		 0.46470809 0.11671562 0.46501461 0.12870602 0.45848942 0.13270494 0.47768059 0.11718173
		 0.48164138 0.22802155 0.53392887 0.21133707 0.53169984 0.21651338 0.51996017 0.23234737
		 0.52277553 0.11182149 0.61638969 0.15571268 0.49806729 0.23508126 0.43393388 0.22481222
		 0.4375926 0.22209701 0.42484638 0.23231667 0.42225024 0.2001249 0.47181255 0.11783748
		 0.57679182 0.18161401 0.60368007 0.18539961 0.58638024 0.25367874 0.4793587 0.24505311
		 0.48046064 0.2433902 0.46602619 0.25137323 0.46500641 0.046800718 0.50916278 0.19227175
		 0.57053387 0.20847696 0.48540771 0.11506206 0.49924195 0.18103071 0.43586895 0.19040799
		 0.43290582 0.19560784 0.44798827 0.18585227 0.45108619 0.20704854 0.47092816 0.17578524
		 0.63737583 0.22707129 0.46811077 0.09376096 0.57179552 0.092435338 0.5908587 0.18485467
		 0.62327087 0.23573455 0.51361698 0.16527431 0.44241685 0.17130615 0.45688713 0.22885057
		 0.48253033 0.23046982 0.49515831 0.11505263 0.43885663 0.086901948 0.62666643 0.068701029
		 0.64848828 0.071962588 0.6647746 0.10302879 0.4047035 0.12433998 0.39416096 0.1532063
		 0.47201976 0.15691467 0.43026948 0.1134266 0.63986915 0.12594371 0.64692718 0.11224298
		 0.44693092 0.19609223 0.56291938 0.19723654 0.62926823 0.24119075 0.45268813 0.11020565
		 0.51615471 0.10478162 0.53335261 0.15910129 0.44524664 0.16501792 0.45944941 0.2466082
		 0.49316406 0.18901251 0.5755918 0.16220319 0.5555315 0.16617154 0.54558098 0.19763637
		 0.516765 0.19179359 0.51572752 0.15847452 0.53001821 0.14317165 0.52734864 0.16355102
		 0.5230118 0.033308912 0.63442415 0.20794395 0.42797756 0.22068664 0.50991005 0.14120674
		 0.65601921 0.040503666 0.63909966 0.057884134 0.62729746 0.091932155 0.61236668 0.098611541
		 0.63364303 0.1202479 0.5550763 0.16018729 0.56564838 0.13938515 0.59769773 0.063366868
		 0.63724422 0.1370838 0.57492536 0.1568 0.57494396 0.19312154 0.54324198 0.02247135
		 0.47922277 0.042849705 0.47365215 0.045870826 0.4894053 0.02247135 0.49416441 0.051392727
		 0.45948485 0.03822821 0.44364524 0.008089113 0.53621721 0.2040125 0.54750657 0.13871118
		 0.56395513 0.062571846 0.54705364 0.1568 0.57494396 0.022480033 0.53740215 0.13871118
		 0.56395513 0.0043100473 0.59302211 0.045819215 0.648103 0.17252627 0.4652651 0.15402001
		 0.66180718 0.15599146 0.63097835 0.19422415 0.52838743 0.1729836 0.46634278 0.15571268
		 0.49806729 0.020164911 0.5575487 0.12596473 0.44489157 0.14157714 0.41126975 0.19993916
		 0.60546905 0.17578524 0.63737583 0.20016329 0.55492467 0.20843758 0.54160452 0.22527172
		 0.54418987 0.18624246 0.53746766 0.18770182 0.52733767 0.24119075 0.45268813 0.24054518
		 0.52448541 0.23497081 0.53440332 0.16847686 0.51222295 0.20245938 0.58948755 0.19305536
		 0.45890173 0.21467395 0.45259029 0.21052606 0.44225904 0.12472028 0.43373349 0.16234529
		 0.60079259 0.081342459 0.64318943 0.15629746 0.53274536 0.22039133 0.41089231 0.15329649
		 0.64607102 0.16415299 0.65487438 0.13308676 0.38636896 0.14072295 0.39728579 0.20747006
		 0.55797684 0.20432492 0.56532526 0.16018729 0.56564838 0.022471348 0.51050997 0.031602725
		 0.45640466 0.022471346 0.4592911 0.094793662 0.41108608 0.0080586718 0.51722533 0.13765621
		 0.63612205 0.12573032 0.62712282 0.22897986 0.44857681 0.0080586718 0.51722533 0.008089113
		 0.53621721 0.0087260399 0.55436414 0.0073519736 0.57552922 0.0043100473 0.59302211
		 0.0080586718 0.47777009 0.0080586718 0.4575631 0.0080586718 0.49820298 0.0087260399
		 0.55436414 0.060333822 0.67194015 0.050610572 0.65791398 0.0073519736 0.57552922
		 0.077800035 0.63130951 0.10677721 0.42597705 0.095355831 0.43506277 0.075569607 0.62342745
		 0.023538314 0.620866 0.048828453 0.60535794 0.043355603 0.59081537 0.017925534 0.60884011
		 0.13545424 0.4249095 0.083487339 0.65927827 0.13200329 0.40719381 0.11737731 0.42048109
		 0.16628015 0.61599535 0.14026722 0.60580397 0.12974219 0.62085253 0.20189719 0.4604052
		 0.015635291 0.57733941 0.010127825 0.5964852 0.014330153 0.60159218 0.028028924 0.58159286
		 0.081306621 0.44196969 0.069522791 0.42620388;
	setAttr ".uvst[0].uvsp[250:437]" 0.051442679 0.43622816 0.067524843 0.45250282
		 0.040529557 0.54042733 0.044538841 0.52050036 0.022471346 0.51929092 0.093989059
		 0.44965497 0.052580521 0.62034935 0.074225686 0.61072469 0.068865553 0.59288782 0.066637792
		 0.52705622 0.17975472 0.57494956 0.2040125 0.54750657 0.18253246 0.56869417 0.056259856
		 0.57052284 0.096794493 0.54970145 0.098781697 0.53345209 0.15733893 0.52201039 0.1616427
		 0.51049232 0.13181822 0.50154728 0.12443253 0.52229762 0.18042786 0.4893443 0.17338204
		 0.49095893 0.17634174 0.49556926 0.14202394 0.5506326 0.14570504 0.5518555 0.15297326
		 0.54111856 0.14825855 0.53899038 0.10586119 0.50016218 0.10722374 0.48276713 0.075971201
		 0.48782399 0.17110351 0.4755908 0.17829052 0.47467288 0.10393241 0.5165391 0.070769727
		 0.51169425 0.12148131 0.54005045 0.081670403 0.41954899 0.16496681 0.58359033 0.14041872
		 0.58011615 0.16825892 0.50133944 0.19888473 0.50633556 0.18563776 0.56092119 0.18977115
		 0.55136347 0.17047097 0.54623401 0.16587925 0.55671734 0.20612809 0.49601895 0.20159455
		 0.48622149 0.035812534 0.56461412 0.105778 0.46470809 0.078178495 0.4647865 0.11671562
		 0.46501461 0.11718173 0.48164138 0.13270494 0.47768059 0.12870602 0.45848942 0.22802155
		 0.53392887 0.23234737 0.52277553 0.21651338 0.51996017 0.21133707 0.53169984 0.11787487
		 0.59505361 0.11182149 0.61638969 0.23508126 0.43393388 0.23231667 0.42225024 0.22209701
		 0.42484638 0.22481222 0.4375926 0.2001249 0.47181255 0.11783748 0.57679182 0.22068664
		 0.50991005 0.18539961 0.58638024 0.25367874 0.4793587 0.25137323 0.46500641 0.2433902
		 0.46602619 0.24505311 0.48046064 0.046800718 0.50916278 0.20847696 0.48540771 0.11506206
		 0.49924195 0.18103071 0.43586895 0.18585227 0.45108619 0.19560784 0.44798827 0.19040799
		 0.43290582 0.20704854 0.47092816 0.22707129 0.46811077 0.22487187 0.45477265 0.092435338
		 0.5908587 0.09376096 0.57179552 0.18485467 0.62327087 0.20524627 0.41474667 0.16527431
		 0.44241685 0.17130615 0.45688713 0.23046982 0.49515831 0.22885057 0.48253033 0.16234529
		 0.60079259 0.086901948 0.62666643 0.083487339 0.65927827 0.068701029 0.64848828 0.071962588
		 0.6647746 0.12433998 0.39416096 0.10302879 0.4047035 0.12472028 0.43373349 0.12594371
		 0.64692718 0.1134266 0.63986915 0.18787609 0.64102328 0.11224298 0.44693092 0.19609223
		 0.56291938 0.18787609 0.64102328 0.19723654 0.62926823 0.11020565 0.51615471 0.10478162
		 0.53335261 0.15910129 0.44524664 0.16501792 0.45944941 0.2466082 0.49316406 0.17975472
		 0.57494956 0.16220319 0.5555315 0.16617154 0.54558098 0.19179359 0.51572752 0.19763637
		 0.516765 0.14317165 0.52734864 0.15847452 0.53001821 0.16355102 0.5230118 0.033308912
		 0.63442415 0.20794395 0.42797756 0.14120674 0.65601921 0.13545424 0.4249095 0.040503666
		 0.63909966 0.057884134 0.62729746 0.060333822 0.67194015 0.091932155 0.61236668 0.20189719
		 0.4604052 0.098611541 0.63364303 0.1202479 0.5550763 0.18288767 0.42091465 0.063366868
		 0.63724422 0.15629746 0.53274536 0.18161401 0.60368007 0.12596473 0.44489157 0.02247135
		 0.47922277 0.02247135 0.49416441 0.045870826 0.4894053 0.042849705 0.47365215 0.03822821
		 0.44364524 0.051392727 0.45948485 0.0080586718 0.49820298 0.050610572 0.65791398
		 0.17157575 0.53682619 0.17157575 0.53682619 0.1370838 0.57492536 0.19993916 0.60546905
		 0.15691467 0.43026948 0.045819215 0.648103 0.11787487 0.59505361 0.17252627 0.4652651
		 0.1532063 0.47201976 0.13938515 0.59769773 0.19422415 0.52838743 0.020164911 0.5575487
		 0.22487187 0.45477265 0.23573455 0.51361698 0.20016329 0.55492467 0.20843758 0.54160452
		 0.22527172 0.54418987 0.22039133 0.41089231 0.20524627 0.41474667 0.18770182 0.52733767
		 0.18624246 0.53746766 0.11505263 0.43885663 0.24054518 0.52448541 0.23497081 0.53440332
		 0.16847686 0.51222295 0.20245938 0.58948755 0.19305536 0.45890173 0.21467395 0.45259029
		 0.21052606 0.44225904 0.12974219 0.62085253 0.15402001 0.66180718 0.16415299 0.65487438
		 0.15329649 0.64607102 0.14072295 0.39728579 0.13308676 0.38636896 0.20747006 0.55797684
		 0.20432492 0.56532526 0.18288767 0.42091465 0.022471348 0.51050997 0.031602725 0.45640466
		 0.022471346 0.4592911 0.0080586718 0.47777009 0.094793662 0.41108608 0.13765621 0.63612205
		 0.12573032 0.62712282 0.0080586718 0.4575631 0.22897986 0.44857681;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 25 ".pt";
	setAttr ".pt[175:176]" -type "float3" 0.054798126 0.054428101 0.051836014  
		9.5367432e-006 -7.6293945e-006 -1.7166138e-005 ;
	setAttr ".pt[195:198]" -type "float3" 9.5367432e-006 -7.6293945e-006 -1.5258789e-005  
		9.5367432e-006 -7.6293945e-006 -1.7166138e-005  9.5367432e-006 -3.8146973e-006 -1.9073486e-005  
		9.5367432e-006 -7.6293945e-006 -1.7166138e-005 ;
	setAttr ".pt[208:211]" -type "float3" 0.0070343018 0.085632324 0.081138611  
		9.5367432e-006 0 -1.5258789e-005  9.5367432e-006 -7.6293945e-006 -1.5258789e-005  
		7.6293945e-006 -7.6293945e-006 -1.7166138e-005 ;
	setAttr ".pt[215:216]" -type "float3" 9.5367432e-006 -7.6293945e-006 -1.7166138e-005  
		1.1444092e-005 -7.6293945e-006 -1.7166138e-005 ;
	setAttr ".pt[225:228]" -type "float3" 9.5367432e-006 -7.6293945e-006 -1.7166138e-005  
		1.1444092e-005 -7.6293945e-006 -1.7166138e-005  1.1444092e-005 -7.6293945e-006 -1.7166138e-005  
		1.1444092e-005 -7.6293945e-006 -1.7166138e-005 ;
	setAttr ".pt[247]" -type "float3" 9.5367432e-006 -7.6293945e-006 -1.7166138e-005 ;
	setAttr ".pt[278]" -type "float3" 1.1444092e-005 -7.6293945e-006 -1.7166138e-005 ;
	setAttr ".pt[283:284]" -type "float3" 7.6293945e-006 0 -1.7166138e-005  9.5367432e-006 
		0 -1.7166138e-005 ;
	setAttr ".pt[294]" -type "float3" 9.5367432e-006 -7.6293945e-006 -1.7166138e-005 ;
	setAttr ".pt[296]" -type "float3" 9.5367432e-006 0 -1.5258789e-005 ;
	setAttr ".pt[302:303]" -type "float3" 9.5367432e-006 -7.6293945e-006 -1.8119812e-005  
		1.1444092e-005 0 -1.5258789e-005 ;
	setAttr ".pt[309]" -type "float3" 1.1444092e-005 -3.8146973e-006 -1.7166138e-005 ;
	setAttr -s 324 ".vt";
	setAttr ".vt[0:165]"  28.21396065 67.57497406 16.81086731 28.15269852 67.75861359 16.35625267
		 27.50831413 68.54091644 16.38108826 27.6055069 68.2765274 17.043519974 26.3631916 67.60111237 14.60520554
		 26.39713097 67.70391846 13.70608807 27.55835915 66.44281769 13.63362217 27.46252251 66.3082962 14.71275425
		 28.33516502 67.41758728 17.66771317 27.69281197 68.1809082 17.48085213 27.70695686 67.78120422 18.82246971
		 28.073055267 67.35094452 18.72372055 30.49030495 65.32518005 18.49414825 29.99897003 65.88438416 18.99711227
		 30.20901108 67.00090789795 18.029720306 30.81719971 66.18894196 17.40611839 26.51458359 67.62461853 12.27564335
		 27.26161575 67.095413208 12.86452961 26.46398544 68.0417099 13.047728539 26.21523285 68.37123108 12.45936108
		 27.29525757 68.6727066 16.021406174 27.17020416 68.70391846 14.74315071 26.45652962 67.75395203 15.96235847
		 28.52770996 66.6289444 10.89187813 29.030063629 67.42694092 10.60989285 29.78876114 67.38946533 11.64127159
		 28.83159065 66.1071167 11.86811256 28.054079056 68.89902496 15.93095303 28.57220078 66.72835541 14.84462261
		 28.47583008 67.37128448 15.91542721 27.34648132 66.60891724 15.75419712 30.5191021 66.88214111 12.5444994
		 29.55629921 65.70866394 12.64030933 30.77019119 64.10681915 17.036212921 31.073186874 63.62627411 16.65643501
		 30.97608757 63.42057037 16.99494934 30.74495125 63.78301239 17.30696297 28.58904076 66.62528229 13.68216228
		 31.20763588 66.26924133 13.57445431 30.5011425 65.24334717 13.94242191 31.87823296 66.049812317 16.22405052
		 31.36501884 66.55345154 15.042453766 30.99398422 67.40176392 15.89522934 31.42054558 66.78679657 16.84298325
		 31.61059189 66.53110504 17.75597763 31.67273712 66.79428864 17.49118805 32.10962296 65.15494537 15.29693031
		 31.79554939 65.81874084 15.85128117 31.74562073 65.61695862 16.010816574 32.090904236 64.98661041 15.48836517
		 30.69166756 68.11603546 14.92021942 29.46310234 68.99082184 14.21023273 29.89304733 68.93299866 15.48827362
		 31.053861618 67.34403229 18.37242889 31.07400322 67.57650757 18.11050224 31.073230743 67.1499939 14.19082928
		 30.41701126 67.58419037 13.11050415 31.65031052 65.72304535 14.44712353 26.60835266 67.56282043 16.471035
		 31.058002472 64.74298096 17.35679817 30.61566353 65.45748901 17.7969532 30.61658096 66.18990326 16.88263321
		 31.10556984 65.4710083 16.27815056 31.57710457 63.78869629 16.71655464 31.98173141 64.24006653 16.29054642
		 31.67773438 64.77753448 16.76461792 31.28022003 64.22119141 17.17729568 31.28651428 65.70162964 18.73585892
		 27.79525948 66.71595764 12.60941792 28.034759521 69.46572113 14.9364996 28.88221741 69.49627686 16.2584095
		 29.12827492 69.48196411 16.5489769 29.50829697 69.19094086 17.21302223 30.25712013 68.39229584 16.51218414
		 30.019563675 68.86347198 15.79829788 30.94378281 63.9788208 18.57277298 31.31091309 64.40595245 18.067905426
		 30.93358612 65.044151306 18.54590797 30.72299194 64.43278503 18.90169334 29.58931351 67.43254089 16.92349243
		 30.27674484 66.60606384 16.27608871 29.63717842 65.48432922 19.65894127 30.00047492981 65.70539856 19.81855011
		 29.63109398 66.079109192 20.21545982 29.25510216 65.86386871 20.025606155 30.79963112 66.27152252 19.26206589
		 30.67497444 65.76808167 15.4049778 30.30047035 64.76570129 18.32850266 30.72348213 64.13050079 17.8893261
		 30.18388176 64.32145691 19.63578415 30.5643959 64.4758606 19.79771614 30.2232399 64.90350342 20.17464066
		 29.80686569 64.73895264 19.99938583 29.67876625 68.010383606 11.91582394 31.19560242 65.48014832 18.94178772
		 30.89605331 67.97994232 15.21317101 29.78654671 67.5707016 19.28047943 29.79152489 67.17092896 19.61143303
		 30.32863998 66.66325378 19.11286926 30.41556168 67.044624329 18.75070572 30.70063591 66.023605347 19.43336868
		 29.67338181 65.16002655 19.55237579 30.37044144 65.44675446 19.86104012 29.89837456 66.073471069 14.67286396
		 29.45001411 66.84157562 15.22050953 30.18661118 64.62767792 19.038736343 29.95962143 68.44036102 18.65435028
		 30.63997459 67.76845551 18.070013046 30.87224197 64.87239075 19.3615303 28.48570251 68.29070282 16.6794281
		 27.54714775 66.44338989 17.67927933 27.51357841 66.74350739 18.70969772 26.796875 67.28531647 17.58198357
		 27.14786911 67.22961426 18.81435394 29.19717026 67.93173218 18.27866173 29.24769783 67.09614563 19.092061996
		 31.31814575 63.53215408 17.088947296 31.24716187 67.014381409 14.46376896 31.38370323 66.1216507 13.86664486
		 29.94581604 68.61946106 18.45113945 30.63383675 67.94910431 17.81113815 32.046657562 64.4091568 16.10931587
		 31.72758675 64.95444489 16.6224823 31.24337387 65.55301666 18.19536781 31.28451347 65.75148773 18.00054168701
		 31.94145584 65.86100769 16.52417564 29.70796013 66.68925476 19.87956619 29.12421799 66.3346405 19.58895683
		 27.32159996 66.73451233 16.21722984 28.74228668 67.59713745 16.19969559 28.82948875 68.24146271 17.37510109
		 30.93086052 65.19299316 14.65142632 31.35917091 64.11366272 16.10509491 27.40909767 66.64400482 16.87624741
		 31.031579971 65.41625214 15.87259197 27.014268875 69.36662292 12.26945019 27.45734406 69.23322296 13.027557373
		 28.49239159 69.14828491 12.61881828 27.99674225 69.11221313 11.66106987 27.088062286 68.6905899 13.77406216
		 31.37036705 64.82883453 15.32346153 31.0080318451 64.62232971 16.58241653 26.74168015 67.43746948 17.11772156
		 29.90387344 67.27170563 17.64655495 31.61453056 64.89820862 17.66375542 27.90166855 66.84117126 11.29179478
		 30.37425804 64.27464294 18.78725243 31.12559509 63.85939407 17.38497353 30.64655685 63.83741379 18.47247887
		 31.68968582 65.090461731 17.44482803 31.45861053 66.57341003 17.096450806 29.82297516 66.5375061 18.56248474
		 29.6178894 65.91075897 19.026422501 30.16091919 66.24615479 19.35906219 28.92137337 68.021499634 10.76900959
		 25.83391762 68.81864929 10.15141964 27.081115723 68.71291351 9.29259586 25.72979736 65.42941284 9.94609261
		 24.89572144 66.47198486 10.62071705 24.99582672 67.89272308 10.64489174 27.62635803 66.02116394 8.68559265
		 27.84932327 67.70983124 8.6770134 -28.21396065 67.57497406 16.81086731 -28.15269852 67.75861359 16.35625267
		 -27.50831413 68.54091644 16.38108826 -27.6055069 68.2765274 17.043519974;
	setAttr ".vt[166:323]" -26.3631916 67.60111237 14.60520554 -26.39713097 67.70391846 13.70608807
		 -27.55835915 66.44281769 13.63362217 -27.46252251 66.3082962 14.71275425 -28.33516502 67.41758728 17.66771317
		 -27.6928215 68.1809082 17.48086739 -27.70695686 67.78120422 18.82246971 -28.073055267 67.35094452 18.72372055
		 -30.49030495 65.32518005 18.49414825 -30.053768158 65.82995605 18.94527626 -30.20902061 67.00091552734 18.029737473
		 -30.81719971 66.18894196 17.40611839 -26.51458359 67.62461853 12.27564335 -27.26161575 67.095413208 12.86452961
		 -26.46398544 68.0417099 13.047728539 -26.21523285 68.37123108 12.45936108 -27.29525757 68.6727066 16.021406174
		 -27.17020416 68.70391846 14.74315071 -26.45652962 67.75395203 15.96235847 -28.52770996 66.6289444 10.89187813
		 -29.030063629 67.42694092 10.60989285 -29.78876114 67.38946533 11.64127159 -28.83159065 66.1071167 11.86811256
		 -28.054079056 68.89902496 15.93095303 -28.57220078 66.72835541 14.84462261 -28.47583008 67.37128448 15.91542721
		 -27.34648132 66.60891724 15.75419712 -30.5191021 66.88214111 12.5444994 -29.55629921 65.70866394 12.64030933
		 -30.77020073 64.10682678 17.03622818 -31.073196411 63.62628174 16.65645218 -30.97609711 63.42057419 16.99496841
		 -30.74496078 63.78302002 17.30698013 -28.58904076 66.62528229 13.68216228 -31.20763588 66.26924133 13.57445431
		 -30.5011425 65.24334717 13.94242191 -31.87823296 66.049812317 16.22405052 -31.36501884 66.55345154 15.042453766
		 -30.99398422 67.40176392 15.89522934 -31.42054558 66.78679657 16.84298325 -31.61059189 66.53110504 17.75597763
		 -31.67273712 66.79428864 17.49118805 -32.11665726 65.069313049 15.2157917 -31.79555893 65.81874084 15.85129642
		 -31.74563026 65.61696625 16.010831833 -32.090911865 64.98661804 15.48838234 -30.69166756 68.11603546 14.92021942
		 -29.46310234 68.99082184 14.21023273 -29.89304733 68.93299866 15.48827362 -31.053871155 67.34403992 18.37244606
		 -31.074014664 67.5765152 18.11051941 -31.073230743 67.1499939 14.19082928 -30.41701126 67.58419037 13.11050415
		 -31.65031052 65.72304535 14.44712353 -26.60835266 67.56282043 16.471035 -31.058002472 64.74298096 17.35679817
		 -30.61566353 65.45748901 17.7969532 -30.61658096 66.18990326 16.88263321 -31.10556984 65.4710083 16.27815056
		 -31.57711411 63.78870392 16.71657181 -31.98174286 64.24007416 16.29056358 -31.67774582 64.77754211 16.76463509
		 -31.28023148 64.22119904 17.17731285 -31.28651428 65.70162964 18.73585892 -27.79525948 66.71595764 12.60941792
		 -28.034759521 69.46572113 14.9364996 -28.88221741 69.49627686 16.2584095 -29.12827492 69.48196411 16.5489769
		 -29.50829697 69.19094086 17.21302223 -30.25712013 68.39229584 16.51218414 -30.019563675 68.86347198 15.79829788
		 -30.94378281 63.9788208 18.57277298 -31.31091309 64.40595245 18.067905426 -30.93358612 65.044151306 18.54590797
		 -30.72299194 64.43278503 18.90169334 -29.58931351 67.43254089 16.92349243 -30.27674484 66.60606384 16.27608871
		 -29.63717842 65.48432922 19.65894127 -30.00047492981 65.70539856 19.81855011 -29.63109398 66.079109192 20.21545982
		 -29.25510216 65.86386871 20.025606155 -30.79964066 66.27153015 19.26208305 -30.67497444 65.76808167 15.4049778
		 -30.30047035 64.76570129 18.32850266 -30.72348213 64.13050079 17.8893261 -30.18388176 64.32145691 19.63578415
		 -30.5643959 64.4758606 19.79771614 -30.2232399 64.90350342 20.17464066 -29.80686569 64.73895264 19.99938583
		 -29.67876625 68.010383606 11.91582394 -31.19560242 65.48014832 18.94178772 -30.89605331 67.97994232 15.21317101
		 -29.78655624 67.5707016 19.2804966 -29.79153442 67.17093658 19.61144829 -30.32863998 66.66325378 19.11286926
		 -30.41556168 67.044624329 18.75070572 -30.70064735 66.023612976 19.43338585 -29.67338181 65.16002655 19.55237579
		 -30.37044144 65.44675446 19.86104012 -29.89837456 66.073471069 14.67286396 -29.45001411 66.84157562 15.22050953
		 -30.18661118 64.62767792 19.038736343 -29.95962143 68.44036102 18.65435028 -30.63997459 67.76845551 18.070013046
		 -30.87224197 64.87239075 19.3615303 -28.48570251 68.29070282 16.6794281 -27.54714775 66.44338989 17.67927933
		 -27.51357841 66.74350739 18.70969772 -26.796875 67.28531647 17.58198357 -27.14786911 67.22961426 18.81435394
		 -29.19717026 67.93173218 18.27866173 -29.24769783 67.09614563 19.092061996 -31.3181572 63.53216171 17.088964462
		 -31.24716187 67.014381409 14.46376896 -31.38370323 66.1216507 13.86664486 -29.94581604 68.61946106 18.45113945
		 -30.63383675 67.94910431 17.81113815 -32.046665192 64.4091568 16.10933304 -31.72759628 64.95444489 16.62249947
		 -31.24337387 65.55301666 18.19536781 -31.28451347 65.75148773 18.00054168701 -31.94145584 65.86100769 16.52417564
		 -29.70796013 66.68925476 19.87956619 -29.12421799 66.3346405 19.58895683 -27.32159996 66.73451233 16.21722984
		 -28.74228668 67.59713745 16.19969559 -28.82948875 68.24146271 17.37510109 -30.93086052 65.19299316 14.65142632
		 -31.35918045 64.11367035 16.10511208 -27.40909767 66.64400482 16.87624741 -31.031589508 65.41625214 15.87260723
		 -27.014268875 69.36662292 12.26945019 -27.45734406 69.23322296 13.027557373 -28.49239159 69.14828491 12.61881828
		 -27.99674225 69.11221313 11.66106987 -27.088062286 68.6905899 13.77406216 -31.37037659 64.82884216 15.32347965
		 -31.0080432892 64.62232971 16.58243179 -26.74168015 67.43746948 17.11772156 -29.90387344 67.27170563 17.64655495
		 -31.61453056 64.89820862 17.66375542 -27.90166855 66.84117126 11.29179478 -30.37425804 64.27464294 18.78725243
		 -31.12560654 63.85939789 17.38499069 -30.64655685 63.83741379 18.47247887 -31.68968582 65.090461731 17.44482803
		 -31.45861053 66.57341003 17.096450806 -29.82297516 66.5375061 18.56248474 -29.6178894 65.91075897 19.026422501
		 -30.16092873 66.24616241 19.35907936 -28.92137337 68.021499634 10.76900959 -25.83391762 68.81864929 10.15141964
		 -27.081115723 68.71291351 9.29259586 -25.72979736 65.42941284 9.94609261 -24.89572144 66.47198486 10.62071705
		 -24.99582672 67.89272308 10.64489174 -27.62635803 66.02116394 8.68559265 -27.84932327 67.70983124 8.6770134;
	setAttr -s 664 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 0 1 4 5 1 5 6 1 6 7 1 7 4 1 8 9 1
		 9 10 1 10 11 1 11 8 1 12 13 1 13 14 1 14 15 1 15 12 1 16 17 1 17 18 1 18 19 1 19 16 1
		 20 21 1 21 4 1 4 22 1 22 20 1 23 24 1 24 25 1 25 26 1 26 23 1 20 2 1 2 27 1 27 20 1
		 7 28 1 28 29 1 29 30 1 30 7 1 25 31 1 31 32 1 32 26 1 33 34 1 34 35 1 35 36 1 36 33 1
		 6 37 1 37 28 1 31 38 1 38 39 1 39 32 1 40 41 1 41 42 1 42 43 1 43 40 1 44 15 1 15 45 1
		 45 44 1 46 47 1 47 48 1 48 49 1 49 46 1 50 51 1 51 52 1 52 50 1 14 53 1 53 54 1 54 14 1
		 55 56 1 56 51 1 50 55 1 41 47 1 46 57 1 57 41 1 22 58 1 58 2 1 59 60 1 60 61 1 61 62 1
		 62 59 1 63 64 1 64 65 1 65 66 1 66 63 1 44 67 1 67 12 1 32 37 1 37 68 1 68 26 1 51 69 1
		 69 70 1 70 52 1 71 72 1 72 73 1 73 74 1 74 71 1 75 76 1 76 77 1 77 78 1 78 75 1 14 79 1
		 79 80 1 80 15 1 81 82 1 82 83 1 83 84 1 84 81 1 85 53 1 13 85 1 86 62 1 61 80 1 80 86 1
		 87 60 1 59 88 1 88 87 1 89 90 1 90 91 1 91 92 1 92 89 1 93 56 1 56 31 1 25 93 1 45 42 1
		 42 73 1 73 54 1 54 45 1 94 12 1 67 94 1 42 95 1 95 74 1 96 97 1 97 98 1 98 99 1 99 96 1
		 13 100 1 100 85 1 13 101 1 101 102 1 102 100 1 37 103 1 103 104 1 104 28 1 12 105 1
		 105 101 1 17 6 1 5 18 1 73 79 1 106 96 1 99 107 1 107 106 1 94 108 1 108 105 1 71 70 1
		 70 109 1 109 71 1 110 8 1 11 111 1 111 110 1 69 21 1 27 69 1 9 112 1 112 113 1 113 10 1
		 106 114 1 114 115 1 115 96 1 109 27 1 27 1 1 1 109 1 34 63 1;
	setAttr ".ed[166:331]" 63 116 1 116 35 1 105 89 1 92 101 1 117 55 1 50 95 1
		 95 117 1 118 38 1 38 55 1 117 118 1 119 106 1 107 120 1 120 119 1 108 90 1 91 102 1
		 121 49 1 48 122 1 122 121 1 72 119 1 120 73 1 60 123 1 123 124 1 124 60 1 52 74 1
		 103 86 1 80 104 1 27 70 1 122 65 1 64 121 1 40 62 1 86 41 1 3 9 1 8 0 1 125 62 1
		 40 125 1 30 22 1 126 97 1 97 115 1 115 127 1 127 126 1 30 128 1 128 58 1 79 129 1
		 129 104 1 109 130 1 130 72 1 41 117 1 57 118 1 131 39 1 39 118 1 57 131 1 17 68 1
		 34 132 1 132 64 1 80 42 1 110 133 1 133 0 1 134 48 1 47 134 1 135 136 1 136 137 1
		 137 138 1 138 135 1 21 139 1 139 5 1 29 1 1 1 128 1 140 131 1 46 140 1 108 102 1
		 141 65 1 122 141 1 39 103 1 86 47 1 128 133 1 133 142 1 142 58 1 143 79 1 120 143 1
		 123 77 1 76 144 1 144 123 1 100 94 1 67 85 1 16 145 1 145 68 1 130 114 1 114 119 1
		 77 87 1 87 146 1 146 78 1 140 134 1 134 86 1 86 131 1 66 147 1 147 116 1 134 141 1
		 88 76 1 75 148 1 148 88 1 107 143 1 66 33 1 36 147 1 44 53 1 144 59 1 59 149 1 149 144 1
		 149 124 1 146 148 1 43 150 1 150 125 1 99 151 1 151 143 1 136 69 1 51 137 1 93 137 1
		 152 151 1 151 98 1 98 153 1 153 152 1 61 43 1 124 150 1 150 61 1 149 125 1 83 126 1
		 127 84 1 127 152 1 152 81 1 113 111 1 126 153 1 82 153 1 93 154 1 154 138 1 18 136 1
		 135 19 1 132 121 1 24 154 1 3 142 1 142 112 1 115 151 1 136 139 1 140 49 1 132 140 1
		 114 143 1 129 29 1 132 141 1 109 129 1 79 130 1 145 23 1 141 33 1 155 156 0 157 158 0
		 158 159 0 160 157 0 159 155 0 161 160 0 161 24 1 23 160 1 145 157 1 16 158 1 156 161 0
		 19 159 1 135 155 1 138 156 1 154 161 1 112 110 1;
	setAttr ".ed[332:497]" 162 163 1 163 164 1 164 165 1 165 162 1 166 167 1 167 168 1
		 168 169 1 169 166 1 170 171 1 171 172 1 172 173 1 173 170 1 174 175 1 175 176 1 176 177 1
		 177 174 1 178 179 1 179 180 1 180 181 1 181 178 1 182 183 1 183 166 1 166 184 1 184 182 1
		 185 186 1 186 187 1 187 188 1 188 185 1 182 164 1 164 189 1 189 182 1 169 190 1 190 191 1
		 191 192 1 192 169 1 187 193 1 193 194 1 194 188 1 195 196 1 196 197 1 197 198 1 198 195 1
		 168 199 1 199 190 1 193 200 1 200 201 1 201 194 1 202 203 1 203 204 1 204 205 1 205 202 1
		 206 177 1 177 207 1 207 206 1 208 209 1 209 210 1 210 211 1 211 208 1 212 213 1 213 214 1
		 214 212 1 176 215 1 215 216 1 216 176 1 217 218 1 218 213 1 212 217 1 203 209 1 208 219 1
		 219 203 1 184 220 1 220 164 1 221 222 1 222 223 1 223 224 1 224 221 1 225 226 1 226 227 1
		 227 228 1 228 225 1 206 229 1 229 174 1 194 199 1 199 230 1 230 188 1 213 231 1 231 232 1
		 232 214 1 233 234 1 234 235 1 235 236 1 236 233 1 237 238 1 238 239 1 239 240 1 240 237 1
		 176 241 1 241 242 1 242 177 1 243 244 1 244 245 1 245 246 1 246 243 1 247 215 1 175 247 1
		 248 224 1 223 242 1 242 248 1 249 222 1 221 250 1 250 249 1 251 252 1 252 253 1 253 254 1
		 254 251 1 255 218 1 218 193 1 187 255 1 207 204 1 204 235 1 235 216 1 216 207 1 256 174 1
		 229 256 1 204 257 1 257 236 1 258 259 1 259 260 1 260 261 1 261 258 1 175 262 1 262 247 1
		 175 263 1 263 264 1 264 262 1 199 265 1 265 266 1 266 190 1 174 267 1 267 263 1 179 168 1
		 167 180 1 235 241 1 268 258 1 261 269 1 269 268 1 256 270 1 270 267 1 233 232 1 232 271 1
		 271 233 1 272 170 1 173 273 1 273 272 1 231 183 1 189 231 1 171 274 1 274 275 1 275 172 1
		 268 276 1 276 277 1 277 258 1 271 189 1 189 163 1 163 271 1 196 225 1;
	setAttr ".ed[498:663]" 225 278 1 278 197 1 267 251 1 254 263 1 279 217 1 212 257 1
		 257 279 1 280 200 1 200 217 1 279 280 1 281 268 1 269 282 1 282 281 1 270 252 1 253 264 1
		 283 211 1 210 284 1 284 283 1 234 281 1 282 235 1 222 285 1 285 286 1 286 222 1 214 236 1
		 265 248 1 242 266 1 189 232 1 284 227 1 226 283 1 202 224 1 248 203 1 165 171 1 170 162 1
		 287 224 1 202 287 1 192 184 1 288 259 1 259 277 1 277 289 1 289 288 1 192 290 1 290 220 1
		 241 291 1 291 266 1 271 292 1 292 234 1 203 279 1 219 280 1 293 201 1 201 280 1 219 293 1
		 179 230 1 196 294 1 294 226 1 242 204 1 272 295 1 295 162 1 296 210 1 209 296 1 297 298 1
		 298 299 1 299 300 1 300 297 1 183 301 1 301 167 1 191 163 1 163 290 1 302 293 1 208 302 1
		 270 264 1 303 227 1 284 303 1 201 265 1 248 209 1 290 295 1 295 304 1 304 220 1 305 241 1
		 282 305 1 285 239 1 238 306 1 306 285 1 262 256 1 229 247 1 178 307 1 307 230 1 292 276 1
		 276 281 1 239 249 1 249 308 1 308 240 1 302 296 1 296 248 1 248 293 1 228 309 1 309 278 1
		 296 303 1 250 238 1 237 310 1 310 250 1 269 305 1 228 195 1 198 309 1 206 215 1 306 221 1
		 221 311 1 311 306 1 311 286 1 308 310 1 205 312 1 312 287 1 261 313 1 313 305 1 298 231 1
		 213 299 1 255 299 1 314 313 1 313 260 1 260 315 1 315 314 1 223 205 1 286 312 1 312 223 1
		 311 287 1 245 288 1 289 246 1 289 314 1 314 243 1 275 273 1 288 315 1 244 315 1 255 316 1
		 316 300 1 180 298 1 297 181 1 294 283 1 186 316 1 165 304 1 304 274 1 277 313 1 298 301 1
		 302 211 1 294 302 1 276 305 1 291 191 1 294 303 1 271 291 1 241 292 1 307 185 1 303 195 1
		 317 318 0 319 320 0 320 321 0 322 319 0 321 317 0 323 322 0 323 186 1 185 322 1 307 319 1
		 178 320 1 318 323 0 181 321 1 297 317 1 300 318 1 316 323 1 274 272 1;
	setAttr -s 342 ".fc[0:341]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 346 115 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 370 9 10 11
		f 4 12 13 14 15
		mu 0 4 12 13 420 15
		f 4 16 17 18 19
		mu 0 4 16 17 18 19
		f 4 20 21 22 23
		mu 0 4 20 21 22 23
		f 4 24 25 26 27
		mu 0 4 24 25 26 27
		f 3 28 29 30
		mu 0 3 20 2 28
		f 4 31 32 33 34
		mu 0 4 7 29 30 31
		f 4 35 36 37 -27
		mu 0 4 26 32 33 27
		f 4 38 39 40 41
		mu 0 4 359 35 36 37
		f 4 -7 42 43 -32
		mu 0 4 7 6 38 29
		f 4 44 45 46 -37
		mu 0 4 32 39 40 33
		f 4 47 48 49 50
		mu 0 4 41 42 43 44
		f 3 51 52 53
		mu 0 3 45 46 47
		f 4 54 55 56 57
		mu 0 4 48 49 50 51
		f 3 58 59 60
		mu 0 3 52 53 54
		f 3 61 62 63
		mu 0 3 14 55 56
		f 4 64 65 -59 66
		mu 0 4 57 58 53 52
		f 4 67 -55 68 69
		mu 0 4 42 49 48 59
		f 4 -29 -24 70 71
		mu 0 4 2 20 23 60
		f 4 72 73 74 75
		mu 0 4 61 339 400 64
		f 4 76 77 78 79
		mu 0 4 65 66 67 68
		f 4 -16 -52 80 81
		mu 0 4 69 46 45 70
		f 4 -38 82 83 84
		mu 0 4 27 33 38 71
		f 4 -60 85 86 87
		mu 0 4 54 53 72 73
		f 4 88 89 90 91
		mu 0 4 74 75 76 77
		f 4 92 93 94 95
		mu 0 4 78 79 80 81
		f 4 -15 96 97 98
		mu 0 4 15 420 82 397
		f 4 99 100 101 102
		mu 0 4 84 85 86 87
		f 4 103 -62 -14 104
		mu 0 4 88 55 14 375
		f 4 105 -75 106 107
		mu 0 4 89 64 400 397
		f 4 108 -73 109 110
		mu 0 4 90 339 61 91
		f 4 111 112 113 114
		mu 0 4 92 93 94 95
		f 4 115 116 -36 117
		mu 0 4 96 58 32 26
		f 4 118 119 120 121
		mu 0 4 47 43 76 56
		f 3 122 -82 123
		mu 0 3 98 69 70
		f 4 -91 -120 124 125
		mu 0 4 77 76 43 99
		f 4 126 127 128 129
		mu 0 4 100 101 102 103
		f 3 130 131 -105
		mu 0 3 375 104 88
		f 4 -131 132 133 134
		mu 0 4 104 375 403 106
		f 4 135 136 137 -44
		mu 0 4 38 107 108 29
		f 4 -133 -13 138 139
		mu 0 4 105 13 12 109
		f 4 -18 140 -6 141
		mu 0 4 18 17 6 5
		f 4 -121 142 -97 -64
		mu 0 4 56 76 121 14
		f 4 143 -130 144 145
		mu 0 4 111 100 103 112
		f 4 146 147 -139 -123
		mu 0 4 98 113 114 69
		f 3 148 149 150
		mu 0 3 74 73 125
		f 4 151 -12 152 153
		mu 0 4 117 8 341 118
		f 4 154 -21 -31 155
		mu 0 4 72 21 20 28
		f 4 -10 156 157 158
		mu 0 4 10 9 119 120
		f 4 -144 159 160 161
		mu 0 4 100 111 122 428
		f 3 162 163 164
		mu 0 3 125 28 115
		f 4 165 166 167 -40
		mu 0 4 35 65 126 36
		f 4 -140 168 -115 169
		mu 0 4 105 109 127 349
		f 4 170 -67 171 172
		mu 0 4 129 57 52 99
		f 4 173 174 -171 175
		mu 0 4 130 39 57 129
		f 4 176 -146 177 178
		mu 0 4 131 111 112 132
		f 4 -148 179 -112 -169
		mu 0 4 114 113 93 133
		f 4 -114 180 -134 -170
		mu 0 4 128 94 106 403
		f 4 181 -57 182 183
		mu 0 4 135 51 50 136
		f 4 -90 184 -179 185
		mu 0 4 76 75 131 132
		f 3 186 187 188
		mu 0 3 62 137 138
		f 4 -172 -61 189 -126
		mu 0 4 99 52 54 77
		f 4 -137 190 -108 191
		mu 0 4 108 107 89 397
		f 4 -190 -88 -149 -92
		mu 0 4 77 54 73 74
		f 3 -156 192 -87
		mu 0 3 72 28 73
		f 4 -184 193 -78 194
		mu 0 4 135 136 67 66
		f 4 -48 195 -106 196
		mu 0 4 42 41 139 140
		f 4 -4 197 -9 198
		mu 0 4 346 3 9 370
		f 3 199 -196 200
		mu 0 3 141 139 41
		f 4 -23 -8 -35 201
		mu 0 4 142 4 7 31
		f 4 202 203 204 205
		mu 0 4 143 101 428 334
		f 4 -71 -202 206 207
		mu 0 4 146 142 31 147
		f 4 -192 -98 208 209
		mu 0 4 108 397 82 148
		f 4 -151 210 211 -89
		mu 0 4 74 125 179 75
		f 4 212 -173 -125 -49
		mu 0 4 42 129 99 43
		f 4 -213 -70 213 -176
		mu 0 4 129 42 59 130
		f 4 214 215 -214 216
		mu 0 4 150 40 130 59
		f 4 -141 217 -84 -43
		mu 0 4 6 17 71 38
		f 3 -216 -46 -174
		mu 0 3 130 40 39
		f 4 218 219 -77 -166
		mu 0 4 35 151 66 65
		f 4 -99 220 -119 -53
		mu 0 4 46 83 43 47
		f 4 221 222 -199 -152
		mu 0 4 117 153 0 8
		f 3 223 -56 224
		mu 0 3 199 50 49
		f 4 225 226 227 228
		mu 0 4 157 158 159 160
		f 4 -22 229 230 -5
		mu 0 4 22 21 161 162
		f 4 -207 -34 231 232
		mu 0 4 147 31 30 1
		f 4 233 -217 -69 234
		mu 0 4 165 150 59 48
		f 4 -181 -113 -180 235
		mu 0 4 106 94 93 113
		f 3 236 -194 237
		mu 0 3 391 67 136
		f 4 238 -136 -83 -47
		mu 0 4 40 107 38 33
		f 3 -68 -197 239
		mu 0 3 49 42 140
		f 3 -127 -162 -204
		mu 0 3 101 100 428
		f 4 -208 240 241 242
		mu 0 4 146 147 153 171
		f 4 243 -143 -186 244
		mu 0 4 172 121 76 132
		f 4 245 -94 246 247
		mu 0 4 137 80 79 175
		f 4 -132 248 -124 249
		mu 0 4 88 104 98 70
		f 4 -135 -236 -147 -249
		mu 0 4 104 106 113 98
		f 4 -17 250 251 -218
		mu 0 4 17 16 178 71
		f 4 -185 -212 252 253
		mu 0 4 131 75 179 122
		f 4 254 255 256 -95
		mu 0 4 80 144 110 81
		f 4 257 258 259 -234
		mu 0 4 165 154 89 150
		f 4 -167 -80 260 261
		mu 0 4 126 65 68 183
		f 4 -183 -224 262 -238
		mu 0 4 136 50 199 391
		f 4 263 -93 264 265
		mu 0 4 184 79 78 185
		f 3 266 -245 -178
		mu 0 3 112 172 132
		f 4 267 -42 268 -261
		mu 0 4 68 34 164 183
		f 4 -104 -250 -81 269
		mu 0 4 55 88 70 45
		f 3 -160 -177 -254
		mu 0 3 122 111 131
		f 3 270 271 272
		mu 0 3 175 186 187
		f 4 -188 -248 -273 273
		mu 0 4 138 137 175 187
		f 4 274 -265 -96 -257
		mu 0 4 189 190 78 81
		f 4 -201 -51 275 276
		mu 0 4 141 41 44 191
		f 4 -111 -266 -275 -256
		mu 0 4 90 91 192 181
		f 4 -145 277 278 -267
		mu 0 4 112 103 193 172
		f 4 279 -86 280 -227
		mu 0 4 158 72 53 159
		f 4 -281 -66 -116 281
		mu 0 4 159 53 58 96
		f 4 282 283 284 285
		mu 0 4 194 193 102 195
		f 4 -122 -63 -270 -54
		mu 0 4 47 56 55 45
		f 4 286 -50 -221 -107
		mu 0 4 63 44 43 83
		f 4 287 288 -74 -189
		mu 0 4 138 191 63 62
		f 4 -117 -65 -175 -45
		mu 0 4 32 58 57 39
		f 4 -255 -246 -187 -109
		mu 0 4 144 80 137 62
		f 4 -288 -274 289 -277
		mu 0 4 191 138 187 141
		f 4 290 -206 291 -102
		mu 0 4 86 143 334 200
		f 4 -292 292 293 -103
		mu 0 4 173 145 201 202
		f 4 294 -153 -11 -159
		mu 0 4 120 203 204 10
		f 4 -110 -271 -247 -264
		mu 0 4 184 186 175 79
		f 4 -41 -168 -262 -269
		mu 0 4 205 206 126 183
		f 4 295 -285 -128 -203
		mu 0 4 143 195 102 101
		f 4 -291 -101 296 -296
		mu 0 4 143 86 85 195
		f 4 -282 297 298 -228
		mu 0 4 159 96 208 160
		f 4 299 -226 300 -19
		mu 0 4 209 158 157 210
		f 3 -220 301 -195
		mu 0 3 66 151 135
		f 4 302 -298 -118 -26
		mu 0 4 25 208 96 26
		f 3 -129 -284 -278
		mu 0 3 103 102 193
		f 4 303 304 -157 -198
		mu 0 4 3 211 119 9
		f 4 -205 305 -283 -293
		mu 0 4 145 124 213 201
		f 4 -155 -280 306 -230
		mu 0 4 21 72 158 161
		f 4 -215 -260 -191 -239
		mu 0 4 40 150 89 107
		f 4 307 -182 -302 308
		mu 0 4 165 51 135 151
		f 3 -289 -276 -287
		mu 0 3 63 191 44
		f 4 -279 -306 -161 309
		mu 0 4 214 213 124 123
		f 4 -241 -233 -1 -223
		mu 0 4 153 147 1 0
		f 4 -304 -3 -72 -243
		mu 0 4 211 3 2 60
		f 3 -225 -240 -259
		mu 0 3 199 49 140
		f 4 -138 -210 310 -33
		mu 0 4 29 108 148 30
		f 3 -150 -193 -163
		mu 0 3 125 73 28
		f 4 -258 -309 311 -263
		mu 0 4 154 165 151 167
		f 4 -211 312 -209 313
		mu 0 4 149 116 148 82
		f 3 -308 -235 -58
		mu 0 3 51 165 48
		f 4 -297 -100 -294 -286
		mu 0 4 195 85 215 194
		f 4 -85 -252 314 -28
		mu 0 4 27 71 178 24
		f 4 -310 -253 -314 -244
		mu 0 4 214 123 149 82
		f 4 315 -268 -79 -237
		mu 0 4 391 34 68 67
		f 4 -231 -307 -300 -142
		mu 0 4 162 161 158 209
		f 4 322 -25 323 -322
		mu 0 4 216 25 24 217
		f 4 324 -320 -324 -315
		mu 0 4 178 218 217 24
		f 4 325 -318 -325 -251
		mu 0 4 16 219 218 178
		f 4 -326 -20 327 -319
		mu 0 4 219 16 19 220
		f 4 328 -321 -328 -301
		mu 0 4 157 221 222 210
		f 4 329 -317 -329 -229
		mu 0 4 160 223 221 157
		f 4 330 -327 -330 -299
		mu 0 4 208 216 223 160
		f 3 -331 -303 -323
		mu 0 3 216 208 25
		f 4 -232 -311 -313 -165
		mu 0 4 1 30 148 116
		f 4 -316 -312 -219 -39
		mu 0 4 359 167 151 35
		f 4 -295 -158 331 -154
		mu 0 4 118 225 226 117
		f 4 -76 -200 -290 -272
		mu 0 4 186 139 141 187
		f 4 -222 -332 -305 -242
		mu 0 4 153 117 226 171
		f 3 -2 -164 -30
		mu 0 3 2 115 28
		f 4 -336 -335 -334 -333
		mu 0 4 196 229 230 412
		f 4 -340 -339 -338 -337
		mu 0 4 232 233 234 235
		f 4 -344 -343 -342 -341
		mu 0 4 236 180 238 239
		f 4 -348 -347 -346 -345
		mu 0 4 240 241 242 174
		f 4 -352 -351 -350 -349
		mu 0 4 244 245 246 247
		f 4 -356 -355 -354 -353
		mu 0 4 248 249 250 251
		f 4 -360 -359 -358 -357
		mu 0 4 168 252 253 254
		f 3 -363 -362 -361
		mu 0 3 248 255 230
		f 4 -367 -366 -365 -364
		mu 0 4 233 256 257 258
		f 4 358 -370 -369 -368
		mu 0 4 253 252 166 259
		f 4 -374 -373 -372 -371
		mu 0 4 260 134 97 262
		f 4 363 -376 -375 338
		mu 0 4 233 258 263 234
		f 4 368 -379 -378 -377
		mu 0 4 259 166 264 265
		f 4 -383 -382 -381 -380
		mu 0 4 266 267 268 269
		f 3 -386 -385 -384
		mu 0 3 270 271 272
		f 4 -390 -389 -388 -387
		mu 0 4 273 274 275 276
		f 3 -393 -392 -391
		mu 0 3 277 278 279
		f 3 -396 -395 -394
		mu 0 3 176 280 281
		f 4 -399 390 -398 -397
		mu 0 4 282 277 279 283
		f 4 -402 -401 386 -400
		mu 0 4 269 284 273 276
		f 4 -404 -403 355 360
		mu 0 4 230 285 249 248
		f 4 -408 -407 -406 -405
		mu 0 4 286 287 152 197
		f 4 -412 -411 -410 -409
		mu 0 4 290 291 292 293
		f 4 -414 -413 383 347
		mu 0 4 294 295 270 272
		f 4 -417 -416 -415 369
		mu 0 4 252 296 263 166
		f 4 -420 -419 -418 391
		mu 0 4 278 297 298 279
		f 4 -424 -423 -422 -421
		mu 0 4 299 300 301 302
		f 4 -428 -427 -426 -425
		mu 0 4 303 304 305 306
		f 4 -431 -430 -429 346
		mu 0 4 241 307 308 242
		f 4 -435 -434 -433 -432
		mu 0 4 309 310 311 312
		f 4 -437 345 393 -436
		mu 0 4 313 243 176 281
		f 4 -440 -439 406 -438
		mu 0 4 314 307 152 287
		f 4 -443 -442 404 -441
		mu 0 4 381 316 286 197
		f 4 -447 -446 -445 -444
		mu 0 4 317 318 319 320
		f 4 -450 367 -449 -448
		mu 0 4 321 253 259 283
		f 4 -454 -453 -452 -451
		mu 0 4 271 280 301 268
		f 3 -456 413 -455
		mu 0 3 322 295 294
		f 4 -458 -457 451 422
		mu 0 4 300 323 268 301
		f 4 -462 -461 -460 -459
		mu 0 4 324 325 326 327
		f 3 436 -464 -463
		mu 0 3 243 313 328
		f 4 -467 -466 -465 462
		mu 0 4 328 329 330 243
		f 4 375 -470 -469 -468
		mu 0 4 263 258 331 332
		f 4 -472 -471 344 464
		mu 0 4 182 333 240 174
		f 4 -474 337 -473 349
		mu 0 4 246 235 234 247
		f 4 395 428 -475 452
		mu 0 4 280 176 399 301
		f 4 -478 -477 461 -476
		mu 0 4 335 336 325 324
		f 4 454 470 -480 -479
		mu 0 4 322 294 337 338
		f 3 -483 -482 -481
		mu 0 3 299 350 297
		f 4 -486 -485 343 -484
		mu 0 4 342 343 237 198
		f 4 -488 362 352 -487
		mu 0 4 298 255 248 251
		f 4 -491 -490 -489 341
		mu 0 4 238 344 345 239
		f 4 -494 -493 -492 475
		mu 0 4 324 378 395 335
		f 3 -497 -496 -495
		mu 0 3 350 412 255
		f 4 371 -500 -499 -498
		mu 0 4 262 97 351 290
		f 4 -502 446 -501 471
		mu 0 4 182 352 353 333
		f 4 -505 -504 398 -503
		mu 0 4 354 323 277 282
		f 4 -508 502 -507 -506
		mu 0 4 355 354 282 265
		f 4 -511 -510 477 -509
		mu 0 4 356 357 336 335
		f 4 500 443 -512 479
		mu 0 4 337 358 320 338
		f 4 501 465 -513 445
		mu 0 4 188 330 329 319
		f 4 -516 -515 388 -514
		mu 0 4 360 361 275 274
		f 4 -518 510 -517 421
		mu 0 4 301 357 356 302
		f 3 -521 -520 -519
		mu 0 3 289 362 363
		f 4 457 -522 392 503
		mu 0 4 323 300 278 277
		f 4 -524 439 -523 468
		mu 0 4 331 307 314 332
		f 4 423 480 419 521
		mu 0 4 300 299 297 278
		f 3 418 -525 487
		mu 0 3 298 297 255
		f 4 -527 409 -526 515
		mu 0 4 360 293 292 361
		f 4 -529 437 -528 379
		mu 0 4 269 364 365 266
		f 4 -531 340 -530 335
		mu 0 4 196 236 239 229
		f 3 -533 527 -532
		mu 0 3 366 266 365
		f 4 -534 366 339 354
		mu 0 4 367 256 233 232
		f 4 -538 -537 -536 -535
		mu 0 4 368 409 378 327
		f 4 -540 -539 533 402
		mu 0 4 371 372 256 367
		f 4 -542 -541 429 523
		mu 0 4 331 374 308 307
		f 4 420 -544 -543 482
		mu 0 4 299 302 382 350
		f 4 380 456 504 -545
		mu 0 4 269 268 323 354
		f 4 507 -546 401 544
		mu 0 4 354 355 284 269
		f 4 -549 545 -548 -547
		mu 0 4 377 284 355 264
		f 4 374 415 -550 472
		mu 0 4 234 263 296 247
		f 3 505 377 547
		mu 0 3 355 265 264
		f 4 497 408 -552 -551
		mu 0 4 262 290 293 207
		f 4 384 450 -553 430
		mu 0 4 272 271 268 177
		f 4 483 530 -555 -554
		mu 0 4 342 198 228 379
		f 3 -557 387 -556
		mu 0 3 380 276 275
		f 4 -561 -560 -559 -558
		mu 0 4 383 384 385 386
		f 4 336 -563 -562 353
		mu 0 4 250 387 388 251
		f 4 -565 -564 365 538
		mu 0 4 372 231 257 256
		f 4 -567 400 548 -566
		mu 0 4 169 273 284 377
		f 4 -568 511 444 512
		mu 0 4 329 338 320 319
		f 3 -570 525 -569
		mu 0 3 392 361 292
		f 4 378 414 467 -571
		mu 0 4 264 166 263 332
		f 3 -572 528 399
		mu 0 3 276 364 269
		f 3 535 493 458
		mu 0 3 327 378 324
		f 4 -575 -574 -573 539
		mu 0 4 371 396 379 372
		f 4 -577 517 474 -576
		mu 0 4 398 357 301 399
		f 4 -580 -579 425 -578
		mu 0 4 363 401 306 305
		f 4 -582 455 -581 463
		mu 0 4 313 295 322 328
		f 4 580 478 567 466
		mu 0 4 328 322 338 329
		f 4 549 -584 -583 348
		mu 0 4 247 296 402 244
		f 4 -586 -585 543 516
		mu 0 4 356 395 382 302
		f 4 426 -589 -588 -587
		mu 0 4 305 304 404 315
		f 4 565 -592 -591 -590
		mu 0 4 169 377 314 393
		f 4 -594 -593 411 498
		mu 0 4 351 405 291 290
		f 4 569 -595 555 514
		mu 0 4 361 392 380 275
		f 4 -598 -597 424 -596
		mu 0 4 406 407 303 306
		f 3 509 576 -599
		mu 0 3 336 357 398
		f 4 592 -601 373 -600
		mu 0 4 291 405 261 156
		f 4 -602 412 581 435
		mu 0 4 281 270 295 313
		f 3 585 508 491
		mu 0 3 395 356 335
		f 3 -605 -604 -603
		mu 0 3 401 410 411
		f 4 -606 604 579 519
		mu 0 4 362 410 401 363
		f 4 588 427 596 -607
		mu 0 4 413 304 303 414
		f 4 -609 -608 382 532
		mu 0 4 366 415 267 266
		f 4 587 606 597 442
		mu 0 4 381 394 416 316
		f 4 598 -611 -610 476
		mu 0 4 336 398 417 325
		f 4 558 -613 417 -612
		mu 0 4 386 385 279 298
		f 4 -614 447 397 612
		mu 0 4 385 321 283 279
		f 4 -618 -617 -616 -615
		mu 0 4 418 419 326 417
		f 4 385 601 394 453
		mu 0 4 271 270 281 280
		f 4 438 552 381 -619
		mu 0 4 288 177 268 267
		f 4 520 405 -621 -620
		mu 0 4 362 289 288 415
		f 4 376 506 396 448
		mu 0 4 259 265 282 283
		f 4 440 518 577 586
		mu 0 4 315 289 363 305
		f 4 608 -622 605 619
		mu 0 4 415 366 410 362
		f 4 433 -624 537 -623
		mu 0 4 311 408 409 368
		f 4 434 -626 -625 623
		mu 0 4 421 422 423 369
		f 4 490 342 484 -627
		mu 0 4 344 238 424 425
		f 4 595 578 602 441
		mu 0 4 406 306 401 411
		f 4 600 593 499 372
		mu 0 4 426 405 351 427
		f 4 534 459 616 -628
		mu 0 4 368 327 326 419
		f 4 627 -629 432 622
		mu 0 4 368 419 312 311
		f 4 559 -631 -630 613
		mu 0 4 385 384 429 321
		f 4 350 -633 557 -632
		mu 0 4 430 431 383 386
		f 3 526 -634 551
		mu 0 3 293 360 207
		f 4 357 449 629 -635
		mu 0 4 254 253 321 429
		f 3 609 615 460
		mu 0 3 325 417 326
		f 4 529 488 -637 -636
		mu 0 4 229 239 345 433
		f 4 624 614 -638 536
		mu 0 4 369 423 434 347
		f 4 561 -639 611 486
		mu 0 4 251 388 386 298
		f 4 570 522 591 546
		mu 0 4 264 332 314 377
		f 4 -641 633 513 -640
		mu 0 4 169 207 360 274
		f 3 618 607 620
		mu 0 3 288 267 415
		f 4 -642 492 637 610
		mu 0 4 435 348 347 434
		f 4 554 332 564 572
		mu 0 4 379 228 231 372
		f 4 574 403 334 635
		mu 0 4 433 285 230 229
		f 3 590 571 556
		mu 0 3 380 364 276
		f 4 364 -643 541 469
		mu 0 4 258 257 374 331
		f 3 494 524 481
		mu 0 3 350 255 297
		f 4 594 -644 640 589
		mu 0 4 393 155 207 169
		f 4 -646 540 -645 542
		mu 0 4 376 308 374 340
		f 3 389 566 639
		mu 0 3 274 273 169
		f 4 617 625 431 628
		mu 0 4 419 418 437 312
		f 4 359 -647 583 416
		mu 0 4 252 168 402 296
		f 4 575 645 584 641
		mu 0 4 435 308 376 348
		f 4 568 410 599 -648
		mu 0 4 392 292 291 156
		f 4 473 631 638 562
		mu 0 4 387 430 386 388
		f 4 653 -656 356 -655
		mu 0 4 212 163 168 254
		f 4 646 655 651 -657
		mu 0 4 402 168 163 224
		f 4 582 656 649 -658
		mu 0 4 244 402 224 227
		f 4 650 -660 351 657
		mu 0 4 227 170 245 244
		f 4 632 659 652 -661
		mu 0 4 383 431 436 432
		f 4 560 660 648 -662
		mu 0 4 384 383 432 389
		f 4 630 661 658 -663
		mu 0 4 429 384 389 212
		f 3 654 634 662
		mu 0 3 212 254 429
		f 4 496 644 642 563
		mu 0 4 231 340 374 257
		f 4 370 550 643 647
		mu 0 4 260 262 207 155
		f 4 485 -664 489 626
		mu 0 4 343 342 390 373
		f 4 603 621 531 407
		mu 0 4 411 410 366 365
		f 4 573 636 663 553
		mu 0 4 379 396 390 342
		f 3 361 495 333
		mu 0 3 230 255 412;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ns" 0.035;
	setAttr ".tgsp" 1;
createNode transform -n "body_mesh" -p "spyInfo_group";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "body_meshShape" -p "body_mesh";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".mb" no;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr ".bw" 1.5;
	setAttr ".ns" 0.035;
	setAttr ".tgsp" 1;
createNode mesh -n "body_meshOrig1" -p "body_mesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1155 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.086796448 0.083452135 0.08667019
		 0.063041285 0.078177929 0.064123854 0.078375831 0.083452165 0.097856998 0.16434418
		 0.097856998 0.13894722 0.078375831 0.13894722 0.078375831 0.16434415 0.097856998
		 0.11275132 0.10881521 0.13894726 0.10881521 0.11275139 0.097856998 0.20189883 0.078375831
		 0.20189883 0.65551627 0.99221319 0.78913289 0.73049295 0.65551627 0.82387441 0.71269876
		 0.73488307 0.68671852 0.73488301 0.72263414 0.70089668 0.14829034 0.40817735 0.15512633
		 0.40817735 0.65551627 0.89284807 0.78913295 0.66629237 0.71269876 0.75116026 0.39524299
		 0.203528 0.39372599 0.27449599 0.35912901 0.272176 0.362443 0.205162 0.371589 0.112748
		 0.36737999 0.150526 0.49736801 0.0165 0.50060701 0.14484 0.47368199 0.151783 0.47102001
		 0.018634999 0.15512633 0.3454701 0.15414976 0.31470254 0.15985407 0.31485033 0.15952088
		 0.3454701 0.43261719 0.56347656 0.402385 0.54319799 0.40172899 0.50158298 0.42675781
		 0.51171875 0.46113101 0.011721 0.452443 0.132007 0.43235001 0.133121 0.436106 0.022326
		 0.50475103 0.432473 0.50322902 0.311827 0.52250397 0.31243899 0.52448601 0.45000699
		 0.10881521 0.16434415 0.10881521 0.20189883 0.417409 0.041200999 0.41409999 0.135695
		 0.398684 0.13994201 0.402242 0.063786 0.402942 0.58703101 0.47558594 0.609375 0.512869
		 0.61457902 0.50739902 0.64743501 0.14495321 0.25924343 0.13291584 0.19646879 0.15406059
		 0.21603958 0.15709004 0.26612037 0.097856998 0.083452135 0.078375831 0.11275129 0.39497101
		 0.34108099 0.37132999 0.34140301 0.36158001 0.31940401 0.48717499 0.39036301 0.484779
		 0.308954 0.52356303 0.015786 0.52348799 0.139356 0.414783 0.34243599 0.41026101 0.27675799
		 0.155093 0.13830929 0.15140717 0.13481867 0.17146777 0.10594967 0.17642502 0.11059231
		 0.41210601 0.204482 0.43052 0.202455 0.18897843 0.40817735 0.62734801 0.64768398
		 0.60275298 0.6658808 0.60317898 0.62510097 0.62195498 0.61472499 0.567415 0.46127501
		 0.58850402 0.45609 0.58646601 0.59092098 0.56740803 0.594275 0.49963 0.67060381 0.46533203
		 0.65020066 0.4305 0.281257 0.43603501 0.343595 0.60538799 0.58472103 0.61034298 0.450091
		 0.63008797 0.432587 0.62363303 0.572954 0.41793299 0.37037799 0.394878 0.367645 0.64697266
		 0.546875 0.51120597 0.572837 0.48828125 0.546875 0.13216083 0.045392796 0.15029092
		 0.062995292 0.15485266 0.095613971 0.13065718 0.073401518 0.43847656 0.37109375 0.504668
		 0.211834 0.52265698 0.208252 0.56746203 0.20620701 0.56742698 0.31208101 0.34782901
		 0.206026 0.35043699 0.206395 0.34876701 0.27191401 0.346596 0.271781 0.56748599 0.13843487
		 0.384397 0.58744299 0.38600299 0.537902 0.53194797 0.66590273 0.51654601 0.69348478
		 0.400011 0.43302196 0.388399 0.49593499 0.39251801 0.44814301 0.54632598 0.456045
		 0.13272731 0.026777683 0.14460734 0.036949053 0.478302 0.22014201 0.42138672 0.43847656
		 0.12716888 0.15883379 0.1503877 0.17697693 0.48144531 0.41503906 0.54835403 0.59088302
		 0.56740099 0.63453603 0.550125 0.63266301 0.16554683 0.3164376 0.16489197 0.3454701
		 0.16562068 0.26995751 0.374648 0.41569999 0.078375831 0.3202565 0.086796448 0.3202565
		 0.078375831 0.29095745 0.072416291 0.3202565 0.072308056 0.34770751 0.078177944 0.33958471
		 0.10881521 0.083452135 0.58467799 0.63269502 0.58306199 0.66265678 0.56738901 0.66159576
		 0.08667019 0.34066743 0.078319639 0.35828778 0.086686596 0.35612863 0.14031181 0.12108114
		 0.448971 0.19664299 0.45037499 0.28291401 0.463615 0.356024 0.46728516 0.37402344
		 0.74566209 0.88196015 0.7675671 0.93006557 0.75100511 0.84950405 0.36991099 0.110909
		 0.35353899 0.15602 0.35161901 0.15399601 0.10881521 0.3202565 0.097856998 0.3202565
		 0.097800501 0.34191659 0.11917934 0.38636309 0.77093512 0.81873691 0.81063104 0.99221325
		 0.46728516 0.39550781 0.81087989 0.76286954 0.351722 0.29482499 0.15019034 0.041488264
		 0.16000824 0.069757827 0.17393319 0.18900786 0.12806609 0.11157908 0.16809802 0.22926322
		 0.1784547 0.19207478 0.17389649 0.2356554 0.1719622 0.27373111 0.17270449 0.31860065
		 0.17319277 0.3454701 0.17319275 0.37745017 0.16489197 0.37745017 0.53162402 0.62503999
		 0.52944499 0.58463699 0.16330549 0.072589941 0.38326901 0.36613399 0.15239632 0.041875672
		 0.14109975 0.012495967 0.22227225 0.017218864 0.22068155 0.025484918 0.2196345 0.025321033
		 0.35020199 0.29832801 0.1343008 0.012356818 0.13753395 0.012214148 0.17319277 0.40817735
		 0.19727921 0.40817735 0.15952089 0.37940508 0.20265031 0.40817735 0.20704484 0.40817735
		 0.15512633 0.37745017 0.14495321 0.25924343 0.14975518 0.31340319 0.14338757 0.25730187
		 0.21388078 0.40817735 0.14829034 0.37745017 0.34546399 0.27148798 0.34709799 0.302113
		 0.34593999 0.30802301 0.078375831 0.26476151 0.072416291 0.26476151 0.072416291 0.29095745
		 0.09764576 0.044585496 0.097800493 0.061792091 0.11899297 0.017919868 0.14829034
		 0.3454701 0.13194656 0.20587783 0.12874672 0.19289257 0.12443238 0.15701869 0.12285241
		 0.10732989 0.84512699 0.20676801 0.84242803 0.252249 0.83424503 0.252123 0.83483702
		 0.206374 0.843301 0.123107 0.83534801 0.12702601 0.09764576 0.35912314 0.84959602
		 0.20734601 0.84538603 0.252655 0.84657598 0.123212 0.097856998 0.29095745 0.097856998
		 0.26476151 0.10881521 0.23936461 0.097856998 0.23936461 0.10881521 0.26476151 0.78824675
		 0.79251653 0.34907699 0.30199099 0.086603254 0.368141 0.097451776 0.37367404 0.34612423
		 0.72482085 0.36358637 0.75272894 0.35326308 0.75681317 0.33251458 0.73751181 0.10881521
		 0.29095745 0.68416721 0.24846904 0.7027055 0.27938813 0.69483507 0.32120299 0.66326785
		 0.26274854 0.072416291 0.20189883;
	setAttr ".uvst[0].uvsp[250:499]" 0.072416291 0.23936461 0.078375831 0.23936461
		 0.89452839 0.76994324 0.8883574 0.73394698 0.94035572 0.73394698 0.94035572 0.75720257
		 0.84140199 0.30157799 0.83924699 0.299438 0.086686596 0.047580063 0.84042001 0.308265
		 0.84465098 0.307096 0.84806901 0.32436901 0.84259802 0.32170701 0.83374 0.29899099
		 0.12870458 0.071790166 0.13061154 0.043245554 0.346037 0.20581201 0.83525503 0.125194
		 0.83720601 0.078152999 0.83823401 0.034051999 0.84271502 0.078120001 0.85577399 0.25240901
		 0.85666102 0.26546901 0.85025102 0.306225 0.83365202 0.30698001 0.833525 0.318234
		 0.83342397 0.33349699 0.841187 0.33381501 0.84558898 0.35300499 0.83332098 0.35113299
		 0.94035572 0.79284889 0.94035572 0.82520705 0.94035572 0.86356902 0.078319624 0.045434147
		 0.94035572 0.8988871 0.94035572 0.94304591 0.94035572 0.99221325 0.65917969 0.61035156
		 0.88177639 0.73394698 0.8862794 0.77102876 0.87060517 0.77028549 0.87060517 0.73394698
		 0.88711339 0.80153948 0.87060517 0.80089414 0.832757 0.034029 0.83514601 0.010724
		 0.87460935 0.93544275 0.87926036 0.99221325 0.87060517 0.99221325 0.86457533 0.93243521
		 0.88499939 0.82822663 0.87060517 0.82582998 0.8825894 0.86106229 0.86847693 0.85783839
		 0.40058401 0.058791 0.87721038 0.89701915 0.86599398 0.89691472 0.83203125 0.73394698
		 0.83203125 0.76620203 0.23160651 0.0433391 0.22991562 0.045372218 0.22949779 0.028695222
		 0.78538185 0.92995274 0.78818703 0.82183486 0.76882184 0.89060366 0.77375782 0.85400367
		 0.41597101 0.036516 0.89785141 0.80053884 0.61163402 0.0058599999 0.61152399 0.01589
		 0.8979944 0.828942 0.89596236 0.86182326 0.43436801 0.0186 0.89109236 0.89855886
		 0.88710237 0.93846047 0.89005536 0.99221325 0.21902841 0.25685757 0.21715376 0.25925353
		 0.22927189 0.19664469 0.23003563 0.2063261 0.16489197 0.40817735 0.15952088 0.40817735
		 0.0045924624 0.14500472 0.06159186 0.1474911 0.061591856 0.10700387 0.0046074181
		 0.12082402 0.010358697 0.095179267 0.025428178 0.065095499 0.06159186 0.078496143
		 0.043262791 0.034566138 0.06159186 0.047554176 0.86693299 0.27966201 0.88266999 0.28361699
		 0.86325997 0.39734399 0.84556198 0.38353601 0.89557397 0.28800201 0.88012099 0.409504
		 0.90713602 0.29152301 0.90095198 0.42322299 0.93185794 0.30208901 0.92939401 0.42572501
		 0.95002097 0.29696301 0.947878 0.411614 0.96589899 0.29817799 0.97532499 0.39735001
		 0.86785001 0.265753 0.88597798 0.26227701 0.898458 0.25845 0.96352798 0.28515601
		 0.91013098 0.26613143 0.93285501 0.25784105 0.94965202 0.27010301 0.88872999 0.241062
		 0.86853898 0.25668499 0.86624002 0.134755 0.884269 0.117783 0.90008998 0.225099 0.89935702
		 0.105651 0.96197999 0.26927 0.95081401 0.240438 0.95445001 0.142667 0.97631198 0.14191
		 0.913306 0.21085 0.91630203 0.126893 0.93445301 0.22692201 0.93907201 0.140881 0.82991099
		 0.477808 0.83875602 0.50108099 0.82939798 0.50721103 0.82991302 0.47747901 0.69730699
		 0.58705199 0.67462599 0.58193803 0.67842603 0.52953899 0.70067298 0.53448701 0.82946002
		 0.59594601 0.80559802 0.59517801 0.81103599 0.52098697 0.82888198 0.52383399 0.83422798
		 0.43227699 0.85481298 0.457966 0.65641326 0.29621887 0.67477405 0.32739809 0.78466302
		 0.28727099 0.77167702 0.27813101 0.76993501 0.25386801 0.782965 0.26796499 0.80112398
		 0.285593 0.80085099 0.27482599 0.72399598 0.294655 0.71000499 0.293982 0.75965399
		 0.27939501 0.75830299 0.26059946 0.73896998 0.287974 0.72159398 0.26965499 0.73777199
		 0.24846007 0.015382163 0.32978606 0.06159186 0.30759096 0.84751207 0.51928902 0.87478203
		 0.54371101 0.87715 0.48015401 0.89937401 0.55685401 0.90027398 0.49099201 0.934744
		 0.54426801 0.93212599 0.48572999 0.96156394 0.49673501 0.95462501 0.453105 0.99339199
		 0.47172201 0.98464102 0.429113 0.856444 0.023382001 0.878685 0.018587001 0.89512998
		 0.010539 0.97280401 0.021311 0.99438798 0.034789 0.92297697 0.0043339999 0.94898403
		 0.009451 0.96142399 0.64088398 0.96025199 0.59163898 0.98300499 0.58868903 0.98469198
		 0.63814503 0.783683 0.54563701 0.78079998 0.597552 0.97665501 0.51084101 0.981107
		 0.53560197 0.958049 0.53880799 0.75615102 0.60179502 0.75883901 0.557419 0.72384298
		 0.542041 0.72286201 0.593458 0.87731302 0.596156 0.90147901 0.60158497 0.90374398
		 0.65087199 0.88031 0.65365398 0.93466598 0.59572399 0.93643999 0.64450198 0.85299498
		 0.593669 0.85440803 0.656901 0.99787402 0.47899801 0.01102173 0.30576029 0.06159186
		 0.2676751 0.83022499 0.65822798 0.45960501 0.006019 0.63748503 0.0065830001 0.663517
		 0.0073060002 0.66396201 0.018836999 0.63738 0.016721001 0.32670653 0.61087739 0.32207423
		 0.62525845 0.31587645 0.75853288 0.32712641 0.77588141 0.36050099 0.34032899 0.36351699
		 0.37443799 0.34310499 0.373739 0.34510401 0.33925101 0.35257399 0.332068 0.3428241
		 0.62713969 0.33710057 0.77216709 0.32414263 0.75520766 0.42151797 0.66394967 0.42366832
		 0.69364059 0.38104415 0.69349951 0.37867314 0.67111409 0.061591856 0.33554879 0.31331164
		 0.65234452 0.30589277 0.64469796 0.31015304 0.75092959 0.3186875 0.63406336 0.33197033
		 0.68346459 0.3296333 0.67394668 0.34708881 0.6627472 0.35716766 0.6787855 0.30710644
		 0.73129052 0.31883824 0.72237992 0.317233 0.74646878 0.33228326 0.70249552 0.33414114
		 0.6925149 0.36054322 0.69253314 0.35648394 0.70809102 0.37542868 0.64777696 0.33346084
		 0.78569406 0.37967706 0.71721756 0.36378199 0.41334301 0.36471301 0.44563299 0.341896
		 0.446417 0.34340701 0.41330799 0.37745774 0.63469338 0.39842558 0.64251578 0.39492196
		 0.65331227 0.0093707927 0.28259581 0.06159186 0.23700997 0.42092371 0.72012603;
	setAttr ".uvst[0].uvsp[500:749]" 0.33236873 0.64755762 0.32381183 0.66326064
		 0.32785839 0.71449584 0.37742794 0.74389082 0.34227899 0.383964 0.36291701 0.38456601
		 0.32252371 0.5939877 0.33100623 0.60062516 0.35911608 0.76751393 0.34388092 0.78148174
		 0.34762558 0.61591595 0.45122737 0.70943093 0.45971113 0.68874943 0.47265899 0.68723553
		 0.46135354 0.71589464 0.44411957 0.67233366 0.42151797 0.66394967 0.42635661 0.65308028
		 0.45003587 0.66343319 0.366577 0.48093101 0.36323401 0.53446698 0.337116 0.52220899
		 0.338599 0.47619501 0.3853671 0.75248158 0.049386494 0.38248065 0.29987028 0.7356745
		 0.31015304 0.75092959 0.7719394 0.70089674 0.42635661 0.65308028 0.06159186 0.20771539
		 0.0083396835 0.25664121 0.36112791 0.63774192 0.39277655 0.73558128 0.42750949 0.73082221
		 0.39983147 0.74584019 0.021123638 0.34510565 0.30146766 0.65687525 0.061591856 0.36599916
		 0.35422999 0.55686402 0.34665 0.56491202 0.340832 0.55538899 0.83203125 0.99221325
		 0.49728301 0.00544 0.52402198 0.0061079999 0.47054401 0.0071100001 0.330704 0.20426799
		 0.332571 0.27204901 0.30903399 0.27365699 0.30728301 0.20355099 0.33026499 0.149866
		 0.33131799 0.11183 0.66128403 0.152 0.63436598 0.14501201 0.20265031 0.3454701 0.20231712
		 0.31485033 0.2080214 0.31470254 0.20704484 0.3454701 0.27246094 0.50683594 0.297546
		 0.50036299 0.29543301 0.54171002 0.26464844 0.55761719 0.26708499 0.020989001 0.270569
		 0.131808 0.25046799 0.13049001 0.242064 0.010183 0.61235201 0.31253499 0.63162398
		 0.31196001 0.30085799 0.062765002 0.30429399 0.13893799 0.28883299 0.134562 0.28573701
		 0.040052 0.29346001 0.58536202 0.55170399 0.66263276 0.20514551 0.26590574 0.20780541
		 0.21595924 0.33281299 0.34036699 0.30720901 0.340437 0.650078 0.30912599 0.64768499
		 0.39053199 0.61148399 0.139469 0.292362 0.27570301 0.287471 0.34122401 0.18569326
		 0.11070243 0.19064504 0.10599869 0.21082526 0.13461755 0.20723605 0.13807809 0.27219999
		 0.201153 0.29057899 0.203398 0.66943359 0.65117723 0.63500798 0.6709758 0.26618999
		 0.34201801 0.27204001 0.27987799 0.306337 0.36681801 0.284132 0.369129 0.82878298
		 0.077024996 0.26367188 0.36914063 0.61226702 0.20835701 0.63025898 0.21198501 0.21649921
		 0.039195705 0.21468487 0.03930654 0.31293201 0.538863 0.31196499 0.58817798 0.617953
		 0.69354379 0.311524 0.44632 0.31286201 0.49691001 0.301642 0.43213302 0.21179411
		 0.063328594 0.65662497 0.220357 0.27978516 0.43652344 0.21180618 0.17726691 0.23499629
		 0.15901303 0.65380859 0.41503906 0.19727921 0.3454701 0.19662434 0.3164376 0.19662648
		 0.26994866 0.32842001 0.41398099 0.67477405 0.32739809 0.69483507 0.32120299 0.66326785
		 0.26274854 0.65641326 0.29621887 0.072304837 0.056230903 0.072416291 0.083452135
		 0.7027055 0.27938813 0.68416721 0.24846904 0.20725375 0.095689088 0.22170392 0.12112606
		 0.25211301 0.281239 0.25376001 0.195103 0.23486328 0.37207031 0.238511 0.353955 0.333509
		 0.109341 0.34279701 0.31785101 0.20220359 0.069900528 0.18818535 0.18917863 0.23426917
		 0.11163215 0.19402647 0.22919986 0.18364865 0.19211031 0.18808579 0.23601842 0.19024277
		 0.27373683 0.18946671 0.31860065 0.18897843 0.3454701 0.19727921 0.37745017 0.18897843
		 0.37745017 0.19878983 0.072782703 0.33281299 0.34036699 0.32139599 0.36268401 0.32033956
		 0.67654145 0.3161689 0.67018068 0.23154268 0.073158227 0.23354357 0.071854822 0.13030098
		 0.025190158 0.13100703 0.0099813398 0.20265031 0.37940508 0.20704484 0.37745017 0.21241593
		 0.31340319 0.21388078 0.37745017 0.072416291 0.11275132 0.072416291 0.13894726 0.21388078
		 0.3454701 0.23333862 0.19250381 0.23763376 0.15735613 0.23932949 0.10699543 0.82604897
		 0.251627 0.82525098 0.205204 0.82808 0.13108499 0.82307601 0.25185999 0.81981498
		 0.204731 0.823102 0.13449299 0.097451776 0.030034691 0.086603254 0.035567626 0.072416291
		 0.16434415 0.82823199 0.29902399 0.82604402 0.30100399 0.82437801 0.32091299 0.81886405
		 0.323154 0.82264698 0.30613399 0.82685798 0.30771801 0.82780701 0.129429 0.81708306
		 0.30497301 0.81158102 0.262831 0.81283897 0.247215 0.33281299 0.34036699 0.82102603
		 0.35204101 0.82561898 0.33316001 0.32271045 0.68437791 0.81854099 0.50020099 0.70618498
		 0.44855201 0.67755097 0.424366 0.68673998 0.38485399 0.71397001 0.40639201 0.804254
		 0.65762901 0.0053061792 0.17005278 0.06159186 0.17834641 0.69938302 0.49171001 0.682073
		 0.50617999 0.66599101 0.470974 0.66850102 0.4664 0.243606 0.004582 0.26882601 0.017289
		 0.720258 0.64179999 0.69507402 0.63608301 0.77747297 0.65429801 0.75329202 0.65046901
		 0.72773099 0.48278701 0.73198003 0.42295399 0.75894302 0.491346 0.76000798 0.42194
		 0.30249301 0.057711001 0.82741499 0.43611401 0.80417192 0.46058601 0.79834098 0.40191001
		 0.81798297 0.39003599 0.78193098 0.48240399 0.78096199 0.41135699 0.67497993 0.63131166
		 0.75892299 0.12858599 0.73564303 0.13648801 0.73225999 0.0038089999 0.757173 0.003422
		 0.71858603 0.138878 0.70752501 0.012644 0.77660602 0.110092 0.78323001 0.01386 0.69720799
		 0.138304 0.68588299 0.022351 0.79157001 0.121166 0.798473 0.024821 0.809187 0.142555
		 0.82091898 0.032244999 0.287177 0.035372 0.82963997 0.47801 0.75716102 0.212437 0.73671597
		 0.22407299 0.72025901 0.240567 0.76898301 0.227256 0.710172 0.27082801 0.78157198
		 0.247298 0.80051303 0.268684 0.30827427 0.66353834 0.32273251 0.69365072 0.32712641
		 0.77588141 0.30146766 0.65687525 0.32165748 0.70081955 0.68673998 0.38485399 0.29931849
		 0.72114295 0.31793547 0.70579231 0.30910832 0.71391249 0.7719394 0.78972721 0.72263408
		 0.78972715 0.7226342 0.7677899;
	setAttr ".uvst[0].uvsp[750:999]" 0.77193934 0.76779002 0.7226342 0.74532038
		 0.77193934 0.74532038 0.98744613 0.94433665 0.98744613 0.90107304 0.99289936 0.90099376
		 0.99289936 0.94490635 0.98744613 0.82405066 0.98744613 0.78766662 0.99289936 0.78750437
		 0.99289936 0.82416254 0.98744613 0.99221325 0.99289936 0.99221325 0.98744613 0.75123972
		 0.99289936 0.75069231 0.71269888 0.72017503 0.71269888 0.70255655 0.68671852 0.70255655
		 0.68671852 0.72017485 0.98744613 0.73394698 0.99289936 0.73394698 0.71269888 0.67189705
		 0.71269882 0.656753 0.6867184 0.76684964 0.6867187 0.67189711 0.96498734 0.73049301
		 0.99303418 0.73049301 0.99303418 0.66629231 0.9649868 0.66629231 0.93864059 0.66629237
		 0.93864125 0.73049301 0.98744613 0.86410809 0.99289936 0.86396444 0.90820467 0.66629237
		 0.90820485 0.73049301 0.77193928 0.81090736 0.72263408 0.81090736 0.7719394 0.70089674
		 0.72263414 0.70089668 0.7226342 0.67826045 0.7719394 0.67826051 0.7719394 0.72345895
		 0.7226342 0.72345895 0.7226342 0.65815288 0.7719394 0.65815276 0.81818986 0.66629237
		 0.81818974 0.73049301 0.8483355 0.73049301 0.84833568 0.66629237 0.87557518 0.73049301
		 0.71269888 0.6861226 0.68671858 0.6861226 0.71269876 0.75116026 0.68671864 0.75116026
		 0.71269876 0.73488307 0.68671852 0.73488301 0.78913289 0.73049295 0.78913295 0.66629237
		 0.8755753 0.66629237 0.68671864 0.75116026 0.31793547 0.70579231 0.30910832 0.71391249
		 0.31883824 0.72237992 0.32785839 0.71449584 0.29931849 0.72114295 0.30710644 0.73129052
		 0.32165748 0.70081955 0.33228326 0.70249552 0.29280418 0.72481459 0.30589277 0.64469796
		 0.32273251 0.69365072 0.33414114 0.6925149 0.30827427 0.66353834 0.31331164 0.65234452
		 0.32271045 0.68437791 0.33197033 0.68346459 0.3161689 0.67018068 0.32381183 0.66326064
		 0.32033956 0.67654145 0.7719394 0.67826051 0.7226342 0.67826045 0.3296333 0.67394668
		 0.36323401 0.53446698 0.337116 0.52220899 0.340832 0.55538899 0.34665 0.56491202
		 0.35422999 0.55686402 0.45122737 0.70943093 0.45971113 0.68874943 0.42366832 0.69364059
		 0.42092371 0.72012603 0.44411957 0.67233366 0.31189507 0.62730753 0.42750949 0.73082221
		 0.39277655 0.73558128 0.39983147 0.74584019 0.35648394 0.70809102 0.37742794 0.74389082
		 0.37967706 0.71721756 0.3853671 0.75248158 0.46135354 0.71589464 0.37542868 0.64777696
		 0.37745774 0.63469338 0.36112791 0.63774192 0.37867314 0.67111409 0.39492196 0.65331227
		 0.35716766 0.6787855 0.34708881 0.6627472 0.3428241 0.62713969 0.33236873 0.64755762
		 0.31849474 0.60495031 0.32252371 0.5939877 0.34388092 0.78148174 0.33710057 0.77216709
		 0.39842558 0.64251578 0.33346084 0.78569406 0.31849474 0.60495031 0.31587645 0.75853288
		 0.47265899 0.68723553 0.45003587 0.66343319 0.31445009 0.61888653 0.33251458 0.73751181
		 0.34612423 0.72482085 0.36054322 0.69253314 0.38104415 0.69349951 0.29987028 0.7356745
		 0.29280418 0.72481459 0.31189507 0.62730753 0.31445009 0.61888653 0.32414263 0.75520766
		 0.317233 0.74646878 0.338599 0.47619501 0.366577 0.48093101 0.36471301 0.44563299
		 0.341896 0.446417 0.36358637 0.75272894 0.72263408 0.81090736 0.34762558 0.61591595
		 0.33100623 0.60062516 0.32670653 0.61087739 0.34340701 0.41330799 0.36378199 0.41334301
		 0.36291701 0.38456601 0.34227899 0.383964 0.35911608 0.76751393 0.35326308 0.75681317
		 0.36351699 0.37443799 0.34310499 0.373739 0.32207423 0.62525845 0.3186875 0.63406336
		 0.35257399 0.332068 0.34510401 0.33925101 0.36050099 0.34032899 0.045934133 0.11391395
		 0.049240392 0.071795821 0.96485656 0.75422114 0.71006101 0.28631401 0.96485656 0.99221325
		 0.96485656 0.73394698 0.96485656 0.94369131 0.96485656 0.89998007 0.96485656 0.86383855
		 0.96485656 0.82462883 0.96485656 0.79025781 0.061591856 0.39273298 0.06159186 0.018492732
		 0.052546639 0.041060161 0.045934137 0.086443692 0.017816579 0.078947872 0.045934141
		 0.10109156 0.35617599 0.15703 0.052546635 0.37177271 0.049240392 0.35399991 0.029743079
		 0.35652223 0.045934141 0.33858886 0.045934141 0.31480905 0.045934141 0.30667564 0.045934141
		 0.27513546 0.045934141 0.24682556 0.04593413 0.21054338 0.045934133 0.17419961 0.045934133
		 0.14624792 0.83203125 0.80004066 0.83203125 0.82387471 0.83203125 0.85538799 0.83203125
		 0.89284837 0.83203125 0.9313857 0.43554688 0.43945313 0.43359375 0.51074219 0.47647542
		 0.54215366 0.47212115 0.41500783 0.4375 0.5625 0.46854815 0.60262275 0.81087989 0.73394698
		 0.44726563 0.3984375 0.4586789 0.64581573 0.71269882 0.76684958 0.68671858 0.65675306
		 0.8755753 0.66629237 0.8483355 0.73049301 0.84833568 0.66629237 0.65551627 0.85538769
		 0.6867184 0.76684964 0.81818986 0.66629237 0.71269882 0.76684958 0.81818974 0.73049301
		 0.68671858 0.6861226 0.71269888 0.6861226 0.7226342 0.65815288 0.7719394 0.65815276
		 0.7226342 0.72345895 0.7719394 0.72345895 0.87557518 0.73049301 0.65551627 0.80004036
		 0.65551627 0.9313854 0.65677893 0.54215366 0.66470623 0.60262275 0.67457545 0.64581573
		 0.25961223 0.55509496 0.26561075 0.50589603 0.66295105 0.41500783 0.25461709 0.39588672
		 0.23498043 0.39397734 0.2655707 0.4374125 0.59302336 0.769943 0.54683834 0.75720221
		 0.54683834 0.73394686 0.59919435 0.73394686 0.5223375 0.73394686 0.52233744 0.75422084
		 0.54683834 0.79284853 0.5223375 0.79025751 0.54683834 0.8252067 0.5223375 0.82462859
		 0.54683834 0.86356872 0.52233744 0.8638382 0.54683834 0.89888686 0.52233744 0.89997977
		 0.54683834 0.94304568 0.5223375 0.94369096 0.54683834 0.99221319 0.52233744 0.99221319
		 0.6057753 0.73394686 0.61694652 0.73394686 0.61694652 0.77028519 0.60127211 0.77102846
		 0.61694652 0.80089384 0.60043812 0.80153918 0.61294216 0.93544239 0.62297642 0.93243498;
	setAttr ".uvst[0].uvsp[1000:1154]" 0.61694652 0.99221319 0.60829133 0.99221319
		 0.61694652 0.82582968 0.60255212 0.82822633 0.61907476 0.85783809 0.60496229 0.86106205
		 0.61034137 0.89701885 0.62155789 0.89691448 0.67680418 0.73394686 0.67680418 0.76286924
		 0.65551627 0.76620167 0.65551627 0.73394686 0.69700056 0.79232603 0.67739803 0.99221319
		 0.70498937 0.92995244 0.72075069 0.93006527 0.71661675 0.81873655 0.69936496 0.82183456
		 0.6741398 0.85400337 0.71379393 0.85400337 0.71872997 0.89060336 0.6741398 0.89060336
		 0.73654658 0.84950376 0.74188954 0.88195986 0.5897001 0.80053854 0.58955711 0.8289417
		 0.59158915 0.8618229 0.59645915 0.89855856 0.60044938 0.93846017 0.6741398 0.93073094
		 0.59749615 0.99221319 0.6741398 0.82183456 0.7719394 0.78972721 0.77193934 0.76779002
		 0.7226342 0.7677899 0.72263408 0.78972715 0.77193934 0.74532038 0.7226342 0.74532038
		 0.49974787 0.94433635 0.49429464 0.94490606 0.49429464 0.90099353 0.49974787 0.90107268
		 0.49974787 0.82405031 0.49429464 0.82416224 0.49429464 0.78750414 0.49974787 0.78766632
		 0.49974787 0.99221319 0.49429464 0.99221319 0.49429464 0.75069207 0.49974787 0.75123948
		 0.71269888 0.72017503 0.68671852 0.72017485 0.68671852 0.70255655 0.71269888 0.70255655
		 0.49429464 0.73394686 0.49974787 0.73394686 0.71269888 0.67189705 0.6867187 0.67189711
		 0.68671858 0.65675306 0.71269882 0.656753 0.9649868 0.66629231 0.99303418 0.66629231
		 0.99303418 0.73049301 0.96498734 0.73049301 0.93864125 0.73049301 0.93864059 0.66629237
		 0.49429464 0.86396414 0.49974787 0.86410779 0.90820485 0.73049301 0.90820467 0.66629237
		 0.77193928 0.81090736 0.58988953 0.31230801 0.58986449 0.20728201 0.58948499 0.13890749
		 0.58953398 0.015632501 0.5896365 0.0054825 0.0059401323 0.19171485 0.54496551 0.31226
		 0.5450595 0.2072295 0.54548699 0.138851 0.54555351 0.0155805 0.0074568847 0.23500906
		 0.54583049 0.0056065 0.045934137 0.22868586 0.045934133 0.19237289 0.332692 0.30620801
		 0.332692 0.30620801 0.3081215 0.30704701 0.28991652 0.30846351 0.269115 0.31094801
		 0.64888149 0.34982899 0.24531201 0.317597 0.63085598 0.3722735 0.6113475 0.381313
		 0.5891968 0.38419902 0.56742096 0.38667801 0.54564571 0.3841525 0.52349496 0.38122299
		 0.50399005 0.37215 0.48597699 0.34965849 0.45699501 0.319469 0.4332675 0.312426 0.41252202
		 0.30959699 0.3943485 0.30778849 0.5079785 0.50265503 0.5269655 0.517322 0.54734004
		 0.52346402 0.56741154 0.52777499 0.58748502 0.52350551 0.60786545 0.51740599 0.6268605
		 0.50277048 0.65209961 0.44799805 0.4831543 0.44799805 0.5730415 0.015439376 0.57313836
		 0.0051993751 0.0064155972 0.20796141 0.0067947851 0.21878496 0.56218684 0.0052303751
		 0.56204635 0.015426375 0.66804904 0.22553724 0.66698521 0.10430076 0.67753184 0.10398218
		 0.67479384 0.22518572 0.67912006 0.22492813 0.6780588 0.10396747 0.68866813 0.1037641
		 0.68588078 0.22503525 0.81284529 0.85408384 0.81284529 0.82197511 0.81284529 0.79965425
		 0.81294262 0.76318413 0.81294262 0.73394698 0.81284529 0.99221325 0.81284529 0.93078488
		 0.81284529 0.89074785 0.6741398 0.79967415 0.6741398 0.76313841 0.6741398 0.99221319
		 0.6741398 0.73394692 0.6997087 0.70255655 0.6997087 0.6861226 0.69970882 0.67189705
		 0.6997087 0.65675306 0.69970858 0.76684964 0.6997087 0.75116026 0.69970864 0.73488307
		 0.6997087 0.72017491 0.6997087 0.70255655 0.6997087 0.72017491 0.69970864 0.73488307
		 0.6997087 0.75116026 0.69970858 0.76684964 0.6997087 0.65675306 0.69970882 0.67189705
		 0.6997087 0.6861226;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 43 ".pt";
	setAttr ".pt[702:703]" -type "float3" 0.17439079 -0.011383057 0.067837715  
		0.20923233 0.065200806 0.19694996 ;
	setAttr ".pt[705]" -type "float3" 0.23326683 0.032722473 0.19047165 ;
	setAttr ".pt[707]" -type "float3" 0.18864441 0.14681244 0.15304661 ;
	setAttr ".pt[709]" -type "float3" 0.15887642 0.17584991 0.060959816 ;
	setAttr ".pt[711]" -type "float3" 0.18567657 0.056259155 0.021377563 ;
	setAttr ".pt[738:742]" -type "float3" 0.13145638 0.022605896 0.090390205  
		0.22389412 -0.025657654 0.12504673  0.18855286 0.018814087 0.12239742  0.15184784 
		0.010612488 0.081092834  0.15575218 -0.025886536 0.0074634552 ;
	setAttr ".pt[744:745]" -type "float3" 0.19074821 0.12068939 0.034454346  0.21096802 
		0.042060852 -0.0010986328 ;
	setAttr ".pt[747:754]" -type "float3" 0.36751175 0.35360718 0.10424519  0.27146721 
		0.067512512 0.16466427  0.6383667 -0.44284058 -1.093297  0.72782135 -0.20380402 -1.0853634  
		0.22676277 0.10399628 0.10162163  0.56970787 -0.28170013 0.1915493  0.96119118 -0.51410675 
		-1.0003185  0.70365334 -0.11604309 -1.0509853 ;
	setAttr ".pt[756:765]" -type "float3" 0.13684654 0.2179718 0.098814964  0.20465469 
		0.078018188 0.10624409  0.098808289 0.021240234 0.10258579  0.080169678 -0.013916016 
		0.10486317  0.077098846 0.0082092285 0.1089344  0.21822357 0.34455872 -0.032286644  
		0.09220314 -0.1758194 -0.18724346  0.61728287 -0.12961578 -1.086895  0.66152954 -0.23815155 
		-1.2601843  0.76559639 0.0084991455 -1.1299276 ;
	setAttr ".pt[767:771]" -type "float3" 0.15040588 0 0.032739639  0.1390686 
		0 0.051690102  0.11937141 0 0.079873085  0.10527229 0 0.097218037  0.10550308 0 0.092156887 ;
	setAttr ".pt[840:846]" -type "float3" -0.3942337 0.2121048 1.4404411  -0.51316643 
		0.45667267 1.2685261  -0.69874573 0.3875885 1.0726757  -0.77482605 -0.2833252 0.93071079  
		-0.066356659 -0.5749588 1.4677982  -0.22443199 -0.0056304932 1.5101871  -0.32946968 
		0.28636932 1.4942598 ;
	setAttr -s 847 ".vt";
	setAttr ".vt[0:165]"  -2.42904711 72.27881622 -0.84480399 -1.56898499 71.5313797 0.328834
		 -1.27254796 71.78796387 0.142645 -2.27584076 72.51556396 -1.055803299 -1.53121102 73.88820648 -4.98620796
		 -2.58541012 73.5207901 -4.03576088 -2.47902799 73.71906281 -3.61338305 -1.49186301 74.12839508 -4.6672101
		 -2.89035511 72.81193542 -2.63071394 -2.63944292 73.2089386 -4.56186199 -2.98831606 72.40724945 -2.77391195
		 0 74.0049285889 -5.35067177 0 74.30023956 -5.16547394 5.15030193 50.083457947 4.81678915
		 5.085192204 54.49486923 4.61606407 0.95063198 54.50037384 5.96649408 1.28543997 50.34966278 6.095622063
		 2.19027305 44.56386566 5.86911917 1.79026699 46.93453217 6.042025089 0.43602103 47.38825226 6.31414986
		 0.10769904 47.33688736 6.22437477 9.61040497 37.29531479 -2.023993492 7.086605549 44.16818237 -3.3748343
		 8.74104595 45.10716248 -0.716286 10.029981613 38.25390244 1.21640754 2.8344059 73.45921326 -4.69553423
		 3.16879892 72.56345367 -2.76956105 3.50631309 72.35843658 -2.87599492 3.033946991 73.10621643 -4.9114418
		 9.43660927 70.92424774 -3.35214472 6.40400934 69.96131897 -1.0076025724 6.32329655 67.91186523 0.72314847
		 8.98806572 69.51402283 -0.56483155 8.12147427 45.4831543 1.78339124 9.17468643 39.94028854 3.34370303
		 6.94469738 60.57700348 -6.018876076 6.54797602 54.46137619 -3.21195793 4.84669495 54.46167755 -3.92130613
		 4.96368504 61.2361908 -6.93199682 -1.54932797 73.59017181 -5.27608585 0 73.70452118 -5.56214619
		 7.38337898 41.61454391 4.70367813 6.89947939 45.75362778 3.57663751 5.422472 46.11756516 4.7681942
		 5.68211746 42.74604797 5.08943367 6.27421522 71.33789063 -3.40405202 9.47203922 70.19026184 -6.020426273
		 6.019007206 70.69740295 -6.62477064 6.10570288 71.48257446 -5.17559385 2.86097288 70.78158569 -0.015517
		 2.13376307 68.17254639 2.31230211 3.46226811 68.012901306 1.86621106 3.63752604 70.48487854 -0.184718
		 -2.56130099 71.62733459 -0.53336197 -2.74102092 73.18317413 -2.50235891 5.25785398 58.5868988 3.93856311
		 2.59725595 58.67974854 5.099326134 1.33050799 57.37952805 5.55620193 7.93863916 58.97079849 -3.57251143
		 7.80180979 54.460289 -1.61326003 7.18474293 36.2995224 -4.65478134 4.94366312 43.67389297 -4.60949612
		 7.14741802 58.4415741 2.37936497 6.61128378 54.46800995 3.17532897 2.89967704 63.31838608 3.91897011
		 2.7878809 63.34159851 4.13284588 3.76520395 60.30920029 4.42356491 3.91332603 60.20651245 4.25696802
		 6.63369608 50.0040168762 3.32917309 7.76243639 49.6882782 1.3485744 -6.10570288 71.48257446 -5.17559385
		 -3.32651305 72.46190643 -5.091303825 -3.93700194 71.12840271 -6.98055363 -6.019007206 70.69740295 -6.62477064
		 -1.9858335e-021 61.8665123 -7.69398785 -2.48184299 61.59237289 -7.39063883 -2.16295195 68.89071655 -7.8186059
		 -4.7630514e-020 69.072608948 -7.97148657 7.65636301 54.52898788 0.843211 7.89821196 58.31933594 -0.14431401
		 -4.28897095 68.59000397 -7.524508 -4.96368504 61.2361908 -6.93199682 -6.94469738 60.57700348 -6.018876076
		 -6.32789707 68.093605042 -7.22107172 7.58975601 60.096115112 1.997998 5.25604153 60.21412659 3.68210077
		 -9.51050568 65.71781921 -6.5534935 6.32789707 68.093605042 -7.22107172 9.51050568 65.71781921 -6.5534935
		 0.192827 58.73768234 5.92776585 1.68504703 58.73606491 5.61797714 2.45940399 60.60796356 5.054710865
		 0.64254498 60.73440933 5.55487013 8.14183521 59.95280457 -0.55105728 6.63088608 48.58930588 -3.039797544
		 4.9076519 48.39652252 -4.080779552 0 48.32168961 -5.222579 0 54.46261597 -4.6280508
		 -0.557652 50.44556427 6.49323606 -0.19616801 50.46257782 6.43991709 -0.38081199 54.51765442 6.2287879
		 -0.71601552 54.52564621 6.32686186 0 43.46411514 -5.52838945 4.039904118 71.67767334 -3.013695955
		 4.40286922 69.81763458 -0.61335701 3.32651305 72.46190643 -5.091303825 5.7667141 64.13024902 2.94413066
		 4.64180088 67.76305389 0.974208 5.015499115 65.26583099 2.68677306 2.48184299 61.59237289 -7.39063883
		 -0.124895 57.61886597 6.10859394 0.87191898 57.53216553 5.93801212 8.20189953 49.089790344 -0.845263
		 8.20930481 65.5554657 1.95073473 1.47826195 66.22207642 3.34605598 2.98910308 65.8385849 3.030745983
		 8.34589767 60.59501648 -3.70744395 2.16295195 68.89071655 -7.8186059 0 71.40541077 -7.23031044
		 1.88897169 71.2906723 -7.13191748 3.97703433 71.94844055 -2.94853878 3.23763394 72.79059601 -5.038492203
		 4.224895 70.13721466 -0.360836 2.27187109 72.53083801 -1.049772024 2.42904711 72.27881622 -0.84480399
		 2.74102092 73.18317413 -2.50235891 1.99016297 71.98205566 -1.21054196 0.964661 71.21560669 -0.232557
		 1.27254796 71.78796387 0.142645 -2.75160909 70.67055511 0.0067619998 -1.88897145 71.29066467 -7.13191652
		 -1.543419 72.80040741 -5.98370123 0 72.82846069 -6.18942881 1.56898499 71.5313797 0.328834
		 0.69566602 71.53526306 0.60213 1.11408401 71.17854309 0.63507998 2.076114893 62.98730087 4.57392406
		 9.93477535 70.14523315 -5.93275642 10.47549152 66.18081665 -6.043326378 10.010424614 70.89381409 -3.64639211
		 2.074326038 44.57934952 5.644804 0.09928304 47.31894684 6.040146828 2.75160909 70.67055511 0.0067619998
		 2.56130099 71.62733459 -0.53336197 1.86397302 70.99806213 0.54506302 2.079251051 68.63500977 1.82442296
		 9.7642107 69.4727478 -0.88386559 9.80004215 63.10771561 -3.47558737 9.66849518 63.37878036 0.65905178
		 0.022355 55.91395569 6.026267052 1.29371405 57.46819687 5.73390293 2.45199203 58.73382187 5.26039219
		 4.86105394 65.31204224 2.86518407 1.091657043 62.69712067 4.96166897 4.51740408 67.8628006 1.34890997
		 1.543419 72.80040741 -5.98370123 1.49420202 73.19224548 -5.97209215 3.93700194 71.12840271 -6.98055363
		 4.28897095 68.59000397 -7.524508 -0.38986099 56.37548828 5.93352985 -0.614003 56.81513214 5.87236214
		 -0.62159801 56.74918747 5.80297089 -0.170288 56.14654922 6.16442013 -0.36351699 56.39186478 6.2078352
		 -7.3662403e-024 73.22880554 -6.17310905 1.39231896 73.45748138 -5.79835796;
	setAttr ".vt[166:331]" 0 73.4683609 -5.99043798 0 73.81719971 -5.74811697 1.58351302 73.74705505 -5.39607096
		 2.98831606 72.40724945 -2.77391195 1.56347203 73.57176971 -5.25421095 -0.73882902 54.509655 6.10335493
		 2.47902799 73.71906281 -3.61338305 2.38831401 72.94933319 -3.64051509 2.52994895 72.42473602 -2.18838692
		 -1.37502599 70.58766174 0.94773698 -1.86397302 70.99806213 0.54506302 -2.079251051 68.63500977 1.86273503
		 2.63133502 73.22431183 -4.58869219 1.96822703 68.12138367 2.16480303 1.37927902 66.21321869 3.10962701
		 1.018372059 62.63696289 4.72743416 0.96648198 66.23445129 3.21720099 0.77340698 68.192276 2.37065411
		 0 68.20482635 2.38749194 0.016931007 66.31057739 3.36861348 0.72936398 62.68196487 4.81933689
		 -0.017887 62.86142731 4.76913595 1.37502599 70.58766174 0.94773698 1.0018260479 68.12421417 2.22004199
		 2.89035511 72.81193542 -2.63071394 2.58541012 73.5207901 -4.03576088 1.53121102 73.88820648 -4.98620796
		 9.58680534 66.18660736 1.28603256 1.024448037 70.94125366 0.29745799 1.36800897 70.18984222 0.73536801
		 11.89690971 7.26382113 -1.73373795 12.66081047 5.46332693 -1.075080395 12.051247597 5.4593873 -2.73751163
		 11.53467941 7.3616662 -3.082168818 10.91321182 8.85575485 -5.7616744 13.26411915 8.61465073 -3.045468569
		 12.39306355 8.35501575 0.84481823 8.085883141 8.44291115 -4.0043401718 0 73.41140747 -5.23734617
		 1.43307197 73.23674774 -4.67836618 1.49579895 74.15380859 -4.66285706 20.47800255 65.7991333 3.46733689
		 21.68978882 64.28549957 1.86141336 23.98982239 64.2963562 7.2941637 22.70261765 65.93274689 8.37221909
		 0.62981099 70.094863892 1.042500019 0.50404799 70.07308197 1.22650695 -1.11408401 71.17854309 0.63507998
		 0.65130198 70.43643188 1.11560905 0.80959302 70.30747986 0.75576597 0.84898299 71.0067672729 0.84897602
		 -2.3202043e-015 70.080131531 1.26059496 0.55825102 60.69157028 5.45211315 0.096231997 58.68498611 5.77079201
		 -0.63591498 50.45373535 6.2371068 -0.011229 62.86300659 4.89057302 0.043466002 60.72384644 5.45797586
		 -2.2915648e-015 70.43395233 1.19119 0 70.90402985 1.0024329424 0 71.50076294 0.64511299
		 -2.2483839e-015 70.96533203 0.115652 26.70035934 64.40731812 12.92951298 25.28011131 66.18318176 14.078552246
		 25.45238113 68.6031723 14.12024593 22.81995392 68.2100296 8.53535843 26.87955475 70.180336 13.28019142
		 24.083034515 69.61213684 7.7436018 29.0030231476 70.00022125244 11.81697464 26.040935516 69.56240845 6.34695959
		 -0.69566602 71.53526306 0.60213 30.31000137 68.29164124 10.76818848 27.24908257 68.037368774 5.2835865
		 29.92973518 65.41527557 10.78316402 26.87805367 65.30201721 5.261868 -9.47203922 70.19026184 -6.020426273
		 21.27468681 64.27484131 1.0020241737 20.55175209 65.71479034 2.94650984 20.27081871 65.64997864 2.7719698
		 20.59620476 64.31460571 0.60403955 20.63342094 67.78791046 3.025539637 20.11186028 67.7480545 2.79869628
		 -0.41524801 58.70386124 5.79276705 -0.21505301 57.62002182 5.92437696 22.64777946 65.34404755 -1.39025593
		 20.49931526 65.62607574 -2.17377734 21.24353981 68.91201019 1.96331489 20.0069313049 68.88707733 1.60859728
		 22.43522644 68.82712555 -0.059675567 20.32148743 68.88803101 -0.68605113 5.52526331 42.6249733 4.79285574
		 22.96348763 67.74198151 -1.47487855 20.5107193 67.76870728 -2.22735095 15.9197197 64.23506165 -1.50468647
		 15.65689754 65.64431763 1.30572975 -0.495253 58.74996948 5.88144016 11.40420246 66.35135651 -5.59070349
		 10.25744057 69.42415619 -1.36168194 10.77411175 68.4768219 -5.69068336 10.51652718 69.78958893 -3.68344164
		 7.16525173 41.59111404 4.44236803 20.58277702 67.9162674 3.60926366 -7.086472511 36.30119324 -4.31574631
		 -7.18474293 36.2995224 -4.65478134 21.62785912 69.11109161 2.81883574 23.373209 69.0079116821 1.23363745
		 8.8559742 39.93865967 3.27848339 24.41779709 67.76893616 0.17187703 24.051778793 65.25801849 0.077895448
		 -2.86097288 70.78158569 -0.015517 -2.13376307 68.17254639 2.42113996 -8.8559742 39.93865967 3.27848339
		 -7.90587902 47.59004974 1.17381299 -7.16525173 41.59111404 4.44236803 -9.45206928 37.30085373 -1.7012558
		 -6.37323809 47.58303452 -3.0042850971 -9.64686584 38.23901367 1.23044968 -5.52526379 42.62494278 4.79284763
		 -6.14622688 47.46767044 3.79260802 -3.10140204 47.3696785 5.39601707 -2.0044400692 44.5669899 5.61633205
		 7.59171867 24.39428902 7.30675745 8.70124435 24.71813393 9.22814369 5.80414295 32.39183807 8.34135151
		 4.85005426 31.41782951 5.86946487 10.45783615 25.023338318 8.8037014 8.086550713 33.31306839 7.71623611
		 11.13461781 24.92658806 7.35605049 9.79648972 33.69798279 5.19066954 10.041161537 24.5994072 4.90413332
		 8.41985416 32.42676544 1.6467967 8.21776581 23.96975517 5.65728855 6.11732197 30.96084976 2.14235735
		 8.44110394 23.10866547 8.1618166 9.25481796 22.76494789 9.1976099 10.90942097 22.93637848 8.72667599
		 8.36702824 23.2068119 5.79608107 11.59270287 23.49309731 7.72975159 10.35451221 23.40380096 5.07341814
		 9.45482731 21.057851791 7.89930534 8.48187256 22.72540283 7.80051804 8.039440155 15.32128906 2.49521804
		 9.75001717 13.27672386 3.5593431 10.87654877 20.49926376 6.72597408 11.81542301 13.26576042 2.83151507
		 8.16357613 22.76864624 4.69932318 8.49182606 17.26102448 0.19350058 11.97158909 20.49084091 4.93430805
		 12.65518665 15.69079781 1.69033039 10.16463566 22.43239594 3.46331334 10.47039127 17.75581551 -0.37953407
		 1.24880755 36.91264343 2.79156685 1.82522357 38.18424225 5.1699605 5.2032469e-008 38.031570435 5.30960035
		 0 36.95197296 3.16474199 -3.20331764 44.15498734 -4.42718315 0 44.15497589 -4.4271822
		 0 38.91721344 -3.36753654 -3.74338341 39.17879486 -3.076980114 4.4233584e-008 42.86840439 5.60533524
		 -3.032213211 42.91861343 5.30991554 -2.71813631 39.62602997 6.26002312 5.2032469e-008 39.23822403 6.42585659
		 3.20553041 34.29439545 4.85435486 4.30565977 36.22951889 7.52190161 7.77273607 8.19167423 -0.99361253
		 9.89676476 8.30278683 1.38451827;
	setAttr ".vt[332:497]" -8.70124245 24.71813393 9.22813988 -10.4578352 25.023338318 8.80369854
		 -10.90941525 22.93638229 8.72665691 -9.25480461 22.76493073 9.19758129 -7.59171772 24.39428902 7.30675459
		 -8.44110012 23.108675 8.16179562 -8.21776485 23.96975517 5.65728521 -8.36702251 23.20681 5.79605532
		 -11.13461685 24.92658806 7.35604763 -11.59269714 23.49310112 7.72973251 -10.041160583 24.5994072 4.90413046
		 -10.35450459 23.40380859 5.073390961 9.64686871 38.23902512 1.23045015 7.90587902 47.59004974 1.17381299
		 2.71813631 39.62602997 6.26002312 6.058852196 41.47847366 4.86282063 7.20498371 37.91493225 6.39362001
		 8.1022377 41.98087311 1.94011831 9.095556259 38.060462952 3.66835308 6.77990294 39.82271576 -2.06330514
		 7.70207071 36.042892456 -0.049182933 3.29112244 36.60761261 -1.28949189 4.84290791 33.7103157 0.82844067
		 3.20331693 47.56339645 -4.19129181 3.20331764 44.15498734 -4.42718315 0 47.56339645 -4.4271822
		 -6.058852196 41.47847366 4.86282063 -6.18105364 43.41918945 4.3105979 0 36.60762405 -1.31149077
		 3.74338651 39.17882919 -3.076982737 -8.030778885 44.15216827 1.17381299 -8.1022377 41.98087311 1.94011831
		 -6.77990294 39.82271576 -2.06330514 -6.56312323 44.12398529 -3.24017477 6.18105364 43.41918945 4.3105979
		 8.030778885 44.15216827 1.17381299 6.14622688 47.46767044 3.79260802 6.5631218 44.12397385 -3.24017406
		 6.37323809 47.58303452 -3.0042850971 3.032211542 42.91859055 5.30991268 3.10140204 47.3696785 5.39601707
		 9.45206928 37.30085373 -1.7012558 -10.029985428 38.25391769 1.21640801 -9.61040497 37.29531479 -2.023993492
		 9.2977705 5.34791803 -4.36593103 9.26716137 6.46767187 -4.32975149 9.95258331 6.52410841 -5.017850876
		 10.01088047 5.40610027 -5.05834341 11.10705471 4.82640743 -4.86249399 12.072967529 4.85735464 -2.98460436
		 9.71325779 4.73247671 -2.30821681 9.33217525 4.71629524 -4.3835392 10.045311928 4.77447939 -5.075955868
		 9.66885853 5.35692596 -2.059098959 11.050610542 5.4566555 -4.83867359 10.82642841 6.53567743 -4.76710415
		 11.48502445 5.0019931793 6.07540226 13.033618927 5.44378519 5.97073221 12.067218781 6.50713825 2.5276227
		 11.37214947 6.22398281 2.57819319 9.2065134 8.50595951 -3.75773096 9.95245171 8.58090687 -4.32338095
		 9.92017555 7.52919197 -4.82926321 9.28355122 7.44312954 -4.15238237 10.18690777 8.10621738 -0.71177852
		 9.69603634 8.14337635 -1.20617008 9.75887489 7.093869209 -1.038706183 10.94146442 7.18008137 1.16963005
		 10.76487255 8.59714222 -4.23476839 11.42040634 8.44580746 -3.17184377 10.77149582 7.53179216 -4.52540016
		 11.58961773 8.25376415 -1.19632971 11.11391926 8.14940548 -0.58008486 11.57542419 7.27616835 1.090654969
		 12.17838955 6.89043427 0.47274315 10.80398083 5.28249931 1.422212 12.91532803 6.29956007 2.32663822
		 13.33971119 4.76837492 0.64757329 10.73069477 4.54310751 1.46761727 10.32400513 5.40962505 -0.35445243
		 10.88250828 4.52934599 3.34547019 10.88351917 5.13196898 3.32591558 7.086472511 36.30119324 -4.31574631
		 14.609231 5.25834703 5.84109163 9.3963356 7.28839111 -2.41835165 9.32698631 8.28732777 -2.4075532
		 11.62567329 8.33736038 -1.94218123 13.051348686 5.4810133 0.60765851 14.075790405 5.30267096 7.50490952
		 13.33722401 5.26051903 8.2322464 13.35983658 4.83969831 8.21923351 14.10234642 4.83480692 7.4917264
		 12.5127182 5.20843077 7.83995485 11.52624989 4.51294708 6.082374096 12.52716064 4.73979282 7.87328148
		 14.17643261 4.76531458 2.64590359 14.74283028 4.71620083 5.87085009 13.74666691 5.39145947 2.18145251
		 -2.55936408 50.31302261 6.023746014 -2.38925195 54.51865005 5.82735491 -5.085192204 54.49486923 4.61606407
		 -5.26858902 50.14800262 4.92018509 -2.45119095 46.92635727 5.89766312 -2.20510197 44.56386566 5.86550903
		 -8.74104595 45.10716248 -0.716286 -7.086606026 44.16817093 -3.3748374 -3.033946991 73.10621643 -4.9114418
		 -3.50631309 72.35843658 -2.87599492 -3.16879892 72.56345367 -2.76956105 -2.8344059 73.45921326 -4.69553423
		 -8.98806572 69.51402283 -0.56483155 -6.25503492 67.76725006 0.46164399 -6.38593102 69.71878052 -1.214239
		 -9.43660927 70.92424774 -3.35214472 -9.17468643 39.94028854 3.34370303 -8.12147427 45.4831543 1.78339124
		 -4.84669495 54.46167755 -3.92130613 -6.54797602 54.46137619 -3.21195793 -5.68211699 42.74604797 5.089431763
		 -5.422472 46.11756516 4.7681942 -6.89948273 45.75365067 3.57663918 -7.38337898 41.61454391 4.70367813
		 -6.27421522 71.33789063 -3.40405202 -3.63752604 70.48487854 -0.184718 -3.46226811 68.012901306 1.86621106
		 -2.28927994 58.70183563 5.026250839 -5.25785542 58.58691406 3.9385643 -7.80180979 54.460289 -1.61326003
		 -7.93863916 58.97079849 -3.57251143 -4.9436636 43.67393494 -4.60950089 -6.61128807 54.4680481 3.17533112
		 -7.14741802 58.4415741 2.37936497 -3.91332603 60.20651245 4.25696802 -3.76520395 60.30920029 4.42356491
		 -2.83470011 63.40468597 4.12424803 -2.94649625 63.38147354 3.91037226 -7.76243401 49.68826294 1.34857404
		 -6.63369608 50.0040168762 3.32917309 -7.89821196 58.31933594 -0.14431401 -7.65636396 54.52899551 0.84321111
		 -5.25603771 60.21408463 3.68209815 -7.58975601 60.096115112 1.997998 -0.73549801 60.70283508 5.49666119
		 -8.14183521 59.95280457 -0.55105728 -4.90765381 48.3965416 -4.080780983 -6.63088608 48.58930588 -3.039797544
		 -1.059157014 57.43722153 5.71342278 -1.09247005 57.3360672 5.60665512 -4.40286922 69.81763458 -0.61335701
		 -4.039904118 71.67767334 -3.013695955 -5.015499115 65.26583099 2.68677306 -4.64180088 67.76305389 0.974208
		 -5.7667141 64.13024902 2.94413066 -1.72203696 58.71776581 5.51689577 -8.20189953 49.089790344 -0.845263
		 -8.20930481 65.5554657 1.95073473 -2.96236801 65.94192505 2.99358797 -1.48457694 66.24572754 3.38870311
		 -8.34589767 60.59501648 -3.70744395 -3.23763394 72.79059601 -5.038492203 -3.97703266 71.94841003 -2.94853759
		 -4.224895 70.13721466 -0.360836 -9.89675522 8.30278111 1.38448048 -12.39305496 8.35503006 0.8447842
		 -8.085873604 8.44292164 -4.0043745041 -7.77272654 8.19167423 -0.99364942;
	setAttr ".vt[498:663]" -0.964661 71.21560669 -0.232557 -1.99016297 71.98205566 -1.21054196
		 -13.26410961 8.61465359 -3.045505047 -10.91320324 8.85575485 -5.7617116 -2.45940399 60.60796356 5.054710865
		 -2.0081198215 63.26429749 4.6123023 -2.1724751 58.71841431 5.23371887 -4.86105394 65.31204224 2.86518407
		 -1.19715655 63.37373352 4.96231747 -4.51740408 67.8628006 1.34890997 -1.49420202 73.19224548 -5.97209215
		 9.67529011 8.80794239 -1.13401425 9.30623627 8.9518919 -2.33539486 -0.83833599 60.68763351 5.58652401
		 -1.39231896 73.45748138 -5.79835796 -1.53658402 73.77558136 -5.42440701 -2.52994895 72.42473602 -2.18838692
		 -2.38831401 72.94933319 -3.64051509 -1.96822703 67.99053955 2.27230906 -1.38397741 66.20075226 3.2467134
		 -1.15040004 63.22589493 4.63153887 -0.77340907 68.19245911 2.37066054 -0.88038301 66.25566864 3.35381198
		 -0.69134402 63.077365875 4.7348938 -1.0018260479 68.12421417 2.22004199 -1.36800897 70.18984222 0.73536801
		 -1.024448037 70.94125366 0.29745799 -1.43307197 73.23674774 -4.67836618 -0.50404799 70.07308197 1.22650695
		 -0.62981099 70.094863892 1.042500019 -0.84898299 71.0067672729 0.84897602 -0.80959302 70.30747986 0.75576597
		 -0.65130198 70.43643188 1.11560905 -0.71872902 63.085559845 4.85804892 10.16616154 8.77078342 -0.63962263
		 -1.8252238 38.18424606 5.16996098 -4.84290791 33.7103157 0.82844067 -3.20553041 34.29439545 4.85435486
		 -4.85005474 31.41783142 5.86946535 -6.11732197 30.96084976 2.14235735 -3.20331693 47.56339645 -4.19129181
		 -3.29112244 36.60761261 -1.28949189 -1.24880755 36.91264343 2.79156685 -7.70207071 36.042892456 -0.049182933
		 -8.41985321 32.42676544 1.6467936 -9.095556259 38.060462952 3.66835308 -9.79648972 33.69798279 5.19066954
		 -4.30565977 36.22951889 7.52190161 -5.80414295 32.39183807 8.34135151 -7.20498371 37.91493225 6.39362001
		 -8.086550713 33.31306839 7.71623611 -12.65517712 15.69080067 1.69029415 -10.47037506 17.75580788 -0.37956846
		 -8.49181652 17.26102638 0.19346443 -11.81542015 13.265769 2.83147955 -8.039430618 15.32129192 2.4951818
		 -9.75000858 13.27672672 3.55930686 -11.97157097 20.49082756 4.934268 -10.18170357 22.46373558 3.48152876
		 -8.16356659 22.76865005 4.69928694 -10.87653923 20.49926567 6.72593784 -8.48186398 22.72538376 7.80050182
		 -9.45481777 21.057853699 7.8992691 9.1857729 9.17053032 -3.68558073 11.093173027 8.8139677 -0.50793004
		 9.93170547 9.24547291 -4.25122499 11.56887054 8.91832829 -1.12417448 10.74421024 9.26236343 -4.16218138
		 11.60492802 9.0019264221 -1.87002552 11.39966011 9.1103735 -3.099688053 25.65078926 69.43535614 10.32376289
		 26.96644402 69.84138489 13.14461899 25.70560265 68.44817352 13.88650036 24.50769615 68.17247009 10.99681854
		 25.55341339 66.31040192 13.84964275 24.37116432 66.23469543 10.96384621 29.99713326 68.172966 10.9260416
		 29.6612072 65.63205719 10.93922234 26.80817604 64.74165344 12.83480453 29.25984764 69.64431 12.78431797
		 27.45653152 69.79721832 14.022828102 25.83391762 68.81865692 10.15141964 27.081115723 68.71291351 9.29259586
		 26.098611832 66.40388489 14.69933891 27.3065815 64.89629364 13.73029423 25.72979546 65.42941284 9.94609261
		 24.89572144 66.47198486 10.62071705 25.5087738 64.81270599 10.043712616 26.24328613 68.45831299 14.73308372
		 28.84245491 69.68228149 11.85233593 27.35186768 69.2911377 9.15239811 28.095533371 65.61980438 8.32449436
		 28.39963531 67.92301178 8.31279087 30.36930275 68.19384003 11.89313316 30.044683456 65.75198364 11.90330982
		 24.99582481 67.89273071 10.64489079 27.62635994 66.02116394 8.68559361 27.84932327 67.70983124 8.67701244
		 -11.60491753 9.0019283295 -1.87006187 -11.39965057 9.1103754 -3.099724293 -11.4203968 8.44580936 -3.17188025
		 -11.62566471 8.33736229 -1.94221771 -10.74411869 9.26171207 -4.16264915 -10.76486301 8.59714508 -4.23480463
		 -11.56942558 8.91301727 -1.1234113 -11.58960819 8.25376415 -1.19636667 -9.9317255 9.24550152 -4.25127411
		 -9.95244217 8.58090687 -4.32341766 -11.093409538 8.81080151 -0.507797 -11.11390972 8.14940453 -0.58012199
		 -9.18687344 9.17900944 -3.67990994 -9.20651817 8.50597191 -3.75777316 -10.16615486 8.77078724 -0.63965976
		 -10.18689919 8.10622215 -0.71181422 -9.30622482 8.95189285 -2.33542943 -9.32697201 8.28732681 -2.40758562
		 -9.67528057 8.8079443 -1.13405061 -9.6960268 8.14337826 -1.20620644 -14.74282265 4.71620321 5.87081385
		 -11.52623653 4.51294899 6.082336426 -12.52715111 4.73979521 7.87324476 -13.359828 4.83970022 8.21919727
		 -14.10233688 4.8348093 7.49169016 -14.075780869 5.30267286 7.5048728 -13.33721447 5.26052141 8.23221016
		 -13.03360939 5.44378757 5.97069597 -14.60922813 5.2583499 5.84105635 -12.51270866 5.20843315 7.83991861
		 -11.48501492 5.0019955635 6.07536602 -13.74665737 5.39146137 2.18141603 -14.17642307 4.76531696 2.64586711
		 -12.17838001 6.89043617 0.47270674 -13.051339149 5.48101568 0.60762209 -12.91530895 6.29956055 2.3266027
		 -13.33978081 4.76835012 0.64864808 -10.80397224 5.28250122 1.42217553 -10.73068523 4.54310942 1.4675808
		 -10.32399559 5.40962696 -0.35448885 -11.37213993 6.2239852 2.57815671 -10.88350964 5.13197088 3.3258791
		 -10.94145489 7.18008327 1.16959369 -9.75886536 7.09387064 -1.038743615 -9.66884899 5.35692787 -2.059135437
		 -9.39632702 7.28839302 -2.41838765 -10.01086998 5.40610266 -5.05837965 -10.045302391 4.7744813 -5.075992107
		 -11.10704517 4.82640934 -4.86253023 -11.050601959 5.45665741 -4.83871031 -10.88249874 4.5293479 3.34543371
		 -11.53467083 7.36166811 -3.082205057 -11.89690113 7.26382351 -1.73377442 -11.57541466 7.27617025 1.090618491
		 -12.067209244 6.50714016 2.52758622 -9.92016602 7.52919436 -4.82929945 -9.95256996 6.52410889 -5.017883301
		 -10.82641888 6.53567934 -4.76714087 -10.77148628 7.53179455 -4.5254364 -12.66080093 5.46332884 -1.075116754
		 -9.71324825 4.7324791 -2.30825329 -9.33216572 4.71629763 -4.38357544 -9.32518959 5.34965944 -4.37471628
		 -12.05123806 5.45938921 -2.73754787 -12.072957993 4.85735703 -2.98464084 -9.26715279 6.46767378 -4.32978821
		 -9.28354263 7.44313192 -4.15241861 -8.36043644 45.13912201 -0.68009132;
	setAttr ".vt[664:829]" -6.85588312 44.15920258 -3.072675228 -4.75668907 43.56216812 -4.30428171
		 -6.6192385e-016 43.47576523 -5.31421328 4.75668478 43.56212616 -4.3042779 6.85588312 44.15920258 -3.072675228
		 8.36043262 45.13910294 -0.68009102 7.77598715 45.51507187 1.619627 6.55400085 45.78559494 3.41287589
		 1.69917881 46.96647263 5.67070341 5.19048548 46.14950562 4.46428871 -7.77598715 45.51507187 1.619627
		 -5.19048548 46.14950562 4.46428871 -2.37443471 46.95829773 5.52311707 -6.55400085 45.78559494 3.41287589
		 23.98383331 66.063659668 11.21578121 24.14662552 68.37410736 11.25509453 25.509552 69.87986755 10.45259857
		 27.53777504 69.70790863 9.055960655 28.78705025 68.076675415 8.054883003 28.42446136 65.33052063 8.068837166
		 25.34022522 64.36819458 10.11868954 15.47055912 67.94763947 1.64168727 15.87421799 69.1339035 0.31263766
		 16.55449486 69.1362915 -1.87241793 16.90549278 68.079437256 -3.5253377 16.61170959 66.038635254 -3.63250518
		 -9.93477535 70.14523315 -5.93275642 -10.47549152 66.18081665 -6.043326378 -10.010424614 70.89381409 -3.64639211
		 -9.7642107 69.4727478 -0.88386559 -9.80004215 63.10771561 -3.47558737 -9.66849518 63.37878036 0.65905178
		 -9.58680534 66.18660736 1.28603256 -20.47800255 65.7991333 3.46733689 -21.68978882 64.28549957 1.86141336
		 -23.98982239 64.2963562 7.2941637 -22.70261765 65.93274689 8.37221909 -26.70035934 64.40731812 12.92951298
		 -25.45450211 66.19456482 14.010714531 -25.66161346 68.5379715 13.92329597 -22.81995392 68.2100296 8.53535843
		 -27.11282158 70.14761353 13.089720726 -24.083034515 69.61213684 7.7436018 -29.19166756 69.85340881 11.66392803
		 -26.040935516 69.56240845 6.34695959 -30.46887779 68.11579132 10.70722866 -27.24908257 68.037368774 5.2835865
		 -30.11541176 65.35901642 10.76178646 -26.87805367 65.30201721 5.261868 -21.27468681 64.27484131 1.0020241737
		 -20.55175209 65.71479034 2.94650984 -20.27081871 65.64997864 2.7719698 -20.59620476 64.31460571 0.60403955
		 -20.63342094 67.78791046 3.025539637 -20.11186028 67.7480545 2.79869628 -22.64777946 65.34404755 -1.39025593
		 -20.49931526 65.62607574 -2.17377734 -21.24353981 68.91201019 1.96331489 -20.0069313049 68.88707733 1.60859728
		 -22.43522644 68.82712555 -0.059675567 -20.32148743 68.88803101 -0.68605113 -22.96348763 67.74198151 -1.47487855
		 -20.5107193 67.76870728 -2.22735095 -15.9197197 64.23506165 -1.50468647 -15.65689659 65.64434052 1.30572975
		 -11.40420246 66.35135651 -5.59070349 -10.25744057 69.42415619 -1.36168194 -10.77411175 68.4768219 -5.69068336
		 -10.51652718 69.78958893 -3.68344164 -20.58277702 67.9162674 3.60926366 -21.62785912 69.11109161 2.81883574
		 -23.373209 69.0079116821 1.23363745 -24.41779709 67.76893616 0.17187703 -24.051778793 65.25801849 0.077895448
		 -25.78224564 69.41275024 10.23337269 -27.19033813 69.86704254 13.019572258 -25.8941555 68.42935944 13.76410294
		 -24.65954399 68.1618576 10.91572571 -25.70916557 66.33628845 13.8421793 -24.37116432 66.23469543 10.96384621
		 -30.18788147 68.052276611 10.89158726 -29.87217522 65.58999634 10.94032097 -26.80817604 64.74165344 12.83480453
		 -29.62735939 69.29070282 12.68007278 -27.72799873 69.72970581 13.85816383 -26.47228432 69.2614975 11.24471664
		 -27.80893707 68.91671753 10.37795925 -26.3253746 66.29988861 14.59771729 -27.87628937 65.17799377 13.53874588
		 -26.69098663 65.94351959 10.94641113 -25.59937477 66.58802795 11.67170238 -25.5087738 64.81270599 10.043712616
		 -26.38013268 68.24034119 14.63426876 -29.047109604 69.60426331 11.74609184 -27.45067596 69.26989746 9.049812317
		 -28.17570305 65.6337204 8.2196312 -28.47673416 67.91480255 8.20385647 -30.58752632 67.84928131 11.92541981
		 -30.1368866 65.92780304 12.090553284 -25.61310768 68.022346497 11.73178577 -28.28788948 66.25931549 9.94577789
		 -28.61491966 67.70133209 9.80694008 -23.98383331 66.063659668 11.21578121 -24.2970314 68.37410736 11.22235489
		 -25.64862061 69.87986755 10.40090847 -27.65714645 69.70790863 8.97608757 -28.89232254 68.076675415 7.95766497
		 -28.52996445 65.33052063 7.97668028 -25.34022522 64.36819458 10.11868954 -13.37742233 69.25283051 -0.49376553
		 -13.89374447 69.23936462 -2.71390367 -14.45550919 68.23599243 -4.38712358 -14.59940147 66.24378967 -4.39928055
		 -15.47055912 67.94763947 1.64168727 -15.87421799 69.1339035 0.31263766 -16.55449486 69.1362915 -1.87241793
		 -16.90549278 68.079437256 -3.5253377 -16.61170959 66.038635254 -3.63250518 -2.42334771 54.46215439 -4.45691824
		 -2.45382905 48.35916138 -4.96651745 -2.47183108 43.52241898 -5.23501539 -3.82793641 35.75149536 -5.49163055
		 -3.76945353 35.75300217 -5.15676403 2.42334747 54.46214676 -4.45691824 2.45382595 48.35910797 -4.9665122
		 2.47183347 43.5223732 -5.23500967 3.82793641 35.75149536 -5.49163055 3.76945353 35.75300217 -5.15676403
		 2.35372496 43.46554184 -4.81186581 -2.35372591 43.46556091 -4.81186771 -2.33926582 56.61024475 5.42680264
		 -5.17152309 56.54088593 4.27731371 -6.87935066 56.45479202 2.77734709 -7.77728748 56.42416382 0.3494485
		 -7.87022448 56.59976196 -2.62240601 -6.83187819 57.36880493 -4.58432198 -4.90518999 57.78376007 -5.38205719
		 -2.45259523 57.89468384 -5.83627272 -9.9291673e-022 58.005607605 -6.1898427 2.45259523 57.89468384 -5.83627272
		 4.90518999 57.78376007 -5.38205719 6.83187819 57.36880493 -4.58432198 7.87022448 56.59976196 -2.62240601
		 7.77728748 56.42416382 0.3494485 6.87935066 56.45479202 2.77734709 5.17152309 56.54088593 4.27731371
		 6.69761801 64.42760468 -7.14602089 4.62632799 65.0074462891 -7.70373297 2.32239747 65.37397003 -8.043504715
		 -2.4808174e-020 65.60198212 -8.29796791 -2.32239747 65.37397003 -8.043504715 -4.62632799 65.0074462891 -7.70373297
		 -6.69761801 64.42760468 -7.14602089 -9.2382164 62.52768707 -4.52931738 9.2382164 62.52768707 -4.52931738
		 -0.7477262 35.49053574 -5.72543669 -0.73058844 35.48633957 -5.38637304 0.73058844 35.48633957 -5.38637304
		 0.74772632 35.49053955 -5.72543764 13.89374447 69.23936462 -2.71390367 13.37742233 69.25283051 -0.49376553
		 13.23862743 68.078353882 1.060711026 13.5049839 65.58535004 0.5907374 13.72496986 64.11180878 -2.28279567
		 14.59940147 66.24378967 -4.39928055 14.45550919 68.23599243 -4.38712358;
	setAttr ".vt[830:846]" -13.23862743 68.078353882 1.060711026 -13.5049839 65.58535004 0.5907374
		 -13.72496986 64.11180878 -2.28279567 27.49437523 69.70771027 13.99188137 26.32608986 68.41771698 14.67728519
		 26.18680763 66.43832397 14.64489746 27.34999466 64.9858017 13.71037674 29.98721313 65.81023407 11.94887638
		 30.29996872 68.1628952 11.93885612 29.23131371 69.56038666 12.79754257 -27.10014153 69.49560547 12.55144024
		 -28.71814728 69.10371399 11.52901554 -29.60122299 67.7753067 10.86618042 -29.21238708 66.093559265 11.018165588
		 -27.283638 65.5607605 12.24257946 -25.96237564 66.44395447 13.13471031 -25.99662018 68.13134766 13.18302727;
	setAttr -s 1728 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 0 1 4 5 1 5 6 1 6 7 1 7 4 1 8 5 1
		 5 9 1 9 10 0 10 8 1 11 4 1 7 12 1 12 11 1 13 14 1 14 15 1 15 16 1 16 13 1 17 18 1
		 18 19 1 19 20 1 20 17 0 21 22 1 22 23 1 23 24 1 24 21 0 25 26 1 26 27 1 27 28 1 28 25 1
		 29 30 1 30 31 1 31 32 1 32 29 1 23 33 1 33 34 1 34 24 0 35 805 1 36 37 1 37 804 1
		 38 35 1 39 4 1 11 40 1 40 39 0 41 42 1 42 43 1 43 44 1 44 41 0 29 45 1 45 30 1 46 47 1
		 47 48 1 48 46 1 49 50 1 50 51 1 51 52 1 52 49 1 8 53 1 53 0 1 0 54 1 54 8 1 55 56 1
		 56 57 0 57 15 1 14 809 1 35 58 1 58 806 1 59 36 1 21 60 0 60 61 1 61 22 1 62 55 1
		 14 63 1 63 808 1 64 65 1 65 66 1 66 67 1 67 64 0 68 42 1 42 33 1 33 69 1 69 68 1
		 52 27 1 26 49 1 70 71 1 71 72 1 72 73 1 73 70 1 74 75 1 75 814 1 76 77 1 77 813 1
		 48 45 1 29 46 1 63 78 1 78 807 1 79 62 1 80 815 1 81 82 1 82 816 1 83 80 1 62 84 1
		 84 85 1 85 55 1 240 83 1 73 83 1 83 86 1 35 810 1 89 90 1 90 91 1 91 92 1 92 89 0
		 79 93 1 93 84 1 94 95 1 95 37 1 36 94 1 95 788 1 96 97 1 97 787 1 98 99 1 99 100 1
		 100 101 1 101 98 0 72 80 1 13 68 1 68 63 1 69 78 1 95 61 1 61 789 1 102 96 1 45 103 1
		 103 104 0 104 30 1 43 18 1 17 44 0 48 105 1 105 103 0 75 81 1 80 76 1 106 31 1 31 107 1
		 107 108 0 108 106 1 109 38 1 89 110 0 110 111 1 111 90 1 16 99 1 99 19 1 18 16 1
		 94 112 1 112 23 1 22 94 1 13 43 1 41 34 0 60 790 0 106 113 1 113 32 1 59 112 1 114 115 1
		 115 51 1 50 114 1 88 818 1 116 58 1;
	setAttr ".ed[166:331]" 104 107 0 117 77 1 77 118 1 118 119 1 119 117 1 87 46 1
		 46 88 1 27 120 1 120 121 1 121 28 1 52 122 1 122 120 1 108 64 0 64 106 1 123 124 1
		 124 125 1 125 123 1 123 126 1 126 127 0 127 128 1 128 123 1 10 129 0 129 53 1 118 130 1
		 130 131 1 131 132 0 132 118 1 133 128 1 128 134 1 134 135 1 135 133 1 136 91 1 91 66 1
		 65 136 1 130 72 1 71 131 0 59 78 1 69 112 1 116 93 1 79 58 1 46 137 1 137 138 1 138 88 1
		 29 139 1 139 137 1 140 17 1 20 141 1 141 140 0 142 143 1 143 144 1 144 145 1 145 142 0
		 32 146 1 146 139 1 138 147 1 147 116 1 113 193 1 130 76 1 39 9 0 147 148 1 148 93 1
		 148 84 1 15 100 1 57 149 0 149 100 0 111 150 1 150 151 1 151 90 1 115 136 1 65 152 1
		 152 115 1 114 153 0 153 136 1 152 154 1 154 51 1 154 122 1 108 152 1 107 154 1 104 122 1
		 103 120 1 105 121 1 117 812 1 109 74 1 105 155 0 155 156 1 156 121 1 119 157 1 157 158 1
		 158 117 1 151 56 1 56 67 0 66 151 1 85 67 1 150 57 1 150 149 1 159 160 1 160 161 1
		 161 159 0 149 162 1 162 101 1 110 163 0 163 162 1 162 111 1 153 92 0 85 106 1 84 113 1
		 98 20 0 54 6 1 132 164 1 164 156 1 155 132 0 156 165 1 165 28 1 164 166 1 166 165 1
		 167 168 1 168 165 1 166 167 1 168 25 1 26 169 1 169 142 0 142 49 1 167 40 1 40 170 0
		 170 168 1 171 159 0 161 171 1 172 173 1 173 174 0 174 125 1 125 172 1 175 176 1 176 177 1
		 177 175 1 25 178 1 178 169 0 50 145 1 145 179 0 179 50 1 179 180 0 180 114 1 180 181 0
		 181 153 1 182 183 1 183 184 1 184 185 1 185 182 1 186 182 1 185 187 1 187 186 0 188 144 1
		 144 133 1 135 188 1 188 145 1 182 180 1 180 189 0 189 183 1 186 181 0 125 190 1 190 191 1
		 191 172 1 170 178 0 170 192 1 192 191 1 191 178 1 193 146 1;
	setAttr ".ed[332:497]" 163 101 0 135 194 1 194 195 0 195 188 1 148 193 1 196 197 1
		 197 198 0 198 199 1 199 196 1 174 126 0 169 190 1 190 143 1 124 143 1 200 201 0 201 202 0
		 202 203 1 203 200 0 204 205 0 205 206 1 206 12 1 12 204 1 11 192 1 172 206 1 205 173 0
		 207 208 1 208 209 1 209 210 1 210 207 1 189 211 0 211 212 0 212 183 1 195 145 0 206 192 1
		 213 1 1 1 176 1 175 213 1 214 215 1 215 194 0 194 216 1 216 214 1 212 217 0 217 184 1
		 92 218 1 218 219 0 219 89 1 171 220 0 220 98 1 101 171 1 187 221 1 221 186 0 222 219 1
		 218 222 1 181 218 0 186 218 1 195 211 1 189 179 1 176 53 1 129 177 0 211 215 0 214 212 1
		 214 223 1 223 217 1 216 224 1 224 223 1 195 215 1 225 134 0 134 127 1 127 226 0 226 225 1
		 221 222 1 225 224 1 216 134 1 194 134 0 133 124 1 227 228 0 228 678 1 209 684 1 228 229 0
		 229 679 1 230 210 1 163 159 1 229 231 0 231 680 1 232 230 1 231 233 0 233 681 1 234 232 1
		 213 235 1 235 2 1 233 236 0 236 682 1 237 234 1 236 238 0 238 683 1 239 237 1 238 227 0
		 209 239 1 240 73 1 86 240 1 241 242 1 242 243 1 243 244 1 244 241 1 242 245 1 245 246 1
		 246 243 1 247 248 0 248 219 0 219 247 1 249 241 1 244 250 1 250 249 1 245 251 1 251 252 1
		 252 246 1 251 253 1 253 254 1 254 252 1 140 255 0 255 44 1 256 249 1 250 257 1 257 256 1
		 253 256 1 257 254 1 258 259 1 240 70 1 247 260 1 260 248 0 138 261 1 262 146 1 257 688 1
		 263 264 1 262 264 1 264 139 1 3 54 1 255 265 0 265 41 1 137 263 1 263 261 1 241 208 1
		 207 242 1 207 266 1 266 245 1 267 268 1 268 785 0 266 269 1 269 251 1 269 270 1 270 253 1
		 265 271 0 271 34 1 270 272 1 272 256 1 272 273 1 273 249 1 250 689 1 273 208 1 47 157 1
		 157 105 1 129 274 1 274 275 1 275 177 1 276 674 1 278 276 0 279 664 1;
	setAttr ".ed[498:663]" 280 277 0 277 663 1 281 279 0 276 281 0 282 278 0 277 283 0
		 283 675 1 283 284 0 284 676 1 285 282 0 284 141 0 141 285 0 286 287 1 287 288 1 288 289 1
		 289 286 1 287 290 1 290 291 1 291 288 1 290 292 1 292 293 1 293 291 1 292 294 1 294 295 1
		 295 293 1 294 296 1 296 297 1 297 295 1 296 286 1 289 297 1 286 298 1 298 299 1 299 287 1
		 299 300 1 300 290 1 296 301 1 301 298 1 300 302 1 302 292 1 294 303 1 303 301 1 302 303 1
		 304 305 1 305 306 1 306 307 1 307 304 1 308 304 1 307 309 1 309 308 1 305 310 1 310 311 1
		 311 306 1 312 308 1 309 313 1 313 312 1 310 314 1 314 315 1 315 311 1 314 312 1 313 315 1
		 316 317 1 317 318 1 318 319 1 319 316 1 320 321 1 321 322 1 322 323 1 323 320 1 324 325 1
		 325 326 1 326 327 1 327 324 1 316 328 1 328 329 1 329 317 1 330 203 0 202 331 0 331 330 0
		 332 333 1 333 334 1 334 335 1 335 332 1 336 332 1 335 337 1 337 336 1 338 336 1 337 339 1
		 339 338 1 333 340 1 340 341 1 341 334 1 342 338 1 339 343 1 343 342 1 344 271 0 271 670 1
		 345 669 1 346 317 1 329 346 1 347 346 1 329 348 1 348 347 1 349 347 1 348 350 1 350 349 1
		 351 349 1 350 352 1 352 351 1 353 351 1 352 354 1 354 353 1 316 353 1 354 328 1 331 307 1
		 306 330 1 202 309 1 311 203 1 201 313 1 315 200 1 355 356 1 356 321 1 321 357 1 357 355 0
		 358 326 1 325 359 1 359 358 1 360 322 1 322 361 1 361 353 1 353 360 1 359 362 1 362 363 1
		 363 358 1 361 351 1 364 363 1 362 365 1 365 364 1 365 320 1 323 364 1 366 367 1 367 345 1
		 345 368 0 368 366 1 367 369 1 369 370 1 370 345 0 371 366 1 368 372 0 372 371 1 369 356 1
		 355 370 0 369 351 1 361 356 1 319 360 1 370 668 1 373 344 0 141 324 1 324 371 1 372 141 0
		 367 349 1 346 327 1 327 318 1 273 239 1 344 24 1 272 237 1 288 329 1;
	setAttr ".ed[664:829]" 328 289 1 291 348 1 293 350 1 295 352 1 297 354 1 270 234 1
		 366 347 1 371 346 1 269 232 1 266 230 1 281 374 1 374 375 0 375 279 1 376 377 1 377 378 1
		 378 379 1 379 376 1 380 381 0 381 382 0 382 383 0 383 384 0 384 380 0 376 385 1 385 377 1
		 386 387 1 387 198 1 198 386 1 388 389 1 389 390 1 390 391 1 391 388 1 368 671 1 392 393 1
		 393 394 1 394 395 1 395 392 1 396 397 1 397 398 1 398 399 1 399 396 1 400 401 1 401 199 1
		 199 402 1 402 400 1 403 404 1 404 405 1 405 406 1 406 403 1 394 378 1 377 395 1 399 407 1
		 407 391 1 391 399 1 387 402 1 405 390 1 390 408 1 408 406 1 197 409 0 409 410 1 410 411 0
		 411 197 1 407 410 1 410 412 0 412 413 1 413 407 1 355 667 1 414 373 0 389 415 1 415 408 1
		 395 416 1 416 417 1 417 392 1 406 196 1 196 418 1 418 403 1 385 416 1 406 419 1 419 197 1
		 385 382 0 381 198 0 198 385 0 379 384 1 383 376 1 380 386 1 411 385 0 420 421 1 421 422 1
		 422 423 0 423 420 1 424 388 1 388 425 1 425 426 0 426 424 1 427 428 0 428 425 1 425 412 0
		 412 427 1 419 409 1 386 379 1 378 387 1 391 413 1 413 388 1 409 427 0 140 672 1 402 394 1
		 393 400 1 399 405 1 404 396 1 401 418 1 426 422 0 421 424 1 357 666 1 397 417 1 416 398 1
		 411 398 1 411 407 1 415 429 1 429 408 1 423 428 0 428 415 1 415 420 1 429 427 1 419 429 1
		 421 389 1 243 259 1 258 244 1 246 685 1 267 279 0 375 268 0 21 373 1 414 60 1 430 431 1
		 431 432 1 432 433 1 433 430 1 141 434 1 434 435 1 435 141 0 374 436 1 436 437 1 437 375 1
		 438 439 1 439 440 1 440 441 1 441 438 1 442 443 1 443 444 1 444 445 1 445 442 1 446 447 1
		 447 436 1 374 446 0 81 800 1 448 449 1 449 799 1 450 451 1 451 452 1 452 453 1 453 450 0
		 444 454 1 454 445 1 119 155 1 455 456 1 456 275 1 274 455 1 431 794 1;
	setAttr ".ed[830:995]" 457 458 1 458 795 1 449 459 1 459 798 1 460 82 1 437 461 1
		 461 268 1 462 432 1 458 463 1 463 796 1 464 465 1 465 466 1 466 467 1 467 464 0 468 447 1
		 447 452 1 452 469 1 469 468 1 439 455 1 274 440 1 97 782 1 454 70 1 240 445 1 470 797 1
		 471 462 1 463 470 1 38 811 1 158 87 1 472 473 1 473 463 1 458 472 1 82 86 1 474 247 0
		 222 474 1 473 475 1 475 470 1 448 476 1 476 477 1 477 449 1 96 783 1 160 478 1 478 479 1
		 479 161 0 462 469 1 469 433 1 471 468 1 461 476 1 480 481 0 481 454 1 444 480 1 434 451 1
		 450 435 0 481 71 0 482 483 0 483 443 1 443 484 1 484 482 1 74 802 1 485 478 1 478 248 1
		 260 485 1 141 220 0 220 430 1 430 434 1 436 486 1 486 477 1 477 437 1 451 433 1 446 453 0
		 442 487 1 487 484 1 486 459 1 456 488 1 488 489 1 489 275 1 460 490 1 490 817 1 483 480 0
		 47 87 1 491 492 1 492 439 1 438 491 1 492 493 1 493 455 1 484 467 1 467 482 0 494 495 0
		 495 496 1 496 497 0 497 494 0 2 498 1 498 499 0 499 3 1 495 500 0 500 501 0 501 496 0
		 465 502 1 502 503 1 503 466 1 471 459 1 486 468 1 475 490 1 460 470 1 435 285 1 171 431 1
		 171 479 1 504 478 1 485 504 1 505 466 1 503 488 1 488 505 1 503 506 1 506 489 0 507 505 1
		 456 507 1 493 507 1 505 482 1 507 483 1 493 480 1 492 481 1 491 71 1 508 131 1 491 508 1
		 464 457 0 457 504 1 504 465 1 464 472 1 457 479 0 397 509 1 509 510 0 510 417 1 511 260 0
		 474 511 1 485 502 1 110 248 1 248 159 0 502 511 1 511 506 0 484 472 1 487 473 1 508 164 1
		 512 508 1 438 512 1 512 166 1 512 513 1 513 167 1 441 513 1 10 440 1 513 39 1 54 514 1
		 514 515 0 515 6 1 9 441 1 516 177 0 275 516 1 517 516 0 489 517 1 518 517 0 506 518 1
		 184 519 1 519 520 1 520 185 1 520 521 1 521 187 0 522 517 0 517 520 1;
	setAttr ".ed[996:1161]" 519 522 1 518 521 0 523 524 0 524 213 1 175 523 1 499 514 0
		 7 525 1 525 204 0 515 525 0 526 527 0 527 522 0 519 526 1 177 523 0 528 524 1 524 529 0
		 529 530 1 530 528 1 217 526 0 531 521 1 518 531 0 531 221 0 474 518 0 474 531 1 527 523 1
		 516 522 1 529 527 0 526 530 1 223 530 1 224 528 1 529 523 1 226 498 0 498 235 1 235 225 0
		 235 528 1 235 524 0 396 532 1 532 509 0 533 318 1 326 533 1 534 535 1 535 536 1 536 537 1
		 537 534 1 284 325 1 267 665 1 538 280 0 539 360 1 319 540 1 540 539 1 276 446 1 538 320 1
		 365 280 1 283 359 1 362 277 1 541 534 1 537 542 1 542 541 1 543 541 1 542 544 1 544 543 1
		 323 539 1 539 364 1 450 282 1 535 545 1 545 546 1 546 536 1 545 547 1 547 548 1 548 546 1
		 538 357 0 549 550 1 550 501 1 500 549 1 550 551 1 551 496 1 552 549 1 495 552 1 551 553 1
		 553 497 1 554 552 1 494 554 1 553 554 1 534 539 1 540 535 1 453 278 1 541 364 1 543 363 1
		 543 547 1 547 358 1 545 326 1 545 533 1 540 533 1 544 548 1 549 555 1 555 556 1 556 550 1
		 556 557 1 557 551 1 552 558 1 558 555 1 557 559 1 559 553 1 554 560 1 560 558 1 559 560 1
		 555 341 1 341 343 1 343 556 1 339 557 1 558 334 1 337 559 1 510 561 0 561 392 1 404 562 1
		 562 532 0 561 563 0 563 393 1 403 564 1 564 562 0 546 332 1 336 536 1 548 333 1 544 340 1
		 542 342 1 342 340 1 537 338 1 335 560 1 563 565 0 565 400 1 418 566 1 566 564 0 565 567 0
		 567 401 1 567 566 0 314 303 1 302 312 1 310 301 1 300 308 1 305 298 1 299 304 1 568 569 1
		 569 570 0 570 571 1 571 568 0 570 572 0 572 573 1 573 571 0 236 574 1 574 575 0 575 238 1
		 229 570 1 569 231 1 575 576 0 576 227 1 228 572 1 577 578 0 578 833 1 579 580 0 580 839 1
		 576 572 0 581 582 0 582 836 1 583 584 0 584 835 1 573 585 0 581 586 0;
	setAttr ".ed[1162:1327]" 586 571 1 233 587 1 587 574 0 586 578 0 578 568 1 588 587 1
		 587 569 0 568 588 0 589 575 1 574 590 1 590 589 0 585 576 1 589 585 0 588 590 0 591 592 0
		 592 589 1 577 591 0 584 593 0 593 834 1 582 592 0 592 837 1 594 583 0 593 579 0 591 838 1
		 595 594 0 580 595 0 596 597 0 597 598 1 598 599 1 599 596 1 597 600 0 600 601 1 601 598 1
		 602 596 0 599 603 1 603 602 1 600 604 0 604 605 1 605 601 1 606 602 0 603 607 1 607 606 1
		 604 608 0 608 609 1 609 605 1 610 606 0 607 611 1 611 610 1 608 612 0 612 613 1 613 609 1
		 614 610 0 611 615 1 615 614 1 612 614 0 615 613 1 616 617 1 617 618 0 618 619 0 619 620 0
		 620 616 0 621 622 1 622 623 1 623 624 1 624 621 1 625 626 1 626 623 1 622 625 1 616 624 1
		 624 627 1 627 628 1 628 616 0 629 630 1 630 627 1 627 631 1 631 629 1 630 632 1 632 628 0
		 620 621 1 624 631 1 633 634 1 634 635 0 635 633 1 633 636 1 636 637 1 637 633 1 638 633 1
		 635 639 1 639 638 1 640 641 1 641 639 1 635 640 0 641 613 1 615 639 1 642 643 1 643 644 0
		 644 645 1 645 642 1 646 637 1 637 626 1 626 617 1 617 646 0 622 619 1 618 625 1 598 647 1
		 647 648 1 648 599 1 649 650 1 650 636 1 636 638 1 638 649 1 651 652 1 652 653 1 653 654 1
		 654 651 1 607 649 1 638 611 1 605 651 1 654 601 1 646 628 1 632 634 1 634 646 0 636 626 1
		 652 642 1 645 653 1 630 655 1 655 632 0 656 657 0 657 658 1 658 640 1 640 656 0 635 655 1
		 655 659 0 659 640 0 644 660 0 660 659 0 659 645 1 657 643 0 642 658 1 660 656 0 648 655 1
		 629 648 1 640 661 1 661 662 1 662 641 1 629 603 1 662 609 1 650 631 1 623 650 1 649 629 1
		 653 659 1 659 647 1 647 654 1 661 652 1 651 662 1 658 661 1 663 281 1 664 280 1 663 664 1
		 665 538 1 664 665 1 665 793 1 667 414 1 668 373 1 667 668 1 669 344 1;
	setAttr ".ed[1328:1493]" 668 669 1 670 345 1 669 670 1 671 265 1 670 671 1 672 372 1
		 671 673 1 673 672 1 255 673 1 673 368 1 672 141 1 19 17 1 674 277 1 675 282 1 674 677 1
		 676 285 1 675 676 1 674 663 1 677 675 1 278 677 1 677 283 1 141 676 1 678 210 1 679 230 1
		 678 679 1 680 232 1 679 680 1 681 234 1 680 681 1 682 237 1 681 682 1 683 239 1 682 683 1
		 684 227 1 683 684 1 684 678 1 581 573 1 588 577 1 590 591 1 585 582 1 302 294 1 296 298 1
		 337 338 1 341 342 1 259 826 1 147 827 1 262 824 1 264 823 1 261 147 1 685 825 1 259 685 1
		 686 252 1 685 686 1 687 254 1 686 687 1 688 829 1 687 688 1 689 828 1 688 689 1 689 258 1
		 240 690 1 690 691 1 691 86 1 445 692 1 692 690 1 442 693 1 693 692 1 691 694 1 694 490 1
		 694 695 1 695 475 1 473 695 1 696 693 1 487 696 1 695 696 1 697 698 1 698 699 1 699 700 1
		 700 697 1 701 702 0 702 766 1 699 772 1 702 703 0 703 767 1 704 700 1 703 705 0 705 768 1
		 706 704 1 705 707 0 707 769 1 708 706 1 707 709 0 709 770 1 710 708 1 709 711 0 711 771 1
		 712 710 1 711 701 0 699 712 1 713 714 1 714 715 1 715 716 1 716 713 1 714 717 1 717 718 1
		 718 715 1 719 713 1 716 720 1 720 719 1 717 721 1 721 722 1 722 718 1 721 723 1 723 724 1
		 724 722 1 725 719 1 720 726 1 726 725 1 723 725 1 726 724 1 727 728 1 691 729 1 730 693 1
		 726 780 1 731 732 1 732 774 1 730 732 1 732 692 1 690 731 1 731 729 1 713 698 1 697 714 1
		 697 733 1 733 717 1 733 734 1 734 721 1 734 735 1 735 723 1 735 736 1 736 725 1 736 737 1
		 737 719 1 720 781 1 737 698 1 730 773 1 737 712 1 736 710 1 735 708 1 734 706 1 733 704 1
		 715 728 1 727 716 1 718 777 1 738 739 1 739 740 0 740 741 1 741 738 0 740 742 0 742 743 1
		 743 741 0 709 744 1 744 745 0 745 711 1 703 740 1 739 705 1 745 746 0;
	setAttr ".ed[1494:1659]" 746 701 1 702 742 1 747 748 0 748 840 1 749 750 0 750 841 1
		 746 742 0 751 752 0 752 844 1 753 754 0 754 845 1 743 755 0 751 756 0 756 741 1 707 757 1
		 757 744 0 756 748 0 748 738 1 758 757 1 757 739 0 738 758 0 759 745 1 744 760 1 760 759 0
		 755 746 1 759 755 0 758 760 0 761 762 0 762 759 1 747 761 0 754 763 0 763 846 1 752 762 0
		 762 843 1 764 753 0 763 749 0 761 842 1 765 764 0 750 765 0 766 700 1 767 704 1 766 767 1
		 768 706 1 767 768 1 769 708 1 768 769 1 770 710 1 769 770 1 771 712 1 770 771 1 772 701 1
		 771 772 1 772 766 1 751 743 1 758 747 1 760 761 1 755 752 1 728 831 1 694 832 1 773 778 1
		 774 779 1 773 774 1 775 731 1 774 775 1 776 729 1 775 776 1 729 694 1 729 832 1 777 830 1
		 728 777 1 778 722 1 777 778 1 779 724 1 778 779 1 780 775 1 779 780 1 781 776 1 780 781 1
		 781 727 1 782 448 1 75 801 1 783 476 1 782 783 1 784 461 1 783 784 1 785 819 0 784 785 1
		 786 267 0 785 786 1 787 37 1 109 803 1 788 96 1 787 788 1 789 102 1 788 789 1 790 822 0
		 789 790 1 791 414 0 790 791 1 792 667 1 791 792 1 792 357 1 793 666 1 357 793 1 793 786 1
		 794 457 1 479 794 1 795 432 1 794 795 1 796 462 1 795 796 1 797 471 1 796 797 1 798 460 1
		 797 798 1 799 82 1 798 799 1 800 448 1 799 800 1 801 782 1 800 801 1 802 97 1 801 802 1
		 803 787 1 802 803 1 804 38 1 803 804 1 805 36 1 804 805 1 806 59 1 805 806 1 807 79 1
		 806 807 1 808 62 1 807 808 1 809 55 1 808 809 1 809 57 1 810 87 1 811 158 1 810 811 1
		 812 109 1 811 812 1 813 74 1 812 813 1 814 76 1 813 814 1 815 81 1 814 815 1 816 83 1
		 815 816 1 817 86 1 817 694 1 818 116 1 818 147 1 102 784 1 102 819 0 820 786 0 819 820 0
		 821 791 0 821 822 0 822 102 0 666 792 1 821 666 0 820 666 0 102 666 0;
	setAttr ".ed[1660:1727]" 116 35 1 35 88 1 88 810 1 818 35 1 823 687 1 824 686 1
		 823 824 1 825 193 1 824 825 1 826 148 1 825 826 1 827 258 1 826 827 1 828 261 1 827 828 1
		 829 263 1 828 829 1 829 823 1 827 261 1 82 490 1 816 86 1 82 817 1 830 696 1 773 830 1
		 831 695 1 830 831 1 832 727 1 831 832 1 832 776 1 116 148 1 825 262 1 88 87 1 137 264 1
		 262 193 1 826 193 1 262 139 1 730 696 1 730 830 1 696 831 1 490 695 1 833 579 1 834 586 1
		 833 834 0 835 581 1 834 835 0 836 583 1 835 836 0 837 594 1 836 837 0 838 595 1 837 838 0
		 839 577 1 838 839 0 839 833 0 840 749 1 841 747 1 840 841 0 842 765 1 841 842 0 843 764 1
		 842 843 0 844 753 1 843 844 0 845 751 1 844 845 0 846 756 1 845 846 0 846 840 0;
	setAttr -s 882 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 5 9 10
		f 4 12 -8 13 14
		mu 0 4 11 4 7 12
		f 4 15 16 17 18
		mu 0 4 24 25 26 27
		f 3 19 20 1339
		mu 0 3 28 29 920
		f 4 23 24 25 26
		mu 0 4 30 31 32 33
		f 4 27 28 29 30
		mu 0 4 34 35 36 37
		f 4 31 32 33 34
		mu 0 4 38 39 40 41
		f 4 -26 35 36 37
		mu 0 4 42 43 44 45
		f 4 1621 39 40 1622
		mu 0 4 1098 47 48 1097
		f 4 42 -13 43 44
		mu 0 4 50 4 11 51
		f 4 45 46 47 48
		mu 0 4 52 53 54 55
		f 3 49 50 -32
		mu 0 3 38 56 39
		f 3 51 52 53
		mu 0 3 57 58 59
		f 4 54 55 56 57
		mu 0 4 60 61 62 63
		f 4 58 59 60 61
		mu 0 4 8 64 0 65
		f 4 1631 64 -17 65
		mu 0 4 1103 68 26 25
		f 4 1624 1623 68 -1622
		mu 0 4 1098 1099 70 47
		f 4 69 70 71 -24
		mu 0 4 30 71 72 31
		f 4 1630 -66 73 74
		mu 0 4 1102 1103 25 74
		f 4 75 76 77 78
		mu 0 4 75 76 77 78
		f 4 79 80 81 82
		mu 0 4 79 53 44 80
		f 4 -58 83 -29 84
		mu 0 4 60 63 36 35
		f 4 85 86 87 88
		mu 0 4 82 83 84 85
		f 4 1640 1639 91 92
		mu 0 4 1107 1108 88 89
		f 4 -54 93 -50 94
		mu 0 4 57 59 90 91
		f 4 -75 95 96 1628
		mu 0 4 1102 74 92 1101
		f 4 98 1644 1643 101
		mu 0 4 94 1109 1110 97
		f 4 -73 102 103 104
		mu 0 4 66 73 98 99
		f 3 -106 429 106
		mu 0 3 97 287 85
		f 3 172 1691 171
		mu 0 3 57 102 101
		f 3 1662 1632 -1692
		mu 0 3 102 1104 101
		f 4 109 110 111 112
		mu 0 4 103 104 105 106
		f 4 -98 113 114 -103
		mu 0 4 73 93 107 98
		f 4 115 116 -40 117
		mu 0 4 108 109 48 47
		f 4 1585 119 120 1586
		mu 0 4 1078 110 111 1077
		f 4 121 122 123 124
		mu 0 4 112 113 114 115
		f 4 -88 125 -102 -107
		mu 0 4 85 84 94 97
		f 4 126 127 -74 -16
		mu 0 4 24 79 74 25
		f 4 -83 128 -96 -128
		mu 0 4 79 80 92 74
		f 4 1588 1587 131 -1586
		mu 0 4 1078 1079 116 110
		f 4 -51 132 133 134
		mu 0 4 39 56 117 118
		f 4 -48 135 -20 136
		mu 0 4 55 54 29 28
		f 4 -94 137 138 -133
		mu 0 4 90 59 119 120
		f 4 -1640 1642 -99 140
		mu 0 4 88 1108 1109 94
		f 4 141 142 143 144
		mu 0 4 121 40 122 123
		f 4 1617 -121 -1616 1618
		mu 0 4 1096 1077 111 1095
		f 4 146 147 148 -110
		mu 0 4 103 125 126 104
		f 4 149 150 -21 151
		mu 0 4 27 113 920 29
		f 4 152 153 -25 154
		mu 0 4 108 127 32 31
		f 4 -127 155 -47 -80
		mu 0 4 79 24 54 53
		f 4 -116 -155 -72 -130
		mu 0 4 109 108 31 72
		f 4 156 -37 -81 -46
		mu 0 4 52 45 44 53
		f 4 1589 1655 -1588 1590
		mu 0 4 1080 1118 116 1079
		f 4 -19 -152 -136 -156
		mu 0 4 24 27 29 54
		f 4 158 159 -34 -142
		mu 0 4 121 128 41 40
		f 4 -118 -69 160 -153
		mu 0 4 108 47 70 127
		f 4 161 162 -56 163
		mu 0 4 129 130 62 61
		f 4 -135 166 -143 -33
		mu 0 4 39 118 122 40
		f 4 167 168 169 170
		mu 0 4 132 89 133 134
		f 3 -172 -909 -52
		mu 0 3 57 101 58
		f 4 -30 173 174 175
		mu 0 4 37 36 135 136
		f 4 -84 176 177 -174
		mu 0 4 36 63 137 135
		f 3 -145 178 179
		mu 0 3 121 123 138
		f 3 180 181 182
		mu 0 3 139 140 141
		f 4 183 184 185 186
		mu 0 4 139 142 143 144
		f 4 -59 -12 187 188
		mu 0 4 64 8 10 145
		f 4 189 190 191 192
		mu 0 4 133 146 147 148
		f 4 193 194 195 196
		mu 0 4 149 144 150 151
		f 4 197 198 -77 199
		mu 0 4 152 105 77 76
		f 4 200 -87 201 -191
		mu 0 4 146 84 83 147
		f 4 -161 202 -129 203
		mu 0 4 153 154 92 80
		f 4 -166 204 -114 205
		mu 0 4 155 156 107 93
		f 4 -1624 1626 -97 -203
		mu 0 4 154 1100 1101 92
		f 4 -154 -204 -82 -36
		mu 0 4 43 153 80 44
		f 4 -173 206 207 208
		mu 0 4 102 57 942 939
		f 4 -95 209 210 -207
		mu 0 4 57 91 945 942
		f 4 211 -23 212 213
		mu 0 4 160 28 161 162
		f 4 214 215 216 217
		mu 0 4 163 164 165 166
		f 4 -35 218 219 -210
		mu 0 4 38 41 938 941
		f 3 -1648 1648 221
		mu 0 3 131 1112 940
		f 4 -219 -160 222 331
		mu 0 4 938 41 128 937
		f 4 -126 -201 223 -141
		mu 0 4 94 84 146 88
		f 4 -10 -5 -43 224
		mu 0 4 9 5 4 50
		f 3 225 -1690 -222
		mu 0 3 169 944 156
		f 3 226 -205 1689
		mu 0 3 944 107 156
		f 4 -18 228 -123 -150
		mu 0 4 27 26 114 113
		f 4 -65 229 230 -229
		mu 0 4 26 68 171 114
		f 4 -149 231 232 233
		mu 0 4 104 126 172 173
		f 4 234 -200 235 236
		mu 0 4 130 152 76 174
		f 4 237 238 -235 -162
		mu 0 4 129 175 152 130
		f 4 -163 -237 239 240
		mu 0 4 62 130 174 176
		f 4 -57 -241 241 -177
		mu 0 4 63 62 176 137
		f 4 -236 -76 -179 242
		mu 0 4 174 76 75 177
		f 4 -240 -243 -144 243
		mu 0 4 176 174 177 178
		f 4 -242 -244 -167 244
		mu 0 4 137 176 178 179
		f 4 -178 -245 -134 245
		mu 0 4 135 137 179 180
		f 4 -175 -246 -139 246
		mu 0 4 136 135 180 181
		f 4 -168 247 1638 -93
		mu 0 4 89 132 1106 1107
		f 4 -247 249 250 251
		mu 0 4 136 181 182 183
		f 4 -171 252 253 254
		mu 0 4 132 134 184 185
		f 4 255 256 -78 257
		mu 0 4 173 186 78 77
		f 4 -105 258 -257 -63
		mu 0 4 66 99 187 67
		f 4 -233 259 -64 -256
		mu 0 4 173 172 188 186
		f 3 260 -230 -260
		mu 0 3 172 189 188
		f 3 261 262 263
		mu 0 3 190 191 192
		f 4 -258 -199 -111 -234
		mu 0 4 173 77 105 104
		f 4 -231 264 265 -124
		mu 0 4 114 171 193 115
		f 4 266 267 268 -148
		mu 0 4 125 194 195 126
		f 4 -239 269 -112 -198
		mu 0 4 152 175 106 105
		f 4 -180 -79 -259 270
		mu 0 4 121 138 187 99
		f 4 -159 -271 -104 271
		mu 0 4 128 121 99 98
		f 4 272 -22 -151 -122
		mu 0 4 112 161 920 113
		f 4 -9 -62 273 -6
		mu 0 4 5 8 65 6
		f 4 274 275 -251 276
		mu 0 4 196 330 183 182
		f 4 -176 -252 277 278
		mu 0 4 37 136 183 198
		f 4 279 280 -278 -276
		mu 0 4 330 331 198 183
		f 4 281 282 -281 283
		mu 0 4 20 201 198 331
		f 4 284 -31 -279 -283
		mu 0 4 201 34 37 198
		f 4 -223 -272 -228 336
		mu 0 4 937 128 98 944
		f 4 -85 285 286 287
		mu 0 4 202 35 203 204
		f 4 -282 288 289 290
		mu 0 4 201 20 19 206
		f 3 291 -264 292
		mu 0 3 207 208 209
		f 4 293 294 295 296
		mu 0 4 210 211 212 141
		f 3 297 298 299
		mu 0 3 213 214 215
		f 4 -28 300 301 -286
		mu 0 4 35 34 216 203
		f 3 302 303 304
		mu 0 3 61 217 218
		f 4 -164 -305 305 306
		mu 0 4 129 61 218 219
		f 4 -238 -307 307 308
		mu 0 4 175 129 219 220
		f 4 309 310 311 312
		mu 0 4 221 222 223 224
		f 4 313 -313 314 315
		mu 0 4 225 221 224 226
		f 4 316 317 -197 318
		mu 0 4 227 165 149 151
		f 3 -217 -317 319
		mu 0 3 166 165 227
		f 4 -310 320 321 322
		mu 0 4 222 221 228 229
		f 4 -314 323 -308 -321
		mu 0 4 221 225 230 228
		f 4 -297 324 325 326
		mu 0 4 210 141 231 232
		f 4 -291 327 -301 -285
		mu 0 4 201 206 216 34
		f 4 328 329 330 -328
		mu 0 4 233 234 232 235
		f 3 -266 -268 332
		mu 0 3 115 193 237
		f 4 -319 333 334 335
		mu 0 4 227 151 238 239
		f 3 -115 -227 227
		mu 0 3 98 107 944
		f 4 337 338 339 340
		mu 0 4 240 241 242 243
		f 4 -296 341 -184 -183
		mu 0 4 141 212 142 139
		f 4 -287 342 343 -215
		mu 0 4 163 244 231 164
		f 4 -182 344 -344 -325
		mu 0 4 141 140 164 231
		f 4 345 346 347 348
		mu 0 4 245 246 247 248
		f 4 349 350 351 352
		mu 0 4 249 250 251 12
		f 4 -44 353 -329 -290
		mu 0 4 51 11 234 233
		f 4 -294 354 -351 355
		mu 0 4 211 210 251 250
		f 4 356 357 358 359
		mu 0 4 252 253 254 255
		f 4 -323 360 361 362
		mu 0 4 222 229 256 257
		f 3 -320 -336 363
		mu 0 3 166 227 239
		f 4 -352 364 -354 -15
		mu 0 4 12 251 234 11
		f 4 -302 -331 -326 -343
		mu 0 4 244 235 232 231
		f 4 365 366 -298 367
		mu 0 4 258 1 214 213
		f 4 -355 -327 -330 -365
		mu 0 4 251 210 232 234
		f 4 368 369 370 371
		mu 0 4 259 260 261 262
		f 4 -311 -363 372 373
		mu 0 4 223 222 257 263
		f 4 374 375 376 -113
		mu 0 4 106 264 265 103
		f 4 377 378 -125 379
		mu 0 4 207 266 112 115
		f 3 380 381 -316
		mu 0 3 226 267 225
		f 3 382 -376 383
		mu 0 3 268 269 270
		f 4 -309 384 -375 -270
		mu 0 4 175 220 264 106
		f 3 -324 385 -385
		mu 0 3 230 225 270
		f 5 -304 -364 386 -361 387
		mu 0 5 271 272 273 256 229
		f 3 -388 -322 -306
		mu 0 3 271 229 228
		f 4 -299 388 -189 389
		mu 0 4 215 214 64 145
		f 4 -362 390 -369 391
		mu 0 4 257 256 260 259
		f 4 -373 -392 392 393
		mu 0 4 263 257 259 274
		f 4 -393 -372 394 395
		mu 0 4 274 259 262 275
		f 3 -387 396 -391
		mu 0 3 256 273 260
		f 4 397 398 399 400
		mu 0 4 276 277 278 279
		f 4 401 -384 -386 -382
		mu 0 4 267 268 270 225
		f 4 -398 402 -395 403
		mu 0 4 277 276 275 262
		f 3 -404 -371 404
		mu 0 3 277 262 261
		f 3 -334 -196 -405
		mu 0 3 238 151 150
		f 4 -187 -194 405 -181
		mu 0 4 139 144 149 140
		f 3 -370 -397 -335
		mu 0 3 261 260 273
		f 4 1363 1350 -359 408
		mu 0 4 908 905 255 254
		f 4 1352 1351 411 -1351
		mu 0 4 905 913 280 255
		f 4 -333 412 -292 -380
		mu 0 4 115 237 208 207
		f 4 1354 1353 415 -1352
		mu 0 4 913 912 281 280
		f 4 1356 1355 418 -1354
		mu 0 4 912 911 282 281
		f 4 419 420 -2 -366
		mu 0 4 258 283 2 1
		f 4 1358 1357 423 -1356
		mu 0 4 911 910 284 282
		f 4 1360 1359 426 -1358
		mu 0 4 910 909 285 284
		f 4 -345 -406 -318 -216
		mu 0 4 164 140 149 165
		f 4 1362 -409 428 -1360
		mu 0 4 909 907 286 285
		f 3 430 105 107
		mu 0 3 100 287 97
		f 4 431 432 433 434
		mu 0 4 288 289 290 291
		f 4 435 436 437 -433
		mu 0 4 289 292 293 290
		f 4 -190 -169 -92 -224
		mu 0 4 146 133 89 88
		f 3 438 439 440
		mu 0 3 294 295 269
		f 4 441 -435 442 443
		mu 0 4 296 297 298 299
		f 4 444 445 446 -437
		mu 0 4 292 300 301 293
		f 3 -186 -399 -195
		mu 0 3 144 143 150
		f 4 447 448 449 -446
		mu 0 4 300 302 303 301
		f 4 -137 -212 450 451
		mu 0 4 55 28 160 304
		f 4 452 -444 453 454
		mu 0 4 305 296 299 306
		f 4 455 -455 456 -449
		mu 0 4 302 305 306 303
		f 4 1671 457 1372 1672
		mu 0 4 1131 307 308 1130
		f 3 -1670 1694 -337
		mu 0 3 170 1130 236
		f 3 -1695 -1671 1667
		mu 0 3 236 1130 1129
		f 3 -89 -430 458
		mu 0 3 82 85 287
		f 3 459 460 -439
		mu 0 3 309 310 311
		f 3 -221 461 1376
		mu 0 3 168 158 312
		f 3 -332 -1694 462
		mu 0 3 167 236 313
		f 3 -1668 1690 1693
		mu 0 3 236 1129 313
		f 3 -1691 -1669 -1375
		mu 0 3 313 1129 1128
		f 4 464 1375 -1678 1675
		mu 0 4 314 315 1127 1134
		f 3 -463 1695 -220
		mu 0 3 167 313 159
		f 3 -1696 465 466
		mu 0 3 159 313 315
		f 3 -61 -4 467
		mu 0 3 65 0 3
		f 4 -49 -452 468 469
		mu 0 4 52 55 304 316
		f 4 -208 470 471 -462
		mu 0 4 158 157 314 312
		f 3 -471 1692 -465
		mu 0 3 314 157 315
		f 3 -211 -467 -1693
		mu 0 3 157 159 315
		f 4 -432 472 -357 473
		mu 0 4 289 288 253 252
		f 4 -436 -474 474 475
		mu 0 4 292 289 252 317
		f 4 1581 476 477 1582
		mu 0 4 1075 318 319 1074
		f 4 -445 -476 478 479
		mu 0 4 300 292 317 320
		f 4 -448 -480 480 481
		mu 0 4 302 300 320 321
		f 4 -157 -470 482 483
		mu 0 4 45 52 316 322
		f 4 -456 -482 484 485
		mu 0 4 305 302 321 323
		f 4 -453 -486 486 487
		mu 0 4 296 305 323 324
		f 4 -472 -1676 -1677 1673
		mu 0 4 312 314 1134 1133
		f 4 -442 -488 489 -473
		mu 0 4 297 296 324 325
		f 4 490 491 -138 -53
		mu 0 4 58 184 119 59
		f 4 492 493 494 -390
		mu 0 4 326 327 328 329
		f 4 -288 -218 -303 -55
		mu 0 4 202 204 217 61
		f 4 1347 1346 1341 502
		mu 0 4 918 917 904 337
		f 4 1319 498 499 1320
		mu 0 4 931 333 334 903
		f 4 -466 1374 -1667 -1376
		mu 0 4 315 313 1128 1127
		f 3 1345 -500 -1341
		mu 0 3 919 903 334
		f 4 -1342 1344 1343 507
		mu 0 4 337 904 916 339
		f 3 1349 -507 508
		mu 0 3 915 916 340
		f 4 510 511 512 513
		mu 0 4 341 342 343 344
		f 4 514 515 516 -512
		mu 0 4 342 345 346 343
		f 4 517 518 519 -516
		mu 0 4 345 347 348 346
		f 4 520 521 522 -519
		mu 0 4 347 349 350 348
		f 4 523 524 525 -522
		mu 0 4 349 351 352 350
		f 4 526 -514 527 -525
		mu 0 4 351 353 354 352
		f 4 -511 528 529 530
		mu 0 4 342 341 355 356
		f 4 -515 -531 531 532
		mu 0 4 345 342 356 357
		f 3 -527 1369 -529
		mu 0 3 353 351 358
		f 4 -518 -533 535 536
		mu 0 4 347 345 357 359
		f 4 -524 537 538 -534
		mu 0 4 351 349 360 361
		f 3 -521 -537 1368
		mu 0 3 349 347 359
		f 4 540 541 542 543
		mu 0 4 362 363 364 365
		f 4 544 -544 545 546
		mu 0 4 366 362 365 367
		f 4 547 548 549 -542
		mu 0 4 368 369 370 371
		f 4 550 -547 551 552
		mu 0 4 372 366 367 373
		f 4 553 554 555 -549
		mu 0 4 369 374 375 370
		f 4 556 -553 557 -555
		mu 0 4 374 372 373 375
		f 4 558 559 560 561
		mu 0 4 376 377 378 379
		f 4 562 563 564 565
		mu 0 4 380 381 382 383
		f 4 566 567 568 569
		mu 0 4 384 385 386 387
		f 4 570 571 572 -559
		mu 0 4 376 388 389 377
		f 4 573 -348 574 575
		mu 0 4 390 248 247 391
		f 4 576 577 578 579
		mu 0 4 392 393 394 395
		f 4 580 -580 581 582
		mu 0 4 396 392 395 397
		f 3 583 -583 1370
		mu 0 3 398 399 906
		f 4 586 587 588 -578
		mu 0 4 393 400 401 394
		f 4 589 -586 590 591
		mu 0 4 402 398 403 404
		f 3 1330 1329 594
		mu 0 3 926 925 406
		f 3 595 -573 596
		mu 0 3 407 377 389
		f 4 597 -597 598 599
		mu 0 4 408 407 389 409
		f 4 600 -600 601 602
		mu 0 4 410 408 409 411
		f 4 603 -603 604 605
		mu 0 4 412 410 411 413
		f 4 606 -606 607 608
		mu 0 4 414 412 413 415
		f 4 609 -609 610 -571
		mu 0 4 416 414 415 417
		f 4 -576 611 -543 612
		mu 0 4 418 419 365 364
		f 4 -575 613 -546 -612
		mu 0 4 419 420 367 365
		f 4 -574 -613 -550 614
		mu 0 4 421 422 371 370
		f 4 -347 615 -552 -614
		mu 0 4 420 423 373 367
		f 4 -349 -615 -556 616
		mu 0 4 424 421 370 375
		f 4 -346 -617 -558 -616
		mu 0 4 423 424 375 373
		f 4 617 618 619 620
		mu 0 4 425 426 427 428
		f 4 621 -568 622 623
		mu 0 4 429 386 385 430
		f 4 624 625 626 627
		mu 0 4 431 432 433 414
		f 4 628 629 630 -624
		mu 0 4 430 434 435 429
		f 3 -607 -627 631
		mu 0 3 412 414 433
		f 4 632 -630 633 634
		mu 0 4 436 435 434 437
		f 4 635 -566 636 -635
		mu 0 4 437 380 383 436
		f 4 637 638 639 640
		mu 0 4 438 439 440 441
		f 4 641 642 643 -639
		mu 0 4 439 442 443 440
		f 4 644 -641 645 646
		mu 0 4 444 438 441 445
		f 4 647 -618 648 -643
		mu 0 4 442 426 425 443
		f 4 -648 649 -632 650
		mu 0 4 426 442 412 433
		f 4 -562 651 -628 -610
		mu 0 4 416 446 431 414
		f 4 -595 -644 652 1328
		mu 0 4 926 406 448 927
		f 4 654 655 -647 656
		mu 0 4 449 384 444 445
		f 4 -650 -642 657 -604
		mu 0 4 412 442 439 410
		f 4 658 659 -560 -596
		mu 0 4 407 387 378 377
		f 4 -490 660 -429 -358
		mu 0 4 325 324 285 286
		f 4 -38 -484 -593 661
		mu 0 4 42 45 322 450
		f 4 -487 662 -427 -661
		mu 0 4 324 323 284 285
		f 4 -513 663 -572 664
		mu 0 4 344 343 389 388
		f 4 -517 665 -599 -664
		mu 0 4 343 346 409 389
		f 4 -520 666 -602 -666
		mu 0 4 346 348 411 409
		f 4 -523 667 -605 -667
		mu 0 4 348 350 413 411
		f 4 -526 668 -608 -668
		mu 0 4 350 352 415 413
		f 4 -528 -665 -611 -669
		mu 0 4 352 354 417 415
		f 4 -485 669 -424 -663
		mu 0 4 323 321 282 284
		f 4 -658 -638 670 -601
		mu 0 4 410 439 438 408
		f 4 -671 -645 671 -598
		mu 0 4 408 438 444 407
		f 4 -656 -570 -659 -672
		mu 0 4 444 384 387 407
		f 4 -651 -626 -564 -619
		mu 0 4 426 433 432 427
		f 4 -481 672 -419 -670
		mu 0 4 321 320 281 282
		f 4 -479 673 -416 -673
		mu 0 4 320 317 280 281
		f 4 -501 674 675 676
		mu 0 4 451 452 453 454
		f 4 -475 -360 -412 -674
		mu 0 4 317 252 255 280
		f 4 677 678 679 680
		mu 0 4 455 456 870 866
		f 5 681 682 683 684 685
		mu 0 5 459 460 461 462 463
		f 3 686 687 -678
		mu 0 3 455 464 456
		f 3 688 689 690
		mu 0 3 465 466 242
		f 4 691 692 693 694
		mu 0 4 467 468 469 470
		f 3 695 1334 1337
		mu 0 3 471 924 922
		f 4 696 697 698 699
		mu 0 4 472 473 842 475
		f 4 700 701 702 703
		mu 0 4 476 477 478 479
		f 4 704 705 706 707
		mu 0 4 480 481 243 482
		f 4 708 709 710 711
		mu 0 4 483 484 485 486
		f 4 -699 712 -679 713
		mu 0 4 475 842 870 456
		f 3 714 715 716
		mu 0 3 479 487 470
		f 4 -707 -340 -690 717
		mu 0 4 482 243 242 466
		f 4 -711 718 719 720
		mu 0 4 486 485 469 489
		f 4 721 722 723 724
		mu 0 4 490 491 492 493
		f 4 725 726 727 728
		mu 0 4 487 494 495 496
		f 4 -653 -649 729 1326
		mu 0 4 927 448 498 928
		f 4 731 732 -720 -693
		mu 0 4 468 499 489 469
		f 4 -700 733 734 735
		mu 0 4 472 475 500 501
		f 4 -712 736 737 738
		mu 0 4 483 486 240 502
		f 4 -714 -688 739 -734
		mu 0 4 475 456 464 500
		f 4 740 741 -338 -737
		mu 0 4 486 503 241 240
		f 4 742 -683 743 744
		mu 0 4 504 461 460 505
		f 4 -681 745 -685 746
		mu 0 4 455 866 506 507
		f 4 -691 -744 -682 747
		mu 0 4 465 242 508 509
		f 4 -745 -339 -725 748
		mu 0 4 504 505 490 493
		f 4 -687 -747 -684 -743
		mu 0 4 464 455 507 510
		f 4 749 750 751 752
		mu 0 4 511 512 513 514
		f 4 753 754 755 756
		mu 0 4 515 467 517 518
		f 4 757 758 759 760
		mu 0 4 519 520 521 522
		f 3 -742 761 -722
		mu 0 3 241 503 523
		f 4 -689 762 -680 763
		mu 0 4 466 465 458 457
		f 3 -695 764 765
		mu 0 3 467 470 496
		f 4 -723 766 -761 -727
		mu 0 4 492 491 519 522
		f 4 -708 768 -698 769
		mu 0 4 480 482 474 875
		f 4 -704 770 -710 771
		mu 0 4 476 479 485 484
		f 4 -718 -764 -713 -769
		mu 0 4 482 466 457 474
		f 4 -717 -694 -719 -771
		mu 0 4 479 470 469 485
		f 4 -738 -341 -706 772
		mu 0 4 502 240 243 481
		f 4 -757 773 -751 774
		mu 0 4 515 518 513 512
		f 4 -755 -766 -728 -760
		mu 0 4 517 467 496 495
		f 4 -748 -686 -746 -763
		mu 0 4 465 509 865 458
		f 4 -702 776 -735 777
		mu 0 4 478 477 501 500
		f 4 778 -778 -740 -749
		mu 0 4 531 478 500 464
		f 4 -779 779 -715 -703
		mu 0 4 478 531 487 479
		f 3 -765 -716 -729
		mu 0 3 496 470 487
		f 3 -724 -726 -780
		mu 0 3 531 494 487
		f 3 780 781 -733
		mu 0 3 499 532 489
		f 4 -753 782 783 784
		mu 0 4 511 514 533 499
		f 4 785 -767 -762 786
		mu 0 4 532 534 523 503
		f 4 -782 -787 -741 -721
		mu 0 4 489 532 503 486
		f 4 -786 -781 -784 -758
		mu 0 4 534 532 499 533
		f 4 -1330 1332 -696 -640
		mu 0 4 406 925 924 471
		f 4 787 -692 -754 -775
		mu 0 4 512 468 467 515
		f 4 -732 -788 -750 -785
		mu 0 4 499 468 512 511
		f 3 -657 -1334 1338
		mu 0 3 914 537 921
		f 5 -752 -774 -756 -759 -783
		mu 0 5 538 539 540 521 520
		f 4 -434 788 -458 789
		mu 0 4 291 290 308 307
		f 4 791 -677 792 -477
		mu 0 4 318 451 454 319
		f 4 -70 793 -731 794
		mu 0 4 71 30 542 543
		f 4 -27 -662 -654 -794
		mu 0 4 30 33 544 542
		f 4 -1590 1592 -1654 1654
		mu 0 4 1118 1080 1082 1117
		f 4 -367 -1 -60 -389
		mu 0 4 214 1 0 64
		f 4 795 796 797 798
		mu 0 4 545 546 547 548
		f 3 799 800 801
		mu 0 3 162 549 550
		f 4 802 803 804 -676
		mu 0 4 453 551 552 454
		f 4 805 806 807 808
		mu 0 4 553 554 555 556
		f 4 809 810 811 812
		mu 0 4 557 558 559 560
		f 4 813 814 -803 815
		mu 0 4 561 562 563 564
		f 4 1611 817 818 1612
		mu 0 4 1093 565 566 1092
		f 4 819 820 821 822
		mu 0 4 567 568 569 570
		f 3 823 824 -812
		mu 0 3 559 571 560
		f 4 -250 -492 -253 825
		mu 0 4 572 119 184 134
		f 4 826 827 -494 828
		mu 0 4 573 574 328 327
		f 4 -797 829 1602 1601
		mu 0 4 547 546 1085 1087
		f 4 832 833 1610 -819
		mu 0 4 566 577 1090 1092
		f 4 835 836 -793 -805
		mu 0 4 552 579 319 454
		f 4 837 -1602 1604 1603
		mu 0 4 580 547 1087 1088
		f 4 840 841 842 843
		mu 0 4 582 583 584 585
		f 4 844 845 846 847
		mu 0 4 586 562 569 587
		f 4 -807 848 -829 849
		mu 0 4 555 554 573 327
		f 4 -1612 1614 1613 1573
		mu 0 4 565 1093 1094 1071
		f 4 -825 851 -459 852
		mu 0 4 588 589 82 287
		f 4 1605 854 -1604 1606
		mu 0 4 1089 591 580 1088
		f 4 1633 857 -1633 1634
		mu 0 4 1105 185 101 1104
		f 4 858 859 -839 860
		mu 0 4 592 593 581 576
		f 3 -108 -1644 1680
		mu 0 3 100 97 1110
		f 4 862 -441 -383 863
		mu 0 4 594 294 269 268
		f 4 864 865 -856 -860
		mu 0 4 593 595 590 581
		f 4 -818 866 867 868
		mu 0 4 566 565 596 597
		f 4 -1574 1576 1575 -867
		mu 0 4 565 1071 1072 596
		f 4 -263 870 871 872
		mu 0 4 192 191 598 599
		f 4 -838 873 874 -798
		mu 0 4 547 580 587 548
		f 4 -855 875 -848 -874
		mu 0 4 580 591 586 587
		f 4 1578 1577 876 -1576
		mu 0 4 1072 1073 579 596
		f 4 877 878 -824 879
		mu 0 4 600 601 571 559
		f 4 -801 880 -820 881
		mu 0 4 550 549 568 567
		f 4 882 -86 -852 -879
		mu 0 4 602 83 82 589
		f 4 883 884 885 886
		mu 0 4 603 604 558 605
		f 4 888 889 -461 890
		mu 0 4 606 598 311 310
		f 4 -800 891 892 893
		mu 0 4 549 162 266 545
		f 4 -804 894 895 896
		mu 0 4 552 551 607 597
		f 4 -821 897 -875 -847
		mu 0 4 569 568 548 587
		f 4 -836 -897 -868 -877
		mu 0 4 579 552 597 596
		f 4 -846 -814 898 -822
		mu 0 4 569 562 561 570
		f 4 -1578 1580 -478 -837
		mu 0 4 579 1073 1074 319
		f 4 -881 -894 -799 -898
		mu 0 4 568 549 545 548
		f 4 -810 899 900 -886
		mu 0 4 558 557 608 605
		f 4 901 -833 -869 -896
		mu 0 4 607 577 566 597
		f 4 -828 902 903 904
		mu 0 4 328 574 609 610
		f 4 -885 907 -880 -811
		mu 0 4 558 604 600 559
		f 4 -277 -826 -170 -193
		mu 0 4 148 572 134 133
		f 4 -858 -254 -491 908
		mu 0 4 101 185 184 58
		f 4 909 910 -806 911
		mu 0 4 612 613 554 553
		f 4 912 913 -849 -911
		mu 0 4 613 614 573 554
		f 3 914 915 -887
		mu 0 3 605 615 603
		f 4 916 917 918 919
		mu 0 4 616 617 618 619
		f 4 920 921 922 -3
		mu 0 4 2 620 621 3
		f 4 -918 923 924 925
		mu 0 4 618 617 622 623
		f 4 -842 926 927 928
		mu 0 4 584 583 624 625
		f 4 -876 929 -902 930
		mu 0 4 586 591 626 627
		f 4 -866 931 -906 932
		mu 0 4 590 595 628 629
		f 4 -1606 1608 -834 -930
		mu 0 4 591 1089 1091 626
		f 4 -845 -931 -895 -815
		mu 0 4 562 586 627 563
		f 3 -802 933 -510
		mu 0 3 162 550 630
		f 4 -378 934 -796 -893
		mu 0 4 266 207 546 545
		f 4 -935 935 1600 -830
		mu 0 4 546 207 631 1086
		f 3 936 -889 937
		mu 0 3 632 598 606
		f 4 938 -929 939 940
		mu 0 4 633 584 625 609
		f 4 -940 941 942 -904
		mu 0 4 609 625 634 610
		f 4 943 -941 -903 944
		mu 0 4 635 633 609 574
		f 4 945 -945 -827 -914
		mu 0 4 614 635 574 573
		f 4 -916 -843 -939 946
		mu 0 4 636 585 584 633
		f 4 -884 -947 -944 947
		mu 0 4 637 636 633 635
		f 4 -908 -948 -946 948
		mu 0 4 638 637 635 614
		f 4 -878 -949 -913 949
		mu 0 4 639 638 614 613
		f 4 -883 -950 -910 950
		mu 0 4 640 639 613 612
		f 4 951 -202 -951 952
		mu 0 4 641 642 640 612
		f 4 -841 953 954 955
		mu 0 4 583 582 643 632
		f 4 -954 956 -861 -831
		mu 0 4 644 645 592 576
		f 4 957 -872 -937 -955
		mu 0 4 643 599 598 632
		f 4 -777 958 959 960
		mu 0 4 501 477 646 647
		f 4 961 -460 -863 962
		mu 0 4 648 310 309 649
		f 4 963 -927 -956 -938
		mu 0 4 606 624 583 632
		f 3 -873 -936 -293
		mu 0 3 209 631 207
		f 4 964 965 -413 -267
		mu 0 4 125 650 651 194
		f 4 966 967 -942 -928
		mu 0 4 624 648 634 625
		f 4 -957 -844 -915 968
		mu 0 4 592 645 615 605
		f 4 -859 -969 -901 969
		mu 0 4 593 592 605 608
		f 4 -964 -891 -962 -967
		mu 0 4 624 606 310 648
		f 4 -232 -269 -265 -261
		mu 0 4 172 126 195 189
		f 4 -952 970 -275 -192
		mu 0 4 642 641 197 81
		f 4 971 -953 -912 972
		mu 0 4 652 641 612 553
		f 4 -972 973 -280 -971
		mu 0 4 641 652 199 197
		f 4 -974 974 975 -284
		mu 0 4 199 652 653 200
		f 4 -973 -809 976 -975
		mu 0 4 652 553 556 653
		f 3 1399 1398 -865
		mu 0 3 593 971 595
		f 4 -188 977 -850 -493
		mu 0 4 326 654 555 327
		f 4 -45 -289 -976 978
		mu 0 4 655 205 200 653
		f 4 -213 -273 -379 -892
		mu 0 4 162 161 112 266
		f 4 979 980 981 -274
		mu 0 4 65 656 657 6
		f 4 -11 982 -808 -978
		mu 0 4 654 658 556 555
		f 3 983 -495 984
		mu 0 3 659 329 328
		f 4 985 -985 -905 986
		mu 0 4 660 659 328 610
		f 4 987 -987 -943 988
		mu 0 4 661 660 610 634
		f 4 -312 989 990 991
		mu 0 4 224 223 662 663
		f 4 -315 -992 992 993
		mu 0 4 226 224 663 664
		f 4 994 995 -991 996
		mu 0 4 665 666 663 662
		f 4 -988 997 -993 -996
		mu 0 4 666 667 664 663
		f 4 -983 -225 -979 -977
		mu 0 4 556 658 655 653
		f 4 998 999 -368 1000
		mu 0 4 668 669 258 213
		f 4 -923 1001 -980 -468
		mu 0 4 3 621 656 65
		f 4 -14 1002 1003 -353
		mu 0 4 12 7 670 249
		f 4 -1003 -7 -982 1004
		mu 0 4 670 7 6 657
		f 4 1005 1006 -997 1007
		mu 0 4 671 672 665 662
		f 3 -1001 -300 1008
		mu 0 3 668 213 215
		f 4 1009 1010 1011 1012
		mu 0 4 673 674 675 676
		f 4 1013 -1008 -990 -374
		mu 0 4 263 671 662 223
		f 3 1014 -998 1015
		mu 0 3 677 664 667
		f 4 -871 -262 -966 -890
		mu 0 4 598 191 190 311
		f 4 -1015 1016 -381 -994
		mu 0 4 664 677 267 226
		f 4 -377 -440 -965 -147
		mu 0 4 103 265 650 125
		f 4 -963 1017 -989 -968
		mu 0 4 648 649 661 634
		f 3 1018 -1016 -1018
		mu 0 3 594 677 667
		f 5 -1007 1019 -1009 -984 1020
		mu 0 5 665 672 678 679 680
		f 3 -1021 -986 -995
		mu 0 3 665 680 666
		f 4 -1012 1021 -1006 1022
		mu 0 4 676 675 672 671;
	setAttr ".fc[500:881]"
		f 4 1023 -1023 -1014 -394
		mu 0 4 274 676 671 263
		f 4 1024 -1013 -1024 -396
		mu 0 4 275 673 676 274
		f 3 1025 -1020 -1022
		mu 0 3 675 678 672
		f 4 1026 1027 1028 -401
		mu 0 4 279 682 683 276
		f 4 -1019 -864 -402 -1017
		mu 0 4 677 594 268 267
		f 4 -1025 -403 -1029 1029
		mu 0 4 673 275 276 683
		f 3 -1010 -1030 1030
		mu 0 3 674 673 683
		f 3 -420 -1000 -1031
		mu 0 3 283 258 669
		f 3 -1026 -1011 -999
		mu 0 3 678 675 674
		f 4 -701 1031 1032 -959
		mu 0 4 477 476 684 646
		f 4 1033 -660 -569 1034
		mu 0 4 685 378 387 386
		f 4 1035 1036 1037 1038
		mu 0 4 686 687 688 689
		f 4 1039 -567 -655 -509
		mu 0 4 690 385 384 449
		f 4 -1320 1322 1321 1041
		mu 0 4 333 931 930 692
		f 4 1042 -652 1043 1044
		mu 0 4 693 694 695 696
		f 4 -502 1045 -816 -675
		mu 0 4 697 698 561 564
		f 4 -1042 1046 -636 1047
		mu 0 4 699 700 380 437
		f 4 -506 1048 -623 -1040
		mu 0 4 690 701 430 385
		f 4 -499 -1048 -634 1049
		mu 0 4 702 699 437 434
		f 4 -504 -1050 -629 -1049
		mu 0 4 701 702 434 430
		f 4 1050 -1039 1051 1052
		mu 0 4 703 686 689 704
		f 3 -1028 -921 -421
		mu 0 3 283 620 2
		f 4 1053 -1053 1054 1055
		mu 0 4 705 703 704 706
		f 3 1056 1057 -637
		mu 0 3 383 693 436
		f 4 -508 -934 -882 1058
		mu 0 4 707 630 550 567
		f 4 1059 1060 1061 -1037
		mu 0 4 708 709 710 711
		f 4 -1057 -565 -625 -1043
		mu 0 4 693 383 382 694
		f 4 1062 1063 1064 -1061
		mu 0 4 709 712 713 710
		f 4 -620 -563 -1047 1065
		mu 0 4 714 381 380 700
		f 4 1066 1067 -925 1068
		mu 0 4 715 716 717 718
		f 4 1069 1070 -926 -1068
		mu 0 4 716 719 720 717
		f 4 1071 -1069 -924 1072
		mu 0 4 721 715 718 722
		f 4 1073 1074 -919 -1071
		mu 0 4 719 723 724 720
		f 4 1075 -1073 -917 1076
		mu 0 4 725 721 722 726
		f 4 1077 -1077 -920 -1075
		mu 0 4 727 725 726 728
		f 4 -1036 1078 -1045 1079
		mu 0 4 687 686 693 696
		f 4 -503 -1059 -823 1080
		mu 0 4 729 707 567 570
		f 4 -1051 1081 -1058 -1079
		mu 0 4 686 703 436 693
		f 4 -1054 1082 -633 -1082
		mu 0 4 703 705 435 436
		f 4 1083 1084 -631 -1083
		mu 0 4 705 712 429 435
		f 4 -1063 1085 -622 -1085
		mu 0 4 712 709 386 429
		f 3 1086 -1035 -1086
		mu 0 3 709 685 386
		f 3 1597 1596 -776
		mu 0 3 529 1084 929
		f 4 -1087 -1060 -1080 1087
		mu 0 4 685 709 708 730
		f 4 -497 -1081 -899 -1046
		mu 0 4 698 729 570 561
		f 4 -1084 -1056 1088 -1064
		mu 0 4 712 705 706 713
		f 4 -561 -1034 -1088 -1044
		mu 0 4 379 378 685 730
		f 4 -1067 1089 1090 1091
		mu 0 4 716 715 731 732
		f 4 -1070 -1092 1092 1093
		mu 0 4 719 716 732 733
		f 4 -1072 1094 1095 -1090
		mu 0 4 715 721 734 731
		f 4 -1074 -1094 1096 1097
		mu 0 4 723 719 733 735
		f 4 -1076 1098 1099 -1095
		mu 0 4 721 725 736 734
		f 4 -1078 -1098 1100 -1099
		mu 0 4 725 727 737 736
		f 4 -1091 1101 1102 1103
		mu 0 4 732 731 401 404
		f 4 -1093 -1104 -591 1104
		mu 0 4 733 732 404 403
		f 4 -1096 1105 -589 -1102
		mu 0 4 731 734 394 401
		f 4 -1097 -1105 -585 1106
		mu 0 4 735 733 403 906
		f 4 -736 -961 1107 1108
		mu 0 4 472 501 647 738
		f 4 -772 1109 1110 -1032
		mu 0 4 476 484 739 684
		f 4 -697 -1109 1111 1112
		mu 0 4 473 472 738 741
		f 4 -709 1113 1114 -1110
		mu 0 4 484 483 742 739
		f 4 -1062 1115 -581 1116
		mu 0 4 711 710 392 396
		f 4 -1065 1117 -577 -1116
		mu 0 4 710 713 393 392
		f 4 -1089 1118 -587 -1118
		mu 0 4 713 706 400 393
		f 4 -1055 1119 1120 -1119
		mu 0 4 706 704 402 400
		f 4 -1052 1121 -590 -1120
		mu 0 4 704 689 398 402
		f 4 -1038 -1117 -584 -1122
		mu 0 4 689 743 399 398
		f 4 -1101 -1107 -582 1122
		mu 0 4 736 737 397 395
		f 4 -1100 -1123 -579 -1106
		mu 0 4 734 736 395 394
		f 4 -770 -1113 1123 1124
		mu 0 4 480 875 876 744
		f 4 -739 1125 1126 -1114
		mu 0 4 483 502 745 742
		f 4 -705 -1125 1127 1128
		mu 0 4 481 480 744 746
		f 4 -773 -1129 1129 -1126
		mu 0 4 502 481 746 745
		f 3 1371 -592 -1103
		mu 0 3 401 402 404
		f 4 -557 1130 -540 1131
		mu 0 4 372 374 360 359
		f 4 -554 1132 -539 -1131
		mu 0 4 374 369 361 360
		f 4 -551 -1132 -536 1133
		mu 0 4 366 372 359 357
		f 4 -548 1134 -535 -1133
		mu 0 4 369 368 358 361
		f 4 -545 -1134 -532 1135
		mu 0 4 362 366 357 356
		f 4 -541 -1136 -530 -1135
		mu 0 4 363 362 356 355
		f 4 -1634 1636 -248 -255
		mu 0 4 185 1105 1106 132
		f 4 1136 1137 1138 1139
		mu 0 4 747 748 749 750
		f 4 -1139 1140 1141 1142
		mu 0 4 750 749 751 752
		f 4 -425 1143 1144 1145
		mu 0 4 753 754 755 756
		f 4 -414 1146 -1138 1147
		mu 0 4 757 758 759 760
		f 4 -428 -1146 1148 1149
		mu 0 4 761 753 756 762
		f 4 -410 1150 -1141 -1147
		mu 0 4 758 763 764 759
		f 4 1713 1700 1153 1154
		mu 0 4 1146 1139 767 768
		f 4 -407 -1150 1155 -1151
		mu 0 4 763 769 770 764
		f 4 1706 1705 1158 1159
		mu 0 4 1141 1142 947 774
		f 4 1364 1160 1367 -1157
		mu 0 4 778 775 776 777
		f 4 -1143 -1365 1161 1162
		mu 0 4 780 775 778 779
		f 4 -422 1163 1164 -1144
		mu 0 4 754 781 782 755
		f 4 -1140 -1163 1165 1166
		mu 0 4 784 780 779 783
		f 4 1167 1168 -1137 1169
		mu 0 4 785 786 748 747
		f 4 1170 -1145 1171 1172
		mu 0 4 787 788 789 790
		f 4 1173 -1149 -1171 1174
		mu 0 4 791 792 788 787
		f 4 -1172 -1165 -1168 1175
		mu 0 4 790 789 793 794
		f 4 -1142 -1156 -1174 -1161
		mu 0 4 752 751 792 791
		f 4 -1173 1366 1176 1177
		mu 0 4 796 797 798 795
		f 4 -1176 1365 1178 -1367
		mu 0 4 797 799 808 798
		f 4 1704 -1160 1179 1180
		mu 0 4 1140 1141 774 801
		f 4 1708 1707 1183 -1706
		mu 0 4 1143 1144 803 773
		f 4 1702 -1181 1184 -1701
		mu 0 4 1139 1140 801 767
		f 4 1710 1709 1186 -1708
		mu 0 4 1144 1145 805 803
		f 4 -1175 -1178 -1182 -1368
		mu 0 4 806 796 795 807
		f 4 1712 -1155 1187 -1710
		mu 0 4 1145 1146 768 805
		f 4 -1170 -1167 -1152 -1366
		mu 0 4 799 784 783 808
		f 4 -417 -1148 -1169 -1164
		mu 0 4 781 757 760 782
		f 4 1188 1189 1190 1191
		mu 0 4 810 811 812 813
		f 4 1192 1193 1194 -1190
		mu 0 4 811 814 815 812
		f 4 1195 -1192 1196 1197
		mu 0 4 816 810 813 817
		f 4 1198 1199 1200 -1194
		mu 0 4 814 818 525 815
		f 4 1201 -1198 1202 1203
		mu 0 4 820 816 817 821
		f 4 1204 1205 1206 -1200
		mu 0 4 536 822 823 819
		f 4 1207 -1204 1208 1209
		mu 0 4 824 820 821 825
		f 4 1210 1211 1212 -1206
		mu 0 4 822 826 827 823
		f 4 1213 -1210 1214 1215
		mu 0 4 828 824 825 831
		f 4 1216 -1216 1217 -1212
		mu 0 4 826 828 831 827
		f 5 1218 1219 1220 1221 1222
		mu 0 5 832 833 834 835 836
		f 4 1223 1224 1225 1226
		mu 0 4 837 838 839 840
		f 4 1227 1228 -1225 1229
		mu 0 4 841 516 839 838
		f 4 1230 1231 1232 1233
		mu 0 4 843 840 844 845
		f 4 1234 1235 1236 1237
		mu 0 4 846 847 844 848
		f 4 1238 1239 -1233 -1236
		mu 0 4 847 849 845 844
		f 4 -1231 -1223 1240 -1227
		mu 0 4 840 843 850 837
		f 3 -1237 -1232 1241
		mu 0 3 848 844 840
		f 3 1242 1243 1244
		mu 0 3 851 852 853
		f 3 1245 1246 1247
		mu 0 3 851 854 855
		f 4 1248 -1245 1249 1250
		mu 0 4 856 851 853 857
		f 4 1251 1252 -1250 1253
		mu 0 4 858 859 857 853
		f 4 1254 -1218 1255 -1253
		mu 0 4 859 827 831 857
		f 4 1256 1257 1258 1259
		mu 0 4 740 488 862 863
		f 4 1260 1261 1262 1263
		mu 0 4 864 855 516 528
		f 4 1264 -1221 1265 -1230
		mu 0 4 838 868 869 841
		f 4 1266 1267 1268 -1191
		mu 0 4 812 871 872 813
		f 4 1269 1270 1271 1272
		mu 0 4 873 874 854 856
		f 4 1273 1274 1275 1276
		mu 0 4 526 867 879 880
		f 4 1277 -1273 1278 -1209
		mu 0 4 821 873 856 825
		f 4 1279 -1277 1280 -1201
		mu 0 4 525 526 880 815
		f 4 1281 -1240 1282 1283
		mu 0 4 881 882 883 884
		f 3 -1247 1284 -1262
		mu 0 3 855 854 516
		f 4 1285 -1260 1286 -1275
		mu 0 4 867 740 863 879
		f 3 -1239 1287 1288
		mu 0 3 849 847 885
		f 4 -1264 -1219 -1234 -1282
		mu 0 4 881 833 832 882
		f 4 -1220 -1263 -1228 -1266
		mu 0 4 869 528 516 841
		f 4 -1222 -1265 -1224 -1241
		mu 0 4 850 868 838 837
		f 4 1289 1290 1291 1292
		mu 0 4 887 888 889 858
		f 4 1293 1294 1295 -1254
		mu 0 4 890 891 892 893
		f 4 1296 1297 1298 -1259
		mu 0 4 862 894 895 863
		f 4 1299 -1257 1300 -1291
		mu 0 4 888 861 860 889
		f 4 -1298 1301 -1293 -1296
		mu 0 4 892 896 897 893
		f 4 1302 -1288 -1235 1303
		mu 0 4 872 885 847 846
		f 4 -1252 1304 1305 1306
		mu 0 4 859 858 898 899
		f 4 -1269 -1304 1307 -1197
		mu 0 4 813 872 846 817
		f 4 -1255 -1307 1308 -1213
		mu 0 4 827 859 899 823
		f 4 1309 -1242 -1226 1310
		mu 0 4 874 848 840 839
		f 4 -1261 -1284 -1243 -1248
		mu 0 4 855 864 852 851
		f 4 -1244 -1283 -1289 -1294
		mu 0 4 890 884 883 891
		f 4 -1310 -1270 1311 -1238
		mu 0 4 848 874 873 846
		f 4 1312 1313 1314 -1276
		mu 0 4 879 895 871 880
		f 3 -1246 -1249 -1272
		mu 0 3 854 851 856
		f 4 1315 -1274 1316 -1306
		mu 0 4 898 878 877 899
		f 4 -1312 -1278 -1203 -1308
		mu 0 4 846 873 821 817
		f 4 -1315 -1267 -1195 -1281
		mu 0 4 880 871 812 815
		f 4 -1251 -1256 -1215 -1279
		mu 0 4 856 857 831 825
		f 4 -1317 -1280 -1207 -1309
		mu 0 4 899 877 819 823
		f 4 -1271 -1311 -1229 -1285
		mu 0 4 854 874 839 516
		f 3 -1313 -1287 -1299
		mu 0 3 895 879 863
		f 3 -1305 -1292 1317
		mu 0 3 898 858 889
		f 5 -1300 -1290 -1302 -1297 -1258
		mu 0 5 900 901 897 896 902
		f 4 -1286 -1316 -1318 -1301
		mu 0 4 860 878 898 889
		f 4 -1314 -1295 -1303 -1268
		mu 0 4 871 895 885 872
		f 4 497 -1321 1318 500
		mu 0 4 332 931 903 335
		f 4 -1323 -498 -792 1040
		mu 0 4 930 931 332 691
		f 4 -1597 1598 -1652 1658
		mu 0 4 929 1084 1076 1115
		f 4 -1326 -1327 1324 730
		mu 0 4 497 927 928 530
		f 4 -1328 -1329 1325 653
		mu 0 4 447 926 927 497
		f 4 592 593 -1331 1327
		mu 0 4 447 405 925 926
		f 4 -1333 -594 -483 -1332
		mu 0 4 924 925 405 535
		f 4 -1335 1331 -469 1336
		mu 0 4 922 924 535 923
		f 4 -1336 -1337 -451 767
		mu 0 4 921 922 923 524
		f 4 -1338 1335 1333 -646
		mu 0 4 471 922 921 537
		f 3 -1339 -768 -214
		mu 0 3 914 921 524
		f 3 -1340 21 22
		mu 0 3 28 920 161
		f 3 -1347 1348 504
		mu 0 3 904 917 338
		f 4 -1345 -505 505 506
		mu 0 4 916 904 338 340
		f 4 501 -1319 -1346 -496
		mu 0 4 336 335 903 919
		f 4 496 495 1342 -1348
		mu 0 4 918 336 919 917
		f 4 -1349 -1343 1340 503
		mu 0 4 338 917 919 334
		f 3 -1344 -1350 509
		mu 0 3 339 916 915
		f 4 409 410 -1353 -408
		mu 0 4 763 758 913 905
		f 4 413 414 -1355 -411
		mu 0 4 758 757 912 913
		f 4 416 417 -1357 -415
		mu 0 4 757 781 911 912
		f 4 421 422 -1359 -418
		mu 0 4 781 754 910 911
		f 4 424 425 -1361 -423
		mu 0 4 754 753 909 910
		f 4 427 -1362 -1363 -426
		mu 0 4 753 761 907 909
		f 4 406 407 -1364 1361
		mu 0 4 769 763 905 908
		f 3 -1369 539 -538
		mu 0 3 349 359 360
		f 3 -1370 533 534
		mu 0 3 358 351 361
		f 3 -1371 584 585
		mu 0 3 398 906 403
		f 3 -1121 -1372 -588
		mu 0 3 400 402 401
		f 4 1670 -1373 1378 1377
		mu 0 4 1129 1130 308 932
		f 4 1380 -1666 1668 -1378
		mu 0 4 932 933 1128 1129
		f 4 1382 -1665 1666 1665
		mu 0 4 933 934 1127 1128
		f 4 1384 1383 1677 1664
		mu 0 4 934 935 1134 1127
		f 4 1386 1385 1676 -1384
		mu 0 4 935 936 1133 1134
		f 3 -1374 -1377 -1679
		mu 0 3 1132 168 312
		f 4 -1672 1674 -1386 1387
		mu 0 4 541 1132 1133 936
		f 4 -438 790 -1379 -789
		mu 0 4 290 293 932 308
		f 4 -447 -1380 -1381 -791
		mu 0 4 293 301 933 932
		f 4 -450 -1382 -1383 1379
		mu 0 4 301 303 934 933
		f 4 -457 463 -1385 1381
		mu 0 4 303 306 935 934
		f 4 -454 488 -1387 -464
		mu 0 4 306 299 936 935
		f 4 -443 -790 -1388 -489
		mu 0 4 299 298 541 936
		f 4 -1391 -1390 -1389 -431
		mu 0 4 100 965 966 287
		f 4 1388 -1393 -1392 -853
		mu 0 4 287 966 967 588
		f 4 1391 -1395 -1394 -813
		mu 0 4 560 968 969 557
		f 4 1646 -1396 1390 -1646
		mu 0 4 1111 970 965 100
		f 3 -1399 -1700 -932
		mu 0 3 595 971 628
		f 3 1699 -1398 1396
		mu 0 3 628 971 972
		f 4 -1400 -970 1401 -1403
		mu 0 4 971 593 608 973
		f 4 -1401 -1402 -900 1393
		mu 0 4 969 973 608 557
		f 4 -1407 -1406 -1405 -1404
		mu 0 4 974 975 976 977
		f 4 -1410 1405 -1534 -1547
		mu 0 4 978 976 975 979
		f 4 1533 -1413 -1535 -1536
		mu 0 4 979 975 980 981
		f 4 1534 -1416 -1537 -1538
		mu 0 4 981 980 982 983
		f 4 1536 -1419 -1539 -1540
		mu 0 4 983 982 984 985
		f 4 1538 -1422 -1541 -1542
		mu 0 4 985 984 986 987
		f 4 1540 -1425 -1543 -1544
		mu 0 4 987 986 988 989
		f 4 1542 -1427 1409 -1546
		mu 0 4 989 988 990 991
		f 4 -1431 -1430 -1429 -1428
		mu 0 4 992 993 994 995
		f 4 1428 -1434 -1433 -1432
		mu 0 4 995 994 996 997
		f 4 -1437 -1436 1430 -1435
		mu 0 4 998 999 1000 1001
		f 4 1432 -1440 -1439 -1438
		mu 0 4 997 996 1002 1003
		f 4 1438 -1443 -1442 -1441
		mu 0 4 1003 1002 1004 1005
		f 4 -1446 -1445 1436 -1444
		mu 0 4 1006 1007 999 998
		f 4 1441 -1448 1445 -1447
		mu 0 4 1005 1004 1007 1006
		f 4 1397 -1685 1687 -1553
		mu 0 4 1008 1009 1136 1138
		f 3 -1561 -1450 1395
		mu 0 3 1013 1014 1015
		f 4 -1454 -1453 -1557 -1558
		mu 0 4 1018 1019 1020 1021
		f 4 -1456 -1455 1450 1394
		mu 0 4 1022 1019 1017 1016
		f 4 1449 -1458 -1457 1389
		mu 0 4 1015 1014 1020 1023
		f 4 1456 1452 1455 1392
		mu 0 4 1023 1020 1019 1022
		f 4 -1460 1403 -1459 1427
		mu 0 4 995 974 977 992
		f 4 -1462 -1461 1459 1431
		mu 0 4 997 1024 974 995
		f 4 -1464 -1463 1461 1437
		mu 0 4 1003 1025 1024 997
		f 4 -1466 -1465 1463 1440
		mu 0 4 1005 1026 1025 1003
		f 4 -1468 -1467 1465 1446
		mu 0 4 1006 1027 1026 1005
		f 4 -1470 -1469 1467 1443
		mu 0 4 998 1028 1027 1006
		f 4 1556 1457 -1559 -1560
		mu 0 4 1021 1020 1014 1029
		f 4 1458 -1472 1469 1434
		mu 0 4 1001 1030 1028 998
		f 4 -1473 1454 1453 -1556
		mu 0 4 1031 1017 1019 1018
		f 4 1404 1426 -1474 1471
		mu 0 4 1030 990 988 1028
		f 4 1473 1424 -1475 1468
		mu 0 4 1028 988 986 1027
		f 4 1474 1421 -1476 1466
		mu 0 4 1027 986 984 1026
		f 4 1475 1418 -1477 1464
		mu 0 4 1026 984 982 1025
		f 4 1476 1415 -1478 1462
		mu 0 4 1025 982 980 1024
		f 4 1477 1412 1406 1460
		mu 0 4 1024 980 975 974
		f 4 -1480 1448 -1479 1429
		mu 0 4 993 1011 1010 994
		f 4 -1485 -1484 -1483 -1482
		mu 0 4 1032 1033 1034 1035
		f 4 -1488 -1487 -1486 1483
		mu 0 4 1033 1036 1037 1034
		f 4 -1491 -1490 -1489 1422
		mu 0 4 1038 1039 1040 1041
		f 4 -1493 1482 -1492 1413
		mu 0 4 1042 1043 1044 1045
		f 4 -1495 -1494 1490 1425
		mu 0 4 1046 1047 1039 1038
		f 4 1491 1485 -1496 1410
		mu 0 4 1045 1044 1048 1049
		f 4 -1500 -1499 -1715 1716
		mu 0 4 1148 1051 1052 1147
		f 4 1495 -1501 1494 1407
		mu 0 4 1049 1048 1054 1055
		f 4 -1505 -1504 -1722 1724
		mu 0 4 1153 1057 1058 1152
		f 4 1501 -1551 -1506 -1548
		mu 0 4 1060 1061 1062 1063
		f 4 -1508 -1507 1547 1487
		mu 0 4 1064 1065 1060 1063
		f 4 1488 -1510 -1509 1419
		mu 0 4 1041 1040 1066 1067
		f 4 -1512 -1511 1507 1484
		mu 0 4 1068 1069 1065 1064
		f 4 -1515 1481 -1514 -1513
		mu 0 4 1070 1032 1035 886
		f 4 -1518 -1517 1489 -1516
		mu 0 4 527 829 830 18
		f 4 -1520 1515 1493 -1519
		mu 0 4 961 527 18 960
		f 4 -1521 1512 1509 1516
		mu 0 4 829 959 958 830
		f 4 1505 1518 1500 1486
		mu 0 4 1036 961 960 1037
		f 4 -1523 -1522 -1550 1517
		mu 0 4 955 953 950 949
		f 4 1549 -1524 -1549 1520
		mu 0 4 949 950 948 962
		f 4 -1526 -1525 1504 1726
		mu 0 4 1154 956 1057 1153
		f 4 1721 -1529 -1720 1722
		mu 0 4 1151 952 809 1150
		f 4 1727 1714 -1530 1525
		mu 0 4 1154 1147 1052 956
		f 4 1719 -1532 -1718 1720
		mu 0 4 1150 809 17 1149
		f 4 1550 1526 1522 1519
		mu 0 4 14 22 953 955
		f 4 1717 -1533 1499 1718
		mu 0 4 1149 17 1051 1148
		f 4 1548 1496 1511 1514
		mu 0 4 962 948 1069 1068
		f 4 1508 1513 1492 1416
		mu 0 4 1067 1066 1043 1042
		f 4 1408 1535 -1412 -1411
		mu 0 4 1049 979 981 1045
		f 4 1411 1537 -1415 -1414
		mu 0 4 1045 981 983 1042
		f 4 1414 1539 -1418 -1417
		mu 0 4 1042 983 985 1067
		f 4 1417 1541 -1421 -1420
		mu 0 4 1067 985 987 1041
		f 4 1420 1543 -1424 -1423
		mu 0 4 1041 987 989 1038
		f 4 1423 1545 1544 -1426
		mu 0 4 1038 989 991 1046
		f 4 -1545 1546 -1409 -1408
		mu 0 4 1055 978 979 1049
		f 3 1402 1698 1684
		mu 0 3 1009 1012 1136
		f 3 -1683 1685 -1699
		mu 0 3 1012 1135 1136
		f 3 1682 -1697 1697
		mu 0 3 1135 1012 1017
		f 3 1400 -1451 1696
		mu 0 3 1012 1016 1017
		f 3 1472 1683 -1698
		mu 0 3 1017 1031 1135
		f 4 -1554 1555 1554 -1568
		mu 0 4 15 1031 1018 951
		f 4 -1555 1557 -1569 -1570
		mu 0 4 951 1018 1021 21
		f 4 1568 1559 -1571 -1572
		mu 0 4 21 1021 1029 964
		f 3 1688 1558 1561
		mu 0 3 1137 1029 1014
		f 3 1552 -1562 1560
		mu 0 3 1013 1137 1014
		f 4 1478 1563 -1481 1433
		mu 0 4 994 1010 963 996
		f 4 1480 1565 1564 1439
		mu 0 4 996 963 15 1002
		f 4 -1565 1567 1566 1442
		mu 0 4 1002 15 951 1004
		f 4 -1567 1569 -1452 1447
		mu 0 4 1004 951 21 1007
		f 4 1451 1571 -1471 1444
		mu 0 4 1007 21 964 999
		f 4 1470 1572 1479 1435
		mu 0 4 999 964 13 1000
		f 4 850 -1614 1616 1615
		mu 0 4 111 1071 1094 1095
		f 4 -1577 -851 -120 869
		mu 0 4 1072 1071 111 110
		f 4 -132 1649 -1579 -870
		mu 0 4 110 116 1073 1072
		f 4 -1581 -1650 1650 -1580
		mu 0 4 1074 1073 116 1113
		f 4 1651 -1583 1579 1652
		mu 0 4 1114 1075 1074 1113
		f 4 -41 -1584 -1618 1620
		mu 0 4 1097 48 1077 1096
		f 4 118 -1587 1583 -117
		mu 0 4 109 1078 1077 48
		f 4 129 130 -1589 -119
		mu 0 4 109 72 1079 1078
		f 4 157 -1591 -131 -71
		mu 0 4 71 1080 1079 72
		f 4 -1593 -158 -795 -1592
		mu 0 4 1082 1080 71 543
		f 4 -1594 -1595 1591 -1325
		mu 0 4 928 1083 1081 530
		f 4 -1596 1593 -730 -621
		mu 0 4 529 1083 928 498
		f 4 -1322 1323 -1598 -1066
		mu 0 4 692 930 1084 529
		f 4 -1599 -1324 -1041 -1582
		mu 0 4 1076 1084 930 691
		f 3 -1601 -958 -1600
		mu 0 3 1086 631 681
		f 4 -1603 1599 830 831
		mu 0 4 1087 1085 575 576
		f 4 -1605 -832 838 839
		mu 0 4 1088 1087 576 581
		f 4 853 -1607 -840 855
		mu 0 4 590 1089 1088 581
		f 4 -1609 -854 -933 -1608
		mu 0 4 1091 1089 590 629
		f 4 -1611 1607 834 -1610
		mu 0 4 1092 1090 578 96
		f 4 816 -1613 1609 -100
		mu 0 4 95 1093 1092 96
		f 4 -1615 -817 -140 1574
		mu 0 4 1094 1093 95 87
		f 4 -1617 -1575 -90 887
		mu 0 4 1095 1094 87 86
		f 4 1584 -1619 -888 -249
		mu 0 4 124 1096 1095 86
		f 4 -1620 -1621 -1585 145
		mu 0 4 49 1097 1096 124
		f 4 38 -1623 1619 41
		mu 0 4 46 1098 1097 49
		f 4 66 67 -1625 -39
		mu 0 4 46 69 1099 1098
		f 4 -1627 -68 -206 -1626
		mu 0 4 1101 1100 155 93
		f 4 -1628 -1629 1625 97
		mu 0 4 73 1102 1101 93
		f 4 72 -1630 -1631 1627
		mu 0 4 73 66 1103 1102
		f 4 62 63 -1632 1629
		mu 0 4 66 67 68 1103
		f 4 856 -1635 -109 -42
		mu 0 4 49 1105 1104 46
		f 4 -1637 -857 -146 -1636
		mu 0 4 1106 1105 49 124
		f 4 -1639 1635 248 -1638
		mu 0 4 1107 1106 124 86
		f 4 89 90 -1641 1637
		mu 0 4 86 87 1108 1107
		f 4 -1643 -91 139 -1642
		mu 0 4 1109 1108 87 95
		f 4 -1645 1641 99 100
		mu 0 4 1110 1109 95 96
		f 3 -862 1681 1645
		mu 0 3 100 96 1111
		f 3 -1397 -1647 -907
		mu 0 3 611 970 1111
		f 4 -1649 -165 -209 220
		mu 0 4 940 1112 102 939
		f 4 -1657 -1658 1653 1594
		mu 0 4 1083 929 1116 1081
		f 3 775 1656 1595
		mu 0 3 529 929 1083
		f 4 -1659 -1653 -1651 1659
		mu 0 4 1119 1120 1121 1122
		f 4 -1656 -1655 1657 -1660
		mu 0 4 1123 1124 1125 1126
		f 3 -1661 165 -67
		mu 0 3 46 131 69
		f 3 1661 164 1663
		mu 0 3 46 102 1112
		f 3 1647 1660 -1664
		mu 0 3 1112 131 46
		f 3 108 -1663 -1662
		mu 0 3 46 1104 102
		f 4 1373 -1673 1669 -226
		mu 0 4 943 1131 1130 170
		f 3 -1674 -1675 1678
		mu 0 3 312 1133 1132
		f 3 905 -1680 -835
		mu 0 3 578 611 96
		f 3 -1681 -101 861
		mu 0 3 100 1110 96
		f 3 -1682 1679 906
		mu 0 3 1111 96 611
		f 4 1562 -1684 1553 -1566
		mu 0 4 963 1135 1031 15
		f 4 -1686 -1563 -1564 1551
		mu 0 4 1136 1135 963 1010
		f 4 -1688 -1552 -1449 -1687
		mu 0 4 1138 1136 1010 1011
		f 4 -1573 1570 -1689 1686
		mu 0 4 13 964 1029 1137
		f 4 -1166 -1702 -1703 -1153
		mu 0 4 766 800 1140 1139
		f 4 -1162 -1704 -1705 1701
		mu 0 4 800 771 1141 1140
		f 4 1156 1157 -1707 1703
		mu 0 4 771 772 1142 1141
		f 4 1181 1182 -1709 -1158
		mu 0 4 946 802 1144 1143
		f 4 -1177 1185 -1711 -1183
		mu 0 4 802 804 1145 1144
		f 4 -1179 -1712 -1713 -1186
		mu 0 4 804 765 1146 1145
		f 4 1151 1152 -1714 1711
		mu 0 4 765 766 1139 1146
		f 4 -1716 -1717 -1498 -1497
		mu 0 4 1050 1148 1147 1053
		f 4 1530 -1719 1715 1523
		mu 0 4 16 1149 1148 1050
		f 4 1527 -1721 -1531 1521
		mu 0 4 23 1150 1149 16
		f 4 1502 -1723 -1528 -1527
		mu 0 4 954 1151 1150 23
		f 4 -1724 -1725 -1503 -1502
		mu 0 4 1056 1153 1152 1059
		f 4 -1726 -1727 1723 1506
		mu 0 4 957 1154 1153 1056
		f 4 1497 -1728 1725 1510
		mu 0 4 1053 1147 1154 957;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 1.5;
	setAttr ".ns" 0.035;
	setAttr ".tgsp" 1;
createNode transform -n "spy_head_mesh" -p "spyInfo_group";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "spy_head_meshShape" -p "spy_head_mesh";
	addAttr -ci true -sn "balance" -ln "balance" -dt "doubleArray";
	addAttr -ci true -sn "speed" -ln "speed" -dt "doubleArray";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 12 ".iog[0].og";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".bnr" 0;
	setAttr ".tgsp" 1;
	setAttr ".balance" -type "doubleArray" 1592 0.78524214029312134 0.76765942573547363
		 0.88551700115203857 0.9055778980255127 0.76538485288619995 0.88274884223937988 0.95870870351791382
		 0.96345978975296021 0.70858216285705566 0.93388348817825317 0.51978218555450439 0.57965028285980225
		 0.75581198930740356 0.87658703327178955 0.93148714303970337 0.59583836793899536 1
		 0.96110433340072632 0.9290851354598999 0.94641661643981934 1 1 1 0 0 1 1 1 0.96623361110687256
		 0.94037759304046631 0.92715775966644287 0.96159994602203369 0.96799999475479126 0.9968000054359436
		 1 1 1 1 1 1 1 1 1 1 0.98845487833023071 1 0.24803923070430756 0.99215692281723022
		 0.99215692281723022 0.99215692281723022 0.99215692281723022 1 1 1 1 1 1 1 1 1 0.9960784912109375
		 1 1 1 1 1 1 0.95658665895462036 0.94243395328521729 0.92780119180679321 0.91974741220474243
		 0.91920840740203857 0.92000001668930054 0.92000001668930054 1 1 1 1 1 1 1 0.67962354421615601
		 0.99213802814483643 0.4912000298500061 0.20000001788139343 0.3599686324596405 0.75922220945358276
		 0.87840026617050171 0.59236925840377808 0.39996862411499023 0.90943080186843872 0.94266480207443237
		 1 1 0 0 0 0 0 0 0 0 0 0.025000002235174179 0.16250000894069672 0.21250000596046448
		 0.1875 1 1 0.94663679599761963 0.90259099006652832 0.88041573762893677 0.87541502714157104
		 0.88692474365234375 0.89758718013763428 0.93760001659393311 0.95999997854232788 0.95999997854232788
		 0.92000001668930054 0.92000001668930054 1 1 0.80000007152557373 0.80000007152557373
		 0.80000007152557373 0.80000007152557373 0.68800002336502075 0.80000007152557373 0
		 0 0 0.14262256026268005 0.30260786414146423 0.19843138754367828 0.16535948216915131
		 0.19843138754367828 0.20000000298023224 0.24799999594688416 0.23999999463558197 0.2800000011920929
		 0.2800000011920929 0.40000000596046448 0.80000007152557373 0.80000007152557373 0.80000007152557373
		 0.81357401609420776 0.80460363626480103 0.88909411430358887 0.92782193422317505 0.92871952056884766
		 0.92526298761367798 0.91546821594238281 0.88891506195068359 0.84904611110687256 0.83691996335983276
		 0.80258381366729736 0.80079007148742676 0.79960966110229492 0.80000007152557373 0.80000007152557373
		 0.80000007152557373 0.80000007152557373 0.80000007152557373 1 1 0.64000004529953003
		 0.42080003023147583 0.25600001215934753 0.080000005662441254 0.20732863247394562
		 0.77095592021942139 0.5913848876953125 0.41038060188293457 0.24640001356601715 0.7552984356880188
		 0.60000002384185791 0 0 0 0 0 0 0 0 0 0.40000003576278687 0.60000002384185791 0.80000001192092896
		 0.77758973836898804 0.77498370409011841 0.75841635465621948 0.75821822881698608 0.76762878894805908
		 0.77345281839370728 0.78410243988037109 0.73600000143051147 0.69600003957748413 0.60000002384185791
		 0.60000002384185791 0.60000002384185791 0.60000002384185791 0.4400000274181366 0.28800001740455627
		 0.23760001361370087 0 0 0.16000001132488251 0 0 0 0 0 0 0 0 0 0.039999999105930328
		 0.071999996900558472 0.12640000879764557 0.19200001657009125 0.16000001132488251
		 0.20723766088485718 0.27179154753684998 0.60000002384185791 0.80000001192092896 0.80000001192092896
		 0.80000001192092896 0.80000001192092896 0.80000001192092896 0.80000001192092896 0.80000001192092896
		 0.80000001192092896 0.78481191396713257 0.58513951301574707 0.59231632947921753 0.60000002384185791
		 0.60000002384185791 0.60000002384185791 0.60000002384185791 0.60000002384185791 0.60000002384185791
		 0.42400002479553223 0.30400002002716064 0.10592000931501389 0.084006838500499725
		 0.1523200124502182 0.59387606382369995 0.40080532431602478 0.24800001084804535 0.18816001713275909
		 0.47937232255935669 0 0 0 0 0 0.20000001788139343 0.20000001788139343 0.20000001788139343
		 0.40000003576278687 0.54384899139404297 0.58673405647277832 0.59258878231048584 0.59071695804595947
		 0.59603202342987061 0.59658241271972656 0.56000000238418579 0.40000003576278687 0.40000003576278687
		 0.36800003051757813 0.35200002789497375 0.21378667652606964 0.11372160911560059 0
		 0 0.045733336359262466 0 0 0 0 0 0 0 0 0.0099999997764825821 0 0 0 0.0074666673317551613
		 0.068184748291969299 0.40000000596046448 0.60000002384185791 0.60000002384185791
		 0.60000002384185791 0.60000002384185791 0.80000001192092896 0.80000001192092896 0.80000001192092896
		 0.29928216338157654 0.33974599838256836 0.36036917567253113 0.38561883568763733 0.40835139155387878
		 0.43843141198158264 0.40000003576278687 0.60000002384185791 0.25600001215934753 0.11360000818967819
		 0.040320001542568207 0.082511328160762787 0.14730283617973328 0.39937233924865723
		 0.24960000813007355 0.20640002191066742 0.1849600225687027 0.32000002264976501 0.20000001788139343
		 0.20000001788139343 0.20000001788139343 0.20000001788139343 0.24000000953674316 0.36000001430511475
		 0.40385794639587402 0.41559040546417236 0.42128640413284302 0.41456642746925354 0.40320000052452087
		 0.40000000596046448 0.20000001788139343 0.21105183660984039 0.19340161979198456 0.095442317426204681
		 0.025388889014720917 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.40000000596046448 0.010120262391865253
		 0.40000000596046448 0.40000000596046448 0.40000000596046448 0.60000002384185791 0.80000001192092896
		 0.29057341814041138 0.30613046884536743 0.12772335112094879 0.1437663733959198 0.16481254994869232
		 0.20195765793323517 0.28358277678489685 0.34290197491645813 0.30117648839950562 0.28800001740455627
		 0.16031374037265778 0.086400002241134644 0.027845423668622971 0.026570843532681465
		 0.094271615147590637 0.16221433877944946 0.24000000953674316 0.20128001272678375
		 0.19840002059936523 0.19680000841617584 0.20000001788139343 0.20000001788139343 0.20000001788139343
		 0.24960000813007355 0.26080000400543213 0.2752000093460083 0.26688000559806824 0.21600000560283661
		 0.1792256087064743 0.096128009259700775 0.096286050975322723 0.025066845118999481
		 0.00025600002845749259 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.20000000298023224 0
		 0.0073867714963853359 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.40000000596046448 0.06878526508808136 0.11557404696941376 0.13871097564697266 0.15017274022102356
		 0.13296456634998322 0.063374772667884827 0.031778343021869659 0.035248592495918274
		 0.040000002831220627 0.081606276333332062 0.17029020190238953 0.20705883204936981
		 0.048062749207019806 0.048313729465007782 0.022656001150608063 0.0091884424909949303
		 0.047358047217130661 0.19968001544475555 0.21152001619338989 0.21088001132011414
		 0.031911909580230713 0.0073836431838572025 0.0032000001519918442 0 0 0 0 0.0080522885546088219
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0037120003253221512 0.00096000003395602107 0.00082750321598723531
		 0.20000000298023224 0.026145642623305321 0.026786401867866516 0.045830115675926208
		 0.055995170027017593 0.060254134237766266 0.050440307706594467 0.028295619413256645
		 0.021519722416996956 0.0048485929146409035 0.0032000001519918442 0.0032000001519918442
		 0.022400001063942909 0.096000008285045624 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0019091451540589333
		 0.20000000298023224 0.0073115280829370022 0.0043806289322674274 0.013397246599197388
		 0.018742717802524567 0.019262310117483139 0.016450794413685799 0.0094474907964468002
		 0.010766898281872272 0.0019200000679120421 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0013782379683107138
		 0.0015480888541787863 0.0011022577527910471 0.0012405546149238944 0.0027699726633727551
		 0.0042311339639127254 0.0050262501463294029 0.0042844554409384727 0.0024489066563546658
		 0.0034556742757558823 0.0011339294724166393 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00024960000882856548
		 0.00018346667638979852 6.1440005083568394e-005 0.00032067330903373659 0.00014068892051000148
		 0.00065917684696614742 0.00084326235810294747 0.00091002834960818291 0.00038449192652478814
		 0.00083876051940023899 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.0240000847261399e-005 1.0240000847261399e-005
		 0 1.7922724509844556e-005 7.1902533818501979e-005 0.00010842413030331954 0.00010880000627366826
		 7.6800002716481686e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4.0980085032060742e-006
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.80000001192092896
		 0.80000001192092896 0.80000001192092896 0.80000001192092896 0.80000001192092896 0.80000001192092896
		 0.78545999526977539 0.76774656772613525 0.8856041431427002 0.90579575300216675 0.76542842388153076
		 0.88274884223937988 0.70880001783370972 0.91844820976257324 0.52000004053115845 0.57958054542541504
		 0.75582069158554077 0.87658703327178955 0.59583836793899536 1 0.66105097532272339
		 0.92094117403030396 0.48156866431236267 0.20000001788139343 0.35981178283691406 0.75922220945358276
		 0.87840026617050171 0.59236925840377808 0.39981177449226379 0.90943080186843872 0.94266480207443237
		 1 1 0 0 0 0 0 0 0 0 0 0.025000002235174179 0.16250000894069672 0.21250000596046448
		 0.1875 1 1 0.94663679599761963 0.90259099006652832 0.88041573762893677 0.87541502714157104
		 0.88692474365234375 0.89758718013763428 0.93760001659393311 0.95999997854232788 0.95999997854232788
		 0.92000001668930054 0.92000001668930054 1 1 0.80000007152557373 0.80000007152557373
		 0.80000007152557373 0.80000007152557373 0.68800002336502075 0.80000007152557373 0
		 0 0 0.14262256026268005 0.30260786414146423 0.19843138754367828 0.16535948216915131
		 0.19843138754367828 0.20000000298023224 0.24799999594688416 0.23999999463558197 0.2800000011920929
		 0.2800000011920929 0.40000000596046448 0.80000007152557373 0.80000007152557373 0.80000007152557373
		 0.82452142238616943 0.80570816993713379 0.88989466428756714 0.92866069078445435 0.93031781911849976
		 0.92765843868255615 0.9166259765625 0.88801097869873047 0.84559816122055054 0.83011621236801147
		 0.79741889238357544 0.79847002029418945 0.7995988130569458 0.80000007152557373 0.80000007152557373
		 0.80000007152557373 0.80000007152557373 0.80000007152557373 1 1 0.63686275482177734
		 0.39993727207183838 0.20784315466880798 0.080000005662441254 0.20717176795005798
		 0.77095592021942139 0.5913848876953125 0.41034922003746033 0.24640001356601715 0.7552984356880188
		 0.60000002384185791 0 0 0 0 0 0 0 0 0 0.40000003576278687 0.60000002384185791 0.80000001192092896
		 0.77758973836898804 0.77498370409011841 0.75841635465621948 0.75821822881698608 0.76762878894805908
		 0.77345281839370728 0.78410243988037109 0.73600000143051147 0.69600003957748413 0.60000002384185791
		 0.60000002384185791 0.60000002384185791 0.60000002384185791 0.4400000274181366 0.28800001740455627
		 0.23759767413139343 0 0 0.16000001132488251 0 0 0 0 0 0 0 0 0 0.039999999105930328
		 0.071999996900558472 0.12640000879764557 0.19200001657009125 0.23344755172729492
		 0.28929898142814636 0.32652866840362549 0.60000002384185791 0.80000001192092896 0.80000001192092896
		 0.80000001192092896 0.80000001192092896 0.80000001192092896 0.80000001192092896 0.80000001192092896
		 0.80000001192092896 0.80000001192092896 0.5836259126663208 0.59208947420120239 0.60000002384185791
		 0.60000002384185791 0.60000002384185791 0.60000002384185791 0.60000002384185791 0.60000002384185791
		 0.41329258680343628 0.19968628883361816 0.084448635578155518 0.082892805337905884
		 0.1523200124502182 0.59387606382369995 0.40080532431602478 0.24800001084804535 0.18816001713275909
		 0.47937232255935669 0 0 0 0 0.20000001788139343 0.20000001788139343 0.20000001788139343
		 0.20000001788139343 0.40000003576278687 0.54384899139404297 0.58673405647277832 0.59258878231048584
		 0.59071695804595947 0.59603202342987061 0.59658241271972656 0.56000000238418579 0.40000003576278687
		 0.40000003576278687 0.36800003051757813 0.35200002789497375 0.2137838751077652 0.11370193213224411
		 0 0 0.045733336359262466 0 0 0 0 0 0 0 0 0.0099999997764825821 0 0 0 0.0093925939872860909
		 0.086171187460422516 0.40000000596046448 0.60000002384185791 0.60000002384185791
		 0.60000002384185791 0.60000002384185791 0.80000001192092896 0.80000001192092896 0.80000001192092896
		 0.29561492800712585 0.3402896523475647 0.36013871431350708 0.38544943928718567 0.40819454193115234
		 0.43843141198158264 0.40000003576278687 0.60000002384185791 0.18348550796508789 0.071780398488044739
		 0.034880001097917557 0.082354135811328888 0.14727680385112762 0.39937233924865723
		 0.24960000813007355 0.20640002191066742 0.1849600225687027 0.32000002264976501 0.20000001788139343
		 0.20000001788139343 0.20000001788139343 0.20000001788139343 0.24000000953674316 0.36000001430511475
		 0.40385794639587402 0.41559040546417236 0.42128640413284302 0.41456642746925354 0.40320000052452087
		 0.40000000596046448 0.20000001788139343 0.21104361116886139 0.19338475167751312 0.095392115414142609
		 0.025363791733980179 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.40000000596046448 0.016052376478910446
		 0.40000000596046448 0.40000000596046448 0.40000000596046448 0.60000002384185791 0.80000001192092896
		 0.30556270480155945 0.31118521094322205 0.12748834490776062 0.14358635246753693 0.16464942693710327
		 0.20156863331794739 0.28342589735984802 0.34280785918235779 0.30117648839950562 0.31195610761642456
		 0.14549687504768372 0.054108869284391403 0.015968628227710724 0.025920001789927483
		 0.094266638159751892 0.16221334040164948 0.24000000953674316 0.20128001272678375
		 0.19840002059936523 0.19680000841617584 0.20000001788139343 0.20000001788139343 0.20000001788139343
		 0.24960000813007355 0.26080000400543213 0.2752000093460083 0.26688000559806824 0.21600000560283661
		 0.1792256087064743 0.096128009259700775 0.096241474151611328 0.024994159117341042
		 0.00024194511934183538 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.20000000298023224 0
		 0.0073867714963853359 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.40000000596046448 0.087780512869358063 0.13481599092483521 0.15580442547798157
		 0.15724256634712219 0.13620467483997345 0.065166056156158447 0.032718811184167862
		 0.035895392298698425 0.040489416569471359 0.081449419260025024 0.1701396107673645
		 0.21645805239677429 0.036945570260286331 0.085254490375518799 0.011253710836172104
		 0.0075494903139770031 0.047333147376775742 0.19968001544475555 0.21152001619338989
		 0.21088001132011414 0.031851068139076233 0.0057105072773993015 0.0015686277765780687
		 0 0 0 0 0.014163661748170853 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0037120003253221512 0.00096000003395602107
		 0.0017140434356406331 0.20000000298023224 0.040668964385986328 0.038061358034610748
		 0.058804385364055634 0.067484639585018158 0.067896902561187744 0.054736115038394928
		 0.030290305614471436 0.022048057988286018 0.006850468460470438 0.0054510780610144138
		 0.0044800001196563244 0.022964708507061005 0.099312946200370789 0.016564706340432167
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0029223109595477581 0.20000000298023224 0.015799306333065033
		 0.0099183861166238785 0.019944947212934494 0.0246103685349226 0.023949276655912399
		 0.019357318058609962 0.010648534633219242 0.011395511217415333 0.0032750782556831837
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00294526107609272 0.0050411093980073929 0.0043605747632682323
		 0.0032323093619197607 0.0049575716257095337 0.0064886412583291531 0.0068313260562717915
		 0.0055497437715530396 0.0029389860574156046 0.0038535487838089466 0.001499815727584064
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00097962480504065752 0.0013161733513697982 0.00090585305588319898
		 0.00085212261183187366 0.00058427319163456559 0.001175793819129467 0.0014019218506291509
		 0.0013291407376527786 0.0005637604626826942 0.0010001898044720292 7.6800002716481686e-005
		 0 0 0 0 0 0 0 0 0 0 0 0 8.9599998318590224e-005 0.00019712853827513754 0.00025832763640210032
		 0.00019257763051427901 7.726116746198386e-005 8.7517146312166005e-005 0.00019645158317871392
		 0.00020377009059302509 0.00012863706797361374 0.00010014720464823768 0 0 0 0 0 0
		 0 0 0 0 0 0 1.2970665920875035e-005 2.952533213829156e-005 2.491903978807386e-005
		 9.0811736299656332e-006 1.0122714229510166e-005 3.14982098643668e-005 7.4240006142645143e-006
		 0 0 0 0 0 0 0 0 0 0 0 0 0 7.1679994562146021e-007 7.1679994562146021e-007 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.80000001192092896 0.80000001192092896
		 0.80000001192092896 0.80000001192092896 0.80000001192092896 0.80000001192092896 0
		 0 0 0 0 0 0 0 ;
	setAttr ".speed" -type "doubleArray" 1592 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
createNode mesh -n "spy_head_meshShapeOrig1" -p "spy_head_mesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1819 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.58183599 0.402477 0.57987499
		 0.40774199 0.57656598 0.40669599 0.57767397 0.40372401 0.51248002 0.41717699 0.5
		 0.41735101 0.5 0.41401201 0.51240402 0.413616 0.52841598 0.416904 0.52853799 0.42003301
		 0.51255703 0.42073801 0.54416102 0.41599199 0.52829301 0.413775 0.54373097 0.41297299
		 0.56068599 0.41373399 0.55925298 0.41090101 0.58318502 0.40878701 0.56211901 0.416567
		 0.51359302 0.39415199 0.5 0.39459801 0.5 0.39081699 0.514247 0.39005601 0.52717698
		 0.394234 0.52628499 0.39826599 0.51293999 0.398247 0.54156101 0.394227 0.52806902
		 0.39020199 0.54365599 0.38985699 0.555875 0.39450699 0.55366403 0.39873299 0.53946698
		 0.398597 0.56783998 0.39488399 0.55808502 0.39028099 0.57120597 0.39162001 0.57728302
		 0.396754 0.57231599 0.39919701 0.564475 0.39814901 0.58133298 0.39904201 0.57689899
		 0.400956 0.85489303 0.54548597 0.86104399 0.53963602 0.85873097 0.54584402 0.83770901
		 0.70332903 0.83969599 0.70493501 0.8452 0.729949 0.84128499 0.73119003 0.86682498
		 0.60130101 0.86499703 0.602413 0.86484301 0.64290798 0.89905798 0.58170003 0.90083098
		 0.64619899 0.85351801 0.67752999 0.85211802 0.67623597 0.86191797 0.64264101 0.87995499
		 0.70196903 0.91153097 0.71973997 0.87875903 0.70702702 0.89674199 0.77963501 0.867625
		 0.76800299 0.5 0.180338 0.57221299 0.2 0.53610599 0.19016901 0.64264399 0.75193202
		 0.642263 0.74006802 0.64996397 0.73648399 0.65339297 0.74692899 0.65223402 0.73228502
		 0.655402 0.73253 0.64908397 0.733868 0.63953799 0.71175802 0.64665598 0.71371901
		 0.64315301 0.72742802 0.636181 0.72645301 0.64798701 0.73083299 0.642618 0.72955799
		 0.64967 0.729289 0.63609397 0.72877401 0.65468001 0.73163801 0.51210099 0.44507399
		 0.5 0.444675 0.5 0.43103299 0.51200902 0.43121901 0.544312 0.44226399 0.52653003
		 0.444397 0.52747703 0.43088701 0.54378802 0.429672 0.54459101 0.41901201 0.54429299
		 0.45445701 0.56605899 0.44790301 0.58315998 0.47305 0.55332398 0.47646499 0.560673
		 0.50374001 0.52342898 0.50467801 0.52143401 0.47953901 0.51161897 0.457663 0.52547801
		 0.45675001 0.51035398 0.48163199 0.59803802 0.50121498 0.61007297 0.53362101 0.56105399
		 0.526115 0.54811698 0.54695803 0.56242001 0.53402799 0.60111701 0.53810197 0.60171902
		 0.54334402 0.63501102 0.490078 0.65871298 0.526281 0.61125201 0.73224199 0.61243701
		 0.73411602 0.60990798 0.73504603 0.60803598 0.73192102 0.596865 0.73273599 0.60124499
		 0.738132 0.61881799 0.73910397 0.622805 0.73986399 0.62177598 0.74201101 0.61711299
		 0.740996 0.62562001 0.75312901 0.61713701 0.75161499 0.62844002 0.74203801 0.62843102
		 0.73971802 0.61309499 0.73839402 0.61539501 0.73717099 0.951554 0.38432401 0.96742702
		 0.28877601 1 0.297681 1 0.405276 0.59359801 0.72400898 0.60123199 0.725079 0.59035999
		 0.73250598 0.59468001 0.74062097 0.61015397 0.74826002 0.60382998 0.75713199 0.61273801
		 0.76073301 0.5 0.457706 0.5 0.484184 0.61001998 0.73053199 0.612481 0.72969198 0.606296
		 0.71979499 0.61458498 0.73121798 0.61211801 0.73182702 0.52358502 0.35123399 0.5
		 0.352447 0.5 0.33867601 0.527264 0.33699101 0.51914299 0.36650601 0.5 0.366696 0.55548298
		 0.36844 0.53842199 0.366492 0.54429197 0.35218 0.56506097 0.353838 0.55067903 0.33918199
		 0.57564598 0.34189799 0.59537399 0.321789 0.55814201 0.32085001 0.53132999 0.318764
		 0.51539499 0.38213101 0.5 0.38229099 0.54719901 0.38186899 0.53138298 0.38149601
		 0.62877798 0.72822201 0.62873203 0.72590399 0.62315297 0.71002603 0.63154 0.70997697
		 0.62211102 0.72665697 0.62218797 0.72908401 0.49958 0.74145502 0.524508 0.72856599
		 0.51926601 0.73983902 0.49954799 0.75030398 0.49953201 0.75498801 0.51795697 0.74631602
		 0.57914799 0.734308 0.56310701 0.73806298 0.56732798 0.726668 0.585365 0.72168702
		 0.55176401 0.71403903 0.57442701 0.70103902 0.54463398 0.73305303 0.59111601 0.70223999
		 0.59131801 0.68568701 0.58855999 0.676458 0.58937901 0.68089497 0.57349801 0.69656402
		 0.573071 0.69073802 0.55107498 0.70388103 0.55067098 0.70980698 0.59653699 0.710168
		 0.63585699 0.74152601 0.63428098 0.753133 0.623936 0.76109701 0.63440597 0.75968403
		 0.63608402 0.738644 0.57923102 0.74333799 0.56530797 0.74782503 0.54931903 0.74189901
		 0.55208302 0.75340199 0.56369001 0.76838303 0.560265 0.77018702 0.499466 0.77605999
		 0.499495 0.766554 0.52043599 0.76126403 0.51736403 0.77474099 0.54063398 0.77507001
		 0.53911 0.75822699 0.518731 0.752132 0.49951699 0.75955802 0.611669 0.45616001 0.59420598
		 0.433512 0.58976501 0.42445201 0.56487298 0.436654 0.509574 0.50543499 0.5 0.50584197
		 0.51836699 0.53206599 0.5 0.529414 0.5 0.51788902 0.51386499 0.51990199 0.64240903
		 0.73707199 0.51648802 0.796978 0.49941301 0.79690999 0.49944499 0.783732 0.51523298
		 0.78428698 0.56248897 0.77338398 0.55458301 0.78328902 0.54000503 0.78360403 0.58874702
		 0.357995 0.60475999 0.34891999 0.62611097 0.33620101 0.57352298 0.370689 0.59179699
		 0.374834 0.60747898 0.36810601 0.62572998 0.36168599 0.64578998 0.696069 0.63472599
		 0.69423002 0.56713903 0.30263099 0.53563797 0.30114201 0.5 0.32059699 0.60701102
		 0.68660998 0.60748601 0.67230898 0.60659498 0.66228497 0.60677397 0.66591698 0.62452602
		 0.67633802 0.62435102 0.658939 0.57882798 0.38423601 0.56378901 0.382716 0.63630998
		 0.428754 0.66262299 0.45804 0.61489999 0.40205801 0.662857 0.53214997 0.66655803
		 0.53595299 0.684811 0.48036399;
	setAttr ".uvst[0].uvsp[250:499]" 0.689403 0.48589101 0.69356799 0.48839599
		 0.70073003 0.429885 0.69642901 0.427118 0.67015898 0.41751599 0.69118202 0.42385301
		 0.62693101 0.77823299 0.62323999 0.77003998 0.637501 0.767205 0.64301097 0.77393597
		 0.642914 0.75734001 0.647475 0.76387501 0.65380502 0.76659399 0.65860099 0.75585598
		 0.66804701 0.75475901 0.67677897 0.74211299 0.66969198 0.74078602 0.66228002 0.74387902
		 0.65638602 0.75099099 0.57080698 0.823457 0.54292202 0.82467097 0.54925603 0.81831002
		 0.57080901 0.81851399 0.55283201 0.79799199 0.56799197 0.79786903 0.57097399 0.814116
		 0.54894 0.81415498 0.53767198 0.79811603 0.542952 0.814165 0.52094197 0.81368202
		 0.51946902 0.825791 0.49936301 0.827039 0.499374 0.81812203 0.51997602 0.81779999
		 0.60567302 0.39289701 0.60246599 0.38523901 0.617329 0.38354099 0.616445 0.394436
		 0.64309698 0.38240999 0.644045 0.408665 0.66937298 0.382588 0.65145999 0.353751 0.60516
		 0.397407 0.72703701 0.223483 0.74858201 0.205099 0.80154699 0.227778 0.77769297 0.26679799
		 0.85792297 0.25536999 0.83585101 0.32181999 0.59461898 0.39893401 0.58640099 0.415411
		 0.56317502 0.425697 0.594275 0.39497599 0.66130501 0.77155399 0.64653301 0.78023303
		 0.62467903 0.80286503 0.62898499 0.78702402 0.64454401 0.79823399 0.66468298 0.78517002
		 0.67661601 0.75818098 0.68627298 0.76696301 0.69797599 0.74766397 0.68555802 0.74451602
		 0.625687 0.30422801 0.658566 0.32150501 0.65503001 0.32408601 0.62280101 0.305998
		 0.61989099 0.30875701 0.652156 0.327106 0.67626703 0.34756601 0.57112598 0.76446801
		 0.58483201 0.75676399 0.57914501 0.77521598 0.59410399 0.76734501 0.60666001 0.771218
		 0.60374302 0.779055 0.53792602 0.284215 0.57369202 0.28725001 0.57693899 0.28119999
		 0.57546902 0.28412199 0.538679 0.280527 0.53937101 0.27702501 0.5 0.30288401 0.5
		 0.28547499 0.65577 0.71993601 0.663647 0.71124601 0.65601301 0.70235801 0.601659
		 0.78768802 0.569161 0.78297502 0.60147601 0.79939598 0.61400002 0.82153398 0.59749198
		 0.82257098 0.59843999 0.818299 0.61690801 0.81813598 0.65052903 0.68496799 0.63771498
		 0.68247402 0.639126 0.67286497 0.65599799 0.67563301 0.64478201 0.65198398 0.664554
		 0.66000801 0.62357301 0.64980102 0.64361501 0.64293897 0.64486599 0.64691103 0.62424499
		 0.653427 0.89546502 0.26630801 0.87290698 0.343739 0.93025398 0.27582201 0.90902102
		 0.36373901 0.704005 0.770235 0.66520298 0.79949403 0.70723099 0.675771 0.71390098
		 0.689592 0.71129298 0.69569302 0.70372498 0.679905 0.68447602 0.696244 0.700216 0.68416202
		 0.70746899 0.69904 0.68839401 0.70512199 0.697043 0.71302003 0.713305 0.71075702
		 0.70421398 0.72728002 0.71681303 0.72452497 0.71421403 0.75130397 0.721609 0.707807
		 0.72424501 0.72153801 0.72088099 0.72287703 0.7173 0.70818001 0.66891402 0.65053898
		 0.69644803 0.66708702 0.69412899 0.67197299 0.66599602 0.65449101 0.69106299 0.67666698
		 0.67604703 0.68729198 0.68390399 0.34404099 0.70770699 0.381569 0.70405102 0.38285699
		 0.67984402 0.345873 0.5 0.28174901 0.5 0.27895799 0.67000097 0.80725598 0.66696101
		 0.80291301 0.70779502 0.77168399 0.71031398 0.77431399 0.72133499 0.753245 0.718261
		 0.75147802 0.59175301 0.39067599 0.52220899 0.71983302 0.52334797 0.72322798 0.49960199
		 0.73539001 0.49961799 0.73118597 1 0.56145298 0.93936598 0.51732302 1 0.679461 0.95018399
		 0.63177299 0.72775 0.97314602 0.718449 0.99404198 0.64109302 0.99164301 0.65627402
		 0.976794 0.91355699 0.880274 0.916587 0.94666702 0.872814 0.973602 0.882016 0.92386001
		 0.84030402 0.95395899 0.83262497 0.988123 1 0.79959399 0.94990402 0.74484402 0.93872702
		 0.820333 0.97557199 0.89326298 0.52397501 0.68131602 0.49977899 0.69236201 0.56999898
		 0.981902 0.60319698 0.971793 0.56989801 0.95110798 0.53275901 0.96208799 0.60958201
		 0.25075099 0.55478901 0.25722399 0.5 0.252491 0.586402 0.23813599 0.51357698 0.54782897
		 0.5 0.54382998 0.75952601 0.299597 0.712942 0.23143999 0.52347499 0.64482498 0.499962
		 0.65131098 0.5 0.61365598 0.52511901 0.60877502 0.5 0.57007098 0.51735198 0.56923902
		 0.51639903 0.559672 0.5 0.55514199 0.52853 0.877464 0.49938199 0.88480401 0.54258198
		 0.26675799 0.5 0.267259 0.53738302 0.92303503 0.49956599 0.93314499 0.705486 0.26421401
		 0.69259799 0.23298 0.58225 0.39431101 0.58576602 0.39712799 0.58599901 0.40123001
		 0.65532202 0.252545 0.64991099 0.23185401 0.86272103 0.52257198 0.84857601 0.50762099
		 0.80617499 0.40687501 0.84410799 0.442022 0.79522598 0.41344601 0.84115797 0.52700597
		 0.87487102 0.47340301 0.86666399 0.52455199 0.85955501 0.64232898 0.85011101 0.67584699
		 0.83924103 0.70286602 0.84536898 0.73475897 0.862064 0.60146803 0.79359502 0.51741701
		 0.830356 0.58884799 0.79213297 0.57951802 0.79771 0.62998003 0.82320303 0.62767702
		 0.77062303 0.44305101 0.67431599 0.54451799 0.70497102 0.49744701 0.73503602 0.63540101
		 0.70395797 0.62210602 0.71692199 0.57566297 0.75206399 0.58093297 0.764723 0.51416397
		 0.741889 0.51283503 0.71947199 0.31233999 0.76336199 0.34595501 0.747931 0.40001801
		 0.731637 0.391285 0.722996 0.449577 0.73553002 0.45681801 0.71185601 0.441138 0.72079098
		 0.386783 0.69268799 0.3409 0.59283501 0.26854199 0.58671403 0.27297601 0.63122499
		 0.28492999 0.62873697 0.29524699 0.77403498 0.99402797 0.78567702 0.96511298 0.80473
		 0.93979001 0.75484699 0.94820601 0.702645 0.94558501 0.88622499 0.84171599 0.86291802
		 0.88637298;
	setAttr ".uvst[0].uvsp[500:749]" 0.84158897 0.91971397 0.72246999 0.793787
		 0.73345703 0.80409598 0.68360603 0.84325898 0.68002802 0.82458001 0.66890198 0.89102399
		 0.63946599 0.87375998 0.70754999 0.85732597 0.639588 0.813389 0.63657802 0.81770003
		 0.63346702 0.84344602 0.612315 0.88882703 0.59570998 0.85559499 0.57457602 0.86026698
		 0.58825302 0.89989501 0.627056 0.92619097 0.64337403 0.912265 0.83464199 0.76871902
		 0.85456997 0.821585 0.81844199 0.81545597 0.837951 0.86638099 0.80326402 0.863258
		 0.76771599 0.86589801 0.79445899 0.81415999 0.80856597 0.76069099 0.763583 0.81644201
		 0.73278898 0.86531699 0.708915 0.90102798 0.74347699 0.90136802 0.78186202 0.90493
		 0.82235301 0.90224499 0.55250603 0.63740498 0.55162001 0.66839498 0.57338899 0.65940303
		 0.57356 0.63135701 0.58762097 0.65174699 0.60904503 0.63375998 0.58776098 0.630768
		 0.60829002 0.60217297 0.58004802 0.606408 0.593135 0.61791801 0.66306001 0.29584599
		 0.66196603 0.309385 0.78014201 0.76034302 0.76571298 0.76123297 0.74796897 0.81103301
		 0.62784499 0.55513698 0.57978499 0.55687797 0.54694903 0.55670702 0.574058 0.58377898
		 0.60074198 0.59334302 0.60637802 0.57640201 0.68847001 0.56076199 0.67572701 0.600483
		 0.64494097 0.58352602 0.63974798 0.57310599 0.66546702 0.93638498 0.68429798 0.92126298
		 0.72671503 0.92561501 0.76972401 0.927257 0.79233998 0.71609598 0.814484 0.71212602
		 0.84011102 0.73558998 0.80130398 0.92360902 0.73454601 0.68868202 0.72970998 0.66987598
		 0.70098501 0.64320898 0.72313303 0.65201199 0.74335402 0.65456599 0.67490399 0.63034701
		 0.53003597 0.522403 0.52588898 0.53635502 0.73509401 0.75647199 0.74042499 0.718952
		 0.75573403 0.71748298 0.75092298 0.75918001 0.77109897 0.715976 0.54339898 0.81825501
		 0.553729 0.60490501 0.54528999 0.57388598 0.71978599 0.50760502 0.75024801 0.46646401
		 0.81379801 0.67113298 0.79655701 0.66722202 0.77117699 0.67156702 0.53856701 0.564475
		 0.52277201 0.54928398 0.763475 0.63442802 0.62018698 0.62352198 0.64681202 0.62034899
		 0.60583103 0.74424797 0.59873998 0.74972397 0.61555499 0.72827297 0.61742401 0.73025602
		 0.61379802 0.71596301 0.62484097 0.6961 0.61198902 0.704175 0.60100901 0.71499699
		 0.609685 0.69542402 0.62432098 0.68427801 0.5 0.42069101 0.5 0.39838001 0.54062003
		 0.40572301 0.527753 0.40572301 0.51249999 0.40572301 0.56772399 0.404953 0.56510198
		 0.40572801 0.55609697 0.40572301 0.56604701 0.404513 0.562639 0.40452999 0.55717403
		 0.40445799 0.54849601 0.40445799 0.53678101 0.40445799 0.526057 0.40445799 0.512357
		 0.40445799 0.5 0.40445799 0.5 0.40572301 0.53877598 0.74797302 0.53887898 0.74132299
		 0.598822 0.81431198 0.564713 0.77658099 0.69221902 0.72714502 0.68394101 0.71500498
		 0.67849803 0.71141398 0.66884702 0.71762902 0.67334199 0.71977502 0.661286 0.73810899
		 0.68194503 0.72781098 0.66078901 0.72472697 0.663261 0.693784 0.67297399 0.70394301
		 0.528938 0.51578099 0.51336402 0.513937 0.61541301 0.59118003 0.63959998 0.80930501
		 0.61845702 0.81375498 0.74932802 0.677764 0.69825101 0.38219601 0.664092 0.72591001
		 0.67141998 0.73194498 0.49937999 0.81419599 0.5 0.51193899 0.98239303 0.25317001
		 0.98824 0.257269 1 0.26260599 1 0.20376401 0.99295801 0.206064 0.987095 0.20830099
		 0.98081601 0.211153 0.97429901 0.213753 0.96855801 0.21611901 0.96441299 0.21922
		 0.96185201 0.224025 0.961851 0.231409 0.96471399 0.238341 0.97165501 0.244362 0.97631502
		 0.248862 0.91535699 0.223832 0.91535699 0.220312 0.91535699 0.239179 0.91535699 0.234357
		 0.91535699 0.206514 0.91535699 0.204799 0.91535699 0.230202 0.86514002 0.246567 0.91535699
		 0.248091 0.91535699 0.244 0.86514002 0.242834 0.86514002 0.238646 0.86513901 0.23417599
		 0.86514002 0.22846299 0.86514002 0.222645 0.86514002 0.21680599 0.86514002 0.21402501
		 0.91535699 0.217573 0.86514002 0.20845801 0.86514002 0.210675 0.91535699 0.21483301
		 0.91535699 0.21277501 0.86514002 0.20453601 0.86514002 0.20631 0.91535699 0.20823
		 0.86514002 0.249872 0.86514002 0.25121999 0.91535699 0.253934 0.91535699 0.25181699
		 0.86514002 0.203477 0.58408499 0.143452 0.57000798 0.142946 0.56994897 0.13653 0.58267802
		 0.13956399 0.55721903 0.133496 0.55717897 0.145386 0.944332 0.16999499 1 0.17693999
		 1 0.181343 0.91706198 0.16999499 1 0.160225 1 0.154623 1 0.165326 0.96319902 0.16999499
		 1 0.173364 0.95038903 0.19647799 0.93869603 0.18532 1 0.19008499 0.97519499 0.19328199
		 0.91606498 0.19391 0.89834499 0.181486 0.89296299 0.15201201 0.91015702 0.128613
		 0.950679 0.14074101 0.94100899 0.15044899 0.88486201 0.16545799 0.87592202 0.121674
		 0.84002101 0.120888 0.81 0.102585 0.89301401 0.102585 0.75331497 0.121788 0.69027001
		 0.12316 0.658189 0.102585 0.90312302 0.12337 0.88851899 0.13703001 0.86681598 0.13302299
		 0.87877202 0.146146 0.85129601 0.131936 0.83143699 0.137081 0.80440903 0.13032199
		 0.74253702 0.13773599 0.72997898 0.133683 0.76000398 0.130826 0.75004297 0.146456
		 0.74190998 0.144255 0.71659899 0.145285 0.66155499 0.141638 0.67937398 0.136121 0.69842702
		 0.142122 0.65402299 0.14362399 0.64968997 0.139008 0.70546699 0.135729 0.706258 0.143071
		 0.62977499 0.140488 0.63173097 0.142636 0.61581802 0.144398 0.60731697 0.139889 0.62206501
		 0.124715 0.645702 0.14206301 0.542656 0.14297301 0.54317498 0.14185899 0.52503002
		 0.13926999 0.506199 0.13835;
	setAttr ".uvst[0].uvsp[750:999]" 0.5 0.117351 0.54353303 0.102585 0.5 0.102585
		 0.95711499 0.12311 1 0.120312 1 0.139944 1 0.149517 0.92750901 0.110797 0.86917102
		 0.15538099 0.87511098 0.162637 0.85525799 0.169342 1 0.16869099 0.98289198 0.16999499
		 1 0.17079 1 0.16999499 0.52333099 0.142978 0.50683898 0.143786 0.52283901 0.144577
		 0.50634003 0.145813 0.63419503 0.16411901 0.65770102 0.169682 0.60968399 0.16901299
		 0.68697298 0.2 0.55415797 0.169167 0.70570898 0.168532 0.68271798 0.164933 0.773408
		 0.2 0.74499202 0.16840699 0.73601103 0.146731 0.72694302 0.1637 0.78060597 0.169765
		 0.76016003 0.16412599 0.77014899 0.14622299 0.82053298 0.17111699 0.80102402 0.16539399
		 0.79064602 0.146505 0.81766099 0.147166 0.84612602 0.2 0.52549899 0.165406 0.5 0.166594
		 0.5 0.149413 0.58245301 0.162752 0.60368901 0.143122 0.780312 0.14347801 0.83810401
		 0.148976 0.83010203 0.145237 0.85628599 0.151361 0.5 0.14236499 0.60993099 0.144309
		 0.78250998 0.137095 0.750781 0.020020001 0.85117197 0.020020001 0.81756997 0.038821001
		 0.73334199 0.038706999 0.80210698 0.046184 0.74258298 0.047150001 0.69039202 0.046928
		 0.66410899 0.020020001 0.873276 0.036653001 0.89989197 0.020020001 0.89989197 0.037588
		 0.87173402 0.054931 0.89989197 0.054685999 0.85415 0.058761999 0.74245399 0.061838001
		 0.79072601 0.061167002 0.79242897 0.068456002 0.73414898 0.069315001 0.81087601 0.054407001
		 0.79966801 0.086133003 0.70843798 0.085685 0.68947297 0.071813002 0.69196099 0.061117999
		 0.650307 0.071415 0.62566298 0.085612997 0.66514701 0.060812999 0.61514199 0.069669999
		 0.62856102 0.071465999 0.62338901 0.057953998 0.64645898 0.060387 0.64915103 0.056380998
		 0.654562 0.055624001 0.65929902 0.054935001 0.54943401 0.086474001 0.57892501 0.071243003
		 0.61294198 0.058531001 0.599635 0.057872999 0.618999 0.053454999 0.54704702 0.070975997
		 0.56080002 0.071268998 0.55184698 0.055737998 0.57611501 0.057147 0.58185297 0.053006999
		 0.58817798 0.056692999 0.5 0.087995 0.5 0.072247997 0.51226199 0.058587 0.53744 0.056102
		 0.54461002 0.052623 0.65909499 0.047956999 0.64553899 0.033927001 0.62234902 0.049635001
		 0.64406002 0.048679002 0.62398303 0.054715998 0.61203402 0.033566002 0.61255002 0.053479001
		 0.59929401 0.053334001 0.59906101 0.048289001 0.61257601 0.048943002 0.58443803 0.049555
		 0.586721 0.053275999 0.579521 0.033991002 0.576904 0.049251001 0.57625902 0.053746998
		 0.54720998 0.050030001 0.55117702 0.053422999 0.539621 0.033642001 0.53998202 0.049915999
		 0.53630102 0.053576998 0.5 0.054480001 0.51104099 0.049835 0.5 0.034786001 0.5 0.051059999
		 0.5 0.062691003 0.89989197 0.087173 0.87577403 0.095444001 0.86936802 0.086859003
		 0.80032802 0.095444001 0.70764703 0.095441997 0.57667702 0.095444001 0.53833902 0.09172
		 0.57267702 0.020020001 0.5 0.020021001 0.66573501 0.0046600001 0.75510001 0.0046600001
		 0.85311198 0.0046600001 0.574251 0.0046600001 0.53712499 0.012341 1.25101101 0.56244099
		 1.22698498 0.74230403 1.13169301 0.536901 1.17667902 0.487858 1.066092014 0.38546401
		 1.15370297 0.37783799 1.15153599 0.23899999 1.20700204 0.178386 1.24518502 0.37296599
		 1.090247989 0.286964 1.83773196 0.42710301 1.73337495 0.395964 1.75793505 0.18114001
		 1.89406097 0.359752 1.95482099 0.425116 1.92900801 0.44645 1.84195304 0.604918 1.79946899
		 0.54391098 1.75415099 0.73690701 1.72864199 0.57042003 1.62153995 0.095844001 1.62366498
		 0.373743 1.63308299 0.88432002 1.62681103 0.62720001 1.49188602 0.36201099 1.483567
		 0.086875997 1.49932504 0.92577702 1.49389899 0.624376 1.36433196 0.361689 1.35629797
		 0.104549 1.35657597 0.61582202 1.33516204 0.87118602 0.41816401 0.402477 0.42012501
		 0.40774199 0.42343399 0.40669599 0.422326 0.40372401 0.48752001 0.41717699 0.48759601
		 0.413616 0.47158399 0.416904 0.47146201 0.42003301 0.487443 0.42073801 0.45583901
		 0.41599199 0.47170699 0.413775 0.456269 0.41297299 0.43931401 0.41373399 0.44074699
		 0.41090101 0.41681501 0.40878701 0.43788099 0.416567 0.48640701 0.39415199 0.485753
		 0.39005601 0.47282299 0.394234 0.47371501 0.39826599 0.48706001 0.398247 0.45843899
		 0.394227 0.47193101 0.39020199 0.45634401 0.38985699 0.444125 0.39450699 0.446336
		 0.39873299 0.46053299 0.398597 0.43215999 0.39488399 0.44191501 0.39028099 0.428794
		 0.39162001 0.42271701 0.396754 0.42768401 0.39919701 0.435525 0.39814901 0.41866699
		 0.39904201 0.42310101 0.400956 0.145107 0.54548597 0.138956 0.53963602 0.141269 0.54584402
		 0.16229101 0.70332903 0.160304 0.70493501 0.1548 0.729949 0.15871499 0.73119003 0.133175
		 0.60130101 0.135003 0.602413 0.135157 0.64290798 0.100942 0.58170003 0.099169001
		 0.64619899 0.14648201 0.67752999 0.147882 0.67623597 0.138082 0.64264101 0.120045
		 0.70196903 0.088468999 0.71973997 0.121241 0.70702702 0.103258 0.77963501 0.132375
		 0.76800299 0.42778701 0.2 0.46389401 0.19016901 0.35735601 0.75193202 0.357737 0.74006802
		 0.350036 0.73648399 0.346607 0.74692899 0.34776601 0.73228502 0.344598 0.73253 0.350916
		 0.733868 0.36046201 0.71175802 0.35334399 0.71371901 0.35684699 0.72742802 0.363819
		 0.72645301 0.35201299 0.73083299 0.357382 0.72955799 0.35033 0.729289 0.363906 0.72877401
		 0.34531999 0.73163801 0.48789901 0.44507399 0.48799101 0.43121901 0.455688 0.44226399
		 0.47347 0.444397 0.472523 0.43088701 0.45621201 0.429672 0.45540899 0.41901201;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.45570701 0.45445701 0.43394101 0.44790301
		 0.41683999 0.47305 0.44667599 0.47646499 0.439327 0.50374001 0.47657099 0.50467801
		 0.47856599 0.47953901 0.488381 0.457663 0.47452199 0.45675001 0.48964599 0.48163199
		 0.40196201 0.50121498 0.389927 0.53362101 0.43894601 0.526115 0.45188299 0.54695803
		 0.43757999 0.53402799 0.39888299 0.53810197 0.39828101 0.54334402 0.36498901 0.490078
		 0.34128699 0.526281 0.38874799 0.73224199 0.38756299 0.73411602 0.39009199 0.73504603
		 0.39196399 0.73192102 0.403135 0.73273599 0.39875501 0.738132 0.38118199 0.73910397
		 0.377195 0.73986399 0.37822399 0.74201101 0.38288701 0.740996 0.37437999 0.75312901
		 0.38286299 0.75161499 0.37156001 0.74203801 0.37156901 0.73971802 0.38690501 0.73839402
		 0.38460499 0.73717099 0.048446 0.38432401 0.032573 0.28877601 0 0.297681 0 0.405276
		 0.40640199 0.72400898 0.39876801 0.725079 0.40964001 0.73250598 0.40531999 0.74062097
		 0.389846 0.74826002 0.39616999 0.75713199 0.38726199 0.76073301 0.38997999 0.73053199
		 0.387519 0.72969198 0.393704 0.71979499 0.38541499 0.73121798 0.38788199 0.73182702
		 0.47641501 0.35123399 0.472736 0.33699101 0.48085701 0.36650601 0.44451699 0.36844
		 0.46157801 0.366492 0.455708 0.35218 0.434939 0.353838 0.449321 0.33918199 0.42435399
		 0.34189799 0.40462601 0.321789 0.44185799 0.32085001 0.46867001 0.318764 0.48460501
		 0.38213101 0.45280099 0.38186899 0.46861699 0.38149601 0.37122199 0.72822201 0.371268
		 0.72590399 0.376847 0.71002603 0.36846 0.70997697 0.37788901 0.72665697 0.377812
		 0.72908401 0.50041997 0.74145502 0.475492 0.72856599 0.48073399 0.73983902 0.50045198
		 0.75030398 0.50046802 0.75498801 0.482043 0.74631602 0.42085201 0.734308 0.43689299
		 0.73806298 0.43267199 0.726668 0.414635 0.72168702 0.44823599 0.71403903 0.42557299
		 0.70103902 0.45536599 0.73305303 0.40888399 0.70223999 0.40868199 0.68568701 0.41144001
		 0.676458 0.41062099 0.68089497 0.42650199 0.69656402 0.426929 0.69073802 0.44892499
		 0.70388103 0.44932899 0.70980698 0.40346301 0.710168 0.36414301 0.74152601 0.36571899
		 0.753133 0.376064 0.76109701 0.365594 0.75968403 0.36391601 0.738644 0.42076901 0.74333799
		 0.434692 0.74782503 0.450681 0.74189901 0.44791701 0.75340199 0.43630999 0.76838303
		 0.439735 0.77018702 0.500534 0.77605999 0.50050497 0.766554 0.47956401 0.76126403
		 0.482636 0.77474099 0.45936599 0.77507001 0.46089 0.75822699 0.481269 0.752132 0.50048298
		 0.75955802 0.388331 0.45616001 0.40579399 0.433512 0.41023499 0.42445201 0.43512699
		 0.436654 0.490426 0.50543499 0.48163301 0.53206599 0.48613501 0.51990199 0.357591
		 0.73707199 0.48351201 0.796978 0.50058699 0.79690999 0.50055498 0.783732 0.48476699
		 0.78428698 0.437511 0.77338398 0.44541699 0.78328902 0.459995 0.78360403 0.41125301
		 0.357995 0.39524001 0.34891999 0.373889 0.33620101 0.42647699 0.370689 0.40820301
		 0.374834 0.39252099 0.36810601 0.37426999 0.36168599 0.35420999 0.696069 0.36527401
		 0.69423002 0.432861 0.30263099 0.464362 0.30114201 0.39298901 0.68660998 0.39251399
		 0.67230898 0.39340499 0.66228497 0.393226 0.66591698 0.37547401 0.67633802 0.37564901
		 0.658939 0.42117199 0.38423601 0.43621099 0.382716 0.36368999 0.428754 0.33737701
		 0.45804 0.38510001 0.40205801 0.337143 0.53214997 0.333442 0.53595299 0.315189 0.48036399
		 0.310597 0.48589101 0.30643201 0.48839599 0.29927 0.429885 0.30357099 0.427118 0.32984099
		 0.41751599 0.30881801 0.42385301 0.37306899 0.77823299 0.37676001 0.77003998 0.362499
		 0.767205 0.356989 0.77393597 0.357086 0.75734001 0.352525 0.76387501 0.34619501 0.76659399
		 0.34139901 0.75585598 0.33195299 0.75475901 0.323221 0.74211299 0.33030799 0.74078602
		 0.33772001 0.74387902 0.34361401 0.75099099 0.42919299 0.823457 0.45707801 0.82467097
		 0.450744 0.81831002 0.42919099 0.81851399 0.44716799 0.79799199 0.432008 0.79786903
		 0.42902601 0.814116 0.45106 0.81415498 0.46232799 0.79811603 0.457048 0.814165 0.479058
		 0.81368202 0.48053101 0.825791 0.50063699 0.827039 0.50062603 0.81812203 0.48002401
		 0.81779999 0.39432701 0.39289701 0.39753401 0.38523901 0.382671 0.38354099 0.383555
		 0.394436 0.35690299 0.38240999 0.355955 0.408665 0.33062699 0.382588 0.34854001 0.353751
		 0.39484 0.397407 0.27296299 0.223483 0.25141799 0.205099 0.19845299 0.227778 0.222307
		 0.26679799 0.142077 0.25536999 0.164149 0.32181999 0.40538099 0.39893401 0.41359901
		 0.415411 0.43682501 0.425697 0.405725 0.39497599 0.33869499 0.77155399 0.35346699
		 0.78023303 0.375321 0.80286503 0.37101501 0.78702402 0.35545599 0.79823399 0.33531699
		 0.78517002 0.32338399 0.75818098 0.31372699 0.76696301 0.30202401 0.74766397 0.31444201
		 0.74451602 0.374313 0.30422801 0.341434 0.32150501 0.34496999 0.32408601 0.37719899
		 0.305998 0.38010901 0.30875701 0.347844 0.327106 0.323733 0.34756601 0.42887399 0.76446801
		 0.41516799 0.75676399 0.42085499 0.77521598 0.40589601 0.76734501 0.39333999 0.771218
		 0.39625701 0.779055 0.46207401 0.284215 0.42630801 0.28725001 0.42306101 0.28119999
		 0.42453101 0.28412199 0.461321 0.280527 0.46062899 0.27702501 0.34423 0.71993601
		 0.336353 0.71124601 0.34398699 0.70235801 0.398341 0.78768802 0.430839 0.78297502
		 0.39852399 0.79939598 0.38600001 0.82153398 0.40250799 0.82257098 0.40156001 0.818299
		 0.38309199 0.81813598 0.349471 0.68496799 0.36228499 0.68247402 0.360874 0.67286497
		 0.34400201 0.67563301 0.35521799 0.65198398;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.335446 0.66000801 0.37642699 0.64980102
		 0.35638499 0.64293897 0.35513401 0.64691103 0.37575501 0.653427 0.104535 0.26630801
		 0.127093 0.343739 0.069746003 0.27582201 0.090979002 0.36373901 0.295995 0.770235
		 0.33479699 0.79949403 0.29276901 0.675771 0.28609899 0.689592 0.28870699 0.69569302
		 0.29627499 0.679905 0.31552401 0.696244 0.299784 0.68416202 0.29253101 0.69904 0.31160599
		 0.70512199 0.302957 0.71302003 0.286695 0.71075702 0.29578599 0.72728002 0.283187
		 0.72452497 0.285786 0.75130397 0.278391 0.707807 0.27575499 0.72153801 0.27911901
		 0.72287703 0.2827 0.70818001 0.33108601 0.65053898 0.303552 0.66708702 0.30587101
		 0.67197299 0.33400401 0.65449101 0.30893701 0.67666698 0.323953 0.68729198 0.31609601
		 0.34404099 0.29229301 0.381569 0.29594901 0.38285699 0.32015601 0.345873 0.329999
		 0.80725598 0.33303899 0.80291301 0.29220501 0.77168399 0.28968599 0.77431399 0.27866501
		 0.753245 0.281739 0.75147802 0.40824699 0.39067599 0.47779101 0.71983302 0.476652
		 0.72322798 0.50039798 0.73539001 0.50038201 0.73118597 0 0.56145298 0.060633998 0.51732302
		 0 0.679461 0.049816001 0.63177299 0.27225 0.97314602 0.281551 0.99404198 0.35890701
		 0.99164301 0.34372601 0.976794 0.086443 0.880274 0.083412997 0.94666702 0.127186
		 0.973602 0.117984 0.92386001 0.159696 0.95395899 0.167375 0.988123 0 0.79959399 0.050096001
		 0.74484402 0.061273001 0.820333 0.024428001 0.89326298 0.47602499 0.68131602 0.50022101
		 0.69236201 0.43000099 0.981902 0.39680299 0.971793 0.43010199 0.95110798 0.46724099
		 0.96208799 0.39041799 0.25075099 0.44521099 0.25722399 0.413598 0.23813599 0.48642299
		 0.54782897 0.240474 0.299597 0.287058 0.23143999 0.47652501 0.64482498 0.47488099
		 0.60877502 0.48264799 0.56923902 0.483601 0.559672 0.47147 0.877464 0.50061798 0.88480401
		 0.45741799 0.26675799 0.46261701 0.92303503 0.50043398 0.93314499 0.294514 0.26421401
		 0.30740201 0.23298 0.41775 0.39431101 0.41423401 0.39712799 0.41400099 0.40123001
		 0.34467801 0.252545 0.35008901 0.23185401 0.137279 0.52257198 0.15142401 0.50762099
		 0.19382501 0.40687501 0.155892 0.442022 0.20477401 0.41344601 0.158842 0.52700597
		 0.125129 0.47340301 0.13333599 0.52455199 0.14044499 0.64232898 0.14988901 0.67584699
		 0.160759 0.70286602 0.154631 0.73475897 0.137936 0.60146803 0.206405 0.51741701 0.169644
		 0.58884799 0.207867 0.57951802 0.20229 0.62998003 0.176797 0.62767702 0.229377 0.44305101
		 0.32568401 0.54451799 0.29502901 0.49744701 0.26496401 0.63540101 0.296042 0.62210602
		 0.28307801 0.57566297 0.247936 0.58093297 0.235277 0.51416397 0.258111 0.51283503
		 0.28052801 0.31233999 0.23663799 0.34595501 0.252069 0.40001801 0.268363 0.391285
		 0.277004 0.449577 0.26447001 0.45681801 0.28814399 0.441138 0.27920899 0.386783 0.30731201
		 0.3409 0.40716499 0.26854199 0.413286 0.27297601 0.36877501 0.28492999 0.371263 0.29524699
		 0.22596499 0.99402797 0.214323 0.96511298 0.19527 0.93979001 0.24515299 0.94820601
		 0.297355 0.94558501 0.113775 0.84171599 0.137082 0.88637298 0.158411 0.91971397 0.27753001
		 0.793787 0.266543 0.80409598 0.316394 0.84325898 0.31997201 0.82458001 0.33109799
		 0.89102399 0.36053401 0.87375998 0.29245001 0.85732597 0.360412 0.813389 0.36342201
		 0.81770003 0.36653301 0.84344602 0.387685 0.88882703 0.40428999 0.85559499 0.42542401
		 0.86026698 0.41174701 0.89989501 0.372944 0.92619097 0.356626 0.912265 0.16535801
		 0.76871902 0.14543 0.821585 0.181558 0.81545597 0.162049 0.86638099 0.19673599 0.863258
		 0.23228399 0.86589801 0.205541 0.81415999 0.191434 0.76069099 0.236417 0.81644201
		 0.26721099 0.86531699 0.291085 0.90102798 0.25652301 0.90136802 0.21813799 0.90493
		 0.17764699 0.90224499 0.447494 0.63740498 0.44837999 0.66839498 0.42661101 0.65940303
		 0.42644 0.63135701 0.412379 0.65174699 0.390955 0.63375998 0.41223899 0.630768 0.39171001
		 0.60217297 0.41995201 0.606408 0.406865 0.61791801 0.33693999 0.29584599 0.338034
		 0.309385 0.21985801 0.76034302 0.23428699 0.76123297 0.252031 0.81103301 0.37215501
		 0.55513698 0.42021501 0.55687797 0.453051 0.55670702 0.425942 0.58377898 0.39925799
		 0.59334302 0.39362201 0.57640201 0.31152999 0.56076199 0.32427299 0.600483 0.355059
		 0.58352602 0.36025199 0.57310599 0.33453301 0.93638498 0.31570199 0.92126298 0.273285
		 0.92561501 0.230276 0.927257 0.20766 0.71609598 0.185516 0.71212602 0.159889 0.73558998
		 0.198696 0.92360902 0.26545399 0.68868202 0.27028999 0.66987598 0.29901499 0.64320898
		 0.276867 0.65201199 0.25664601 0.65456599 0.32509601 0.63034701 0.469964 0.522403
		 0.47411099 0.53635502 0.26490599 0.75647199 0.25957501 0.718952 0.244266 0.71748298
		 0.24907701 0.75918001 0.228901 0.715976 0.45660099 0.81825501 0.446271 0.60490501
		 0.45471001 0.57388598 0.28021401 0.50760502 0.249752 0.46646401 0.186202 0.67113298
		 0.20344301 0.66722202 0.22882301 0.67156702 0.46143299 0.564475 0.47722799 0.54928398
		 0.236525 0.63442802 0.37981299 0.62352198 0.35318801 0.62034899 0.394169 0.74424797
		 0.40125999 0.74972397 0.38444501 0.72827297 0.38257599 0.73025602 0.38620201 0.71596301
		 0.375159 0.6961 0.38801101 0.704175 0.39899099 0.71499699 0.390315 0.69542402 0.37567899
		 0.68427801 0.45938 0.40572301 0.472247 0.40572301 0.48750001 0.40572301 0.43227601
		 0.404953 0.43489799 0.40572801 0.443903 0.40572301 0.43395299 0.404513 0.437361 0.40452999;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.442826 0.40445799 0.45150399 0.40445799
		 0.46321899 0.40445799 0.473943 0.40445799 0.487643 0.40445799 0.46122399 0.74797302
		 0.46112099 0.74132299 0.401178 0.81431198 0.435287 0.77658099 0.30778101 0.72714502
		 0.31605899 0.71500498 0.321502 0.71141398 0.33115301 0.71762902 0.32665801 0.71977502
		 0.338714 0.73810899 0.318055 0.72781098 0.33921099 0.72472697 0.336739 0.693784 0.32702601
		 0.70394301 0.471062 0.51578099 0.48663601 0.513937 0.38458699 0.59118003 0.36039999
		 0.80930501 0.38154301 0.81375498 0.25067201 0.677764 0.30174899 0.38219601 0.335908
		 0.72591001 0.32857999 0.73194498 0.50062001 0.81419599 0.017607 0.25317001 0.01176
		 0.257269 0 0.26260599 0 0.20376401 0.0070420001 0.206064 0.012905 0.20830099 0.019184001
		 0.211153 0.025700999 0.213753 0.031442001 0.21611901 0.035587002 0.21922 0.038148001
		 0.224025 0.038148999 0.231409 0.035286002 0.238341 0.028345 0.244362 0.023685001
		 0.248862 0.084642999 0.223832 0.084642999 0.220312 0.084642999 0.239179 0.084642999
		 0.234357 0.084642999 0.206514 0.084642999 0.204799 0.084642999 0.230202 0.13485999
		 0.246567 0.084642999 0.248091 0.084642999 0.244 0.13485999 0.242834 0.13485999 0.238646
		 0.13486101 0.23417599 0.13485999 0.22846299 0.13485999 0.222645 0.13485999 0.21680599
		 0.13485999 0.21402501 0.084642999 0.217573 0.13485999 0.20845801 0.13485999 0.210675
		 0.084642999 0.21483301 0.084642999 0.21277501 0.13485999 0.20453601 0.13485999 0.20631
		 0.084642999 0.20823 0.13485999 0.249872 0.13485999 0.25121999 0.084642999 0.253934
		 0.084642999 0.25181699 0.13485999 0.203477 0.41591501 0.143452 0.42999199 0.142946
		 0.430051 0.13653 0.41732201 0.13956399 0.442781 0.133496 0.442821 0.145386 0.055668
		 0.16999499 0 0.17693999 0 0.181343 0.082938001 0.16999499 0 0.160225 0 0.154623 0
		 0.165326 0.036800999 0.16999499 0 0.173364 0.049610998 0.19647799 0.061303999 0.18532
		 0 0.19008499 0.024805 0.19328199 0.083935 0.19391 0.101655 0.181486 0.107037 0.15201201
		 0.089842997 0.128613 0.049321 0.14074101 0.058991 0.15044899 0.115138 0.16545799
		 0.124078 0.121674 0.159979 0.120888 0.19 0.102585 0.106986 0.102585 0.246685 0.121788
		 0.30972999 0.12316 0.341811 0.102585 0.096877001 0.12337 0.111481 0.13703001 0.133184
		 0.13302299 0.121228 0.146146 0.14870401 0.131936 0.16856299 0.137081 0.195591 0.13032199
		 0.25746301 0.13773599 0.27002099 0.133683 0.239996 0.130826 0.249957 0.146456 0.25808999
		 0.144255 0.28340101 0.145285 0.33844501 0.141638 0.32062599 0.136121 0.30157301 0.142122
		 0.34597701 0.14362399 0.35031 0.139008 0.29453301 0.135729 0.293742 0.143071 0.37022501
		 0.140488 0.368269 0.142636 0.38418201 0.144398 0.392683 0.139889 0.37793499 0.124715
		 0.354298 0.14206301 0.457344 0.14297301 0.45682499 0.14185899 0.47497001 0.13926999
		 0.493801 0.13835 0.456467 0.102585 0.042885002 0.12311 0 0.120312 0 0.139944 0 0.149517
		 0.072490998 0.110797 0.13082901 0.15538099 0.124889 0.162637 0.144742 0.169342 0
		 0.16869099 0.017108001 0.16999499 0 0.17079 0 0.16999499 0.47666901 0.142978 0.49316099
		 0.143786 0.47716099 0.144577 0.49366 0.145813 0.365805 0.16411901 0.34229901 0.169682
		 0.39031601 0.16901299 0.31302699 0.2 0.445842 0.169167 0.29429099 0.168532 0.31728199
		 0.164933 0.226592 0.2 0.25500801 0.16840699 0.263989 0.146731 0.27305701 0.1637 0.219394
		 0.169765 0.23984 0.16412599 0.22985099 0.14622299 0.17946699 0.17111699 0.198976
		 0.16539399 0.209354 0.146505 0.182339 0.147166 0.15387399 0.2 0.47450101 0.165406
		 0.41754699 0.162752 0.39631101 0.143122 0.219688 0.14347801 0.16189601 0.148976 0.169898
		 0.145237 0.143714 0.151361 0.39006901 0.144309 0.21749 0.137095 0.249219 0.020020001
		 0.148828 0.020020001 0.18243 0.038821001 0.26665801 0.038706999 0.19789299 0.046184
		 0.25741699 0.047150001 0.30960801 0.046928 0.33589101 0.020020001 0.126724 0.036653001
		 0.100108 0.020020001 0.100108 0.037588 0.12826601 0.054931 0.100108 0.054685999 0.14585
		 0.058761999 0.25754601 0.061838001 0.20927399 0.061167002 0.207571 0.068456002 0.26585099
		 0.069315001 0.189124 0.054407001 0.200332 0.086133003 0.29156199 0.085685 0.310527
		 0.071813002 0.30803901 0.061117999 0.349693 0.071415 0.37433699 0.085612997 0.33485299
		 0.060812999 0.38485801 0.069669999 0.37143901 0.071465999 0.37661099 0.057953998
		 0.35354099 0.060387 0.350849 0.056380998 0.345438 0.055624001 0.34070101 0.054935001
		 0.45056599 0.086474001 0.42107499 0.071243003 0.38705799 0.058531001 0.400365 0.057872999
		 0.381001 0.053454999 0.45295301 0.070975997 0.43920001 0.071268998 0.44815299 0.055737998
		 0.42388499 0.057147 0.418147 0.053006999 0.41182199 0.056692999 0.48773801 0.058587
		 0.46256 0.056102 0.45539001 0.052623 0.34090501 0.047956999 0.35446101 0.033927001
		 0.37765101 0.049635001 0.35594001 0.048679002 0.376017 0.054715998 0.38796601 0.033566002
		 0.38745001 0.053479001 0.40070599 0.053334001 0.40093899 0.048289001 0.38742399 0.048943002
		 0.415562 0.049555 0.413279 0.053275999 0.420479 0.033991002 0.423096 0.049251001
		 0.42374101 0.053746998 0.45278999 0.050030001 0.448823 0.053422999 0.460379 0.033642001
		 0.46001801 0.049915999 0.46369901 0.053576998 0.48895901 0.049835;
	setAttr ".uvst[0].uvsp[1750:1818]" 0.100108 0.087173 0.124226 0.095444001 0.130632
		 0.086859003 0.199672 0.095444001 0.292353 0.095441997 0.42332301 0.095444001 0.46166101
		 0.09172 0.42732301 0.020020001 0.33426499 0.0046600001 0.2449 0.0046600001 0.146888
		 0.0046600001 0.425749 0.0046600001 0.46287501 0.012341 -0.25101101 0.56244099 -0.22698499
		 0.74230403 -0.13169301 0.536901 -0.176679 0.487858 -0.066091999 0.38546401 -0.153703
		 0.37783799 -0.151536 0.23899999 -0.207002 0.178386 -0.245185 0.37296599 -0.090248004
		 0.286964 -0.83773202 0.42710301 -0.73337501 0.395964 -0.75793499 0.18114001 -0.89406103
		 0.359752 -0.95482099 0.425116 -0.92900801 0.44645 -0.84195298 0.604918 -0.79946899
		 0.54391098 -0.75415099 0.73690701 -0.72864199 0.57042003 -0.62154001 0.095844001
		 -0.62366498 0.373743 -0.63308299 0.88432002 -0.62681103 0.62720001 -0.49188599 0.36201099
		 -0.483567 0.086875997 -0.49932501 0.92577702 -0.49389899 0.624376 -0.36433199 0.361689
		 -0.356298 0.104549 -0.356576 0.61582202 -0.33516201 0.87118602 0.5 0.54382998 0.5
		 0.54382998 0.5 0.054480001 0.5 0.054480001 0.5 0.054480001 0.5 0.054480001 0.122275
		 0.981224 0.122273 0.97311997 0.16642299 0.97313601 0.16642 0.98124403 0.122276 0.96501499
		 0.122278 0.95680201 0.166419 0.95681399 0.166421 0.96502799 0.122277 0.98943698 0.16424499
		 0.98945898 0.14668199 0.91831398 0.15332399 0.93343002 0.14576399 0.94671202 0.13912299
		 0.93159503 0.15332399 0.93343002 0.14576399 0.94671202 0.13912299 0.93159503 0.14668199
		 0.91831398;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 1592 ".vt";
	setAttr ".vt[0:165]"  0.375236 75.42960358 2.86824989 0.436048 75.14279938 2.9535501
		 0.15636399 75.10510254 2.96381998 0.183328 75.41549683 2.81130004 0.49358901 75.068603516 2.96486998
		 0.17452601 75.042198181 2.99936008 0 75.071296692 2.94972992 0 75.4213028 2.79618001
		 0.3739 75.70130157 2.82282996 0.18654799 75.68830109 2.76543999 0.66209102 75.41739655 2.68734002
		 0.73318398 75.12789917 2.71606994 0.47572199 74.93119812 2.93332005 0.191964 74.92849731 3.0011799335
		 0 75.015602112 3.016289949 0.77204001 75.030601501 2.77849007 0 75.68710327 2.77346992
		 0 74.92510223 3.03083992 0 74.87010193 2.97926998 0 74.88529968 2.82985997 0 75.15139771 2.7098
		 0 75.83979797 2.55540991 0 76.49629974 1.29723001 0 76.0031967163 -1.38982999 0 73.85199738 -1.26602995
		 0 73.72049713 0.81611902 0 73.79730225 2.39497995 0 74.46179962 2.83300996 0 74.74510193 2.77468991
		 0 74.8628006 2.83638 0 74.87049866 3.0084500313 0 74.76519775 3.094810009 0 74.62889862 3.18758011
		 0 74.21150208 3.025650024 0 73.93099976 3.0030200481 0 73.70809937 3.06682992 0 73.4190979 3.19478011
		 0 73.3844986 3.22439003 0 73.12619781 3.10896993 0 72.88729858 2.97338009 0 72.853302 2.11552
		 0 72.92240143 1.56310999 0 72.98960114 0.78023601 0 72.9960022 0.28371099 0 71.90619659 0.194961
		 0 70.96530151 0.115654 0 73.41139984 -5.23734999 0 74.59279633 -4.9500699 0 75.74539948 -4.70874023
		 0 76.90899658 -4.5934701 0 78.052001953 -5.22039986 0 79.16809845 -5.095769882 0 80.26950073 -4.97272015
		 0 81.2440033 -4.4769702 0 81.73269653 -4.084959984 0 82.42230225 -3.12161994 0 82.8423996 -2.56490993
		 0 82.69129944 -1.025200009 0 82.31279755 0.450789 0 81.80970001 1.13894999 0 81.13880157 1.97562003
		 0 80.1568985 2.69033003 0 79.37550354 2.99107003 0 79.30760193 2.97435999 0 78.86990356 2.9955399
		 0 78.59069824 3.014529943 0 78.48110199 2.99164009 0 78.36769867 2.86971998 0 78.28130341 2.88645005
		 0 78.18060303 2.93425012 0 78.11990356 2.96852994 0 77.9272995 3.073519945 0 77.90170288 3.15596008
		 0 77.5684967 3.2799201 0 77.044197083 3.47618008 0 76.52780151 3.60459995 0 75.95010376 3.60735989
		 0 75.80380249 3.39088011 0.00067400001 75.81210327 3.08781004 0 75.81800079 2.95247006
		 0 75.81510162 2.81804991 0.344679 75.87650299 2.78348994 0.17562699 75.84799957 2.80392003
		 0.63727802 75.67250061 2.68113995 1.014070034 75.36630249 2.33562994 0.98921102 75.085800171 2.46848989
		 0.46057501 74.84980011 2.83946991 0.184064 74.86599731 2.93008995 0.759036 74.87740326 2.7269299
		 0.984694 74.97969818 2.53460002 0.227046 74.89129639 2.76486993 0.240613 75.17639923 2.63611007
		 0.28975499 75.85399628 2.44260001 0.26844099 76.50330353 1.18835998 0.19646201 75.94010162 -1.38982999
		 0.48616999 75.8470993 -1.38982999 0.90488601 75.71269989 -1.38982999 1.25581002 75.60009766 -1.38982999
		 1.56104004 75.50209808 -1.38982999 1.72537994 74.69010162 -1.31476998 1.64994001 74.19409943 -1.28434002
		 1.57133996 73.98130035 -1.26602995 1.29391003 73.95850372 -1.26602995 1.041700006 73.93769836 -1.26602995
		 0.78566998 73.91660309 -1.26602995 0.41587001 73.88619995 -1.26602995 0.22231799 73.87030029 -1.26602995
		 0.233505 73.71769714 0.75263298 0.190047 73.79160309 2.29249001 0.218401 74.44670105 2.76746988
		 0.215849 74.7492981 2.71801996 0.22172999 74.86090088 2.79315996 0.255016 74.86910248 2.96918011
		 0.26654899 74.76869965 3.054909945 0.26207 74.5931015 3.10953999 0.230694 74.18810272 2.97615004
		 0.25012401 73.92169952 2.93624997 0.32455599 73.68180084 2.94103003 0.36976701 73.3864975 3.083179951
		 0.39356399 73.35769653 3.14673996 0.41782999 73.087402344 2.99966002 0.426002 72.87799835 2.86619997
		 0.55832201 72.92140198 2.043119907 0.69064099 73.03679657 1.57499003 0.87790501 73.17880249 0.78268403
		 1.094480038 73.29509735 -0.020865999 0.93515301 72.16829681 -0.104672 0.964661 71.21559906 -0.232557
		 1.99015999 71.98210144 -1.21054006 2.5299499 72.42469788 -2.18839002 2.38830996 72.94930267 -3.6405201
		 1.43306994 73.23670197 -4.67837 1.45634997 74.37480164 -4.42730999 1.45972002 75.520401 -4.24842978
		 1.46342003 76.77780151 -4.24341011 1.36670995 78.0040969849 -4.95812988 1.25085998 79.093002319 -4.90553999
		 1.13022995 80.13569641 -4.8513298 0.99334699 81.16269684 -4.36853981 0.95594698 81.69120026 -3.98500991
		 0.83475298 82.30149841 -3.12335992 0.88438499 82.65570068 -2.45159006 0.80189002 82.52130127 -1.037999988
		 0.70669901 82.13040161 0.31028301 0.74365801 81.66480255 1.026679993 0.75269002 81.060699463 1.91714001
		 0.69717002 80.12670135 2.61152005 0.39997199 79.37580109 2.97526002 0.369542 79.30729675 2.95730996
		 0.25867301 78.89440155 2.9844799 0.194272 78.60669708 3.015810013 0.170765 78.48760223 2.99706006
		 0.14343899 78.35630035 2.83154011 0.156581 78.26719666 2.84787011 0.16576301 78.17240143 2.88369012
		 0.183074 78.10350037 2.9049499 0.212685 77.89440155 2.98368001 0.231702 77.87290192 3.044470072
		 0.244758 77.51129913 3.19739008 0.26279199 77.013000488 3.37438011 0.26732999 76.53790283 3.50216007
		 0.225292 76.042999268 3.52074003 0.197934 75.87640381 3.37561011 0.15727501 75.87709808 3.077480078
		 0.15583199 75.87129974 2.92304993 0.320503 75.92350006 2.86078;
	setAttr ".vt[166:331]" 0.60119098 75.90930176 2.67148995 1.05708003 75.61910248 2.24793005
		 1.34827995 75.207901 1.92531002 1.15214002 74.98179626 2.22315001 0.45785099 74.8839035 2.67717004
		 0.68403703 74.83059692 2.59152007 0.97554803 74.84739685 2.51410007 1.13627994 74.90899658 2.30890989
		 0.498842 75.188797 2.54725003 0.57340002 75.89409637 2.32743001 0.53688198 76.51039886 1.079489946
		 1.021540046 76.40080261 0.82721901 1.25557995 76.26170349 0.68159199 1.48961997 76.12270355 0.53596503
		 1.67207003 74.9858017 0.352709 1.59967005 74.1937027 0.30357301 1.53977001 73.88510132 0.31126699
		 1.35857999 73.8105011 0.38385999 1.17738998 73.7358017 0.45645201 0.97371 73.72090149 0.52596802
		 0.46700901 73.71479797 0.68914998 0.38009399 73.78579712 2.19001007 0.433458 74.44730377 2.66539001
		 0.43864799 74.75150299 2.65033007 0.45789099 74.85160065 2.7449801 0.49542701 74.84970093 2.8931601
		 0.54560798 74.74359894 2.96676993 0.54847902 74.53859711 2.97632003 0.44708699 74.2141037 2.82181001
		 0.48364601 73.91840363 2.76305008 0.63250798 73.65370178 2.76892996 0.70507997 73.31159973 2.77800012
		 0.75172698 73.27610016 2.82984996 0.75719202 73.075897217 2.76356006 0.735847 72.93389893 2.72478008
		 1.12557006 73.054100037 2.071810007 1.32479 73.1835022 1.67196 1.73336995 73.47059631 0.842668
		 2.0035500526 73.68859863 0.063689999 2.063519955 73.88529968 -0.88731402 1.94791996 72.87419891 -1.05569005
		 2.51100993 73.49320221 -2.17237997 2.31616998 73.97769928 -3.39253998 2.40697002 75.045501709 -3.2390399
		 2.53799009 76.24649811 -3.39569998 2.6050601 77.16519928 -3.56908011 2.23026991 78.060096741 -4.30149984
		 2.25226998 79.049102783 -4.43591976 2.082570076 80.062103271 -4.38718987 1.86230004 81.079399109 -4.063819885
		 1.60776997 81.65039825 -3.67718005 1.45785999 82.14450073 -3.010449886 1.60818005 82.38289642 -2.32792997
		 1.65206003 82.21430206 -1.0064599514 1.69607997 81.8062973 0.156617 1.65366006 81.39369965 0.929793
		 1.57922006 80.79789734 1.69175994 1.46537995 80.010002136 2.34250998 0.804537 79.37560272 2.91306996
		 0.74389398 79.30729675 2.9036901 0.63658202 78.90380096 2.93841004 0.57204199 78.61199951 2.9876101
		 0.43851799 78.47899628 2.96469998 0.306759 78.332901 2.7992301 0.26315001 78.24680328 2.80076003
		 0.24662299 78.14910126 2.80382991 0.293392 78.068901062 2.78444004 0.30470401 77.83000183 2.84255004
		 0.34116399 77.7806015 2.8817699 0.38537699 77.40019989 2.99775004 0.436003 76.92269897 3.09017992
		 0.462612 76.56569672 3.21212006 0.449287 76.24949646 3.25610995 0.406625 76.053703308 3.26138997
		 0.29791701 75.98220062 3.080529928 0.62144703 75.94460297 2.70860004 1.082069993 75.896698 2.10127997
		 1.45235002 75.54509735 1.69639003 1.52682996 74.83889771 1.76839006 1.36801004 74.6917038 1.98563004
		 0.69403899 74.87689972 2.47642994 0.90896499 74.8082962 2.40107012 1.12474 74.81210327 2.30350995
		 1.28603995 74.70950317 2.075769901 0.753708 75.1765976 2.32413006 0.97684997 75.91120148 1.92606997
		 1.25165999 75.86509705 1.60856998 1.42833996 75.78520203 1.3075 1.52005994 74.91100311 1.11899996
		 1.41969001 74.26370239 1.12026 1.29253995 74.10600281 1.39958 1.15644002 74.017303467 1.52333999
		 0.97653502 73.91539764 1.67929995 0.82356501 73.86589813 1.80771995 0.73053801 74.47550201 2.40460992
		 0.71657699 74.73470306 2.48382998 0.70261598 74.84200287 2.57853007 0.75060898 74.84880066 2.69640994
		 0.80772698 74.74919891 2.73382998 0.83061498 74.49849701 2.68789005 0.82955998 74.19120026 2.44133997
		 0.91650897 73.78510284 2.32631993 1.052549958 73.4029007 2.13053012 1.10824001 73.37439728 2.12428999
		 1.14391994 73.21420288 2.091850042 1.36986995 73.33390045 1.72122002 1.67701006 73.71029663 1.31131005
		 2.26047993 73.99359894 -0.67592502 2.11846995 74.2193985 0.155828 1.94971001 74.16179657 0.59191197
		 2.58857989 74.51750183 -2.15310001 2.7486701 75.38770294 -2.46039009 2.79951 78.012298584 -3.56519008
		 2.8136301 78.079696655 -3.58578992 2.73225999 79.035202026 -3.73702002 2.6777401 79.97619629 -3.78833008
		 2.56432009 80.9516983 -3.57715011 2.24122 81.56719971 -3.23481011 1.91060996 81.95880127 -2.92522001
		 2.2471199 81.96579742 -2.21456003 2.30611992 81.79509735 -1.034839988 2.20424008 81.46260071 -0.051805999
		 2.076469898 81.068199158 0.73280799 1.95439005 80.540802 1.48153996 1.87355995 79.8839035 2.045789957
		 1.22241998 79.37590027 2.7700901 1.20090997 79.30770111 2.75838995 1.11233997 78.94560242 2.76429009
		 1.046040058 78.63059998 2.84313011 0.65118098 78.42389679 2.86816001 0.33792001 78.30020142 2.69711995
		 0.30090901 78.21499634 2.71518993 0.31897199 78.021003723 2.60341001 0.4095 77.71829987 2.70258999
		 0.45330101 77.6740036 2.75311995 0.496048 77.29119873 2.84744 0.51073903 76.93379974 2.87264991
		 0.59758902 76.64279938 2.88609004 0.73047698 76.31980133 2.94049001 0.58290303 76.11239624 3.031650066
		 1.090129972 75.96630096 2.10930991 1.53325999 75.8572998 1.46535003 1.63694 75.089401245 1.44509006
		 1.50714004 74.58119965 1.72029996 1.33560002 74.63839722 1.97393 0.89915198 74.84719849 2.33052993
		 1.064290047 74.79589844 2.22340989 1.24826002 74.73069763 2.085350037 1.24997997 74.6875 2.059560061
		 0.99014199 75.13880157 2.17406988 1.18864 75.054603577 1.99467003 1.29242003 74.83209991 1.84202003
		 1.27749002 74.65399933 1.78457999 1.17030001 74.53440094 1.87713003 1.068500042 74.4733963 2.019850016
		 0.93671203 74.47619629 2.18513989 0.91796201 74.71769714 2.27813005 0.89921099 74.80729675 2.37112999
		 0.95818102 74.82309723 2.43959999 1.01157999 74.73349762 2.46138 1.079139948 74.47039795 2.36219001
		 1.095770001 74.21489716 2.12254 1.20755005 73.87529755 1.94497001 1.30727994 73.5279007 1.76507998
		 1.35280001 73.49849701 1.74449003 1.64008999 73.77549744 1.42554998;
	setAttr ".vt[332:497]" 1.87435997 74.14820099 0.86921799 2.29362011 74.40550232 -0.43122199
		 2.61670995 75.22329712 -1.90346003 2.79606009 75.46630096 -1.88338006 2.049469948 74.7881012 0.53640699
		 2.15172005 74.84380341 0.220709 2.74308991 75.37879944 -2.35027003 3.0035998821 75.58969879 -2.43159008
		 3.43286991 76.22270203 -2.92248988 3.59352994 76.92680359 -3.0880301 3.74316001 77.63829803 -3.11521006
		 3.11356997 79.037101746 -3.040719986 3.037450075 78.51809692 -3.082789898 3.088419914 79.82949829 -2.87438011
		 2.92554998 80.90200043 -2.46649003 2.67729998 81.50930023 -2.26781011 2.69116998 81.37799835 -1.16130996
		 2.54273009 81.099098206 -0.26050901 2.42822003 80.71620178 0.5564 2.30799007 80.2256012 1.21229994
		 1.73343003 79.3769989 2.39888 2.21602011 79.71060181 1.66250002 1.71272004 79.30729675 2.39134002
		 1.59043002 78.99210358 2.49808002 1.49571002 78.72260284 2.56365991 1.073909998 78.50849915 2.74885988
		 0.71375698 78.37760162 2.68651009 0.37959501 78.24770355 2.57736993 0.319938 78.17469788 2.56955004
		 0.53542501 77.7723999 2.47265005 0.54990202 77.55509949 2.54991007 0.59841698 77.520401 2.61101007
		 0.590343 77.17410278 2.66300988 0.60571498 76.89659882 2.67656994 0.64582998 76.72250366 2.67396998
		 0.74087697 76.59159851 2.52436996 0.76075703 76.16449738 2.52733994 1.20518994 76.13899994 2.014460087
		 1.58784997 75.90319824 1.47704005 1.77342999 75.31639862 1.17725003 1.64179003 74.61060333 1.40375996
		 1.43721998 74.42230225 1.78111005 1.26445997 74.60739899 2.002229929 1.061949968 74.84380341 2.17088008
		 1.21506 74.75060272 2.058700085 1.22623003 74.7154007 2.0729599 1.19072998 74.70600128 2.083019972
		 1.17838001 74.79570007 1.99255002 1.19992995 74.71779633 1.95530999 1.16301 74.68170166 1.98049998
		 1.061560035 74.70770264 2.1126101 1.054620028 74.7901001 2.20535994 1.091500044 74.79389954 2.22195005
		 1.12133002 74.7263031 2.22113991 1.18815005 74.56780243 2.1777401 1.28439999 74.31459808 1.9418
		 1.45323002 74.053001404 1.69403994 1.58494997 73.80349731 1.45444 1.80746996 74.11129761 1.07980001
		 1.93542004 74.68779755 0.90407598 2.27857995 74.86489868 -0.083784997 2.57305002 75.47239685 -0.83796901
		 3.02361989 75.59780121 -2.26234007 2.074340105 75.46040344 0.63132501 2.16162992 75.46710205 0.39475501
		 3.47796988 76.21230316 -2.87355995 3.10587001 75.64830017 -2.39811993 3.65671992 76.91249847 -3.038800001
		 3.080290079 78.45819855 -3.067670107 3.78649998 77.6160965 -3.073879957 3.69516993 78.23370361 -2.92810011
		 3.065910101 78.51190186 -2.98406005 3.23857999 79.75099945 -1.82416999 3.2486999 78.87419891 -1.98563004
		 2.98676991 80.76860046 -1.40871 2.87980008 80.56770325 -0.499897 2.75234008 80.2594986 0.27180299
		 2.60235 79.88980103 0.85461098 1.94981003 79.37110138 2.14304996 2.48674989 79.52059937 1.24617004
		 2.18548989 79.31950378 1.83650994 1.93656003 79.30349731 2.13273001 1.91530001 79.026199341 2.15228009
		 1.89538002 78.80940247 2.1868 1.46241999 78.61139679 2.53447008 1.092890024 78.48870087 2.55505991
		 0.74409902 78.39320374 2.50723004 0.48490599 78.28079987 2.4381299 0.38699499 78.16950226 2.40746999
		 0.45033801 78.031898499 2.39475012 0.57150298 77.86630249 2.36939001 0.77067602 77.57510376 2.35327005
		 0.74195802 77.41699982 2.40144992 0.75619102 77.35919952 2.42778993 0.77764302 76.93599701 2.41506004
		 0.77409399 76.66349792 2.44818997 0.774405 76.48989868 2.40321994 1.71714997 76.00060272217 1.42260003
		 1.29155004 76.33940125 1.89681005 1.83836997 75.36170197 1.14561999 1.76187003 74.61579895 1.12743998
		 1.60635996 74.28540039 1.44599998 1.19695997 74.74680328 2.062190056 1.17999995 74.74140167 2.089220047
		 1.17278004 74.75559998 2.089099884 1.76241004 74.13829803 1.11807001 1.84192002 74.61540222 1.09841001
		 1.96764004 75.38629913 0.91929698 2.39972997 75.45770264 -0.13644101 2.9210999 76.17819977 -1.99144995
		 2.72014999 76.24649811 -0.96475101 3.47642994 76.21520233 -2.80120993 1.83864999 76.13279724 1.26501
		 2.08397007 76.11990356 0.83159798 3.66513991 76.90029907 -2.97347999 3.10512996 78.4559021 -2.99778008
		 3.78502011 77.60510254 -3.012160063 3.73196006 78.21060181 -2.90129995 3.73941994 78.21920013 -2.8394599
		 3.28362989 78.051597595 -1.98238003 3.17303991 79.60649872 -0.90495503 3.20795989 78.74340057 -1.12663996
		 3.067980051 79.44920349 -0.32805899 2.92288995 79.2016983 0.22926299 2.80478001 78.99160004 0.60510403
		 2.40058994 79.19650269 1.47742999 2.16602993 79.25430298 1.83306003 2.15254998 79.0054016113 1.86647999
		 2.10676003 78.8125 1.92078996 1.81342006 78.68800354 2.21627998 1.42624998 78.5503006 2.45424008
		 1.054319978 78.57990265 2.37396002 0.81926399 78.49649811 2.33402991 0.57522303 78.33979797 2.31340003
		 0.435895 78.17980194 2.29233003 0.473279 78.064102173 2.28012991 0.61275101 77.94650269 2.2762301
		 0.78336602 77.66840363 2.29992008 1.025539994 77.42510223 2.23470998 1.01493001 77.2492981 2.2485199
		 1.027799964 77.19999695 2.25356007 0.870897 76.83170319 2.24158001 0.81191802 76.61199951 2.35991001
		 1.33923995 76.49340057 1.87194002 2.40614009 76.22450256 0.109386 2.86118007 76.72779846 -1.077859998
		 3.037499905 76.76869965 -2.084199905 2.20447993 76.54789734 1.24635994 1.82880998 76.48950195 1.58825004
		 3.16164994 77.415802 -2.032840014 3.22440004 78.0086975098 -1.12436998 3.17488003 78.70130157 -0.68949801
		 3.060899973 78.62349701 -0.189486 2.92262006 78.5286026 0.33508599 2.66655993 78.79620361 0.84049898
		 2.3719399 79.15229797 1.48475003 2.29327989 78.89550018 1.59220004 2.23225999 78.7315979 1.68717003
		 2.038389921 78.66439819 1.96583998 1.70668006 78.6115036 2.20411992 1.31230998 78.61969757 2.32809997
		 0.99479902 78.71659851 2.23852992 0.80956 78.55549622 2.24060011 0.65458202 78.35399628 2.21395993
		 0.51833099 78.20050049 2.21048999 0.61809099 78.12799835 2.20424008;
	setAttr ".vt[498:663]" 0.71321398 78.043197632 2.20235991 0.80534297 77.77649689 2.23790002
		 1.030279994 77.51879883 2.20965004 1.28656006 77.35679626 2.096139908 1.31930995 77.11540222 2.040709972
		 1.31575 77.064796448 2.080529928 1.34089005 76.77050018 1.93552005 2.56522012 76.67050171 0.544613
		 2.70373011 76.73840332 -0.200828 3.11457992 77.26339722 -1.14850998 1.81105006 76.79799652 1.69403994
		 2.31191993 76.85079956 1.38169003 3.1881001 78.0016021729 -0.67189199 3.08968997 77.98509979 -0.215268
		 2.94752002 77.98130035 0.34122601 2.73934007 78.46499634 0.67494202 2.61139989 78.7397995 0.87599099
		 2.43659997 78.6115036 1.20849001 2.33342004 78.53440094 1.41854 2.13428998 78.61579895 1.78713
		 1.90851998 78.59159851 2.017050028 1.56043005 78.62830353 2.17751002 1.21975005 78.75469971 2.22129011
		 1.035169959 78.62139893 2.23616004 0.89802003 78.51069641 2.21472001 0.78173 78.36519623 2.15717006
		 0.70651799 78.23290253 2.15287995 0.73859 78.15180206 2.13837004 0.80816001 78.12159729 2.14477992
		 0.85467601 77.93599701 2.19173002 1.040789962 77.63410187 2.17545009 1.25582004 77.47149658 2.11108994
		 1.60400999 77.39569855 1.91602004 1.69196999 77.16609955 1.82261002 1.75551999 77.10500336 1.83609998
		 2.6271801 76.95549774 0.86102498 2.83216 76.97899628 0.29606399 3.052570105 77.30950165 -0.51751202
		 2.28495002 77.23760223 1.47273004 2.98910999 77.35620117 0.087874003 2.75337005 77.99069977 0.68403202
		 2.8884201 77.5141983 0.472267 2.66458011 78.44339752 0.70453799 2.47475004 78.35810089 1.061609983
		 2.3392899 78.32910156 1.30711997 2.20002007 78.48480225 1.62645996 2.014110088 78.53839874 1.88434994
		 1.74473 78.5727005 2.054500103 1.45551002 78.72489929 2.12724996 1.23070002 78.66190338 2.23790002
		 0.91007602 78.49980164 2.18314004 1.038579941 78.59729767 2.19861007 0.79688102 78.34449768 2.12592006
		 0.71895498 78.22989655 2.13386011 0.74764901 78.15540314 2.11820006 0.82045197 78.11910248 2.11677003
		 0.87667 78.072601318 2.17733002 1.054049969 77.83329773 2.16180992 1.23838997 77.59660339 2.10740995
		 1.53303003 77.52020264 1.96992004 2.21592999 77.29620361 1.45916998 1.94230998 77.50779724 1.68955004
		 2.48161006 77.33699799 1.22133994 2.76364994 77.22499847 0.65293998 2.6744101 77.99189758 0.71534699
		 2.71185994 77.74909973 0.79865301 2.45690989 78.074203491 1.070140004 2.30033994 78.10919952 1.31936002
		 2.21039009 78.32029724 1.52142 2.081660032 78.45140076 1.76059997 1.86654997 78.50920105 1.95068002
		 1.62374997 78.57779694 2.065720081 1.39661002 78.63690186 2.18002009 1.23357999 78.63860321 2.20044994
		 1.064010024 78.40419769 2.30879998 0.93861598 78.36380005 2.28421998 0.85031801 78.30740356 2.2304399
		 0.823026 78.22419739 2.20544004 0.886338 78.073303223 2.14519 1.05795002 78.0095977783 2.17793989
		 1.22575998 77.80740356 2.12170005 1.47639 77.65209961 2.003360033 1.81238997 77.64070129 1.80037999
		 2.1310401 77.6187973 1.51561999 2.3733201 77.38790131 1.25323999 2.59259009 77.50759888 1.025550008
		 2.6140101 77.76670074 0.84221298 2.36525989 77.86789703 1.19541001 2.17161012 78.1855011 1.51703
		 2.20518994 77.94249725 1.42523003 2.10783005 78.34220123 1.66603005 1.97196996 78.43019867 1.83624995
		 1.76145995 78.47879791 1.97237003 1.55315006 78.51049805 2.091249943 1.39247 78.60720062 2.14412999
		 1.22713995 78.41059875 2.29566002 1.073230028 78.2118988 2.26473999 0.931696 78.22049713 2.24796009
		 1.063680053 78.017501831 2.13901997 1.21407998 78.0026016235 2.1580801 1.41983998 77.85240173 2.052229881
		 1.71492004 77.78040314 1.87618995 1.99541998 77.75959778 1.65941 2.51325011 77.54389954 1.04076004
		 2.25082994 77.7335968 1.36882997 2.072530031 78.040000916 1.59459996 2.065069914 78.25810242 1.66206002
		 2.10210991 77.84420013 1.55054998 2.030329943 78.36049652 1.75 1.88531995 78.3864975 1.86601996
		 1.65128005 78.40149689 1.99070001 1.53628004 78.49569702 2.060869932 1.38502002 78.41280365 2.24380994
		 1.22475004 78.21219635 2.25785995 1.21485996 78.0040969849 2.13369012 1.37713003 78.012802124 2.10798001
		 1.61638999 77.95749664 1.95624006 1.88392997 77.9048996 1.76322997 1.98014998 77.97440338 1.68239999
		 1.94418001 78.16000366 1.73203003 1.97305 78.31939697 1.76838005 1.76537001 78.2743988 1.90058994
		 1.64058006 78.39589691 1.95743001 1.50598001 78.36979675 2.16381001 1.38127995 78.22109985 2.20112991
		 1.37875998 78.010902405 2.072129965 1.54770005 78.079399109 2.025470018 1.77523994 78.071098328 1.85027003
		 1.86633003 78.12359619 1.78376997 1.81631005 78.24659729 1.84307003 1.74398994 78.27610016 1.87978005
		 1.59011996 78.34980011 2.071630001 1.51161003 78.23789978 2.12436008 1.54077995 78.075401306 2.0045700073
		 1.71708 78.21320343 1.8836 1.79115999 78.25009918 1.82919002 1.77465999 78.25990295 1.84017003
		 1.63557005 78.26139832 2.01402998 1.70247996 78.21050262 1.87158 0 74.22029877 2.51242995
		 0 74.75360107 2.56876993 0.42124 74.77030182 2.43788004 0.42404899 74.20839691 2.39037991
		 0 75.020500183 2.50329995 0.225796 75.016296387 2.42202997 1.01067996 74.72129822 1.90509999
		 1.034809947 74.24970245 1.81924999 0.41490999 75.014503479 2.41042995 0.0089339996 75.13580322 2.40003991
		 0.218429 75.14589691 2.3650701 0.60188299 75.016799927 2.22161007 0.853845 74.94589996 1.95519996
		 1.40119004 74.73410034 0.97445899 1.37932003 74.19560242 1.092120051 0.239078 75.13839722 2.35776997
		 0.40538701 75.14420319 2.31546998 0.017611001 75.16929626 2.3410399 0.204895 75.17829895 2.32905006
		 0.226511 75.14369965 2.32753992 0 75.14289856 2.35395002 0.89961201 75.075897217 1.86346996
		 1.18131006 75.083099365 1.54646003 0.63842499 75.17489624 2.13975 0.82102901 75.15570068 1.94309998
		 1.35930002 74.88069916 1.056319952 1.55800998 74.82879639 0.111967;
	setAttr ".vt[664:829]" 1.58543003 74.3065033 0.183889 0.51777798 75.15910339 2.23459005
		 0.38907501 75.17870331 2.27076006 0.242439 75.16739655 2.32061005 0.41082001 75.15789795 2.26391006
		 0.023584001 75.17299652 2.31120992 0.197293 75.17489624 2.29582 0.815988 75.092102051 1.88552999
		 0.81691003 75.10089874 1.87862003 1.032310009 75.10109711 1.48717999 0.783351 75.15509796 1.87276006
		 0.62708497 75.17620087 2.11948991 0.60630602 75.15609741 2.12422991 1.53100002 74.90180206 0.38951501
		 1.75142002 74.93540192 -1.015079975 0.42187601 75.14610291 2.3055501 0.60073501 75.15149689 2.16544008
		 0.38045999 75.17559814 2.22735 0.241497 75.16529846 2.28920007 0 75.030799866 2.38926005
		 0.216272 75.04699707 2.30305004 1.37638998 75.048301697 0.95623899 0.79455799 74.95670319 1.94722998
		 0.81663603 75.10320282 1.78386998 1.13786995 75.052696228 0.88559097 0.59257901 75.14050293 2.098989964
		 0.73009199 75.13510132 1.88321996 1.48486996 75.057502747 0.48444 1.64797997 75.22769928 -0.26302499
		 1.74749005 75.33229828 -0.97840202 0.42373601 75.18409729 2.24742007 0.514763 75.19909668 2.18864012
		 0.58348101 75.18669891 2.13037992 0.302147 75.04070282 2.2162199 0.395197 75.030502319 2.16645002
		 0 74.84919739 2.2841599 0.28961399 74.89649963 2.17034006 0.98041898 74.98110199 1.46866
		 1.14137995 74.92340088 0.88189501 1.23589003 75.062599182 0.42486101 1.38100004 75.063796997 0.39005199
		 0.63673198 75.036903381 2.095789909 0.57744598 75.030601501 2.14499998 1.35511005 74.95909882 0.329353
		 1.47917998 75.29180145 -0.27617401 1.64520001 75.40260315 -1.035480022 0.422741 75.18599701 2.19786
		 0.50550503 75.18640137 2.14617991 0.56404799 75.18029785 2.094320059 0 74.16369629 1.95355999
		 0.29217499 74.22160339 1.82973003 0.96841002 74.84570313 1.22779 0.66085601 74.91940308 1.99448001
		 1.23520994 75.021896362 0.43389401 1.19366002 74.88400269 0.37397999 1.35985005 75.22859955 -0.29822499
		 1.52714002 75.34420013 -1.057109952 0.68454403 74.17250061 1.25373006 0.95052999 74.12670135 0.54158902
		 1.22451997 74.40450287 -0.36490199 0.00065100001 75.81369781 2.47488999 0.52634799 75.93640137 2.32821012
		 0 75.36740112 2.53583002 0.36530101 75.29589844 2.49802995 0.69375098 75.35790253 2.2221601
		 0.176479 75.22810364 2.57068992 1.025560021 75.93499756 1.80094004 0.93178701 75.4068985 1.99240005
		 0.54890198 75.25969696 2.37318993 0.340278 74.93170166 2.4551301 0 75.24669647 2.58714008
		 1.11887002 75.40940094 1.69854999 0.83360898 75.29879761 2.12480998 0.64464998 74.93560028 2.24562001
		 0.52530003 74.92970276 2.35310006 0.40493801 74.92620087 2.43321991 0.36356899 75.0010986328 2.42828989
		 0.18953601 74.93170166 2.53108001 0 74.94750214 2.56555009 1.31912994 75.95580292 1.26039004
		 1.25565004 75.43689728 1.43628001 1.060850024 75.33920288 1.85874999 0.87880898 74.97309875 2.0011599064
		 0.79871303 74.94999695 2.11416006 0.69329202 74.94889832 2.19743991 0.65741998 74.96759796 2.20857
		 0.483468 74.94190216 2.30599999 0.62910998 74.97709656 2.17595005 0.33584201 74.93170166 2.42095995
		 0.333976 75.013999939 2.34596992 0.18628401 74.93170166 2.50250006 0.033975001 74.93170166 2.55955005
		 1.32581997 75.45749664 1.18292999 1.21679997 75.34290314 1.56224 1.099480033 75.016799927 1.71917999
		 0.92855501 74.99310303 1.95430005 0.898471 75.014900208 1.98239994 0.84945399 75.0099029541 1.97771001
		 0.74122399 74.96640015 2.08871007 0.37769601 74.94080353 2.37863994 0.64259601 75.16790009 2.10165
		 0.18555 74.96530151 2.45173001 0.031438001 74.93170166 2.52045989 0 74.94539642 2.51918006
		 1.49571002 75.95439911 0.66192502 1.38390994 75.46880341 0.86980098 1.30423999 75.34889984 1.32744002
		 1.24083996 75.048599243 1.46253002 1.15558004 75.050003052 1.63269997 1.079370022 75.062301636 1.66469002
		 0.91651702 75.007598877 1.80554998 0.73172599 75.34290314 1.89488006 0.210675 75.48249817 2.25387001
		 0.021734999 74.95500183 2.47947001 0 75.14009857 2.40569997 1.48857999 75.36489868 0.58258599
		 1.38631999 75.3655014 1.034540057 1.28961003 75.061401367 1.21709001 1.25571001 75.051696777 1.40252995
		 1.19701004 75.046897888 1.43197 1.0040299892 75.051200867 1.65283 0.905904 75.18029785 1.72674
		 0.36923999 76.047996521 1.55702996 0 75.57520294 2.27501011 1.46700001 75.082000732 0.65033299
		 1.41518998 75.092597961 0.82116097 1.36956 75.086601257 0.908544 1.33456004 75.088699341 1.12501001
		 1.24450004 75.064002991 1.16457999 1.059020042 75.052101135 1.28381002 1.13824999 75.059196472 1.41513002
		 1.03836 75.035003662 1.46801996 1.017289996 75.41619873 0.92522901 0.99533498 75.14900208 1.30146003
		 0.49252301 76.15789795 0.76486599 0 76.14499664 1.73676002 1.19341004 75.057403564 0.59552097
		 1.17633998 75.078903198 0.70930898 1.33543003 75.083396912 0.83965099 1.30579996 75.08719635 0.58145601
		 1.30135 75.15640259 0.52859801 1.11149001 75.064796448 0.98217899 1.18871999 75.067398071 1.14285004
		 1.10423994 75.15309906 0.75582302 1.13082004 75.31659698 0.47235799 0.44751 75.7338028 -0.54934603
		 0 76.26830292 0.39473301 1.25221002 75.096298218 0.830064 1.16126001 75.12349701 0.55474198
		 1.36852002 75.081298828 0.335574 0.88881898 75.059402466 -0.56680697 0 76.069000244 -0.054085001
		 1.30402005 75.076698303 0.56028998 1.088700056 74.016403198 -0.012394 0 75.45359802 -1.38954997
		 0.001293 75.56529999 -0.92176801 0.073661998 75.72219849 -0.54556799 0 75.7901001 -0.382177
		 1.094630003 73.62989807 -0.514373 0 75.62879944 -0.65585297 0 73.74510193 -1.18502998
		 0 75.27619934 -0.42776799 0.049857002 75.36569977 -0.516541 0 75.37180328 -0.58067
		 0 75.0057983398 -0.42195401 0.079063997 74.99030304 -0.52348697;
	setAttr ".vt[830:995]" 0 74.98269653 -0.58093601 0 74.92819977 -0.495626 0.87046301 78.92690277 2.86824989
		 0.81654298 78.60800171 2.94643998 0.86311197 78.5114975 2.89148998 0.85467601 79.30760193 2.88376999
		 0.757146 78.46459961 2.88242006 0.67091501 78.40950012 2.82202005 -0.375236 75.42960358 2.86824989
		 -0.436048 75.14279938 2.9535501 -0.15636399 75.10510254 2.96381998 -0.183328 75.41549683 2.81130004
		 -0.49358901 75.068603516 2.96486998 -0.17452601 75.042198181 2.99936008 -0.3739 75.70130157 2.82282996
		 -0.18654799 75.68830109 2.76543999 -0.66209102 75.41739655 2.68734002 -0.73318398 75.12789917 2.71606994
		 -0.47572199 74.93119812 2.93332005 -0.191964 74.92849731 3.0011799335 -0.77204001 75.030601501 2.77849007
		 -0.00067400001 75.81210327 3.08781004 -0.344679 75.87650299 2.78348994 -0.17562699 75.84799957 2.80392003
		 -0.63727802 75.67250061 2.68113995 -1.014070034 75.36630249 2.33562994 -0.98921102 75.085800171 2.46848989
		 -0.46057501 74.84980011 2.83946991 -0.184064 74.86599731 2.93008995 -0.759036 74.87740326 2.7269299
		 -0.984694 74.97969818 2.53460002 -0.227046 74.89129639 2.76486993 -0.240613 75.17639923 2.63611007
		 -0.28975499 75.85399628 2.44260001 -0.26844099 76.50330353 1.18835998 -0.19646201 75.94010162 -1.38982999
		 -0.48616999 75.8470993 -1.38982999 -0.90488601 75.71269989 -1.38982999 -1.25581002 75.60009766 -1.38982999
		 -1.56104004 75.50209808 -1.38982999 -1.72537994 74.69010162 -1.31476998 -1.64994001 74.19409943 -1.28434002
		 -1.57133996 73.98130035 -1.26602995 -1.29391003 73.95850372 -1.26602995 -1.041700006 73.93769836 -1.26602995
		 -0.78566998 73.91660309 -1.26602995 -0.41587001 73.88619995 -1.26602995 -0.22231799 73.87030029 -1.26602995
		 -0.233505 73.71769714 0.75263298 -0.190047 73.79160309 2.29249001 -0.218401 74.44670105 2.76746988
		 -0.215849 74.7492981 2.71801996 -0.22172999 74.86090088 2.79315996 -0.255016 74.86910248 2.96918011
		 -0.26654899 74.76869965 3.054909945 -0.26207 74.5931015 3.10953999 -0.230694 74.18810272 2.97615004
		 -0.25012401 73.92169952 2.93624997 -0.32455599 73.68180084 2.94103003 -0.36976701 73.3864975 3.083179951
		 -0.39356399 73.35769653 3.14673996 -0.41782999 73.087402344 2.99966002 -0.426002 72.87799835 2.86619997
		 -0.55832201 72.92140198 2.043119907 -0.69064099 73.03679657 1.57499003 -0.87790501 73.17880249 0.78268403
		 -1.094480038 73.29509735 -0.020865999 -0.93515301 72.16829681 -0.104672 -0.964661 71.21559906 -0.232557
		 -1.99015999 71.98210144 -1.21054006 -2.5299499 72.42469788 -2.18839002 -2.38830996 72.94930267 -3.6405201
		 -1.43306994 73.23670197 -4.67837 -1.45634997 74.37480164 -4.42730999 -1.45972002 75.520401 -4.24842978
		 -1.46342003 76.77780151 -4.24341011 -1.36670995 78.0040969849 -4.95812988 -1.25085998 79.093002319 -4.90553999
		 -1.13022995 80.13569641 -4.8513298 -0.99334699 81.16269684 -4.36853981 -0.95594698 81.69120026 -3.98500991
		 -0.83475298 82.30149841 -3.12335992 -0.88438499 82.65570068 -2.45159006 -0.80189002 82.52130127 -1.037999988
		 -0.70669901 82.13040161 0.31028301 -0.74365801 81.66480255 1.026679993 -0.75269002 81.060699463 1.91714001
		 -0.69717002 80.12670135 2.61152005 -0.39997199 79.37580109 2.97526002 -0.369542 79.30729675 2.95730996
		 -0.25867301 78.89440155 2.9844799 -0.194272 78.60669708 3.015810013 -0.170765 78.48760223 2.99706006
		 -0.14343899 78.35630035 2.83154011 -0.156581 78.26719666 2.84787011 -0.16576301 78.17240143 2.88369012
		 -0.183074 78.10350037 2.9049499 -0.212685 77.89440155 2.98368001 -0.231702 77.87290192 3.044470072
		 -0.244758 77.51129913 3.19739008 -0.26279199 77.013000488 3.37438011 -0.26732999 76.53790283 3.50216007
		 -0.225292 76.042999268 3.52074003 -0.197934 75.87640381 3.37561011 -0.15727501 75.87709808 3.077480078
		 -0.15583199 75.87129974 2.92304993 -0.320503 75.92350006 2.86078 -0.60119098 75.90930176 2.67148995
		 -1.05708003 75.61910248 2.24793005 -1.34827995 75.207901 1.92531002 -1.15214002 74.98179626 2.22315001
		 -0.45785099 74.8839035 2.67717004 -0.68403703 74.83059692 2.59152007 -0.97554803 74.84739685 2.51410007
		 -1.13627994 74.90899658 2.30890989 -0.498842 75.188797 2.54725003 -0.57340002 75.89409637 2.32743001
		 -0.53688198 76.51039886 1.079489946 -1.021540046 76.40080261 0.82721901 -1.25557995 76.26170349 0.68159199
		 -1.48961997 76.12270355 0.53596503 -1.67207003 74.9858017 0.352709 -1.59967005 74.1937027 0.30357301
		 -1.53977001 73.88510132 0.31126699 -1.35857999 73.8105011 0.38385999 -1.17738998 73.7358017 0.45645201
		 -0.97371 73.72090149 0.52596802 -0.46700901 73.71479797 0.68914998 -0.38009399 73.78579712 2.19001007
		 -0.433458 74.44730377 2.66539001 -0.43864799 74.75150299 2.65033007 -0.45789099 74.85160065 2.7449801
		 -0.49542701 74.84970093 2.8931601 -0.54560798 74.74359894 2.96676993 -0.54847902 74.53859711 2.97632003
		 -0.44708699 74.2141037 2.82181001 -0.48364601 73.91840363 2.76305008 -0.63250798 73.65370178 2.76892996
		 -0.70507997 73.31159973 2.77800012 -0.75172698 73.27610016 2.82984996 -0.75719202 73.075897217 2.76356006
		 -0.735847 72.93389893 2.72478008 -1.12557006 73.054100037 2.071810007 -1.32479 73.1835022 1.67196
		 -1.73336995 73.47059631 0.842668 -2.0035500526 73.68859863 0.063689999 -2.063519955 73.88529968 -0.88731402
		 -1.94791996 72.87419891 -1.05569005 -2.51100993 73.49320221 -2.17237997 -2.31616998 73.97769928 -3.39253998
		 -2.40697002 75.045501709 -3.2390399 -2.53799009 76.24649811 -3.39569998 -2.6050601 77.16519928 -3.56908011
		 -2.23026991 78.060096741 -4.30149984 -2.25226998 79.049102783 -4.43591976 -2.082570076 80.062103271 -4.38718987
		 -1.86230004 81.079399109 -4.063819885 -1.60776997 81.65039825 -3.67718005 -1.45785999 82.14450073 -3.010449886
		 -1.60818005 82.38289642 -2.32792997 -1.65206003 82.21430206 -1.0064599514 -1.69607997 81.8062973 0.156617
		 -1.65366006 81.39369965 0.929793 -1.57922006 80.79789734 1.69175994 -1.46537995 80.010002136 2.34250998
		 -0.804537 79.37560272 2.91306996;
	setAttr ".vt[996:1161]" -0.74389398 79.30729675 2.9036901 -0.63658202 78.90380096 2.93841004
		 -0.57204199 78.61199951 2.9876101 -0.43851799 78.47899628 2.96469998 -0.306759 78.332901 2.7992301
		 -0.26315001 78.24680328 2.80076003 -0.24662299 78.14910126 2.80382991 -0.293392 78.068901062 2.78444004
		 -0.30470401 77.83000183 2.84255004 -0.34116399 77.7806015 2.8817699 -0.38537699 77.40019989 2.99775004
		 -0.436003 76.92269897 3.09017992 -0.462612 76.56569672 3.21212006 -0.449287 76.24949646 3.25610995
		 -0.406625 76.053703308 3.26138997 -0.29791701 75.98220062 3.080529928 -0.62144703 75.94460297 2.70860004
		 -1.082069993 75.896698 2.10127997 -1.45235002 75.54509735 1.69639003 -1.52682996 74.83889771 1.76839006
		 -1.36801004 74.6917038 1.98563004 -0.69403899 74.87689972 2.47642994 -0.90896499 74.8082962 2.40107012
		 -1.12474 74.81210327 2.30350995 -1.28603995 74.70950317 2.075769901 -0.753708 75.1765976 2.32413006
		 -0.97684997 75.91120148 1.92606997 -1.25165999 75.86509705 1.60856998 -1.42833996 75.78520203 1.3075
		 -1.52005994 74.91100311 1.11899996 -1.41969001 74.26370239 1.12026 -1.29253995 74.10600281 1.39958
		 -1.15644002 74.017303467 1.52333999 -0.97653502 73.91539764 1.67929995 -0.82356501 73.86589813 1.80771995
		 -0.73053801 74.47550201 2.40460992 -0.71657699 74.73470306 2.48382998 -0.70261598 74.84200287 2.57853007
		 -0.75060898 74.84880066 2.69640994 -0.80772698 74.74919891 2.73382998 -0.83061498 74.49849701 2.68789005
		 -0.82955998 74.19120026 2.44133997 -0.91650897 73.78510284 2.32631993 -1.052549958 73.4029007 2.13053012
		 -1.10824001 73.37439728 2.12428999 -1.14391994 73.21420288 2.091850042 -1.36986995 73.33390045 1.72122002
		 -1.67701006 73.71029663 1.31131005 -2.26047993 73.99359894 -0.67592502 -2.11846995 74.2193985 0.155828
		 -1.94971001 74.16179657 0.59191197 -2.58857989 74.51750183 -2.15310001 -2.7486701 75.38770294 -2.46039009
		 -2.79951 78.012298584 -3.56519008 -2.8136301 78.079696655 -3.58578992 -2.73225999 79.035202026 -3.73702002
		 -2.6777401 79.97619629 -3.78833008 -2.56432009 80.9516983 -3.57715011 -2.24122 81.56719971 -3.23481011
		 -1.91060996 81.95880127 -2.92522001 -2.2471199 81.96579742 -2.21456003 -2.30611992 81.79509735 -1.034839988
		 -2.20424008 81.46260071 -0.051805999 -2.076469898 81.068199158 0.73280799 -1.95439005 80.540802 1.48153996
		 -1.87355995 79.8839035 2.045789957 -1.22241998 79.37590027 2.7700901 -1.20090997 79.30770111 2.75838995
		 -1.11233997 78.94560242 2.76429009 -1.046040058 78.63059998 2.84313011 -0.65118098 78.42389679 2.86816001
		 -0.33792001 78.30020142 2.69711995 -0.30090901 78.21499634 2.71518993 -0.31897199 78.021003723 2.60341001
		 -0.4095 77.71829987 2.70258999 -0.45330101 77.6740036 2.75311995 -0.496048 77.29119873 2.84744
		 -0.51073903 76.93379974 2.87264991 -0.59758902 76.64279938 2.88609004 -0.73047698 76.31980133 2.94049001
		 -0.58290303 76.11239624 3.031650066 -1.090129972 75.96630096 2.10930991 -1.53325999 75.8572998 1.46535003
		 -1.63694 75.089401245 1.44509006 -1.50714004 74.58119965 1.72029996 -1.33560002 74.63839722 1.97393
		 -0.89915198 74.84719849 2.33052993 -1.064290047 74.79589844 2.22340989 -1.24826002 74.73069763 2.085350037
		 -1.24997997 74.6875 2.059560061 -0.99014199 75.13880157 2.17406988 -1.18864 75.054603577 1.99467003
		 -1.29242003 74.83209991 1.84202003 -1.27749002 74.65399933 1.78457999 -1.17030001 74.53440094 1.87713003
		 -1.068500042 74.4733963 2.019850016 -0.93671203 74.47619629 2.18513989 -0.91796201 74.71769714 2.27813005
		 -0.89921099 74.80729675 2.37112999 -0.95818102 74.82309723 2.43959999 -1.01157999 74.73349762 2.46138
		 -1.079139948 74.47039795 2.36219001 -1.095770001 74.21489716 2.12254 -1.20755005 73.87529755 1.94497001
		 -1.30727994 73.5279007 1.76507998 -1.35280001 73.49849701 1.74449003 -1.64008999 73.77549744 1.42554998
		 -1.87435997 74.14820099 0.86921799 -2.29362011 74.40550232 -0.43122199 -2.61670995 75.22329712 -1.90346003
		 -2.79606009 75.46630096 -1.88338006 -2.049469948 74.7881012 0.53640699 -2.15172005 74.84380341 0.220709
		 -2.74308991 75.37879944 -2.35027003 -3.0035998821 75.58969879 -2.43159008 -3.43286991 76.22270203 -2.92248988
		 -3.59352994 76.92680359 -3.0880301 -3.74316001 77.63829803 -3.11521006 -3.11356997 79.037101746 -3.040719986
		 -3.037450075 78.51809692 -3.082789898 -3.088419914 79.82949829 -2.87438011 -2.92554998 80.90200043 -2.46649003
		 -2.67729998 81.50930023 -2.26781011 -2.69116998 81.37799835 -1.16130996 -2.54273009 81.099098206 -0.26050901
		 -2.42822003 80.71620178 0.5564 -2.30799007 80.2256012 1.21229994 -1.73343003 79.3769989 2.39888
		 -2.21602011 79.71060181 1.66250002 -1.71272004 79.30729675 2.39134002 -1.59043002 78.99210358 2.49808002
		 -1.49571002 78.72260284 2.56365991 -1.073909998 78.50849915 2.74885988 -0.71375698 78.37760162 2.68651009
		 -0.37959501 78.24770355 2.57736993 -0.319938 78.17469788 2.56955004 -0.53542501 77.7723999 2.47265005
		 -0.54990202 77.55509949 2.54991007 -0.59841698 77.520401 2.61101007 -0.590343 77.17410278 2.66300988
		 -0.60571498 76.89659882 2.67656994 -0.64582998 76.72250366 2.67396998 -0.74087697 76.59159851 2.52436996
		 -0.76075703 76.16449738 2.52733994 -1.20518994 76.13899994 2.014460087 -1.58784997 75.90319824 1.47704005
		 -1.77342999 75.31639862 1.17725003 -1.64179003 74.61060333 1.40375996 -1.43721998 74.42230225 1.78111005
		 -1.26445997 74.60739899 2.002229929 -1.061949968 74.84380341 2.17088008 -1.21506 74.75060272 2.058700085
		 -1.22623003 74.7154007 2.0729599 -1.19072998 74.70600128 2.083019972 -1.17838001 74.79570007 1.99255002
		 -1.19992995 74.71779633 1.95530999 -1.16301 74.68170166 1.98049998 -1.061560035 74.70770264 2.1126101
		 -1.054620028 74.7901001 2.20535994 -1.091500044 74.79389954 2.22195005 -1.12133002 74.7263031 2.22113991
		 -1.18815005 74.56780243 2.1777401 -1.28439999 74.31459808 1.9418 -1.45323002 74.053001404 1.69403994
		 -1.58494997 73.80349731 1.45444 -1.80746996 74.11129761 1.07980001;
	setAttr ".vt[1162:1327]" -1.93542004 74.68779755 0.90407598 -2.27857995 74.86489868 -0.083784997
		 -2.57305002 75.47239685 -0.83796901 -3.02361989 75.59780121 -2.26234007 -2.074340105 75.46040344 0.63132501
		 -2.16162992 75.46710205 0.39475501 -3.47796988 76.21230316 -2.87355995 -3.10587001 75.64830017 -2.39811993
		 -3.65671992 76.91249847 -3.038800001 -3.080290079 78.45819855 -3.067670107 -3.78649998 77.6160965 -3.073879957
		 -3.69516993 78.23370361 -2.92810011 -3.065910101 78.51190186 -2.98406005 -3.23857999 79.75099945 -1.82416999
		 -3.2486999 78.87419891 -1.98563004 -2.98676991 80.76860046 -1.40871 -2.87980008 80.56770325 -0.499897
		 -2.75234008 80.2594986 0.27180299 -2.60235 79.88980103 0.85461098 -1.94981003 79.37110138 2.14304996
		 -2.48674989 79.52059937 1.24617004 -2.18548989 79.31950378 1.83650994 -1.93656003 79.30349731 2.13273001
		 -1.91530001 79.026199341 2.15228009 -1.89538002 78.80940247 2.1868 -1.46241999 78.61139679 2.53447008
		 -1.092890024 78.48870087 2.55505991 -0.74409902 78.39320374 2.50723004 -0.48490599 78.28079987 2.4381299
		 -0.38699499 78.16950226 2.40746999 -0.45033801 78.031898499 2.39475012 -0.57150298 77.86630249 2.36939001
		 -0.77067602 77.57510376 2.35327005 -0.74195802 77.41699982 2.40144992 -0.75619102 77.35919952 2.42778993
		 -0.77764302 76.93599701 2.41506004 -0.77409399 76.66349792 2.44818997 -0.774405 76.48989868 2.40321994
		 -1.71714997 76.00060272217 1.42260003 -1.29155004 76.33940125 1.89681005 -1.83836997 75.36170197 1.14561999
		 -1.76187003 74.61579895 1.12743998 -1.60635996 74.28540039 1.44599998 -1.19695997 74.74680328 2.062190056
		 -1.17999995 74.74140167 2.089220047 -1.17278004 74.75559998 2.089099884 -1.76241004 74.13829803 1.11807001
		 -1.84192002 74.61540222 1.09841001 -1.96764004 75.38629913 0.91929698 -2.39972997 75.45770264 -0.13644101
		 -2.9210999 76.17819977 -1.99144995 -2.72014999 76.24649811 -0.96475101 -3.47642994 76.21520233 -2.80120993
		 -1.83864999 76.13279724 1.26501 -2.08397007 76.11990356 0.83159798 -3.66513991 76.90029907 -2.97347999
		 -3.10512996 78.4559021 -2.99778008 -3.78502011 77.60510254 -3.012160063 -3.73196006 78.21060181 -2.90129995
		 -3.73941994 78.21920013 -2.8394599 -3.28362989 78.051597595 -1.98238003 -3.17303991 79.60649872 -0.90495503
		 -3.20795989 78.74340057 -1.12663996 -3.067980051 79.44920349 -0.32805899 -2.92288995 79.2016983 0.22926299
		 -2.80478001 78.99160004 0.60510403 -2.40058994 79.19650269 1.47742999 -2.16602993 79.25430298 1.83306003
		 -2.15254998 79.0054016113 1.86647999 -2.10676003 78.8125 1.92078996 -1.81342006 78.68800354 2.21627998
		 -1.42624998 78.5503006 2.45424008 -1.054319978 78.57990265 2.37396002 -0.81926399 78.49649811 2.33402991
		 -0.57522303 78.33979797 2.31340003 -0.435895 78.17980194 2.29233003 -0.473279 78.064102173 2.28012991
		 -0.61275101 77.94650269 2.2762301 -0.78336602 77.66840363 2.29992008 -1.025539994 77.42510223 2.23470998
		 -1.01493001 77.2492981 2.2485199 -1.027799964 77.19999695 2.25356007 -0.870897 76.83170319 2.24158001
		 -0.81191802 76.61199951 2.35991001 -1.33923995 76.49340057 1.87194002 -2.40614009 76.22450256 0.109386
		 -2.86118007 76.72779846 -1.077859998 -3.037499905 76.76869965 -2.084199905 -2.20447993 76.54789734 1.24635994
		 -1.82880998 76.48950195 1.58825004 -3.16164994 77.415802 -2.032840014 -3.22440004 78.0086975098 -1.12436998
		 -3.17488003 78.70130157 -0.68949801 -3.060899973 78.62349701 -0.189486 -2.92262006 78.5286026 0.33508599
		 -2.66655993 78.79620361 0.84049898 -2.3719399 79.15229797 1.48475003 -2.29327989 78.89550018 1.59220004
		 -2.23225999 78.7315979 1.68717003 -2.038389921 78.66439819 1.96583998 -1.70668006 78.6115036 2.20411992
		 -1.31230998 78.61969757 2.32809997 -0.99479902 78.71659851 2.23852992 -0.80956 78.55549622 2.24060011
		 -0.65458202 78.35399628 2.21395993 -0.51833099 78.20050049 2.21048999 -0.61809099 78.12799835 2.20424008
		 -0.71321398 78.043197632 2.20235991 -0.80534297 77.77649689 2.23790002 -1.030279994 77.51879883 2.20965004
		 -1.28656006 77.35679626 2.096139908 -1.31930995 77.11540222 2.040709972 -1.31575 77.064796448 2.080529928
		 -1.34089005 76.77050018 1.93552005 -2.56522012 76.67050171 0.544613 -2.70373011 76.73840332 -0.200828
		 -3.11457992 77.26339722 -1.14850998 -1.81105006 76.79799652 1.69403994 -2.31191993 76.85079956 1.38169003
		 -3.1881001 78.0016021729 -0.67189199 -3.08968997 77.98509979 -0.215268 -2.94752002 77.98130035 0.34122601
		 -2.73934007 78.46499634 0.67494202 -2.61139989 78.7397995 0.87599099 -2.43659997 78.6115036 1.20849001
		 -2.33342004 78.53440094 1.41854 -2.13428998 78.61579895 1.78713 -1.90851998 78.59159851 2.017050028
		 -1.56043005 78.62830353 2.17751002 -1.21975005 78.75469971 2.22129011 -1.035169959 78.62139893 2.23616004
		 -0.89802003 78.51069641 2.21472001 -0.78173 78.36519623 2.15717006 -0.70651799 78.23290253 2.15287995
		 -0.73859 78.15180206 2.13837004 -0.80816001 78.12159729 2.14477992 -0.85467601 77.93599701 2.19173002
		 -1.040789962 77.63410187 2.17545009 -1.25582004 77.47149658 2.11108994 -1.60400999 77.39569855 1.91602004
		 -1.69196999 77.16609955 1.82261002 -1.75551999 77.10500336 1.83609998 -2.6271801 76.95549774 0.86102498
		 -2.83216 76.97899628 0.29606399 -3.052570105 77.30950165 -0.51751202 -2.28495002 77.23760223 1.47273004
		 -2.98910999 77.35620117 0.087874003 -2.75337005 77.99069977 0.68403202 -2.8884201 77.5141983 0.472267
		 -2.66458011 78.44339752 0.70453799 -2.47475004 78.35810089 1.061609983 -2.3392899 78.32910156 1.30711997
		 -2.20002007 78.48480225 1.62645996 -2.014110088 78.53839874 1.88434994 -1.74473 78.5727005 2.054500103
		 -1.45551002 78.72489929 2.12724996 -1.23070002 78.66190338 2.23790002 -0.91007602 78.49980164 2.18314004
		 -1.038579941 78.59729767 2.19861007 -0.79688102 78.34449768 2.12592006 -0.71895498 78.22989655 2.13386011
		 -0.74764901 78.15540314 2.11820006 -0.82045197 78.11910248 2.11677003 -0.87667 78.072601318 2.17733002
		 -1.054049969 77.83329773 2.16180992 -1.23838997 77.59660339 2.10740995;
	setAttr ".vt[1328:1493]" -1.53303003 77.52020264 1.96992004 -2.21592999 77.29620361 1.45916998
		 -1.94230998 77.50779724 1.68955004 -2.48161006 77.33699799 1.22133994 -2.76364994 77.22499847 0.65293998
		 -2.6744101 77.99189758 0.71534699 -2.71185994 77.74909973 0.79865301 -2.45690989 78.074203491 1.070140004
		 -2.30033994 78.10919952 1.31936002 -2.21039009 78.32029724 1.52142 -2.081660032 78.45140076 1.76059997
		 -1.86654997 78.50920105 1.95068002 -1.62374997 78.57779694 2.065720081 -1.39661002 78.63690186 2.18002009
		 -1.23357999 78.63860321 2.20044994 -1.064010024 78.40419769 2.30879998 -0.93861598 78.36380005 2.28421998
		 -0.85031801 78.30740356 2.2304399 -0.823026 78.22419739 2.20544004 -0.886338 78.073303223 2.14519
		 -1.05795002 78.0095977783 2.17793989 -1.22575998 77.80740356 2.12170005 -1.47639 77.65209961 2.003360033
		 -1.81238997 77.64070129 1.80037999 -2.1310401 77.6187973 1.51561999 -2.3733201 77.38790131 1.25323999
		 -2.59259009 77.50759888 1.025550008 -2.6140101 77.76670074 0.84221298 -2.36525989 77.86789703 1.19541001
		 -2.17161012 78.1855011 1.51703 -2.20518994 77.94249725 1.42523003 -2.10783005 78.34220123 1.66603005
		 -1.97196996 78.43019867 1.83624995 -1.76145995 78.47879791 1.97237003 -1.55315006 78.51049805 2.091249943
		 -1.39247 78.60720062 2.14412999 -1.22713995 78.41059875 2.29566002 -1.073230028 78.2118988 2.26473999
		 -0.931696 78.22049713 2.24796009 -1.063680053 78.017501831 2.13901997 -1.21407998 78.0026016235 2.1580801
		 -1.41983998 77.85240173 2.052229881 -1.71492004 77.78040314 1.87618995 -1.99541998 77.75959778 1.65941
		 -2.51325011 77.54389954 1.04076004 -2.25082994 77.7335968 1.36882997 -2.072530031 78.040000916 1.59459996
		 -2.065069914 78.25810242 1.66206002 -2.10210991 77.84420013 1.55054998 -2.030329943 78.36049652 1.75
		 -1.88531995 78.3864975 1.86601996 -1.65128005 78.40149689 1.99070001 -1.53628004 78.49569702 2.060869932
		 -1.38502002 78.41280365 2.24380994 -1.22475004 78.21219635 2.25785995 -1.21485996 78.0040969849 2.13369012
		 -1.37713003 78.012802124 2.10798001 -1.61638999 77.95749664 1.95624006 -1.88392997 77.9048996 1.76322997
		 -1.98014998 77.97440338 1.68239999 -1.94418001 78.16000366 1.73203003 -1.97305 78.31939697 1.76838005
		 -1.76537001 78.2743988 1.90058994 -1.64058006 78.39589691 1.95743001 -1.50598001 78.36979675 2.16381001
		 -1.38127995 78.22109985 2.20112991 -1.37875998 78.010902405 2.072129965 -1.54770005 78.079399109 2.025470018
		 -1.77523994 78.071098328 1.85027003 -1.86633003 78.12359619 1.78376997 -1.81631005 78.24659729 1.84307003
		 -1.74398994 78.27610016 1.87978005 -1.59011996 78.34980011 2.071630001 -1.51161003 78.23789978 2.12436008
		 -1.54077995 78.075401306 2.0045700073 -1.71708 78.21320343 1.8836 -1.79115999 78.25009918 1.82919002
		 -1.77465999 78.25990295 1.84017003 -1.63557005 78.26139832 2.01402998 -1.70247996 78.21050262 1.87158
		 -0.42124 74.77030182 2.43788004 -0.42404899 74.20839691 2.39037991 -0.225796 75.016296387 2.42202997
		 -1.01067996 74.72129822 1.90509999 -1.034809947 74.24970245 1.81924999 -0.41490999 75.014503479 2.41042995
		 -0.0089339996 75.13580322 2.40003991 -0.218429 75.14589691 2.3650701 -0.60188299 75.016799927 2.22161007
		 -0.853845 74.94589996 1.95519996 -1.40119004 74.73410034 0.97445899 -1.37932003 74.19560242 1.092120051
		 -0.239078 75.13839722 2.35776997 -0.40538701 75.14420319 2.31546998 -0.017611001 75.16929626 2.3410399
		 -0.204895 75.17829895 2.32905006 -0.226511 75.14369965 2.32753992 -0.89961201 75.075897217 1.86346996
		 -1.18131006 75.083099365 1.54646003 -0.63842499 75.17489624 2.13975 -0.82102901 75.15570068 1.94309998
		 -1.35930002 74.88069916 1.056319952 -1.55800998 74.82879639 0.111967 -1.58543003 74.3065033 0.183889
		 -0.51777798 75.15910339 2.23459005 -0.38907501 75.17870331 2.27076006 -0.242439 75.16739655 2.32061005
		 -0.41082001 75.15789795 2.26391006 -0.023584001 75.17299652 2.31120992 -0.197293 75.17489624 2.29582
		 -0.815988 75.092102051 1.88552999 -0.81691003 75.10089874 1.87862003 -1.032310009 75.10109711 1.48717999
		 -0.783351 75.15509796 1.87276006 -0.62708497 75.17620087 2.11948991 -0.60630602 75.15609741 2.12422991
		 -1.53100002 74.90180206 0.38951501 -1.75142002 74.93540192 -1.015079975 -0.42187601 75.14610291 2.3055501
		 -0.60073501 75.15149689 2.16544008 -0.38045999 75.17559814 2.22735 -0.241497 75.16529846 2.28920007
		 -0.216272 75.04699707 2.30305004 -1.37638998 75.048301697 0.95623899 -0.79455799 74.95670319 1.94722998
		 -0.81663603 75.10320282 1.78386998 -1.13786995 75.052696228 0.88559097 -0.59257901 75.14050293 2.098989964
		 -0.73009199 75.13510132 1.88321996 -1.48486996 75.057502747 0.48444 -1.64797997 75.22769928 -0.26302499
		 -1.74749005 75.33229828 -0.97840202 -0.42373601 75.18409729 2.24742007 -0.514763 75.19909668 2.18864012
		 -0.58348101 75.18669891 2.13037992 -0.302147 75.04070282 2.2162199 -0.395197 75.030502319 2.16645002
		 -0.28961399 74.89649963 2.17034006 -0.98041898 74.98110199 1.46866 -1.14137995 74.92340088 0.88189501
		 -1.23589003 75.062599182 0.42486101 -1.38100004 75.063796997 0.39005199 -0.63673198 75.036903381 2.095789909
		 -0.57744598 75.030601501 2.14499998 -1.35511005 74.95909882 0.329353 -1.47917998 75.29180145 -0.27617401
		 -1.64520001 75.40260315 -1.035480022 -0.422741 75.18599701 2.19786 -0.50550503 75.18640137 2.14617991
		 -0.56404799 75.18029785 2.094320059 -0.29217499 74.22160339 1.82973003 -0.96841002 74.84570313 1.22779
		 -0.66085601 74.91940308 1.99448001 -1.23520994 75.021896362 0.43389401 -1.19366002 74.88400269 0.37397999
		 -1.35985005 75.22859955 -0.29822499 -1.52714002 75.34420013 -1.057109952 -0.68454403 74.17250061 1.25373006
		 -0.95052999 74.12670135 0.54158902 -1.22451997 74.40450287 -0.36490199 -0.00065100001 75.81369781 2.47488999
		 -0.52634799 75.93640137 2.32821012 -0.36530101 75.29589844 2.49802995 -0.69375098 75.35790253 2.2221601
		 -0.176479 75.22810364 2.57068992 -1.025560021 75.93499756 1.80094004;
	setAttr ".vt[1494:1591]" -0.93178701 75.4068985 1.99240005 -0.54890198 75.25969696 2.37318993
		 -0.340278 74.93170166 2.4551301 -1.11887002 75.40940094 1.69854999 -0.83360898 75.29879761 2.12480998
		 -0.64464998 74.93560028 2.24562001 -0.52530003 74.92970276 2.35310006 -0.40493801 74.92620087 2.43321991
		 -0.36356899 75.0010986328 2.42828989 -0.18953601 74.93170166 2.53108001 -1.31912994 75.95580292 1.26039004
		 -1.25565004 75.43689728 1.43628001 -1.060850024 75.33920288 1.85874999 -0.87880898 74.97309875 2.0011599064
		 -0.79871303 74.94999695 2.11416006 -0.69329202 74.94889832 2.19743991 -0.65741998 74.96759796 2.20857
		 -0.483468 74.94190216 2.30599999 -0.62910998 74.97709656 2.17595005 -0.33584201 74.93170166 2.42095995
		 -0.333976 75.013999939 2.34596992 -0.18628401 74.93170166 2.50250006 -0.033975001 74.93170166 2.55955005
		 -1.32581997 75.45749664 1.18292999 -1.21679997 75.34290314 1.56224 -1.099480033 75.016799927 1.71917999
		 -0.92855501 74.99310303 1.95430005 -0.898471 75.014900208 1.98239994 -0.84945399 75.0099029541 1.97771001
		 -0.74122399 74.96640015 2.08871007 -0.37769601 74.94080353 2.37863994 -0.64259601 75.16790009 2.10165
		 -0.18555 74.96530151 2.45173001 -0.031438001 74.93170166 2.52045989 -1.49571002 75.95439911 0.66192502
		 -1.38390994 75.46880341 0.86980098 -1.30423999 75.34889984 1.32744002 -1.24083996 75.048599243 1.46253002
		 -1.15558004 75.050003052 1.63269997 -1.079370022 75.062301636 1.66469002 -0.91651702 75.007598877 1.80554998
		 -0.73172599 75.34290314 1.89488006 -0.210675 75.48249817 2.25387001 -0.021734999 74.95500183 2.47947001
		 -1.48857999 75.36489868 0.58258599 -1.38631999 75.3655014 1.034540057 -1.28961003 75.061401367 1.21709001
		 -1.25571001 75.051696777 1.40252995 -1.19701004 75.046897888 1.43197 -1.0040299892 75.051200867 1.65283
		 -0.905904 75.18029785 1.72674 -0.36923999 76.047996521 1.55702996 -1.46700001 75.082000732 0.65033299
		 -1.41518998 75.092597961 0.82116097 -1.36956 75.086601257 0.908544 -1.33456004 75.088699341 1.12501001
		 -1.24450004 75.064002991 1.16457999 -1.059020042 75.052101135 1.28381002 -1.13824999 75.059196472 1.41513002
		 -1.03836 75.035003662 1.46801996 -1.017289996 75.41619873 0.92522901 -0.99533498 75.14900208 1.30146003
		 -0.49252301 76.15789795 0.76486599 -1.19341004 75.057403564 0.59552097 -1.17633998 75.078903198 0.70930898
		 -1.33543003 75.083396912 0.83965099 -1.30579996 75.08719635 0.58145601 -1.30135 75.15640259 0.52859801
		 -1.11149001 75.064796448 0.98217899 -1.18871999 75.067398071 1.14285004 -1.10423994 75.15309906 0.75582302
		 -1.13082004 75.31659698 0.47235799 -0.44751 75.7338028 -0.54934603 -1.25221002 75.096298218 0.830064
		 -1.16126001 75.12349701 0.55474198 -1.36852002 75.081298828 0.335574 -0.88881898 75.059402466 -0.56680697
		 -1.30402005 75.076698303 0.56028998 -1.088700056 74.016403198 -0.012394 -0.001293 75.56529999 -0.92176801
		 -0.073661998 75.72219849 -0.54556799 -1.094630003 73.62989807 -0.514373 -0.049857002 75.36569977 -0.516541
		 -0.079063997 74.99030304 -0.52348697 -0.87046301 78.92690277 2.86824989 -0.81654298 78.60800171 2.94643998
		 -0.86311197 78.5114975 2.89148998 -0.85467601 79.30760193 2.88376999 -0.757146 78.46459961 2.88242006
		 -0.67091501 78.40950012 2.82202005 0.59855199 75.014640808 2.39531398 0.59900302 74.80665588 2.42530298
		 2.52077508 75.043228149 4.036970139 2.52032399 75.25119781 4.0069828033 0.73486501 74.78408813 2.26661396
		 0.73441398 74.99205017 2.2366271 2.6561861 75.22860718 3.84829402 2.65663695 75.020637512 3.87828207;
	setAttr -s 3272 ".ed";
	setAttr ".ed[0:165]"  379 375 1 375 316 1 316 317 1 317 379 1 90 19 1 19 20 1
		 20 91 1 91 90 1 90 170 1 170 86 1 86 87 1 87 90 1 246 170 1 170 174 1 174 250 1 250 246 1
		 311 246 1 250 315 1 315 311 1 311 375 1 375 312 1 312 247 1 247 311 1 110 28 1 28 29 1
		 29 111 1 111 110 1 110 189 1 189 188 1 188 109 1 109 110 1 261 189 1 189 190 1 190 262 1
		 262 261 1 261 322 1 322 321 1 321 260 1 260 261 1 382 322 1 322 323 1 323 383 1 383 382 1
		 382 381 1 381 319 1 319 320 1 320 382 1 381 380 1 380 318 1 318 319 1 380 379 1 317 318 1
		 394 339 1 339 398 1 398 394 1 450 402 1 402 400 1 400 447 1 447 450 1 339 340 1 340 397 1
		 397 398 1 341 340 1 340 210 1 210 211 1 211 341 1 341 342 1 342 401 1 401 399 1 399 341 1
		 402 342 1 342 278 1 278 400 1 212 278 1 278 211 1 211 212 1 279 212 1 212 213 1 213 280 1
		 280 279 1 726 725 1 725 724 0 724 726 0 590 608 1 608 619 1 619 607 1 607 590 1 634 627 1
		 627 619 1 619 628 1 628 634 1 598 614 1 614 624 1 624 613 1 613 598 1 636 631 1 631 624 1
		 624 632 1 632 636 1 631 623 1 623 613 1 633 627 1 634 633 1 5 14 1 14 17 1 17 13 1
		 13 5 1 15 4 1 4 12 1 12 88 1 88 15 1 171 88 1 12 86 1 86 171 1 12 13 1 13 87 1 11 85 1
		 85 84 1 84 10 1 10 11 1 83 8 1 8 0 1 0 10 1 10 83 1 2 1 1 1 0 1 0 3 1 3 2 1 167 242 1
		 242 166 1 166 83 1 83 167 1 241 166 1 242 306 1 306 241 1 243 307 1 307 242 1 167 243 1
		 551 550 1 550 523 1 523 524 1 524 551 1 496 524 1 523 495 1 495 496 1 549 571 1 571 547 1
		 547 521 1 521 549 1 546 520 1 520 547 1 547 570 1 570 546 1 571 592 1 592 570 1 522 523 1
		 550 548 1 548 522 1 132 131 1 131 46 0 46 47 1 47 132 1 467 497 1 497 496 1 496 466 1
		 466 467 1;
	setAttr ".ed[166:331]" 465 466 1 495 465 1 520 493 1 493 521 1 463 493 1 520 492 1
		 492 463 1 2 6 1 6 14 1 5 2 1 3 7 1 7 6 1 1 11 1 5 4 1 4 1 1 15 11 1 497 525 1 525 524 1
		 526 525 1 497 498 1 498 526 1 553 552 1 552 525 1 526 553 1 114 32 1 32 33 1 33 115 1
		 115 114 1 113 31 1 31 32 1 114 113 1 264 192 1 192 193 1 193 265 1 265 264 1 115 194 1
		 194 193 1 193 114 1 194 266 1 266 265 1 267 266 1 194 195 1 195 267 1 116 195 1 115 116 1
		 112 30 1 30 31 1 113 112 1 263 191 1 191 192 1 264 263 1 192 113 1 623 612 1 612 597 1
		 597 613 1 555 578 1 578 597 1 597 577 1 577 555 1 612 596 1 596 577 1 552 551 1 71 156 1
		 156 155 1 155 70 1 70 71 1 69 70 1 155 154 1 154 69 1 420 360 1 360 298 1 298 421 1
		 421 420 1 233 299 1 299 298 1 298 232 1 232 233 1 361 298 1 299 362 1 362 361 1 363 362 1
		 299 300 1 300 363 1 234 300 1 233 234 1 232 155 1 156 233 1 361 422 1 422 421 1 570 591 1
		 591 569 1 569 546 1 519 546 1 569 545 1 545 519 1 590 569 1 591 608 1 592 609 1 609 591 1
		 420 419 1 419 359 1 359 360 1 297 360 1 359 296 1 296 297 1 837 295 1 295 296 1 296 837 1
		 66 67 1 67 152 1 152 151 1 151 66 1 228 151 1 152 229 1 229 228 1 153 152 1 67 68 1
		 68 153 1 168 84 1 85 169 1 169 168 1 173 169 1 85 89 1 89 173 1 9 16 1 16 7 1 3 9 1
		 164 79 1 79 80 1 80 82 1 82 164 1 609 620 1 620 608 1 149 64 1 64 65 1 65 150 1 150 149 1
		 151 150 1 65 66 1 295 836 1 836 833 1 833 227 1 227 295 1 326 265 1 266 327 1 327 326 1
		 328 327 1 267 328 1 326 325 1 325 264 1 385 325 1 326 386 1 386 385 1 327 387 1 387 386 1
		 578 598 1 579 598 1 578 556 1 556 579 1 196 267 1 195 196 1 117 196 1 116 117 1 33 34 1
		 34 116 1 423 361 1;
	setAttr ".ed[332:497]" 362 424 1 424 423 1 425 424 1 363 425 1 470 423 1 424 471 1
		 471 470 1 384 324 1 324 325 1 385 384 1 243 168 1 168 244 1 244 308 1 308 243 1 245 244 1
		 169 245 1 167 84 1 307 370 1 370 306 1 308 371 1 371 307 1 371 431 1 431 370 1 438 431 1
		 371 432 1 432 438 1 372 432 1 308 372 1 461 491 1 491 518 1 518 490 1 490 461 1 568 544 1
		 544 518 1 518 545 1 545 568 1 517 544 1 544 567 1 567 543 1 543 517 1 566 543 1 567 588 1
		 588 566 1 606 588 1 567 589 1 589 606 1 291 224 1 224 835 1 835 292 1 292 291 1 832 293 1
		 293 292 1 835 832 1 149 226 1 226 225 1 225 148 1 148 149 1 147 62 1 62 63 1 63 148 1
		 148 147 1 314 378 1 378 374 1 374 310 1 310 314 1 387 373 1 373 374 1 374 386 1 373 309 1
		 309 310 1 372 309 1 373 433 1 433 372 1 388 433 1 387 388 1 309 244 1 245 310 1 249 245 1
		 173 249 1 44 45 1 45 127 0 127 126 1 126 44 1 127 128 0 128 206 1 206 126 1 313 249 1
		 173 248 1 248 313 1 172 248 1 89 172 1 249 314 1 377 314 1 313 377 1 517 489 1 489 460 1
		 460 490 1 490 517 1 414 415 1 415 460 1 460 459 1 459 414 1 488 489 1 489 516 1 516 515 1
		 515 488 1 541 515 1 516 542 1 542 541 1 269 330 1 330 329 1 329 268 1 268 269 1 267 268 1
		 329 328 1 388 328 1 329 389 1 389 388 1 358 359 1 419 418 1 418 358 1 357 417 1 417 462 1
		 462 416 1 416 357 1 519 491 1 491 462 1 462 492 1 492 519 1 117 118 1 118 197 1 197 196 1
		 198 197 1 118 119 1 119 198 1 35 36 1 36 118 1 117 35 1 614 625 1 625 632 1 615 625 1
		 614 599 1 599 615 1 461 415 1 415 356 1 356 416 1 416 461 1 293 294 1 294 356 1 356 355 1
		 355 293 1 410 352 1 352 354 1 354 413 1 413 410 1 557 529 1 529 501 1 501 530 1 530 557 1
		 471 502 1 502 501 1 501 470 1 502 531 1 531 530 1 472 503 1 503 502 1;
	setAttr ".ed[498:663]" 471 472 1 128 129 0 129 207 1 207 206 1 129 130 0 130 208 1
		 208 207 1 515 514 1 514 487 1 487 488 1 560 583 1 583 601 1 601 582 1 582 560 1 581 582 1
		 601 602 1 602 581 1 585 602 1 601 584 1 584 585 1 541 564 1 564 562 1 562 540 1 540 541 1
		 563 538 1 538 562 1 562 584 1 584 563 1 532 536 1 536 558 1 558 531 1 531 532 1 558 559 1
		 559 530 1 581 559 1 558 582 1 130 131 0 132 208 1 331 390 1 390 437 1 437 389 1 389 331 1
		 36 37 1 37 119 1 457 487 1 514 486 1 486 457 1 513 486 1 514 540 1 540 513 1 378 385 1
		 435 378 1 377 435 1 157 156 1 71 72 1 72 157 1 47 48 1 48 133 1 133 132 1 48 49 1
		 49 134 1 134 133 1 141 56 1 56 57 1 57 142 1 142 141 1 137 52 1 52 53 1 53 138 1
		 138 137 1 139 138 1 53 54 1 54 139 1 49 50 1 50 135 1 135 134 1 136 135 1 50 51 1
		 51 136 1 158 157 1 72 73 1 73 158 1 57 58 1 58 143 1 143 142 1 144 143 1 58 59 1
		 59 144 1 122 121 1 121 39 1 39 40 1 40 122 1 163 78 1 78 79 0 164 163 1 125 43 1
		 43 44 1 126 125 1 159 74 1 74 75 1 75 160 1 160 159 1 75 76 1 76 161 1 161 160 1
		 162 77 1 77 78 0 163 162 1 146 61 1 61 62 1 147 146 1 120 119 1 37 38 1 38 120 1
		 145 60 1 60 61 1 146 145 1 124 42 1 42 43 1 125 124 1 436 435 1 377 434 1 434 436 1
		 313 376 1 376 434 1 248 312 1 312 376 1 172 247 1 123 41 1 41 42 1 124 123 1 76 77 1
		 162 161 1 89 15 1 88 172 1 338 334 1 334 205 1 205 276 1 276 338 1 207 276 1 205 206 1
		 205 125 1 273 205 1 334 335 1 335 273 1 394 335 1 338 394 1 209 210 1 210 277 1 277 209 1
		 276 209 1 277 338 1 446 399 1 401 448 1 448 446 1 449 401 1 402 449 1 279 278 1 344 400 1
		 279 344 1 339 277 1 134 210 1 209 133 1 399 397 1 397 443 1 443 394 1;
	setAttr ".ed[664:829]" 393 335 1 335 441 1 441 442 1 442 393 1 477 442 1 441 478 1
		 478 477 1 446 478 1 441 443 1 443 446 1 333 273 1 393 333 1 429 370 1 431 439 1 439 429 1
		 505 479 1 479 445 1 445 476 1 476 505 1 440 476 1 445 396 1 396 440 1 203 204 1 204 274 1
		 274 275 1 275 203 1 336 275 1 274 337 1 337 336 1 432 437 1 390 438 1 391 438 1 390 332 1
		 332 391 1 272 332 1 331 272 1 134 211 1 208 209 1 273 204 1 204 125 1 120 121 1 121 200 1
		 200 199 1 199 120 1 38 39 1 201 200 1 122 201 1 199 198 1 268 197 1 198 269 1 270 269 1
		 199 270 1 55 56 1 141 140 1 140 55 1 217 140 1 141 218 1 218 217 1 142 219 1 219 218 1
		 214 137 1 138 215 1 215 214 1 216 215 1 139 216 1 456 455 1 455 409 1 409 411 1 411 456 1
		 350 351 1 351 409 1 409 408 1 408 350 1 458 487 1 457 412 1 412 458 1 353 412 1 457 411 1
		 411 353 1 351 289 1 289 290 1 290 353 1 353 351 1 291 352 1 352 290 1 290 223 1 223 291 1
		 290 410 1 410 412 1 289 222 1 222 223 1 221 222 1 289 288 1 288 221 1 343 280 1 280 281 1
		 281 345 1 345 343 1 215 282 1 282 281 1 281 214 1 346 406 1 406 404 1 404 345 1 345 346 1
		 404 405 1 405 343 1 452 404 1 406 407 1 407 452 1 349 407 1 406 348 1 348 349 1 282 346 1
		 347 346 1 282 283 1 283 347 1 158 159 1 159 236 1 236 235 1 235 158 1 301 235 1 236 302 1
		 302 301 1 364 363 1 300 301 1 301 364 1 426 425 1 364 426 1 364 365 1 365 427 1 427 426 1
		 303 366 1 366 365 1 365 302 1 302 303 1 135 212 1 122 123 1 123 202 1 202 201 1 270 201 1
		 202 271 1 271 270 1 203 202 1 124 203 1 40 41 1 330 331 1 452 453 1 453 405 1 483 453 1
		 452 454 1 454 483 1 407 408 1 408 454 1 306 369 1 369 368 1 368 241 1 305 241 1 368 304 1
		 304 305 1 367 304 1 368 428 1 428 367 1 303 304 1 367 366 1 444 480 1;
	setAttr ".ed[830:995]" 480 475 1 475 430 1 430 444 1 369 430 1 430 428 1 369 429 1
		 429 444 1 51 52 1 137 136 1 213 136 1 214 213 1 157 234 1 143 220 1 220 219 1 221 220 1
		 144 221 1 59 60 1 145 144 1 220 287 1 287 286 1 286 219 1 347 285 1 285 286 1 286 348 1
		 348 347 1 287 349 1 350 349 1 287 288 1 288 350 1 453 482 1 482 451 1 451 405 1 451 403 1
		 403 343 1 450 449 1 403 447 1 344 403 1 285 218 1 283 284 1 284 285 1 203 272 1 272 271 1
		 333 274 1 536 560 1 583 563 1 539 563 1 583 561 1 561 539 1 509 479 1 505 533 1 533 509 1
		 561 533 1 505 534 1 534 561 1 444 445 1 479 480 1 508 480 1 509 508 1 81 166 1 241 165 1
		 165 81 1 455 454 1 485 512 1 512 511 1 511 484 1 484 485 1 483 484 1 511 510 1 510 483 1
		 538 513 1 539 512 1 512 538 1 486 456 1 485 456 1 513 485 1 222 145 1 146 223 1 147 224 1
		 224 146 1 225 224 1 292 354 1 237 160 1 161 238 1 238 237 1 444 395 1 395 396 1 439 395 1
		 333 392 1 392 337 1 481 451 1 482 507 1 507 481 1 535 507 1 482 510 1 510 535 1 478 481 1
		 507 477 1 237 236 1 73 74 1 239 162 1 162 240 1 240 305 1 305 239 1 164 165 1 165 240 1
		 240 163 1 506 476 1 476 442 1 477 506 1 440 393 1 506 534 1 425 472 1 473 472 1 426 473 1
		 504 475 1 508 504 1 440 392 1 239 238 1 303 237 1 238 304 1 503 532 1 508 532 1 503 504 1
		 450 448 1 450 451 1 481 448 1 435 384 1 324 263 1 323 324 1 384 383 1 190 191 1 263 262 1
		 191 112 1 29 30 1 112 111 1 521 522 1 548 549 1 522 494 1 494 495 1 417 463 1 464 463 1
		 417 418 1 418 464 1 526 554 1 554 576 1 576 553 1 596 576 1 554 577 1 498 527 1 527 554 1
		 527 555 1 528 555 1 527 499 1 499 528 1 468 499 1 498 468 1 423 469 1 469 422 1 500 469 1
		 470 500 1 246 171 1 91 174 1 171 247 1 379 376 1 315 316 1 380 434 1;
	setAttr ".ed[996:1161]" 381 436 1 436 383 1 323 262 1 320 321 1 260 188 1 190 111 1
		 17 18 1 18 87 1 109 27 1 27 28 1 251 250 1 174 175 1 175 251 1 92 175 1 91 92 1 254 317 1
		 316 253 1 253 254 1 252 253 1 315 252 1 255 318 1 254 255 1 256 319 1 255 256 1 257 258 1
		 258 321 1 320 257 1 259 187 1 187 188 1 260 259 1 18 19 1 108 26 1 26 27 1 109 108 1
		 187 108 1 258 259 1 256 257 1 251 252 1 20 21 1 21 92 1 154 153 1 68 69 1 153 230 1
		 230 229 1 231 230 1 154 231 1 297 232 1 355 354 1 294 357 1 226 227 1 833 832 1 832 226 1
		 358 357 1 294 834 1 834 358 1 54 55 1 140 139 1 284 217 1 216 217 1 283 216 1 396 337 1
		 564 565 1 565 587 1 587 585 1 585 564 1 587 605 1 605 602 1 616 605 1 587 603 1 603 616 1
		 529 500 1 528 500 1 529 556 1 556 528 1 468 422 1 469 499 1 467 421 1 468 467 1 466 420 1
		 465 419 1 589 607 1 607 618 1 618 606 1 565 586 1 586 603 1 590 568 1 620 628 1 634 636 1
		 632 633 1 616 626 1 626 625 1 615 616 1 579 599 1 557 579 1 580 557 1 559 580 1 509 536 1
		 580 599 1 600 580 1 581 600 1 81 8 1 9 8 1 81 82 1 82 9 1 275 332 1 395 336 1 391 336 1
		 439 391 1 427 367 1 428 474 1 474 427 1 473 504 1 493 494 1 413 458 1 458 459 1 459 488 1
		 413 414 1 414 355 1 484 455 1 537 511 1 539 537 1 533 560 1 474 475 1 473 474 1 235 234 1
		 433 437 1 626 633 1 626 617 1 617 627 1 603 617 1 627 618 1 604 618 1 617 604 1 589 568 1
		 543 516 1 600 615 1 605 600 1 604 588 1 604 586 1 586 566 1 566 542 1 63 64 1 150 227 1
		 542 565 1 232 231 1 297 230 1 296 229 1 271 330 1 80 16 1 34 35 1 465 464 1 494 464 1
		 343 344 1 534 537 1 537 535 1 506 535 1 228 227 1 447 451 1 295 228 1 181 100 1 100 101 0
		 101 182 1 182 181 1 178 97 1 97 98 0 98 179 1;
	setAttr ".ed[1162:1327]" 179 178 1 107 106 1 106 24 0 24 25 1 25 107 1 98 99 0
		 99 180 1 180 179 1 175 176 1 176 177 1 177 251 1 177 178 1 178 252 1 253 179 1 180 254 1
		 180 181 1 181 255 1 182 256 1 182 183 1 183 257 1 258 184 1 184 185 1 185 259 1 187 186 1
		 186 107 1 107 108 1 21 22 1 22 93 1 93 92 1 185 186 1 183 184 1 93 176 1 25 26 1
		 99 100 0 184 103 1 103 104 0 104 185 1 101 102 0 102 183 1 102 103 0 104 105 0 105 186 1
		 105 106 0 177 96 1 96 97 0 176 95 1 95 96 0 93 94 1 94 95 0 22 23 1 23 94 0 738 739 1
		 739 763 1 763 750 1 750 738 1 753 763 1 739 740 1 740 753 1 753 750 1 820 823 1 823 819 0
		 819 809 1 809 820 1 821 820 1 809 815 1 815 821 1 821 825 1 825 826 1 826 820 1 827 823 1
		 826 827 1 822 814 1 814 818 1 818 824 1 824 822 0 822 817 0 817 814 1 813 814 1 817 813 0
		 796 775 1 775 786 1 786 798 1 798 796 1 809 808 1 808 796 1 798 809 1 812 807 1 807 796 1
		 808 812 1 807 797 1 797 796 1 785 775 1 797 785 1 808 804 1 804 816 0 816 812 1 800 812 1
		 816 803 0 803 800 1 800 801 1 801 807 1 801 811 1 811 807 1 811 805 1 805 807 1 805 797 1
		 797 794 1 794 795 1 795 797 1 797 793 1 793 794 1 793 782 1 782 783 1 783 794 1 783 772 1
		 772 795 1 759 774 1 774 758 1 758 759 1 759 760 1 760 761 1 761 774 1 761 775 1 785 774 1
		 785 784 1 784 774 1 784 773 1 773 758 1 795 784 1 762 747 1 747 748 1 748 751 1 751 762 1
		 764 762 1 751 764 1 761 762 1 764 775 1 761 746 1 746 747 1 753 764 1 751 750 1 740 733 1
		 733 752 1 752 753 1 765 753 1 752 765 1 765 777 1 777 778 1 778 753 1 776 753 1 778 787 1
		 787 776 1 776 775 1 787 799 1 799 776 1 799 786 1 786 776 1 809 814 1 813 808 1 810 815 1
		 798 810 1 819 818 0 799 810 1 813 804 1 813 779 0 779 804 1;
	setAttr ".ed[1328:1493]" 825 828 1 828 829 1 829 826 1 830 827 1 829 830 1 829 831 1
		 831 830 1 828 831 1 765 754 1 754 766 1 766 777 1 752 754 1 741 754 1 733 741 1 741 755 1
		 755 766 1 772 773 1 760 746 1 736 747 1 746 731 1 731 736 1 731 728 1 728 736 1 728 748 1
		 730 725 0 725 728 1 731 730 1 727 725 1 726 727 1 727 728 1 735 731 1 731 745 1 745 735 1
		 731 759 1 759 745 1 758 735 1 743 730 0 730 735 1 735 744 1 744 743 1 771 744 1 744 757 1
		 757 772 1 772 771 1 735 757 1 735 772 1 756 744 1 744 770 1 770 756 1 782 770 1 744 782 1
		 781 756 1 782 781 1 769 756 1 756 780 1 780 769 1 756 791 1 791 780 1 790 769 1 791 790 1
		 768 743 0 743 756 1 769 768 1 727 729 1 729 733 1 733 727 1 726 729 1 726 734 1 734 729 1
		 734 742 1 742 729 1 742 755 1 741 729 1 732 738 1 738 737 1 737 728 1 728 732 1 727 732 1
		 739 732 1 727 739 1 760 731 1 773 735 1 771 783 1 783 744 1 781 792 1 792 756 1 792 791 1
		 789 769 1 769 802 1 802 789 1 789 788 1 788 779 1 779 769 1 779 768 0 790 802 1 788 803 1
		 803 804 0 742 767 1 767 766 1 751 737 1 740 727 1 737 749 1 749 728 1 751 749 1 749 748 1
		 793 781 1 793 806 1 806 792 1 802 811 1 801 789 1 790 805 1 800 788 1 791 805 1 806 805 1
		 806 797 1 767 777 1 767 778 1 650 663 1 663 677 1 677 662 1 662 650 1 691 685 1 685 662 1
		 677 691 1 685 659 1 659 662 1 659 643 1 643 662 1 643 650 1 692 663 1 663 678 1 678 693 0
		 693 692 1 708 692 1 693 709 0 709 708 1 708 707 1 707 677 1 677 692 1 688 703 1 703 717 1
		 717 702 1 702 688 1 703 704 1 704 707 1 707 717 1 718 717 1 707 718 1 718 702 1 715 702 1
		 718 715 1 715 701 1 701 702 1 673 688 1 701 673 1 686 701 1 715 716 1 716 686 1 686 687 1
		 687 673 1 706 705 1 705 686 1 716 706 1 689 690 1 690 705 1 706 689 1;
	setAttr ".ed[1494:1659]" 690 686 1 690 674 1 674 671 1 671 686 1 671 672 1 672 687 1
		 716 700 1 700 698 1 698 706 1 712 706 1 698 711 1 711 712 1 676 706 1 712 676 1 676 689 1
		 684 697 1 697 698 1 700 684 1 684 682 1 682 697 1 681 698 1 682 681 1 668 698 1 681 668 1
		 710 698 1 668 710 1 710 711 1 700 699 1 699 683 1 683 684 1 683 669 1 669 670 1 670 684 1
		 656 684 1 670 656 1 656 682 1 691 704 1 704 685 1 685 688 1 673 659 1 658 659 1 673 672 1
		 672 658 1 658 649 1 649 643 1 671 649 1 660 661 1 661 674 1 674 675 1 675 660 1 660 648 1
		 648 649 1 649 661 1 676 660 1 675 676 1 676 648 1 696 695 1 695 665 1 665 680 1 680 696 1
		 665 648 1 648 680 1 676 680 1 676 696 1 679 694 1 694 668 1 668 679 1 645 679 1 668 645 1
		 645 665 1 665 679 1 695 694 1 668 653 1 653 645 1 668 666 1 666 653 1 652 653 1 666 667 1
		 667 652 1 652 642 1 642 645 1 667 656 1 656 652 1 656 642 1 647 655 1 655 654 1 654 646 1
		 646 647 1 646 641 1 641 642 1 642 647 1 656 647 1 656 655 1 654 657 1 657 646 1 657 641 1
		 683 657 1 657 669 1 654 669 1 655 670 1 667 682 1 666 681 1 694 710 1 695 711 1 696 712 1
		 675 689 1 720 723 0 723 719 1 719 720 1 719 708 1 709 720 0 723 722 0 722 718 1 718 719 1
		 722 721 0 721 715 1 721 714 0 714 716 1 714 700 1 714 713 0 713 699 1 645 648 1 639 642 1
		 641 638 1 638 639 1 639 645 1 639 648 1 639 643 1 643 644 1 644 651 0 651 650 1 651 664 0
		 664 663 1 639 640 1 640 644 0 638 637 1 637 640 0 664 678 0 294 833 1 833 834 1 834 836 1
		 836 837 1 837 358 1 835 225 1 1088 1087 1 1087 1146 1 1146 1150 1 1150 1088 1 862 20 1
		 19 861 1 861 862 1 858 857 1 857 941 1 941 861 1 861 858 1 1021 945 1 945 941 1 941 1017 1
		 1017 1021 1 1086 1021 1 1017 1082 1 1082 1086 1 1018 1083 1 1083 1146 1 1146 1082 1
		 1082 1018 1;
	setAttr ".ed[1660:1825]" 882 29 1 28 881 1 881 882 1 880 959 1 959 960 1 960 881 1
		 881 880 1 1033 961 1 961 960 1 960 1032 1 1032 1033 1 1031 1092 1 1092 1093 1 1093 1032 1
		 1032 1031 1 1154 1094 1 1094 1093 1 1093 1153 1 1153 1154 1 1091 1090 1 1090 1152 1
		 1152 1153 1 1153 1091 1 1090 1089 1 1089 1151 1 1151 1152 1 1089 1088 1 1150 1151 1
		 1169 1110 1 1110 1165 1 1165 1169 1 1218 1171 1 1171 1173 1 1173 1221 1 1221 1218 1
		 1169 1168 1 1168 1111 1 1111 1110 1 982 981 1 981 1111 1 1111 1112 1 1112 982 1 1170 1172 1
		 1172 1113 1 1113 1112 1 1112 1170 1 1171 1049 1 1049 1113 1 1113 1173 1 982 1049 1
		 1049 983 1 983 982 1 1051 984 1 984 983 1 983 1050 1 1050 1051 1 1488 1489 0 1489 726 1
		 726 1488 0 1378 1390 1 1390 1379 1 1379 1361 1 1361 1378 1 1399 1390 1 1390 1398 1
		 1398 1405 1 1405 1399 1 1384 1395 1 1395 1385 1 1385 1369 1 1369 1384 1 1403 1395 1
		 1395 1402 1 1402 1407 1 1407 1403 1 1394 1402 1 1384 1394 1 1398 1404 1 1404 1405 1
		 849 17 1 14 843 1 843 849 1 859 848 1 848 842 1 842 850 1 850 859 1 857 848 1 859 942 1
		 942 857 1 849 848 1 858 849 1 846 855 1 855 856 1 856 847 1 847 846 1 846 838 1 838 844 1
		 844 854 1 854 846 1 841 838 1 838 839 1 839 840 1 840 841 1 854 937 1 937 1013 1
		 1013 938 1 938 854 1 1077 1013 1 937 1012 1 1012 1077 1 1013 1078 1 1078 1014 1 1014 938 1
		 1295 1294 1 1294 1321 1 1321 1322 1 1322 1295 1 1266 1294 1 1295 1267 1 1267 1266 1
		 1292 1318 1 1318 1342 1 1342 1320 1 1320 1292 1 1341 1318 1 1318 1291 1 1291 1317 1
		 1317 1341 1 1363 1342 1 1341 1363 1 1319 1321 1 1294 1293 1 1293 1319 1 46 902 0
		 902 903 1 903 47 1 1237 1267 1 1267 1268 1 1268 1238 1 1238 1237 1 1237 1236 1 1236 1266 1
		 1264 1291 1 1292 1264 1 1263 1291 1 1264 1234 1 1234 1263 1 6 840 1 840 843 1 7 841 1
		 847 839 1 839 842 1 842 843 1 847 850 1 1296 1268 1 1295 1296 1 1269 1268 1 1296 1297 1
		 1297 1269 1 1296 1323 1 1323 1324 1 1324 1297 1 886 33 1 32 885 1 885 886 1 31 884 1;
	setAttr ".ed[1826:1991]" 884 885 1 1036 964 1 964 963 1 963 1035 1 1035 1036 1
		 885 964 1 964 965 1 965 886 1 1037 965 1 1036 1037 1 966 965 1 1037 1038 1 1038 966 1
		 966 887 1 887 886 1 30 883 1 883 884 1 963 962 1 962 1034 1 1034 1035 1 884 963 1
		 1384 1368 1 1368 1383 1 1383 1394 1 1348 1368 1 1368 1349 1 1349 1326 1 1326 1348 1
		 1367 1383 1 1348 1367 1 1322 1323 1 70 926 1 926 927 1 927 71 1 925 926 1 69 925 1
		 1192 1069 1 1069 1131 1 1131 1191 1 1191 1192 1 1003 1069 1 1069 1070 1 1070 1004 1
		 1004 1003 1 1133 1070 1 1069 1132 1 1132 1133 1 1071 1070 1 1133 1134 1 1134 1071 1
		 1071 1005 1 1005 1004 1 1004 927 1 926 1003 1 1193 1132 1 1192 1193 1 1317 1340 1
		 1340 1362 1 1362 1341 1 1316 1340 1 1317 1290 1 1290 1316 1 1379 1362 1 1340 1361 1
		 1362 1380 1 1380 1363 1 1131 1130 1 1130 1190 1 1190 1191 1 1067 1130 1 1131 1068 1
		 1068 1067 1 1067 1066 1 1066 1583 1 1583 1067 1 922 923 1 923 67 1 66 922 1 1000 923 1
		 922 999 1 999 1000 1 923 924 1 924 68 1 940 856 1 855 939 1 939 940 1 860 856 1 940 944 1
		 944 860 1 16 845 1 845 841 1 853 80 1 79 935 1 935 853 1 1391 1380 1 1379 1391 1
		 921 65 1 64 920 1 920 921 1 921 922 1 998 1579 1 1579 1582 1 1582 1066 1 1066 998 1
		 1098 1037 1 1036 1097 1 1097 1098 1 1098 1099 1 1099 1038 1 1096 1097 1 1035 1096 1
		 1157 1097 1 1096 1156 1 1156 1157 1 1158 1098 1 1157 1158 1 1369 1349 1 1327 1349 1
		 1369 1350 1 1350 1327 1 1038 967 1 967 966 1 967 888 1 888 887 1 887 34 1 1195 1133 1
		 1132 1194 1 1194 1195 1 1195 1196 1 1196 1134 1 1242 1195 1 1194 1241 1 1241 1242 1
		 1096 1095 1 1095 1155 1 1155 1156 1 1079 1015 1 1015 939 1 939 1014 1 1014 1079 1
		 1015 1016 1 1016 940 1 855 938 1 1141 1078 1 1077 1141 1 1078 1142 1 1142 1079 1
		 1202 1142 1 1141 1202 1 1203 1142 1 1202 1209 1 1209 1203 1 1203 1143 1 1143 1079 1
		 1261 1289 1 1289 1262 1 1262 1232 1 1232 1261 1 1316 1289 1 1289 1315 1 1315 1339 1
		 1339 1316 1 1314 1338 1 1338 1315 1 1315 1288 1 1288 1314 1;
	setAttr ".ed[1992:2157]" 1359 1338 1 1314 1337 1 1337 1359 1 1360 1338 1 1359 1377 1
		 1377 1360 1 1063 1581 1 1581 995 1 995 1062 1 1062 1063 1 1063 1064 1 1064 1578 1
		 1578 1581 1 919 996 1 996 997 1 997 920 1 920 919 1 919 63 1 62 918 1 918 919 1 1081 1145 1
		 1145 1149 1 1149 1085 1 1085 1081 1 1157 1145 1 1145 1144 1 1144 1158 1 1080 1144 1
		 1081 1080 1 1204 1144 1 1080 1143 1 1143 1204 1 1204 1159 1 1159 1158 1 1081 1016 1
		 1015 1080 1 1016 1020 1 1020 944 1 897 898 1 898 45 0 44 897 1 977 899 1 899 898 0
		 897 977 1 1019 944 1 1020 1084 1 1084 1019 1 1019 943 1 943 860 1 1085 1020 1 1085 1148 1
		 1148 1084 1 1261 1231 1 1231 1260 1 1260 1288 1 1288 1261 1 1230 1231 1 1231 1186 1
		 1186 1185 1 1185 1230 1 1286 1287 1 1287 1260 1 1260 1259 1 1259 1286 1 1313 1287 1
		 1286 1312 1 1312 1313 1 1039 1100 1 1100 1101 1 1101 1040 1 1040 1039 1 1099 1100 1
		 1039 1038 1 1160 1100 1 1099 1159 1 1159 1160 1 1189 1190 1 1130 1129 1 1129 1189 1
		 1187 1233 1 1233 1188 1 1188 1128 1 1128 1187 1 1263 1233 1 1233 1262 1 1262 1290 1
		 1290 1263 1 967 968 1 968 889 1 889 888 1 890 889 1 968 969 1 969 890 1 889 36 1
		 35 888 1 1396 1385 1 1403 1396 1 1370 1385 1 1396 1386 1 1386 1370 1 1187 1127 1
		 1127 1186 1 1186 1232 1 1232 1187 1 1126 1127 1 1127 1065 1 1065 1064 1 1064 1126 1
		 1184 1125 1 1125 1123 1 1123 1181 1 1181 1184 1 1301 1272 1 1272 1300 1 1300 1328 1
		 1328 1301 1 1241 1272 1 1272 1273 1 1273 1242 1 1302 1273 1 1301 1302 1 1273 1274 1
		 1274 1243 1 1243 1242 1 978 900 1 900 899 0 977 978 1 979 901 1 901 900 0 978 979 1
		 1259 1258 1 1258 1285 1 1285 1286 1 1353 1372 1 1372 1354 1 1354 1331 1 1331 1353 1
		 1373 1372 1 1353 1352 1 1352 1373 1 1355 1372 1 1373 1356 1 1356 1355 1 1311 1333 1
		 1333 1335 1 1335 1312 1 1312 1311 1 1355 1333 1 1333 1309 1 1309 1334 1 1334 1355 1
		 1302 1329 1 1329 1307 1 1307 1303 1 1303 1302 1 1330 1329 1 1301 1330 1 1353 1329 1
		 1330 1352 1 902 901 0 979 903 1 1160 1208 1 1208 1161 1 1161 1102 1 1102 1160 1 890 37 1;
	setAttr ".ed[2158:2323]" 1257 1285 1 1258 1228 1 1228 1257 1 1311 1285 1 1257 1284 1
		 1284 1311 1 1156 1149 1 1149 1206 1 1206 1148 1 927 928 1 928 72 1 904 48 1 903 904 1
		 905 49 1 904 905 1 913 57 1 56 912 1 912 913 1 909 53 1 52 908 1 908 909 1 909 910 1
		 910 54 1 906 50 1 905 906 1 906 907 1 907 51 1 928 929 1 929 73 1 914 58 1 913 914 1
		 914 915 1 915 59 1 39 892 1 892 893 1 893 40 1 79 851 0 851 934 1 934 935 1 43 896 1
		 896 897 1 931 75 1 74 930 1 930 931 1 932 76 1 931 932 1 851 77 0 77 933 1 933 934 1
		 61 917 1 917 918 1 890 891 1 891 38 1 60 916 1 916 917 1 42 895 1 895 896 1 1205 1148 1
		 1206 1207 1 1207 1205 1 1147 1084 1 1205 1147 1 1083 1019 1 1147 1083 1 1018 943 1
		 41 894 1 894 895 1 932 933 1 943 859 1 850 860 1 1047 976 1 976 1105 1 1105 1109 1
		 1109 1047 1 977 976 1 1047 978 1 896 976 1 1106 1105 1 976 1044 1 1044 1106 1 1106 1165 1
		 1165 1109 1 1048 981 1 981 980 1 980 1048 1 1109 1048 1 980 1047 1 1219 1172 1 1170 1217 1
		 1217 1219 1 1172 1220 1 1220 1173 1 1049 1050 1 1171 1115 1 1115 1050 1 1048 1110 1
		 981 905 1 904 980 1 1168 1170 1 1214 1168 1 1165 1214 1 1213 1212 1 1212 1106 1 1106 1164 1
		 1164 1213 1 1249 1212 1 1213 1248 1 1248 1249 1 1214 1212 1 1249 1217 1 1217 1214 1
		 1044 1104 1 1104 1164 1 1210 1202 1 1141 1200 1 1200 1210 1 1247 1216 1 1216 1250 1
		 1250 1276 1 1276 1247 1 1167 1216 1 1247 1211 1 1211 1167 1 1046 1045 1 1045 975 1
		 975 974 1 974 1046 1 1108 1045 1 1046 1107 1 1107 1108 1 1209 1161 1 1208 1203 1
		 1103 1161 1 1209 1162 1 1162 1103 1 1103 1043 1 1043 1102 1 982 905 1 980 979 1 975 1044 1
		 896 975 1 970 971 1 971 892 1 892 891 1 891 970 1 971 972 1 972 893 1 969 970 1 1040 969 1
		 968 1039 1 1040 1041 1 1041 970 1 911 912 1 55 911 1 989 912 1 911 988 1 988 989 1
		 990 913 1 989 990 1 986 909 1 908 985 1 985 986 1 986 987 1 987 910 1 1182 1180 1
		 1180 1226 1;
	setAttr ".ed[2324:2489]" 1226 1227 1 1227 1182 1 1179 1180 1 1180 1122 1 1122 1121 1
		 1121 1179 1 1183 1228 1 1258 1229 1 1229 1183 1 1182 1228 1 1183 1124 1 1124 1182 1
		 1124 1061 1 1061 1060 1 1060 1122 1 1122 1124 1 994 1061 1 1061 1123 1 1123 1062 1
		 1062 994 1 1181 1061 1 1183 1181 1 993 1060 1 994 993 1 1059 1060 1 993 992 1 992 1059 1
		 1116 1052 1 1052 1051 1 1051 1114 1 1114 1116 1 985 1052 1 1052 1053 1 1053 986 1
		 1116 1175 1 1175 1177 1 1177 1117 1 1117 1116 1 1176 1175 1 1114 1176 1 1178 1177 1
		 1175 1223 1 1223 1178 1 1119 1177 1 1178 1120 1 1120 1119 1 1117 1053 1 1054 1053 1
		 1117 1118 1 1118 1054 1 1006 1007 1 1007 930 1 930 929 1 929 1006 1 1073 1007 1 1006 1072 1
		 1072 1073 1 1072 1071 1 1134 1135 1 1135 1072 1 1196 1197 1 1197 1135 1 1198 1136 1
		 1136 1135 1 1197 1198 1 1073 1136 1 1136 1137 1 1137 1074 1 1074 1073 1 983 906 1
		 972 973 1 973 894 1 894 893 1 1042 973 1 972 1041 1 1041 1042 1 973 974 1 974 895 1
		 1102 1101 1 1224 1223 1 1176 1224 1 1225 1223 1 1224 1254 1 1254 1225 1 1179 1178 1
		 1225 1179 1 1012 1139 1 1139 1140 1 1140 1077 1 1075 1139 1 1012 1076 1 1076 1075 1
		 1199 1139 1 1075 1138 1 1138 1199 1 1137 1138 1 1075 1074 1 1201 1246 1 1246 1251 1
		 1251 1215 1 1215 1201 1 1201 1140 1 1199 1201 1 1200 1140 1 1215 1200 1 907 908 1
		 907 984 1 984 985 1 1005 928 1 991 914 1 990 991 1 991 992 1 992 915 1 915 916 1
		 990 1057 1 1057 1058 1 1058 991 1 1119 1057 1 1057 1056 1 1056 1118 1 1118 1119 1
		 1120 1058 1 1059 1058 1 1120 1121 1 1121 1059 1 1176 1222 1 1222 1253 1 1253 1224 1
		 1174 1222 1 1114 1174 1 1220 1221 1 1218 1174 1 1174 1115 1 989 1056 1 1056 1055 1
		 1055 1054 1 1043 974 1 1042 1043 1 1045 1104 1 1331 1307 1 1334 1354 1 1332 1354 1
		 1334 1310 1 1310 1332 1 1304 1276 1 1250 1280 1 1280 1304 1 1305 1276 1 1304 1332 1
		 1332 1305 1 1251 1250 1 1216 1215 1 1251 1279 1 1279 1280 1 936 1012 1 937 852 1
		 852 936 1 1225 1226 1 1255 1282 1 1282 1283 1 1283 1256 1 1256 1255 1 1281 1282 1
		 1255 1254 1 1254 1281 1 1284 1309 1;
	setAttr ".ed[2490:2655]" 1309 1283 1 1283 1310 1 1227 1257 1 1227 1256 1 1256 1284 1
		 994 917 1 916 993 1 917 995 1 995 918 1 995 996 1 1125 1063 1 1009 932 1 931 1008 1
		 1008 1009 1 1166 1215 1 1167 1166 1 1166 1210 1 1163 1104 1 1108 1163 1 1278 1253 1
		 1222 1252 1 1252 1278 1 1281 1253 1 1278 1306 1 1306 1281 1 1248 1278 1 1252 1249 1
		 1007 1008 1 1076 1011 1 1011 933 1 933 1010 1 1010 1076 1 934 1011 1 1011 936 1 936 935 1
		 1213 1247 1 1247 1277 1 1277 1248 1 1164 1211 1 1305 1277 1 1243 1196 1 1243 1244 1
		 1244 1197 1 1246 1275 1 1275 1279 1 1163 1211 1 1009 1010 1 1075 1009 1 1008 1074 1
		 1303 1274 1 1275 1274 1 1303 1279 1 1219 1221 1 1219 1252 1 1222 1221 1 1155 1206 1
		 1034 1095 1 1095 1094 1 1154 1155 1 962 961 1 1033 1034 1 883 962 1 882 883 1 1320 1319 1
		 1293 1292 1 1265 1293 1 1266 1265 1 1234 1188 1 1189 1188 1 1234 1235 1 1235 1189 1
		 1324 1347 1 1347 1325 1 1325 1297 1 1348 1325 1 1347 1367 1 1325 1298 1 1298 1269 1
		 1326 1298 1 1270 1298 1 1326 1299 1 1299 1270 1 1270 1239 1 1239 1269 1 1240 1194 1
		 1193 1240 1 1240 1271 1 1271 1241 1 942 1017 1 945 862 1 1018 942 1 1147 1150 1 1087 1086 1
		 1205 1151 1 1207 1152 1 1154 1207 1 1033 1094 1 1092 1091 1 959 1031 1 882 961 1
		 858 18 1 27 880 1 946 945 1 1021 1022 1 1022 946 1 946 863 1 863 862 1 1024 1087 1
		 1088 1025 1 1025 1024 1 1024 1023 1 1023 1086 1 1089 1026 1 1026 1025 1 1090 1027 1
		 1027 1026 1 1092 1029 1 1029 1028 1 1028 1091 1 959 958 1 958 1030 1 1030 1031 1
		 26 879 1 879 880 1 879 958 1 1030 1029 1 1028 1027 1 1023 1022 1 863 21 1 924 925 1
		 1001 924 1 1000 1001 1 1001 1002 1 1002 925 1 1003 1068 1 1125 1126 1 1128 1065 1
		 1578 1579 1 998 997 1 997 1578 1 1580 1065 1 1128 1129 1 1129 1580 1 910 911 1 988 1055 1
		 988 987 1 987 1054 1 1108 1167 1 1356 1358 1 1358 1336 1 1336 1335 1 1335 1356 1
		 1376 1358 1 1373 1376 1 1374 1358 1 1376 1387 1 1387 1374 1 1271 1300 1 1327 1300 1
		 1271 1299 1 1299 1327 1 1270 1240 1 1193 1239 1 1192 1238 1 1238 1239 1 1191 1237 1;
	setAttr ".ed[2656:2821]" 1190 1236 1 1377 1389 1 1389 1378 1 1378 1360 1 1357 1336 1
		 1374 1357 1 1339 1361 1 1399 1391 1 1407 1405 1 1404 1403 1 1396 1397 1 1397 1387 1
		 1387 1386 1 1370 1350 1 1350 1328 1 1328 1351 1 1351 1330 1 1307 1280 1 1370 1351 1
		 1351 1371 1 1371 1352 1 844 852 1 853 852 1 844 845 1 845 853 1 1103 1046 1 1107 1166 1
		 1107 1162 1 1162 1210 1 1245 1199 1 1138 1198 1 1198 1245 1 1275 1244 1 1265 1264 1
		 1229 1184 1 1230 1229 1 1259 1230 1 1185 1184 1 1126 1185 1 1226 1255 1 1282 1308 1
		 1308 1310 1 1331 1304 1 1246 1245 1 1245 1244 1 1005 1006 1 1208 1204 1 1404 1397 1
		 1388 1397 1 1398 1388 1 1388 1374 1 1389 1398 1 1389 1375 1 1375 1388 1 1339 1360 1
		 1287 1314 1 1386 1371 1 1371 1376 1 1359 1375 1 1357 1375 1 1337 1357 1 1313 1337 1
		 998 921 1 1336 1313 1 1002 1003 1 1001 1068 1 1000 1067 1 1101 1042 1 1235 1236 1
		 1235 1265 1 1115 1114 1 1308 1305 1 1306 1308 1 1306 1277 1 998 999 1 1222 1218 1
		 999 1066 1 953 872 1 872 871 0 871 952 1 952 953 1 950 869 1 869 868 0 868 949 1
		 949 950 1 24 877 0 877 878 1 878 25 1 951 870 1 870 869 0 950 951 1 1022 948 1 948 947 1
		 947 946 1 949 948 1 1023 949 1 1025 951 1 950 1024 1 1026 952 1 952 951 1 1027 953 1
		 954 953 1 1028 954 1 956 955 1 955 1029 1 1030 956 1 878 957 1 957 958 1 879 878 1
		 864 22 1 863 864 1 957 956 1 955 954 1 947 864 1 871 870 0 956 875 1 875 874 0 874 955 1
		 954 873 1 873 872 0 874 873 0 957 876 1 876 875 0 877 876 0 868 867 0 867 948 1 867 866 0
		 866 947 1 866 865 0 865 864 1 865 23 0 1511 1524 1 1524 1501 1 1501 1500 1 1500 1511 1
		 1502 1501 1 1524 1514 1 1514 1502 1 1511 1514 1 1566 1573 1 1573 823 0 823 1574 1
		 1574 1566 1 815 1566 1 1574 821 1 1576 825 1 1574 1576 1 827 1576 1 818 1570 1 1570 1575 1
		 1575 824 0 1570 1572 1 1572 1575 0 1570 1569 1 1569 1572 0 1556 1545 1 1545 1535 1
		 1535 1554 1 1554 1556 1 1554 1565 1 1565 1566 1 1566 1556 1 1554 1564 1 1564 1568 1
		 1568 1565 1 1554 1555 1;
	setAttr ".ed[2822:2987]" 1555 1564 1 1535 1544 1 1544 1555 1 1571 1561 0 1561 1565 1
		 1568 1571 1 1560 1571 0 1568 1557 1 1557 1560 1 1558 1557 1 1564 1558 1 1567 1558 1
		 1564 1567 1 1562 1567 1 1564 1562 1 1555 1562 1 1553 1552 1 1552 1555 1 1555 1553 1
		 1552 1551 1 1551 1555 1 1552 1542 1 1542 1541 1 1541 1551 1 1532 1542 1 1553 1532 1
		 1519 1534 1 1534 1520 1 1520 1519 1 1522 1521 1 1521 1520 1 1534 1522 1 1535 1522 1
		 1534 1544 1 1534 1543 1 1543 1544 1 1519 1533 1 1533 1543 1 1543 1553 1 1512 1509 1
		 1509 1508 1 1508 1523 1 1523 1512 1 1523 1525 1 1525 1512 1 1535 1525 1 1523 1522 1
		 1508 1507 1 1507 1522 1 1511 1512 1 1525 1514 1 1514 1513 1 1513 1496 1 1496 1502 1
		 1514 1526 1 1526 1513 1 778 1537 1 1537 1526 1 1514 778 1 1514 1536 1 1536 787 1
		 1535 1536 1 1536 799 1 1545 799 1 1536 1545 1 1570 1566 1 1565 1569 1 810 1556 1
		 818 1573 0 1561 1569 1 1538 1569 0 1561 1538 1 1577 828 1 1576 1577 1 830 1577 1
		 831 1577 1 1537 1527 1 1527 1515 1 1515 1526 1 1515 1513 1 1515 1503 1 1503 1496 1
		 1527 1516 1 1516 1503 1 1533 1532 1 1507 1521 1 1494 1507 1 1508 1498 1 1498 1494 1
		 1498 1491 1 1491 1494 1 1509 1491 1 1491 1489 1 1489 1493 0 1493 1494 1 1489 1490 1
		 1490 726 1 1491 1490 1 1506 1494 1 1494 1497 1 1497 1506 1 1520 1494 1 1506 1520 1
		 1497 1519 1 1505 1497 1 1497 1493 1 1493 1504 0 1504 1505 1 1532 1518 1 1518 1505 1
		 1505 1531 1 1531 1532 1 1518 1497 1 1532 1497 1 1530 1505 1 1505 1517 1 1517 1530 1
		 1530 1541 1 1541 1505 1 1517 1540 1 1540 1541 1 1539 1517 1 1517 1529 1 1529 1539 1
		 1549 1517 1 1539 1549 1 1529 1548 1 1548 1549 1 1517 1504 1 1504 1528 0 1528 1529 1
		 1496 1492 1 1492 1490 1 1490 1496 1 1492 726 1 1492 734 1 1492 742 1 1492 1503 1
		 1516 742 1 1491 1499 1 1499 1500 1 1500 1495 1 1495 1491 1 1495 1490 1 1495 1501 1
		 1501 1490 1 1494 1521 1 1497 1533 1 1542 1531 1 1505 1542 1 1550 1540 1 1517 1550 1
		 1549 1550 1 1559 1529 1 1529 1547 1 1547 1559 1 1529 1538 1 1538 1546 1 1546 1547 1
		 1528 1538 0 1559 1548 1 1561 1560 0 1560 1546 1 1527 767 1 1499 1512 1 1490 1502 1;
	setAttr ".ed[2988:3153]" 1510 1499 1 1491 1510 1 1510 1512 1 1509 1510 1 1540 1551 1
		 1550 1563 1 1563 1551 1 1567 1559 1 1547 1558 1 1562 1548 1 1546 1557 1 1562 1549 1
		 1562 1563 1 1555 1563 1 1537 767 1 1429 1444 1 1444 1430 1 1430 1418 1 1418 1429 1
		 1429 1451 1 1451 1457 1 1457 1444 1 1426 1451 1 1429 1426 1 1429 1411 1 1411 1426 1
		 1418 1411 1 1459 1445 0 1445 1430 1 1430 1458 1 1458 1459 1 1474 1459 0 1458 1473 1
		 1473 1474 1 1444 1472 1 1472 1473 1 1458 1444 1 1467 1481 1 1481 1468 1 1468 1454 1
		 1454 1467 1 1472 1469 1 1469 1468 1 1481 1472 1 1481 1482 1 1482 1472 1 1467 1482 1
		 1467 1479 1 1479 1482 1 1467 1466 1 1466 1479 1 1454 1440 1 1440 1466 1 1480 1479 1
		 1466 1452 1 1452 1480 1 1440 1453 1 1453 1452 1 1452 1470 1 1470 1471 1 1471 1480 1
		 1470 1456 1 1456 1455 1 1455 1471 1 1452 1456 1 1452 1438 1 1438 1441 1 1441 1456 1
		 1453 1439 1 1439 1438 1 1464 1465 1 1465 1480 1 1471 1464 1 1476 1464 1 1471 1477 1
		 1477 1476 1 1471 1443 1 1443 1477 1 1455 1443 1 1464 1463 1 1463 1450 1 1450 1465 1
		 1449 1450 1 1463 1449 1 1464 1448 1 1448 1449 1 1464 1435 1 1435 1448 1 1464 1475 1
		 1475 1435 1 1476 1475 1 1450 683 1 699 1465 1 1450 1437 1 1437 1436 1 1436 683 1
		 1450 1424 1 1424 1437 1 1449 1424 1 1469 1457 1 1451 1469 1 1454 1451 1 1426 1440 1
		 1439 1440 1 1426 1425 1 1425 1439 1 1417 1425 1 1411 1417 1 1417 1438 1 1442 1441 1
		 1441 1428 1 1428 1427 1 1427 1442 1 1417 1416 1 1416 1427 1 1428 1417 1 1427 1443 1
		 1443 1442 1 1416 1443 1 1447 1432 1 1432 1461 1 1461 1462 1 1462 1447 1 1447 1416 1
		 1416 1432 1 1447 1443 1 1462 1443 1 1435 1460 1 1460 1446 1 1446 1435 1 1446 1413 1
		 1413 1435 1 1446 1432 1 1432 1413 1 1460 1461 1 1413 1421 1 1421 1435 1 1421 1433 1
		 1433 1435 1 1434 1433 1 1421 1420 1 1420 1434 1 1413 1410 1 1410 1420 1 1424 1434 1
		 1420 1424 1 1410 1424 1 1414 1422 1 1422 1423 1 1423 1415 1 1415 1414 1 1410 641 1
		 641 1414 1 1415 1410 1 1415 1424 1 1423 1424 1 657 1422 1 1414 657 1 1436 657 1 1436 1422 1
		 1437 1423 1 1449 1434 1 1448 1433 1 1475 1460 1 1476 1461 1 1477 1462 1;
	setAttr ".ed[3154:3271]" 1455 1442 1 1483 1487 1 1487 1484 0 1484 1483 1 1473 1483 1
		 1484 1474 0 1483 1482 1 1482 1486 1 1486 1487 0 1479 1485 1 1485 1486 0 1480 1478 1
		 1478 1485 0 1465 1478 1 713 1478 0 1416 1413 1 1410 1408 1 1408 638 1 1413 1408 1
		 1416 1408 1 1411 1408 1 1419 1412 0 1412 1411 1 1418 1419 1 1431 1419 0 1430 1431 1
		 1412 1409 0 1409 1408 1 1409 637 0 1445 1431 0 1579 1065 1 1580 1579 1 1129 1583 1
		 1583 1582 1 1582 1580 1 996 1581 1 573 548 1 550 574 1 574 573 1 551 575 1 575 574 1
		 576 595 1 595 575 1 575 553 1 635 630 1 630 631 1 636 635 1 628 635 1 620 629 1 629 635 1
		 609 621 1 621 629 1 630 622 1 622 623 1 621 630 1 592 610 1 610 621 1 622 611 1 611 612 1
		 610 622 1 571 593 1 593 610 1 594 595 1 596 594 1 572 549 1 573 572 1 595 573 1 611 594 1
		 593 611 1 572 593 1 594 572 1 1345 1321 1 1319 1344 1 1344 1345 1 1346 1322 1 1345 1346 1
		 1346 1366 1 1366 1347 1 1324 1346 1 1402 1401 1 1401 1406 1 1406 1407 1 1406 1399 1
		 1400 1391 1 1406 1400 1 1392 1380 1 1400 1392 1 1393 1401 1 1394 1393 1 1401 1392 1
		 1381 1363 1 1392 1381 1 1383 1382 1 1382 1393 1 1393 1381 1 1364 1342 1 1381 1364 1
		 1366 1365 1 1365 1367 1 1320 1343 1 1343 1344 1 1344 1366 1 1365 1382 1 1382 1364 1
		 1364 1343 1 1343 1365 1 1584 1585 1 1585 1586 1 1586 1587 1 1587 1584 1 1588 1589 1
		 1589 1590 1 1590 1591 1 1591 1588 1 1589 1584 1 1587 1590 1 1586 1591 1 1585 1588 1;
	setAttr -s 1592 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[166:331]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[332:497]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[498:663]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[664:829]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[830:995]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[996:1161]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1162:1327]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1328:1493]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1494:1591]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 1680 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 4 8 9 10
		f 4 12 13 14 15
		mu 0 4 11 8 12 13
		f 4 16 -16 17 18
		mu 0 4 14 11 13 15
		f 4 19 20 21 22
		mu 0 4 14 1 16 17
		f 4 23 24 25 26
		mu 0 4 18 19 20 21
		f 4 27 28 29 30
		mu 0 4 18 22 23 24
		f 4 31 32 33 34
		mu 0 4 25 22 26 27
		f 4 35 36 37 38
		mu 0 4 25 28 29 30
		f 4 39 40 41 42
		mu 0 4 31 28 32 33
		f 4 43 44 45 46
		mu 0 4 31 34 35 36
		f 4 47 48 49 -45
		mu 0 4 34 37 38 35
		f 4 50 -4 51 -49
		mu 0 4 37 0 3 38
		f 3 52 53 54
		mu 0 3 39 40 41
		f 4 55 56 57 58
		mu 0 4 42 43 44 45
		f 4 59 60 61 -54
		mu 0 4 40 46 47 41
		f 4 62 63 64 65
		mu 0 4 48 46 49 50
		f 4 66 67 68 69
		mu 0 4 48 51 52 53
		f 4 70 71 72 -57
		mu 0 4 43 51 54 44
		f 3 73 74 75
		mu 0 3 55 54 50
		f 4 76 77 78 79
		mu 0 4 56 55 57 58
		f 3 80 81 82
		mu 0 3 59 60 61
		f 4 83 84 85 86
		mu 0 4 62 63 64 65
		f 4 87 88 89 90
		mu 0 4 66 67 64 68
		f 4 91 92 93 94
		mu 0 4 69 70 71 72
		f 4 95 96 97 98
		mu 0 4 73 74 71 75
		f 4 -94 -97 99 100
		mu 0 4 72 71 74 76
		f 3 101 -88 102
		mu 0 3 77 67 66
		f 4 103 104 105 106
		mu 0 4 78 79 80 81
		f 4 107 108 109 110
		mu 0 4 82 83 84 85
		f 4 111 -110 112 113
		mu 0 4 86 85 84 9
		f 4 -11 -113 114 115
		mu 0 4 10 9 84 81
		f 4 116 117 118 119
		mu 0 4 87 88 89 90
		f 4 120 121 122 123
		mu 0 4 91 92 93 90
		f 4 124 125 126 127
		mu 0 4 94 95 93 96
		f 4 128 129 130 131
		mu 0 4 97 98 99 91
		f 4 132 -130 133 134
		mu 0 4 100 101 102 103
		f 4 135 136 -129 137
		mu 0 4 104 105 98 97
		f 4 138 139 140 141
		mu 0 4 106 107 108 109
		f 4 142 -141 143 144
		mu 0 4 110 109 108 111
		f 4 145 146 147 148
		mu 0 4 112 113 114 115
		f 4 149 150 151 152
		mu 0 4 116 117 114 118
		f 4 -152 -147 153 154
		mu 0 4 118 114 113 119
		f 4 155 -140 156 157
		mu 0 4 120 108 107 121
		f 4 158 159 160 161
		mu 0 4 122 123 124 125
		f 4 162 163 164 165
		mu 0 4 126 127 110 128
		f 4 166 -165 -145 167
		mu 0 4 129 128 110 111
		f 4 -148 -151 168 169
		mu 0 4 115 114 117 130
		f 4 170 -169 171 172
		mu 0 4 131 130 117 132
		f 4 173 174 -104 175
		mu 0 4 94 133 79 78
		f 4 176 177 -174 -128
		mu 0 4 96 134 133 94
		f 4 -123 -126 178 -120
		mu 0 4 90 93 95 87
		f 4 179 180 -125 -176
		mu 0 4 78 83 95 94
		f 4 -179 -181 -108 181
		mu 0 4 87 95 83 82
		f 4 -115 -109 -180 -107
		mu 0 4 81 84 83 78
		f 4 -143 -164 182 183
		mu 0 4 109 110 127 135
		f 4 184 -183 185 186
		mu 0 4 136 135 127 137
		f 4 187 188 -185 189
		mu 0 4 138 139 135 136
		f 4 190 191 192 193
		mu 0 4 140 141 142 143
		f 4 194 195 -191 196
		mu 0 4 144 145 141 140
		f 4 197 198 199 200
		mu 0 4 146 147 148 149
		f 4 201 202 203 -194
		mu 0 4 143 150 148 140
		f 4 -200 -203 204 205
		mu 0 4 149 148 150 151
		f 4 206 -205 207 208
		mu 0 4 152 151 150 153
		f 4 209 -208 -202 210
		mu 0 4 154 153 150 143
		f 4 211 212 -195 213
		mu 0 4 155 156 145 144
		f 4 214 215 -198 216
		mu 0 4 157 158 147 146
		f 4 -204 -199 217 -197
		mu 0 4 140 148 147 144
		f 4 218 219 220 -101
		mu 0 4 76 159 160 72
		f 4 221 222 223 224
		mu 0 4 161 162 160 163
		f 4 -224 -220 225 226
		mu 0 4 163 160 159 164
		f 4 -184 -189 227 -142
		mu 0 4 109 135 139 106
		f 4 228 229 230 231
		mu 0 4 165 166 167 168
		f 4 232 -231 233 234
		mu 0 4 169 168 167 170
		f 4 235 236 237 238
		mu 0 4 171 172 173 174
		f 4 239 240 241 242
		mu 0 4 175 176 173 177
		f 4 243 -241 244 245
		mu 0 4 178 173 176 179
		f 4 246 -245 247 248
		mu 0 4 180 181 182 183
		f 4 249 -248 -240 250
		mu 0 4 184 183 182 185
		f 4 251 -230 252 -243
		mu 0 4 177 167 166 175
		f 4 -238 -244 253 254
		mu 0 4 174 173 178 186
		f 4 255 256 257 -153
		mu 0 4 118 187 188 116
		f 4 258 -258 259 260
		mu 0 4 189 116 188 190
		f 4 261 -257 262 -84
		mu 0 4 62 188 187 63
		f 4 263 264 -256 -155
		mu 0 4 119 191 187 118
		f 4 265 266 267 -236
		mu 0 4 171 192 193 172
		f 4 268 -268 269 270
		mu 0 4 194 172 193 195
		f 3 271 272 273
		mu 0 3 196 197 195
		f 4 274 275 276 277
		mu 0 4 198 199 200 201
		f 4 278 -277 279 280
		mu 0 4 202 201 200 203
		f 4 281 -276 282 283
		mu 0 4 204 200 199 205
		f 4 284 -118 285 286
		mu 0 4 206 89 88 207
		f 4 287 -286 288 289
		mu 0 4 208 207 88 209
		f 4 290 291 -177 292
		mu 0 4 210 211 134 96
		f 4 293 294 295 296
		mu 0 4 212 213 214 215
		f 4 -263 -265 297 298
		mu 0 4 63 187 191 216
		f 4 299 300 301 302
		mu 0 4 217 218 219 220
		f 4 303 -302 304 -278
		mu 0 4 201 220 219 198
		f 4 305 306 307 308
		mu 0 4 197 221 222 223
		f 4 309 -206 310 311
		mu 0 4 224 149 151 225
		f 4 312 -311 -207 313
		mu 0 4 226 225 151 152
		f 4 -201 -310 314 315
		mu 0 4 146 149 224 227
		f 4 316 -315 317 318
		mu 0 4 228 227 224 229
		f 4 -318 -312 319 320
		mu 0 4 229 224 225 230
		f 4 -221 -223 321 -95
		mu 0 4 72 160 162 69
		f 4 322 -322 323 324
		mu 0 4 231 69 162 232
		f 3 325 -209 326
		mu 0 3 233 152 153
		f 4 327 -327 -210 328
		mu 0 4 234 233 153 154
		f 4 -193 329 330 -211
		mu 0 4 143 142 235 154
		f 4 331 -246 332 333
		mu 0 4 236 178 179 237
		f 4 334 -333 -247 335
		mu 0 4 238 239 181 180
		f 4 336 -334 337 338
		mu 0 4 240 236 237 241
		f 4 339 340 -317 341
		mu 0 4 242 243 227 228
		f 4 342 343 344 345
		mu 0 4 104 206 244 245
		f 4 346 -344 -287 347
		mu 0 4 246 244 206 207
		f 4 348 -285 -343 -138
		mu 0 4 97 89 206 104
		f 4 -134 -137 349 350
		mu 0 4 103 102 247 248
		f 4 351 352 -136 -346
		mu 0 4 245 249 105 104
		f 4 -350 -353 353 354
		mu 0 4 248 247 250 251
		f 4 355 -354 356 357
		mu 0 4 252 251 250 253
		f 4 358 -357 -352 359
		mu 0 4 254 255 249 245
		f 4 360 361 362 363
		mu 0 4 256 257 258 259
		f 4 364 365 366 367
		mu 0 4 260 261 258 190
		f 4 368 369 370 371
		mu 0 4 262 261 263 264
		f 4 372 -371 373 374
		mu 0 4 265 264 263 266
		f 4 375 -374 376 377
		mu 0 4 267 266 263 268
		f 4 378 379 380 381
		mu 0 4 269 270 271 272
		f 4 382 383 -381 384
		mu 0 4 273 274 275 276
		f 4 385 386 387 388
		mu 0 4 217 277 278 279
		f 4 389 390 391 392
		mu 0 4 280 281 282 283
		f 4 393 394 395 396
		mu 0 4 284 285 286 287
		f 4 397 398 399 -321
		mu 0 4 230 288 286 229
		f 4 -396 -399 400 401
		mu 0 4 287 286 288 289
		f 4 402 -401 403 404
		mu 0 4 254 289 288 290
		f 4 405 -404 -398 406
		mu 0 4 291 290 288 230
		f 4 407 -347 408 -402
		mu 0 4 289 244 246 287
		f 4 409 -348 -288 410
		mu 0 4 292 246 207 208
		f 4 411 412 413 414
		mu 0 4 293 294 295 296
		f 4 -414 415 416 417
		mu 0 4 296 295 297 298
		f 4 418 -411 419 420
		mu 0 4 299 292 208 300
		f 4 421 -420 -290 422
		mu 0 4 301 300 208 209
		f 4 -409 -410 423 -397
		mu 0 4 287 246 292 284
		f 4 424 -424 -419 425
		mu 0 4 302 284 292 299
		f 4 426 427 428 429
		mu 0 4 262 303 304 259
		f 4 430 431 432 433
		mu 0 4 305 306 304 307
		f 4 434 435 436 437
		mu 0 4 308 303 309 310
		f 4 438 -437 439 440
		mu 0 4 311 310 309 312
		f 4 441 442 443 444
		mu 0 4 313 314 315 316
		f 4 445 -444 446 -314
		mu 0 4 152 317 318 226
		f 4 447 -447 448 449
		mu 0 4 291 226 318 319
		f 4 450 -267 451 452
		mu 0 4 320 193 192 321
		f 4 453 454 455 456
		mu 0 4 322 323 324 325
		f 4 457 458 459 460
		mu 0 4 189 257 324 132
		f 4 461 462 463 -328
		mu 0 4 234 326 327 233
		f 4 464 -463 465 466
		mu 0 4 328 329 330 331
		f 4 467 468 -462 469
		mu 0 4 332 333 326 234
		f 4 -98 -93 470 471
		mu 0 4 75 71 70 334
		f 4 472 -471 473 474
		mu 0 4 335 334 70 336
		f 4 475 476 477 478
		mu 0 4 256 306 337 325
		f 4 479 480 481 482
		mu 0 4 274 338 337 339
		f 4 483 484 485 486
		mu 0 4 340 341 342 343
		f 4 487 488 489 490
		mu 0 4 344 345 346 347
		f 4 491 492 493 -339
		mu 0 4 241 348 346 240
		f 4 -490 -493 494 495
		mu 0 4 347 346 348 349
		f 4 496 497 -492 498
		mu 0 4 350 351 352 353
		f 4 -417 499 500 501
		mu 0 4 298 297 354 355
		f 4 -501 502 503 504
		mu 0 4 355 354 356 357
		f 4 505 506 507 -438
		mu 0 4 310 358 359 308
		f 4 508 509 510 511
		mu 0 4 360 361 362 363
		f 4 512 -511 513 514
		mu 0 4 364 365 366 367
		f 4 515 -514 516 517
		mu 0 4 368 367 366 369
		f 4 518 519 520 521
		mu 0 4 311 370 371 372
		f 4 522 523 524 525
		mu 0 4 373 374 375 376
		f 4 526 527 528 529
		mu 0 4 377 378 379 380
		f 4 -496 -529 530 531
		mu 0 4 347 349 381 382
		f 4 532 -531 533 -513
		mu 0 4 364 382 381 365
		f 4 -504 534 -159 535
		mu 0 4 357 356 123 122
		f 4 536 537 538 539
		mu 0 4 383 384 385 386
		f 4 -466 -469 540 541
		mu 0 4 331 330 387 388
		f 4 542 -507 543 544
		mu 0 4 389 390 391 392
		f 4 545 -544 546 547
		mu 0 4 393 392 391 394
		f 4 -400 -395 548 -319
		mu 0 4 229 286 285 228
		f 4 549 -394 -425 550
		mu 0 4 395 285 284 302
		f 4 551 -229 552 553
		mu 0 4 396 397 398 399
		f 4 -162 554 555 556
		mu 0 4 122 125 400 401
		f 4 -556 557 558 559
		mu 0 4 401 400 402 403
		f 4 560 561 562 563
		mu 0 4 404 405 406 407
		f 4 564 565 566 567
		mu 0 4 408 409 410 411
		f 4 568 -567 569 570
		mu 0 4 412 411 410 413
		f 4 -559 571 572 573
		mu 0 4 403 402 414 415
		f 4 574 -573 575 576
		mu 0 4 416 415 414 417
		f 4 577 -554 578 579
		mu 0 4 418 396 399 419
		f 4 -563 580 581 582
		mu 0 4 407 406 420 421
		f 4 583 -582 584 585
		mu 0 4 422 421 420 423
		f 4 586 587 588 589
		mu 0 4 424 425 426 427
		f 4 590 591 -294 592
		mu 0 4 428 429 213 212
		f 4 593 594 -415 595
		mu 0 4 430 431 293 296
		f 4 596 597 598 599
		mu 0 4 432 433 434 435
		f 4 -599 600 601 602
		mu 0 4 435 434 436 437
		f 4 603 604 -591 605
		mu 0 4 438 439 429 428
		f 4 606 607 -390 608
		mu 0 4 440 441 281 280
		f 4 609 -542 610 611
		mu 0 4 442 331 388 443
		f 4 612 613 -607 614
		mu 0 4 444 445 441 440
		f 4 615 616 -594 617
		mu 0 4 446 447 431 430
		f 4 618 -551 619 620
		mu 0 4 448 395 302 449
		f 4 -620 -426 621 622
		mu 0 4 449 302 299 450
		f 4 -622 -421 623 624
		mu 0 4 450 299 300 16
		f 4 -22 -624 -422 625
		mu 0 4 17 16 300 301
		f 4 626 627 -616 628
		mu 0 4 451 452 447 446
		f 4 -602 629 -604 630
		mu 0 4 437 436 439 438
		f 4 631 -111 632 -423
		mu 0 4 209 82 85 301
		f 4 633 634 635 636
		mu 0 4 453 454 455 456
		f 4 637 -636 638 -502
		mu 0 4 355 456 455 298
		f 4 -418 -639 639 -596
		mu 0 4 296 298 455 430
		f 4 640 -635 641 642
		mu 0 4 457 455 454 458
		f 4 643 -642 -634 644
		mu 0 4 39 458 454 453
		f 3 645 646 647
		mu 0 3 459 49 460
		f 4 648 -648 649 -637
		mu 0 4 456 459 460 453
		f 4 -75 -72 -67 -66
		mu 0 4 50 54 51 48
		f 4 650 -69 651 652
		mu 0 4 461 53 52 462
		f 4 653 -68 -71 654
		mu 0 4 463 52 51 43
		f 3 -74 -77 655
		mu 0 3 54 55 56
		f 4 656 -73 -656 657
		mu 0 4 464 44 54 56
		f 4 658 -647 -64 -60
		mu 0 4 40 460 49 46
		f 4 -560 659 -646 660
		mu 0 4 401 403 49 459
		f 4 661 -61 -63 -70
		mu 0 4 53 47 46 48
		f 4 -55 -62 662 663
		mu 0 4 39 41 47 465
		f 4 664 665 666 667
		mu 0 4 466 458 467 468
		f 4 668 -667 669 670
		mu 0 4 469 468 467 470
		f 4 671 -670 672 673
		mu 0 4 461 470 467 465
		f 4 -650 -659 -53 -645
		mu 0 4 453 460 40 39
		f 4 674 -643 -665 675
		mu 0 4 471 457 458 466
		f 4 -673 -666 -644 -664
		mu 0 4 465 467 458 39
		f 4 676 -355 677 678
		mu 0 4 472 248 251 473
		f 4 679 680 681 682
		mu 0 4 474 475 476 477
		f 4 683 -682 684 685
		mu 0 4 478 477 476 479
		f 4 686 687 688 689
		mu 0 4 480 481 482 483
		f 4 690 -689 691 692
		mu 0 4 484 483 482 485
		f 4 693 -538 694 -358
		mu 0 4 253 385 384 252
		f 4 695 -695 696 697
		mu 0 4 486 252 384 487
		f 4 698 -697 -537 699
		mu 0 4 488 487 384 383
		f 3 -65 -660 700
		mu 0 3 50 49 403
		f 4 -649 -638 -505 701
		mu 0 4 459 456 355 357
		f 4 -640 -641 702 703
		mu 0 4 430 455 457 481
		f 4 704 705 706 707
		mu 0 4 442 425 489 490
		f 4 708 -588 -705 -612
		mu 0 4 443 426 425 442
		f 4 709 -706 -587 710
		mu 0 4 491 489 425 424
		f 4 711 -467 -610 -708
		mu 0 4 490 328 331 442
		f 4 712 -465 713 -445
		mu 0 4 316 329 328 313
		f 4 714 -714 -712 715
		mu 0 4 492 313 328 490
		f 4 716 -561 717 718
		mu 0 4 493 405 404 494
		f 4 719 -718 720 721
		mu 0 4 495 494 404 496
		f 4 -721 -564 722 723
		mu 0 4 496 404 407 497
		f 4 724 -568 725 726
		mu 0 4 498 408 411 499
		f 4 727 -726 -569 728
		mu 0 4 500 499 411 412
		f 4 729 730 731 732
		mu 0 4 501 502 503 504
		f 4 733 734 735 736
		mu 0 4 505 506 503 507
		f 4 737 -543 738 739
		mu 0 4 508 390 389 509
		f 4 740 -739 741 742
		mu 0 4 510 509 389 504
		f 4 743 744 745 746
		mu 0 4 506 511 512 510
		f 4 747 748 749 750
		mu 0 4 269 341 512 513
		f 4 -741 -746 751 752
		mu 0 4 509 510 512 340
		f 4 -750 -745 753 754
		mu 0 4 513 512 511 514
		f 4 755 -754 756 757
		mu 0 4 515 514 511 516
		f 4 758 759 760 761
		mu 0 4 517 58 518 519
		f 4 762 763 764 -727
		mu 0 4 499 520 518 498
		f 4 765 766 767 768
		mu 0 4 521 522 523 519
		f 4 -762 -768 769 770
		mu 0 4 517 519 523 524
		f 4 771 -767 772 773
		mu 0 4 525 523 522 526
		f 4 774 -773 775 776
		mu 0 4 527 526 522 528
		f 4 -761 -764 777 -769
		mu 0 4 519 518 520 521
		f 4 778 -778 779 780
		mu 0 4 529 521 520 530
		f 4 781 782 783 784
		mu 0 4 418 432 531 532
		f 4 785 -784 786 787
		mu 0 4 533 532 531 534
		f 4 788 -249 789 790
		mu 0 4 535 180 183 533
		f 4 791 -336 -789 792
		mu 0 4 536 238 180 535
		f 4 -793 793 794 795
		mu 0 4 536 535 537 538
		f 4 796 797 798 799
		mu 0 4 539 540 537 534
		f 4 -701 -574 800 -76
		mu 0 4 50 403 415 55
		f 4 -557 -661 -702 -536
		mu 0 4 122 401 459 357
		f 4 801 802 803 -711
		mu 0 4 424 451 541 491
		f 4 804 -804 805 806
		mu 0 4 492 491 541 542
		f 4 807 -803 -629 808
		mu 0 4 480 541 451 446
		f 4 809 -627 -802 -590
		mu 0 4 427 452 451 424
		f 4 -449 -443 810 -540
		mu 0 4 386 315 314 383
		f 4 -770 -772 811 812
		mu 0 4 524 523 525 543
		f 4 813 -812 814 815
		mu 0 4 544 543 525 545
		f 4 -815 -774 816 817
		mu 0 4 545 525 526 507
		f 4 818 819 820 -135
		mu 0 4 103 546 547 100
		f 4 821 -821 822 823
		mu 0 4 548 100 547 549
		f 4 824 -823 825 826
		mu 0 4 550 549 547 551
		f 4 827 -825 828 -797
		mu 0 4 539 549 550 540
		f 4 829 830 831 832
		mu 0 4 552 553 554 555
		f 4 -826 -820 833 834
		mu 0 4 551 547 546 555
		f 4 -833 -834 835 836
		mu 0 4 552 555 546 472
		f 4 837 -565 838 -577
		mu 0 4 417 409 408 416
		f 4 839 -839 -725 840
		mu 0 4 57 416 408 498
		f 4 -253 -552 841 -251
		mu 0 4 185 397 396 184
		f 4 -723 -583 842 843
		mu 0 4 497 407 421 556
		f 4 844 -843 -584 845
		mu 0 4 515 556 421 422
		f 4 846 -613 847 -586
		mu 0 4 423 445 444 422
		f 4 848 849 850 -844
		mu 0 4 556 557 558 497
		f 4 851 852 853 854
		mu 0 4 529 559 558 528
		f 4 -854 -850 855 -777
		mu 0 4 528 558 557 527
		f 4 856 -856 857 858
		mu 0 4 505 527 557 516
		f 4 859 860 861 -813
		mu 0 4 543 560 561 524
		f 4 -771 -862 862 863
		mu 0 4 517 524 561 562
		f 3 864 -655 -56
		mu 0 3 42 463 43
		f 4 865 -58 -657 866
		mu 0 4 562 45 44 464
		f 4 -851 -853 867 -724
		mu 0 4 497 558 559 496
		f 4 868 869 -852 -781
		mu 0 4 530 563 559 529
		f 4 -704 -687 -809 -618
		mu 0 4 430 481 480 446
		f 4 -806 -808 870 871
		mu 0 4 542 541 480 488
		f 4 872 -688 -703 -675
		mu 0 4 471 482 481 457
		f 4 -534 -528 873 -512
		mu 0 4 363 379 378 360
		f 4 -517 -510 874 -526
		mu 0 4 376 362 361 373
		f 4 875 -875 876 877
		mu 0 4 564 373 361 565
		f 4 878 -680 879 880
		mu 0 4 566 475 474 567
		f 4 881 -880 882 883
		mu 0 4 565 567 474 568
		f 4 884 -681 885 -830
		mu 0 4 552 476 475 553
		f 4 886 -886 -879 887
		mu 0 4 569 553 475 566
		f 4 888 -133 889 890
		mu 0 4 570 101 100 571
		f 4 -736 -731 891 -818
		mu 0 4 507 503 502 545
		f 4 892 893 894 895
		mu 0 4 572 573 574 575
		f 4 896 -895 897 898
		mu 0 4 544 575 574 576
		f 4 -521 -524 899 -548
		mu 0 4 394 375 374 393
		f 4 900 901 -523 -876
		mu 0 4 564 573 374 373
		f 4 -742 -545 902 -733
		mu 0 4 504 389 392 501
		f 4 903 -903 -546 904
		mu 0 4 572 501 392 393
		f 4 905 -615 906 -755
		mu 0 4 514 444 440 513
		f 3 907 908 -609
		mu 0 3 280 270 440
		f 4 -907 -909 -379 -751
		mu 0 4 513 440 270 269
		f 4 -388 909 -908 -393
		mu 0 4 283 577 270 280
		f 4 910 -485 -748 -382
		mu 0 4 272 342 341 269
		f 3 -752 -749 -484
		mu 0 3 340 512 341
		f 4 911 -603 912 913
		mu 0 4 578 435 437 579
		f 4 -685 -885 914 915
		mu 0 4 479 476 552 580
		f 4 916 -915 -837 -679
		mu 0 4 473 580 552 472
		f 4 -836 -819 -351 -677
		mu 0 4 472 546 103 248
		f 4 -692 -873 917 918
		mu 0 4 485 482 471 581
		f 4 919 -861 920 921
		mu 0 4 582 561 560 583
		f 4 922 -921 923 924
		mu 0 4 584 583 560 576
		f 4 925 -922 926 -671
		mu 0 4 470 582 583 469
		f 4 927 -783 -600 -912
		mu 0 4 578 531 432 435
		f 4 928 -597 -782 -580
		mu 0 4 419 433 432 418
		f 4 929 930 931 932
		mu 0 4 585 438 586 548
		f 4 933 934 935 -593
		mu 0 4 212 571 586 428
		f 4 936 937 -669 938
		mu 0 4 587 477 468 469
		f 4 -668 -938 -684 939
		mu 0 4 466 468 477 478
		f 4 -883 -683 -937 940
		mu 0 4 568 474 477 587
		f 4 -338 -335 941 -499
		mu 0 4 353 239 238 350
		f 4 942 -942 -792 943
		mu 0 4 588 350 238 536
		f 4 944 -831 -887 945
		mu 0 4 589 554 553 569
		f 4 -918 -676 -940 946
		mu 0 4 581 471 466 478
		f 4 -913 -631 -930 947
		mu 0 4 579 437 438 585
		f 3 -936 -931 -606
		mu 0 3 428 586 438
		f 4 948 -914 949 -828
		mu 0 4 539 578 579 549
		f 4 -950 -948 -933 -824
		mu 0 4 549 579 585 548
		f 4 -787 -928 -949 -800
		mu 0 4 534 531 578 539
		f 4 -495 -498 950 -530
		mu 0 4 380 352 351 377
		f 4 951 -951 952 -946
		mu 0 4 569 377 351 589
		f 4 -652 -654 -865 953
		mu 0 4 462 52 463 42
		f 4 -890 -822 -932 -935
		mu 0 4 571 100 548 586
		f 4 954 -920 955 -954
		mu 0 4 42 561 582 462
		f 4 -549 -550 956 -342
		mu 0 4 228 285 395 242
		f 4 -316 -341 957 -217
		mu 0 4 146 227 243 157
		f 4 -42 958 -340 959
		mu 0 4 33 32 243 242
		f 4 -34 960 -215 961
		mu 0 4 27 26 158 157
		f 4 -218 -216 962 -214
		mu 0 4 144 147 158 155
		f 4 -26 963 -212 964
		mu 0 4 21 20 156 155
		f 4 965 -158 966 -149
		mu 0 4 115 120 121 112
		f 4 -144 -156 967 968
		mu 0 4 111 108 120 590
		f 4 -460 -455 969 -173
		mu 0 4 132 324 323 131
		f 4 970 -970 971 972
		mu 0 4 591 131 323 321
		f 4 973 974 975 -190
		mu 0 4 136 592 593 138
		f 4 976 -975 977 -227
		mu 0 4 164 593 592 163
		f 4 978 979 -974 -187
		mu 0 4 137 594 592 136
		f 4 -978 -980 980 -225
		mu 0 4 163 592 594 161
		f 4 981 -981 982 983
		mu 0 4 595 161 594 596
		f 4 984 -983 -979 985
		mu 0 4 597 596 594 137
		f 4 -254 -332 986 987
		mu 0 4 186 178 236 598
		f 4 988 -987 -337 989
		mu 0 4 599 598 236 240
		f 4 990 -114 -10 -13
		mu 0 4 11 86 9 8
		f 4 991 -14 -9 -8
		mu 0 4 7 12 8 4
		f 4 -633 -112 992 -626
		mu 0 4 301 85 86 17
		f 4 993 -625 -21 -1
		mu 0 4 0 450 16 1
		f 4 994 -2 -20 -19
		mu 0 4 15 2 1 14
		f 4 995 -623 -994 -51
		mu 0 4 37 449 450 0
		f 4 996 -621 -996 -48
		mu 0 4 34 448 449 37
		f 4 -957 -619 997 -960
		mu 0 4 242 395 448 33
		f 4 -958 -959 998 -962
		mu 0 4 157 243 32 27
		f 4 999 -37 -40 -47
		mu 0 4 36 29 28 31
		f 4 1000 -29 -32 -39
		mu 0 4 30 23 22 25
		f 4 -963 -961 1001 -965
		mu 0 4 155 158 26 21
		f 4 -106 1002 1003 -116
		mu 0 4 81 80 600 10
		f 4 1004 1005 -24 -31
		mu 0 4 24 601 19 18
		f 4 1006 -15 1007 1008
		mu 0 4 602 13 12 603
		f 4 1009 -1008 -992 1010
		mu 0 4 604 603 12 7
		f 4 -993 -991 -17 -23
		mu 0 4 17 86 11 14
		f 4 1011 -3 1012 1013
		mu 0 4 605 3 2 606
		f 4 1014 -1013 -995 1015
		mu 0 4 607 606 2 15
		f 4 1016 -52 -1012 1017
		mu 0 4 608 38 3 605
		f 4 1018 -50 -1017 1019
		mu 0 4 609 35 38 608
		f 4 -998 -997 -44 -43
		mu 0 4 33 448 34 31
		f 4 -999 -41 -36 -35
		mu 0 4 27 32 28 25
		f 4 1020 1021 -1000 1022
		mu 0 4 610 611 29 36
		f 4 1023 1024 -1001 1025
		mu 0 4 612 613 23 30
		f 4 -1002 -33 -28 -27
		mu 0 4 21 26 22 18
		f 4 -1004 1026 -5 -12
		mu 0 4 10 600 5 4
		f 4 1027 1028 -1005 1029
		mu 0 4 614 615 601 24
		f 4 -30 -1025 1030 -1030
		mu 0 4 24 23 613 614
		f 4 -38 -1022 1031 -1026
		mu 0 4 30 29 611 612
		f 4 -46 -1019 1032 -1023
		mu 0 4 36 35 609 610
		f 4 -18 -1007 1033 -1016
		mu 0 4 15 13 602 607
		f 4 -7 1034 1035 -1011
		mu 0 4 7 6 616 604
		f 4 1036 -284 1037 -235
		mu 0 4 170 204 205 169
		f 4 -280 -282 1038 1039
		mu 0 4 203 200 204 617
		f 4 1040 -1039 -1037 1041
		mu 0 4 618 617 204 170
		f 4 -242 -237 -269 1042
		mu 0 4 177 173 172 194
		f 4 1043 -911 -384 -483
		mu 0 4 339 619 275 274
		f 4 -478 -481 1044 -457
		mu 0 4 325 337 338 322
		f 4 1045 -308 1046 1047
		mu 0 4 277 223 222 273
		f 4 1048 -1045 1049 1050
		mu 0 4 320 322 338 620
		f 4 -765 -760 -79 -841
		mu 0 4 498 518 58 57
		f 4 -801 -575 -840 -78
		mu 0 4 55 415 416 57
		f 4 1051 -719 1052 -571
		mu 0 4 413 493 494 412
		f 4 -776 -766 -779 -855
		mu 0 4 528 522 521 529
		f 4 -868 -870 1053 -722
		mu 0 4 496 559 563 495
		f 4 1054 -1054 -869 1055
		mu 0 4 500 495 563 530
		f 4 -947 -686 1056 -919
		mu 0 4 581 478 479 485
		f 4 1057 1058 1059 1060
		mu 0 4 370 621 622 368
		f 4 -516 -1060 1061 1062
		mu 0 4 367 368 622 623
		f 4 1063 -1062 1064 1065
		mu 0 4 624 623 622 625
		f 4 -494 -489 1066 -990
		mu 0 4 240 346 345 599
		f 4 1067 -1067 1068 1069
		mu 0 4 595 599 345 232
		f 4 1070 -988 1071 -985
		mu 0 4 597 186 598 596
		f 4 1072 -255 -1071 1073
		mu 0 4 126 174 186 597
		f 4 1074 -239 -1073 -166
		mu 0 4 128 171 174 126
		f 4 1075 -266 -1075 -167
		mu 0 4 129 192 171 128
		f 4 1076 1077 1078 -378
		mu 0 4 268 65 626 267
		f 4 -1065 -1059 1079 1080
		mu 0 4 625 622 621 627
		f 4 -260 -262 1081 -368
		mu 0 4 190 188 62 260
		f 4 -90 -85 -299 1082
		mu 0 4 68 64 63 216
		f 4 -103 1083 -99 1084
		mu 0 4 77 66 73 75
		f 4 1085 1086 -473 1087
		mu 0 4 624 628 334 335
		f 4 -474 -92 -323 1088
		mu 0 4 336 70 69 231
		f 4 -1069 -488 1089 -325
		mu 0 4 232 345 344 231
		f 4 1090 -491 -532 1091
		mu 0 4 629 344 347 382
		f 4 1092 -527 -952 -888
		mu 0 4 566 378 377 569
		f 4 -1090 -1091 1093 -1089
		mu 0 4 231 344 629 336
		f 4 1094 -1092 -533 1095
		mu 0 4 630 629 382 364
		f 4 -131 -889 1096 -121
		mu 0 4 91 99 631 92
		f 4 1097 -1097 1098 1099
		mu 0 4 210 92 631 632
		f 4 -1099 -891 -934 -297
		mu 0 4 215 570 571 212
		f 4 -871 -690 1100 -699
		mu 0 4 488 480 483 487
		f 4 -1057 -916 1101 -693
		mu 0 4 485 479 580 484
		f 4 1102 -1102 -917 1103
		mu 0 4 486 484 580 473
		f 4 1104 -827 1105 1106
		mu 0 4 538 550 551 633
		f 4 -953 -497 -943 1107
		mu 0 4 589 351 350 588
		f 4 -1072 -989 -1068 -984
		mu 0 4 596 598 599 595
		f 4 -324 -222 -982 -1070
		mu 0 4 232 162 161 595
		f 4 -968 -966 -170 1108
		mu 0 4 590 120 115 130
		f 4 1109 -740 -753 -487
		mu 0 4 343 508 509 340
		f 4 -508 -738 1110 1111
		mu 0 4 308 359 634 307
		f 4 -434 -1111 -1110 1112
		mu 0 4 305 307 634 635
		f 4 -429 -432 -476 -364
		mu 0 4 259 304 306 256
		f 4 -482 -477 -431 1113
		mu 0 4 339 337 306 305
		f 4 -456 -459 -361 -479
		mu 0 4 325 324 257 256
		f 4 -367 -362 -458 -261
		mu 0 4 190 258 257 189
		f 4 -172 -150 -259 -461
		mu 0 4 132 117 116 189
		f 4 -817 -775 -857 -737
		mu 0 4 507 526 527 505
		f 4 -732 -735 -747 -743
		mu 0 4 504 503 506 510
		f 4 -757 -744 -734 -859
		mu 0 4 516 511 506 505
		f 4 -848 -906 -756 -846
		mu 0 4 422 444 514 515
		f 4 -858 -849 -845 -758
		mu 0 4 516 557 556 515
		f 4 -1053 -720 -1055 -729
		mu 0 4 412 494 495 500
		f 4 -780 -763 -728 -1056
		mu 0 4 530 520 499 500
		f 4 1114 -730 -904 -896
		mu 0 4 575 502 501 572
		f 4 -900 -902 -893 -905
		mu 0 4 393 374 573 572
		f 4 1115 -894 -901 1116
		mu 0 4 636 574 573 564
		f 4 -874 -1093 -881 1117
		mu 0 4 360 378 566 567
		f 4 1118 -945 -1108 1119
		mu 0 4 633 554 589 588
		f 4 -1120 -944 -796 -1107
		mu 0 4 633 588 536 538
		f 4 -799 -794 -791 -788
		mu 0 4 534 537 535 533
		f 4 -842 -578 -785 1120
		mu 0 4 184 396 418 532
		f 4 -795 -798 -829 -1105
		mu 0 4 538 537 540 550
		f 4 -832 -1119 -1106 -835
		mu 0 4 555 554 633 551
		f 4 -1101 -691 -1103 -698
		mu 0 4 487 483 484 486
		f 4 -678 -356 -696 -1104
		mu 0 4 473 251 252 486
		f 4 1121 -694 -359 -405
		mu 0 4 290 637 255 254
		f 4 -345 -408 -403 -360
		mu 0 4 245 244 289 254
		f 4 -472 -1087 1122 -1085
		mu 0 4 75 334 628 77
		f 4 -102 -1123 1123 1124
		mu 0 4 67 77 628 638
		f 4 1125 -1124 -1086 -1066
		mu 0 4 625 638 628 624
		f 4 -86 -89 1126 -1078
		mu 0 4 65 64 67 626
		f 4 1127 -1127 -1125 1128
		mu 0 4 639 626 67 638
		f 4 -1082 -87 -1077 1129
		mu 0 4 260 62 65 268
		f 4 -363 -366 -369 -430
		mu 0 4 259 258 261 262
		f 4 -377 -370 -365 -1130
		mu 0 4 268 263 261 260;
	setAttr ".fc[500:999]"
		f 4 1130 -436 -427 -372
		mu 0 4 264 309 303 262
		f 4 -433 -428 -435 -1112
		mu 0 4 307 304 303 308
		f 4 -1094 -1095 1131 -475
		mu 0 4 336 629 630 335
		f 4 1132 -1096 -515 -1063
		mu 0 4 623 630 364 367
		f 4 -1079 -1128 1133 -376
		mu 0 4 267 626 639 266
		f 4 -375 -1134 1134 1135
		mu 0 4 265 266 639 627
		f 4 -1135 -1129 -1126 -1081
		mu 0 4 627 639 638 625
		f 4 -1132 -1133 -1064 -1088
		mu 0 4 335 630 623 624
		f 4 -440 -1131 -373 1136
		mu 0 4 312 309 264 265
		f 4 -972 -454 -1049 -453
		mu 0 4 321 323 322 320
		f 4 -392 1137 -300 -389
		mu 0 4 279 640 218 217
		f 4 1138 -1046 -386 -303
		mu 0 4 220 223 277 217
		f 4 -486 -1044 -1114 -1113
		mu 0 4 635 619 339 305
		f 4 -547 -506 -439 -522
		mu 0 4 372 358 310 311
		f 4 -525 -520 -1061 -518
		mu 0 4 369 371 370 368
		f 4 1139 -1058 -519 -441
		mu 0 4 312 621 370 311
		f 4 -234 -252 1140 -1042
		mu 0 4 170 167 177 618
		f 4 -1141 -1043 1141 -1041
		mu 0 4 618 177 194 617
		f 4 -1142 -271 1142 -1040
		mu 0 4 617 194 195 203
		f 4 -707 -710 -805 -716
		mu 0 4 490 489 491 492
		f 4 1143 -442 -715 -807
		mu 0 4 542 314 313 492
		f 4 -464 -713 -446 -326
		mu 0 4 233 327 317 152
		f 4 -811 -1144 -872 -700
		mu 0 4 383 314 542 488
		f 4 -320 -313 -448 -407
		mu 0 4 230 225 226 291
		f 4 -539 -1122 -406 -450
		mu 0 4 319 637 290 291
		f 4 -119 -349 -132 -124
		mu 0 4 90 89 97 91
		f 4 -127 -122 -1098 -293
		mu 0 4 96 93 92 210
		f 4 -296 1144 -291 -1100
		mu 0 4 632 641 211 210
		f 4 -289 -117 -182 -632
		mu 0 4 209 88 87 82
		f 4 -331 1145 -470 -329
		mu 0 4 154 235 332 234
		f 4 -1080 -1140 -1137 -1136
		mu 0 4 627 621 312 265
		f 4 -186 -163 -1074 -986
		mu 0 4 137 127 126 597
		f 4 -452 -1076 1146 -973
		mu 0 4 321 192 129 591
		f 4 1147 -1147 -168 -969
		mu 0 4 590 591 129 111
		f 4 -1109 -171 -971 -1148
		mu 0 4 590 130 131 591
		f 4 -790 -250 -1121 -786
		mu 0 4 533 183 184 532
		f 4 -80 -759 1148 -658
		mu 0 4 56 58 517 464
		f 4 -924 -860 -814 -899
		mu 0 4 576 560 543 544
		f 4 -892 -1115 -897 -816
		mu 0 4 545 502 575 544
		f 4 1149 -1117 -878 -884
		mu 0 4 568 636 564 565
		f 4 -898 -1116 1150 -925
		mu 0 4 576 574 636 584
		f 4 1151 -1151 -1150 -941
		mu 0 4 587 584 636 568
		f 4 1152 -1139 -304 -279
		mu 0 4 202 223 220 201
		f 4 -927 -923 -1152 -939
		mu 0 4 469 583 584 587
		f 4 -877 -509 -1118 -882
		mu 0 4 565 361 360 567
		f 4 -956 -926 -672 -653
		mu 0 4 462 582 470 461
		f 4 -663 -662 -651 -674
		mu 0 4 465 47 53 461
		f 3 1153 -955 -59
		mu 0 3 45 561 42
		f 3 -863 -1154 -866
		mu 0 3 562 561 45
		f 3 -1149 -864 -867
		mu 0 3 464 517 562
		f 4 -1143 -273 1154 -281
		mu 0 4 203 195 197 202
		f 4 1155 1156 1157 1158
		mu 0 4 657 652 651 658
		f 4 1159 1160 1161 1162
		mu 0 4 659 655 654 660
		f 4 1163 1164 1165 1166
		mu 0 4 661 646 645 662
		f 4 -1162 1167 1168 1169
		mu 0 4 660 654 653 663
		f 4 1170 1171 1172 -1009
		mu 0 4 664 665 666 667
		f 4 -1034 -1173 1173 1174
		mu 0 4 668 667 666 659
		f 4 1175 -1170 1176 -1014
		mu 0 4 669 660 663 670
		f 4 -1177 1177 1178 -1018
		mu 0 4 670 663 657 671
		f 4 -1179 -1159 1179 -1020
		mu 0 4 671 657 658 672
		f 4 -1033 -1180 1180 1181
		mu 0 4 673 672 658 674
		f 4 -1032 1182 1183 1184
		mu 0 4 675 676 677 678
		f 4 -1031 1185 1186 1187
		mu 0 4 679 680 681 661
		f 4 -1036 1188 1189 1190
		mu 0 4 682 683 684 685
		f 4 1191 -1186 -1024 -1185
		mu 0 4 678 681 680 675
		f 4 1192 -1183 -1021 -1182
		mu 0 4 674 677 676 673
		f 4 -1163 -1176 -1015 -1175
		mu 0 4 659 660 669 668
		f 4 1193 -1171 -1010 -1191
		mu 0 4 685 665 664 682
		f 4 -1167 1194 -1028 -1188
		mu 0 4 661 662 686 679
		f 4 -1169 1195 -1156 -1178
		mu 0 4 663 653 652 657
		f 4 1196 1197 1198 -1184
		mu 0 4 677 649 648 678
		f 4 -1158 1199 1200 -1181
		mu 0 4 658 651 650 674
		f 4 -1201 1201 -1197 -1193
		mu 0 4 674 650 649 677
		f 4 -1199 1202 1203 -1192
		mu 0 4 678 648 647 681
		f 4 -1204 1204 -1164 -1187
		mu 0 4 681 647 646 661
		f 4 1205 1206 -1160 -1174
		mu 0 4 666 656 655 659
		f 4 1207 1208 -1206 -1172
		mu 0 4 665 642 656 666
		f 4 1209 1210 -1208 -1194
		mu 0 4 685 643 642 665
		f 4 1211 1212 -1210 -1190
		mu 0 4 684 644 643 685
		f 4 1213 1214 1215 1216
		mu 0 4 687 688 689 690
		f 4 1217 -1215 1218 1219
		mu 0 4 691 689 688 692
		f 3 -1218 1220 -1216
		mu 0 3 689 691 690
		f 4 1221 1222 1223 1224
		mu 0 4 693 694 695 696
		f 4 1225 -1225 1226 1227
		mu 0 4 697 693 696 698
		f 4 -1226 1228 1229 1230
		mu 0 4 693 697 699 700
		f 4 1231 -1222 -1231 1232
		mu 0 4 701 694 693 700
		f 4 1233 1234 1235 1236
		mu 0 4 702 703 704 705
		f 3 1237 1238 -1234
		mu 0 3 702 706 703
		f 3 1239 -1239 1240
		mu 0 3 707 703 706
		f 4 1241 1242 1243 1244
		mu 0 4 708 709 710 711
		f 4 1245 1246 -1245 1247
		mu 0 4 696 712 708 711
		f 4 1248 1249 -1247 1250
		mu 0 4 713 714 715 716
		f 3 1251 1252 -1250
		mu 0 3 714 717 715
		f 4 1253 -1242 -1253 1254
		mu 0 4 718 719 715 717
		f 4 -1251 1255 1256 1257
		mu 0 4 713 716 720 721
		f 4 1258 -1258 1259 1260
		mu 0 4 722 713 721 723
		f 4 -1249 -1259 1261 1262
		mu 0 4 714 713 722 724
		f 3 -1263 1263 1264
		mu 0 3 714 724 725
		f 3 -1265 1265 1266
		mu 0 3 714 725 726
		f 3 -1252 -1267 1267
		mu 0 3 717 714 726
		f 3 1268 1269 1270
		mu 0 3 717 727 728
		f 3 1271 1272 -1269
		mu 0 3 717 729 727
		f 4 1273 1274 1275 -1273
		mu 0 4 729 730 731 727
		f 4 -1270 -1276 1276 1277
		mu 0 4 728 727 731 732
		f 3 1278 1279 1280
		mu 0 3 733 734 735
		f 4 -1279 1281 1282 1283
		mu 0 4 734 733 736 737
		f 4 -1284 1284 -1254 1285
		mu 0 4 734 737 719 718
		f 3 1286 1287 -1286
		mu 0 3 718 738 734
		f 4 -1288 1288 1289 -1280
		mu 0 4 734 738 739 735
		f 4 1290 -1287 -1255 -1271
		mu 0 4 728 738 718 717
		f 4 1291 1292 1293 1294
		mu 0 4 740 741 742 743
		f 3 1295 -1295 1296
		mu 0 3 744 740 743
		f 4 1297 -1296 1298 -1285
		mu 0 4 737 740 744 719
		f 4 -1298 1299 1300 -1292
		mu 0 4 740 737 745 741
		f 4 1301 -1297 1302 -1221
		mu 0 4 691 744 743 690
		f 4 1303 1304 1305 -1220
		mu 0 4 692 746 747 691
		f 3 1306 -1306 1307
		mu 0 3 748 691 747
		f 4 -1307 1308 1309 1310
		mu 0 4 691 748 749 750
		f 4 1311 -1311 1312 1313
		mu 0 4 751 691 750 752
		f 4 -1302 -1312 1314 -1299
		mu 0 4 744 691 751 719
		f 3 -1314 1315 1316
		mu 0 3 753 754 755
		f 3 -1317 1317 1318
		mu 0 3 753 755 710
		f 3 -1243 -1315 -1319
		mu 0 3 710 709 753
		f 4 -1246 1319 -1240 1320
		mu 0 4 712 696 703 707
		f 4 1321 -1227 -1248 1322
		mu 0 4 756 698 696 711
		f 4 -1224 1323 -1235 -1320
		mu 0 4 696 695 704 703
		f 4 1324 -1323 -1244 -1318
		mu 0 4 755 756 711 710
		f 3 -1256 -1321 1325
		mu 0 3 720 716 757
		f 3 -1326 1326 1327
		mu 0 3 758 759 760
		f 4 -1230 1328 1329 1330
		mu 0 4 700 699 761 762
		f 4 1331 -1233 -1331 1332
		mu 0 4 763 701 700 762
		f 3 1333 1334 -1333
		mu 0 3 762 764 763
		f 3 -1330 1335 -1334
		mu 0 3 762 761 764
		f 4 1336 1337 1338 -1309
		mu 0 4 748 765 766 749
		f 3 1339 -1337 -1308
		mu 0 3 747 765 748
		f 4 1340 -1340 -1305 1341
		mu 0 4 767 765 747 746
		f 4 -1341 1342 1343 -1338
		mu 0 4 765 767 768 766
		f 4 1344 -1289 -1291 -1278
		mu 0 4 732 739 738 728
		f 3 -1300 -1283 1345
		mu 0 3 745 737 736
		f 4 1346 -1301 1347 1348
		mu 0 4 769 741 745 770
		f 3 1349 1350 -1349
		mu 0 3 770 771 769
		f 4 -1347 -1351 1351 -1293
		mu 0 4 741 769 771 742
		f 4 1352 1353 -1350 1354
		mu 0 4 772 60 771 770
		f 3 1355 -81 1356
		mu 0 3 773 60 59
		f 3 -1354 -1356 1357
		mu 0 3 771 60 773
		f 3 1358 1359 1360
		mu 0 3 774 770 775
		f 3 -1360 1361 1362
		mu 0 3 775 770 733
		f 4 1363 -1361 -1363 -1281
		mu 0 4 735 774 775 733
		f 4 1364 1365 1366 1367
		mu 0 4 776 772 774 777
		f 3 -1366 -1355 -1359
		mu 0 3 774 772 770
		f 4 1368 1369 1370 1371
		mu 0 4 778 777 779 732
		f 3 -1367 1372 -1370
		mu 0 3 777 774 779
		f 3 1373 -1371 -1373
		mu 0 3 774 732 779
		f 3 1374 1375 1376
		mu 0 3 780 777 781
		f 3 1377 -1376 1378
		mu 0 3 730 781 777
		f 4 1379 -1377 -1378 1380
		mu 0 4 782 780 781 730
		f 3 1381 1382 1383
		mu 0 3 783 780 784
		f 3 -1383 1384 1385
		mu 0 3 784 780 785
		f 4 1386 -1384 -1386 1387
		mu 0 4 786 783 784 785
		f 4 1388 1389 -1382 1390
		mu 0 4 787 776 780 783
		f 3 -1390 -1368 -1375
		mu 0 3 780 776 777
		f 3 1391 1392 1393
		mu 0 3 773 788 746
		f 3 -1357 1394 -1392
		mu 0 3 773 59 788
		f 3 -1395 1395 1396
		mu 0 3 788 59 789
		f 3 -1397 1397 1398
		mu 0 3 788 789 790
		f 4 1399 -1343 1400 -1399
		mu 0 4 790 768 767 788
		f 3 -1393 -1401 -1342
		mu 0 3 746 788 767
		f 4 1401 1402 1403 1404
		mu 0 4 791 687 792 771
		f 3 -1358 1405 -1405
		mu 0 3 771 773 791
		f 3 1406 -1406 1407
		mu 0 3 688 791 773
		f 3 -1402 -1407 -1214
		mu 0 3 687 791 688
		f 3 -1348 -1346 1408
		mu 0 3 770 745 736
		f 3 -1362 -1409 -1282
		mu 0 3 733 770 736
		f 3 -1364 -1290 1409
		mu 0 3 774 735 739
		f 3 -1374 -1410 -1345
		mu 0 3 732 774 739
		f 3 -1369 1410 1411
		mu 0 3 777 778 731
		f 3 -1379 -1412 -1275
		mu 0 3 730 777 731
		f 3 -1380 1412 1413
		mu 0 3 780 782 793
		f 3 -1385 -1414 1414
		mu 0 3 785 780 793
		f 3 1415 1416 1417
		mu 0 3 794 783 795
		f 4 1418 1419 1420 -1416
		mu 0 4 794 796 760 783
		f 3 -1421 1421 -1391
		mu 0 3 783 760 787
		f 3 -1417 -1387 1422
		mu 0 3 795 783 786
		f 4 -1420 1423 1424 -1328
		mu 0 4 760 796 723 758
		f 4 -1400 1425 1426 -1344
		mu 0 4 768 790 797 766
		f 4 -1403 -1217 -1303 1427
		mu 0 4 792 687 690 743
		f 3 -1394 -1304 1428
		mu 0 3 773 746 692
		f 3 -1408 -1429 -1219
		mu 0 3 688 773 692
		f 3 -1404 1429 1430
		mu 0 3 771 792 798
		f 3 1431 -1430 -1428
		mu 0 3 743 798 792
		f 3 -1352 -1431 1432
		mu 0 3 742 771 798
		f 3 -1294 -1433 -1432
		mu 0 3 743 742 798
		f 3 -1372 -1277 -1411
		mu 0 3 778 732 731
		f 3 -1274 1433 -1381
		mu 0 3 730 729 782
		f 4 1434 1435 -1413 -1434
		mu 0 4 729 799 793 782
		f 4 -1418 1436 -1264 1437
		mu 0 4 794 795 725 724
		f 4 -1266 -1437 -1423 1438
		mu 0 4 726 725 795 786
		f 4 -1438 -1262 1439 -1419
		mu 0 4 794 724 722 796
		f 3 -1440 -1261 -1424
		mu 0 3 796 722 723
		f 3 1440 -1439 -1388
		mu 0 3 785 726 786
		f 4 -1441 -1415 -1436 1441
		mu 0 4 726 785 793 799
		f 3 -1268 -1442 1442
		mu 0 3 717 726 799
		f 3 -1272 -1443 -1435
		mu 0 3 729 717 799
		f 3 -1339 -1427 1443
		mu 0 3 749 766 797
		f 3 -1444 1444 -1310
		mu 0 3 749 797 750
		f 4 1445 1446 1447 1448
		mu 0 4 800 801 802 803
		f 4 1449 1450 -1448 1451
		mu 0 4 804 805 803 802
		f 3 -1451 1452 1453
		mu 0 3 803 805 806
		f 3 1454 1455 -1454
		mu 0 3 806 807 803
		f 3 -1456 1456 -1449
		mu 0 3 803 807 800
		f 4 1457 1458 1459 1460
		mu 0 4 808 801 809 810
		f 4 1461 -1461 1462 1463
		mu 0 4 811 808 810 812
		f 4 -1462 1464 1465 1466
		mu 0 4 808 811 813 802
		f 3 -1458 -1467 -1447
		mu 0 3 801 808 802
		f 4 1467 1468 1469 1470
		mu 0 4 814 815 816 817
		f 4 -1469 1471 1472 1473
		mu 0 4 816 815 818 813
		f 3 1474 -1474 1475
		mu 0 3 819 816 813
		f 3 1476 -1470 -1475
		mu 0 3 819 817 816
		f 3 1477 -1477 1478
		mu 0 3 820 817 819
		f 3 1479 1480 -1478
		mu 0 3 820 821 817
		f 4 1481 -1471 -1481 1482
		mu 0 4 822 814 817 821
		f 4 1483 -1480 1484 1485
		mu 0 4 823 821 820 824
		f 4 -1484 1486 1487 -1483
		mu 0 4 821 823 825 822
		f 4 1488 1489 -1486 1490
		mu 0 4 826 827 823 824
		f 4 1491 1492 -1489 1493
		mu 0 4 828 829 827 826
		f 3 1494 -1490 -1493
		mu 0 3 829 823 827
		f 4 1495 1496 1497 -1495
		mu 0 4 829 830 831 823
		f 4 -1498 1498 1499 -1487
		mu 0 4 823 831 832 825
		f 4 -1491 1500 1501 1502
		mu 0 4 826 824 833 834
		f 4 1503 -1503 1504 1505
		mu 0 4 835 826 834 836
		f 3 1506 -1504 1507
		mu 0 3 837 826 835
		f 3 1508 -1494 -1507
		mu 0 3 837 828 826
		f 4 1509 1510 -1502 1511
		mu 0 4 838 839 834 833
		f 3 -1510 1512 1513
		mu 0 3 839 838 840
		f 4 1514 -1511 -1514 1515
		mu 0 4 841 834 839 840
		f 3 1516 -1515 1517
		mu 0 3 842 834 841
		f 3 1518 -1517 1519
		mu 0 3 843 834 842
		f 3 -1505 -1519 1520
		mu 0 3 836 834 843
		f 4 1521 1522 1523 -1512
		mu 0 4 833 844 845 838
		f 4 1524 1525 1526 -1524
		mu 0 4 845 846 847 838
		f 3 1527 -1527 1528
		mu 0 3 848 838 847
		f 3 -1513 -1528 1529
		mu 0 3 840 838 848
		f 3 -1450 1530 1531
		mu 0 3 805 804 818
		f 4 -1531 -1452 -1466 -1473
		mu 0 4 818 804 802 813
		f 4 -1453 1532 -1482 1533
		mu 0 4 806 805 814 822
		f 4 -1468 -1533 -1532 -1472
		mu 0 4 815 814 805 818
		f 4 1534 -1534 1535 1536
		mu 0 4 849 806 822 832
		f 4 -1455 -1535 1537 1538
		mu 0 4 807 806 849 850
		f 4 -1537 -1499 1539 -1538
		mu 0 4 849 832 831 850
		f 4 1540 1541 1542 1543
		mu 0 4 851 852 830 853
		f 4 -1541 1544 1545 1546
		mu 0 4 852 851 854 850
		f 4 -1540 -1497 -1542 -1547
		mu 0 4 850 831 830 852
		f 3 1547 -1544 1548
		mu 0 3 837 851 853
		f 3 1549 -1545 -1548
		mu 0 3 837 854 851
		f 4 1550 1551 1552 1553
		mu 0 4 855 856 857 858
		f 3 1554 1555 -1553
		mu 0 3 857 854 858
		f 3 1556 -1556 -1550
		mu 0 3 837 858 854
		f 3 1557 -1554 -1557
		mu 0 3 837 855 858
		f 3 1558 1559 1560
		mu 0 3 859 860 842
		f 3 1561 -1561 1562
		mu 0 3 861 859 842
		f 3 1563 1564 -1562
		mu 0 3 861 857 859
		f 4 1565 -1559 -1565 -1552
		mu 0 4 856 860 859 857
		f 3 1566 1567 -1563
		mu 0 3 842 862 861
		f 3 1568 1569 -1567
		mu 0 3 842 863 862
		f 4 1570 -1570 1571 1572
		mu 0 4 864 862 863 865
		f 4 -1571 1573 1574 -1568
		mu 0 4 862 864 866 861
		f 3 -1573 1575 1576
		mu 0 3 864 865 848
		f 3 -1574 -1577 1577
		mu 0 3 866 864 848
		f 4 1578 1579 1580 1581
		mu 0 4 867 868 869 870
		f 4 -1582 1582 1583 1584
		mu 0 4 867 870 871 866
		f 3 1585 -1585 -1578
		mu 0 3 848 867 866
		f 3 1586 -1579 -1586
		mu 0 3 848 868 867
		f 3 -1581 1587 1588
		mu 0 3 870 869 872
		f 3 -1583 -1589 1589
		mu 0 3 871 870 872
		f 3 -1525 1590 1591
		mu 0 3 846 845 873
		f 3 1592 -1592 -1588
		mu 0 3 869 846 873
		f 4 1593 -1526 -1593 -1580
		mu 0 4 868 847 846 869
		f 3 -1529 -1594 -1587
		mu 0 3 848 847 868
		f 3 1594 -1530 -1576
		mu 0 3 865 840 848
		f 4 -1572 1595 -1516 -1595
		mu 0 4 865 863 841 840
		f 3 -1518 -1596 -1569
		mu 0 3 842 841 863
		f 3 1596 -1520 -1560
		mu 0 3 860 843 842
		f 4 -1521 -1597 -1566 1597
		mu 0 4 836 843 860 856
		f 4 -1506 -1598 -1551 1598
		mu 0 4 835 836 856 855
		f 3 -1508 -1599 -1558
		mu 0 3 837 835 855
		f 3 1599 -1509 -1549
		mu 0 3 853 828 837
		f 4 -1496 -1492 -1600 -1543
		mu 0 4 830 829 828 853
		f 3 -1536 -1488 -1500
		mu 0 3 832 822 825
		f 3 1600 1601 1602
		mu 0 3 874 875 876
		f 4 -1603 1603 -1464 1604
		mu 0 4 874 876 811 812
		f 4 1605 1606 1607 -1602
		mu 0 4 875 877 819 876
		f 4 -1608 -1476 -1465 -1604
		mu 0 4 876 819 813 811
		f 4 1608 1609 -1479 -1607
		mu 0 4 877 878 820 819
		f 4 1610 1611 -1485 -1610
		mu 0 4 878 879 824 820
		f 3 -1612 1612 -1501
		mu 0 3 824 879 833
		f 4 -1613 1613 1614 -1522
		mu 0 4 833 879 880 844
		f 3 1615 -1555 -1564
		mu 0 3 861 854 857
		f 4 1616 -1584 1617 1618
		mu 0 4 881 866 871 882
		f 3 1619 -1575 -1617
		mu 0 3 881 861 866
		f 3 1620 -1616 -1620
		mu 0 3 881 854 861
		f 4 -1539 -1546 -1621 1621
		mu 0 4 807 850 854 881
		f 4 -1457 1622 1623 1624
		mu 0 4 800 807 883 884
		f 4 -1446 -1625 1625 1626
		mu 0 4 801 800 884 885
		f 4 -1622 1627 1628 -1623
		mu 0 4 807 881 886 883
		f 4 -1619 1629 1630 -1628
		mu 0 4 881 882 887 886
		f 3 -1627 1631 -1459
		mu 0 3 801 885 809
		f 3 -1153 -1155 -309
		mu 0 3 223 202 197
		f 3 -1050 1632 1633
		mu 0 3 620 338 222
		f 4 -1633 -480 -383 -1047
		mu 0 4 222 338 274 273
		f 4 1634 1635 1636 -1051
		mu 0 4 620 221 196 320
		f 4 1637 -387 -1048 -385
		mu 0 4 276 278 277 273
		f 3 -910 -1638 -380
		mu 0 3 270 577 271
		f 3 -1635 -1634 -307
		mu 0 3 221 620 222
		f 3 -306 -272 -1636
		mu 0 3 221 197 196
		f 4 -270 -451 -1637 -274
		mu 0 4 195 193 320 196
		f 4 1638 1639 1640 1641
		mu 0 4 923 922 921 920
		f 4 1642 -6 1643 1644
		mu 0 4 925 6 5 924
		f 4 1645 1646 1647 1648
		mu 0 4 928 927 926 924
		f 4 1649 1650 1651 1652
		mu 0 4 931 930 926 929
		f 4 1653 -1653 1654 1655
		mu 0 4 933 931 929 932
		f 4 1656 1657 1658 1659
		mu 0 4 935 934 921 932
		f 4 1660 -25 1661 1662
		mu 0 4 937 20 19 936
		f 4 1663 1664 1665 1666
		mu 0 4 940 939 938 936
		f 4 1667 1668 1669 1670
		mu 0 4 943 942 938 941
		f 4 1671 1672 1673 1674
		mu 0 4 946 945 944 941
		f 4 1675 1676 1677 1678
		mu 0 4 949 948 944 947
		f 4 1679 1680 1681 1682
		mu 0 4 952 951 950 947
		f 4 1683 1684 1685 -1681
		mu 0 4 951 954 953 950
		f 4 1686 -1642 1687 -1685
		mu 0 4 954 923 920 953
		f 3 1688 1689 1690
		mu 0 3 957 956 955
		f 4 1691 1692 1693 1694
		mu 0 4 961 960 959 958
		f 4 1695 1696 1697 -1689
		mu 0 4 957 963 962 956
		f 4 1698 1699 1700 1701
		mu 0 4 966 965 962 964
		f 4 1702 1703 1704 1705
		mu 0 4 969 968 967 964
		f 4 1706 1707 1708 -1693
		mu 0 4 960 970 967 959
		f 3 1709 1710 1711
		mu 0 3 966 970 971
		f 4 1712 1713 1714 1715
		mu 0 4 974 973 971 972
		f 3 1716 1717 1718
		mu 0 3 976 975 59
		f 4 1719 1720 1721 1722
		mu 0 4 980 979 978 977
		f 4 1723 1724 1725 1726
		mu 0 4 983 979 982 981
		f 4 1727 1728 1729 1730
		mu 0 4 987 986 985 984
		f 4 1731 1732 1733 1734
		mu 0 4 990 986 989 988
		f 4 1735 -1733 -1728 1736
		mu 0 4 991 989 986 987
		f 3 -1726 1737 1738
		mu 0 3 981 982 992
		f 4 1739 -105 1740 1741
		mu 0 4 994 80 79 993
		f 4 1742 1743 1744 1745
		mu 0 4 998 997 996 995
		f 4 1746 -1743 1747 1748
		mu 0 4 927 997 998 999
		f 4 1749 -1747 -1646 1750
		mu 0 4 994 997 927 928
		f 4 1751 1752 1753 1754
		mu 0 4 1003 1002 1001 1000
		f 4 1755 1756 1757 1758
		mu 0 4 1003 1006 1005 1004
		f 4 1759 1760 1761 1762
		mu 0 4 1009 1006 1008 1007
		f 4 1763 1764 1765 1766
		mu 0 4 1004 1012 1011 1010
		f 4 1767 -1765 1768 1769
		mu 0 4 1016 1015 1014 1013
		f 4 -1766 1770 1771 1772
		mu 0 4 1010 1011 1018 1017
		f 4 1773 1774 1775 1776
		mu 0 4 1022 1021 1020 1019
		f 4 1777 -1774 1778 1779
		mu 0 4 1024 1021 1022 1023
		f 4 1780 1781 1782 1783
		mu 0 4 1028 1027 1026 1025
		f 4 1784 1785 1786 1787
		mu 0 4 1031 1027 1030 1029
		f 4 1788 -1782 -1785 1789
		mu 0 4 1032 1026 1027 1031
		f 4 1790 -1775 1791 1792
		mu 0 4 1034 1020 1021 1033
		f 4 -161 1793 1794 1795
		mu 0 4 1038 1037 1036 1035
		f 4 1796 1797 1798 1799
		mu 0 4 1041 1023 1040 1039
		f 4 -1780 -1797 1800 1801
		mu 0 4 1024 1023 1041 1042
		f 4 1802 -1786 -1781 1803
		mu 0 4 1043 1030 1027 1028
		f 4 1804 -1803 1805 1806
		mu 0 4 1045 1030 1043 1044
		f 4 -1741 -175 1807 1808
		mu 0 4 993 79 133 1007
		f 4 -1808 -178 1809 -1763
		mu 0 4 1007 133 134 1009
		f 4 1810 -1761 -1756 -1755
		mu 0 4 1000 1008 1006 1003
		f 4 -1762 1811 1812 -1809
		mu 0 4 1007 1008 996 993
		f 4 -1745 -1812 -1811 1813
		mu 0 4 995 996 1008 1000
		f 4 -1813 -1744 -1750 -1742
		mu 0 4 993 996 997 994
		f 4 1814 -1798 -1779 1815
		mu 0 4 1046 1040 1023 1022
		f 4 1816 -1815 1817 1818
		mu 0 4 1048 1040 1046 1047
		f 4 -1818 1819 1820 1821
		mu 0 4 1047 1046 1050 1049
		f 4 1822 -192 1823 1824
		mu 0 4 1052 142 141 1051
		f 4 -1824 -196 1825 1826
		mu 0 4 1051 141 145 1053
		f 4 1827 1828 1829 1830
		mu 0 4 1057 1056 1055 1054
		f 4 1831 1832 1833 -1825
		mu 0 4 1051 1056 1058 1052
		f 4 1834 -1833 -1828 1835
		mu 0 4 1059 1058 1056 1057
		f 4 1836 -1835 1837 1838
		mu 0 4 1061 1058 1059 1060
		f 4 -1834 -1837 1839 1840
		mu 0 4 1052 1058 1061 1062
		f 4 -1826 -213 1841 1842
		mu 0 4 1053 145 156 1063
		f 4 -1830 1843 1844 1845
		mu 0 4 1054 1055 1065 1064
		f 4 1846 -1829 -1832 -1827
		mu 0 4 1053 1055 1056 1051
		f 4 1847 1848 1849 -1737
		mu 0 4 987 1067 1066 991
		f 4 1850 1851 1852 1853
		mu 0 4 1070 1067 1069 1068
		f 4 1854 -1849 -1851 1855
		mu 0 4 1071 1066 1067 1070
		f 4 1856 -1820 -1816 -1777
		mu 0 4 1019 1050 1046 1022
		f 4 1857 1858 1859 -232
		mu 0 4 1075 1074 1073 1072
		f 4 1860 -1858 -233 1861
		mu 0 4 1077 1074 1075 1076
		f 4 1862 1863 1864 1865
		mu 0 4 1081 1080 1079 1078
		f 4 1866 1867 1868 1869
		mu 0 4 1084 1080 1083 1082
		f 4 1870 -1868 1871 1872
		mu 0 4 1086 1083 1080 1085
		f 4 1873 -1871 1874 1875
		mu 0 4 1090 1089 1088 1087
		f 4 -1869 -1874 1876 1877
		mu 0 4 1092 1089 1090 1091
		f 4 1878 -1859 1879 -1870
		mu 0 4 1082 1073 1074 1084
		f 4 1880 -1872 -1863 1881
		mu 0 4 1093 1085 1080 1081
		f 4 1882 1883 1884 -1788
		mu 0 4 1029 1095 1094 1031
		f 4 1885 -1883 1886 1887
		mu 0 4 1097 1095 1029 1096
		f 4 1888 -1884 1889 -1722
		mu 0 4 978 1094 1095 977
		f 4 -1885 1890 1891 -1790
		mu 0 4 1031 1094 1098 1032
		f 4 1892 1893 1894 -1865
		mu 0 4 1079 1100 1099 1078
		f 4 1895 -1893 1896 1897
		mu 0 4 1102 1100 1079 1101
		f 3 1898 1899 1900
		mu 0 3 1102 1104 1103
		f 4 1901 1902 -275 1903
		mu 0 4 1108 1107 1106 1105
		f 4 1904 -1902 1905 1906
		mu 0 4 1110 1107 1108 1109
		f 4 -283 -1903 1907 1908
		mu 0 4 1112 1106 1107 1111
		f 4 1909 -1753 1910 1911
		mu 0 4 1114 1001 1002 1113
		f 4 1912 -1910 1913 1914
		mu 0 4 1116 1001 1114 1115
		f 4 -1810 -292 1915 1916
		mu 0 4 1009 134 211 1117
		f 4 1917 -295 1918 1919
		mu 0 4 1119 214 213 1118
		f 4 1920 -1891 -1889 1921
		mu 0 4 1120 1098 1094 978
		f 4 1922 -301 1923 1924
		mu 0 4 1124 1123 1122 1121
		f 4 -305 -1923 1925 -1904
		mu 0 4 1105 1123 1124 1108
		f 4 1926 1927 1928 1929
		mu 0 4 1127 1126 1125 1104
		f 4 1930 -1836 1931 1932
		mu 0 4 1129 1059 1057 1128
		f 4 -1838 -1931 1933 1934
		mu 0 4 1060 1059 1129 1130
		f 4 1935 -1932 -1831 1936
		mu 0 4 1131 1128 1057 1054
		f 4 1937 -1936 1938 1939
		mu 0 4 1133 1128 1131 1132
		f 4 1940 -1933 -1938 1941
		mu 0 4 1134 1129 1128 1133
		f 4 1942 -1852 -1848 -1731
		mu 0 4 984 1069 1067 987
		f 4 1943 -1943 1944 1945
		mu 0 4 1136 1069 984 1135
		f 3 -1839 1946 1947
		mu 0 3 1061 1060 1137
		f 4 -1840 -1948 1948 1949
		mu 0 4 1062 1061 1137 1138
		f 4 1950 -330 -1823 -1841
		mu 0 4 1062 235 142 1052
		f 4 1951 -1873 1952 1953
		mu 0 4 1140 1086 1085 1139
		f 4 -1875 -1952 1954 1955
		mu 0 4 1087 1088 1142 1141
		f 4 1956 -1954 1957 1958
		mu 0 4 1144 1140 1139 1143
		f 4 -1939 1959 1960 1961
		mu 0 4 1132 1131 1146 1145
		f 4 1962 1963 1964 1965
		mu 0 4 1148 1147 1113 1017
		f 4 -1912 -1964 1966 1967
		mu 0 4 1114 1113 1147 1149
		f 4 -1965 -1911 1968 -1773
		mu 0 4 1017 1113 1002 1010
		f 4 1969 -1771 -1768 1970
		mu 0 4 1151 1150 1015 1016
		f 4 -1772 1971 1972 -1966
		mu 0 4 1017 1018 1152 1148
		f 4 1973 -1972 -1970 1974
		mu 0 4 1154 1153 1150 1151
		f 4 1975 -1974 1976 1977
		mu 0 4 1156 1153 1154 1155
		f 4 -1973 -1976 1978 1979
		mu 0 4 1148 1152 1158 1157
		f 4 1980 1981 1982 1983
		mu 0 4 1162 1161 1160 1159
		f 4 1984 1985 1986 1987
		mu 0 4 1097 1161 1164 1163
		f 4 1988 1989 1990 1991
		mu 0 4 1167 1166 1164 1165
		f 4 1992 -1989 1993 1994
		mu 0 4 1169 1166 1167 1168
		f 4 1995 -1993 1996 1997
		mu 0 4 1171 1166 1169 1170
		f 4 1998 1999 2000 2001
		mu 0 4 1175 1174 1173 1172
		f 4 -1999 2002 2003 2004
		mu 0 4 1179 1178 1177 1176
		f 4 2005 2006 2007 2008
		mu 0 4 1182 1181 1180 1121
		f 4 2009 -391 2010 2011
		mu 0 4 1186 1185 1184 1183
		f 4 2012 2013 2014 2015
		mu 0 4 1190 1189 1188 1187
		f 4 2016 2017 2018 -1942
		mu 0 4 1133 1189 1191 1134
		f 4 2019 -2018 -2013 2020
		mu 0 4 1192 1191 1189 1190
		f 4 2021 -2020 2022 2023
		mu 0 4 1193 1191 1192 1157
		f 4 -2019 -2022 2024 2025
		mu 0 4 1134 1191 1193 1194
		f 4 2026 -1967 2027 -2021
		mu 0 4 1190 1149 1147 1192
		f 4 -1914 -1968 2028 2029
		mu 0 4 1115 1114 1149 1195
		f 4 2030 2031 -412 2032
		mu 0 4 1199 1198 1197 1196
		f 4 2033 2034 -2031 2035
		mu 0 4 1201 1200 1198 1199
		f 4 2036 -2030 2037 2038
		mu 0 4 1203 1115 1195 1202
		f 4 -1915 -2037 2039 2040
		mu 0 4 1116 1115 1203 1204
		f 4 2041 -2029 -2027 -2016
		mu 0 4 1187 1195 1149 1190
		f 4 -2038 -2042 2042 2043
		mu 0 4 1202 1195 1187 1205
		f 4 2044 2045 2046 2047
		mu 0 4 1162 1207 1206 1165
		f 4 2048 2049 2050 2051
		mu 0 4 1210 1207 1209 1208
		f 4 2052 2053 2054 2055
		mu 0 4 1213 1212 1206 1211
		f 4 2056 -2053 2057 2058
		mu 0 4 1215 1212 1213 1214
		f 4 2059 2060 2061 2062
		mu 0 4 1219 1218 1217 1216
		f 4 2063 -2060 2064 -1935
		mu 0 4 1130 1221 1220 1060
		f 4 2065 -2064 2066 2067
		mu 0 4 1222 1221 1130 1194
		f 4 2068 -1894 2069 2070
		mu 0 4 1224 1099 1100 1223
		f 4 2071 2072 2073 2074
		mu 0 4 1228 1227 1226 1225
		f 4 2075 2076 2077 2078
		mu 0 4 1045 1227 1160 1096
		f 4 2079 2080 2081 -1949
		mu 0 4 1137 1230 1229 1138
		f 4 2082 -2081 2083 2084
		mu 0 4 1234 1233 1232 1231
		f 4 -2082 2085 -468 2086
		mu 0 4 1138 1229 333 332
		f 4 2087 -1729 -1732 2088
		mu 0 4 1235 985 986 990
		f 4 2089 -2088 2090 2091
		mu 0 4 1237 985 1235 1236
		f 4 2092 2093 2094 2095
		mu 0 4 1228 1238 1209 1159
		f 4 2096 2097 2098 2099
		mu 0 4 1240 1238 1239 1177
		f 4 2100 2101 2102 2103
		mu 0 4 1244 1243 1242 1241
		f 4 2104 2105 2106 2107
		mu 0 4 1248 1247 1246 1245
		f 4 2108 2109 2110 -1959
		mu 0 4 1143 1247 1249 1144
		f 4 2111 -2110 -2105 2112
		mu 0 4 1250 1249 1247 1248
		f 4 -2111 2113 2114 2115
		mu 0 4 1254 1253 1252 1251
		f 4 2116 2117 -2034 2118
		mu 0 4 1256 1255 1200 1201
		f 4 2119 2120 -2117 2121
		mu 0 4 1258 1257 1255 1256
		f 4 2122 2123 2124 -2056
		mu 0 4 1211 1260 1259 1213
		f 4 2125 2126 2127 2128
		mu 0 4 1264 1263 1262 1261
		f 4 2129 -2126 2130 2131
		mu 0 4 1268 1267 1266 1265
		f 4 2132 -2130 2133 2134
		mu 0 4 1270 1267 1268 1269
		f 4 2135 2136 2137 2138
		mu 0 4 1273 1272 1271 1214
		f 4 2139 2140 2141 2142
		mu 0 4 1277 1276 1275 1274
		f 4 2143 2144 2145 2146
		mu 0 4 1281 1280 1279 1278
		f 4 2147 -2144 -2113 2148
		mu 0 4 1283 1282 1250 1248
		f 4 2149 -2148 2150 -2131
		mu 0 4 1266 1282 1283 1265
		f 4 -1795 2151 -2120 2152
		mu 0 4 1035 1036 1257 1258
		f 4 2153 2154 2155 2156
		mu 0 4 1287 1286 1285 1284
		f 4 -541 -2086 -2083 2157
		mu 0 4 388 387 1233 1234
		f 4 2158 -2124 2159 2160
		mu 0 4 1291 1290 1289 1288
		f 4 2161 -2159 2162 2163
		mu 0 4 1293 1290 1291 1292
		f 4 2164 -2014 -2017 -1940
		mu 0 4 1132 1188 1189 1133
		f 4 -2043 -2015 2165 2166
		mu 0 4 1205 1187 1188 1294
		f 4 -553 -1860 2167 2168
		mu 0 4 1298 1297 1296 1295;
	setAttr ".fc[1000:1499]"
		f 4 2169 -555 -1796 2170
		mu 0 4 1300 1299 1038 1035
		f 4 2171 -558 -2170 2172
		mu 0 4 1302 1301 1299 1300
		f 4 2173 -562 2174 2175
		mu 0 4 1306 1305 1304 1303
		f 4 2176 -566 2177 2178
		mu 0 4 1310 1309 1308 1307
		f 4 -570 -2177 2179 2180
		mu 0 4 1312 1309 1310 1311
		f 4 2181 -572 -2172 2182
		mu 0 4 1314 1313 1301 1302
		f 4 -576 -2182 2183 2184
		mu 0 4 1316 1313 1314 1315
		f 4 -579 -2169 2185 2186
		mu 0 4 1318 1298 1295 1317
		f 4 2187 -581 -2174 2188
		mu 0 4 1320 1319 1305 1306
		f 4 -585 -2188 2189 2190
		mu 0 4 1322 1319 1320 1321
		f 4 -589 2191 2192 2193
		mu 0 4 1325 426 1324 1323
		f 4 -1919 2194 2195 2196
		mu 0 4 1118 213 1795 1326
		f 4 -2033 -595 2197 2198
		mu 0 4 1199 1196 1328 1327
		f 4 2199 -598 2200 2201
		mu 0 4 1330 434 433 1329
		f 4 2202 -601 -2200 2203
		mu 0 4 1331 436 434 1330
		f 4 -2196 2204 2205 2206
		mu 0 4 1326 1796 439 1332
		f 4 -2011 -608 2207 2208
		mu 0 4 1183 1184 1334 1333
		f 4 -611 -2158 2209 2210
		mu 0 4 443 388 1234 1335
		f 4 -2208 -614 2211 2212
		mu 0 4 1333 1334 1337 1336
		f 4 -2198 -617 2213 2214
		mu 0 4 1327 1328 1339 1338
		f 4 2215 -2167 2216 2217
		mu 0 4 1341 1205 1294 1340
		f 4 2218 -2044 -2216 2219
		mu 0 4 1342 1202 1205 1341
		f 4 2220 -2039 -2219 2221
		mu 0 4 934 1203 1202 1342
		f 4 -2040 -2221 -1657 2222
		mu 0 4 1204 1203 934 935
		f 4 -2214 -628 2223 2224
		mu 0 4 1338 1339 1344 1343
		f 4 -2206 -630 -2203 2225
		mu 0 4 1332 439 436 1331
		f 4 2226 -1746 2227 -2041
		mu 0 4 1204 998 995 1116
		f 4 2228 2229 2230 2231
		mu 0 4 1348 1347 1346 1345
		f 4 2232 -2229 2233 -2119
		mu 0 4 1201 1347 1348 1256
		f 4 2234 -2233 -2036 -2199
		mu 0 4 1327 1347 1201 1199
		f 4 2235 -2230 2236 2237
		mu 0 4 1350 1346 1347 1349
		f 4 -2231 -2236 2238 2239
		mu 0 4 1345 1346 1350 955
		f 3 2240 2241 2242
		mu 0 3 1352 965 1351
		f 4 2243 -2243 2244 -2232
		mu 0 4 1345 1352 1351 1348
		f 4 -1705 -1708 -1710 -1702
		mu 0 4 964 967 970 966
		f 4 2245 -1703 2246 2247
		mu 0 4 1354 968 969 1353
		f 4 -1709 -1704 2248 2249
		mu 0 4 959 967 968 1355
		f 3 -1715 -1711 2250
		mu 0 3 972 971 970
		f 4 -2251 -1707 2251 2252
		mu 0 4 972 970 960 1356
		f 4 -1700 -2241 2253 -1698
		mu 0 4 962 965 1352 956
		f 4 -2242 2254 -2173 2255
		mu 0 4 1351 965 1302 1300
		f 4 -1701 -1697 2256 -1706
		mu 0 4 964 962 963 969
		f 4 2257 -1696 -1691 2258
		mu 0 4 1357 963 957 955
		f 4 2259 2260 2261 2262
		mu 0 4 1360 1359 1350 1358
		f 4 2263 -2260 2264 2265
		mu 0 4 1362 1359 1360 1361
		f 4 2266 -2264 2267 2268
		mu 0 4 1357 1359 1362 1353
		f 4 -1690 -2254 -2244 -2240
		mu 0 4 955 956 1352 1345
		f 4 -2262 -2238 2269 2270
		mu 0 4 1358 1350 1349 1363
		f 4 -2239 -2261 -2267 -2259
		mu 0 4 955 1350 1359 1357
		f 4 2271 -1975 2272 2273
		mu 0 4 1365 1154 1151 1364
		f 4 2274 2275 2276 2277
		mu 0 4 1369 1368 1367 1366
		f 4 2278 -2275 2279 2280
		mu 0 4 1371 1368 1369 1370
		f 4 2281 2282 2283 2284
		mu 0 4 1375 1374 1373 1372
		f 4 2285 -2282 2286 2287
		mu 0 4 1377 1374 1375 1376
		f 4 2288 -2155 2289 -1978
		mu 0 4 1155 1285 1286 1156
		f 4 2290 -2289 2291 2292
		mu 0 4 1379 1285 1155 1378
		f 4 -2156 -2291 2293 2294
		mu 0 4 1284 1285 1379 1380
		f 3 -2255 -1699 2295
		mu 0 3 1302 965 966
		f 4 -2122 -2234 -2245 2296
		mu 0 4 1258 1256 1348 1351
		f 4 2297 -2237 -2235 2298
		mu 0 4 1373 1349 1347 1327
		f 4 2299 2300 2301 2302
		mu 0 4 1382 1381 1324 1335
		f 4 -2302 -2192 -709 -2211
		mu 0 4 1335 1324 426 443
		f 4 -2193 -2301 2303 2304
		mu 0 4 1323 1324 1381 1383
		f 4 -2210 -2085 2305 -2303
		mu 0 4 1335 1234 1231 1382
		f 4 2306 -2084 2307 -2063
		mu 0 4 1216 1231 1232 1219
		f 4 -2306 -2307 2308 2309
		mu 0 4 1382 1231 1216 1384
		f 4 2310 -2175 -717 2311
		mu 0 4 1386 1303 1304 1385
		f 4 2312 -2311 2313 2314
		mu 0 4 1388 1303 1386 1387
		f 4 2315 -2176 -2313 2316
		mu 0 4 1389 1306 1303 1388
		f 4 2317 -2179 2318 2319
		mu 0 4 1391 1310 1307 1390
		f 4 -2180 -2318 2320 2321
		mu 0 4 1311 1310 1391 1392
		f 4 2322 2323 2324 2325
		mu 0 4 1396 1395 1394 1393
		f 4 2326 2327 2328 2329
		mu 0 4 1399 1395 1398 1397
		f 4 2330 -2160 2331 2332
		mu 0 4 1401 1288 1289 1400
		f 4 2333 -2331 2334 2335
		mu 0 4 1396 1288 1401 1402
		f 4 2336 2337 2338 2339
		mu 0 4 1402 1404 1403 1398
		f 4 2340 2341 2342 2343
		mu 0 4 1405 1404 1242 1172
		f 4 2344 -2337 -2335 2345
		mu 0 4 1241 1404 1402 1401
		f 4 2346 -2338 -2341 2347
		mu 0 4 1406 1403 1404 1405
		f 4 2348 -2347 2349 2350
		mu 0 4 1408 1403 1406 1407
		f 4 2351 2352 2353 2354
		mu 0 4 1411 1410 974 1409
		f 4 2355 2356 2357 -2320
		mu 0 4 1390 1410 1412 1391
		f 4 2358 2359 2360 2361
		mu 0 4 1411 1415 1414 1413
		f 4 2362 -2359 -2355 2363
		mu 0 4 1416 1415 1411 1409
		f 4 2364 -2360 2365 2366
		mu 0 4 1418 1414 1415 1417
		f 4 2367 -2365 2368 2369
		mu 0 4 1420 1414 1418 1419
		f 4 2370 -2357 -2352 -2362
		mu 0 4 1413 1412 1410 1411
		f 4 2371 -2371 2372 2373
		mu 0 4 1422 1412 1413 1421
		f 4 2374 2375 2376 2377
		mu 0 4 1424 1423 1329 1317
		f 4 2378 -2375 2379 2380
		mu 0 4 1426 1423 1424 1425
		f 4 2381 -1876 2382 2383
		mu 0 4 1425 1090 1087 1427
		f 4 -2383 -1956 2384 2385
		mu 0 4 1427 1087 1141 1428
		f 4 2386 2387 -2386 2388
		mu 0 4 1430 1429 1427 1428
		f 4 2389 2390 2391 2392
		mu 0 4 1426 1429 1432 1431
		f 4 2393 -2183 -2296 -1712
		mu 0 4 971 1314 1302 966
		f 4 -2297 -2256 -2171 -2153
		mu 0 4 1258 1351 1300 1035
		f 4 2394 2395 2396 -2305
		mu 0 4 1383 1433 1343 1323
		f 4 2397 -2395 2398 2399
		mu 0 4 1434 1433 1383 1384
		f 4 -2225 -2396 2400 2401
		mu 0 4 1338 1343 1433 1372
		f 4 -2397 -2224 -810 -2194
		mu 0 4 1323 1343 1344 1325
		f 4 2402 -2061 -2066 -2157
		mu 0 4 1284 1217 1218 1287
		f 4 2403 -2366 -2363 2404
		mu 0 4 1435 1417 1415 1416
		f 4 2405 -2404 2406 2407
		mu 0 4 1437 1417 1435 1436
		f 4 2408 -2367 -2406 2409
		mu 0 4 1399 1418 1417 1437
		f 4 2410 2411 2412 -1770
		mu 0 4 1013 1439 1438 1016
		f 4 2413 -2411 2414 2415
		mu 0 4 1441 1439 1013 1440
		f 4 2416 -2414 2417 2418
		mu 0 4 1443 1439 1441 1442
		f 4 2419 -2418 2420 -2392
		mu 0 4 1432 1442 1441 1431
		f 4 2421 2422 2423 2424
		mu 0 4 1447 1446 1445 1444
		f 4 2425 -2412 -2417 2426
		mu 0 4 1447 1438 1439 1443
		f 4 2427 -2426 -2425 2428
		mu 0 4 1364 1438 1447 1444
		f 4 2429 -2178 -838 -2185
		mu 0 4 1315 1307 1308 1316
		f 4 -2319 -2430 2430 2431
		mu 0 4 1390 1307 1315 973
		f 4 2432 -2168 -1879 -1878
		mu 0 4 1091 1295 1296 1092
		f 4 2433 -2189 -2316 2434
		mu 0 4 1448 1320 1306 1389
		f 4 -2190 -2434 2435 2436
		mu 0 4 1321 1320 1448 1407
		f 4 2437 -2212 -847 -2191
		mu 0 4 1321 1336 1337 1322
		f 4 2438 2439 2440 -2435
		mu 0 4 1389 1450 1449 1448
		f 4 2441 2442 2443 2444
		mu 0 4 1420 1450 1451 1421
		f 4 2445 -2440 -2442 -2370
		mu 0 4 1419 1449 1450 1420
		f 4 2446 -2446 2447 2448
		mu 0 4 1408 1449 1419 1397
		f 4 2449 2450 2451 -2405
		mu 0 4 1416 1453 1452 1435
		f 4 2452 -2450 -2364 2453
		mu 0 4 1454 1453 1416 1409
		f 3 -2250 2454 -1694
		mu 0 3 959 1355 958
		f 4 -2252 -1692 2455 2456
		mu 0 4 1356 960 961 1454
		f 4 2457 -2443 -2439 -2317
		mu 0 4 1388 1451 1450 1389
		f 4 -2444 2458 2459 -2374
		mu 0 4 1421 1451 1455 1422
		f 4 -2402 -2284 -2299 -2215
		mu 0 4 1338 1372 1373 1327
		f 4 2460 -2401 -2398 2461
		mu 0 4 1380 1372 1433 1434
		f 4 -2298 -2283 2462 -2270
		mu 0 4 1349 1373 1374 1363
		f 4 2463 -2145 -2150 -2129
		mu 0 4 1261 1279 1280 1264
		f 4 2464 -2127 -2133 -2143
		mu 0 4 1274 1262 1263 1277
		f 4 2465 -2465 2466 2467
		mu 0 4 1457 1262 1274 1456
		f 4 2468 -2277 2469 2470
		mu 0 4 1459 1366 1367 1458
		f 4 2471 -2469 2472 2473
		mu 0 4 1460 1366 1459 1457
		f 4 2474 -2276 2475 -2424
		mu 0 4 1445 1367 1368 1444
		f 4 -2470 -2475 2476 2477
		mu 0 4 1458 1367 1445 1461
		f 4 2478 -1769 2479 2480
		mu 0 4 1463 1013 1014 1462
		f 4 2481 -2324 -2327 -2410
		mu 0 4 1437 1394 1395 1399
		f 4 2482 2483 2484 2485
		mu 0 4 1467 1466 1465 1464
		f 4 2486 -2483 2487 2488
		mu 0 4 1468 1466 1467 1436
		f 4 2489 -2141 -2136 -2164
		mu 0 4 1292 1275 1276 1293
		f 4 -2142 2490 2491 -2467
		mu 0 4 1274 1275 1465 1456
		f 4 2492 -2161 -2334 -2326
		mu 0 4 1393 1291 1288 1396
		f 4 -2163 -2493 2493 2494
		mu 0 4 1292 1291 1393 1464
		f 4 2495 -2213 2496 -2348
		mu 0 4 1405 1333 1336 1406
		f 3 2497 2498 -2209
		mu 0 3 1333 1173 1183
		f 4 -2001 -2498 -2496 -2344
		mu 0 4 1172 1173 1333 1405
		f 4 -2499 2499 -2006 -2012
		mu 0 4 1183 1173 1469 1186
		f 4 -2343 -2102 2500 -2002
		mu 0 4 1172 1242 1243 1175
		f 3 -2342 -2345 -2103
		mu 0 3 1242 1404 1241
		f 4 2501 -2204 2502 2503
		mu 0 4 1471 1331 1330 1470
		f 4 2504 -2476 -2279 2505
		mu 0 4 1472 1444 1368 1371
		f 4 -2429 -2505 2506 -2274
		mu 0 4 1364 1444 1472 1365
		f 4 -1971 -2413 -2428 -2273
		mu 0 4 1151 1016 1438 1364
		f 4 2507 -2463 -2286 2508
		mu 0 4 1473 1363 1374 1377
		f 4 2509 -2451 2510 2511
		mu 0 4 1475 1452 1453 1474
		f 4 2512 -2510 2513 2514
		mu 0 4 1468 1452 1475 1476
		f 4 2515 -2512 2516 -2266
		mu 0 4 1361 1475 1474 1362
		f 4 -2202 -2376 2517 -2503
		mu 0 4 1330 1329 1423 1470
		f 4 -2377 -2201 -929 -2187
		mu 0 4 1317 1329 433 1318
		f 4 2518 2519 2520 2521
		mu 0 4 1440 1478 1332 1477
		f 4 2522 2523 2524 -2197
		mu 0 4 1326 1478 1463 1118
		f 4 -2265 2525 2526 2527
		mu 0 4 1361 1360 1369 1479
		f 4 -2280 -2526 -2263 2528
		mu 0 4 1370 1369 1360 1358
		f 4 -2527 -2278 -2472 2529
		mu 0 4 1479 1369 1366 1460
		f 4 2530 -1955 -1957 -2116
		mu 0 4 1251 1141 1142 1254
		f 4 -2385 -2531 2531 2532
		mu 0 4 1428 1141 1251 1480
		f 4 -2477 -2423 2533 2534
		mu 0 4 1461 1445 1446 1481
		f 4 -2529 -2271 -2508 2535
		mu 0 4 1370 1358 1363 1473
		f 4 -2521 -2226 -2502 2536
		mu 0 4 1477 1332 1331 1471
		f 3 -2520 -2523 -2207
		mu 0 3 1332 1478 1326
		f 4 2537 -2504 2538 -2421
		mu 0 4 1441 1471 1470 1431
		f 4 -2522 -2537 -2538 -2416
		mu 0 4 1440 1477 1471 1441
		f 4 -2539 -2518 -2379 -2393
		mu 0 4 1431 1470 1423 1426
		f 4 2539 -2114 -2112 -2147
		mu 0 4 1278 1252 1253 1281
		f 4 2540 -2540 2541 -2535
		mu 0 4 1481 1252 1278 1461
		f 4 -2455 -2249 -2246 2542
		mu 0 4 958 1355 968 1354
		f 4 -2519 -2415 -2479 -2524
		mu 0 4 1478 1440 1013 1463
		f 4 2543 -2511 2544 -2543
		mu 0 4 1354 1474 1453 958
		f 4 2545 -2166 -2165 -1962
		mu 0 4 1145 1294 1188 1132
		f 4 2546 -1960 -1937 -1846
		mu 0 4 1064 1146 1131 1054
		f 4 -1961 2547 -1676 2548
		mu 0 4 1145 1146 948 949
		f 4 -1845 2549 -1668 2550
		mu 0 4 1064 1065 942 943
		f 4 2551 -1844 -1847 -1843
		mu 0 4 1063 1065 1055 1053
		f 4 -1842 -964 -1661 2552
		mu 0 4 1063 156 20 937
		f 4 2553 -1793 2554 -1784
		mu 0 4 1025 1034 1033 1028
		f 4 2555 -1792 -1778 2556
		mu 0 4 1482 1033 1021 1024
		f 4 2557 -2073 -2076 -1807
		mu 0 4 1044 1226 1227 1045
		f 4 2558 -2558 2559 2560
		mu 0 4 1224 1226 1044 1483
		f 4 2561 2562 2563 -1822
		mu 0 4 1049 1485 1484 1047
		f 4 2564 -2563 2565 -1856
		mu 0 4 1070 1484 1485 1071
		f 4 -2564 2566 2567 -1819
		mu 0 4 1047 1484 1486 1048
		f 4 2568 -2567 -2565 -1854
		mu 0 4 1068 1486 1484 1070
		f 4 2569 -2569 2570 2571
		mu 0 4 1488 1486 1068 1487
		f 4 -2568 -2570 2572 2573
		mu 0 4 1048 1486 1488 1489
		f 4 2574 -1953 -1881 2575
		mu 0 4 1490 1139 1085 1093
		f 4 -1958 -2575 2576 2577
		mu 0 4 1143 1139 1490 1491
		f 4 -1647 -1749 2578 -1652
		mu 0 4 926 927 999 929
		f 4 -1648 -1651 2579 -1645
		mu 0 4 924 926 930 925
		f 4 2580 -1748 -2227 -2223
		mu 0 4 935 999 998 1204
		f 4 -1658 -2222 2581 -1641
		mu 0 4 921 934 1342 920
		f 4 -1659 -1640 2582 -1656
		mu 0 4 932 921 922 933
		f 4 -2582 -2220 2583 -1688
		mu 0 4 920 1342 1341 953
		f 4 -2584 -2218 2584 -1686
		mu 0 4 953 1341 1340 950
		f 4 2585 -2217 -2546 -2549
		mu 0 4 949 1340 1294 1145
		f 4 2586 -2548 -2547 -2551
		mu 0 4 943 948 1146 1064
		f 4 -1678 -1673 2587 -1683
		mu 0 4 947 944 945 952
		f 4 -1670 -1665 2588 -1675
		mu 0 4 941 938 939 946
		f 4 2589 -2550 -2552 -2553
		mu 0 4 937 942 1065 1063
		f 4 2590 -1003 -1740 -1751
		mu 0 4 928 600 80 994
		f 4 -1662 -1006 2591 -1667
		mu 0 4 936 19 601 940
		f 4 2592 -1650 2593 2594
		mu 0 4 1493 930 931 1492
		f 4 -2580 -2593 2595 2596
		mu 0 4 925 930 1493 1494
		f 4 -1655 -2579 -2581 -1660
		mu 0 4 932 929 999 935
		f 4 2597 -1639 2598 2599
		mu 0 4 1496 922 923 1495
		f 4 -2583 -2598 2600 2601
		mu 0 4 933 922 1496 1497
		f 4 -2599 -1687 2602 2603
		mu 0 4 1495 923 954 1498
		f 4 -2603 -1684 2604 2605
		mu 0 4 1498 954 951 1499
		f 4 -1682 -2585 -2586 -1679
		mu 0 4 947 950 1340 949
		f 4 -1674 -1677 -2587 -1671
		mu 0 4 941 944 948 943
		f 4 -2588 2606 2607 2608
		mu 0 4 952 945 1501 1500
		f 4 -2589 2609 2610 2611
		mu 0 4 946 939 1503 1502
		f 4 -1666 -1669 -2590 -1663
		mu 0 4 936 938 942 937
		f 4 -1644 -1027 -2591 -1649
		mu 0 4 924 5 600 928
		f 4 -2592 -1029 2612 2613
		mu 0 4 940 601 615 1504
		f 4 2614 -2610 -1664 -2614
		mu 0 4 1504 1503 939 940
		f 4 2615 -2607 -1672 -2612
		mu 0 4 1502 1501 945 946
		f 4 2616 -2605 -1680 -2609
		mu 0 4 1500 1499 951 952
		f 4 2617 -2594 -1654 -2602
		mu 0 4 1497 1492 931 933
		f 4 2618 -1035 -1643 -2597
		mu 0 4 1494 616 6 925
		f 4 -1038 -1909 2619 -1862
		mu 0 4 1076 1112 1111 1077
		f 4 2620 -1908 -1905 2621
		mu 0 4 1505 1111 1107 1110
		f 4 -2620 -2621 2622 2623
		mu 0 4 1077 1111 1505 1506
		f 4 -1897 -1864 -1867 2624
		mu 0 4 1101 1079 1080 1084
		f 4 -2003 -2501 2625 -2100
		mu 0 4 1177 1178 1507 1240
		f 4 2626 -2098 -2093 -2075
		mu 0 4 1225 1239 1238 1228
		f 4 2627 -1927 2628 2629
		mu 0 4 1176 1126 1127 1180
		f 4 2630 -2627 2631 2632
		mu 0 4 1508 1239 1225 1223
		f 4 -1713 -2353 -2356 -2432
		mu 0 4 973 974 1410 1390
		f 4 -2431 -2184 -2394 -1714
		mu 0 4 973 1315 1314 971
		f 4 2633 -2312 -1052 -2181
		mu 0 4 1311 1386 1385 1312
		f 4 -2373 -2361 -2368 -2445
		mu 0 4 1421 1413 1414 1420
		f 4 2634 -2459 -2458 -2315
		mu 0 4 1387 1455 1451 1388
		f 4 -2460 -2635 2635 2636
		mu 0 4 1422 1455 1387 1392
		f 4 2637 -2281 -2536 -2509
		mu 0 4 1377 1371 1370 1473
		f 4 2638 2639 2640 2641
		mu 0 4 1269 1510 1509 1271
		f 4 2642 -2639 -2134 2643
		mu 0 4 1511 1510 1269 1268
		f 4 2644 -2643 2645 2646
		mu 0 4 1513 1510 1511 1512
		f 4 2647 -2106 -2109 -2578
		mu 0 4 1491 1246 1247 1143
		f 4 2648 -2648 2649 2650
		mu 0 4 1136 1246 1491 1487
		f 4 2651 -2576 2652 -2573
		mu 0 4 1488 1490 1093 1489
		f 4 -2653 -1882 2653 2654
		mu 0 4 1489 1093 1081 1039
		f 4 -2654 -1866 2655 -1800
		mu 0 4 1039 1081 1078 1041
		f 4 -2656 -1895 2656 -1801
		mu 0 4 1041 1078 1099 1042
		f 4 2657 2658 2659 -1998
		mu 0 4 1170 1514 980 1171
		f 4 2660 -2640 -2645 2661
		mu 0 4 1515 1509 1510 1513
		f 4 2662 -1890 -1886 -1988
		mu 0 4 1163 977 1095 1097
		f 4 -1922 -1721 -1724 2663
		mu 0 4 1120 978 979 983
		f 4 -1735 2664 -1739 2665
		mu 0 4 990 988 981 992
		f 4 -2091 2666 2667 2668
		mu 0 4 1236 1235 1516 1512
		f 4 -1945 -1730 -2090 2669
		mu 0 4 1135 984 985 1237
		f 4 2670 -2107 -2649 -1946
		mu 0 4 1135 1245 1246 1136
		f 4 -2149 -2108 2671 2672
		mu 0 4 1283 1248 1245 1517
		f 4 -2542 -2146 2673 -2478
		mu 0 4 1461 1278 1279 1458
		f 4 2674 -2672 -2671 -2670
		mu 0 4 1237 1517 1245 1135
		f 4 -2151 -2673 2675 2676
		mu 0 4 1265 1283 1517 1518
		f 4 2677 -2480 -1764 -1758
		mu 0 4 1005 1519 1012 1004
		f 4 2678 -2678 2679 2680
		mu 0 4 1520 1519 1005 1117
		f 4 -2525 -2481 -2679 -1920
		mu 0 4 1118 1463 1462 1119
		f 4 2681 -2285 -2461 -2294
		mu 0 4 1379 1375 1372 1380
		f 4 2682 -2506 -2638 -2288
		mu 0 4 1376 1472 1371 1377
		f 4 -2507 -2683 2683 2684
		mu 0 4 1365 1472 1376 1378
		f 4 2685 -2419 2686 2687
		mu 0 4 1521 1443 1442 1430
		f 4 -2532 -2115 -2541 2688
		mu 0 4 1480 1251 1252 1481
		f 4 -2650 -2577 -2652 -2572
		mu 0 4 1487 1491 1490 1488
		f 4 -2571 -1853 -1944 -2651
		mu 0 4 1487 1068 1069 1136
		f 4 -1804 -2555 -2556 2689
		mu 0 4 1043 1028 1033 1482
		f 4 -2346 -2333 2690 -2104
		mu 0 4 1241 1401 1400 1244
		f 4 2691 -2332 -2123 2692
		mu 0 4 1210 1522 1260 1211
		f 4 -2691 -2692 -2052 2693
		mu 0 4 1523 1522 1210 1208
		f 4 -2095 -2050 -2045 -1984
		mu 0 4 1159 1209 1207 1162
		f 4 -2051 -2094 -2097 2694
		mu 0 4 1208 1209 1238 1240
		f 4 -1983 -2077 -2072 -2096
		mu 0 4 1159 1160 1227 1228
		f 4 -2078 -1982 -1985 -1888
		mu 0 4 1096 1160 1161 1097
		f 4 -1887 -1787 -1805 -2079
		mu 0 4 1096 1029 1030 1045
		f 4 -2448 -2369 -2409 -2330
		mu 0 4 1397 1419 1418 1399
		f 4 -2340 -2328 -2323 -2336
		mu 0 4 1402 1398 1395 1396
		f 4 -2329 -2339 -2349 -2449
		mu 0 4 1397 1398 1403 1408
		f 4 -2350 -2497 -2438 -2437
		mu 0 4 1407 1406 1336 1321
		f 4 -2436 -2441 -2447 -2351
		mu 0 4 1407 1448 1449 1408
		f 4 -2636 -2314 -2634 -2322
		mu 0 4 1392 1387 1386 1311
		f 4 -2321 -2358 -2372 -2637
		mu 0 4 1392 1391 1412 1422
		f 4 -2494 -2325 2695 -2486
		mu 0 4 1464 1393 1394 1467
		f 4 -2485 -2491 -2490 -2495
		mu 0 4 1464 1465 1275 1292
		f 4 -2492 -2484 2696 2697
		mu 0 4 1456 1465 1466 1524
		f 4 -2471 -2674 -2464 2698
		mu 0 4 1459 1458 1279 1261
		f 4 -2689 -2534 2699 2700
		mu 0 4 1480 1481 1446 1521
		f 4 -2389 -2533 -2701 -2688
		mu 0 4 1430 1428 1480 1521
		f 4 -2384 -2388 -2390 -2381
		mu 0 4 1425 1427 1429 1426
		f 4 -2378 -2186 -2433 2701
		mu 0 4 1424 1317 1295 1091
		f 4 -2420 -2391 -2387 -2687
		mu 0 4 1442 1432 1429 1430
		f 4 -2686 -2700 -2422 -2427
		mu 0 4 1443 1521 1446 1447
		f 4 -2684 -2287 -2682 -2293
		mu 0 4 1378 1376 1375 1379
		f 4 -2292 -1977 -2272 -2685
		mu 0 4 1378 1155 1154 1365
		f 4 -1979 -2290 2702 -2024
		mu 0 4 1157 1158 1525 1193
		f 4 -2023 -2028 -1963 -1980
		mu 0 4 1157 1192 1147 1148
		f 4 2703 -2667 -2089 -2666
		mu 0 4 992 1516 1235 990
		f 4 2704 -2704 -1738 2705
		mu 0 4 1526 1516 992 982
		f 4 -2668 -2705 2706 -2647
		mu 0 4 1512 1516 1526 1513
		f 4 2707 -1725 -1720 -2659
		mu 0 4 1514 982 979 980
		f 4 -2706 -2708 2708 2709
		mu 0 4 1526 982 1514 1527
		f 4 -2660 -1723 -2663 2710
		mu 0 4 1171 980 977 1163
		f 4 -1991 -1986 -1981 -2048
		mu 0 4 1165 1164 1161 1162
		f 4 -1987 -1990 -1996 -2711
		mu 0 4 1163 1164 1166 1171
		f 4 -2047 -2054 2711 -1992
		mu 0 4 1165 1206 1212 1167
		f 4 -2055 -2046 -2049 -2693
		mu 0 4 1211 1206 1207 1210
		f 4 2712 -2676 -2675 -2092
		mu 0 4 1236 1518 1517 1237
		f 4 -2132 -2677 2713 -2644
		mu 0 4 1268 1265 1518 1511
		f 4 2714 -2709 -2658 -1997
		mu 0 4 1169 1527 1514 1170
		f 4 2715 -2715 -1995 2716
		mu 0 4 1515 1527 1169 1168
		f 4 -2707 -2710 -2716 -2662
		mu 0 4 1513 1526 1527 1515
		f 4 -2646 -2714 -2713 -2669
		mu 0 4 1512 1511 1518 1236
		f 4 -1994 -2712 -2057 2717
		mu 0 4 1168 1167 1212 1215
		f 4 -2632 -2074 -2559 -2071
		mu 0 4 1223 1225 1226 1224
		f 4 -1924 -1138 -2010 -2009
		mu 0 4 1121 1122 1528 1182
		f 4 -2008 -2629 2718 -1925
		mu 0 4 1121 1180 1127 1124
		f 4 -2695 -2626 -2101 -2694
		mu 0 4 1208 1240 1507 1523
		f 4 -2058 -2125 -2162 -2139
		mu 0 4 1214 1213 1259 1273
		f 4 -2642 -2137 -2140 -2135
		mu 0 4 1269 1271 1272 1270
		f 4 -2138 -2641 2719 -2059
		mu 0 4 1214 1271 1509 1215
		f 4 2720 -1880 -1861 -2624
		mu 0 4 1506 1084 1074 1077
		f 4 2721 -2625 -2721 -2623
		mu 0 4 1505 1101 1084 1506
		f 4 2722 -1898 -2722 -2622
		mu 0 4 1110 1102 1101 1505
		f 4 -2399 -2304 -2300 -2310
		mu 0 4 1384 1383 1381 1382
		f 4 -2309 -2062 2723 -2400
		mu 0 4 1384 1216 1217 1434
		f 4 -2065 -2308 -2080 -1947
		mu 0 4 1060 1220 1230 1137
		f 4 -2462 -2724 -2403 -2295
		mu 0 4 1380 1434 1217 1284
		f 4 -2067 -1934 -1941 -2026
		mu 0 4 1194 1130 1129 1134
		f 4 -2025 -2703 -2154 -2068
		mu 0 4 1194 1193 1525 1222
		f 4 -1767 -1969 -1752 -1759
		mu 0 4 1004 1010 1002 1003
		f 4 -2680 -1757 -1760 -1917
		mu 0 4 1117 1005 1006 1009
		f 4 -1916 -1145 -1918 -2681
		mu 0 4 1117 211 641 1520
		f 4 -1814 -1754 -1913 -2228
		mu 0 4 995 1000 1001 1116
		f 4 -2087 -1146 -1951 -1950
		mu 0 4 1138 332 235 1062
		f 4 -2718 -2720 -2661 -2717
		mu 0 4 1168 1215 1509 1515
		f 4 -2655 -1799 -1817 -2574
		mu 0 4 1489 1039 1040 1048
		f 4 2724 -2657 -2069 -2561
		mu 0 4 1483 1042 1099 1224
		f 4 -1802 -2725 2725 -2557
		mu 0 4 1024 1042 1483 1482
		f 4 -2560 -1806 -2690 -2726
		mu 0 4 1483 1044 1043 1482
		f 4 -2702 -1877 -2382 -2380
		mu 0 4 1424 1091 1090 1425
		f 4 2726 -2354 -1716 -2253
		mu 0 4 1356 1409 974 972
		f 4 -2407 -2452 -2513 -2489
		mu 0 4 1436 1435 1452 1468
		f 4 -2488 -2696 -2482 -2408
		mu 0 4 1436 1467 1394 1437
		f 4 -2468 -2698 2727 -2474
		mu 0 4 1457 1456 1524 1460
		f 4 2728 -2697 -2487 -2515
		mu 0 4 1476 1524 1466 1468
		f 4 -2728 -2729 2729 -2530
		mu 0 4 1460 1524 1476 1479
		f 4 -1926 -2719 2730 -1906
		mu 0 4 1108 1124 1127 1109
		f 4 -2730 -2514 -2516 -2528
		mu 0 4 1479 1476 1475 1361
		f 4 -2699 -2128 -2466 -2473
		mu 0 4 1459 1261 1262 1457
		f 4 -2268 -2517 -2544 -2248
		mu 0 4 1353 1362 1474 1354
		f 4 -2247 -2257 -2258 -2269
		mu 0 4 1353 969 963 1357
		f 3 -2545 2731 -1695
		mu 0 3 958 1453 961
		f 3 -2732 -2453 -2456
		mu 0 3 961 1453 1454
		f 3 -2454 -2727 -2457
		mu 0 3 1454 1409 1356
		f 4 2732 -1899 -2723 -1907
		mu 0 4 1109 1104 1102 1110
		f 4 2733 2734 2735 2736
		mu 0 4 1545 1538 1539 1544
		f 4 2737 2738 2739 2740
		mu 0 4 1547 1541 1542 1546
		f 4 -1166 2741 2742 2743
		mu 0 4 1549 1532 1533 1548
		f 4 2744 2745 -2738 2746
		mu 0 4 1550 1540 1541 1547
		f 4 2747 2748 2749 -2595
		mu 0 4 1554 1553 1552 1551
		f 4 2750 -2748 -2618 2751
		mu 0 4 1546 1553 1554 1555
		f 4 2752 -2747 2753 -2600
		mu 0 4 1557 1550 1547 1556
		f 4 2754 2755 -2753 -2604
		mu 0 4 1558 1544 1550 1557
		f 4 2756 -2737 -2755 -2606
		mu 0 4 1559 1545 1544 1558
		f 4 2757 -2757 -2617 2758
		mu 0 4 1561 1545 1559 1560
		f 4 2759 2760 -2616 2761
		mu 0 4 1565 1564 1563 1562
		f 4 2762 2763 -2615 2764
		mu 0 4 1548 1568 1567 1566
		f 4 2765 -1189 -2619 2766
		mu 0 4 1572 1571 1570 1569
		f 4 -2611 -2764 2767 -2762
		mu 0 4 1562 1567 1568 1565
		f 4 -2608 -2761 2768 -2759
		mu 0 4 1560 1563 1564 1561
		f 4 -2601 -2754 -2741 -2752
		mu 0 4 1555 1556 1547 1546
		f 4 -2596 -2750 2769 -2767
		mu 0 4 1569 1551 1552 1572
		f 4 -2613 -1195 -2744 -2765
		mu 0 4 1566 1573 1549 1548
		f 4 -2736 2770 -2745 -2756
		mu 0 4 1544 1539 1540 1550
		f 4 2771 2772 2773 -2760
		mu 0 4 1565 1535 1536 1564
		f 4 2774 2775 -2734 -2758
		mu 0 4 1561 1537 1538 1545
		f 4 -2774 2776 -2775 -2769
		mu 0 4 1564 1536 1537 1561
		f 4 2777 2778 -2772 -2768
		mu 0 4 1568 1534 1535 1565
		f 4 -2743 2779 -2778 -2763
		mu 0 4 1548 1533 1534 1568
		f 4 -2740 2780 2781 -2751
		mu 0 4 1546 1542 1543 1553
		f 4 -2782 2782 2783 -2749
		mu 0 4 1553 1543 1529 1552
		f 4 -2784 2784 2785 -2770
		mu 0 4 1552 1529 1530 1572
		f 4 -2786 2786 -1212 -2766
		mu 0 4 1572 1530 1531 1571
		f 4 2787 2788 2789 2790
		mu 0 4 1577 1576 1575 1574
		f 4 2791 -2789 2792 2793
		mu 0 4 1579 1575 1576 1578
		f 3 2794 -2793 -2788
		mu 0 3 1577 1578 1576
		f 4 2795 2796 2797 2798
		mu 0 4 1583 1582 1581 1580
		f 4 2799 -2799 2800 -1228
		mu 0 4 1585 1583 1580 1584
		f 4 2801 -1229 -2801 2802
		mu 0 4 1587 1586 1584 1580
		f 4 -2803 -2798 -1232 2803
		mu 0 4 1587 1580 1581 1588
		f 4 -1236 2804 2805 2806
		mu 0 4 1592 1591 1590 1589
		f 3 2807 2808 -2806
		mu 0 3 1590 1593 1589
		f 3 -2808 2809 2810
		mu 0 3 1593 1590 1594
		f 4 2811 2812 2813 2814
		mu 0 4 1598 1597 1596 1595
		f 4 -2815 2815 2816 2817
		mu 0 4 1598 1595 1599 1583
		f 4 -2816 2818 2819 2820
		mu 0 4 1603 1602 1601 1600
		f 3 2821 2822 -2819
		mu 0 3 1602 1604 1601
		f 4 -2822 -2814 2823 2824
		mu 0 4 1604 1602 1606 1605
		f 4 2825 2826 -2821 2827
		mu 0 4 1608 1607 1603 1600
		f 4 2828 -2828 2829 2830
		mu 0 4 1610 1608 1600 1609
		f 4 2831 -2830 -2820 2832
		mu 0 4 1611 1609 1600 1601
		f 3 2833 -2833 2834
		mu 0 3 1612 1611 1601
		f 3 2835 -2835 2836
		mu 0 3 1613 1612 1601
		f 3 -2837 -2823 2837
		mu 0 3 1613 1601 1604
		f 3 2838 2839 2840
		mu 0 3 1615 1614 1604
		f 3 2841 2842 -2840
		mu 0 3 1614 1616 1604
		f 4 2843 2844 2845 -2842
		mu 0 4 1614 1618 1617 1616
		f 4 2846 -2844 -2839 2847
		mu 0 4 1619 1618 1614 1615
		f 3 2848 2849 2850
		mu 0 3 1622 1621 1620
		f 4 2851 2852 -2850 2853
		mu 0 4 1624 1623 1620 1621
		f 4 -2824 2854 -2854 2855
		mu 0 4 1605 1606 1624 1621
		f 3 2856 2857 -2856
		mu 0 3 1621 1625 1605
		f 4 2858 2859 -2857 -2849
		mu 0 4 1622 1626 1625 1621
		f 4 -2825 -2858 2860 -2841
		mu 0 4 1604 1605 1625 1615
		f 4 2861 2862 2863 2864
		mu 0 4 1630 1629 1628 1627
		f 3 -2865 2865 2866
		mu 0 3 1630 1627 1631
		f 4 2867 -2866 2868 -2855
		mu 0 4 1606 1631 1627 1624
		f 4 2869 2870 -2869 -2864
		mu 0 4 1628 1632 1624 1627
		f 4 2871 -2867 2872 -2795
		mu 0 4 1577 1630 1631 1578
		f 4 2873 2874 2875 -2794
		mu 0 4 1578 1634 1633 1579
		f 3 -2874 2876 2877
		mu 0 3 1634 1578 1635
		f 4 2878 2879 -2877 2880
		mu 0 4 750 1636 1635 1578
		f 4 -1313 -2881 2881 2882
		mu 0 4 752 750 1578 1637
		f 4 2883 -2882 -2873 -2868
		mu 0 4 1606 1637 1578 1631
		f 3 -1316 -2883 2884
		mu 0 3 1640 1639 1638
		f 3 2885 -2885 2886
		mu 0 3 1597 1640 1638
		f 3 -2884 -2813 -2887
		mu 0 3 1638 1596 1597
		f 4 -2810 2887 -2817 2888
		mu 0 4 1594 1590 1583 1599
		f 4 -2818 -2800 -1322 2889
		mu 0 4 1598 1583 1585 1641
		f 4 -2805 2890 -2796 -2888
		mu 0 4 1590 1591 1582 1583
		f 4 -2812 -2890 -1325 -2886
		mu 0 4 1597 1598 1641 1640
		f 3 -2889 -2827 2891
		mu 0 3 1642 1603 1607
		f 3 2892 -2892 2893
		mu 0 3 1645 1644 1643
		f 4 2894 -1329 -2802 2895
		mu 0 4 1647 1646 1586 1587
		f 4 -2896 -2804 -1332 2896
		mu 0 4 1647 1587 1588 1648
		f 3 -1335 2897 -2897
		mu 0 3 1648 1649 1647
		f 3 -1336 -2895 -2898
		mu 0 3 1649 1646 1647
		f 4 2898 2899 2900 -2880
		mu 0 4 1636 1651 1650 1635
		f 3 -2901 2901 -2878
		mu 0 3 1635 1650 1634
		f 4 -2875 -2902 2902 2903
		mu 0 4 1633 1634 1650 1652
		f 4 2904 2905 -2903 -2900
		mu 0 4 1651 1653 1652 1650
		f 4 -2861 -2860 2906 -2848
		mu 0 4 1615 1625 1626 1619
		f 3 -2852 -2871 2907
		mu 0 3 1623 1624 1632
		f 4 2908 -2870 2909 2910
		mu 0 4 1655 1632 1628 1654
		f 3 2911 2912 -2911
		mu 0 3 1654 1656 1655
		f 4 2913 -2912 -2910 -2863
		mu 0 4 1629 1656 1654 1628
		f 4 -2913 2914 2915 2916
		mu 0 4 1655 1656 975 1657
		f 3 -1718 2917 2918
		mu 0 3 59 975 1658
		f 3 -2918 -2915 2919
		mu 0 3 1658 975 1656
		f 3 2920 2921 2922
		mu 0 3 1660 1655 1659
		f 3 2923 -2921 2924
		mu 0 3 1620 1655 1660
		f 4 -2925 -2923 2925 -2851
		mu 0 4 1620 1660 1659 1622
		f 4 2926 2927 2928 2929
		mu 0 4 1662 1659 1657 1661
		f 3 -2917 -2928 -2922
		mu 0 3 1655 1657 1659
		f 4 2930 2931 2932 2933
		mu 0 4 1619 1664 1662 1663
		f 3 2934 -2927 -2932
		mu 0 3 1664 1659 1662
		f 3 -2931 2935 -2935
		mu 0 3 1664 1619 1659
		f 3 2936 2937 2938
		mu 0 3 1666 1662 1665
		f 3 -2937 2939 2940
		mu 0 3 1662 1666 1617
		f 4 -2940 -2939 2941 2942
		mu 0 4 1617 1666 1665 1667
		f 3 2943 2944 2945
		mu 0 3 1669 1665 1668
		f 3 2946 -2944 2947
		mu 0 3 1670 1665 1669
		f 4 -2948 -2946 2948 2949
		mu 0 4 1670 1669 1668 1671
		f 4 -2945 2950 2951 2952
		mu 0 4 1668 1665 1661 1672
		f 3 -2930 -2951 -2938
		mu 0 3 1662 1661 1665
		f 3 2953 2954 2955
		mu 0 3 1633 1673 1658
		f 3 2956 -2919 -2955
		mu 0 3 1673 59 1658
		f 3 -1396 -2957 2957
		mu 0 3 789 59 1673
		f 3 -1398 -2958 2958
		mu 0 3 790 789 1673
		f 4 2959 -2906 2960 -2959
		mu 0 4 1673 1652 1653 790
		f 3 -2960 -2954 -2904
		mu 0 3 1652 1673 1633
		f 4 2961 2962 2963 2964
		mu 0 4 1656 1675 1574 1674
		f 3 2965 -2920 -2965
		mu 0 3 1674 1658 1656
		f 3 -2966 2966 2967
		mu 0 3 1658 1674 1575
		f 3 -2967 -2964 -2790
		mu 0 3 1575 1674 1574
		f 3 -2908 -2909 2968
		mu 0 3 1623 1632 1655
		f 3 -2969 -2924 -2853
		mu 0 3 1623 1655 1620
		f 3 -2859 -2926 2969
		mu 0 3 1626 1622 1659
		f 3 -2970 -2936 -2907
		mu 0 3 1626 1659 1619
		f 3 2970 -2933 2971
		mu 0 3 1618 1663 1662
		f 3 -2972 -2941 -2845
		mu 0 3 1618 1662 1617
		f 3 2972 -2942 2973
		mu 0 3 1676 1667 1665
		f 3 -2974 -2947 2974
		mu 0 3 1676 1665 1670
		f 3 2975 2976 2977
		mu 0 3 1678 1668 1677
		f 4 2978 2979 2980 -2977
		mu 0 4 1668 1645 1679 1677
		f 3 2981 -2979 -2953
		mu 0 3 1672 1645 1668
		f 3 -2949 -2976 2982
		mu 0 3 1671 1668 1678
		f 4 2983 2984 -2980 -2894
		mu 0 4 1643 1610 1679 1645
		f 4 2985 -1426 -2961 -2905
		mu 0 4 1651 797 790 1653;
	setAttr ".fc[1500:1679]"
		f 4 -2872 -2791 -2963 2986
		mu 0 4 1630 1577 1574 1675
		f 3 -2876 -2956 2987
		mu 0 3 1579 1633 1658
		f 3 -2988 -2968 -2792
		mu 0 3 1579 1658 1575
		f 3 2988 -2962 2989
		mu 0 3 1680 1675 1656
		f 3 -2989 2990 -2987
		mu 0 3 1675 1680 1630
		f 3 -2990 -2914 2991
		mu 0 3 1680 1656 1629
		f 3 -2992 -2862 -2991
		mu 0 3 1680 1629 1630
		f 3 -2847 -2934 -2971
		mu 0 3 1618 1619 1663
		f 3 2992 -2846 -2943
		mu 0 3 1667 1616 1617
		f 4 -2973 2993 2994 -2993
		mu 0 4 1667 1676 1681 1616
		f 4 -2834 2995 -2978 2996
		mu 0 4 1611 1612 1678 1677
		f 4 -2983 -2996 -2836 2997
		mu 0 4 1671 1678 1612 1613
		f 4 2998 -2832 -2997 -2981
		mu 0 4 1679 1609 1611 1677
		f 3 -2831 -2999 -2985
		mu 0 3 1610 1609 1679
		f 3 -2998 2999 -2950
		mu 0 3 1671 1613 1670
		f 4 -2994 -2975 -3000 3000
		mu 0 4 1681 1676 1670 1613
		f 3 -3001 -2838 3001
		mu 0 3 1681 1613 1604
		f 3 -3002 -2843 -2995
		mu 0 3 1681 1604 1616
		f 3 -2986 -2899 3002
		mu 0 3 797 1651 1636
		f 3 -1445 -3003 -2879
		mu 0 3 750 797 1636
		f 4 3003 3004 3005 3006
		mu 0 4 1685 1684 1683 1682
		f 4 -3004 3007 3008 3009
		mu 0 4 1684 1685 1687 1686
		f 3 3010 -3008 3011
		mu 0 3 1688 1687 1685
		f 3 3012 3013 -3012
		mu 0 3 1685 1689 1688
		f 3 3014 -3013 -3007
		mu 0 3 1682 1689 1685
		f 4 3015 3016 3017 3018
		mu 0 4 1692 1691 1683 1690
		f 4 3019 -3019 3020 3021
		mu 0 4 1694 1692 1690 1693
		f 4 3022 3023 -3021 3024
		mu 0 4 1684 1695 1693 1690
		f 3 -3025 -3018 -3005
		mu 0 3 1684 1690 1683
		f 4 3025 3026 3027 3028
		mu 0 4 1699 1698 1697 1696
		f 4 3029 3030 -3027 3031
		mu 0 4 1695 1700 1697 1698
		f 3 -3032 3032 3033
		mu 0 3 1695 1698 1701
		f 3 -3026 3034 -3033
		mu 0 3 1698 1699 1701
		f 3 -3035 3035 3036
		mu 0 3 1701 1699 1702
		f 3 3037 3038 -3036
		mu 0 3 1699 1703 1702
		f 4 -3038 -3029 3039 3040
		mu 0 4 1703 1699 1696 1704
		f 4 3041 -3039 3042 3043
		mu 0 4 1706 1702 1703 1705
		f 4 3044 3045 -3043 -3041
		mu 0 4 1704 1707 1705 1703
		f 4 -3044 3046 3047 3048
		mu 0 4 1706 1705 1709 1708
		f 4 -3048 3049 3050 3051
		mu 0 4 1708 1709 1711 1710
		f 3 -3047 3052 -3050
		mu 0 3 1709 1705 1711
		f 4 3053 3054 3055 -3053
		mu 0 4 1705 1713 1712 1711
		f 4 3056 3057 -3054 -3046
		mu 0 4 1707 1714 1713 1705
		f 4 3058 3059 -3049 3060
		mu 0 4 1716 1715 1706 1708
		f 4 3061 -3061 3062 3063
		mu 0 4 1718 1716 1708 1717
		f 3 -3063 3064 3065
		mu 0 3 1717 1708 1719
		f 3 -3052 3066 -3065
		mu 0 3 1708 1710 1719
		f 4 -3059 3067 3068 3069
		mu 0 4 1715 1716 1721 1720
		f 3 3070 -3069 3071
		mu 0 3 1722 1720 1721
		f 4 -3072 -3068 3072 3073
		mu 0 4 1722 1721 1716 1723
		f 3 -3073 3074 3075
		mu 0 3 1723 1716 1724
		f 3 -3075 3076 3077
		mu 0 3 1724 1716 1725
		f 3 -3077 -3062 3078
		mu 0 3 1725 1716 1718
		f 4 3079 -1523 3080 -3070
		mu 0 4 1720 845 844 1715
		f 4 3081 3082 3083 -3080
		mu 0 4 1720 1727 1726 845
		f 3 -3082 3084 3085
		mu 0 3 1727 1720 1728
		f 3 -3085 -3071 3086
		mu 0 3 1728 1720 1722
		f 3 3087 -3009 3088
		mu 0 3 1700 1686 1687
		f 4 -3023 -3010 -3088 -3030
		mu 0 4 1695 1684 1686 1700
		f 4 -3040 3089 -3011 3090
		mu 0 4 1704 1696 1687 1688
		f 4 -3089 -3090 -3028 -3031
		mu 0 4 1700 1687 1696 1697
		f 4 3091 -3091 3092 3093
		mu 0 4 1714 1704 1688 1729
		f 4 3094 -3093 -3014 3095
		mu 0 4 1730 1729 1688 1689
		f 4 3096 -3058 -3094 -3095
		mu 0 4 1730 1713 1714 1729
		f 4 3097 3098 3099 3100
		mu 0 4 1733 1712 1732 1731
		f 4 3101 3102 -3100 3103
		mu 0 4 1730 1734 1731 1732
		f 4 -3099 -3055 -3097 -3104
		mu 0 4 1732 1712 1713 1730
		f 3 -3101 3104 3105
		mu 0 3 1733 1731 1719
		f 3 -3103 3106 -3105
		mu 0 3 1731 1734 1719
		f 4 3107 3108 3109 3110
		mu 0 4 1738 1737 1736 1735
		f 3 3111 3112 -3108
		mu 0 3 1738 1734 1737
		f 3 -3112 3113 -3107
		mu 0 3 1734 1738 1719
		f 3 -3111 3114 -3114
		mu 0 3 1738 1735 1719
		f 3 3115 3116 3117
		mu 0 3 1724 1740 1739
		f 3 -3118 3118 3119
		mu 0 3 1724 1739 1741
		f 3 3120 3121 -3119
		mu 0 3 1739 1737 1741
		f 4 -3121 -3117 3122 -3109
		mu 0 4 1737 1739 1740 1736
		f 3 3123 3124 -3120
		mu 0 3 1741 1742 1724
		f 3 3125 3126 -3125
		mu 0 3 1742 1743 1724
		f 4 3127 -3126 3128 3129
		mu 0 4 1745 1743 1742 1744
		f 4 3130 3131 -3129 -3124
		mu 0 4 1741 1746 1744 1742
		f 3 3132 -3130 3133
		mu 0 3 1728 1745 1744
		f 3 -3134 -3132 3134
		mu 0 3 1728 1744 1746
		f 4 3135 3136 3137 3138
		mu 0 4 1749 1797 1748 1747
		f 4 3139 3140 -3139 3141
		mu 0 4 1746 871 1749 1747
		f 3 -3142 3142 -3135
		mu 0 3 1746 1747 1728
		f 3 -3138 3143 -3143
		mu 0 3 1747 1748 1728
		f 3 3144 -3136 3145
		mu 0 3 872 1798 1749
		f 3 -3146 -3141 -1590
		mu 0 3 872 1749 871
		f 3 -1591 -3084 3146
		mu 0 3 873 845 1726
		f 3 -3147 3147 -3145
		mu 0 3 873 1726 1799
		f 4 -3148 -3083 3148 -3137
		mu 0 4 1800 1726 1727 1748
		f 3 -3149 -3086 -3144
		mu 0 3 1748 1727 1728
		f 3 -3087 3149 -3133
		mu 0 3 1728 1722 1745
		f 4 -3074 3150 -3128 -3150
		mu 0 4 1722 1723 1743 1745
		f 3 -3151 -3076 -3127
		mu 0 3 1743 1723 1724
		f 3 -3078 3151 -3116
		mu 0 3 1724 1725 1740
		f 4 -3123 -3152 -3079 3152
		mu 0 4 1736 1740 1725 1718
		f 4 -3110 -3153 -3064 3153
		mu 0 4 1735 1736 1718 1717
		f 3 -3154 -3066 -3115
		mu 0 3 1735 1717 1719
		f 3 -3067 3154 -3106
		mu 0 3 1719 1710 1733
		f 4 -3155 -3051 -3056 -3098
		mu 0 4 1733 1710 1711 1712
		f 3 -3045 -3092 -3057
		mu 0 3 1707 1704 1714
		f 3 3155 3156 3157
		mu 0 3 1752 1751 1750
		f 4 -3022 3158 -3158 3159
		mu 0 4 1694 1693 1752 1750
		f 4 3160 3161 3162 -3156
		mu 0 4 1752 1701 1753 1751
		f 4 -3024 -3034 -3161 -3159
		mu 0 4 1693 1695 1701 1752
		f 4 -3037 3163 3164 -3162
		mu 0 4 1701 1702 1754 1753
		f 4 -3042 3165 3166 -3164
		mu 0 4 1702 1706 1755 1754
		f 3 3167 -3166 -3060
		mu 0 3 1715 1755 1706
		f 4 -1615 3168 -3168 -3081
		mu 0 4 844 1756 1755 1715
		f 3 -3113 3169 -3122
		mu 0 3 1737 1734 1741
		f 4 -1618 -3140 3170 3171
		mu 0 4 882 871 1746 1757
		f 3 -3131 3172 -3171
		mu 0 3 1746 1741 1757
		f 3 -3170 3173 -3173
		mu 0 3 1741 1734 1757
		f 4 -3174 -3102 -3096 3174
		mu 0 4 1757 1734 1730 1689
		f 4 3175 3176 -3015 3177
		mu 0 4 1759 1758 1689 1682
		f 4 3178 -3178 -3006 3179
		mu 0 4 1760 1759 1682 1683
		f 4 3180 3181 -3175 -3177
		mu 0 4 1758 1761 1757 1689
		f 4 3182 -1630 -3172 -3182
		mu 0 4 1761 1762 882 1757
		f 3 3183 -3180 -3017
		mu 0 3 1691 1760 1683
		f 3 -2733 -2731 -1930
		mu 0 3 1104 1109 1127
		f 3 3184 -2631 3185
		mu 0 3 1126 1239 1508
		f 4 -2004 -2099 -3185 -2628
		mu 0 4 1176 1177 1239 1126
		f 4 3186 3187 3188 -2633
		mu 0 4 1223 1103 1125 1508
		f 4 -2630 -2007 3189 -2005
		mu 0 4 1176 1180 1181 1179
		f 3 -3190 -2500 -2000
		mu 0 3 1174 1469 1173
		f 3 -3186 -3189 -1928
		mu 0 3 1126 1508 1125
		f 3 -1900 -1929 -3188
		mu 0 3 1103 1104 1125
		f 4 -3187 -2070 -1896 -1901
		mu 0 4 1103 1223 1100 1102
		f 4 3190 -157 3191 3192
		mu 0 4 888 889 890 891
		f 4 -3192 -139 3193 3194
		mu 0 4 891 890 892 893
		f 4 -976 3195 3196 3197
		mu 0 4 894 895 896 893
		f 4 -3194 -228 -188 -3198
		mu 0 4 893 892 897 894
		f 4 3198 3199 -96 3200
		mu 0 4 898 899 900 901
		f 4 -3201 -1084 -91 3201
		mu 0 4 898 901 902 903
		f 4 -3202 -1083 3202 3203
		mu 0 4 898 903 904 905
		f 4 -3203 -298 3204 3205
		mu 0 4 905 904 906 907
		f 4 -100 -3200 3206 3207
		mu 0 4 908 900 899 909
		f 4 3208 -3199 -3204 -3206
		mu 0 4 907 899 898 905
		f 4 -3205 -264 3209 3210
		mu 0 4 907 906 910 911
		f 4 3211 3212 -219 -3208
		mu 0 4 909 912 913 908
		f 4 3213 -3207 -3209 -3211
		mu 0 4 911 909 899 907
		f 4 -3210 -154 3214 3215
		mu 0 4 911 910 914 915
		f 4 3216 -3196 -977 3217
		mu 0 4 916 896 895 917
		f 4 3218 -967 -3191 3219
		mu 0 4 918 919 889 888
		f 4 -3195 -3197 3220 -3193
		mu 0 4 891 893 896 888
		f 4 -226 -3213 3221 -3218
		mu 0 4 917 913 912 916
		f 4 3222 -3212 -3214 -3216
		mu 0 4 915 912 909 911
		f 4 -3215 -146 -3219 3223
		mu 0 4 915 914 919 918
		f 4 -3221 -3217 3224 -3220
		mu 0 4 888 896 916 918
		f 4 -3225 -3222 -3223 -3224
		mu 0 4 918 916 912 915
		f 4 3225 -1791 3226 3227
		mu 0 4 1766 1765 1764 1763
		f 4 3228 -1776 -3226 3229
		mu 0 4 1768 1767 1765 1766
		f 4 3230 3231 -2562 3232
		mu 0 4 1768 1771 1770 1769
		f 4 -1821 -1857 -3229 -3233
		mu 0 4 1769 1772 1767 1768
		f 4 -1734 3233 3234 3235
		mu 0 4 1776 1775 1774 1773
		f 4 -1727 -2665 -3236 3236
		mu 0 4 1778 1777 1776 1773
		f 4 3237 -2664 -3237 3238
		mu 0 4 1780 1779 1778 1773
		f 4 3239 -1921 -3238 3240
		mu 0 4 1782 1781 1779 1780
		f 4 3241 -3234 -1736 3242
		mu 0 4 1784 1774 1775 1783
		f 4 -3239 -3235 3243 -3241
		mu 0 4 1780 1773 1774 1782
		f 4 3244 -1892 -3240 3245
		mu 0 4 1786 1785 1781 1782
		f 4 -1850 3246 3247 -3243
		mu 0 4 1783 1788 1787 1784
		f 4 -3244 -3242 3248 -3246
		mu 0 4 1782 1774 1784 1786
		f 4 3249 -1789 -3245 3250
		mu 0 4 1790 1789 1785 1786
		f 4 -2566 -3232 3251 3252
		mu 0 4 1792 1770 1771 1791
		f 4 -3227 -2554 3253 3254
		mu 0 4 1763 1764 1794 1793
		f 4 3255 -3231 -3230 -3228
		mu 0 4 1763 1771 1768 1766
		f 4 3256 -3247 -1855 -3253
		mu 0 4 1791 1787 1788 1792
		f 4 -3249 -3248 3257 -3251
		mu 0 4 1786 1784 1787 1790
		f 4 -3254 -1783 -3250 3258
		mu 0 4 1793 1794 1789 1790
		f 4 3259 -3252 -3256 -3255
		mu 0 4 1793 1791 1771 1763
		f 4 -3258 -3257 -3260 -3259
		mu 0 4 1790 1787 1791 1793
		f 4 3260 3261 3262 3263
		mu 0 4 1801 1802 1803 1804
		f 4 3264 3265 3266 3267
		mu 0 4 1805 1806 1807 1808
		f 4 3268 -3264 3269 -3266
		mu 0 4 1809 1801 1804 1810
		f 4 -3267 -3270 -3263 3270
		mu 0 4 1811 1812 1813 1814
		f 4 3271 -3268 -3271 -3262
		mu 0 4 1802 1805 1808 1803
		f 4 -3261 -3269 -3265 -3272
		mu 0 4 1815 1816 1817 1818;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 15;
	setAttr -s 16 ".dli[1:15]"  4 6 1 3 5 2 7 8 
		9 10 12 11 13 15 14;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode file -n "spy_redFile";
	setAttr ".ftn" -type "string" "spy_red.tga";
createNode lambert -n "spy_red";
createNode shadingEngine -n "spy_redSG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 11 ".gn";
createNode materialInfo -n "materialInfo7";
createNode displayLayer -n "mesh_layer";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode objectSet -n "bones";
	setAttr ".ihi" 0;
	setAttr -s 72 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode shadingEngine -n "helperBoneSG";
	addAttr -ci true -sn "vhbs" -ln "vstHelperBoneShader" -min 0 -max 1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr ".vhbs" yes;
createNode materialInfo -n "materialInfo14";
createNode lambert -n "helperBone";
createNode ramp -n "helperBoneRamp";
	setAttr -s 6 ".cel";
	setAttr ".cel[0].ep" 0.0099999997764825821;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.019999999552965164;
	setAttr ".cel[1].ec" -type "float3" 0 0 1 ;
	setAttr ".cel[2].ep" 0.25;
	setAttr ".cel[2].ec" -type "float3" 0 1 1 ;
	setAttr ".cel[3].ep" 0.5;
	setAttr ".cel[3].ec" -type "float3" 0 1 0 ;
	setAttr ".cel[4].ep" 0.75;
	setAttr ".cel[4].ec" -type "float3" 1 1 0 ;
	setAttr ".cel[5].ep" 0.99000000953674316;
	setAttr ".cel[5].ec" -type "float3" 1 0 0 ;
createNode displayLayer -n "skeleton_layer";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode groupId -n "groupId228";
	setAttr ".ihi" 0;
createNode groupId -n "groupId229";
	setAttr ".ihi" 0;
createNode groupId -n "groupId244";
	setAttr ".ihi" 0;
createNode groupId -n "groupId245";
	setAttr ".ihi" 0;
createNode dagPose -n "bindPose1";
	setAttr -s 73 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 149 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 46.698848031532144 -0.82719324898981128 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99998517318700209 0 0 0.0054454941154599978 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7543481345544087 0.93809252740880567
		 3.9646855733137243 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206896500839 -0.05326421996093305 -0.097733832711953253 0.013678190356416844 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -0.47817450377908594 0.024215680400369054
		 0.0466835014905575 0 -5.0061200000000001 3.1500518482366573 -0.86155101377391818 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.038793558648627685 0.10666815731990614 0.052877115982197603 0.99212951504667812 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0.92278626682230591 0 0 0 -4.2188898856210244e-005
		 22.299533783232327 5.6528051728399475e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.02980626191392546 0 0 0.99955569467174687 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.42388180983119356 0 0 0 3.3175158620224465e-005
		 18.044912593944311 1.7582851311814807e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -5.0054257108988178
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.12034271612878772 0 0 0.99273240637885196 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -5.1785104136763449
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.040942245579118582 0 0 0.9991615147346995 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.2723806620927753
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14798355346007067 0 0 0.98898982194223339 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -4.8786708819858795
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11286487527346338 0 0 0.99361034612644084 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.86243899999999996
		 -1.3431646944100351 -3.1419772373790043 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0072545103849872214 0.1246827206854203 0.59967753910948696 0.79043560163314075 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -4.8572257327350579e-016 -8.3266726846886593e-017
		 4.4408920985006242e-016 0 0 9.4766220000000008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 -0.24903644961178326 0.061452639302749253 0.10291389266795663 0.96104794395670612 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 12.527153999999999
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38968240991645398 0 0 0.92094930338303893 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 13.013495000000001
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1710172487595185 3.8571156106059235
		 0.74070443466187541 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.21032364980586171 -0.8933018466924697 0.11497068673229457 -0.38020719906449602 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9660911224990405 3.3981591151080348
		 1.5474740923319779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.23933892147887781 -0.89617128601869511 0.11673717438619019 -0.35491736911181732 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0294390289544708e-005
		 1.6906707126992906 3.3390134959176976e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.24330773366697769 0 0 0.9699491464699781 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1343620950252671e-005
		 1.4234064101499331 -2.3699300886192987e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.1168387075731792 0 0 0.99315090314243237 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5496894200903739e-005
		 1.4377946615243005 -5.6739299409969135e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.21088347864355766 0 0 0.97751120629647625 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.12716539652547e-006
		 1.0594207613231772 2.0654512734807895e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.16034210201254159 0 0 0.98706150280628391 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.72507877437831 13.709135572155434
		 1.1485831910545201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00056756329355342548 0.364817879146627 -0.0014462263421601616 0.93107760222026181 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5775728054310756 13.695775631130957
		 -1.9519251099728443 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00042933795421086349 0.27583123632371787 -0.0014931067094788638 0.96120482487834225 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.96575927734375 0.41624718904495239
		 0.52064955234527588 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7229440212249756 -0.1074221283197403
		 0.95805376768112183 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.26072646053366133 0 0 0.96541271629163306 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -0.47817450377908594 0.024215680400369054
		 0.0466835014905575 0 5.0061242487641913 3.1500447774815541 -0.861550936762982 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99212951504667801 0.052877115982197583 -0.10666815731990643 0.038793558648629128 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0.92278626682230591 0 0 0 0 -22.299508110324265
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.029806261913926275 0 0 0.99955569467174687 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -0.42388180983119356 0 0 0 2.0817958690244609e-008
		 -18.04493299205037 4.9542037139360673e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.0709615098339693
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20635314410944858 0 0 0.97847758273562158 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.067103172980147688
		 -16.087768786959209 3.108844456715107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.33987841068888147
		 -19.156661646589672 -2.6817765036469079 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2951831817626953 3.5843386650085449
		 -6.1179494857788086 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99998517318700209 0 0 0.0054454941154599978 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.2951798439025879 3.5843310356140137
		 -6.1179523468017578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0054454941154551059 0 0 0.99998517318700209 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.0614333152770996 -0.72744149624841015
		 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351575411907 -0.12723801940821283 -0.81606753997687864 -0.0061241373552523015 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7543477326084851 0.93809252733552029
		 3.9646855885757626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206901421514 0.053264221169070668 0.09773383204725887 0.013678186826430731 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.0614333152770996 -0.72744149624841015
		 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351520946764 0.12723801750963237 0.81606754065162623 -0.0061241370247192006 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.86243947193359083 -1.3431305843897121
		 -3.1419841949019349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.79043560163314086 0.5996775391094874 -0.12468272068541794 0.0072545103849844875 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 6.9388939039072284e-017 5.5511151231257839e-017
		 -2.0469737016526329e-016 0 8.6970686277720866e-009 -9.4766122920362452 -2.0274892875704609e-011 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.24903644961177912 0.061452639302749024 0.10291389266795664 0.96104794395670734 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -12.527146223464671
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38968240991645425 0 0 0.92094930338303882 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -13.013495000000001
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1710480260853877 -3.8571527380709085
		 -0.74067707424170948 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.21032364980586171 -0.8933018466924697 0.11497068673229457 -0.38020719906449602 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.6906289595508024
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.24330773366697769 0 0 0.9699491464699781 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.4234403322378264
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11683870757317874 0 0 0.99315090314243248 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.9661305649564225 -3.3981763725770886
		 -1.5474453812200828 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.23933892147887761 -0.89617128601869522 0.11673717438619008 -0.35491736911181715 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.4378199723363987
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.21088347864355778 0 0 0.97751120629647625 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.05939736748855 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.16034210201254179 0 0 0.98706150280628391 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7250645456249334 -13.709154255017928
		 -1.1485879815469673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0005675632936545849 0.36481787914662683 -0.001446226342199858 0.9310776022202617 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.577588985230383 -13.69579011767209
		 1.9518861920115924 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00042933795442008996 0.2758312363237172 -0.0014931067095389767 0.96120482487834236 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.965754508972168 -0.41627660393714905
		 -0.52065646648406982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7229239940643311 0.10741604864597321
		 -0.958046555519104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.260726460533661 0 0 0.96541271629163317 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.24749839881906133 1.3427813495108811
		 -1.6847126876674601 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.18393329140268577 0.29124504747062463 -0.15395678630241597 0.92608972275316848 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.081429286704406e-006
		 2.0216885664921476 1.0516409947314287e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.093268683211818651 0 0 0.99564097582006605 1 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.9650617274844535e-005
		 1.1361322186132643 1.6022840213736345e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.10486272213277738 0 0 0.99448670655112525 1 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.19768865559351401
		 4.5883859039748618 -1.328870837084775 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.17493672318278342 0.85158170402137456 -0.086871702770177112 0.48647615719162657 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.0847915257511431e-006
		 1.7546084048713464 7.428181847757287e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.32541247448194804 0 0 0.94557216617851836 1 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.8717350893335833e-005
		 1.2269400708689613 3.1575466110211892e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.04631312679353615 0 0 0.99892697144816645 1 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.3770033045068879 4.2073119325362516
		 -0.24666353749381997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.19687795049408677 0.87703247863397171 -0.09498791899741485 0.42782052226949174 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.8478234371838198e-005
		 2.3723358963647936 -1.139229965474442e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.35324775675712627 0 0 0.93552980836852984 1 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6039473988865893e-005
		 1.5800647913811305 2.6008281679423817e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.017126654668059668 0 0 0.99985332809361649 1 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6896098808701936e-005
		 7.0709478770737393 2.6711631593290264e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.20635314410944802 0 0 0.97847758273562169 1 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.067117522083940173
		 16.087743083564668 -3.1088297512160779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33991834024574175 19.156641499463319
		 2.6818069623677587 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.3770226762484421 -4.2073368447255994
		 0.24673492329544189 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.19687795049408688 0.8770324786339716 -0.09498791899741503 0.42782052226949163 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.3723260927718854
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.353247756757126 0 0 0.93552980836852995 1
		 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.5800730120496582
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017126654668058048 0 0 0.99985332809361649 1
		 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.19761329068691103 -4.5884445002778467
		 1.3289102735303651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.1749367231827835 0.85158170402137456 -0.08687170277017732 0.48647615719162662 1
		 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.7545310635911706
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.32541247448194804 0 0 0.94557216617851836 1
		 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.2270142737840064
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.046313126793535504 0 0 0.99892697144816645 1
		 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.24750294155040886
		 -1.342844180893108 1.6847418967996184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.18393329140268633 0.2912450474706248 -0.15395678630241585 0.92608972275316837 1
		 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.0216184713996004
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.09326868321181965 0 0 0.99564097582006594 1
		 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.1362196624936738
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10486272213277846 0 0 0.99448670655112514 1
		 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -4.4231401585009245
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.024986592247462296 0 0 0.99968778636525268 1
		 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.8585627634212512
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.08041555765119128 0 0 0.99676142485935315 1
		 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0819373379999999 0.93644397639999999
		 -5.3668963830000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.57300750297082481 -0.24819296907050148 0.29500503373946307 0.72321136724438129 1
		 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7543481345544087 0.93809252740880567
		 3.9646855733137243 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206896500839 -0.05326421996093305 -0.097733832711953253 0.013678190356416844 1
		 1 1 yes;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1343620950252671e-005
		 1.4234064101499331 -2.3699300886192987e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.1168387075731792 0 0 0.99315090314243237 1 1 1 yes;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.12716539652547e-006
		 1.0594207613231772 2.0654512734807895e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.16034210201254159 0 0 0.98706150280628391 1 1 1 yes;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.72507877437831 13.709135572155434
		 1.1485831910545201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00056756329355342548 0.364817879146627 -0.0014462263421601616 0.93107760222026181 1
		 1 1 yes;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5775728054310756 13.695775631130957
		 -1.9519251099728443 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00042933795421086349 0.27583123632371787 -0.0014931067094788638 0.96120482487834225 1
		 1 1 yes;
	setAttr ".xm[78]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.96575927734375 0.41624718904495239
		 0.52064955234527588 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7229440212249756 -0.1074221283197403
		 0.95805376768112183 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.26072646053366133 0 0 0.96541271629163306 1
		 1 1 yes;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.0709615098339693
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20635314410944858 0 0 0.97847758273562158 1
		 1 1 yes;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.067103172980147688
		 -16.087768786959209 3.108844456715107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.33987841068888147
		 -19.156661646589672 -2.6817765036469079 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2951831817626953 3.5843386650085449
		 -6.1179494857788086 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99998517318700209 0 0 0.0054454941154599978 1
		 1 1 yes;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.2951798439025879 3.5843310356140137
		 -6.1179523468017578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0054454941154551059 0 0 0.99998517318700209 1
		 1 1 yes;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.0614333152770996 -0.72744149624841015
		 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351575411907 -0.12723801940821283 -0.81606753997687864 -0.0061241373552523015 1
		 1 1 yes;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7543477326084851 0.93809252733552029
		 3.9646855885757626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206901421514 0.053264221169070668 0.09773383204725887 0.013678186826430731 1
		 1 1 yes;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.0614333152770996 -0.72744149624841015
		 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351520946764 0.12723801750963237 0.81606754065162623 -0.0061241370247192006 1
		 1 1 yes;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.4234403322378264
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11683870757317874 0 0 0.99315090314243248 1
		 1 1 yes;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.05939736748855 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.16034210201254179 0 0 0.98706150280628391 1
		 1 1 yes;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7250645456249334 -13.709154255017928
		 -1.1485879815469673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0005675632936545849 0.36481787914662683 -0.001446226342199858 0.9310776022202617 1
		 1 1 yes;
	setAttr ".xm[91]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.577588985230383 -13.69579011767209
		 1.9518861920115924 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00042933795442008996 0.2758312363237172 -0.0014931067095389767 0.96120482487834236 1
		 1 1 yes;
	setAttr ".xm[92]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.965754508972168 -0.41627660393714905
		 -0.52065646648406982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[93]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7229239940643311 0.10741604864597321
		 -0.958046555519104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.260726460533661 0 0 0.96541271629163317 1
		 1 1 yes;
	setAttr ".xm[94]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.9650617274844535e-005
		 1.1361322186132643 1.6022840213736345e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.10486272213277738 0 0 0.99448670655112525 1 1 1 yes;
	setAttr ".xm[95]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.8717350893335833e-005
		 1.2269400708689613 3.1575466110211892e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.04631312679353615 0 0 0.99892697144816645 1 1 1 yes;
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6039473988865893e-005
		 1.5800647913811305 2.6008281679423817e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.017126654668059668 0 0 0.99985332809361649 1 1 1 yes;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6896098808701936e-005
		 7.0709478770737393 2.6711631593290264e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.20635314410944802 0 0 0.97847758273562169 1 1 1 yes;
	setAttr ".xm[98]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.067117522083940173
		 16.087743083564668 -3.1088297512160779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[99]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33991834024574175 19.156641499463319
		 2.6818069623677587 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[100]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.5800730120496582
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017126654668058048 0 0 0.99985332809361649 1
		 1 1 yes;
	setAttr ".xm[101]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.2270142737840064
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.046313126793535504 0 0 0.99892697144816645 1
		 1 1 yes;
	setAttr ".xm[102]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.1362196624936738
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10486272213277846 0 0 0.99448670655112514 1
		 1 1 yes;
	setAttr ".xm[103]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7543481345544087
		 0.93809252740880567 3.9646855733137243 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206896500839 -0.05326421996093305 -0.097733832711953253 0.013678190356416844 1
		 1 1 yes;
	setAttr ".xm[104]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1343620950252671e-005
		 1.4234064101499331 -2.3699300886192987e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.1168387075731792 0 0 0.99315090314243237 1 1 1 yes;
	setAttr ".xm[105]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.12716539652547e-006
		 1.0594207613231772 2.0654512734807895e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.16034210201254159 0 0 0.98706150280628391 1 1 1 yes;
	setAttr ".xm[106]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.72507877437831 13.709135572155434
		 1.1485831910545201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00056756329355342559 0.364817879146627 -0.0014462263421601619 0.93107760222026181 1
		 1 1 yes;
	setAttr ".xm[107]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5775728054310756 13.695775631130957
		 -1.9519251099728443 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00042933795421086295 0.27583123632371787 -0.0014931067094788625 0.96120482487834225 1
		 1 1 yes;
	setAttr ".xm[108]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.96575927734375 0.41624718904495239
		 0.52064955234527588 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[109]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7229440212249756 -0.1074221283197403
		 0.95805376768112183 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.26072646053366133 0 0 0.96541271629163306 1
		 1 1 yes;
	setAttr ".xm[110]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.0709615098339693
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20635314410944858 0 0 0.97847758273562158 1
		 1 1 yes;
	setAttr ".xm[111]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.067103172980147688
		 -16.087768786959209 3.108844456715107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[112]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.33987841068888147
		 -19.156661646589672 -2.6817765036469079 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[113]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2951831817626953 3.5843386650085449
		 -6.1179494857788086 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99998517318700209 0 0 0.0054454941154599978 1
		 1 1 yes;
	setAttr ".xm[114]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.2951798439025879
		 3.5843310356140137 -6.1179523468017578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0054454941154551059 0 0 0.99998517318700209 1
		 1 1 yes;
	setAttr ".xm[115]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.0614333152770996 -0.72744149624841015
		 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351575411907 -0.12723801940821283 -0.81606753997687864 -0.0061241373552523015 1
		 1 1 yes;
	setAttr ".xm[116]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7543477326084851 0.93809252733552029
		 3.9646855885757626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206901421514 0.053264221169070668 0.09773383204725887 0.013678186826430731 1
		 1 1 yes;
	setAttr ".xm[117]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.0614333152770996
		 -0.72744149624841015 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351520946764 0.12723801750963237 0.81606754065162623 -0.0061241370247192006 1
		 1 1 yes;
	setAttr ".xm[118]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.4234403322378264
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11683870757317874 0 0 0.99315090314243248 1
		 1 1 yes;
	setAttr ".xm[119]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.05939736748855
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.16034210201254179 0 0 0.98706150280628391 1
		 1 1 yes;
	setAttr ".xm[120]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7250645456249334 -13.709154255017928
		 -1.1485879815469673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0005675632936545849 0.36481787914662683 -0.001446226342199858 0.9310776022202617 1
		 1 1 yes;
	setAttr ".xm[121]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.577588985230383 -13.69579011767209
		 1.9518861920115924 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00042933795442008979 0.27583123632371725 -0.0014931067095389757 0.96120482487834236 1
		 1 1 yes;
	setAttr ".xm[122]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.965754508972168 -0.41627660393714905
		 -0.52065646648406982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[123]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7229239940643311
		 0.10741604864597321 -0.958046555519104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.260726460533661 0 0 0.96541271629163317 1
		 1 1 yes;
	setAttr ".xm[124]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.9650617274844535e-005
		 1.1361322186132643 1.6022840213736345e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.10486272213277741 0 0 0.99448670655112525 1 1 1 yes;
	setAttr ".xm[125]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.8717350893335833e-005
		 1.2269400708689613 3.1575466110211892e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.046313126793536163 0 0 0.99892697144816645 1 1 1 yes;
	setAttr ".xm[126]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6039473988865893e-005
		 1.5800647913811305 2.6008281679423817e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.017126654668059668 0 0 0.99985332809361649 1 1 1 yes;
	setAttr ".xm[127]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6896098808701936e-005
		 7.0709478770737393 2.6711631593290264e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.20635314410944802 0 0 0.97847758273562169 1 1 1 yes;
	setAttr ".xm[128]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.067117522083940173
		 16.087743083564668 -3.1088297512160779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[129]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33991834024574175
		 19.156641499463319 2.6818069623677587 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[130]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.5800730120496582
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017126654668058048 0 0 0.99985332809361649 1
		 1 1 yes;
	setAttr ".xm[131]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.2270142737840064
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.046313126793535504 0 0 0.99892697144816645 1
		 1 1 yes;
	setAttr ".xm[132]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.1362196624936738
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10486272213277846 0 0 0.99448670655112514 1
		 1 1 yes;
	setAttr ".xm[133]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7543481345544087
		 0.93809252740880567 3.9646855733137243 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206896500839 -0.053264219960933057 -0.097733832711953267 0.013678190356416845 1
		 1 1 yes;
	setAttr ".xm[134]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.96575927734375 0.41624718904495239
		 0.52064955234527588 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[135]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7229440212249756 -0.1074221283197403
		 0.95805376768112183 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.26072646053366133 0 0 0.96541271629163306 1
		 1 1 yes;
	setAttr ".xm[136]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.0709615098339693
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20635314410944858 0 0 0.97847758273562158 1
		 1 1 yes;
	setAttr ".xm[137]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.067103172980147688
		 -16.087768786959209 3.108844456715107 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[138]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.33987841068888147
		 -19.156661646589672 -2.6817765036469079 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[139]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2951831817626953 3.5843386650085449
		 -6.1179494857788086 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99998517318700209 0 0 0.0054454941154599978 1
		 1 1 yes;
	setAttr ".xm[140]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.2951798439025879
		 3.5843310356140137 -6.1179523468017578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0054454941154551059 0 0 0.99998517318700209 1
		 1 1 yes;
	setAttr ".xm[141]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.0614333152770996 -0.72744149624841015
		 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351575411907 -0.12723801940821283 -0.81606753997687864 -0.0061241373552523015 1
		 1 1 yes;
	setAttr ".xm[142]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7543477326084851 0.93809252733552029
		 3.9646855885757626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206901421514 0.053264221169070675 0.097733832047258884 0.013678186826430735 1
		 1 1 yes;
	setAttr ".xm[143]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.0614333152770996
		 -0.72744149624841015 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351520946764 0.12723801750963237 0.81606754065162623 -0.0061241370247192006 1
		 1 1 yes;
	setAttr ".xm[144]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.965754508972168 -0.41627660393714905
		 -0.52065646648406982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[145]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7229239940643311
		 0.10741604864597321 -0.958046555519104 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.260726460533661 0 0 0.96541271629163317 1
		 1 1 yes;
	setAttr ".xm[146]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6896098808701936e-005
		 7.0709478770737393 2.6711631593290264e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.20635314410944802 0 0 0.97847758273562169 1 1 1 yes;
	setAttr ".xm[147]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.067117522083940173
		 16.087743083564668 -3.1088297512160779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[148]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33991834024574175
		 19.156641499463319 2.6818069623677587 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr -s 73 ".m";
	setAttr -s 73 ".p";
	setAttr -s 149 ".g[0:148]" yes yes no yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes no yes no no no no no yes yes yes no no no no no no no no 
		yes yes yes yes yes yes no yes yes no no no no no yes yes no yes yes no yes yes no 
		no no no yes yes no yes yes no yes yes no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster3";
	setAttr -s 324 ".wl";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[55]" 0.5;
	setAttr ".wl[0].w[71]" 0.5;
	setAttr ".wl[1].w[71]"  1;
	setAttr ".wl[2].w[71]"  1;
	setAttr -s 2 ".wl[3].w";
	setAttr ".wl[3].w[55]" 0.5;
	setAttr ".wl[3].w[71]" 0.5;
	setAttr -s 2 ".wl[4].w[69:70]"  0.25 0.75;
	setAttr -s 2 ".wl[5].w[69:70]"  0.5 0.5;
	setAttr -s 2 ".wl[6].w[69:70]"  0.5 0.5;
	setAttr -s 2 ".wl[7].w[69:70]"  0.25 0.75;
	setAttr ".wl[8].w[55]"  1;
	setAttr ".wl[9].w[55]"  1;
	setAttr ".wl[10].w[55]"  1;
	setAttr ".wl[11].w[55]"  1;
	setAttr -s 2 ".wl[12].w[52:53]"  0.5 0.5;
	setAttr -s 2 ".wl[13].w[52:53]"  0.5 0.5;
	setAttr -s 2 ".wl[14].w[51:52]"  0.5 0.5;
	setAttr -s 2 ".wl[15].w[51:52]"  0.5 0.5;
	setAttr -s 2 ".wl[16].w[68:69]"  0.25 0.75;
	setAttr ".wl[17].w[69]"  1;
	setAttr ".wl[18].w[69]"  1;
	setAttr -s 2 ".wl[19].w[68:69]"  0.25 0.75;
	setAttr ".wl[20].w[70]"  1;
	setAttr -s 2 ".wl[21].w[69:70]"  0.25 0.75;
	setAttr ".wl[22].w[70]"  1;
	setAttr -s 2 ".wl[23].w[68:69]"  0.25 0.75;
	setAttr -s 2 ".wl[24].w[68:69]"  0.25 0.75;
	setAttr ".wl[25].w[69]"  1;
	setAttr ".wl[26].w[69]"  1;
	setAttr -s 2 ".wl[27].w[69:70]"  0.5 0.5;
	setAttr -s 2 ".wl[28].w[69:70]"  0.7 0.3;
	setAttr ".wl[29].w[70]"  1;
	setAttr ".wl[30].w[70]"  1;
	setAttr ".wl[31].w[69]"  1;
	setAttr ".wl[32].w[69]"  1;
	setAttr ".wl[33].w[30]"  1;
	setAttr ".wl[34].w[30]"  1;
	setAttr ".wl[35].w[30]"  1;
	setAttr ".wl[36].w[30]"  1;
	setAttr -s 2 ".wl[37].w[69:70]"  0.5 0.5;
	setAttr ".wl[38].w[69]"  1;
	setAttr ".wl[39].w[69]"  1;
	setAttr ".wl[40].w[25]"  1;
	setAttr -s 2 ".wl[41].w";
	setAttr ".wl[41].w[25]" 0.5;
	setAttr ".wl[41].w[28]" 0.5;
	setAttr -s 2 ".wl[42].w";
	setAttr ".wl[42].w[25]" 0.5;
	setAttr ".wl[42].w[51]" 0.5;
	setAttr ".wl[43].w[25]"  1;
	setAttr ".wl[44].w[52]"  1;
	setAttr ".wl[45].w[51]"  1;
	setAttr ".wl[46].w[28]"  1;
	setAttr ".wl[47].w[28]"  1;
	setAttr ".wl[48].w[29]"  1;
	setAttr ".wl[49].w[29]"  1;
	setAttr ".wl[50].w[69]"  1;
	setAttr ".wl[51].w[69]"  1;
	setAttr ".wl[52].w[69]"  1;
	setAttr ".wl[53].w[52]"  1;
	setAttr ".wl[54].w[51]"  1;
	setAttr ".wl[55].w[69]"  1;
	setAttr ".wl[56].w[69]"  1;
	setAttr ".wl[57].w[28]"  1;
	setAttr ".wl[58].w[71]"  1;
	setAttr -s 2 ".wl[59].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[60].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[61].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[62].w[25:26]"  0.5 0.5;
	setAttr ".wl[63].w[30]"  1;
	setAttr ".wl[64].w[30]"  1;
	setAttr ".wl[65].w[30]"  1;
	setAttr ".wl[66].w[30]"  1;
	setAttr ".wl[67].w[52]"  1;
	setAttr ".wl[68].w[69]"  1;
	setAttr ".wl[69].w[69]"  1;
	setAttr ".wl[70].w[69]"  1;
	setAttr -s 2 ".wl[71].w";
	setAttr ".wl[71].w[57]" 0.5;
	setAttr ".wl[71].w[69]" 0.5;
	setAttr ".wl[72].w[57]"  1;
	setAttr -s 2 ".wl[73].w";
	setAttr ".wl[73].w[51]" 0.5;
	setAttr ".wl[73].w[57]" 0.5;
	setAttr -s 3 ".wl[74].w";
	setAttr ".wl[74].w[51]" 0.25;
	setAttr ".wl[74].w[57]" 0.25;
	setAttr ".wl[74].w[69]" 0.5;
	setAttr ".wl[75].w[27]"  1;
	setAttr ".wl[76].w[27]"  1;
	setAttr ".wl[77].w[27]"  1;
	setAttr ".wl[78].w[27]"  1;
	setAttr -s 2 ".wl[79].w";
	setAttr ".wl[79].w[51]" 0.5;
	setAttr ".wl[79].w[57]" 0.5;
	setAttr -s 2 ".wl[80].w";
	setAttr ".wl[80].w[25]" 0.5;
	setAttr ".wl[80].w[51]" 0.5;
	setAttr ".wl[81].w[54]"  1;
	setAttr ".wl[82].w[54]"  1;
	setAttr ".wl[83].w[54]"  1;
	setAttr ".wl[84].w[54]"  1;
	setAttr ".wl[85].w[52]"  1;
	setAttr -s 2 ".wl[86].w";
	setAttr ".wl[86].w[25]" 0.5;
	setAttr ".wl[86].w[28]" 0.5;
	setAttr ".wl[87].w[27]"  1;
	setAttr ".wl[88].w[27]"  1;
	setAttr ".wl[89].w[53]"  1;
	setAttr ".wl[90].w[53]"  1;
	setAttr ".wl[91].w[53]"  1;
	setAttr ".wl[92].w[53]"  1;
	setAttr ".wl[93].w[69]"  1;
	setAttr ".wl[94].w[53]"  1;
	setAttr -s 3 ".wl[95].w";
	setAttr ".wl[95].w[25]" 0.25;
	setAttr ".wl[95].w[51]" 0.25;
	setAttr ".wl[95].w[69]" 0.5;
	setAttr ".wl[96].w[56]"  1;
	setAttr ".wl[97].w[54]"  1;
	setAttr ".wl[98].w[54]"  1;
	setAttr ".wl[99].w[56]"  1;
	setAttr ".wl[100].w[53]"  1;
	setAttr ".wl[101].w[53]"  1;
	setAttr ".wl[102].w[53]"  1;
	setAttr ".wl[103].w[69]"  1;
	setAttr -s 2 ".wl[104].w[69:70]"  0.7 0.3;
	setAttr ".wl[105].w[53]"  1;
	setAttr ".wl[106].w[56]"  1;
	setAttr ".wl[107].w[56]"  1;
	setAttr ".wl[108].w[53]"  1;
	setAttr -s 2 ".wl[109].w[69:70]"  0.65 0.35;
	setAttr ".wl[110].w[55]"  1;
	setAttr ".wl[111].w[55]"  1;
	setAttr ".wl[112].w[55]"  1;
	setAttr ".wl[113].w[55]"  1;
	setAttr -s 2 ".wl[114].w[56:57]"  0.5 0.5;
	setAttr -s 2 ".wl[115].w";
	setAttr ".wl[115].w[54]" 0.5;
	setAttr ".wl[115].w[56]" 0.5;
	setAttr ".wl[116].w[30]"  1;
	setAttr -s 3 ".wl[117].w";
	setAttr ".wl[117].w[25]" 0.25;
	setAttr ".wl[117].w[28]" 0.25;
	setAttr ".wl[117].w[69]" 0.5;
	setAttr -s 2 ".wl[118].w";
	setAttr ".wl[118].w[28]" 0.5;
	setAttr ".wl[118].w[69]" 0.5;
	setAttr ".wl[119].w[57]"  1;
	setAttr ".wl[120].w[57]"  1;
	setAttr ".wl[121].w[29]"  1;
	setAttr ".wl[122].w[29]"  1;
	setAttr ".wl[123].w[27]"  1;
	setAttr ".wl[124].w[26]"  1;
	setAttr ".wl[125].w[26]"  1;
	setAttr ".wl[126].w[54]"  1;
	setAttr ".wl[127].w[54]"  1;
	setAttr ".wl[128].w[71]"  1;
	setAttr -s 2 ".wl[129].w[69:70]"  0.5 0.5;
	setAttr ".wl[130].w[57]"  1;
	setAttr ".wl[131].w[28]"  1;
	setAttr -s 2 ".wl[132].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[133].w";
	setAttr ".wl[133].w[55]" 0.5;
	setAttr ".wl[133].w[71]" 0.5;
	setAttr -s 2 ".wl[134].w[28:29]"  0.5 0.5;
	setAttr -s 2 ".wl[135].w[68:69]"  0.25 0.75;
	setAttr ".wl[136].w[69]"  1;
	setAttr ".wl[137].w[69]"  1;
	setAttr -s 2 ".wl[138].w[68:69]"  0.25 0.75;
	setAttr -s 2 ".wl[139].w[69:70]"  0.5 0.5;
	setAttr -s 2 ".wl[140].w[28:29]"  0.5 0.5;
	setAttr -s 2 ".wl[141].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[142].w";
	setAttr ".wl[142].w[55]" 0.5;
	setAttr ".wl[142].w[71]" 0.5;
	setAttr -s 2 ".wl[143].w[56:57]"  0.5 0.5;
	setAttr ".wl[144].w[27]"  1;
	setAttr -s 2 ".wl[145].w[68:69]"  0.25 0.75;
	setAttr ".wl[146].w[27]"  1;
	setAttr ".wl[147].w[30]"  1;
	setAttr ".wl[148].w[27]"  1;
	setAttr ".wl[149].w[26]"  1;
	setAttr ".wl[150].w[26]"  1;
	setAttr -s 2 ".wl[151].w";
	setAttr ".wl[151].w[54]" 0.5;
	setAttr ".wl[151].w[56]" 0.5;
	setAttr ".wl[152].w[54]"  1;
	setAttr ".wl[153].w[54]"  1;
	setAttr -s 2 ".wl[154].w[68:69]"  0.25 0.75;
	setAttr ".wl[155].w[68]"  1;
	setAttr ".wl[156].w[68]"  1;
	setAttr ".wl[157].w[68]"  1;
	setAttr ".wl[158].w[68]"  1;
	setAttr ".wl[159].w[68]"  1;
	setAttr ".wl[160].w[68]"  1;
	setAttr ".wl[161].w[68]"  1;
	setAttr -s 2 ".wl[162].w[40:41]"  0.5 0.5;
	setAttr ".wl[163].w[40]"  1;
	setAttr ".wl[164].w[40]"  1;
	setAttr -s 2 ".wl[165].w[40:41]"  0.5 0.5;
	setAttr -s 2 ".wl[166].w[38:39]"  0.25 0.75;
	setAttr -s 2 ".wl[167].w[38:39]"  0.5 0.5;
	setAttr -s 2 ".wl[168].w[38:39]"  0.5 0.5;
	setAttr -s 2 ".wl[169].w[38:39]"  0.25 0.75;
	setAttr ".wl[170].w[41]"  1;
	setAttr ".wl[171].w[41]"  1;
	setAttr ".wl[172].w[41]"  1;
	setAttr ".wl[173].w[41]"  1;
	setAttr -s 2 ".wl[174].w[46:47]"  0.5 0.5;
	setAttr -s 2 ".wl[175].w[46:47]"  0.5 0.5;
	setAttr -s 2 ".wl[176].w[45:46]"  0.5 0.5;
	setAttr -s 2 ".wl[177].w[45:46]"  0.5 0.5;
	setAttr -s 2 ".wl[178].w[37:38]"  0.25 0.75;
	setAttr ".wl[179].w[38]"  1;
	setAttr ".wl[180].w[38]"  1;
	setAttr -s 2 ".wl[181].w[37:38]"  0.25 0.75;
	setAttr ".wl[182].w[39]"  1;
	setAttr -s 2 ".wl[183].w[38:39]"  0.25 0.75;
	setAttr ".wl[184].w[39]"  1;
	setAttr -s 2 ".wl[185].w[37:38]"  0.25 0.75;
	setAttr -s 2 ".wl[186].w[37:38]"  0.25 0.75;
	setAttr ".wl[187].w[38]"  1;
	setAttr ".wl[188].w[38]"  1;
	setAttr -s 2 ".wl[189].w[38:39]"  0.5 0.5;
	setAttr -s 2 ".wl[190].w[38:39]"  0.7 0.3;
	setAttr ".wl[191].w[39]"  1;
	setAttr ".wl[192].w[39]"  1;
	setAttr ".wl[193].w[38]"  1;
	setAttr ".wl[194].w[38]"  1;
	setAttr ".wl[195].w[9]"  1;
	setAttr ".wl[196].w[9]"  1;
	setAttr ".wl[197].w[9]"  1;
	setAttr ".wl[198].w[9]"  1;
	setAttr -s 2 ".wl[199].w[38:39]"  0.5 0.5;
	setAttr ".wl[200].w[38]"  1;
	setAttr ".wl[201].w[38]"  1;
	setAttr ".wl[202].w[4]"  1;
	setAttr -s 2 ".wl[203].w[4:5]"  0.5 0.5;
	setAttr -s 2 ".wl[204].w";
	setAttr ".wl[204].w[4]" 0.5;
	setAttr ".wl[204].w[45]" 0.5;
	setAttr ".wl[205].w[4]"  1;
	setAttr ".wl[206].w[46]"  1;
	setAttr ".wl[207].w[45]"  1;
	setAttr ".wl[208].w[5]"  1;
	setAttr ".wl[209].w[5]"  1;
	setAttr ".wl[210].w[8]"  1;
	setAttr ".wl[211].w[8]"  1;
	setAttr ".wl[212].w[38]"  1;
	setAttr ".wl[213].w[38]"  1;
	setAttr ".wl[214].w[38]"  1;
	setAttr ".wl[215].w[46]"  1;
	setAttr ".wl[216].w[45]"  1;
	setAttr ".wl[217].w[38]"  1;
	setAttr ".wl[218].w[38]"  1;
	setAttr ".wl[219].w[5]"  1;
	setAttr ".wl[220].w[40]"  1;
	setAttr -s 2 ".wl[221].w[6:7]"  0.5 0.5;
	setAttr -s 2 ".wl[222].w[6:7]"  0.5 0.5;
	setAttr -s 2 ".wl[223].w";
	setAttr ".wl[223].w[4]" 0.5;
	setAttr ".wl[223].w[7]" 0.5;
	setAttr -s 2 ".wl[224].w";
	setAttr ".wl[224].w[4]" 0.5;
	setAttr ".wl[224].w[7]" 0.5;
	setAttr ".wl[225].w[9]"  1;
	setAttr ".wl[226].w[9]"  1;
	setAttr ".wl[227].w[9]"  1;
	setAttr ".wl[228].w[9]"  1;
	setAttr ".wl[229].w[46]"  1;
	setAttr ".wl[230].w[38]"  1;
	setAttr ".wl[231].w[38]"  1;
	setAttr ".wl[232].w[38]"  1;
	setAttr -s 2 ".wl[233].w";
	setAttr ".wl[233].w[38]" 0.5;
	setAttr ".wl[233].w[42]" 0.5;
	setAttr ".wl[234].w[42]"  1;
	setAttr -s 2 ".wl[235].w";
	setAttr ".wl[235].w[42]" 0.5;
	setAttr ".wl[235].w[45]" 0.5;
	setAttr -s 3 ".wl[236].w";
	setAttr ".wl[236].w[38]" 0.5;
	setAttr ".wl[236].w[42]" 0.25;
	setAttr ".wl[236].w[45]" 0.25;
	setAttr ".wl[237].w[6]"  1;
	setAttr ".wl[238].w[6]"  1;
	setAttr ".wl[239].w[6]"  1;
	setAttr ".wl[240].w[6]"  1;
	setAttr -s 2 ".wl[241].w";
	setAttr ".wl[241].w[42]" 0.5;
	setAttr ".wl[241].w[45]" 0.5;
	setAttr -s 2 ".wl[242].w";
	setAttr ".wl[242].w[4]" 0.5;
	setAttr ".wl[242].w[45]" 0.5;
	setAttr ".wl[243].w[44]"  1;
	setAttr ".wl[244].w[44]"  1;
	setAttr ".wl[245].w[44]"  1;
	setAttr ".wl[246].w[44]"  1;
	setAttr ".wl[247].w[46]"  1;
	setAttr -s 2 ".wl[248].w[4:5]"  0.5 0.5;
	setAttr ".wl[249].w[6]"  1;
	setAttr ".wl[250].w[6]"  1;
	setAttr ".wl[251].w[47]"  1;
	setAttr ".wl[252].w[47]"  1;
	setAttr ".wl[253].w[47]"  1;
	setAttr ".wl[254].w[47]"  1;
	setAttr ".wl[255].w[38]"  1;
	setAttr ".wl[256].w[47]"  1;
	setAttr -s 3 ".wl[257].w";
	setAttr ".wl[257].w[4]" 0.25;
	setAttr ".wl[257].w[38]" 0.5;
	setAttr ".wl[257].w[45]" 0.25;
	setAttr ".wl[258].w[43]"  1;
	setAttr ".wl[259].w[44]"  1;
	setAttr ".wl[260].w[44]"  1;
	setAttr ".wl[261].w[43]"  1;
	setAttr ".wl[262].w[47]"  1;
	setAttr ".wl[263].w[47]"  1;
	setAttr ".wl[264].w[47]"  1;
	setAttr ".wl[265].w[38]"  1;
	setAttr -s 2 ".wl[266].w[38:39]"  0.7 0.3;
	setAttr ".wl[267].w[47]"  1;
	setAttr ".wl[268].w[43]"  1;
	setAttr ".wl[269].w[43]"  1;
	setAttr ".wl[270].w[47]"  1;
	setAttr -s 2 ".wl[271].w[38:39]"  0.65 0.35;
	setAttr ".wl[272].w[41]"  1;
	setAttr ".wl[273].w[41]"  1;
	setAttr ".wl[274].w[41]"  1;
	setAttr ".wl[275].w[41]"  1;
	setAttr -s 2 ".wl[276].w[42:43]"  0.5 0.5;
	setAttr -s 2 ".wl[277].w[43:44]"  0.5 0.5;
	setAttr ".wl[278].w[9]"  1;
	setAttr -s 3 ".wl[279].w";
	setAttr ".wl[279].w[4:5]" 0.25 0.25;
	setAttr ".wl[279].w[38]" 0.5;
	setAttr -s 2 ".wl[280].w";
	setAttr ".wl[280].w[5]" 0.5;
	setAttr ".wl[280].w[38]" 0.5;
	setAttr ".wl[281].w[42]"  1;
	setAttr ".wl[282].w[42]"  1;
	setAttr ".wl[283].w[8]"  1;
	setAttr ".wl[284].w[8]"  1;
	setAttr ".wl[285].w[6]"  1;
	setAttr ".wl[286].w[7]"  1;
	setAttr ".wl[287].w[7]"  1;
	setAttr ".wl[288].w[44]"  1;
	setAttr ".wl[289].w[44]"  1;
	setAttr ".wl[290].w[40]"  1;
	setAttr -s 2 ".wl[291].w[38:39]"  0.5 0.5;
	setAttr ".wl[292].w[42]"  1;
	setAttr ".wl[293].w[5]"  1;
	setAttr -s 2 ".wl[294].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[295].w[40:41]"  0.5 0.5;
	setAttr -s 2 ".wl[296].w";
	setAttr ".wl[296].w[5]" 0.5;
	setAttr ".wl[296].w[8]" 0.5;
	setAttr -s 2 ".wl[297].w[37:38]"  0.25 0.75;
	setAttr ".wl[298].w[38]"  1;
	setAttr ".wl[299].w[38]"  1;
	setAttr -s 2 ".wl[300].w[37:38]"  0.25 0.75;
	setAttr -s 2 ".wl[301].w[38:39]"  0.5 0.5;
	setAttr -s 2 ".wl[302].w";
	setAttr ".wl[302].w[5]" 0.5;
	setAttr ".wl[302].w[8]" 0.5;
	setAttr -s 2 ".wl[303].w[8:9]"  0.5 0.5;
	setAttr -s 2 ".wl[304].w[40:41]"  0.5 0.5;
	setAttr -s 2 ".wl[305].w[42:43]"  0.5 0.5;
	setAttr ".wl[306].w[6]"  1;
	setAttr -s 2 ".wl[307].w[37:38]"  0.25 0.75;
	setAttr ".wl[308].w[6]"  1;
	setAttr ".wl[309].w[9]"  1;
	setAttr ".wl[310].w[6]"  1;
	setAttr ".wl[311].w[7]"  1;
	setAttr ".wl[312].w[7]"  1;
	setAttr -s 2 ".wl[313].w[43:44]"  0.5 0.5;
	setAttr ".wl[314].w[44]"  1;
	setAttr ".wl[315].w[44]"  1;
	setAttr -s 2 ".wl[316].w[37:38]"  0.25 0.75;
	setAttr ".wl[317].w[37]"  1;
	setAttr ".wl[318].w[37]"  1;
	setAttr ".wl[319].w[37]"  1;
	setAttr ".wl[320].w[37]"  1;
	setAttr ".wl[321].w[37]"  1;
	setAttr ".wl[322].w[37]"  1;
	setAttr ".wl[323].w[37]"  1;
	setAttr -s 72 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.97522204163077053 0.1085301098057663 0.19277755259121823 0
		 -0.10104545716020875 0.99371004670827157 -0.048271716960641843 0 -0.19680392553197718 0.027596346435573994 0.98005441510082025 0
		 7.3445831907846433 -44.97591127095604 7.6408756588225817 1;
	setAttr ".pm[1]" -type "matrix" 0.96057560888731253 -0.23598877037581895 0.14698231140949641 0
		 -0.16334361100276026 -0.90685333909889976 -0.38850467964974994 0 0.22497414152597203 0.3491794977109694 -0.90964845628570556 0
		 11.920672252778733 38.302643539876662 17.65114943887156 1;
	setAttr ".pm[2]" -type "matrix" 0.96057560888731253 -0.0087136334073519683 0.27788229919088303 0
		 -0.16334361100276026 -0.82649522272413189 0.53872489413314339 0 0.224974141525972 -0.56287629138828532 -0.79533446815639885 0
		 11.920714441677591 23.564930720480014 -3.5151982276759774 1;
	setAttr ".pm[3]" -type "matrix" 0.95902714300123004 -0.27633425893522451 0.062500530602698057 0
		 -0.060001777595216896 -0.41370475506772025 -0.90843170481867885 0 0.27688756864892405 0.86746051954718817 -0.41333463604518977 0
		 11.159200613046355 2.6517668552377489 7.3055019261545837 1;
	setAttr ".pm[4]" -type "matrix" 0.47072274342265474 -0.35869300642266949 0.80607656334129718 0
		 0.71127504653143725 -0.38628912697856754 -0.58725507112313458 0 0.52202289892910936 0.84977646326643019 0.073294307228091937 0
		 -40.995027573514008 2.0866945265972738 62.710828592457858 1;
	setAttr ".pm[5]" -type "matrix" 0.41138114154404765 -0.34885413952054339 0.84206077317572325 0
		 0.7232740683071992 -0.43725114269359039 -0.53449608074101151 0 0.55465320561254206 0.82892232902276808 0.072440278514102285 0
		 -42.876253021877872 6.1227853885384951 60.243627507920557 1;
	setAttr ".pm[6]" -type "matrix" 0.47072274342265463 0.26669702028497577 0.84100701435586411 0
		 0.71127504653143714 -0.67870631926069269 -0.1828812193127127 0 0.52202289892910947 0.68427365254459283 -0.50917743609367705 0
		 -40.995006524283362 40.533172925812146 46.974828316693028 1;
	setAttr ".pm[7]" -type "matrix" 0.47072274342265474 0.064237176014089126 0.87993959113247344 0
		 0.71127504653143714 -0.61773338137602829 -0.33540017548510642 0 0.52202289892910936 0.78375956437639305 -0.33647145234354631 0
		 -40.995037867904301 29.948145439342944 55.099085786542972 1;
	setAttr ".pm[8]" -type "matrix" 0.41138114154404765 0.029340670902549729 0.91099104354153992 0
		 0.7232740683071992 -0.6187234898551851 -0.30668528692419078 0 0.55465320561254206 0.78506074168334805 -0.27575252196729283 0
		 -42.876217524983666 29.105651585690467 52.953805555729069 1;
	setAttr ".pm[9]" -type "matrix" 0.41138114154404765 0.31619257712210502 0.85486128146898632 0
		 0.72327406830719931 -0.68398587297699487 -0.095068121272331566 0 0.55465320561254194 0.65740822913983932 -0.51007278084892094 0
		 -42.876210397818276 43.365844668187449 41.353330156501471 1;
	setAttr ".pm[10]" -type "matrix" 0.63378257793418236 -0.47608577681559017 -0.609640859048176 0
		 -0.6616178679915713 0.074652149103754631 -0.74611584448293178 0 0.40072614172448218 0.87622450875793634 -0.26767362513053727 0
		 59.895547762199861 -29.508543099256553 36.922964131250247 1;
	setAttr ".pm[11]" -type "matrix" 0.50870126735680643 -0.4760857768154102 -0.71733210837355288 0
		 -0.78938431882642579 0.074652149103858395 -0.60934346129675909 0 0.34365013863014593 0.87622450875802538 -0.33783900377434034 0
		 60.447998256837778 -29.50854728944136 25.42764781956803 1;
	setAttr ".pm[12]" -type "matrix" 0.049440737522716237 -0.96173869926074951 -0.26947038393384015 0
		 -0.99214165528792109 -0.016242958724071818 -0.12406088075792474 0 0.11493715376567236 0.27348645420958145 -0.95498408889788144 0
		 70.184504957563405 -7.9731683156252133 2.3066440400704722 1;
	setAttr ".pm[13]" -type "matrix" 0.049440737522716244 -0.9666400481736368 0.25132176734234274 0
		 -0.99214165528792098 -0.076489012959995259 -0.099017002272082502 0 0.11493715376567237 -0.2444513206412974 -0.96282553067571475 0
		 63.495801658994658 -5.4956830031233608 5.3653109114607167 1;
	setAttr ".pm[14]" -type "matrix" 0.9605756088873123 -0.23598877037581881 0.14698231140949714 0
		 0.16334361100276054 0.90685333909890065 0.38850467964974711 0 -0.22497414152597217 -0.34917949771096646 0.90964845628570623 0
		 -11.920677489069167 -38.302648949734248 -17.651152810548997 1;
	setAttr ".pm[15]" -type "matrix" 0.9605756088873123 -0.0087136334073508979 0.27788229919088342 0
		 0.16334361100276054 0.82649522272412945 -0.53872489413314684 0 -0.22497414152597214 0.56287629138828876 0.7953344681563963 0
		 -11.920677489069169 -23.564951246984077 3.5152218983454016 1;
	setAttr ".pm[16]" -type "matrix" 0.95902714300123004 -0.27633425893522418 0.06250053060269796 0
		 0.060001777595216736 0.41370475506771992 0.90843170481867896 0 -0.27688756864892367 -0.86746051954718806 0.41333463604518933 0
		 -11.15919678188135 -2.6517728708373007 -7.3055024909580499 1;
	setAttr ".pm[17]" -type "matrix" 0.95902714300123004 -0.27803994304974616 -0.054412581778410553 0
		 0.060001777595216729 0.011625927992065563 0.99813056484797458 0 -0.27688756864892372 -0.96049915557860654 0.027832471332426202 0
		 -11.159196781881349 6.9929723669940591 -4.8987684520590493 1;
	setAttr ".pm[18]" -type "matrix" 0.95902714300123004 -0.22617187912888567 0.17062596542791203 0
		 0.060001777595216729 0.75073116415809071 0.65787727263316498 0 -0.27688756864892372 -0.62068429998925057 0.73354227831430474 0
		 -10.911595225454475 -2.9658856630530246 -8.2898272661226411 1;
	setAttr ".pm[19]" -type "matrix" 0.95902714300123004 -0.22617187912888567 0.17062596542791203 0
		 0.060001777595216729 0.75073116415809071 0.65787727263316498 0 -0.27688756864892372 -0.62068429998925057 0.73354227831430474 0
		 -10.911595225454477 -7.6799906221407284 -3.7290142623384996 1;
	setAttr ".pm[20]" -type "matrix" 1 0 0 0 0 0.99999999999999978 0 0 0 0 0.99999999999999978 0
		 -4.2951831817626953 -43.048092414295311 -5.2513569892849556 1;
	setAttr ".pm[21]" -type "matrix" 1 0 0 0 0 -0.99999999999999978 9.7821056810332105e-015 0
		 0 -9.7821056810332105e-015 -0.99999999999999978 0 4.2951798439025879 43.048100012078514 5.2513599332282199 1;
	setAttr ".pm[22]" -type "matrix" -0.36431148677367847 -0.15345463620951602 -0.91854712194342913 0
		 0.12341819896885381 0.96967507475575865 -0.21094595886316037 0 0.92306288451439544 -0.19021546736061931 -0.33432467334724919 0
		 -3.2233645298520068 -44.675224325332415 17.518276364459016 1;
	setAttr ".pm[23]" -type "matrix" 0.97522204163322102 -0.10853011150385998 -0.19277755162282717 0
		 0.10104546029249886 0.99371004672219865 -0.048271710117232136 0 0.19680392391161594 0.027596339255864594 0.9800544156283697 0
		 -7.3445829470803581 -44.975911343134776 7.6408752817460233 1;
	setAttr ".pm[24]" -type "matrix" -0.3643114880099505 0.15345463339908022 0.91854712192262056 0
		 -0.12341819722350725 0.9696750757023378 -0.21094595553308143 0 -0.9230628842598293 -0.19021546480246865 -0.33432467550557116 0
		 3.2233644370474881 -44.675224393724406 17.51827620712136 1;
	setAttr ".pm[25]" -type "matrix" 0.47072274342265458 -0.35869300642266955 0.80607656334129751 0
		 -0.71127504653143747 0.38628912697856793 0.58725507112313435 0 -0.52202289892910958 -0.84977646326643008 -0.073294307228091826 0
		 40.995023458578146 -2.0866397932432861 -62.71077199670718 1;
	setAttr ".pm[26]" -type "matrix" 0.47072274342265452 0.064237176014089153 0.87993959113247366 0
		 -0.71127504653143747 0.61773338137602862 0.33540017548510603 0 -0.52202289892910958 -0.78375956437639283 0.33647145234354636 0
		 40.995023458578153 -29.948123043087865 -55.099071454966143 1;
	setAttr ".pm[27]" -type "matrix" 0.47072274342265458 0.26669702028497505 0.84100701435586478 0
		 -0.71127504653143747 0.67870631926069269 0.18288121931271295 0 -0.52202289892910969 -0.68427365254459294 0.50917743609367638 0
		 40.995023458578146 -40.533109319014898 -46.974804394344417 1;
	setAttr ".pm[28]" -type "matrix" 0.41138114154404731 -0.34885413952054367 0.8420607731757237 0
		 -0.72327406830719987 0.43725114269359067 0.5344960807410114 0 -0.55465320561254206 -0.82892232902276808 -0.072440278514102618 0
		 42.876236943091826 -6.1227410734777639 -60.243559576776605 1;
	setAttr ".pm[29]" -type "matrix" 0.41138114154404726 0.029340670902549874 0.91099104354154026 0
		 -0.72327406830719998 0.61872348985518522 0.30668528692419028 0 -0.55465320561254194 -0.78506074168334794 0.27575252196729272 0
		 42.876236943091818 -29.105557806557492 -52.953767202850528 1;
	setAttr ".pm[30]" -type "matrix" 0.41138114154404726 0.31619257712210563 0.85486128146898643 0
		 -0.72327406830719987 0.68398587297699498 0.095068121272330774 0 -0.55465320561254206 -0.65740822913983921 0.51007278084892116 0
		 42.876236943091818 -43.365772299890622 -41.353335647583805 1;
	setAttr ".pm[31]" -type "matrix" 0.63378257793418258 -0.47608577681572273 -0.60964085904807241 0
		 0.6616178679915713 -0.074652149103592011 0.74611584448294843 0 -0.40072614172448179 -0.87622450875787783 0.26767362513072795 0
		 -59.895509107966504 29.50855138167887 -36.922936632501575 1;
	setAttr ".pm[32]" -type "matrix" 0.50870126735680621 -0.47608577681572228 -0.7173321083733456 0
		 0.78938431882642623 -0.074652149103592608 0.60934346129679118 0 -0.34365013863014521 -0.87622450875787772 0.33783900377472209 0
		 -60.447971576292275 29.508551381678913 -25.427598052242228 1;
	setAttr ".pm[33]" -type "matrix" 0.04944073752271641 -0.96173869926074984 -0.26947038393383949 0
		 0.9921416552879212 0.016242958724072373 0.12406088075792457 0 -0.11493715376567203 -0.27348645420958051 0.95498408889788144 0
		 -70.184467346117515 7.9731903606140886 -2.3066371255809455 1;
	setAttr ".pm[34]" -type "matrix" 0.049440737522716403 -0.96664004817363691 0.25132176734234291 0
		 0.99214165528792109 0.076489012959995606 0.099017002272082141 0 -0.11493715376567201 0.24445132064129765 0.9628255306757143 0
		 -63.495788843081009 5.4956782577585708 -5.3653164932549844 1;
	setAttr ".pm[35]" -type "matrix" 0.24968213650014237 -0.94620392863969582 0.20580805654670081 0
		 -0.96821650385656288 -0.24072634944739385 0.067879498683369219 0 -0.014684426188946886 -0.21621505523098264 -0.97623532896477616 0
		 67.202358168186251 15.645371609701042 -5.4083270685803768 1;
	setAttr ".pm[36]" -type "matrix" 0.049440737522716237 -0.96173869926074951 -0.26947038393384015 0
		 -0.99214165528792109 -0.016242958724071818 -0.12406088075792474 0 0.11493715376567236 0.27348645420958145 -0.95498408889788144 0
		 67.218745680219641 -7.5569211265802601 2.8272935924157472 1;
	setAttr ".pm[37]" -type "matrix" 0.049440737522716237 -0.47624023037149538 -0.87792417465799089 0
		 -0.99214165528792098 0.077735483174846007 -0.098041473357539613 0 0.11493715376567237 0.87587238661307176 -0.46865447085562723 0
		 67.218745680219641 -16.01375137828672 -12.446824074528214 1;
	setAttr ".pm[38]" -type "matrix" 0.049440737522716237 -0.47624023037149538 -0.87792417465799089 0
		 -0.99214165528792098 0.077735483174846007 -0.098041473357539613 0 0.11493715376567237 0.87587238661307176 -0.46865447085562723 0
		 67.218745680219641 -29.027246378286723 -12.446824074528214 1;
	setAttr ".pm[39]" -type "matrix" 0.64940012679491599 -0.034819093337806438 -0.7596493309796829 0
		 -0.75995515414570014 -0.065634054590016325 -0.64665317950618617 0 -0.027342988244374675 0.99723608118499585 -0.069083712817567255 0
		 69.544936699585961 -10.321891773618868 24.08879236867589 1;
	setAttr ".pm[40]" -type "matrix" 0.64940012679491588 -0.1752986063260536 -0.73996613026468316 0
		 -0.75995515414570014 -0.18459132098872974 -0.62321281108704807 0 -0.027342988244374689 0.96705555312803948 -0.25309270664736466 0
		 69.544934618156674 -7.654954727119847 25.962185094182225 1;
	setAttr ".pm[41]" -type "matrix" 0.64940012679491599 -0.01710925367460087 -0.76025439739434919 0
		 -0.75995515414570014 -0.050548741865216781 -0.64800693544377186 0 -0.027342988244374707 0.99857503380293933 -0.045828624890194493 0
		 69.544974268773956 -14.012657972125659 23.557649482336096 1;
	setAttr ".pm[42]" -type "matrix" 0.62943189212847372 -0.44052643142328746 0.64011870492044853 0
		 0.56262090018538624 -0.30983921429468969 -0.76645768569428163 0 0.53597874570373982 0.84257707333080978 0.052826694493719496 0
		 -29.00543807754973 -5.5135276101013933 70.191743187523755 1;
	setAttr ".pm[43]" -type "matrix" 0.62943189212847372 0.046701448387053604 0.77565099618972955 0
		 0.56262090018538624 -0.71589899342228591 -0.41345659251188949 0 0.53597874570373982 0.69664022704370776 -0.47688486893414517 0
		 -29.005444162341245 37.467247883415311 59.798842137143481 1;
	setAttr ".pm[44]" -type "matrix" 0.62943189212847372 0.11826966141890899 0.76800246116755722 0
		 0.56262090018538635 -0.7510837632202283 -0.34544305363044253 0 0.53597874570373982 0.64952711091593107 -0.53929705760281088 0
		 -29.005405444990355 41.617840076730047 56.189082945775212 1;
	setAttr ".pm[45]" -type "matrix" 0.53838617598216232 -0.41125225554832162 0.73553511664482907 0
		 0.64981147228843283 -0.35313387416847525 -0.67308358871473239 0 0.53654950935924228 0.84033805651129567 0.077114037536462177 0
		 -36.356244319316907 -1.5653858153225038 66.309662744651206 1;
	setAttr ".pm[46]" -type "matrix" 0.5383861759821621 0.17753330814621096 0.8237853179135729 0
		 0.64981147228843261 -0.70987596612954829 -0.27170050274885332 0 0.53654950935924217 0.68158494497039934 -0.49755058717285583 0
		 -36.356312797551276 40.872228242400915 52.363532108981971 1;
	setAttr ".pm[47]" -type "matrix" 0.5383861759821621 0.20564239381473348 0.81722183731068376 0
		 0.64981147228843261 -0.71876479757178391 -0.24722907647348386 0 0.53654950935924217 0.66414484236327398 -0.52060181748493539 0
		 -36.356246758077297 41.06247321373128 50.987098107181325 1;
	setAttr ".pm[48]" -type "matrix" 0.95902714300123004 -0.27803994304974661 -0.054412581778410303 0
		 -0.06000177759521691 -0.01162592799206689 -0.9981305648479748 0 0.27688756864892411 0.96049915557860677 -0.027832471332427659 0
		 11.159153716947547 -6.9929640917749545 4.8987685676689967 1;
	setAttr ".pm[49]" -type "matrix" 0.95902714300123004 -0.22617187912888598 0.17062596542791217 0
		 -0.060001777595216896 -0.75073116415809082 -0.65787727263316498 0 0.276887568648924 0.62068429998925068 -0.73354227831430485 0
		 10.91161720950681 2.9658794791527696 8.2898370922977378 1;
	setAttr ".pm[50]" -type "matrix" 0.95902714300123004 -0.22617187912888598 0.17062596542791217 0
		 -0.060001777595216896 -0.75073116415809082 -0.65787727263316498 0 0.276887568648924 0.62068429998925068 -0.73354227831430485 0
		 10.911592217180722 7.6799969074478769 3.729011707148715 1;
	setAttr ".pm[51]" -type "matrix" 0.53838617598216187 -0.4112522555483214 0.7355351166448294 0
		 -0.64981147228843295 0.35313387416847603 0.67308358871473195 0 -0.53654950935924239 -0.84033805651129545 -0.077114037536461746 0
		 36.356283863756168 1.5654209319654888 -66.309579666205721 1;
	setAttr ".pm[52]" -type "matrix" 0.53838617598216187 0.17753330814621096 0.82378531791357323 0
		 -0.64981147228843283 0.70987596612954862 0.27170050274885293 0 -0.53654950935924239 -0.68158494497039956 0.49755058717285572 0
		 36.356283863756168 -40.872146806463526 -52.363477945707572 1;
	setAttr ".pm[53]" -type "matrix" 0.53838617598216187 0.20564239381473082 0.81722183731068487 0
		 -0.64981147228843261 0.71876479757178324 0.24722907647348566 0 -0.53654950935924239 -0.66414484236327553 0.52060181748493295 0
		 36.356283863756161 -41.062382645461518 -50.987073039290728 1;
	setAttr ".pm[54]" -type "matrix" 0.62943189212847384 0.11826966141890852 0.76800246116755744 0
		 -0.56262090018538657 0.75108376322022863 0.34544305363044309 0 -0.53597874570373993 -0.64952711091593096 0.53929705760281021 0
		 29.005441175622895 -41.617748342057986 -56.189109860949301 1;
	setAttr ".pm[55]" -type "matrix" 0.6494001267949161 -0.017109253674599961 -0.76025439739434875 0
		 0.75995515414569992 0.050548741865216316 0.64800693544377219 0 0.027342988244374932 -0.99857503380293922 0.045828624890193348 0
		 -69.544908588624864 14.012747044449025 -23.557652588499128 1;
	setAttr ".pm[56]" -type "matrix" 0.62943189212847372 0.04670144838705418 0.77565099618972977 0
		 -0.56262090018538657 0.71589899342228658 0.41345659251188915 0 -0.53597874570374004 -0.69664022704370721 0.47688486893414539 0
		 29.005441175622888 -37.467228254806194 -59.798828873468956 1;
	setAttr ".pm[57]" -type "matrix" 0.62943189212847384 -0.44052643142328729 0.64011870492044909 0
		 -0.56262090018538657 0.30983921429469052 0.76645768569428174 0 -0.53597874570374004 -0.84257707333080956 -0.052826694493719004 0
		 29.005441175622899 5.5136122604238968 -70.191646371614254 1;
	setAttr ".pm[58]" -type "matrix" 1 0 0 0 0 -0.99994069318767687 0.010890826752274131 0
		 0 -0.010890826752274131 -0.99994069318767687 0 0 46.687069653350832 -1.3357332542372329 1;
	setAttr ".pm[59]" -type "matrix" 1 0 0 0 0 -0.97357988541123952 -0.22834668099763877 0
		 0 0.22834668099763877 -0.97357988541123952 0 0 50.514390811674524 11.054165786474274 1;
	setAttr ".pm[60]" -type "matrix" 1 0 0 0 0 -0.95163355108230163 -0.30723538932630817 0
		 0 0.30723538932630817 -0.95163355108230163 0 0 54.601783054435415 15.573667371814432 1;
	setAttr ".pm[61]" -type "matrix" 1 0 0 0 0 -0.999884049953639 -0.015227824805548792 0
		 0 0.015227824805548792 -0.999884049953639 0 0 63.722726884058652 -3.2195231770122796 1;
	setAttr ".pm[62]" -type "matrix" 1 0 0 0 0 -0.97782545333777882 0.20942154331578941 0
		 0 -0.20942154331578941 -0.97782545333777882 0 0 66.13154415679675 -18.523929722929189 1;
	setAttr ".pm[63]" -type "matrix" 1 0 0 0 0 -0.98706667617529609 0.16031025165052043 0
		 0 -0.16031025165052043 -0.98706667617529609 0 0 71.391996274040352 -14.976058200298933 1;
	setAttr ".pm[64]" -type "matrix" 1 0 0 0 0 -1 -1.3322676295501878e-015 0 0 1.3322676295501878e-015 -1 0
		 0 75.691068172087583 -2.8792421854894612 1;
	setAttr ".pm[65]" -type "matrix" 0.70274456034469468 -0.71113485451339042 -0.020911757510092291 0
		 -0.14226912066537836 -0.16926886321503759 0.9752474297587197 0 -0.69707214849758681 -0.6823747289005565 -0.22012530328621963 0
		 11.609023527255616 15.120545967747137 -72.33403426347175 1;
	setAttr ".pm[66]" -type "matrix" 0.24968213650014243 -0.94620392863969738 0.20580805654669379 0
		 0.96821650385656299 0.24072634944739457 -0.067879498683367789 0 0.014684426188947219 0.21621505523097556 0.97623532896477749 0
		 -67.202324576729566 -15.645362709761402 5.4083249405666036 1;
	setAttr ".pm[67]" -type "matrix" 0.04944073752271641 -0.96173869926074984 -0.26947038393383949 0
		 0.9921416552879212 0.016242958724072373 0.12406088075792457 0 -0.11493715376567203 -0.27348645420958051 0.95498408889788144 0
		 -67.218712837145347 7.5569137566769378 -2.8272935920650162 1;
	setAttr ".pm[68]" -type "matrix" 0.049440737522716403 -0.47624023037149543 -0.87792417465799077 0
		 0.99214165528792109 -0.07773548317484559 0.098041473357539835 0 -0.11493715376567201 -0.87587238661307132 0.46865447085562717 0
		 -67.218712837145347 16.013740831641854 12.446813203332971 1;
	setAttr ".pm[69]" -type "matrix" 0.049440737522716403 -0.47624023037149543 -0.87792417465799077 0
		 0.99214165528792109 -0.07773548317484559 0.098041473357539835 0 -0.11493715376567201 -0.87587238661307132 0.46865447085562717 0
		 -67.218712837145347 29.027235831641853 12.446813203332974 1;
	setAttr ".pm[70]" -type "matrix" 0.6494001267949161 -0.034819093337805619 -0.75964933097968279 0
		 0.75995515414570003 0.06563405459001595 0.6466531795061865 0 0.027342988244374943 -0.99723608118499585 0.069083712817566298 0
		 -69.544908588624878 10.321961946122437 -24.08878752941148 1;
	setAttr ".pm[71]" -type "matrix" 0.6494001267949161 -0.17529860632605429 -0.73996613026468272 0
		 0.75995515414569981 0.18459132098873079 0.62321281108704818 0 0.027342988244374946 -0.96705555312803915 0.25309270664736566 0
		 -69.54490858862485 7.6549537488004447 -25.962190686933372 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 34 ".ma";
	setAttr -s 72 ".dpf[0:71]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 34 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
createNode groupId -n "groupId257";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:341]";
createNode tweak -n "tweak3";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId259";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	setAttr -s 847 ".wl";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[35]" 0.1;
	setAttr ".wl[0].w[62]" 0.9;
	setAttr -s 2 ".wl[1].w";
	setAttr ".wl[1].w[35]" 0.1;
	setAttr ".wl[1].w[62]" 0.9;
	setAttr -s 2 ".wl[2].w";
	setAttr ".wl[2].w[35]" 0.1;
	setAttr ".wl[2].w[62]" 0.9;
	setAttr -s 2 ".wl[3].w";
	setAttr ".wl[3].w[35]" 0.1;
	setAttr ".wl[3].w[62]" 0.9;
	setAttr -s 2 ".wl[4].w[62:63]"  0.4529 0.5471;
	setAttr -s 2 ".wl[5].w[62:63]"  0.4811 0.5189;
	setAttr -s 2 ".wl[6].w[62:63]"  0.4525 0.5475;
	setAttr -s 2 ".wl[7].w[62:63]"  0.3918 0.6082;
	setAttr ".wl[8].w[62]"  1;
	setAttr -s 2 ".wl[9].w[62:63]"  0.4987 0.5013;
	setAttr ".wl[10].w[62]"  1;
	setAttr -s 2 ".wl[11].w[62:63]"  0.4369 0.5631;
	setAttr -s 2 ".wl[12].w[62:63]"  0.3707 0.6293;
	setAttr -s 2 ".wl[13].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[14].w[59:60]"  0.75 0.25;
	setAttr -s 2 ".wl[15].w[59:60]"  0.8 0.2;
	setAttr -s 2 ".wl[16].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[17].w";
	setAttr ".wl[17].w[20]" 0.5;
	setAttr ".wl[17].w[58]" 0.5;
	setAttr -s 2 ".wl[18].w";
	setAttr ".wl[18].w[20]" 0.35;
	setAttr ".wl[18].w[58]" 0.65;
	setAttr -s 3 ".wl[19].w";
	setAttr ".wl[19].w[20:21]" 0.2767 0.1875;
	setAttr ".wl[19].w[58]" 0.5358;
	setAttr -s 3 ".wl[20].w";
	setAttr ".wl[20].w[20:21]" 0.252 0.2285;
	setAttr ".wl[20].w[58]" 0.5195;
	setAttr -s 2 ".wl[21].w[22:23]"  0.3 0.7;
	setAttr -s 2 ".wl[22].w[22:23]"  0.3 0.7;
	setAttr ".wl[23].w[22]"  1;
	setAttr ".wl[24].w[22]"  1;
	setAttr -s 2 ".wl[25].w[62:63]"  0.4935 0.5065;
	setAttr ".wl[26].w[62]"  1;
	setAttr ".wl[27].w[62]"  1;
	setAttr -s 2 ".wl[28].w[62:63]"  0.5004 0.4996;
	setAttr -s 2 ".wl[29].w[66:67]"  0.8 0.2;
	setAttr ".wl[30].w[66]"  1;
	setAttr -s 2 ".wl[31].w";
	setAttr ".wl[31].w[62]" 0.1674;
	setAttr ".wl[31].w[66]" 0.8326;
	setAttr -s 2 ".wl[32].w[66:67]"  0.8 0.2;
	setAttr ".wl[33].w[22]"  1;
	setAttr ".wl[34].w[22]"  1;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[60:61]" 0.54 0.36;
	setAttr ".wl[35].w[66]" 0.1;
	setAttr -s 2 ".wl[36].w[59:60]"  0.7 0.3;
	setAttr -s 2 ".wl[37].w[59:60]"  0.7 0.3;
	setAttr -s 2 ".wl[38].w[60:61]"  0.6 0.4;
	setAttr -s 2 ".wl[39].w[62:63]"  0.4886 0.5114;
	setAttr -s 2 ".wl[40].w[62:63]"  0.4803 0.5197;
	setAttr -s 3 ".wl[41].w";
	setAttr ".wl[41].w[20]" 0.25;
	setAttr ".wl[41].w[22]" 0.5;
	setAttr ".wl[41].w[58]" 0.25;
	setAttr -s 2 ".wl[42].w";
	setAttr ".wl[42].w[20]" 0.5;
	setAttr ".wl[42].w[22]" 0.5;
	setAttr -s 2 ".wl[43].w";
	setAttr ".wl[43].w[20]" 0.6;
	setAttr ".wl[43].w[58]" 0.4;
	setAttr -s 3 ".wl[44].w";
	setAttr ".wl[44].w[20]" 0.6;
	setAttr ".wl[44].w[22]" 0.25;
	setAttr ".wl[44].w[58]" 0.15;
	setAttr ".wl[45].w[66]"  1;
	setAttr -s 2 ".wl[46].w[66:67]"  0.8 0.2;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[62]" 0.3;
	setAttr ".wl[47].w[66]" 0.7;
	setAttr ".wl[48].w[66]"  1;
	setAttr -s 2 ".wl[49].w";
	setAttr ".wl[49].w[62]" 0.3756;
	setAttr ".wl[49].w[66]" 0.6244;
	setAttr -s 2 ".wl[50].w";
	setAttr ".wl[50].w[62]" 0.499;
	setAttr ".wl[50].w[66]" 0.501;
	setAttr -s 2 ".wl[51].w";
	setAttr ".wl[51].w[62]" 0.4441;
	setAttr ".wl[51].w[66]" 0.5559;
	setAttr -s 2 ".wl[52].w";
	setAttr ".wl[52].w[62]" 0.2441;
	setAttr ".wl[52].w[66]" 0.7559;
	setAttr -s 2 ".wl[53].w";
	setAttr ".wl[53].w[35]" 0.1;
	setAttr ".wl[53].w[62]" 0.9;
	setAttr -s 2 ".wl[54].w[62:63]"  0.5009 0.4991;
	setAttr ".wl[55].w[60]"  1;
	setAttr -s 2 ".wl[56].w[59:60]"  0.2 0.8;
	setAttr -s 2 ".wl[57].w[59:60]"  0.4 0.6;
	setAttr ".wl[58].w[60]"  1;
	setAttr -s 2 ".wl[59].w[59:60]"  0.7 0.3;
	setAttr ".wl[60].w[23]"  1;
	setAttr ".wl[61].w[23]"  1;
	setAttr ".wl[62].w[60]"  1;
	setAttr -s 2 ".wl[63].w[59:60]"  0.7 0.3;
	setAttr -s 2 ".wl[64].w[60:61]"  0.5 0.5;
	setAttr -s 2 ".wl[65].w[60:61]"  0.5 0.5;
	setAttr ".wl[66].w[60]"  1;
	setAttr ".wl[67].w[60]"  1;
	setAttr -s 2 ".wl[68].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[69].w[58:59]"  0.8 0.2;
	setAttr ".wl[70].w[35]"  1;
	setAttr -s 2 ".wl[71].w";
	setAttr ".wl[71].w[35]" 0.3;
	setAttr ".wl[71].w[62]" 0.7;
	setAttr -s 2 ".wl[72].w";
	setAttr ".wl[72].w[35]" 0.5;
	setAttr ".wl[72].w[62]" 0.5;
	setAttr -s 2 ".wl[73].w";
	setAttr ".wl[73].w[35]" 0.7;
	setAttr ".wl[73].w[62]" 0.3;
	setAttr -s 2 ".wl[74].w[60:61]"  0.6 0.4;
	setAttr -s 2 ".wl[75].w[60:61]"  0.6 0.4;
	setAttr -s 2 ".wl[76].w[61:62]"  0.7 0.3;
	setAttr -s 2 ".wl[77].w[61:62]"  0.7 0.3;
	setAttr -s 2 ".wl[78].w[59:60]"  0.7 0.3;
	setAttr ".wl[79].w[60]"  1;
	setAttr -s 3 ".wl[80].w";
	setAttr ".wl[80].w[35]" 0.3;
	setAttr ".wl[80].w[61:62]" 0.49 0.21;
	setAttr -s 2 ".wl[81].w[60:61]"  0.6 0.4;
	setAttr -s 3 ".wl[82].w";
	setAttr ".wl[82].w[35]" 0.1;
	setAttr ".wl[82].w[60:61]" 0.54 0.36;
	setAttr -s 2 ".wl[83].w";
	setAttr ".wl[83].w[35]" 0.7;
	setAttr ".wl[83].w[62]" 0.3;
	setAttr -s 2 ".wl[84].w";
	setAttr ".wl[84].w[60]" 0.8;
	setAttr ".wl[84].w[66]" 0.2;
	setAttr -s 2 ".wl[85].w";
	setAttr ".wl[85].w[60]" 0.9;
	setAttr ".wl[85].w[66]" 0.1;
	setAttr ".wl[86].w[35]"  1;
	setAttr -s 2 ".wl[87].w";
	setAttr ".wl[87].w[62]" 0.3;
	setAttr ".wl[87].w[66]" 0.7;
	setAttr ".wl[88].w[66]"  1;
	setAttr -s 2 ".wl[89].w[59:60]"  0.2 0.8;
	setAttr -s 2 ".wl[90].w[59:60]"  0.2 0.8;
	setAttr ".wl[91].w[60]"  1;
	setAttr ".wl[92].w[60]"  1;
	setAttr -s 2 ".wl[93].w";
	setAttr ".wl[93].w[60]" 0.8;
	setAttr ".wl[93].w[66]" 0.2;
	setAttr -s 2 ".wl[94].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[95].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[96].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[97].w[59:60]"  0.7 0.3;
	setAttr -s 2 ".wl[98].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[99].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[100].w[59:60]"  0.8 0.2;
	setAttr -s 2 ".wl[101].w[59:60]"  0.8 0.2;
	setAttr ".wl[102].w[23]"  1;
	setAttr -s 2 ".wl[103].w";
	setAttr ".wl[103].w[62]" 0.7;
	setAttr ".wl[103].w[66]" 0.3;
	setAttr -s 2 ".wl[104].w";
	setAttr ".wl[104].w[62]" 0.1046;
	setAttr ".wl[104].w[66]" 0.8954;
	setAttr -s 2 ".wl[105].w";
	setAttr ".wl[105].w[62]" 0.7;
	setAttr ".wl[105].w[66]" 0.3;
	setAttr -s 3 ".wl[106].w";
	setAttr ".wl[106].w[60:61]" 0.3 0.45;
	setAttr ".wl[106].w[66]" 0.25;
	setAttr -s 2 ".wl[107].w";
	setAttr ".wl[107].w[62]" 0.307;
	setAttr ".wl[107].w[66]" 0.693;
	setAttr -s 3 ".wl[108].w";
	setAttr ".wl[108].w[60:61]" 0.28 0.52;
	setAttr ".wl[108].w[66]" 0.2;
	setAttr -s 2 ".wl[109].w[60:61]"  0.6 0.4;
	setAttr -s 2 ".wl[110].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[111].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[112].w[58:59]"  0.8 0.2;
	setAttr ".wl[113].w[66]"  1;
	setAttr -s 2 ".wl[114].w[60:61]"  0.35 0.65;
	setAttr -s 3 ".wl[115].w";
	setAttr ".wl[115].w[60:61]" 0.28 0.52;
	setAttr ".wl[115].w[66]" 0.2;
	setAttr -s 2 ".wl[116].w";
	setAttr ".wl[116].w[60]" 0.8;
	setAttr ".wl[116].w[66]" 0.2;
	setAttr -s 2 ".wl[117].w[61:62]"  0.7 0.3;
	setAttr ".wl[118].w[62]"  1;
	setAttr ".wl[119].w[62]"  1;
	setAttr -s 2 ".wl[120].w";
	setAttr ".wl[120].w[62]" 0.7;
	setAttr ".wl[120].w[66]" 0.3;
	setAttr -s 2 ".wl[121].w";
	setAttr ".wl[121].w[62]" 0.7;
	setAttr ".wl[121].w[66]" 0.3;
	setAttr -s 2 ".wl[122].w";
	setAttr ".wl[122].w[62]" 0.1566;
	setAttr ".wl[122].w[66]" 0.8434;
	setAttr -s 2 ".wl[123].w";
	setAttr ".wl[123].w[62]" 0.9;
	setAttr ".wl[123].w[66]" 0.1;
	setAttr -s 2 ".wl[124].w";
	setAttr ".wl[124].w[62]" 0.9;
	setAttr ".wl[124].w[66]" 0.1;
	setAttr -s 2 ".wl[125].w[62:63]"  0.5009 0.4991;
	setAttr -s 2 ".wl[126].w";
	setAttr ".wl[126].w[62]" 0.9;
	setAttr ".wl[126].w[66]" 0.1;
	setAttr -s 2 ".wl[127].w";
	setAttr ".wl[127].w[62]" 0.85;
	setAttr ".wl[127].w[66]" 0.15;
	setAttr -s 2 ".wl[128].w";
	setAttr ".wl[128].w[62]" 0.9;
	setAttr ".wl[128].w[66]" 0.1;
	setAttr -s 2 ".wl[129].w";
	setAttr ".wl[129].w[35]" 0.6135;
	setAttr ".wl[129].w[62]" 0.3865;
	setAttr ".wl[130].w[62]"  1;
	setAttr -s 3 ".wl[131].w";
	setAttr ".wl[131].w[35]" 0.0772;
	setAttr ".wl[131].w[62:63]" 0.4808 0.442;
	setAttr -s 2 ".wl[132].w[62:63]"  0.5256 0.4744;
	setAttr -s 2 ".wl[133].w";
	setAttr ".wl[133].w[62]" 0.9;
	setAttr ".wl[133].w[66]" 0.1;
	setAttr -s 2 ".wl[134].w";
	setAttr ".wl[134].w[62]" 0.85;
	setAttr ".wl[134].w[66]" 0.15;
	setAttr -s 2 ".wl[135].w";
	setAttr ".wl[135].w[62]" 0.85;
	setAttr ".wl[135].w[66]" 0.15;
	setAttr -s 2 ".wl[136].w[60:61]"  0.65 0.35;
	setAttr -s 2 ".wl[137].w[66:67]"  0.7 0.3;
	setAttr -s 2 ".wl[138].w[66:67]"  0.5 0.5;
	setAttr -s 2 ".wl[139].w[66:67]"  0.6999 0.3001;
	setAttr -s 2 ".wl[140].w";
	setAttr ".wl[140].w[20]" 0.5;
	setAttr ".wl[140].w[58]" 0.5;
	setAttr -s 3 ".wl[141].w";
	setAttr ".wl[141].w[20:21]" 0.241 0.2199;
	setAttr ".wl[141].w[58]" 0.5391;
	setAttr -s 2 ".wl[142].w";
	setAttr ".wl[142].w[62]" 0.3865;
	setAttr ".wl[142].w[66]" 0.6135;
	setAttr -s 2 ".wl[143].w";
	setAttr ".wl[143].w[62]" 0.9;
	setAttr ".wl[143].w[66]" 0.1;
	setAttr -s 2 ".wl[144].w";
	setAttr ".wl[144].w[62]" 0.9;
	setAttr ".wl[144].w[66]" 0.1;
	setAttr -s 2 ".wl[145].w";
	setAttr ".wl[145].w[62]" 0.4982;
	setAttr ".wl[145].w[66]" 0.5018;
	setAttr -s 2 ".wl[146].w[66:67]"  0.7998 0.2002;
	setAttr -s 2 ".wl[147].w";
	setAttr ".wl[147].w[34]" 0.5;
	setAttr ".wl[147].w[66]" 0.5;
	setAttr -s 2 ".wl[148].w[66:67]"  0.8 0.2;
	setAttr -s 2 ".wl[149].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[150].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[151].w[59:60]"  0.2 0.8;
	setAttr -s 3 ".wl[152].w";
	setAttr ".wl[152].w[60:61]" 0.28 0.52;
	setAttr ".wl[152].w[66]" 0.2;
	setAttr -s 2 ".wl[153].w[60:61]"  0.65 0.35;
	setAttr -s 2 ".wl[154].w";
	setAttr ".wl[154].w[62]" 0.3457;
	setAttr ".wl[154].w[66]" 0.6543;
	setAttr -s 3 ".wl[155].w";
	setAttr ".wl[155].w[62:63]" 0.4808 0.442;
	setAttr ".wl[155].w[66]" 0.0772;
	setAttr -s 3 ".wl[156].w";
	setAttr ".wl[156].w[62:63]" 0.4701 0.4645;
	setAttr ".wl[156].w[66]" 0.0654;
	setAttr -s 2 ".wl[157].w";
	setAttr ".wl[157].w[62]" 0.5;
	setAttr ".wl[157].w[66]" 0.5;
	setAttr -s 3 ".wl[158].w";
	setAttr ".wl[158].w[61:62]" 0.49 0.21;
	setAttr ".wl[158].w[66]" 0.3;
	setAttr -s 2 ".wl[159].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[160].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[161].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[162].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[163].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[164].w[62:63]"  0.5036 0.4964;
	setAttr -s 2 ".wl[165].w[62:63]"  0.4979 0.5021;
	setAttr -s 2 ".wl[166].w[62:63]"  0.4981 0.5019;
	setAttr -s 2 ".wl[167].w[62:63]"  0.477 0.523;
	setAttr -s 2 ".wl[168].w[62:63]"  0.4805 0.5195;
	setAttr ".wl[169].w[62]"  1;
	setAttr -s 2 ".wl[170].w[62:63]"  0.4886 0.5114;
	setAttr -s 2 ".wl[171].w[59:60]"  0.8 0.2;
	setAttr -s 2 ".wl[172].w[62:63]"  0.4525 0.5475;
	setAttr -s 2 ".wl[173].w[62:63]"  0.5 0.5;
	setAttr -s 2 ".wl[174].w";
	setAttr ".wl[174].w[62]" 0.9;
	setAttr ".wl[174].w[66]" 0.1;
	setAttr -s 2 ".wl[175].w";
	setAttr ".wl[175].w[35]" 0.15;
	setAttr ".wl[175].w[62]" 0.85;
	setAttr -s 2 ".wl[176].w";
	setAttr ".wl[176].w[35]" 0.1;
	setAttr ".wl[176].w[62]" 0.9;
	setAttr -s 2 ".wl[177].w";
	setAttr ".wl[177].w[35]" 0.5018;
	setAttr ".wl[177].w[62]" 0.4982;
	setAttr -s 2 ".wl[178].w[62:63]"  0.4987 0.5013;
	setAttr -s 2 ".wl[179].w";
	setAttr ".wl[179].w[62]" 0.4997;
	setAttr ".wl[179].w[66]" 0.5003;
	setAttr -s 2 ".wl[180].w[60:61]"  0.35 0.65;
	setAttr -s 2 ".wl[181].w[60:61]"  0.65 0.35;
	setAttr -s 2 ".wl[182].w[60:61]"  0.35 0.65;
	setAttr ".wl[183].w[62]"  1;
	setAttr ".wl[184].w[62]"  1;
	setAttr -s 2 ".wl[185].w[60:61]"  0.35 0.65;
	setAttr -s 2 ".wl[186].w[60:61]"  0.65 0.35;
	setAttr -s 2 ".wl[187].w[60:61]"  0.65 0.35;
	setAttr -s 2 ".wl[188].w";
	setAttr ".wl[188].w[62]" 0.85;
	setAttr ".wl[188].w[66]" 0.15;
	setAttr ".wl[189].w[62]"  1;
	setAttr ".wl[190].w[62]"  1;
	setAttr -s 2 ".wl[191].w[62:63]"  0.4811 0.5189;
	setAttr -s 2 ".wl[192].w[62:63]"  0.4529 0.5471;
	setAttr -s 2 ".wl[193].w[66:67]"  0.3 0.7;
	setAttr -s 2 ".wl[194].w";
	setAttr ".wl[194].w[62]" 0.85;
	setAttr ".wl[194].w[66]" 0.15;
	setAttr -s 2 ".wl[195].w";
	setAttr ".wl[195].w[62]" 0.85;
	setAttr ".wl[195].w[66]" 0.15;
	setAttr ".wl[196].w[16]"  1;
	setAttr ".wl[197].w[16]"  1;
	setAttr ".wl[198].w[16]"  1;
	setAttr ".wl[199].w[16]"  1;
	setAttr ".wl[200].w[19]"  1;
	setAttr ".wl[201].w[15]"  1;
	setAttr ".wl[202].w[18]"  1;
	setAttr ".wl[203].w[19]"  1;
	setAttr -s 2 ".wl[204].w[62:63]"  0.5 0.5;
	setAttr -s 2 ".wl[205].w[62:63]"  0.5 0.5;
	setAttr -s 2 ".wl[206].w[62:63]"  0.3918 0.6082;
	setAttr ".wl[207].w[68]"  1;
	setAttr ".wl[208].w[68]"  1;
	setAttr ".wl[209].w[68]"  1;
	setAttr ".wl[210].w[68]"  1;
	setAttr ".wl[211].w[62]"  1;
	setAttr ".wl[212].w[62]"  1;
	setAttr -s 2 ".wl[213].w";
	setAttr ".wl[213].w[35]" 0.15;
	setAttr ".wl[213].w[62]" 0.85;
	setAttr ".wl[214].w[62]"  1;
	setAttr ".wl[215].w[62]"  1;
	setAttr -s 2 ".wl[216].w";
	setAttr ".wl[216].w[62]" 0.85;
	setAttr ".wl[216].w[66]" 0.15;
	setAttr ".wl[217].w[62]"  1;
	setAttr ".wl[218].w[60]"  1;
	setAttr -s 2 ".wl[219].w[59:60]"  0.2 0.8;
	setAttr -s 2 ".wl[220].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[221].w[60:61]"  0.65 0.35;
	setAttr ".wl[222].w[60]"  1;
	setAttr ".wl[223].w[62]"  1;
	setAttr ".wl[224].w[62]"  1;
	setAttr ".wl[225].w[62]"  1;
	setAttr ".wl[226].w[62]"  1;
	setAttr ".wl[227].w[32]"  1;
	setAttr ".wl[228].w[32]"  1;
	setAttr -s 2 ".wl[229].w[31:32]"  0.25 0.75;
	setAttr ".wl[230].w[68]"  1;
	setAttr -s 2 ".wl[231].w[31:32]"  0.75 0.25;
	setAttr ".wl[232].w[68]"  1;
	setAttr ".wl[233].w[31]"  1;
	setAttr -s 2 ".wl[234].w";
	setAttr ".wl[234].w[31]" 0.2;
	setAttr ".wl[234].w[68]" 0.8;
	setAttr -s 2 ".wl[235].w";
	setAttr ".wl[235].w[35]" 0.15;
	setAttr ".wl[235].w[62]" 0.85;
	setAttr ".wl[236].w[31]"  1;
	setAttr -s 2 ".wl[237].w";
	setAttr ".wl[237].w[31]" 0.2;
	setAttr ".wl[237].w[68]" 0.8;
	setAttr -s 2 ".wl[238].w[31:32]"  0.5 0.5;
	setAttr ".wl[239].w[68]"  1;
	setAttr -s 2 ".wl[240].w[35:36]"  0.8 0.2;
	setAttr -s 2 ".wl[241].w[67:68]"  0.5 0.5;
	setAttr -s 2 ".wl[242].w[67:68]"  0.4998 0.5002;
	setAttr ".wl[243].w[67]"  1;
	setAttr ".wl[244].w[67]"  1;
	setAttr -s 2 ".wl[245].w[67:68]"  0.4998 0.5002;
	setAttr ".wl[246].w[67]"  1;
	setAttr -s 2 ".wl[247].w[59:60]"  0.2 0.8;
	setAttr -s 2 ".wl[248].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[249].w[67:68]"  0.5 0.5;
	setAttr ".wl[250].w[67]"  1;
	setAttr -s 2 ".wl[251].w[67:68]"  0.4998 0.5002;
	setAttr ".wl[252].w[67]"  1;
	setAttr -s 2 ".wl[253].w[67:68]"  0.5 0.5;
	setAttr ".wl[254].w[67]"  1;
	setAttr -s 3 ".wl[255].w";
	setAttr ".wl[255].w[20]" 0.6;
	setAttr ".wl[255].w[22]" 0.25;
	setAttr ".wl[255].w[58]" 0.15;
	setAttr -s 2 ".wl[256].w[67:68]"  0.5 0.5;
	setAttr ".wl[257].w[67]"  1;
	setAttr ".wl[258].w[67]"  1;
	setAttr ".wl[259].w[67]"  1;
	setAttr -s 2 ".wl[260].w[59:60]"  0.2 0.8;
	setAttr ".wl[261].w[67]"  1;
	setAttr -s 2 ".wl[262].w";
	setAttr ".wl[262].w[33]" 0.8;
	setAttr ".wl[262].w[66]" 0.2;
	setAttr -s 2 ".wl[263].w";
	setAttr ".wl[263].w[33]" 0.625;
	setAttr ".wl[263].w[66]" 0.375;
	setAttr -s 2 ".wl[264].w";
	setAttr ".wl[264].w[33]" 0.8;
	setAttr ".wl[264].w[66]" 0.2;
	setAttr -s 3 ".wl[265].w";
	setAttr ".wl[265].w[20]" 0.25;
	setAttr ".wl[265].w[22]" 0.5;
	setAttr ".wl[265].w[58]" 0.25;
	setAttr ".wl[266].w[68]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[68]"  1;
	setAttr ".wl[270].w[68]"  1;
	setAttr ".wl[271].w[22]"  1;
	setAttr ".wl[272].w[68]"  1;
	setAttr ".wl[273].w[68]"  1;
	setAttr -s 2 ".wl[274].w";
	setAttr ".wl[274].w[35]" 0.6244;
	setAttr ".wl[274].w[62]" 0.3756;
	setAttr -s 2 ".wl[275].w";
	setAttr ".wl[275].w[35]" 0.501;
	setAttr ".wl[275].w[62]" 0.499;
	setAttr ".wl[276].w[24]"  1;
	setAttr ".wl[277].w[58]"  1;
	setAttr -s 3 ".wl[278].w";
	setAttr ".wl[278].w[21]" 0.25;
	setAttr ".wl[278].w[24]" 0.5;
	setAttr ".wl[278].w[58]" 0.25;
	setAttr -s 2 ".wl[279].w";
	setAttr ".wl[279].w[0]" 0.7;
	setAttr ".wl[279].w[24]" 0.3;
	setAttr -s 2 ".wl[280].w[58:59]"  0.8 0.2;
	setAttr ".wl[281].w[24]"  1;
	setAttr -s 3 ".wl[282].w";
	setAttr ".wl[282].w[21]" 0.6;
	setAttr ".wl[282].w[24]" 0.25;
	setAttr ".wl[282].w[58]" 0.15;
	setAttr -s 3 ".wl[283].w";
	setAttr ".wl[283].w[21]" 0.3277;
	setAttr ".wl[283].w[24]" 0.4445;
	setAttr ".wl[283].w[58]" 0.2278;
	setAttr -s 3 ".wl[284].w";
	setAttr ".wl[284].w[1]" 0.0569;
	setAttr ".wl[284].w[21]" 0.3161;
	setAttr ".wl[284].w[58]" 0.627;
	setAttr -s 2 ".wl[285].w";
	setAttr ".wl[285].w[21]" 0.5;
	setAttr ".wl[285].w[58]" 0.5;
	setAttr ".wl[286].w[14]"  1;
	setAttr ".wl[287].w[14]"  1;
	setAttr ".wl[288].w[14]"  1;
	setAttr ".wl[289].w[14]"  1;
	setAttr ".wl[290].w[14]"  1;
	setAttr ".wl[291].w[14]"  1;
	setAttr ".wl[292].w[14]"  1;
	setAttr ".wl[293].w[14]"  1;
	setAttr ".wl[294].w[14]"  1;
	setAttr ".wl[295].w[14]"  1;
	setAttr ".wl[296].w[14]"  1;
	setAttr ".wl[297].w[14]"  1;
	setAttr -s 2 ".wl[298].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[299].w[14:15]"  0.5 0.5;
	setAttr -s 2 ".wl[300].w[14:15]"  0.5 0.5;
	setAttr ".wl[301].w[15]"  1;
	setAttr -s 2 ".wl[302].w[14:15]"  0.5 0.5;
	setAttr ".wl[303].w[15]"  1;
	setAttr ".wl[304].w[15]"  1;
	setAttr ".wl[305].w[15]"  1;
	setAttr ".wl[306].w[15]"  1;
	setAttr ".wl[307].w[15]"  1;
	setAttr ".wl[308].w[15]"  1;
	setAttr ".wl[309].w[15]"  1;
	setAttr ".wl[310].w[15]"  1;
	setAttr ".wl[311].w[15]"  1;
	setAttr ".wl[312].w[15]"  1;
	setAttr ".wl[313].w[15]"  1;
	setAttr ".wl[314].w[15]"  1;
	setAttr ".wl[315].w[15]"  1;
	setAttr -s 3 ".wl[316].w";
	setAttr ".wl[316].w[14]" 0.629;
	setAttr ".wl[316].w[20]" 0.1839;
	setAttr ".wl[316].w[58]" 0.1871;
	setAttr -s 3 ".wl[317].w";
	setAttr ".wl[317].w[14]" 0.3214;
	setAttr ".wl[317].w[20]" 0.3393;
	setAttr ".wl[317].w[58]" 0.3393;
	setAttr -s 3 ".wl[318].w";
	setAttr ".wl[318].w[1]" 0.4;
	setAttr ".wl[318].w[14]" 0.4;
	setAttr ".wl[318].w[58]" 0.2;
	setAttr -s 3 ".wl[319].w";
	setAttr ".wl[319].w[1]" 0.4;
	setAttr ".wl[319].w[14]" 0.4;
	setAttr ".wl[319].w[58]" 0.2;
	setAttr ".wl[320].w[58]"  1;
	setAttr -s 2 ".wl[321].w";
	setAttr ".wl[321].w[14]" 0.0513;
	setAttr ".wl[321].w[58]" 0.9487;
	setAttr -s 3 ".wl[322].w";
	setAttr ".wl[322].w[1]" 0.3;
	setAttr ".wl[322].w[14]" 0.3;
	setAttr ".wl[322].w[58]" 0.4;
	setAttr -s 2 ".wl[323].w";
	setAttr ".wl[323].w[1]" 0.5;
	setAttr ".wl[323].w[58]" 0.5;
	setAttr -s 3 ".wl[324].w";
	setAttr ".wl[324].w[20:21]" 0.28337166282833715 0.28337166282833715;
	setAttr ".wl[324].w[58]" 0.43325667434332565;
	setAttr -s 2 ".wl[325].w";
	setAttr ".wl[325].w[21]" 0.7;
	setAttr ".wl[325].w[58]" 0.3;
	setAttr -s 2 ".wl[326].w";
	setAttr ".wl[326].w[1]" 0.5;
	setAttr ".wl[326].w[21]" 0.5;
	setAttr -s 3 ".wl[327].w";
	setAttr ".wl[327].w[1]" 0.4;
	setAttr ".wl[327].w[14]" 0.4;
	setAttr ".wl[327].w[58]" 0.2;
	setAttr ".wl[328].w[14]"  1;
	setAttr -s 2 ".wl[329].w";
	setAttr ".wl[329].w[14]" 0.85;
	setAttr ".wl[329].w[20]" 0.15;
	setAttr ".wl[330].w[15]"  1;
	setAttr ".wl[331].w[18]"  1;
	setAttr ".wl[332].w[1]"  1;
	setAttr ".wl[333].w[1]"  1;
	setAttr -s 2 ".wl[334].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[335].w[1:2]"  0.5 0.5;
	setAttr ".wl[336].w[1]"  1;
	setAttr -s 2 ".wl[337].w[1:2]"  0.5 0.5;
	setAttr ".wl[338].w[1]"  1;
	setAttr ".wl[339].w[2]"  1;
	setAttr ".wl[340].w[1]"  1;
	setAttr -s 2 ".wl[341].w[1:2]"  0.5 0.5;
	setAttr ".wl[342].w[1]"  1;
	setAttr ".wl[343].w[2]"  1;
	setAttr ".wl[344].w[22]"  1;
	setAttr ".wl[345].w[58]"  1;
	setAttr -s 2 ".wl[346].w";
	setAttr ".wl[346].w[14]" 0.5;
	setAttr ".wl[346].w[20]" 0.5;
	setAttr -s 2 ".wl[347].w";
	setAttr ".wl[347].w[14]" 0.5;
	setAttr ".wl[347].w[20]" 0.5;
	setAttr -s 2 ".wl[348].w";
	setAttr ".wl[348].w[14]" 0.85;
	setAttr ".wl[348].w[20]" 0.15;
	setAttr ".wl[349].w[58]"  1;
	setAttr -s 2 ".wl[350].w";
	setAttr ".wl[350].w[14]" 0.85;
	setAttr ".wl[350].w[20]" 0.15;
	setAttr -s 2 ".wl[351].w";
	setAttr ".wl[351].w[14]" 0.7638;
	setAttr ".wl[351].w[58]" 0.2362;
	setAttr ".wl[352].w[14]"  1;
	setAttr -s 2 ".wl[353].w";
	setAttr ".wl[353].w[14]" 0.75;
	setAttr ".wl[353].w[58]" 0.25;
	setAttr ".wl[354].w[14]"  1;
	setAttr -s 2 ".wl[355].w[58:59]"  0.8 0.2;
	setAttr ".wl[356].w[58]"  1;
	setAttr -s 2 ".wl[357].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[358].w";
	setAttr ".wl[358].w[1]" 0.5;
	setAttr ".wl[358].w[21]" 0.5;
	setAttr -s 2 ".wl[359].w";
	setAttr ".wl[359].w[21]" 0.7;
	setAttr ".wl[359].w[58]" 0.3;
	setAttr -s 3 ".wl[360].w";
	setAttr ".wl[360].w[1]" 0.4;
	setAttr ".wl[360].w[14]" 0.4;
	setAttr ".wl[360].w[58]" 0.2;
	setAttr -s 2 ".wl[361].w";
	setAttr ".wl[361].w[14]" 0.5;
	setAttr ".wl[361].w[58]" 0.5;
	setAttr ".wl[362].w[58]"  1;
	setAttr ".wl[363].w[58]"  1;
	setAttr -s 2 ".wl[364].w";
	setAttr ".wl[364].w[1]" 0.7638;
	setAttr ".wl[364].w[58]" 0.2362;
	setAttr ".wl[365].w[58]"  1;
	setAttr -s 2 ".wl[366].w";
	setAttr ".wl[366].w[20]" 0.7;
	setAttr ".wl[366].w[58]" 0.3;
	setAttr ".wl[367].w[58]"  1;
	setAttr -s 3 ".wl[368].w";
	setAttr ".wl[368].w[20]" 0.3277;
	setAttr ".wl[368].w[22]" 0.4445;
	setAttr ".wl[368].w[58]" 0.2278;
	setAttr ".wl[369].w[58]"  1;
	setAttr -s 2 ".wl[370].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[371].w";
	setAttr ".wl[371].w[20]" 0.7;
	setAttr ".wl[371].w[58]" 0.3;
	setAttr -s 3 ".wl[372].w";
	setAttr ".wl[372].w[14]" 0.0569;
	setAttr ".wl[372].w[20]" 0.3161;
	setAttr ".wl[372].w[58]" 0.627;
	setAttr -s 2 ".wl[373].w[22:23]"  0.3 0.7;
	setAttr ".wl[374].w[24]"  1;
	setAttr -s 2 ".wl[375].w";
	setAttr ".wl[375].w[0]" 0.7;
	setAttr ".wl[375].w[24]" 0.3;
	setAttr ".wl[376].w[16]"  1;
	setAttr ".wl[377].w[16]"  1;
	setAttr ".wl[378].w[16]"  1;
	setAttr ".wl[379].w[16]"  1;
	setAttr ".wl[380].w[16]"  1;
	setAttr ".wl[381].w[16]"  1;
	setAttr ".wl[382].w[16]"  1;
	setAttr ".wl[383].w[16]"  1;
	setAttr ".wl[384].w[16]"  1;
	setAttr ".wl[385].w[16]"  1;
	setAttr ".wl[386].w[16]"  1;
	setAttr ".wl[387].w[16]"  1;
	setAttr ".wl[388].w[17]"  1;
	setAttr ".wl[389].w[17]"  1;
	setAttr ".wl[390].w[16]"  1;
	setAttr ".wl[391].w[16]"  1;
	setAttr -s 2 ".wl[392].w[15:16]"  0.5 0.5;
	setAttr -s 2 ".wl[393].w[15:16]"  0.5 0.5;
	setAttr ".wl[394].w[16]"  1;
	setAttr ".wl[395].w[16]"  1;
	setAttr -s 2 ".wl[396].w[15:16]"  0.5 0.5;
	setAttr -s 2 ".wl[397].w[15:16]"  0.5 0.5;
	setAttr ".wl[398].w[16]"  1;
	setAttr ".wl[399].w[16]"  1;
	setAttr -s 2 ".wl[400].w[15:16]"  0.5 0.5;
	setAttr -s 2 ".wl[401].w[15:16]"  0.5 0.5;
	setAttr ".wl[402].w[16]"  1;
	setAttr -s 2 ".wl[403].w[15:16]"  0.5 0.5;
	setAttr -s 2 ".wl[404].w[15:16]"  0.5 0.5;
	setAttr ".wl[405].w[16]"  1;
	setAttr ".wl[406].w[16]"  1;
	setAttr ".wl[407].w[16]"  1;
	setAttr ".wl[408].w[16]"  1;
	setAttr ".wl[409].w[16]"  1;
	setAttr ".wl[410].w[16]"  1;
	setAttr ".wl[411].w[16]"  1;
	setAttr ".wl[412].w[16]"  1;
	setAttr ".wl[413].w[16]"  1;
	setAttr ".wl[414].w[23]"  1;
	setAttr ".wl[415].w[17]"  1;
	setAttr ".wl[416].w[16]"  1;
	setAttr -s 2 ".wl[417].w[15:16]"  0.5 0.5;
	setAttr -s 2 ".wl[418].w[15:16]"  0.5 0.5;
	setAttr ".wl[419].w[16]"  1;
	setAttr ".wl[420].w[17]"  1;
	setAttr ".wl[421].w[17]"  1;
	setAttr ".wl[422].w[17]"  1;
	setAttr ".wl[423].w[17]"  1;
	setAttr ".wl[424].w[17]"  1;
	setAttr ".wl[425].w[17]"  1;
	setAttr ".wl[426].w[17]"  1;
	setAttr ".wl[427].w[16]"  1;
	setAttr ".wl[428].w[17]"  1;
	setAttr ".wl[429].w[16]"  1;
	setAttr -s 2 ".wl[430].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[431].w[59:60]"  0.8 0.2;
	setAttr -s 2 ".wl[432].w[59:60]"  0.75 0.25;
	setAttr -s 2 ".wl[433].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[434].w";
	setAttr ".wl[434].w[21]" 0.35;
	setAttr ".wl[434].w[58]" 0.65;
	setAttr -s 2 ".wl[435].w";
	setAttr ".wl[435].w[21]" 0.5;
	setAttr ".wl[435].w[58]" 0.5;
	setAttr ".wl[436].w[24]"  1;
	setAttr -s 2 ".wl[437].w";
	setAttr ".wl[437].w[0]" 0.7;
	setAttr ".wl[437].w[24]" 0.3;
	setAttr -s 2 ".wl[438].w[62:63]"  0.5004 0.4996;
	setAttr ".wl[439].w[62]"  1;
	setAttr ".wl[440].w[62]"  1;
	setAttr -s 2 ".wl[441].w[62:63]"  0.4935 0.5065;
	setAttr -s 2 ".wl[442].w[35:36]"  0.8 0.2;
	setAttr -s 2 ".wl[443].w";
	setAttr ".wl[443].w[35]" 0.8326;
	setAttr ".wl[443].w[62]" 0.1674;
	setAttr ".wl[444].w[35]"  1;
	setAttr -s 2 ".wl[445].w[35:36]"  0.8 0.2;
	setAttr ".wl[446].w[24]"  1;
	setAttr ".wl[447].w[24]"  1;
	setAttr -s 2 ".wl[448].w[59:60]"  0.7 0.3;
	setAttr -s 2 ".wl[449].w[59:60]"  0.7 0.3;
	setAttr -s 3 ".wl[450].w";
	setAttr ".wl[450].w[21]" 0.6;
	setAttr ".wl[450].w[24]" 0.25;
	setAttr ".wl[450].w[58]" 0.15;
	setAttr -s 2 ".wl[451].w";
	setAttr ".wl[451].w[21]" 0.6;
	setAttr ".wl[451].w[58]" 0.4;
	setAttr -s 2 ".wl[452].w";
	setAttr ".wl[452].w[21]" 0.5;
	setAttr ".wl[452].w[24]" 0.5;
	setAttr -s 3 ".wl[453].w";
	setAttr ".wl[453].w[21]" 0.25;
	setAttr ".wl[453].w[24]" 0.5;
	setAttr ".wl[453].w[58]" 0.25;
	setAttr ".wl[454].w[35]"  1;
	setAttr -s 2 ".wl[455].w";
	setAttr ".wl[455].w[35]" 0.7559;
	setAttr ".wl[455].w[62]" 0.2441;
	setAttr -s 2 ".wl[456].w";
	setAttr ".wl[456].w[35]" 0.5559;
	setAttr ".wl[456].w[62]" 0.4441;
	setAttr -s 2 ".wl[457].w[59:60]"  0.2 0.8;
	setAttr ".wl[458].w[60]"  1;
	setAttr -s 2 ".wl[459].w[59:60]"  0.7 0.3;
	setAttr ".wl[460].w[60]"  1;
	setAttr ".wl[461].w[0]"  1;
	setAttr -s 2 ".wl[462].w[59:60]"  0.7 0.3;
	setAttr ".wl[463].w[60]"  1;
	setAttr ".wl[464].w[60]"  1;
	setAttr ".wl[465].w[60]"  1;
	setAttr -s 2 ".wl[466].w[60:61]"  0.5 0.5;
	setAttr -s 2 ".wl[467].w[60:61]"  0.5 0.5;
	setAttr -s 2 ".wl[468].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[469].w[58:59]"  0.8 0.2;
	setAttr ".wl[470].w[60]"  1;
	setAttr -s 2 ".wl[471].w[59:60]"  0.7 0.3;
	setAttr -s 2 ".wl[472].w";
	setAttr ".wl[472].w[35]" 0.1;
	setAttr ".wl[472].w[60]" 0.9;
	setAttr -s 2 ".wl[473].w";
	setAttr ".wl[473].w[35]" 0.2;
	setAttr ".wl[473].w[60]" 0.8;
	setAttr ".wl[474].w[60]"  1;
	setAttr -s 2 ".wl[475].w";
	setAttr ".wl[475].w[35]" 0.2;
	setAttr ".wl[475].w[60]" 0.8;
	setAttr -s 2 ".wl[476].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[477].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[478].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[479].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[480].w";
	setAttr ".wl[480].w[35]" 0.8954;
	setAttr ".wl[480].w[62]" 0.1046;
	setAttr -s 2 ".wl[481].w";
	setAttr ".wl[481].w[35]" 0.3;
	setAttr ".wl[481].w[62]" 0.7;
	setAttr -s 3 ".wl[482].w";
	setAttr ".wl[482].w[35]" 0.2;
	setAttr ".wl[482].w[60:61]" 0.28 0.52;
	setAttr -s 2 ".wl[483].w";
	setAttr ".wl[483].w[35]" 0.693;
	setAttr ".wl[483].w[62]" 0.307;
	setAttr -s 3 ".wl[484].w";
	setAttr ".wl[484].w[35]" 0.25;
	setAttr ".wl[484].w[60:61]" 0.3 0.45;
	setAttr -s 2 ".wl[485].w[59:60]"  0.2 0.8;
	setAttr -s 2 ".wl[486].w[58:59]"  0.8 0.2;
	setAttr ".wl[487].w[35]"  1;
	setAttr -s 3 ".wl[488].w";
	setAttr ".wl[488].w[35]" 0.2;
	setAttr ".wl[488].w[60:61]" 0.28 0.52;
	setAttr -s 2 ".wl[489].w[60:61]"  0.35 0.65;
	setAttr -s 2 ".wl[490].w";
	setAttr ".wl[490].w[35]" 0.2;
	setAttr ".wl[490].w[60]" 0.8;
	setAttr -s 2 ".wl[491].w";
	setAttr ".wl[491].w[35]" 0.3;
	setAttr ".wl[491].w[62]" 0.7;
	setAttr -s 2 ".wl[492].w";
	setAttr ".wl[492].w[35]" 0.3;
	setAttr ".wl[492].w[62]" 0.7;
	setAttr -s 2 ".wl[493].w";
	setAttr ".wl[493].w[35]" 0.8434;
	setAttr ".wl[493].w[62]" 0.1566;
	setAttr ".wl[494].w[49]"  1;
	setAttr ".wl[495].w[49]"  1;
	setAttr ".wl[496].w[50]"  1;
	setAttr ".wl[497].w[2]"  1;
	setAttr -s 2 ".wl[498].w";
	setAttr ".wl[498].w[35]" 0.15;
	setAttr ".wl[498].w[62]" 0.85;
	setAttr -s 2 ".wl[499].w";
	setAttr ".wl[499].w[35]" 0.1;
	setAttr ".wl[499].w[62]" 0.9;
	setAttr ".wl[500].w[2]"  1;
	setAttr ".wl[501].w[50]"  1;
	setAttr ".wl[502].w[60]"  1;
	setAttr -s 2 ".wl[503].w[60:61]"  0.65 0.35;
	setAttr -s 2 ".wl[504].w[59:60]"  0.2 0.8;
	setAttr -s 3 ".wl[505].w";
	setAttr ".wl[505].w[35]" 0.2;
	setAttr ".wl[505].w[60:61]" 0.28 0.52;
	setAttr -s 2 ".wl[506].w[60:61]"  0.65 0.35;
	setAttr -s 2 ".wl[507].w";
	setAttr ".wl[507].w[35]" 0.6543;
	setAttr ".wl[507].w[62]" 0.3457;
	setAttr -s 3 ".wl[508].w";
	setAttr ".wl[508].w[35]" 0.0654;
	setAttr ".wl[508].w[62:63]" 0.4701 0.4645;
	setAttr ".wl[509].w[15]"  1;
	setAttr ".wl[510].w[15]"  1;
	setAttr ".wl[511].w[60]"  1;
	setAttr -s 2 ".wl[512].w[62:63]"  0.4979 0.5021;
	setAttr -s 2 ".wl[513].w[62:63]"  0.4805 0.5195;
	setAttr -s 2 ".wl[514].w";
	setAttr ".wl[514].w[35]" 0.1;
	setAttr ".wl[514].w[62]" 0.9;
	setAttr -s 2 ".wl[515].w[62:63]"  0.5 0.5;
	setAttr -s 2 ".wl[516].w";
	setAttr ".wl[516].w[35]" 0.5003;
	setAttr ".wl[516].w[62]" 0.4997;
	setAttr -s 2 ".wl[517].w[60:61]"  0.35 0.65;
	setAttr -s 2 ".wl[518].w[60:61]"  0.65 0.35;
	setAttr ".wl[519].w[62]"  1;
	setAttr -s 2 ".wl[520].w[60:61]"  0.35 0.65;
	setAttr -s 2 ".wl[521].w[60:61]"  0.65 0.35;
	setAttr ".wl[522].w[62]"  1;
	setAttr -s 2 ".wl[523].w";
	setAttr ".wl[523].w[35]" 0.15;
	setAttr ".wl[523].w[62]" 0.85;
	setAttr -s 2 ".wl[524].w";
	setAttr ".wl[524].w[35]" 0.15;
	setAttr ".wl[524].w[62]" 0.85;
	setAttr -s 2 ".wl[525].w[62:63]"  0.5 0.5;
	setAttr ".wl[526].w[62]"  1;
	setAttr ".wl[527].w[62]"  1;
	setAttr -s 2 ".wl[528].w";
	setAttr ".wl[528].w[35]" 0.15;
	setAttr ".wl[528].w[62]" 0.85;
	setAttr ".wl[529].w[62]"  1;
	setAttr ".wl[530].w[62]"  1;
	setAttr -s 2 ".wl[531].w[60:61]"  0.65 0.35;
	setAttr ".wl[532].w[15]"  1;
	setAttr -s 3 ".wl[533].w";
	setAttr ".wl[533].w[1]" 0.3214;
	setAttr ".wl[533].w[21]" 0.3393;
	setAttr ".wl[533].w[58]" 0.3393;
	setAttr ".wl[534].w[1]"  1;
	setAttr ".wl[535].w[1]"  1;
	setAttr ".wl[536].w[1]"  1;
	setAttr ".wl[537].w[1]"  1;
	setAttr -s 2 ".wl[538].w[58:59]"  0.8 0.2;
	setAttr -s 2 ".wl[539].w";
	setAttr ".wl[539].w[1]" 0.75;
	setAttr ".wl[539].w[58]" 0.25;
	setAttr -s 3 ".wl[540].w";
	setAttr ".wl[540].w[1]" 0.629;
	setAttr ".wl[540].w[21]" 0.1839;
	setAttr ".wl[540].w[58]" 0.1871;
	setAttr ".wl[541].w[1]"  1;
	setAttr ".wl[542].w[1]"  1;
	setAttr -s 2 ".wl[543].w";
	setAttr ".wl[543].w[1]" 0.85;
	setAttr ".wl[543].w[21]" 0.15;
	setAttr ".wl[544].w[1]"  1;
	setAttr -s 2 ".wl[545].w";
	setAttr ".wl[545].w[1]" 0.85;
	setAttr ".wl[545].w[21]" 0.15;
	setAttr ".wl[546].w[1]"  1;
	setAttr -s 2 ".wl[547].w";
	setAttr ".wl[547].w[1]" 0.85;
	setAttr ".wl[547].w[21]" 0.15;
	setAttr ".wl[548].w[1]"  1;
	setAttr ".wl[549].w[2]"  1;
	setAttr ".wl[550].w[2]"  1;
	setAttr ".wl[551].w[2]"  1;
	setAttr ".wl[552].w[2]"  1;
	setAttr ".wl[553].w[2]"  1;
	setAttr ".wl[554].w[2]"  1;
	setAttr ".wl[555].w[2]"  1;
	setAttr ".wl[556].w[2]"  1;
	setAttr ".wl[557].w[2]"  1;
	setAttr ".wl[558].w[2]"  1;
	setAttr ".wl[559].w[2]"  1;
	setAttr ".wl[560].w[2]"  1;
	setAttr ".wl[561].w[15]"  1;
	setAttr ".wl[562].w[15]"  1;
	setAttr ".wl[563].w[15]"  1;
	setAttr ".wl[564].w[15]"  1;
	setAttr ".wl[565].w[15]"  1;
	setAttr ".wl[566].w[15]"  1;
	setAttr ".wl[567].w[15]"  1;
	setAttr -s 2 ".wl[568].w";
	setAttr ".wl[568].w[31]" 0.2;
	setAttr ".wl[568].w[68]" 0.8;
	setAttr -s 2 ".wl[569].w[31:32]"  0.75 0.25;
	setAttr -s 2 ".wl[570].w[31:32]"  0.25 0.75;
	setAttr -s 2 ".wl[571].w";
	setAttr ".wl[571].w[32]" 0.2;
	setAttr ".wl[571].w[68]" 0.8;
	setAttr ".wl[572].w[32]"  1;
	setAttr -s 2 ".wl[573].w";
	setAttr ".wl[573].w[32]" 0.4;
	setAttr ".wl[573].w[68]" 0.6;
	setAttr ".wl[574].w[31]"  1;
	setAttr -s 2 ".wl[575].w[31:32]"  0.5 0.5;
	setAttr ".wl[576].w[32]"  1;
	setAttr ".wl[577].w[31]"  1;
	setAttr -s 2 ".wl[578].w[31:32]"  0.75 0.25;
	setAttr ".wl[579].w[68]"  1;
	setAttr ".wl[580].w[68]"  1;
	setAttr ".wl[581].w[32]"  1;
	setAttr ".wl[582].w[32]"  1;
	setAttr ".wl[583].w[68]"  1;
	setAttr ".wl[584].w[68]"  1;
	setAttr -s 2 ".wl[585].w";
	setAttr ".wl[585].w[32]" 0.4;
	setAttr ".wl[585].w[68]" 0.6;
	setAttr -s 2 ".wl[586].w[31:32]"  0.25 0.75;
	setAttr ".wl[587].w[31]"  1;
	setAttr -s 2 ".wl[588].w";
	setAttr ".wl[588].w[31]" 0.5;
	setAttr ".wl[588].w[68]" 0.5;
	setAttr -s 2 ".wl[589].w";
	setAttr ".wl[589].w[31]" 0.2;
	setAttr ".wl[589].w[68]" 0.8;
	setAttr -s 2 ".wl[590].w";
	setAttr ".wl[590].w[31]" 0.5;
	setAttr ".wl[590].w[68]" 0.5;
	setAttr ".wl[591].w[31]"  1;
	setAttr -s 2 ".wl[592].w[31:32]"  0.5 0.5;
	setAttr ".wl[593].w[68]"  1;
	setAttr ".wl[594].w[68]"  1;
	setAttr ".wl[595].w[68]"  1;
	setAttr ".wl[596].w[2]"  1;
	setAttr ".wl[597].w[2]"  1;
	setAttr -s 2 ".wl[598].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[599].w[2:3]"  0.5 0.5;
	setAttr ".wl[600].w[2]"  1;
	setAttr -s 2 ".wl[601].w[2:3]"  0.5 0.5;
	setAttr ".wl[602].w[2]"  1;
	setAttr -s 2 ".wl[603].w[2:3]"  0.5 0.5;
	setAttr ".wl[604].w[2]"  1;
	setAttr -s 2 ".wl[605].w[2:3]"  0.5 0.5;
	setAttr ".wl[606].w[2]"  1;
	setAttr -s 2 ".wl[607].w[2:3]"  0.5 0.5;
	setAttr ".wl[608].w[2]"  1;
	setAttr -s 2 ".wl[609].w[2:3]"  0.5 0.5;
	setAttr ".wl[610].w[2]"  1;
	setAttr -s 2 ".wl[611].w[2:3]"  0.5 0.5;
	setAttr ".wl[612].w[2]"  1;
	setAttr -s 2 ".wl[613].w[2:3]"  0.5 0.5;
	setAttr ".wl[614].w[2]"  1;
	setAttr -s 2 ".wl[615].w[2:3]"  0.5 0.5;
	setAttr ".wl[616].w[48]"  1;
	setAttr ".wl[617].w[48]"  1;
	setAttr ".wl[618].w[48]"  1;
	setAttr ".wl[619].w[48]"  1;
	setAttr ".wl[620].w[48]"  1;
	setAttr ".wl[621].w[48]"  1;
	setAttr ".wl[622].w[48]"  1;
	setAttr ".wl[623].w[48]"  1;
	setAttr ".wl[624].w[48]"  1;
	setAttr ".wl[625].w[48]"  1;
	setAttr ".wl[626].w[48]"  1;
	setAttr ".wl[627].w[3]"  1;
	setAttr ".wl[628].w[3]"  1;
	setAttr ".wl[629].w[3]"  1;
	setAttr ".wl[630].w[3]"  1;
	setAttr ".wl[631].w[3]"  1;
	setAttr ".wl[632].w[3]"  1;
	setAttr ".wl[633].w[3]"  1;
	setAttr ".wl[634].w[3]"  1;
	setAttr ".wl[635].w[3]"  1;
	setAttr ".wl[636].w[3]"  1;
	setAttr ".wl[637].w[3]"  1;
	setAttr ".wl[638].w[3]"  1;
	setAttr ".wl[639].w[3]"  1;
	setAttr ".wl[640].w[3]"  1;
	setAttr ".wl[641].w[3]"  1;
	setAttr ".wl[642].w[3]"  1;
	setAttr ".wl[643].w[3]"  1;
	setAttr ".wl[644].w[3]"  1;
	setAttr ".wl[645].w[3]"  1;
	setAttr ".wl[646].w[3]"  1;
	setAttr ".wl[647].w[3]"  1;
	setAttr ".wl[648].w[3]"  1;
	setAttr ".wl[649].w[3]"  1;
	setAttr ".wl[650].w[3]"  1;
	setAttr ".wl[651].w[3]"  1;
	setAttr ".wl[652].w[3]"  1;
	setAttr ".wl[653].w[3]"  1;
	setAttr ".wl[654].w[3]"  1;
	setAttr ".wl[655].w[3]"  1;
	setAttr ".wl[656].w[3]"  1;
	setAttr ".wl[657].w[3]"  1;
	setAttr ".wl[658].w[3]"  1;
	setAttr ".wl[659].w[3]"  1;
	setAttr ".wl[660].w[3]"  1;
	setAttr ".wl[661].w[3]"  1;
	setAttr ".wl[662].w[3]"  1;
	setAttr ".wl[663].w[24]"  1;
	setAttr -s 2 ".wl[664].w";
	setAttr ".wl[664].w[0]" 0.7;
	setAttr ".wl[664].w[24]" 0.3;
	setAttr ".wl[665].w[0]"  1;
	setAttr ".wl[666].w[23]"  1;
	setAttr ".wl[667].w[23]"  1;
	setAttr -s 2 ".wl[668].w[22:23]"  0.3 0.7;
	setAttr ".wl[669].w[22]"  1;
	setAttr ".wl[670].w[22]"  1;
	setAttr -s 2 ".wl[671].w";
	setAttr ".wl[671].w[20]" 0.5;
	setAttr ".wl[671].w[22]" 0.5;
	setAttr -s 2 ".wl[672].w";
	setAttr ".wl[672].w[20]" 0.35;
	setAttr ".wl[672].w[58]" 0.65;
	setAttr -s 2 ".wl[673].w";
	setAttr ".wl[673].w[20]" 0.6;
	setAttr ".wl[673].w[58]" 0.4;
	setAttr ".wl[674].w[24]"  1;
	setAttr -s 2 ".wl[675].w";
	setAttr ".wl[675].w[21]" 0.6;
	setAttr ".wl[675].w[58]" 0.4;
	setAttr -s 2 ".wl[676].w";
	setAttr ".wl[676].w[21]" 0.35;
	setAttr ".wl[676].w[58]" 0.65;
	setAttr -s 2 ".wl[677].w";
	setAttr ".wl[677].w[21]" 0.5;
	setAttr ".wl[677].w[24]" 0.5;
	setAttr -s 2 ".wl[678].w";
	setAttr ".wl[678].w[32]" 0.4;
	setAttr ".wl[678].w[68]" 0.6;
	setAttr -s 2 ".wl[679].w";
	setAttr ".wl[679].w[32]" 0.2;
	setAttr ".wl[679].w[68]" 0.8;
	setAttr -s 2 ".wl[680].w";
	setAttr ".wl[680].w[31]" 0.2;
	setAttr ".wl[680].w[68]" 0.8;
	setAttr -s 2 ".wl[681].w";
	setAttr ".wl[681].w[31]" 0.5;
	setAttr ".wl[681].w[68]" 0.5;
	setAttr -s 2 ".wl[682].w";
	setAttr ".wl[682].w[31]" 0.5;
	setAttr ".wl[682].w[68]" 0.5;
	setAttr -s 2 ".wl[683].w";
	setAttr ".wl[683].w[31]" 0.2;
	setAttr ".wl[683].w[68]" 0.8;
	setAttr -s 2 ".wl[684].w";
	setAttr ".wl[684].w[32]" 0.4;
	setAttr ".wl[684].w[68]" 0.6;
	setAttr ".wl[685].w[67]"  1;
	setAttr ".wl[686].w[67]"  1;
	setAttr ".wl[687].w[67]"  1;
	setAttr ".wl[688].w[67]"  1;
	setAttr ".wl[689].w[67]"  1;
	setAttr -s 2 ".wl[690].w[35:36]"  0.7 0.3;
	setAttr -s 2 ".wl[691].w[35:36]"  0.5 0.5;
	setAttr -s 2 ".wl[692].w[35:36]"  0.6999 0.3001;
	setAttr -s 2 ".wl[693].w[35:36]"  0.7998 0.2002;
	setAttr -s 2 ".wl[694].w";
	setAttr ".wl[694].w[13]" 0.5;
	setAttr ".wl[694].w[35]" 0.5;
	setAttr -s 2 ".wl[695].w[35:36]"  0.8 0.2;
	setAttr -s 2 ".wl[696].w[35:36]"  0.3 0.7;
	setAttr ".wl[697].w[37]"  1;
	setAttr ".wl[698].w[37]"  1;
	setAttr ".wl[699].w[37]"  1;
	setAttr ".wl[700].w[37]"  1;
	setAttr ".wl[701].w[11]"  1;
	setAttr ".wl[702].w[11]"  1;
	setAttr -s 2 ".wl[703].w[10:11]"  0.25 0.75;
	setAttr ".wl[704].w[37]"  1;
	setAttr -s 2 ".wl[705].w[10:11]"  0.75 0.25;
	setAttr ".wl[706].w[37]"  1;
	setAttr ".wl[707].w[10]"  1;
	setAttr -s 2 ".wl[708].w";
	setAttr ".wl[708].w[10]" 0.2;
	setAttr ".wl[708].w[37]" 0.8;
	setAttr ".wl[709].w[10]"  1;
	setAttr -s 2 ".wl[710].w";
	setAttr ".wl[710].w[10]" 0.2;
	setAttr ".wl[710].w[37]" 0.8;
	setAttr -s 2 ".wl[711].w[10:11]"  0.5 0.5;
	setAttr ".wl[712].w[37]"  1;
	setAttr -s 2 ".wl[713].w[36:37]"  0.5 0.5;
	setAttr -s 2 ".wl[714].w[36:37]"  0.4998 0.5002;
	setAttr ".wl[715].w[36]"  1;
	setAttr ".wl[716].w[36]"  1;
	setAttr -s 2 ".wl[717].w[36:37]"  0.4998 0.5002;
	setAttr ".wl[718].w[36]"  1;
	setAttr -s 2 ".wl[719].w[36:37]"  0.5 0.5;
	setAttr ".wl[720].w[36]"  1;
	setAttr -s 2 ".wl[721].w[36:37]"  0.4998 0.5002;
	setAttr ".wl[722].w[36]"  1;
	setAttr -s 2 ".wl[723].w[36:37]"  0.5 0.5;
	setAttr ".wl[724].w[36]"  1;
	setAttr -s 2 ".wl[725].w[36:37]"  0.5 0.5;
	setAttr ".wl[726].w[36]"  1;
	setAttr ".wl[727].w[36]"  1;
	setAttr ".wl[728].w[36]"  1;
	setAttr ".wl[729].w[36]"  1;
	setAttr -s 2 ".wl[730].w";
	setAttr ".wl[730].w[12]" 0.8;
	setAttr ".wl[730].w[35]" 0.2;
	setAttr -s 2 ".wl[731].w";
	setAttr ".wl[731].w[12]" 0.625;
	setAttr ".wl[731].w[35]" 0.375;
	setAttr -s 2 ".wl[732].w";
	setAttr ".wl[732].w[12]" 0.8;
	setAttr ".wl[732].w[35]" 0.2;
	setAttr ".wl[733].w[37]"  1;
	setAttr ".wl[734].w[37]"  1;
	setAttr ".wl[735].w[37]"  1;
	setAttr ".wl[736].w[37]"  1;
	setAttr ".wl[737].w[37]"  1;
	setAttr -s 2 ".wl[738].w";
	setAttr ".wl[738].w[10]" 0.2;
	setAttr ".wl[738].w[37]" 0.8;
	setAttr -s 2 ".wl[739].w[10:11]"  0.75 0.25;
	setAttr -s 2 ".wl[740].w[10:11]"  0.25 0.75;
	setAttr -s 2 ".wl[741].w";
	setAttr ".wl[741].w[11]" 0.2;
	setAttr ".wl[741].w[37]" 0.8;
	setAttr ".wl[742].w[11]"  1;
	setAttr -s 2 ".wl[743].w";
	setAttr ".wl[743].w[11]" 0.4;
	setAttr ".wl[743].w[37]" 0.6;
	setAttr ".wl[744].w[10]"  1;
	setAttr -s 2 ".wl[745].w[10:11]"  0.5 0.5;
	setAttr ".wl[746].w[11]"  1;
	setAttr ".wl[747].w[10]"  1;
	setAttr -s 2 ".wl[748].w[10:11]"  0.75 0.25;
	setAttr ".wl[749].w[37]"  1;
	setAttr ".wl[750].w[37]"  1;
	setAttr ".wl[751].w[11]"  1;
	setAttr ".wl[752].w[11]"  1;
	setAttr ".wl[753].w[37]"  1;
	setAttr ".wl[754].w[37]"  1;
	setAttr -s 2 ".wl[755].w";
	setAttr ".wl[755].w[11]" 0.4;
	setAttr ".wl[755].w[37]" 0.6;
	setAttr -s 2 ".wl[756].w[10:11]"  0.25 0.75;
	setAttr ".wl[757].w[10]"  1;
	setAttr -s 2 ".wl[758].w";
	setAttr ".wl[758].w[10]" 0.5;
	setAttr ".wl[758].w[37]" 0.5;
	setAttr -s 2 ".wl[759].w";
	setAttr ".wl[759].w[10]" 0.2;
	setAttr ".wl[759].w[37]" 0.8;
	setAttr -s 2 ".wl[760].w";
	setAttr ".wl[760].w[10]" 0.5;
	setAttr ".wl[760].w[37]" 0.5;
	setAttr ".wl[761].w[10]"  1;
	setAttr -s 2 ".wl[762].w[10:11]"  0.5 0.5;
	setAttr ".wl[763].w[37]"  1;
	setAttr ".wl[764].w[37]"  1;
	setAttr ".wl[765].w[37]"  1;
	setAttr -s 2 ".wl[766].w";
	setAttr ".wl[766].w[11]" 0.4;
	setAttr ".wl[766].w[37]" 0.6;
	setAttr -s 2 ".wl[767].w";
	setAttr ".wl[767].w[11]" 0.2;
	setAttr ".wl[767].w[37]" 0.8;
	setAttr -s 2 ".wl[768].w";
	setAttr ".wl[768].w[10]" 0.2;
	setAttr ".wl[768].w[37]" 0.8;
	setAttr -s 2 ".wl[769].w";
	setAttr ".wl[769].w[10]" 0.5;
	setAttr ".wl[769].w[37]" 0.5;
	setAttr -s 2 ".wl[770].w";
	setAttr ".wl[770].w[10]" 0.5;
	setAttr ".wl[770].w[37]" 0.5;
	setAttr -s 2 ".wl[771].w";
	setAttr ".wl[771].w[10]" 0.2;
	setAttr ".wl[771].w[37]" 0.8;
	setAttr -s 2 ".wl[772].w";
	setAttr ".wl[772].w[11]" 0.4;
	setAttr ".wl[772].w[37]" 0.6;
	setAttr -s 2 ".wl[773].w";
	setAttr ".wl[773].w[12]" 0.35;
	setAttr ".wl[773].w[36]" 0.65;
	setAttr -s 2 ".wl[774].w";
	setAttr ".wl[774].w[12]" 0.35;
	setAttr ".wl[774].w[36]" 0.65;
	setAttr -s 2 ".wl[775].w";
	setAttr ".wl[775].w[12]" 0.35;
	setAttr ".wl[775].w[36]" 0.65;
	setAttr ".wl[776].w[36]"  1;
	setAttr ".wl[777].w[36]"  1;
	setAttr ".wl[778].w[36]"  1;
	setAttr ".wl[779].w[36]"  1;
	setAttr ".wl[780].w[36]"  1;
	setAttr ".wl[781].w[36]"  1;
	setAttr -s 2 ".wl[782].w[59:60]"  0.7 0.3;
	setAttr -s 2 ".wl[783].w[58:59]"  0.8 0.2;
	setAttr ".wl[784].w[0]"  1;
	setAttr ".wl[785].w[0]"  1;
	setAttr ".wl[786].w[0]"  1;
	setAttr -s 2 ".wl[787].w[59:60]"  0.7 0.3;
	setAttr -s 2 ".wl[788].w[58:59]"  0.8 0.2;
	setAttr ".wl[789].w[23]"  1;
	setAttr ".wl[790].w[23]"  1;
	setAttr ".wl[791].w[23]"  1;
	setAttr ".wl[792].w[23]"  1;
	setAttr ".wl[793].w[0]"  1;
	setAttr -s 2 ".wl[794].w[59:60]"  0.4 0.6;
	setAttr -s 2 ".wl[795].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[796].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[797].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[798].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[799].w[59:60]"  0.3 0.7;
	setAttr -s 2 ".wl[800].w[59:60]"  0.3 0.7;
	setAttr -s 2 ".wl[801].w[59:60]"  0.3 0.7;
	setAttr -s 2 ".wl[802].w[59:60]"  0.3 0.7;
	setAttr -s 2 ".wl[803].w[59:60]"  0.3 0.7;
	setAttr -s 2 ".wl[804].w[59:60]"  0.3 0.7;
	setAttr -s 2 ".wl[805].w[59:60]"  0.3 0.7;
	setAttr -s 2 ".wl[806].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[807].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[808].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[809].w[59:60]"  0.5 0.5;
	setAttr -s 2 ".wl[810].w";
	setAttr ".wl[810].w[61]" 0.5;
	setAttr ".wl[810].w[66]" 0.5;
	setAttr -s 2 ".wl[811].w";
	setAttr ".wl[811].w[61]" 0.7;
	setAttr ".wl[811].w[66]" 0.3;
	setAttr ".wl[812].w[61]"  1;
	setAttr ".wl[813].w[61]"  1;
	setAttr ".wl[814].w[61]"  1;
	setAttr -s 2 ".wl[815].w";
	setAttr ".wl[815].w[35]" 0.3;
	setAttr ".wl[815].w[61]" 0.7;
	setAttr -s 2 ".wl[816].w";
	setAttr ".wl[816].w[35]" 0.5;
	setAttr ".wl[816].w[61]" 0.5;
	setAttr -s 3 ".wl[817].w";
	setAttr ".wl[817].w[13]" 0.24;
	setAttr ".wl[817].w[35]" 0.2;
	setAttr ".wl[817].w[60]" 0.56;
	setAttr -s 3 ".wl[818].w";
	setAttr ".wl[818].w[34]" 0.24;
	setAttr ".wl[818].w[60]" 0.56;
	setAttr ".wl[818].w[66]" 0.2;
	setAttr ".wl[819].w[0]"  1;
	setAttr ".wl[820].w[0]"  1;
	setAttr ".wl[821].w[23]"  1;
	setAttr ".wl[822].w[23]"  1;
	setAttr -s 2 ".wl[823].w";
	setAttr ".wl[823].w[33]" 0.35;
	setAttr ".wl[823].w[67]" 0.65;
	setAttr -s 2 ".wl[824].w";
	setAttr ".wl[824].w[33]" 0.35;
	setAttr ".wl[824].w[67]" 0.65;
	setAttr ".wl[825].w[67]"  1;
	setAttr ".wl[826].w[67]"  1;
	setAttr ".wl[827].w[67]"  1;
	setAttr ".wl[828].w[67]"  1;
	setAttr -s 2 ".wl[829].w";
	setAttr ".wl[829].w[33]" 0.35;
	setAttr ".wl[829].w[67]" 0.65;
	setAttr ".wl[830].w[36]"  1;
	setAttr ".wl[831].w[36]"  1;
	setAttr ".wl[832].w[36]"  1;
	setAttr -s 2 ".wl[833].w[31:32]"  0.75 0.25;
	setAttr -s 2 ".wl[834].w[31:32]"  0.25 0.75;
	setAttr ".wl[835].w[32]"  1;
	setAttr ".wl[836].w[32]"  1;
	setAttr -s 2 ".wl[837].w[31:32]"  0.5 0.5;
	setAttr ".wl[838].w[31]"  1;
	setAttr ".wl[839].w[31]"  1;
	setAttr -s 2 ".wl[840].w[10:11]"  0.75 0.25;
	setAttr ".wl[841].w[10]"  1;
	setAttr ".wl[842].w[10]"  1;
	setAttr -s 2 ".wl[843].w[10:11]"  0.5 0.5;
	setAttr ".wl[844].w[11]"  1;
	setAttr ".wl[845].w[11]"  1;
	setAttr -s 2 ".wl[846].w[10:11]"  0.25 0.75;
	setAttr -s 72 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.97522204163077053 0.1085301098057663 0.19277755259121823 0
		 -0.10104545716020875 0.99371004670827157 -0.048271716960641843 0 -0.19680392553197718 0.027596346435573994 0.98005441510082025 0
		 7.3445831907846433 -44.97591127095604 7.6408756588225817 1;
	setAttr ".pm[1]" -type "matrix" 0.96057560888731253 -0.23598877037581895 0.14698231140949641 0
		 -0.16334361100276026 -0.90685333909889976 -0.38850467964974994 0 0.22497414152597203 0.3491794977109694 -0.90964845628570556 0
		 11.920672252778733 38.302643539876662 17.65114943887156 1;
	setAttr ".pm[2]" -type "matrix" 0.96057560888731253 -0.0087136334073519683 0.27788229919088303 0
		 -0.16334361100276026 -0.82649522272413189 0.53872489413314339 0 0.224974141525972 -0.56287629138828532 -0.79533446815639885 0
		 11.920714441677591 23.564930720480014 -3.5151982276759774 1;
	setAttr ".pm[3]" -type "matrix" 0.95902714300123004 -0.27633425893522451 0.062500530602698057 0
		 -0.060001777595216896 -0.41370475506772025 -0.90843170481867885 0 0.27688756864892405 0.86746051954718817 -0.41333463604518977 0
		 11.159200613046355 2.6517668552377489 7.3055019261545837 1;
	setAttr ".pm[4]" -type "matrix" 0.47072274342265474 -0.35869300642266949 0.80607656334129718 0
		 0.71127504653143725 -0.38628912697856754 -0.58725507112313458 0 0.52202289892910936 0.84977646326643019 0.073294307228091937 0
		 -40.995027573514008 2.0866945265972738 62.710828592457858 1;
	setAttr ".pm[5]" -type "matrix" 0.41138114154404765 -0.34885413952054339 0.84206077317572325 0
		 0.7232740683071992 -0.43725114269359039 -0.53449608074101151 0 0.55465320561254206 0.82892232902276808 0.072440278514102285 0
		 -42.876253021877872 6.1227853885384951 60.243627507920557 1;
	setAttr ".pm[6]" -type "matrix" 0.47072274342265463 0.26669702028497577 0.84100701435586411 0
		 0.71127504653143714 -0.67870631926069269 -0.1828812193127127 0 0.52202289892910947 0.68427365254459283 -0.50917743609367705 0
		 -40.995006524283362 40.533172925812146 46.974828316693028 1;
	setAttr ".pm[7]" -type "matrix" 0.47072274342265474 0.064237176014089126 0.87993959113247344 0
		 0.71127504653143714 -0.61773338137602829 -0.33540017548510642 0 0.52202289892910936 0.78375956437639305 -0.33647145234354631 0
		 -40.995037867904301 29.948145439342944 55.099085786542972 1;
	setAttr ".pm[8]" -type "matrix" 0.41138114154404765 0.029340670902549729 0.91099104354153992 0
		 0.7232740683071992 -0.6187234898551851 -0.30668528692419078 0 0.55465320561254206 0.78506074168334805 -0.27575252196729283 0
		 -42.876217524983666 29.105651585690467 52.953805555729069 1;
	setAttr ".pm[9]" -type "matrix" 0.41138114154404765 0.31619257712210502 0.85486128146898632 0
		 0.72327406830719931 -0.68398587297699487 -0.095068121272331566 0 0.55465320561254194 0.65740822913983932 -0.51007278084892094 0
		 -42.876210397818276 43.365844668187449 41.353330156501471 1;
	setAttr ".pm[10]" -type "matrix" 0.63378257793418236 -0.47608577681559017 -0.609640859048176 0
		 -0.6616178679915713 0.074652149103754631 -0.74611584448293178 0 0.40072614172448218 0.87622450875793634 -0.26767362513053727 0
		 59.895547762199861 -29.508543099256553 36.922964131250247 1;
	setAttr ".pm[11]" -type "matrix" 0.50870126735680643 -0.4760857768154102 -0.71733210837355288 0
		 -0.78938431882642579 0.074652149103858395 -0.60934346129675909 0 0.34365013863014593 0.87622450875802538 -0.33783900377434034 0
		 60.447998256837778 -29.50854728944136 25.42764781956803 1;
	setAttr ".pm[12]" -type "matrix" 0.049440737522716237 -0.96173869926074951 -0.26947038393384015 0
		 -0.99214165528792109 -0.016242958724071818 -0.12406088075792474 0 0.11493715376567236 0.27348645420958145 -0.95498408889788144 0
		 70.184504957563405 -7.9731683156252133 2.3066440400704722 1;
	setAttr ".pm[13]" -type "matrix" 0.049440737522716244 -0.9666400481736368 0.25132176734234274 0
		 -0.99214165528792098 -0.076489012959995259 -0.099017002272082502 0 0.11493715376567237 -0.2444513206412974 -0.96282553067571475 0
		 63.495801658994658 -5.4956830031233608 5.3653109114607167 1;
	setAttr ".pm[14]" -type "matrix" 0.9605756088873123 -0.23598877037581881 0.14698231140949714 0
		 0.16334361100276054 0.90685333909890065 0.38850467964974711 0 -0.22497414152597217 -0.34917949771096646 0.90964845628570623 0
		 -11.920677489069167 -38.302648949734248 -17.651152810548997 1;
	setAttr ".pm[15]" -type "matrix" 0.9605756088873123 -0.0087136334073508979 0.27788229919088342 0
		 0.16334361100276054 0.82649522272412945 -0.53872489413314684 0 -0.22497414152597214 0.56287629138828876 0.7953344681563963 0
		 -11.920677489069169 -23.564951246984077 3.5152218983454016 1;
	setAttr ".pm[16]" -type "matrix" 0.95902714300123004 -0.27633425893522418 0.06250053060269796 0
		 0.060001777595216736 0.41370475506771992 0.90843170481867896 0 -0.27688756864892367 -0.86746051954718806 0.41333463604518933 0
		 -11.15919678188135 -2.6517728708373007 -7.3055024909580499 1;
	setAttr ".pm[17]" -type "matrix" 0.95902714300123004 -0.27803994304974616 -0.054412581778410553 0
		 0.060001777595216729 0.011625927992065563 0.99813056484797458 0 -0.27688756864892372 -0.96049915557860654 0.027832471332426202 0
		 -11.159196781881349 6.9929723669940591 -4.8987684520590493 1;
	setAttr ".pm[18]" -type "matrix" 0.95902714300123004 -0.22617187912888567 0.17062596542791203 0
		 0.060001777595216729 0.75073116415809071 0.65787727263316498 0 -0.27688756864892372 -0.62068429998925057 0.73354227831430474 0
		 -10.911595225454475 -2.9658856630530246 -8.2898272661226411 1;
	setAttr ".pm[19]" -type "matrix" 0.95902714300123004 -0.22617187912888567 0.17062596542791203 0
		 0.060001777595216729 0.75073116415809071 0.65787727263316498 0 -0.27688756864892372 -0.62068429998925057 0.73354227831430474 0
		 -10.911595225454477 -7.6799906221407284 -3.7290142623384996 1;
	setAttr ".pm[20]" -type "matrix" 1 0 0 0 0 0.99999999999999978 0 0 0 0 0.99999999999999978 0
		 -4.2951831817626953 -43.048092414295311 -5.2513569892849556 1;
	setAttr ".pm[21]" -type "matrix" 1 0 0 0 0 -0.99999999999999978 9.7821056810332105e-015 0
		 0 -9.7821056810332105e-015 -0.99999999999999978 0 4.2951798439025879 43.048100012078514 5.2513599332282199 1;
	setAttr ".pm[22]" -type "matrix" -0.36431148677367847 -0.15345463620951602 -0.91854712194342913 0
		 0.12341819896885381 0.96967507475575865 -0.21094595886316037 0 0.92306288451439544 -0.19021546736061931 -0.33432467334724919 0
		 -3.2233645298520068 -44.675224325332415 17.518276364459016 1;
	setAttr ".pm[23]" -type "matrix" 0.97522204163322102 -0.10853011150385998 -0.19277755162282717 0
		 0.10104546029249886 0.99371004672219865 -0.048271710117232136 0 0.19680392391161594 0.027596339255864594 0.9800544156283697 0
		 -7.3445829470803581 -44.975911343134776 7.6408752817460233 1;
	setAttr ".pm[24]" -type "matrix" -0.3643114880099505 0.15345463339908022 0.91854712192262056 0
		 -0.12341819722350725 0.9696750757023378 -0.21094595553308143 0 -0.9230628842598293 -0.19021546480246865 -0.33432467550557116 0
		 3.2233644370474881 -44.675224393724406 17.51827620712136 1;
	setAttr ".pm[25]" -type "matrix" 0.47072274342265458 -0.35869300642266955 0.80607656334129751 0
		 -0.71127504653143747 0.38628912697856793 0.58725507112313435 0 -0.52202289892910958 -0.84977646326643008 -0.073294307228091826 0
		 40.995023458578146 -2.0866397932432861 -62.71077199670718 1;
	setAttr ".pm[26]" -type "matrix" 0.47072274342265452 0.064237176014089153 0.87993959113247366 0
		 -0.71127504653143747 0.61773338137602862 0.33540017548510603 0 -0.52202289892910958 -0.78375956437639283 0.33647145234354636 0
		 40.995023458578153 -29.948123043087865 -55.099071454966143 1;
	setAttr ".pm[27]" -type "matrix" 0.47072274342265458 0.26669702028497505 0.84100701435586478 0
		 -0.71127504653143747 0.67870631926069269 0.18288121931271295 0 -0.52202289892910969 -0.68427365254459294 0.50917743609367638 0
		 40.995023458578146 -40.533109319014898 -46.974804394344417 1;
	setAttr ".pm[28]" -type "matrix" 0.41138114154404731 -0.34885413952054367 0.8420607731757237 0
		 -0.72327406830719987 0.43725114269359067 0.5344960807410114 0 -0.55465320561254206 -0.82892232902276808 -0.072440278514102618 0
		 42.876236943091826 -6.1227410734777639 -60.243559576776605 1;
	setAttr ".pm[29]" -type "matrix" 0.41138114154404726 0.029340670902549874 0.91099104354154026 0
		 -0.72327406830719998 0.61872348985518522 0.30668528692419028 0 -0.55465320561254194 -0.78506074168334794 0.27575252196729272 0
		 42.876236943091818 -29.105557806557492 -52.953767202850528 1;
	setAttr ".pm[30]" -type "matrix" 0.41138114154404726 0.31619257712210563 0.85486128146898643 0
		 -0.72327406830719987 0.68398587297699498 0.095068121272330774 0 -0.55465320561254206 -0.65740822913983921 0.51007278084892116 0
		 42.876236943091818 -43.365772299890622 -41.353335647583805 1;
	setAttr ".pm[31]" -type "matrix" 0.63378257793418258 -0.47608577681572273 -0.60964085904807241 0
		 0.6616178679915713 -0.074652149103592011 0.74611584448294843 0 -0.40072614172448179 -0.87622450875787783 0.26767362513072795 0
		 -59.895509107966504 29.50855138167887 -36.922936632501575 1;
	setAttr ".pm[32]" -type "matrix" 0.50870126735680621 -0.47608577681572228 -0.7173321083733456 0
		 0.78938431882642623 -0.074652149103592608 0.60934346129679118 0 -0.34365013863014521 -0.87622450875787772 0.33783900377472209 0
		 -60.447971576292275 29.508551381678913 -25.427598052242228 1;
	setAttr ".pm[33]" -type "matrix" 0.04944073752271641 -0.96173869926074984 -0.26947038393383949 0
		 0.9921416552879212 0.016242958724072373 0.12406088075792457 0 -0.11493715376567203 -0.27348645420958051 0.95498408889788144 0
		 -70.184467346117515 7.9731903606140886 -2.3066371255809455 1;
	setAttr ".pm[34]" -type "matrix" 0.049440737522716403 -0.96664004817363691 0.25132176734234291 0
		 0.99214165528792109 0.076489012959995606 0.099017002272082141 0 -0.11493715376567201 0.24445132064129765 0.9628255306757143 0
		 -63.495788843081009 5.4956782577585708 -5.3653164932549844 1;
	setAttr ".pm[35]" -type "matrix" 0.24968213650014237 -0.94620392863969582 0.20580805654670081 0
		 -0.96821650385656288 -0.24072634944739385 0.067879498683369219 0 -0.014684426188946886 -0.21621505523098264 -0.97623532896477616 0
		 67.202358168186251 15.645371609701042 -5.4083270685803768 1;
	setAttr ".pm[36]" -type "matrix" 0.049440737522716237 -0.96173869926074951 -0.26947038393384015 0
		 -0.99214165528792109 -0.016242958724071818 -0.12406088075792474 0 0.11493715376567236 0.27348645420958145 -0.95498408889788144 0
		 67.218745680219641 -7.5569211265802601 2.8272935924157472 1;
	setAttr ".pm[37]" -type "matrix" 0.049440737522716237 -0.47624023037149538 -0.87792417465799089 0
		 -0.99214165528792098 0.077735483174846007 -0.098041473357539613 0 0.11493715376567237 0.87587238661307176 -0.46865447085562723 0
		 67.218745680219641 -16.01375137828672 -12.446824074528214 1;
	setAttr ".pm[38]" -type "matrix" 0.049440737522716237 -0.47624023037149538 -0.87792417465799089 0
		 -0.99214165528792098 0.077735483174846007 -0.098041473357539613 0 0.11493715376567237 0.87587238661307176 -0.46865447085562723 0
		 67.218745680219641 -29.027246378286723 -12.446824074528214 1;
	setAttr ".pm[39]" -type "matrix" 0.64940012679491599 -0.034819093337806438 -0.7596493309796829 0
		 -0.75995515414570014 -0.065634054590016325 -0.64665317950618617 0 -0.027342988244374675 0.99723608118499585 -0.069083712817567255 0
		 69.544936699585961 -10.321891773618868 24.08879236867589 1;
	setAttr ".pm[40]" -type "matrix" 0.64940012679491588 -0.1752986063260536 -0.73996613026468316 0
		 -0.75995515414570014 -0.18459132098872974 -0.62321281108704807 0 -0.027342988244374689 0.96705555312803948 -0.25309270664736466 0
		 69.544934618156674 -7.654954727119847 25.962185094182225 1;
	setAttr ".pm[41]" -type "matrix" 0.64940012679491599 -0.01710925367460087 -0.76025439739434919 0
		 -0.75995515414570014 -0.050548741865216781 -0.64800693544377186 0 -0.027342988244374707 0.99857503380293933 -0.045828624890194493 0
		 69.544974268773956 -14.012657972125659 23.557649482336096 1;
	setAttr ".pm[42]" -type "matrix" 0.62943189212847372 -0.44052643142328746 0.64011870492044853 0
		 0.56262090018538624 -0.30983921429468969 -0.76645768569428163 0 0.53597874570373982 0.84257707333080978 0.052826694493719496 0
		 -29.00543807754973 -5.5135276101013933 70.191743187523755 1;
	setAttr ".pm[43]" -type "matrix" 0.62943189212847372 0.046701448387053604 0.77565099618972955 0
		 0.56262090018538624 -0.71589899342228591 -0.41345659251188949 0 0.53597874570373982 0.69664022704370776 -0.47688486893414517 0
		 -29.005444162341245 37.467247883415311 59.798842137143481 1;
	setAttr ".pm[44]" -type "matrix" 0.62943189212847372 0.11826966141890899 0.76800246116755722 0
		 0.56262090018538635 -0.7510837632202283 -0.34544305363044253 0 0.53597874570373982 0.64952711091593107 -0.53929705760281088 0
		 -29.005405444990355 41.617840076730047 56.189082945775212 1;
	setAttr ".pm[45]" -type "matrix" 0.53838617598216232 -0.41125225554832162 0.73553511664482907 0
		 0.64981147228843283 -0.35313387416847525 -0.67308358871473239 0 0.53654950935924228 0.84033805651129567 0.077114037536462177 0
		 -36.356244319316907 -1.5653858153225038 66.309662744651206 1;
	setAttr ".pm[46]" -type "matrix" 0.5383861759821621 0.17753330814621096 0.8237853179135729 0
		 0.64981147228843261 -0.70987596612954829 -0.27170050274885332 0 0.53654950935924217 0.68158494497039934 -0.49755058717285583 0
		 -36.356312797551276 40.872228242400915 52.363532108981971 1;
	setAttr ".pm[47]" -type "matrix" 0.5383861759821621 0.20564239381473348 0.81722183731068376 0
		 0.64981147228843261 -0.71876479757178391 -0.24722907647348386 0 0.53654950935924217 0.66414484236327398 -0.52060181748493539 0
		 -36.356246758077297 41.06247321373128 50.987098107181325 1;
	setAttr ".pm[48]" -type "matrix" 0.95902714300123004 -0.27803994304974661 -0.054412581778410303 0
		 -0.06000177759521691 -0.01162592799206689 -0.9981305648479748 0 0.27688756864892411 0.96049915557860677 -0.027832471332427659 0
		 11.159153716947547 -6.9929640917749545 4.8987685676689967 1;
	setAttr ".pm[49]" -type "matrix" 0.95902714300123004 -0.22617187912888598 0.17062596542791217 0
		 -0.060001777595216896 -0.75073116415809082 -0.65787727263316498 0 0.276887568648924 0.62068429998925068 -0.73354227831430485 0
		 10.91161720950681 2.9658794791527696 8.2898370922977378 1;
	setAttr ".pm[50]" -type "matrix" 0.95902714300123004 -0.22617187912888598 0.17062596542791217 0
		 -0.060001777595216896 -0.75073116415809082 -0.65787727263316498 0 0.276887568648924 0.62068429998925068 -0.73354227831430485 0
		 10.911592217180722 7.6799969074478769 3.729011707148715 1;
	setAttr ".pm[51]" -type "matrix" 0.53838617598216187 -0.4112522555483214 0.7355351166448294 0
		 -0.64981147228843295 0.35313387416847603 0.67308358871473195 0 -0.53654950935924239 -0.84033805651129545 -0.077114037536461746 0
		 36.356283863756168 1.5654209319654888 -66.309579666205721 1;
	setAttr ".pm[52]" -type "matrix" 0.53838617598216187 0.17753330814621096 0.82378531791357323 0
		 -0.64981147228843283 0.70987596612954862 0.27170050274885293 0 -0.53654950935924239 -0.68158494497039956 0.49755058717285572 0
		 36.356283863756168 -40.872146806463526 -52.363477945707572 1;
	setAttr ".pm[53]" -type "matrix" 0.53838617598216187 0.20564239381473082 0.81722183731068487 0
		 -0.64981147228843261 0.71876479757178324 0.24722907647348566 0 -0.53654950935924239 -0.66414484236327553 0.52060181748493295 0
		 36.356283863756161 -41.062382645461518 -50.987073039290728 1;
	setAttr ".pm[54]" -type "matrix" 0.62943189212847384 0.11826966141890852 0.76800246116755744 0
		 -0.56262090018538657 0.75108376322022863 0.34544305363044309 0 -0.53597874570373993 -0.64952711091593096 0.53929705760281021 0
		 29.005441175622895 -41.617748342057986 -56.189109860949301 1;
	setAttr ".pm[55]" -type "matrix" 0.6494001267949161 -0.017109253674599961 -0.76025439739434875 0
		 0.75995515414569992 0.050548741865216316 0.64800693544377219 0 0.027342988244374932 -0.99857503380293922 0.045828624890193348 0
		 -69.544908588624864 14.012747044449025 -23.557652588499128 1;
	setAttr ".pm[56]" -type "matrix" 0.62943189212847372 0.04670144838705418 0.77565099618972977 0
		 -0.56262090018538657 0.71589899342228658 0.41345659251188915 0 -0.53597874570374004 -0.69664022704370721 0.47688486893414539 0
		 29.005441175622888 -37.467228254806194 -59.798828873468956 1;
	setAttr ".pm[57]" -type "matrix" 0.62943189212847384 -0.44052643142328729 0.64011870492044909 0
		 -0.56262090018538657 0.30983921429469052 0.76645768569428174 0 -0.53597874570374004 -0.84257707333080956 -0.052826694493719004 0
		 29.005441175622899 5.5136122604238968 -70.191646371614254 1;
	setAttr ".pm[58]" -type "matrix" 1 0 0 0 0 -0.99994069318767687 0.010890826752274131 0
		 0 -0.010890826752274131 -0.99994069318767687 0 0 46.687069653350832 -1.3357332542372329 1;
	setAttr ".pm[59]" -type "matrix" 1 0 0 0 0 -0.97357988541123952 -0.22834668099763877 0
		 0 0.22834668099763877 -0.97357988541123952 0 0 50.514390811674524 11.054165786474274 1;
	setAttr ".pm[60]" -type "matrix" 1 0 0 0 0 -0.95163355108230163 -0.30723538932630817 0
		 0 0.30723538932630817 -0.95163355108230163 0 0 54.601783054435415 15.573667371814432 1;
	setAttr ".pm[61]" -type "matrix" 1 0 0 0 0 -0.999884049953639 -0.015227824805548792 0
		 0 0.015227824805548792 -0.999884049953639 0 0 63.722726884058652 -3.2195231770122796 1;
	setAttr ".pm[62]" -type "matrix" 1 0 0 0 0 -0.97782545333777882 0.20942154331578941 0
		 0 -0.20942154331578941 -0.97782545333777882 0 0 66.13154415679675 -18.523929722929189 1;
	setAttr ".pm[63]" -type "matrix" 1 0 0 0 0 -0.98706667617529609 0.16031025165052043 0
		 0 -0.16031025165052043 -0.98706667617529609 0 0 71.391996274040352 -14.976058200298933 1;
	setAttr ".pm[64]" -type "matrix" 1 0 0 0 0 -1 -1.3322676295501878e-015 0 0 1.3322676295501878e-015 -1 0
		 0 75.691068172087583 -2.8792421854894612 1;
	setAttr ".pm[65]" -type "matrix" 0.70274456034469468 -0.71113485451339042 -0.020911757510092291 0
		 -0.14226912066537836 -0.16926886321503759 0.9752474297587197 0 -0.69707214849758681 -0.6823747289005565 -0.22012530328621963 0
		 11.609023527255616 15.120545967747137 -72.33403426347175 1;
	setAttr ".pm[66]" -type "matrix" 0.24968213650014243 -0.94620392863969738 0.20580805654669379 0
		 0.96821650385656299 0.24072634944739457 -0.067879498683367789 0 0.014684426188947219 0.21621505523097556 0.97623532896477749 0
		 -67.202324576729566 -15.645362709761402 5.4083249405666036 1;
	setAttr ".pm[67]" -type "matrix" 0.04944073752271641 -0.96173869926074984 -0.26947038393383949 0
		 0.9921416552879212 0.016242958724072373 0.12406088075792457 0 -0.11493715376567203 -0.27348645420958051 0.95498408889788144 0
		 -67.218712837145347 7.5569137566769378 -2.8272935920650162 1;
	setAttr ".pm[68]" -type "matrix" 0.049440737522716403 -0.47624023037149543 -0.87792417465799077 0
		 0.99214165528792109 -0.07773548317484559 0.098041473357539835 0 -0.11493715376567201 -0.87587238661307132 0.46865447085562717 0
		 -67.218712837145347 16.013740831641854 12.446813203332971 1;
	setAttr ".pm[69]" -type "matrix" 0.049440737522716403 -0.47624023037149543 -0.87792417465799077 0
		 0.99214165528792109 -0.07773548317484559 0.098041473357539835 0 -0.11493715376567201 -0.87587238661307132 0.46865447085562717 0
		 -67.218712837145347 29.027235831641853 12.446813203332974 1;
	setAttr ".pm[70]" -type "matrix" 0.6494001267949161 -0.034819093337805619 -0.75964933097968279 0
		 0.75995515414570003 0.06563405459001595 0.6466531795061865 0 0.027342988244374943 -0.99723608118499585 0.069083712817566298 0
		 -69.544908588624878 10.321961946122437 -24.08878752941148 1;
	setAttr ".pm[71]" -type "matrix" 0.6494001267949161 -0.17529860632605429 -0.73996613026468272 0
		 0.75995515414569981 0.18459132098873079 0.62321281108704818 0 0.027342988244374946 -0.96705555312803915 0.25309270664736566 0
		 -69.54490858862485 7.6549537488004447 -25.962190686933372 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 38 ".ma";
	setAttr -s 72 ".dpf[0:71]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 38 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
createNode groupId -n "groupId260";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:852]" "f[855:881]";
createNode groupId -n "groupId261";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[853:854]";
createNode tweak -n "tweak4";
createNode objectSet -n "skinCluster4Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId263";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "riggingPose";
	setAttr -s 67 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 -0.99994069318767709 -0.010890826752274133 0
		 0 0.010890826752274133 -0.99994069318767709 0 0 46.698848031532144 -0.82719324898981128 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 -0.97357988541123974 0.22834668099763883 0
		 0 -0.22834668099763883 -0.97357988541123974 0 0 51.703976886587732 -0.7726800247510337 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 -0.95163355108230185 0.30723538932630828 0
		 0 -0.30723538932630828 -0.95163355108230185 0 0 56.745670461735656 -1.9551756902257367 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 -0.99988404995363933 0.015227824805548851 0
		 0 -0.015227824805548851 -0.99988404995363933 0 0 63.666311896025263 -4.1895083942729263 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 -0.97782545333777926 -0.20942154331578944 0
		 0 0.20942154331578944 -0.97782545333777926 0 0 68.544417095896193 -4.2637999397477397 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 -0.98706667617529631 -0.1603102516505204 0
		 0 0.1603102516505204 -0.98706667617529631 0 0 72.869476126558894 -3.3374991014524307 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 -1.0000000000000002 1.4155343563970746e-015 0
		 0 -1.4155343563970746e-015 -1.0000000000000002 0 0 75.691068172087583 -2.8792421854895629 1;
	setAttr ".wm[8]" -type "matrix" 0.70274456034469468 -0.14226912066537845 -0.69707214849758703 0
		 -0.71113485451339031 -0.16926886321503765 -0.68237472890055662 0 -0.02091175751009228 0.97524742975871981 -0.22012530328621982 0
		 1.0819373379999999 74.754624195687597 2.4876541975104391 1;
	setAttr ".wm[9]" -type "matrix" 0.24968213650014248 0.9682165038565631 0.014684426188947136 0
		 -0.94620392863969704 0.24072634944739446 0.21621505523097556 0 0.20580805654669382 -0.067879498683367734 0.97623532896477805 0
		 0.86243947193359083 69.199765189298731 -0.91020734013008608 1;
	setAttr ".wm[10]" -type "matrix" 0.8480894860433994 0.50412407024230454 0.16310470705952945 0
		 -0.49842947475646315 0.86348623977097849 -0.077198266950578312 0 -0.17975617473855732 -0.015825154928431034 0.9835838968358791 0
		 9.8292472550250327 66.91849491552918 -2.959193590127533 1;
	setAttr ".wm[11]" -type "matrix" 0.8480894860433994 0.50412407024230454 0.16310470705952945 0
		 -0.317810745029112 0.73029863086535529 -0.60469847039679947 0 -0.4239581984189989 0.46100198650170704 0.77957463685961281 0
		 16.073146167383939 56.101476527968458 -1.9921196118395783 1;
	setAttr ".wm[12]" -type "matrix" 0.8480894860433994 0.50412407024230454 0.16310470705952945 0
		 -0.317810745029112 0.73029863086535529 -0.60469847039679947 0 -0.4239581984189989 0.46100198650170704 0.77957463685961281 0
		 20.208974708766561 46.597738946695308 5.8771209091768206 1;
	setAttr ".wm[13]" -type "matrix" 0.99337297151209625 -0.11436280698277379 -0.011458090951314809 0
		 0.052185781315336993 0.53761183875341334 -0.84157599482202605 0 0.10240499840210759 0.83540089730092781 0.54001718221837136 0
		 19.711580236492317 46.2689588507995 7.9621498889659126 1;
	setAttr ".wm[14]" -type "matrix" 0.99337297151209625 -0.11436280698277379 -0.011458090951314809 0
		 0.070296939225603872 0.68341261852779067 -0.72663989236244197 0 0.090931181696597294 0.72101896037206259 0.68692297892795184 0
		 19.606080497040811 45.182112827132499 9.6634954651846154 1;
	setAttr ".wm[15]" -type "matrix" 0.99337297151209625 -0.11436280698277379 -0.011458090951314809 0
		 0.049785501394527421 0.51800042436472349 -0.85393030406987136 0 0.1035931625162749 0.84770083681508068 0.52026123048223527 0
		 19.526207732479556 44.405605972364938 10.489117998439109 1;
	setAttr ".wm[16]" -type "matrix" -0.098438122511491699 -0.47476883293100675 -0.87458818384068249 0
		 0.021372506016423376 0.8776453014147374 -0.47883393874203728 0 0.99491364048493702 -0.065827655145576425 -0.076246755964070823 0
		 21.27142302263217 43.95905610275581 9.7199626817904416 1;
	setAttr ".wm[17]" -type "matrix" -0.098438122511491699 -0.47476883293100675 -0.87458818384068249 0
		 0.62911789774695492 0.65126135688801168 -0.42434575025424531 0 0.7710516239337446 -0.59199087856293542 0.23457662485298775 0
		 21.233924296919568 42.419200158608817 10.560091701615058 1;
	setAttr ".wm[18]" -type "matrix" -0.098438122511491699 -0.47476883293100675 -0.87458818384068249 0
		 0.6977620885527076 0.59369250957575026 -0.40082074778161331 0 0.70953365234848176 -0.64971051965546778 0.27283371645389803 0
		 20.461987656491068 41.620093177743286 11.080769994196599 1;
	setAttr ".wm[19]" -type "matrix" -0.22180744044787543 -0.45084971042472788 -0.86460164120356742 0
		 0.073586066309110687 0.87642061370863056 -0.47589074241020812 0 0.97230990440656995 -0.16917874120741871 -0.16122035639571006 0
		 21.121757304683605 43.448805693057373 8.5521451786908145 1;
	setAttr ".wm[20]" -type "matrix" -0.22180744044787543 -0.45084971042472788 -0.86460164120356742 0
		 0.69786725200360167 0.54587582809067636 -0.46368187250232268 0 0.68101597480742226 -0.70622526074635539 0.19355392824956719 0
		 20.947187159514058 41.369650202913242 9.6811132042191357 1;
	setAttr ".wm[21]" -type "matrix" -0.22180744044787543 -0.45084971042472788 -0.86460164120356742 0
		 0.72078148137342801 0.52136858874082725 -0.45678096587262151 0 0.65671570368850518 -0.72450626863011847 0.2093206899581927 0
		 19.844505948629909 40.507126539016909 10.413764417136706 1;
	setAttr ".wm[22]" -type "matrix" -0.3110096082343663 -0.43864354224205682 -0.84312802493764116 0
		 0.13081436970085286 0.85892289159191559 -0.49511520576442802 0 0.94136104883603189 -0.26427884733501456 -0.20975239351578662 0
		 20.755681893574831 42.849058483102489 7.4411187635456075 1;
	setAttr ".wm[23]" -type "matrix" -0.3110096082343663 -0.43864354224205682 -0.84312802493764116 0
		 0.55964142695355268 0.63249116503157299 -0.53549640465123172 0 0.76816306655767874 -0.63839389800212309 0.04877226845613844 0
		 20.534523331833185 41.396938568556081 8.2781748687249035 1;
	setAttr ".wm[24]" -type "matrix" -0.3110096082343663 -0.43864354224205682 -0.84312802493764116 0
		 0.72263471005602264 0.4670660327674524 -0.50955705947138208 0 0.61731037526365418 -0.76775071728016941 0.1717170250954507 0
		 19.737907153116367 40.496625134466051 9.0404220488738147 1;
	setAttr ".wm[25]" -type "matrix" -0.35387952530137173 -0.38561649385535079 -0.85209694356873655 0
		 0.17802828757424405 0.8666215588345717 -0.46612552235049309 0 0.91819127113900278 -0.31664963829103565 -0.23802898179486098 0
		 20.277549169121368 42.411506256584282 6.4049586428499952 1;
	setAttr ".wm[26]" -type "matrix" -0.35387952530137173 -0.38561649385535079 -0.85209694356873655 0
		 0.54074746277377439 0.65899212239247251 -0.52280164893426906 0 0.76312611217032855 -0.64577805962371571 -0.024682678793591845 0
		 20.021576541606272 41.165460470834631 7.0751632285012702 1;
	setAttr ".wm[27]" -type "matrix" -0.35387952530137173 -0.38561649385535079 -0.85209694356873655 0
		 0.75449882060323148 0.42069590926253481 -0.50373254971075887 0 0.55272127811475469 -0.82116677453272302 0.1420715211529609 0
		 19.448710103067622 40.467325951176356 7.6290179191009084 1;
	setAttr ".wm[28]" -type "matrix" 0.91107787137099494 0.055086466267022294 -0.40853713849821421 0
		 -0.31517472574118827 0.73186229699772765 -0.60418744648261058 0 0.26571037720055907 0.67922239323171807 0.68414540558313675 0
		 22.380025090163315 46.429845164212907 5.6837410853606798 1;
	setAttr ".wm[29]" -type "matrix" 0.94468138270647495 0.18103636329657921 -0.27350122546733013 0
		 -0.3151747257411886 0.73186229699772709 -0.60418744648261091 0 0.090785337041555114 0.65696530608363191 0.74843477282973159 0
		 17.412271157244337 45.699858517709792 7.3909277961651938 1;
	setAttr ".wm[30]" -type "matrix" 0.24968213650014226 -0.96821650385656322 -0.014684426188946803 0
		 -0.94620392863969571 -0.2407263494473941 -0.21621505523098272 0 0.20580805654670078 0.067879498683369122 -0.97623532896477627 0
		 -0.86243899999999996 69.199799999999996 -0.91020700000000154 1;
	setAttr ".wm[31]" -type "matrix" 0.84808948604339884 -0.50412407024230477 -0.16310470705953023 0
		 -0.49842947475646349 -0.86348623977097827 0.077198266950579061 0 -0.17975617473855854 0.015825154928430694 -0.98358389683587877 0
		 -9.8292559666333705 66.918527380847138 -2.9591953491331475 1;
	setAttr ".wm[32]" -type "matrix" 0.84808948604339884 -0.50412407024230477 -0.16310470705953023 0
		 -0.317810745029112 -0.73029863086535529 0.60469847039679925 0 -0.42395819841899984 -0.46100198650170665 -0.77957463685961248 0
		 -16.073158755046702 56.10150227835517 -1.9921207705101334 1;
	setAttr ".wm[33]" -type "matrix" 0.84808948604339884 -0.50412407024230477 -0.16310470705953023 0
		 -0.317810745029112 -0.73029863086535529 0.60469847039679925 0 -0.42395819841899984 -0.46100198650170665 -0.77957463685961248 0
		 -20.208987296429328 46.59776469708202 5.877119750506262 1;
	setAttr ".wm[34]" -type "matrix" 0.99337297151209625 0.11436280698277335 0.01145809095131417 0
		 0.052185781315337354 -0.53761183875341456 0.84157599482202494 0 0.10240499840210637 -0.83540089730092704 -0.54001718221837258 0
		 -19.711589091760427 46.269019311490901 7.9620887064968979 1;
	setAttr ".wm[35]" -type "matrix" 0.99337297151209625 0.11436280698277335 0.01145809095131417 0
		 0.070296939225603816 -0.68341261852779034 0.72663989236244209 0 0.090931181696596169 -0.72101896037206292 -0.68692297892795129 0
		 -19.606082549773209 45.182127056492092 9.6634876178699791 1;
	setAttr ".wm[36]" -type "matrix" 0.99337297151209625 0.11436280698277335 0.01145809095131417 0
		 0.049785501394527837 -0.51800042436472493 0.85393030406987025 0 0.10359316251627368 -0.84770083681507968 -0.5202612304822366 0
		 -19.526253863124811 44.405663874648326 10.489035150135114 1;
	setAttr ".wm[37]" -type "matrix" -0.098438122511490811 0.47476883293100652 0.8745881838406826 0
		 0.021372506016422821 -0.87764530141473762 0.47883393874203684 0 0.99491364048493725 0.065827655145575648 0.076246755964070462 0
		 -21.271497623349557 43.959144458926083 9.7199076387433614 1;
	setAttr ".wm[38]" -type "matrix" -0.098438122511490811 0.47476883293100652 0.8745881838406826 0
		 0.62911789774695459 -0.65126135688801234 0.42434575025424476 0 0.77105162393374505 0.59199087856293486 -0.23457662485298775 0
		 -21.233923939640988 42.419228415235239 10.560084677632247 1;
	setAttr ".wm[39]" -type "matrix" -0.098438122511490811 0.47476883293100652 0.8745881838406826 0
		 0.69776208855270816 -0.59369250957575015 0.40082074778161236 0 0.70953365234848143 0.64971051965546811 -0.27283371645389848 0
		 -20.462005824016657 41.62017007045727 11.080690213918263 1;
	setAttr ".wm[40]" -type "matrix" -0.22180744044787415 0.4508497104247276 0.86460164120356742 0
		 0.073586066309109965 -0.87642061370863078 0.47589074241020757 0 0.97230990440657006 0.16917874120741794 0.16122035639570953 0
		 -21.1218086685511 43.448826493546704 8.5520764647193168 1;
	setAttr ".wm[41]" -type "matrix" -0.22180744044787415 0.4508497104247276 0.86460164120356742 0
		 0.69786725200360156 -0.5458758280906767 0.46368187250232185 0 0.68101597480742238 0.70622526074635528 -0.19355392824956749 0
		 -20.947264067801399 41.369691357388881 9.6811065254099571 1;
	setAttr ".wm[42]" -type "matrix" -0.22180744044787415 0.4508497104247276 0.86460164120356742 0
		 0.72078148137343001 -0.52136858874082537 0.45678096587261996 0 0.65671570368850307 0.72450626863012002 -0.20932068995819444 0
		 -19.844556233750609 40.507160774784566 10.413691794709869 1;
	setAttr ".wm[43]" -type "matrix" -0.31100960823436519 0.43864354224205659 0.84312802493764138 0
		 0.13081436970085264 -0.8589228915919157 0.49511520576442741 0 0.94136104883603222 0.26427884733501422 0.20975239351578584 0
		 -20.755720383331212 42.849114250008782 7.4410788443908658 1;
	setAttr ".wm[44]" -type "matrix" -0.31100960823436519 0.43864354224205659 0.84312802493764138 0
		 0.55964142695355257 -0.63249116503157321 0.53549640465123072 0 0.76816306655767919 0.63839389800212287 -0.048772268456138829 0
		 -20.53452812915959 41.396971812601542 8.2781713053385459 1;
	setAttr ".wm[45]" -type "matrix" -0.31100960823436519 0.43864354224205659 0.84312802493764138 0
		 0.7226347100560232 -0.46706603276745196 0.50955705947138086 0 0.61731037526365395 0.76775071728016975 -0.17171702509545128 0
		 -19.737939391408819 40.496650955766412 9.0403750495147897 1;
	setAttr ".wm[46]" -type "matrix" -0.35387952530137035 0.38561649385535068 0.852096943568737 0
		 0.17802828757424416 -0.86662155883457181 0.46612552235049232 0 0.91819127113900323 0.31664963829103537 0.23802898179485996 0
		 -20.277601895219721 42.411551258089546 6.4049310994101223 1;
	setAttr ".wm[47]" -type "matrix" -0.35387952530137035 0.38561649385535068 0.852096943568737 0
		 0.5407474627737745 -0.65899212239247285 0.52280164893426795 0 0.76312611217032911 0.64577805962371526 0.024682678793591345 0
		 -20.021626421874036 41.165511922399581 7.0750922896910646 1;
	setAttr ".wm[48]" -type "matrix" -0.35387952530137035 0.38561649385535068 0.852096943568737 0
		 0.75449882060323159 -0.42069590926253553 0.50373254971075765 0 0.55272127811475558 0.82116677453272247 -0.14207152115296082 0
		 -19.448729049022759 40.467372576267195 7.6289536473988724 1;
	setAttr ".wm[49]" -type "matrix" 0.91107787137099527 -0.055086466267022904 0.40853713849821338 0
		 -0.31517472574124605 -0.73186229699757999 0.60418744648275902 0 0.26571037720048951 -0.67922239323187705 -0.68414540558300585 0
		 -22.380041776499219 46.429893940152112 5.6837346845148122 1;
	setAttr ".wm[50]" -type "matrix" 0.94468138270647506 -0.18103636329657938 0.2735012254673298 0
		 -0.31517472574122818 -0.7318622969974411 0.60418744648293654 0 0.090785337041417391 -0.65696530608395043 -0.74843477282946846 0
		 -17.412276363257611 45.699920945481395 7.3909508559623056 1;
	setAttr ".wm[51]" -type "matrix" 0.97165182963876184 0.11545169826376997 -0.20630954250266265 0
		 -0.096645820039107266 0.99037815161472353 0.099048989258712708 0 0.21575983738549448 -0.076302176720035406 0.97346066710431078 0
		 5.0061242487641913 43.539607071174473 0 1;
	setAttr ".wm[52]" -type "matrix" 0.97165182963876184 0.11545169826376997 -0.20630954250266265 0
		 -0.083617823387849066 0.98407187709530741 0.15687766036627715 0 0.22113521106220285 -0.13517931083612589 0.96582905959095344 0
		 7.1612784965552034 21.454661446953992 -2.2087437392940852 1;
	setAttr ".wm[53]" -type "matrix" 0.97782286663442464 -6.3837823915946501e-016 -0.20943362071748739 0
		 -0.19159757497713067 0.40382385127621717 -0.89454830300175892 0 0.084574291304858856 0.91483675983229051 0.39486819587026406 0
		 8.6701565368674043 3.6971503677444391 -5.0395906123696443 1;
	setAttr ".wm[54]" -type "matrix" 0.97782286663442464 -6.3837823915946501e-016 -0.20943362071748739 0
		 -0.20943362071748731 -1.6653345369377348e-016 -0.97782286663442464 0 6.2450045135165055e-016 1.0000000000000002 -2.7755575615628914e-016 0
		 10.024935614908223 0.8417274586173904 1.2857260068430882 1;
	setAttr ".wm[55]" -type "matrix" 0.97782286663442464 -6.3837823915946501e-016 -0.20943362071748739 0
		 -0.19159757497713067 0.40382385127621717 -0.89454830300175892 0 0.084574291304858856 0.91483675983229051 0.39486819587026406 0
		 9.128776759982232 3.8716026196028483 -1.7160989241441547 1;
	setAttr ".wm[56]" -type "matrix" 0.97782286663442464 -6.3837823915946501e-016 -0.20943362071748739 0
		 -0.19159757497713067 0.40382385127621717 -0.89454830300175892 0 0.084574291304858856 0.91483675983229051 0.39486819587026406 0
		 7.8398381540643367 3.6555347857248242 -7.7340135179741232 1;
	setAttr ".wm[57]" -type "matrix" 0.97165182963876195 -0.11545169826376969 0.20630954250266223 0
		 -0.096645820039107655 -0.99037815161472376 -0.099048989258709835 0 0.21575983738549379 0.076302176720032575 -0.97346066710431112 0
		 -5.0061200000000001 43.5396 0 1;
	setAttr ".wm[58]" -type "matrix" 0.97165182963876195 -0.11545169826376969 0.20630954250266223 0
		 -0.083617823387849871 -0.98407187709530808 -0.15687766036627271 0 0.22113521106220208 0.13517931083612145 -0.96582905959095422 0
		 -7.1613175999262051 21.454633863804432 -2.2087555364203872 1;
	setAttr ".wm[59]" -type "matrix" 0.97782286663442453 6.9388939039072284e-016 0.20943362071748758 0
		 -0.1915975749771309 -0.40382385127621712 0.89454830300175903 0 0.08457429130485894 -0.91483675983229062 -0.39486819587026389 0
		 -8.670157791364721 3.6971414021702103 -5.03960934334921 1;
	setAttr ".wm[60]" -type "matrix" 0.97782286663442453 6.9388939039072284e-016 0.20943362071748758 0
		 -0.20943362071748756 -9.4368957093138306e-016 0.97782286663442475 0 8.4654505627668186e-016 -1.0000000000000002 -6.6613381477509392e-016 0
		 -10.024888175412238 0.84172155459865206 1.2857038475633873 1;
	setAttr ".wm[61]" -type "matrix" 0.97782286663442453 6.9388939039072284e-016 0.20943362071748758 0
		 -0.1915975749771309 -0.40382385127621712 0.89454830300175903 0 0.08457429130485894 -0.91483675983229062 -0.39486819587026389 0
		 -9.1287965198547631 3.8716006616918297 -1.7161179316232427 1;
	setAttr ".wm[62]" -type "matrix" 0.97782286663442453 6.9388939039072284e-016 0.20943362071748758 0
		 -0.1915975749771309 -0.40382385127621712 0.89454830300175903 0 0.08457429130485894 -0.91483675983229062 -0.39486819587026389 0
		 -7.8398300396538634 3.6555265362494285 -7.7340433345354027 1;
	setAttr ".wm[63]" -type "matrix" -0.36431148677367853 0.1234181989688538 0.92306288451439567 0
		 -0.15345463620951599 0.96967507475575876 -0.19021546736061939 0 -0.91854712194342925 -0.21094595886316042 -0.33432467334724919 0
		 8.0614333152770996 47.41368293762207 0.33424150943756104 1;
	setAttr ".wm[64]" -type "matrix" 0.97522204163322102 0.10104546029249888 0.196803923911616 0
		 -0.10853011150386001 0.99371004672219898 0.027596339255864619 0 -0.19277755162282723 -0.048271710117232164 0.98005441562837015 0
		 3.7543477326084851 45.8039898433465 -4.801860307894267 1;
	setAttr ".wm[65]" -type "matrix" -0.36431148800995028 -0.12341819722350726 -0.92306288425982952 0
		 0.15345463339908022 0.96967507570233791 -0.19021546480246873 0 0.91854712192262067 -0.21094595553308149 -0.33432467550557143 0
		 -8.0614333152770996 47.41368293762207 0.33424150943756104 1;
	setAttr ".wm[66]" -type "matrix" 0.97522204163077053 -0.10104545716020881 -0.19680392553197723 0
		 0.10853010980576633 0.99371004670827223 0.027596346435574019 0 0.19277755259121832 -0.048271716960641878 0.98005441510082103 0
		 -3.7543481345544087 45.803989843107004 -4.8018602926339318 1;
	setAttr -s 67 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 46.698848031532144 -0.82719324898981128 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99998517318700209 0 0 0.0054454941154599978 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -5.0054257108988178
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.12034271612878772 0 0 0.99273240637885196 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -5.1785104136763449
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.040942245579118498 0 0 0.9991615147346995 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.2723806620927753
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14798355346007067 0 0 0.98898982194223339 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -4.8786708819858795
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11286487527346338 0 0 0.99361034612644084 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -4.4231401585009245
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.024986592247462296 0 0 0.99968778636525268 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.8585627634212512
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.08041555765119128 0 0 0.99676142485935315 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0819373379999999 0.93644397639999999
		 -5.3668963830000003 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.57300750297082481 -0.24819296907050148 0.29500503373946307 0.72321136724438129 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.86243947193359083 -1.3431305843897121
		 -3.1419841949019349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.79043560163314086 0.5996775391094874 -0.12468272068541794 0.0072545103849844875 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0.1685189930571234 0.010230701651614636
		 -1.0199914248537734 0 8.6970686277720866e-009 -9.4766122920362452 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.24903644961177912 0.061452639302749024 0.10291389266795664 0.96104794395670734 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0.21916640218011371 0 0 0 0 -12.527146223464671
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38968240991645425 0 0 0.92094930338303882 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -13.013495000000001
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.24750294155040886
		 -1.342844180893108 1.6847418967996184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.18393329140268633 0.2912450474706248 -0.15395678630241585 0.92608972275316837 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.0216184713996004
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.09326868321181965 0 0 0.99564097582006594 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.1362196624936738
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10486272213277846 0 0 0.99448670655112514 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.19761329068691103 -4.5884445002778467
		 1.3289102735303651 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.1749367231827835 0.85158170402137456 -0.08687170277017732 0.48647615719162662 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.7545310635911706
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.32541247448194804 0 0 0.94557216617851836 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.2270142737840064
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.046313126793535504 0 0 0.99892697144816645 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.3770226762484421 -4.2073368447255994
		 0.24673492329544189 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.19687795049408688 0.8770324786339716 -0.09498791899741503 0.42782052226949163 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.3723260927718854
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.353247756757126 0 0 0.93552980836852995 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.5800730120496582
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.017126654668058048 0 0 0.99985332809361649 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1710480260853877 -3.8571527380709085
		 -0.74067707424170948 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.21032364980586171 -0.8933018466924697 0.11497068673229457 -0.38020719906449602 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.6906289595508024
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.24330773366697769 0 0 0.9699491464699781 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.4234403322378264
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11683870757317874 0 0 0.99315090314243248 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.9661305649564225 -3.3981763725770886
		 -1.5474453812200828 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.23933892147887761 -0.89617128601869522 0.11673717438619008 -0.35491736911181715 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.4378199723363987
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.21088347864355778 0 0 0.97751120629647625 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.05939736748855 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.16034210201254179 0 0 0.98706150280628391 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7250645456249334 -13.709154255017928
		 -1.1485879815469673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0005675632936545849 0.36481787914662683 -0.001446226342199858 0.9310776022202617 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.577588985230383 -13.69579011767209
		 1.9518861920115924 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00042933795442009001 0.27583123632371725 -0.0014931067095389767 0.96120482487834236 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.86243899999999996
		 -1.3431646944100351 -3.1419772373790043 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0072545103849872491 0.12468272068542025 0.59967753910948696 0.79043560163314075 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0.1685189930571234 0.010230701651614636
		 -1.0199914248537734 0 0 9.4766220000000008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 -0.24903644961178314 0.061452639302749287 0.10291389266795659 0.96104794395670623 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0.21916640218011371 0 0 0 0 12.527153999999999
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38968240991645392 0 0 0.92094930338303893 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 13.013495000000001
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.24749839881906133 1.3427813495108811
		 -1.6847126876674601 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.18393329140268577 0.29124504747062463 -0.15395678630241597 0.92608972275316848 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.081429286704406e-006
		 2.0216885664921476 1.0516409947314287e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.093268683211818651 0 0 0.99564097582006605 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.9650617274844535e-005
		 1.1361322186132643 1.6022840213736345e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.10486272213277739 0 0 0.99448670655112525 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.19768865559351401
		 4.5883859039748618 -1.328870837084775 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.17493672318278342 0.85158170402137456 -0.086871702770177112 0.48647615719162657 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.0847915257511431e-006
		 1.7546084048713464 7.428181847757287e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.32541247448194804 0 0 0.94557216617851836 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.8717350893335833e-005
		 1.2269400708689613 3.1575466110211892e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.046313126793536163 0 0 0.99892697144816645 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.3770033045068879 4.2073119325362516
		 -0.24666353749381997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.19687795049408677 0.87703247863397171 -0.09498791899741485 0.42782052226949174 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.8478234371838198e-005
		 2.3723358963647936 -1.139229965474442e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.35324775675712627 0 0 0.93552980836852984 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6039473988865893e-005
		 1.5800647913811305 2.6008281679423817e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.017126654668059668 0 0 0.99985332809361649 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1710172487595185 3.8571156106059235
		 0.74070443466187541 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.21032364980586171 -0.8933018466924697 0.11497068673229457 -0.38020719906449602 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0294390289544708e-005
		 1.6906707126992906 3.3390134959176976e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.24330773366697769 0 0 0.9699491464699781 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1343620950252671e-005
		 1.4234064101499331 -2.3699300886192987e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.1168387075731792 0 0 0.99315090314243237 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9660911224990405 3.3981591151080348
		 1.5474740923319779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.23933892147887781 -0.89617128601869511 0.11673717438619019 -0.35491736911181732 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5496894200903739e-005
		 1.4377946615243005 -5.6739299409969135e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.21088347864355766 0 0 0.97751120629647625 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.12716539652547e-006
		 1.0594207613231772 2.0654512734807895e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.16034210201254159 0 0 0.98706150280628391 1 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.72507877437831 13.709135572155434
		 1.1485831910545201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00056756329355342559 0.364817879146627 -0.0014462263421601619 0.93107760222026181 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5775728054310756 13.695775631130957
		 -1.9519251099728443 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00042933795421086322 0.27583123632371787 -0.0014931067094788636 0.96120482487834225 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.0061242487641913 3.1500447774815541
		 -0.861550936762982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99212951504667801 0.052877115982197583 -0.10666815731990643 0.038793558648629128 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -22.299508110324265
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.029806261913926275 0 0 0.99955569467174687 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0817958690244609e-008
		 -18.04493299205037 4.9542037139360673e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -7.0709615098339693
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.20635314410944858 0 0 0.97847758273562158 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.21990804124939278
		 -17.39022666162349 3.2877595969484554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.25569978766978524
		 -18.439151061544454 -2.7803390056974031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623431022 0.028965330347748532 -0.05005240939671661 0.79730798376266532 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.0061200000000001 3.1500518482366573
		 -0.86155101377391818 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.038793558648627685 0.10666815731990614 0.052877115982197603 0.99212951504667812 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.2188898856210244e-005
		 22.299533783232327 5.6528051728399475e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.029806261913925446 0 0 0.99955569467174687 1 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3175158620224465e-005
		 18.044912593944311 1.7582851311814807e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6896098808701936e-005
		 7.0709478770737393 2.6711631593290264e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.20635314410944802 0 0 0.97847758273562169 1 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.21992239035317457 17.390200958228949
		 -3.2877448914494236 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.25573971722664218 18.439130914418101
		 2.7803694644182486 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.60079592623430844 0.028965330347748869 -0.050052409396716291 0.79730798376266665 1
		 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.0614333152770996 -0.72744149624841015
		 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351575411907 -0.12723801940821283 -0.81606753997687864 -0.0061241373552523015 1
		 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7543477326084851 0.93809252733552029
		 3.9646855885757626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206901421514 0.053264221169070675 0.097733832047258884 0.013678186826430735 1
		 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.0614333152770996 -0.72744149624841015
		 -1.1535807343154252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.56374351520946764 0.12723801750963237 0.81606754065162623 -0.0061241370247192006 1
		 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7543481345544087 0.93809252740880567
		 3.9646855733137243 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99369206896500839 -0.053264219960933057 -0.097733832711953267 0.013678190356416845 1
		 1 1 yes;
	setAttr -s 67 ".m";
	setAttr -s 67 ".p";
	setAttr -s 67 ".g[0:66]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no;
createNode shadingEngine -n "spy_headSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo39";
createNode lambert -n "spy_head";
createNode file -n "spy_headFile1";
	setAttr ".ftn" -type "string" "spy_head_red.tga";
createNode skinCluster -n "skinCluster12";
	setAttr -s 1592 ".wl";
	setAttr ".wl[0].w[6]"  1;
	setAttr ".wl[1].w[6]"  1;
	setAttr ".wl[2].w[6]"  1;
	setAttr ".wl[3].w[6]"  0.99999999999999989;
	setAttr ".wl[4].w[6]"  0.99999999999999989;
	setAttr ".wl[5].w[6]"  1;
	setAttr ".wl[6].w[6]"  1;
	setAttr ".wl[7].w[6]"  0.99999999999999989;
	setAttr ".wl[8].w[6]"  0.99999999999999978;
	setAttr ".wl[9].w[6]"  1;
	setAttr ".wl[10].w[6]"  0.99999999999999989;
	setAttr ".wl[11].w[6]"  1;
	setAttr ".wl[12].w[6]"  0.99999999999999978;
	setAttr ".wl[13].w[6]"  0.99999999999999989;
	setAttr ".wl[14].w[6]"  1;
	setAttr ".wl[15].w[6]"  0.99999999999999978;
	setAttr ".wl[16].w[6]"  1;
	setAttr ".wl[17].w[6]"  1;
	setAttr ".wl[18].w[6]"  1;
	setAttr ".wl[19].w[6]"  1;
	setAttr -s 4 ".wl[20].w";
	setAttr ".wl[20].w[4:6]" 2.4098963035781356e-041 2.7492420212078321e-029 
		0.99999999999999989;
	setAttr ".wl[20].w[8]" 2.6776525636119675e-042;
	setAttr -s 4 ".wl[21].w";
	setAttr ".wl[21].w[4:6]" 3.8029093121711928e-040 4.3378585539526226e-028 
		1;
	setAttr ".wl[21].w[8]" 4.2254390173551564e-041;
	setAttr -s 4 ".wl[22].w";
	setAttr ".wl[22].w[4:6]" 1.2805131683729148e-039 0.22627513519929029 0.77372486480070946;
	setAttr ".wl[22].w[8]" 1.4227870979102685e-040;
	setAttr -s 4 ".wl[23].w";
	setAttr ".wl[23].w[4:6]" 5.5303099154845556e-029 4.3632766863085357e-006 
		0.9999956367233136;
	setAttr ".wl[23].w[8]" 7.2263674815638185e-030;
	setAttr -s 4 ".wl[24].w";
	setAttr ".wl[24].w[4:6]" 1.7151220957245949e-012 1.0093480891212063e-005 
		0.99998990651720321;
	setAttr ".wl[24].w[8]" 1.9056841007171926e-013;
	setAttr -s 4 ".wl[25].w";
	setAttr ".wl[25].w[4:6]" 2.5461612187439425e-032 0.060301340724993636 
		0.93969865927500651;
	setAttr ".wl[25].w[8]" 2.8290574596991318e-033;
	setAttr ".wl[26].w[6]"  1;
	setAttr ".wl[27].w[6]"  1.0000000000000002;
	setAttr ".wl[28].w[6]"  1;
	setAttr ".wl[29].w[6]"  1;
	setAttr ".wl[30].w[6]"  1;
	setAttr ".wl[31].w[6]"  1.0000000000000002;
	setAttr ".wl[32].w[6]"  1;
	setAttr ".wl[33].w[6]"  1;
	setAttr ".wl[34].w[6]"  1;
	setAttr ".wl[35].w[6]"  1;
	setAttr -s 2 ".wl[36].w[5:6]"  5.6311778283270259e-029 1;
	setAttr -s 2 ".wl[37].w[5:6]"  5.630738673804979e-029 1;
	setAttr -s 2 ".wl[38].w[5:6]"  8.4491109093929484e-029 1;
	setAttr -s 2 ".wl[39].w[5:6]"  9.312004501092202e-029 1;
	setAttr -s 4 ".wl[40].w";
	setAttr ".wl[40].w[4:6]" 4.8868726554218478e-022 4.2374069359861715e-012 
		0.99999999999576272;
	setAttr ".wl[40].w[8]" 4.7163323809342135e-022;
	setAttr -s 4 ".wl[41].w";
	setAttr ".wl[41].w[4:6]" 5.9088748210075832e-017 3.6634878190466896e-009 
		0.99999999633651204;
	setAttr ".wl[41].w[8]" 5.7024319115190755e-017;
	setAttr -s 4 ".wl[42].w";
	setAttr ".wl[42].w[4:6]" 2.4412519678208753e-009 0.07624956393141645 0.92375043354317965;
	setAttr ".wl[42].w[8]" 8.4151549217756082e-011;
	setAttr -s 4 ".wl[43].w";
	setAttr ".wl[43].w[4:6]" 2.5661189777300192e-007 0.30217574104095135 0.69782399840070475;
	setAttr ".wl[43].w[8]" 3.9464461431536057e-009;
	setAttr -s 4 ".wl[44].w";
	setAttr ".wl[44].w[4:6]" 0.50001017022714223 0.4249876504384702 0.074997820665612377;
	setAttr ".wl[44].w[8]" 4.3586687752394945e-006;
	setAttr ".wl[45].w[4]"  1;
	setAttr -s 5 ".wl[46].w";
	setAttr ".wl[46].w[4:6]" 0.49998817949493268 0.50000797777874939 3.8427260514910921e-006;
	setAttr ".wl[46].w[8]" 2.6635629683617751e-013;
	setAttr ".wl[46].w[54]" 1.985000802902576e-018;
	setAttr -s 3 ".wl[47].w[4:6]"  0.4999968107076711 0.4250004773201897 
		0.075002711972139244;
	setAttr -s 2 ".wl[48].w[5:6]"  0.49992065684911263 0.50007934315088731;
	setAttr ".wl[49].w[6]"  1;
	setAttr ".wl[50].w[6]"  1;
	setAttr ".wl[51].w[6]"  1;
	setAttr ".wl[52].w[6]"  1;
	setAttr ".wl[53].w[6]"  1;
	setAttr ".wl[54].w[6]"  1;
	setAttr ".wl[55].w[6]"  1;
	setAttr ".wl[56].w[6]"  1;
	setAttr ".wl[57].w[6]"  1;
	setAttr ".wl[58].w[6]"  1;
	setAttr ".wl[59].w[6]"  1;
	setAttr ".wl[60].w[6]"  1;
	setAttr ".wl[61].w[6]"  1.0000000000000004;
	setAttr ".wl[62].w[6]"  1.0000001340153091;
	setAttr ".wl[63].w[6]"  1.0000001587613951;
	setAttr ".wl[64].w[6]"  1;
	setAttr ".wl[65].w[6]"  1;
	setAttr ".wl[66].w[6]"  1;
	setAttr ".wl[67].w[6]"  1;
	setAttr ".wl[68].w[6]"  1;
	setAttr ".wl[69].w[6]"  1;
	setAttr ".wl[70].w[6]"  1;
	setAttr ".wl[71].w[6]"  1;
	setAttr ".wl[72].w[6]"  1;
	setAttr ".wl[73].w[6]"  1;
	setAttr ".wl[74].w[6]"  1;
	setAttr ".wl[75].w[6]"  1;
	setAttr ".wl[76].w[6]"  1;
	setAttr ".wl[77].w[6]"  1;
	setAttr ".wl[78].w[6]"  0.99999999999999989;
	setAttr ".wl[79].w[6]"  1;
	setAttr ".wl[80].w[6]"  1.0000000000000002;
	setAttr ".wl[81].w[6]"  1;
	setAttr ".wl[82].w[6]"  1.0000000000000002;
	setAttr -s 2 ".wl[83].w[5:6]"  3.5319403048836584e-030 1;
	setAttr -s 2 ".wl[84].w[5:6]"  4.0662968703587721e-029 0.99999999999999989;
	setAttr ".wl[85].w[6]"  0.99999999999999978;
	setAttr ".wl[86].w[6]"  1;
	setAttr ".wl[87].w[6]"  0.99999999999999978;
	setAttr ".wl[88].w[6]"  1;
	setAttr ".wl[89].w[6]"  0.99999999999999989;
	setAttr ".wl[90].w[6]"  1;
	setAttr -s 4 ".wl[91].w";
	setAttr ".wl[91].w[4:6]" 7.142264458336803e-033 2.6497691681363081e-025 
		1.0000000000000415;
	setAttr ".wl[91].w[8]" 9.3326734601517768e-034;
	setAttr -s 4 ".wl[92].w";
	setAttr ".wl[92].w[4:6]" 1.1597546334141539e-031 4.3012508121529582e-024 
		0.99999999999999989;
	setAttr ".wl[92].w[8]" 1.5154313304156975e-032;
	setAttr -s 4 ".wl[93].w";
	setAttr ".wl[93].w[4:6]" 4.2155339279412562e-031 0.10606558343989481 0.89393441656010519;
	setAttr ".wl[93].w[8]" 5.5083705970176865e-032;
	setAttr -s 4 ".wl[94].w";
	setAttr ".wl[94].w[4:6]" 6.6147620741281767e-025 2.7470651251588428e-006 
		0.99999725293487474;
	setAttr ".wl[94].w[8]" 8.6434430221125677e-026;
	setAttr -s 4 ".wl[95].w";
	setAttr ".wl[95].w[4:6]" 4.9046820102074936e-021 3.2934600075693138e-014 
		0.99999999999996669;
	setAttr ".wl[95].w[8]" 6.4089083183780775e-022;
	setAttr -s 4 ".wl[96].w";
	setAttr ".wl[96].w[4:6]" 2.8994640316445537e-017 1.0215091777291741e-010 
		0.99999999989784927;
	setAttr ".wl[96].w[8]" 3.7887090703080178e-018;
	setAttr -s 4 ".wl[97].w";
	setAttr ".wl[97].w[4:6]" 8.1384090515506564e-014 1.5931263386871502e-007 
		0.99999984068727399;
	setAttr ".wl[97].w[8]" 1.0634406172847346e-014;
	setAttr -s 4 ".wl[98].w";
	setAttr ".wl[98].w[4:6]" 1.1203691400034577e-010 0.00012104399724619049 
		0.99987895587607722;
	setAttr ".wl[98].w[8]" 1.4639795111836129e-011;
	setAttr -s 4 ".wl[99].w";
	setAttr ".wl[99].w[4:6]" 2.3484008996885445e-007 0.12746877714595559 0.87253095732753683;
	setAttr ".wl[99].w[8]" 3.0686417735231651e-008;
	setAttr -s 4 ".wl[100].w";
	setAttr ".wl[100].w[4:6]" 0.00090287018215093827 0.44008645203160213 0.55886886646013278;
	setAttr ".wl[100].w[8]" 0.00014181132611404553;
	setAttr -s 5 ".wl[101].w";
	setAttr ".wl[101].w[4:6]" 0.50105958039885623 0.38187757043809401 0.064209359350098624;
	setAttr ".wl[101].w[8]" 0.052853489808123912;
	setAttr ".wl[101].w[54]" 4.8275223946294028e-012;
	setAttr -s 5 ".wl[102].w";
	setAttr ".wl[102].w[4:6]" 0.0014224077272182827 0.0010825034988576625 
		0.99734504850103867;
	setAttr ".wl[102].w[8]" 0.00015004027287688522;
	setAttr ".wl[102].w[54]" 8.5647019893107747e-015;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[4:6]" 1.9512247889123694e-006 2.2356623235075962e-006 
		0.99999560729131287;
	setAttr ".wl[103].w[8]" 2.058215746855824e-007;
	setAttr ".wl[103].w[54]" 6.7135302439830467e-018;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[4:6]" 1.5179323035206933e-009 8.6817023256550304e-007 
		0.99999913015171871;
	setAttr ".wl[104].w[8]" 1.6011644531041319e-010;
	setAttr ".wl[104].w[54]" 2.6112687422210632e-021;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[4:6]" 5.1089983171688436e-013 6.7747361330199633e-007 
		0.99999932252582169;
	setAttr ".wl[105].w[8]" 5.3891376281881146e-014;
	setAttr ".wl[105].w[54]" 3.5153999550241313e-025;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[4:6]" 2.9614352738197326e-013 2.2062033311602727e-006 
		0.99999779379633991;
	setAttr ".wl[106].w[8]" 3.2903528406744053e-014;
	setAttr ".wl[106].w[54]" 3.6229102234062753e-029;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[4:6]" 6.2792426972341946e-026 0.079152433502817893 
		0.92084756649718236;
	setAttr ".wl[107].w[8]" 8.9282845693032073e-027;
	setAttr ".wl[107].w[54]" 8.8685777104192665e-031;
	setAttr -s 4 ".wl[108].w";
	setAttr ".wl[108].w[4:6]" 2.2426465623436632e-038 1.2729415643722659e-031 
		1;
	setAttr ".wl[108].w[8]" 2.4918202115248705e-039;
	setAttr ".wl[109].w[6]"  1;
	setAttr ".wl[110].w[6]"  0.99999999999999978;
	setAttr ".wl[111].w[6]"  1;
	setAttr ".wl[112].w[6]"  0.99999999999999978;
	setAttr ".wl[113].w[6]"  1;
	setAttr ".wl[114].w[6]"  1;
	setAttr ".wl[115].w[6]"  0.99999999999999978;
	setAttr ".wl[116].w[6]"  1;
	setAttr -s 2 ".wl[117].w[5:6]"  5.8203275183005613e-029 0.99999999999999989;
	setAttr -s 2 ".wl[118].w[5:6]"  1.2557791071044395e-024 1;
	setAttr -s 2 ".wl[119].w[5:6]"  1.326560357043467e-024 1;
	setAttr -s 2 ".wl[120].w[5:6]"  2.121567812055061e-024 1;
	setAttr -s 2 ".wl[121].w[5:6]"  2.3723456135370321e-024 1;
	setAttr -s 4 ".wl[122].w";
	setAttr ".wl[122].w[4:6]" 2.1946496119641434e-018 4.3206164004307506e-009 
		0.99999999567938358;
	setAttr ".wl[122].w[8]" 2.117973445176776e-018;
	setAttr -s 4 ".wl[123].w";
	setAttr ".wl[123].w[4:6]" 1.6503237150284078e-013 6.0396253595344057e-006 
		0.99999396037431609;
	setAttr ".wl[123].w[8]" 1.5924444301846823e-013;
	setAttr -s 4 ".wl[124].w";
	setAttr ".wl[124].w[4:6]" 2.0703824520590986e-009 0.03782561159669056 
		0.96217438433653368;
	setAttr ".wl[124].w[8]" 1.9963933617832418e-009;
	setAttr -s 4 ".wl[125].w";
	setAttr ".wl[125].w[4:6]" 7.6638646672930502e-007 0.30111591140418986 
		0.69888276390141235;
	setAttr ".wl[125].w[8]" 5.5830793086559407e-007;
	setAttr -s 4 ".wl[126].w";
	setAttr ".wl[126].w[4:6]" 0.50001526175474287 0.42498378438558149 0.074997138420989998;
	setAttr ".wl[126].w[8]" 3.8154386857058855e-006;
	setAttr -s 2 ".wl[127].w";
	setAttr ".wl[127].w[4]" 0.85;
	setAttr ".wl[127].w[8]" 0.15000000000000002;
	setAttr -s 2 ".wl[128].w";
	setAttr ".wl[128].w[4]" 0.9;
	setAttr ".wl[128].w[8]" 0.1;
	setAttr -s 2 ".wl[129].w";
	setAttr ".wl[129].w[4]" 0.9;
	setAttr ".wl[129].w[8]" 0.099999999999999978;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[4:6]" 0.50004115230911095 0.49993926588383375 5.2587774521212887e-006;
	setAttr ".wl[130].w[8]" 1.432295608299158e-005;
	setAttr ".wl[130].w[54]" 7.35201330294661e-011;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[4:6]" 0.49999608197632744 0.50000263898292707 1.2766149572102051e-006;
	setAttr ".wl[131].w[8]" 2.4257728278804378e-009;
	setAttr ".wl[131].w[54]" 1.5586970897731229e-014;
	setAttr -s 3 ".wl[132].w[4:6]"  0.49999580882740702 0.42499978912443864 
		0.075004402048154256;
	setAttr -s 2 ".wl[133].w[5:6]"  0.49981537583631319 0.50018462416368659;
	setAttr ".wl[134].w[6]"  1;
	setAttr ".wl[135].w[6]"  0.99999999999999978;
	setAttr ".wl[136].w[6]"  1;
	setAttr ".wl[137].w[6]"  0.99999999999999989;
	setAttr ".wl[138].w[6]"  1;
	setAttr ".wl[139].w[6]"  1;
	setAttr ".wl[140].w[6]"  0.99999999999999989;
	setAttr ".wl[141].w[6]"  1;
	setAttr ".wl[142].w[6]"  1;
	setAttr ".wl[143].w[6]"  0.99999999999999978;
	setAttr ".wl[144].w[6]"  1.0000000000000002;
	setAttr ".wl[145].w[6]"  1.0000000000000002;
	setAttr ".wl[146].w[6]"  1;
	setAttr ".wl[147].w[6]"  1;
	setAttr ".wl[148].w[6]"  1.0000000000000002;
	setAttr ".wl[149].w[6]"  1;
	setAttr ".wl[150].w[6]"  1;
	setAttr ".wl[151].w[6]"  1;
	setAttr ".wl[152].w[6]"  1.0000000000000002;
	setAttr ".wl[153].w[6]"  0.99999999999999989;
	setAttr ".wl[154].w[6]"  1.0000000000000002;
	setAttr ".wl[155].w[6]"  0.99999999999999989;
	setAttr ".wl[156].w[6]"  0.99999999999999989;
	setAttr ".wl[157].w[6]"  1;
	setAttr ".wl[158].w[6]"  1;
	setAttr ".wl[159].w[6]"  0.99999999999999978;
	setAttr ".wl[160].w[6]"  0.99999999999999978;
	setAttr ".wl[161].w[6]"  1;
	setAttr ".wl[162].w[6]"  0.99999999999999978;
	setAttr ".wl[163].w[6]"  1;
	setAttr ".wl[164].w[6]"  1.0000000000000002;
	setAttr ".wl[165].w[6]"  1;
	setAttr -s 2 ".wl[166].w[5:6]"  1.9023640223831665e-031 1;
	setAttr -s 2 ".wl[167].w[5:6]"  1.6381864182275983e-025 1;
	setAttr -s 2 ".wl[168].w[5:6]"  2.1016765868564173e-024 1.00000000000003;
	setAttr -s 2 ".wl[169].w[5:6]"  8.1436926097315642e-029 1;
	setAttr ".wl[170].w[6]"  1;
	setAttr ".wl[171].w[6]"  1;
	setAttr ".wl[172].w[6]"  0.99999999999999978;
	setAttr ".wl[173].w[6]"  1;
	setAttr -s 4 ".wl[174].w";
	setAttr ".wl[174].w[4:6]" 1.3419195468045647e-028 1.5871254460928225e-021 
		1;
	setAttr ".wl[174].w[8]" 1.7534717862995784e-029;
	setAttr -s 4 ".wl[175].w";
	setAttr ".wl[175].w[4:6]" 2.1122739347832903e-027 2.4973394126826297e-020 
		1.0000000000000089;
	setAttr ".wl[175].w[8]" 2.7600855602180059e-028;
	setAttr -s 4 ".wl[176].w";
	setAttr ".wl[176].w[4:6]" 7.4295151716910535e-027 0.091297652781501482 
		0.90870234721849841;
	setAttr ".wl[176].w[8]" 9.7080726915835861e-028;
	setAttr -s 4 ".wl[177].w";
	setAttr ".wl[177].w[4:6]" 1.0146476566422719e-022 5.586416792413245e-016 
		0.99999999999999956;
	setAttr ".wl[177].w[8]" 1.3258318872896312e-023;
	setAttr -s 4 ".wl[178].w";
	setAttr ".wl[178].w[4:6]" 4.3092273632596217e-019 1.2838701365798625e-012 
		0.99999999999871569;
	setAttr ".wl[178].w[8]" 5.6308368085445492e-020;
	setAttr -s 4 ".wl[179].w";
	setAttr ".wl[179].w[4:6]" 1.1641926678688402e-015 1.9979520079997546e-009 
		0.99999999800204697;
	setAttr ".wl[179].w[8]" 1.5212429865306185e-016;
	setAttr -s 4 ".wl[180].w";
	setAttr ".wl[180].w[4:6]" 8.2864163883784037e-012 8.2377050160229676e-006 
		0.99999176228561459;
	setAttr ".wl[180].w[8]" 1.0827809674381387e-012;
	setAttr -s 4 ".wl[181].w";
	setAttr ".wl[181].w[4:6]" 1.3538528606185963e-011 1.7491073751699412e-005 
		0.99998250891097906;
	setAttr ".wl[181].w[8]" 1.7304282311537523e-012;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[4:6]" 3.3463859737039174e-008 0.013719767732860029 
		0.98628019363289821;
	setAttr ".wl[182].w[8]" 5.170299723516522e-009;
	setAttr ".wl[182].w[54]" 8.2189926426699864e-014;
	setAttr -s 5 ".wl[183].w";
	setAttr ".wl[183].w[4:6]" 4.0081135938428955e-011 0.066923501629030324 
		0.93307649832479678;
	setAttr ".wl[183].w[8]" 6.0915701953401816e-012;
	setAttr ".wl[183].w[54]" 1.9529537292258146e-016;
	setAttr -s 5 ".wl[184].w";
	setAttr ".wl[184].w[4:6]" 2.7876730774026368e-014 0.088981424384137586 
		0.91101857561583044;
	setAttr ".wl[184].w[8]" 4.1674486737997408e-015;
	setAttr ".wl[184].w[54]" 2.021250154008612e-019;
	setAttr -s 5 ".wl[185].w";
	setAttr ".wl[185].w[4:6]" 1.0673915006530533e-017 0.10977025521242627 
		0.89022974478757355;
	setAttr ".wl[185].w[8]" 1.5695496435277204e-018;
	setAttr ".wl[185].w[54]" 1.0236424828804941e-022;
	setAttr -s 5 ".wl[186].w";
	setAttr ".wl[186].w[4:6]" 8.6382419239058396e-022 0.089147556257067939 
		0.91085244374293217;
	setAttr ".wl[186].w[8]" 1.2492855332384953e-022;
	setAttr ".wl[186].w[54]" 1.0269268567431699e-026;
	setAttr -s 4 ".wl[187].w";
	setAttr ".wl[187].w[4:6]" 4.4084867022729608e-034 2.5022929092949017e-027 
		1;
	setAttr ".wl[187].w[8]" 4.8983002722829522e-035;
	setAttr -s 4 ".wl[188].w";
	setAttr ".wl[188].w[4:6]" 4.8553012619125273e-040 5.0567916232422173e-033 
		0.99999999999999989;
	setAttr ".wl[188].w[8]" 5.3947590407791879e-041;
	setAttr ".wl[189].w[6]"  0.99999999999999989;
	setAttr ".wl[190].w[6]"  1.0000000000000002;
	setAttr ".wl[191].w[6]"  0.99999999999999989;
	setAttr ".wl[192].w[6]"  1;
	setAttr ".wl[193].w[6]"  1;
	setAttr ".wl[194].w[6]"  1;
	setAttr -s 2 ".wl[195].w[5:6]"  1.4754900110197006e-028 1;
	setAttr -s 2 ".wl[196].w[5:6]"  1.260327506355173e-024 0.99999999999999978;
	setAttr -s 2 ".wl[197].w[5:6]"  7.3500998720058016e-024 0.99999999999999978;
	setAttr -s 2 ".wl[198].w[5:6]"  1.6333821532580207e-020 1;
	setAttr -s 2 ".wl[199].w[5:6]"  2.166854315615851e-020 1;
	setAttr -s 2 ".wl[200].w[5:6]"  2.1177853194907571e-020 1;
	setAttr -s 2 ".wl[201].w[5:6]"  2.3469191658968254e-016 1;
	setAttr -s 4 ".wl[202].w";
	setAttr ".wl[202].w[4:6]" 1.3711065443265107e-015 2.4450192729264058e-005 
		0.99997554980726833;
	setAttr ".wl[202].w[8]" 1.3232817259285563e-015;
	setAttr -s 2 ".wl[203].w[5:6]"  2.8511441884370426e-008 0.99999997148855813;
	setAttr -s 4 ".wl[204].w";
	setAttr ".wl[204].w[4:6]" 1.08823925948579e-008 0.021904051550108977 0.97809592706468873;
	setAttr ".wl[204].w[8]" 1.0502809803325119e-008;
	setAttr -s 4 ".wl[205].w";
	setAttr ".wl[205].w[4:6]" 0.0012923777143174996 0.46848749723422528 0.53001713485294266;
	setAttr ".wl[205].w[8]" 0.00020299019851445786;
	setAttr -s 4 ".wl[206].w";
	setAttr ".wl[206].w[4:6]" 0.50000763360148992 0.42499188929841691 0.07499856869972063;
	setAttr ".wl[206].w[8]" 1.9084003724856297e-006;
	setAttr -s 3 ".wl[207].w[4:6]"  0.4999989994948919 0.42499994043951467 
		0.075001060065593414;
	setAttr -s 3 ".wl[208].w[4:6]"  0.49999579163250019 0.42499974947413188 
		0.075004458893367876;
	setAttr -s 2 ".wl[209].w[5:6]"  0.3998276032736876 0.60017239672631217;
	setAttr ".wl[210].w[6]"  1;
	setAttr ".wl[211].w[6]"  1;
	setAttr ".wl[212].w[6]"  1;
	setAttr ".wl[213].w[6]"  1;
	setAttr ".wl[214].w[6]"  0.99999999999999967;
	setAttr ".wl[215].w[6]"  1.0000000000000122;
	setAttr ".wl[216].w[6]"  0.99999999999999989;
	setAttr ".wl[217].w[6]"  1;
	setAttr ".wl[218].w[6]"  1;
	setAttr ".wl[219].w[6]"  1;
	setAttr ".wl[220].w[6]"  0.99999999999999978;
	setAttr ".wl[221].w[6]"  0.99999999999999978;
	setAttr ".wl[222].w[6]"  0.99999999999999989;
	setAttr ".wl[223].w[6]"  0.99999999999999978;
	setAttr ".wl[224].w[6]"  1.0000005600071518;
	setAttr ".wl[225].w[6]"  1;
	setAttr ".wl[226].w[6]"  1.000000000000004;
	setAttr ".wl[227].w[6]"  1.00000000000006;
	setAttr ".wl[228].w[6]"  0.99999999999999989;
	setAttr ".wl[229].w[6]"  1.0000000000000002;
	setAttr ".wl[230].w[6]"  1;
	setAttr ".wl[231].w[6]"  1;
	setAttr ".wl[232].w[6]"  1;
	setAttr ".wl[233].w[6]"  0.99999999999999978;
	setAttr ".wl[234].w[6]"  0.99999999999999978;
	setAttr ".wl[235].w[6]"  0.99999999999999989;
	setAttr ".wl[236].w[6]"  1.0000000000000002;
	setAttr ".wl[237].w[6]"  0.99999999999999978;
	setAttr ".wl[238].w[6]"  0.99999999999999978;
	setAttr ".wl[239].w[6]"  0.99999999999999989;
	setAttr ".wl[240].w[6]"  1.0000000000000002;
	setAttr -s 2 ".wl[241].w[5:6]"  4.9579833278780329e-032 1.0000000000000002;
	setAttr -s 2 ".wl[242].w[5:6]"  1.2418282815682566e-026 1;
	setAttr -s 2 ".wl[243].w[5:6]"  5.2429069069006684e-021 0.99999999999999989;
	setAttr -s 2 ".wl[244].w[5:6]"  5.4561796630376823e-024 1.0000000000000273;
	setAttr -s 2 ".wl[245].w[5:6]"  2.4101764909195666e-028 0.99999999999999989;
	setAttr ".wl[246].w[6]"  1.0000008085044101;
	setAttr ".wl[247].w[6]"  1;
	setAttr ".wl[248].w[6]"  0.99999999999999989;
	setAttr ".wl[249].w[6]"  1;
	setAttr -s 4 ".wl[250].w";
	setAttr ".wl[250].w[4:6]" 1.4475255731806439e-024 7.9742713970221021e-018 
		1;
	setAttr ".wl[250].w[8]" 1.8914691746792574e-025;
	setAttr -s 4 ".wl[251].w";
	setAttr ".wl[251].w[4:6]" 2.9741974007217148e-023 1.6376569627791688e-016 
		0.99999999999999989;
	setAttr ".wl[251].w[8]" 3.8863580958341119e-024;
	setAttr -s 4 ".wl[252].w";
	setAttr ".wl[252].w[4:6]" 2.1127980091393955e-019 6.2950154374839085e-013 
		0.99999999999937039;
	setAttr ".wl[252].w[8]" 2.7607772274184747e-020;
	setAttr -s 4 ".wl[253].w";
	setAttr ".wl[253].w[4:6]" 6.9331172964198051e-016 1.1898752252514972e-009 
		0.99999999881012402;
	setAttr ".wl[253].w[8]" 9.0594565983208031e-017;
	setAttr -s 4 ".wl[254].w";
	setAttr ".wl[254].w[4:6]" 7.1275391552904491e-016 1.2730427574720586e-009 
		0.99999999872695633;
	setAttr ".wl[254].w[8]" 9.2396502951526476e-017;
	setAttr -s 4 ".wl[255].w";
	setAttr ".wl[255].w[4:6]" 1.3091957029222964e-015 2.7779283963079286e-009 
		0.99999999722207011;
	setAttr ".wl[255].w[8]" 1.631953310338208e-016;
	setAttr -s 4 ".wl[256].w";
	setAttr ".wl[256].w[4:6]" 4.0605411979182317e-019 1.2206658375628495e-012 
		0.99999999999877953;
	setAttr ".wl[256].w[8]" 4.924777739104582e-020;
	setAttr -s 4 ".wl[257].w";
	setAttr ".wl[257].w[4:6]" 1.6758967506302283e-022 6.524625128738754e-016 
		0.99999999999999922;
	setAttr ".wl[257].w[8]" 1.9759478350610823e-023;
	setAttr -s 4 ".wl[258].w";
	setAttr ".wl[258].w[4:6]" 4.1668302420011796e-026 1.9593156862183681e-019 
		1;
	setAttr ".wl[258].w[8]" 4.7844202354667992e-027;
	setAttr -s 4 ".wl[259].w";
	setAttr ".wl[259].w[4:6]" 9.5538254575028526e-030 5.0922774475473267e-023 
		0.99999999999999978;
	setAttr ".wl[259].w[8]" 1.0741273525794979e-030;
	setAttr -s 4 ".wl[260].w";
	setAttr ".wl[260].w[4:6]" 2.0499365894386389e-035 2.135068491866101e-028 
		0.99999999999999989;
	setAttr ".wl[260].w[8]" 2.2776988187427104e-036;
	setAttr -s 4 ".wl[261].w";
	setAttr ".wl[261].w[4:6]" 2.5173484368541395e-041 5.8298798178428286e-034 
		1;
	setAttr ".wl[261].w[8]" 2.7970433771108177e-042;
	setAttr ".wl[262].w[6]"  1;
	setAttr ".wl[263].w[6]"  0.99999999999999989;
	setAttr ".wl[264].w[6]"  1;
	setAttr ".wl[265].w[6]"  1;
	setAttr ".wl[266].w[6]"  1.0000000000000002;
	setAttr -s 2 ".wl[267].w[5:6]"  8.347353794949446e-024 0.99999999999999989;
	setAttr -s 2 ".wl[268].w[5:6]"  3.4534407220560427e-020 0.99999999999999978;
	setAttr -s 2 ".wl[269].w[5:6]"  1.4435973465452265e-019 1.0000000000000002;
	setAttr -s 2 ".wl[270].w[5:6]"  3.2083707650166348e-016 0.99999999999999978;
	setAttr -s 2 ".wl[271].w[5:6]"  2.2150022559366864e-012 0.99999999999778488;
	setAttr -s 2 ".wl[272].w[5:6]"  9.4330535138132507e-012 0.9999999999905671;
	setAttr -s 2 ".wl[273].w[5:6]"  0.1991261331342041 0.80087386686579598;
	setAttr -s 2 ".wl[274].w[5:6]"  0.0026421122838310935 0.99735788771616884;
	setAttr -s 2 ".wl[275].w[5:6]"  9.6343197113703881e-005 0.99990365680288629;
	setAttr -s 2 ".wl[276].w[5:6]"  0.39522905410231407 0.60477094589768587;
	setAttr -s 2 ".wl[277].w[5:6]"  0.032747305674472121 0.96725269432552763;
	setAttr ".wl[278].w[6]"  1;
	setAttr ".wl[279].w[6]"  1;
	setAttr ".wl[280].w[6]"  1.000000000000008;
	setAttr ".wl[281].w[6]"  1.0000000000000038;
	setAttr ".wl[282].w[6]"  1;
	setAttr ".wl[283].w[6]"  1.0000000000000187;
	setAttr ".wl[284].w[6]"  0.99999999999999989;
	setAttr ".wl[285].w[6]"  1.0000000000000178;
	setAttr ".wl[286].w[6]"  1.0000000000000004;
	setAttr ".wl[287].w[6]"  1.0000000000000002;
	setAttr ".wl[288].w[6]"  1;
	setAttr ".wl[289].w[6]"  0.99999999999999978;
	setAttr ".wl[290].w[6]"  1;
	setAttr ".wl[291].w[6]"  0.99999999999999989;
	setAttr ".wl[292].w[6]"  1;
	setAttr ".wl[293].w[6]"  1;
	setAttr ".wl[294].w[6]"  1;
	setAttr ".wl[295].w[6]"  0.99999999999999978;
	setAttr ".wl[296].w[6]"  1.0000000000000002;
	setAttr ".wl[297].w[6]"  1.0000000000000002;
	setAttr ".wl[298].w[6]"  1;
	setAttr ".wl[299].w[6]"  0.99999999999999989;
	setAttr ".wl[300].w[6]"  1;
	setAttr ".wl[301].w[6]"  1.0000000000000002;
	setAttr ".wl[302].w[6]"  1.0000000000000002;
	setAttr ".wl[303].w[6]"  1;
	setAttr -s 2 ".wl[304].w[5:6]"  7.4030385025378859e-033 1;
	setAttr -s 2 ".wl[305].w[5:6]"  5.6072103933635442e-033 1;
	setAttr -s 2 ".wl[306].w[5:6]"  1.0656674027776391e-026 1;
	setAttr -s 2 ".wl[307].w[5:6]"  3.9220486315859769e-022 1;
	setAttr -s 2 ".wl[308].w[5:6]"  5.377894717907236e-020 1;
	setAttr -s 2 ".wl[309].w[5:6]"  8.2671123998336817e-024 1.0000000000000147;
	setAttr -s 2 ".wl[310].w[5:6]"  2.8153773573484657e-028 1.0000000000000002;
	setAttr ".wl[311].w[6]"  1;
	setAttr ".wl[312].w[6]"  1;
	setAttr ".wl[313].w[6]"  0.99999999999999989;
	setAttr ".wl[314].w[6]"  1;
	setAttr -s 4 ".wl[315].w";
	setAttr ".wl[315].w[4:6]" 7.2378497944805239e-021 2.158029950466759e-014 
		0.99999999999997846;
	setAttr ".wl[315].w[8]" 9.4576436891885695e-022;
	setAttr -s 4 ".wl[316].w";
	setAttr ".wl[316].w[4:6]" 3.3581709342125301e-020 1.0007545937488173e-013 
		0.99999999999989997;
	setAttr ".wl[316].w[8]" 4.3880710206346033e-021;
	setAttr -s 4 ".wl[317].w";
	setAttr ".wl[317].w[4:6]" 5.6956219762541404e-020 1.7002988022975467e-013 
		0.9999999999998298;
	setAttr ".wl[317].w[8]" 7.3331529001347808e-021;
	setAttr -s 4 ".wl[318].w";
	setAttr ".wl[318].w[4:6]" 6.0027384794955843e-020 1.7921754798862236e-013 
		0.9999999999998207;
	setAttr ".wl[318].w[8]" 7.7215193226529546e-021;
	setAttr -s 4 ".wl[319].w";
	setAttr ".wl[319].w[4:6]" 2.6427079145915855e-023 1.1925657986167518e-016 
		1.0000000000000002;
	setAttr ".wl[319].w[8]" 3.2453727855297485e-024;
	setAttr -s 4 ".wl[320].w";
	setAttr ".wl[320].w[4:6]" 5.0023270089926214e-027 3.2569967345816923e-020 
		1;
	setAttr ".wl[320].w[8]" 5.945077975884405e-028;
	setAttr -s 4 ".wl[321].w";
	setAttr ".wl[321].w[4:6]" 4.8445048438258117e-031 4.2422916149382341e-024 
		1;
	setAttr ".wl[321].w[8]" 5.5419528756651176e-032;
	setAttr -s 4 ".wl[322].w";
	setAttr ".wl[322].w[4:6]" 6.0158793270576412e-036 1.3931951698018869e-028 
		1;
	setAttr ".wl[322].w[8]" 6.6842854103551451e-037;
	setAttr ".wl[323].w[6]"  1;
	setAttr ".wl[324].w[6]"  1;
	setAttr ".wl[325].w[6]"  1;
	setAttr -s 2 ".wl[326].w[5:6]"  3.7952427568183933e-028 1.0000000000000002;
	setAttr -s 2 ".wl[327].w[5:6]"  3.8518061658962497e-027 1;
	setAttr -s 2 ".wl[328].w[5:6]"  2.7517477080462752e-022 0.99999999999999989;
	setAttr -s 2 ".wl[329].w[5:6]"  7.1090835363764906e-019 1;
	setAttr -s 2 ".wl[330].w[5:6]"  9.3572176227245487e-016 0.999999999999999;
	setAttr -s 2 ".wl[331].w[5:6]"  7.3327596224811542e-015 0.99999999999999256;
	setAttr -s 2 ".wl[332].w[5:6]"  5.6732131660702984e-008 0.99999994326786812;
	setAttr -s 2 ".wl[333].w[5:6]"  0.003270863686962301 0.99672913631303761;
	setAttr -s 2 ".wl[334].w[5:6]"  0.0016118817008719548 0.99838811829912821;
	setAttr ".wl[335].w[6]"  1;
	setAttr -s 2 ".wl[336].w[5:6]"  5.754596060286265e-015 0.999999999999994;
	setAttr -s 2 ".wl[337].w[5:6]"  4.8031979104319198e-011 0.99999999995196798;
	setAttr -s 2 ".wl[338].w[5:6]"  0.0083087262809744562 0.99169127371902566;
	setAttr ".wl[339].w[6]"  1;
	setAttr ".wl[340].w[6]"  1;
	setAttr ".wl[341].w[6]"  0.99999999999999978;
	setAttr ".wl[342].w[6]"  0.99999999999999989;
	setAttr ".wl[343].w[6]"  1.0000000000200058;
	setAttr ".wl[344].w[6]"  1;
	setAttr ".wl[345].w[6]"  1.0000000000102143;
	setAttr ".wl[346].w[6]"  1.0000006137635182;
	setAttr ".wl[347].w[6]"  1;
	setAttr ".wl[348].w[6]"  1;
	setAttr ".wl[349].w[6]"  1;
	setAttr ".wl[350].w[6]"  0.99999999999999989;
	setAttr ".wl[351].w[6]"  1.0000000000000002;
	setAttr ".wl[352].w[6]"  0.99999999999999978;
	setAttr ".wl[353].w[6]"  0.99999999999999989;
	setAttr ".wl[354].w[6]"  1;
	setAttr ".wl[355].w[6]"  0.99999999999999989;
	setAttr ".wl[356].w[6]"  1;
	setAttr ".wl[357].w[6]"  1.0000000000000002;
	setAttr ".wl[358].w[6]"  1;
	setAttr ".wl[359].w[6]"  0.99999999999999989;
	setAttr ".wl[360].w[6]"  0.99999999999999978;
	setAttr ".wl[361].w[6]"  1.0000000000000002;
	setAttr ".wl[362].w[6]"  0.99999999999999978;
	setAttr ".wl[363].w[6]"  1.0000000000000002;
	setAttr ".wl[364].w[6]"  1;
	setAttr ".wl[365].w[6]"  0.99999999999999967;
	setAttr ".wl[366].w[6]"  0.99999999999999989;
	setAttr ".wl[367].w[6]"  1.0000000000000002;
	setAttr -s 2 ".wl[368].w[5:6]"  9.6997592314713161e-028 1;
	setAttr -s 2 ".wl[369].w[5:6]"  3.7105291962607388e-023 0.99999999999999989;
	setAttr -s 2 ".wl[370].w[5:6]"  4.0809166957926906e-022 1;
	setAttr -s 2 ".wl[371].w[5:6]"  8.4468519735792588e-017 0.99999999999999989;
	setAttr -s 2 ".wl[372].w[5:6]"  1.4171996106904032e-019 1;
	setAttr -s 2 ".wl[373].w[5:6]"  1.4843148807251506e-022 1.0000000000000426;
	setAttr -s 2 ".wl[374].w[5:6]"  1.7843772657282844e-027 0.99999999999999978;
	setAttr -s 4 ".wl[375].w";
	setAttr ".wl[375].w[4:6]" 1.1058708083428493e-028 9.8211331259922807e-022 
		0.99999999999999989;
	setAttr ".wl[375].w[8]" 1.3725992275538363e-029;
	setAttr ".wl[376].w[6]"  1;
	setAttr ".wl[377].w[6]"  1;
	setAttr ".wl[378].w[6]"  0.99999999999999978;
	setAttr -s 4 ".wl[379].w";
	setAttr ".wl[379].w[4:6]" 8.329624353677891e-024 4.2137878415446363e-017 
		1.0000000000000002;
	setAttr ".wl[379].w[8]" 1.0588768690315148e-024;
	setAttr -s 4 ".wl[380].w";
	setAttr ".wl[380].w[4:6]" 1.4100875135918459e-023 7.1300751400209182e-017 
		0.99999999999999978;
	setAttr ".wl[380].w[8]" 1.7923268144784582e-024;
	setAttr -s 4 ".wl[381].w";
	setAttr ".wl[381].w[4:6]" 9.5514515988218278e-027 8.2759847654786249e-020 
		1.0000000000000002;
	setAttr ".wl[381].w[8]" 1.1809932303729696e-027;
	setAttr -s 4 ".wl[382].w";
	setAttr ".wl[382].w[4:6]" 3.3233862117288719e-031 5.0269137621410648e-024 
		1;
	setAttr ".wl[382].w[8]" 3.9235086320517655e-032;
	setAttr ".wl[383].w[6]"  1;
	setAttr ".wl[384].w[6]"  1;
	setAttr ".wl[385].w[6]"  1;
	setAttr -s 2 ".wl[386].w[5:6]"  4.5157133638274e-028 1;
	setAttr -s 2 ".wl[387].w[5:6]"  8.0798349213961033e-023 1;
	setAttr -s 2 ".wl[388].w[5:6]"  3.9267093383861273e-018 1;
	setAttr -s 2 ".wl[389].w[5:6]"  6.7753224583632129e-018 1;
	setAttr -s 2 ".wl[390].w[5:6]"  3.9197063399194399e-011 0.99999999996080291;
	setAttr -s 2 ".wl[391].w[5:6]"  1.3909243689716499e-009 0.99999999860907562;
	setAttr -s 2 ".wl[392].w[5:6]"  2.1399591453234878e-007 0.99999978600408523;
	setAttr ".wl[393].w[6]"  1.0000000000000002;
	setAttr ".wl[394].w[6]"  0.99999999999999989;
	setAttr ".wl[395].w[6]"  1;
	setAttr ".wl[396].w[6]"  1;
	setAttr ".wl[397].w[6]"  0.99999999999999989;
	setAttr ".wl[398].w[6]"  1.0000000000000002;
	setAttr ".wl[399].w[6]"  0.99999999999999989;
	setAttr ".wl[400].w[6]"  1;
	setAttr ".wl[401].w[6]"  1;
	setAttr ".wl[402].w[6]"  1;
	setAttr ".wl[403].w[6]"  0.99999999999999978;
	setAttr ".wl[404].w[6]"  1;
	setAttr ".wl[405].w[6]"  1;
	setAttr ".wl[406].w[6]"  1;
	setAttr ".wl[407].w[6]"  0.99999999999999967;
	setAttr ".wl[408].w[6]"  1;
	setAttr ".wl[409].w[6]"  0.99999999999999989;
	setAttr ".wl[410].w[6]"  1;
	setAttr ".wl[411].w[6]"  1.0000000000000002;
	setAttr ".wl[412].w[6]"  1;
	setAttr ".wl[413].w[6]"  0.99999999999999978;
	setAttr ".wl[414].w[6]"  1;
	setAttr ".wl[415].w[6]"  0.99999999999999989;
	setAttr ".wl[416].w[6]"  1;
	setAttr ".wl[417].w[6]"  0.99999999999999989;
	setAttr ".wl[418].w[6]"  1;
	setAttr ".wl[419].w[6]"  0.99999999999999989;
	setAttr ".wl[420].w[6]"  1;
	setAttr ".wl[421].w[6]"  1;
	setAttr ".wl[422].w[6]"  1.0000000000000002;
	setAttr ".wl[423].w[6]"  1;
	setAttr ".wl[424].w[6]"  1.0000000000000002;
	setAttr ".wl[425].w[6]"  0.99999999999999989;
	setAttr ".wl[426].w[6]"  0.99999999999999989;
	setAttr ".wl[427].w[6]"  1.0000000000000002;
	setAttr ".wl[428].w[6]"  1;
	setAttr -s 2 ".wl[429].w[5:6]"  6.6240658201080741e-019 1.0000000000000144;
	setAttr ".wl[430].w[6]"  1.0000000000000051;
	setAttr -s 2 ".wl[431].w[5:6]"  6.1670164783434109e-018 1;
	setAttr -s 2 ".wl[432].w[5:6]"  1.4043353514901146e-015 1.0000007583291777;
	setAttr -s 2 ".wl[433].w[5:6]"  3.2772049211803818e-018 1;
	setAttr ".wl[434].w[6]"  0.99999999999999978;
	setAttr ".wl[435].w[6]"  0.99999999999999978;
	setAttr ".wl[436].w[6]"  1.0000000000000002;
	setAttr -s 2 ".wl[437].w[5:6]"  5.8835187636858586e-014 0.99999999999994116;
	setAttr -s 2 ".wl[438].w[5:6]"  1.1652842953428113e-012 0.99999999999883482;
	setAttr -s 2 ".wl[439].w[5:6]"  1.4990911540259331e-014 0.99999999999998501;
	setAttr ".wl[440].w[6]"  1.0000000000000002;
	setAttr ".wl[441].w[6]"  1;
	setAttr ".wl[442].w[6]"  1;
	setAttr ".wl[443].w[6]"  1.0000000000000002;
	setAttr ".wl[444].w[6]"  1.0000000000113962;
	setAttr ".wl[445].w[6]"  0.99999999999999989;
	setAttr ".wl[446].w[6]"  1;
	setAttr ".wl[447].w[6]"  1;
	setAttr ".wl[448].w[6]"  1;
	setAttr ".wl[449].w[6]"  1;
	setAttr ".wl[450].w[6]"  0.99999999999999989;
	setAttr ".wl[451].w[6]"  1;
	setAttr ".wl[452].w[6]"  1;
	setAttr ".wl[453].w[6]"  1.0000000000070086;
	setAttr ".wl[454].w[6]"  1;
	setAttr ".wl[455].w[6]"  0.99999999999999989;
	setAttr ".wl[456].w[6]"  1;
	setAttr ".wl[457].w[6]"  1.0000000000000002;
	setAttr ".wl[458].w[6]"  0.99999999999999989;
	setAttr ".wl[459].w[6]"  0.99999999999999989;
	setAttr ".wl[460].w[6]"  1.0000000000000628;
	setAttr ".wl[461].w[6]"  1;
	setAttr ".wl[462].w[6]"  1;
	setAttr ".wl[463].w[6]"  1;
	setAttr ".wl[464].w[6]"  1.0000000000000002;
	setAttr ".wl[465].w[6]"  1;
	setAttr ".wl[466].w[6]"  1.0000000000000002;
	setAttr ".wl[467].w[6]"  0.99999999999999989;
	setAttr ".wl[468].w[6]"  1;
	setAttr ".wl[469].w[6]"  0.99999999999999989;
	setAttr ".wl[470].w[6]"  0.99999999999999989;
	setAttr ".wl[471].w[6]"  1;
	setAttr ".wl[472].w[6]"  1;
	setAttr ".wl[473].w[6]"  0.99999999999999978;
	setAttr ".wl[474].w[6]"  1.0000000000000002;
	setAttr ".wl[475].w[6]"  1;
	setAttr ".wl[476].w[6]"  0.99999999999999989;
	setAttr ".wl[477].w[6]"  0.99999999999999989;
	setAttr ".wl[478].w[6]"  1;
	setAttr ".wl[479].w[6]"  1;
	setAttr ".wl[480].w[6]"  1;
	setAttr ".wl[481].w[6]"  1;
	setAttr ".wl[482].w[6]"  1.000000000005753;
	setAttr ".wl[483].w[6]"  1.0000000000000013;
	setAttr ".wl[484].w[6]"  1;
	setAttr ".wl[485].w[6]"  1;
	setAttr ".wl[486].w[6]"  1;
	setAttr ".wl[487].w[6]"  1.0000000000000002;
	setAttr ".wl[488].w[6]"  1.0000000000000002;
	setAttr ".wl[489].w[6]"  1;
	setAttr ".wl[490].w[6]"  1;
	setAttr ".wl[491].w[6]"  1.0000000000000002;
	setAttr ".wl[492].w[6]"  1;
	setAttr ".wl[493].w[6]"  1;
	setAttr ".wl[494].w[6]"  0.99999999999999978;
	setAttr ".wl[495].w[6]"  1;
	setAttr ".wl[496].w[6]"  1;
	setAttr ".wl[497].w[6]"  1;
	setAttr ".wl[498].w[6]"  1;
	setAttr ".wl[499].w[6]"  1;
	setAttr ".wl[500].w[6]"  0.99999999999999989;
	setAttr ".wl[501].w[6]"  1;
	setAttr ".wl[502].w[6]"  0.99999999999999989;
	setAttr ".wl[503].w[6]"  1;
	setAttr ".wl[504].w[6]"  1;
	setAttr ".wl[505].w[6]"  1;
	setAttr ".wl[506].w[6]"  1;
	setAttr ".wl[507].w[6]"  1.0000000000000013;
	setAttr ".wl[508].w[6]"  1;
	setAttr ".wl[509].w[6]"  1;
	setAttr ".wl[510].w[6]"  1.0000000000000013;
	setAttr ".wl[511].w[6]"  0.99999999999999989;
	setAttr ".wl[512].w[6]"  1;
	setAttr ".wl[513].w[6]"  0.99999999999999989;
	setAttr ".wl[514].w[6]"  0.99999999999999989;
	setAttr ".wl[515].w[6]"  0.99999999999999978;
	setAttr ".wl[516].w[6]"  1.0000009419600246;
	setAttr ".wl[517].w[6]"  1.0000000000001228;
	setAttr ".wl[518].w[6]"  1;
	setAttr ".wl[519].w[6]"  1;
	setAttr ".wl[520].w[6]"  1;
	setAttr ".wl[521].w[6]"  1;
	setAttr ".wl[522].w[6]"  1.0000000000000002;
	setAttr ".wl[523].w[6]"  1;
	setAttr ".wl[524].w[6]"  0.99999999999999989;
	setAttr ".wl[525].w[6]"  1;
	setAttr ".wl[526].w[6]"  1.0000000000000009;
	setAttr ".wl[527].w[6]"  1;
	setAttr ".wl[528].w[6]"  1;
	setAttr ".wl[529].w[6]"  1.0000000000000002;
	setAttr ".wl[530].w[6]"  1;
	setAttr ".wl[531].w[6]"  1.0000000000000002;
	setAttr ".wl[532].w[6]"  0.99999999999999978;
	setAttr ".wl[533].w[6]"  1;
	setAttr ".wl[534].w[6]"  1;
	setAttr ".wl[535].w[6]"  1;
	setAttr ".wl[536].w[6]"  1.0000000000000002;
	setAttr ".wl[537].w[6]"  1;
	setAttr ".wl[538].w[6]"  1;
	setAttr ".wl[539].w[6]"  0.99999999999999989;
	setAttr ".wl[540].w[6]"  0.99999999999999978;
	setAttr ".wl[541].w[6]"  0.99999999999999989;
	setAttr ".wl[542].w[6]"  1.0000000000000002;
	setAttr ".wl[543].w[6]"  1;
	setAttr ".wl[544].w[6]"  1;
	setAttr ".wl[545].w[6]"  0.99999999999999989;
	setAttr ".wl[546].w[6]"  1;
	setAttr ".wl[547].w[6]"  1;
	setAttr ".wl[548].w[6]"  1.0000000000000504;
	setAttr ".wl[549].w[6]"  1.0000000000000002;
	setAttr ".wl[550].w[6]"  1;
	setAttr ".wl[551].w[6]"  1.0000000000000004;
	setAttr ".wl[552].w[6]"  1.0000000000000007;
	setAttr ".wl[553].w[6]"  1.000000000000355;
	setAttr ".wl[554].w[6]"  1.0000000000001745;
	setAttr ".wl[555].w[6]"  1;
	setAttr ".wl[556].w[6]"  0.99999999999999989;
	setAttr ".wl[557].w[6]"  1.0000000000000002;
	setAttr ".wl[558].w[6]"  0.99999999999999989;
	setAttr ".wl[559].w[6]"  1;
	setAttr ".wl[560].w[6]"  1;
	setAttr ".wl[561].w[6]"  1;
	setAttr ".wl[562].w[6]"  1;
	setAttr ".wl[563].w[6]"  1;
	setAttr ".wl[564].w[6]"  0.99999999999999978;
	setAttr ".wl[565].w[6]"  1;
	setAttr ".wl[566].w[6]"  1;
	setAttr ".wl[567].w[6]"  1.0000000000000826;
	setAttr ".wl[568].w[6]"  0.99999999999999978;
	setAttr ".wl[569].w[6]"  1.0000000000000002;
	setAttr ".wl[570].w[6]"  1;
	setAttr ".wl[571].w[6]"  0.99999999999999989;
	setAttr ".wl[572].w[6]"  1.0000000000570228;
	setAttr ".wl[573].w[6]"  1.0000000000001878;
	setAttr ".wl[574].w[6]"  1.0000000000000004;
	setAttr ".wl[575].w[6]"  1.0000000000003491;
	setAttr ".wl[576].w[6]"  1;
	setAttr ".wl[577].w[6]"  1.0000000000000002;
	setAttr ".wl[578].w[6]"  0.99999999999999989;
	setAttr ".wl[579].w[6]"  0.99999999999999978;
	setAttr ".wl[580].w[6]"  1;
	setAttr ".wl[581].w[6]"  0.99999999999999989;
	setAttr ".wl[582].w[6]"  0.99999999999999989;
	setAttr ".wl[583].w[6]"  1;
	setAttr ".wl[584].w[6]"  1;
	setAttr ".wl[585].w[6]"  1.0000000000000002;
	setAttr ".wl[586].w[6]"  1;
	setAttr ".wl[587].w[6]"  1;
	setAttr ".wl[588].w[6]"  1.0000000000001483;
	setAttr ".wl[589].w[6]"  0.99999999999999989;
	setAttr ".wl[590].w[6]"  1;
	setAttr ".wl[591].w[6]"  1;
	setAttr ".wl[592].w[6]"  0.99999999999999989;
	setAttr ".wl[593].w[6]"  1;
	setAttr ".wl[594].w[6]"  1.0000006802729331;
	setAttr ".wl[595].w[6]"  1;
	setAttr ".wl[596].w[6]"  0.99999999999999978;
	setAttr ".wl[597].w[6]"  1;
	setAttr ".wl[598].w[6]"  0.99999999999999989;
	setAttr ".wl[599].w[6]"  0.99999999999999989;
	setAttr ".wl[600].w[6]"  1;
	setAttr ".wl[601].w[6]"  1;
	setAttr ".wl[602].w[6]"  1.0000000000000002;
	setAttr ".wl[603].w[6]"  1;
	setAttr ".wl[604].w[6]"  1.0000000000001341;
	setAttr ".wl[605].w[6]"  1;
	setAttr ".wl[606].w[6]"  0.99999999999999989;
	setAttr ".wl[607].w[6]"  1;
	setAttr ".wl[608].w[6]"  1;
	setAttr ".wl[609].w[6]"  1;
	setAttr ".wl[610].w[6]"  1;
	setAttr ".wl[611].w[6]"  1;
	setAttr ".wl[612].w[6]"  1;
	setAttr ".wl[613].w[6]"  1;
	setAttr ".wl[614].w[6]"  0.99999999999999989;
	setAttr ".wl[615].w[6]"  0.99999999999999989;
	setAttr ".wl[616].w[6]"  0.99999999999999978;
	setAttr ".wl[617].w[6]"  0.99999999999999978;
	setAttr ".wl[618].w[6]"  0.99999999999999978;
	setAttr ".wl[619].w[6]"  1;
	setAttr ".wl[620].w[6]"  1;
	setAttr ".wl[621].w[6]"  1;
	setAttr ".wl[622].w[6]"  1;
	setAttr ".wl[623].w[6]"  1;
	setAttr ".wl[624].w[6]"  1.0000000000000002;
	setAttr ".wl[625].w[6]"  0.99999999999999989;
	setAttr ".wl[626].w[6]"  0.99999999999999989;
	setAttr ".wl[627].w[6]"  0.99999999999999989;
	setAttr ".wl[628].w[6]"  1;
	setAttr ".wl[629].w[6]"  1.0000000000000002;
	setAttr ".wl[630].w[6]"  1.0000000000000002;
	setAttr ".wl[631].w[6]"  1.0000000000000002;
	setAttr ".wl[632].w[6]"  1.0000000000000002;
	setAttr ".wl[633].w[6]"  0.99999999999999978;
	setAttr ".wl[634].w[6]"  1;
	setAttr ".wl[635].w[6]"  1;
	setAttr ".wl[636].w[6]"  1;
	setAttr -s 5 ".wl[637].w";
	setAttr ".wl[637].w[4:6]" 2.0662983600876298e-021 3.6127953149798251e-014 
		0.99999999999996392;
	setAttr ".wl[637].w[8]" 2.9960200741314332e-022;
	setAttr ".wl[637].w[54]" 2.3536904620487644e-026;
	setAttr -s 5 ".wl[638].w";
	setAttr ".wl[638].w[4:6]" 2.6419372746861132e-021 4.3006413104588884e-015 
		0.99999999999999567;
	setAttr ".wl[638].w[8]" 3.8335132824995094e-022;
	setAttr ".wl[638].w[54]" 3.0199853368265999e-026;
	setAttr -s 5 ".wl[639].w";
	setAttr ".wl[639].w[4:6]" 2.2011530152245056e-017 1.3580022266027057e-011 
		0.99999999998641997;
	setAttr ".wl[639].w[8]" 3.2580663036275108e-018;
	setAttr ".wl[639].w[54]" 1.9060005344975204e-022;
	setAttr -s 5 ".wl[640].w";
	setAttr ".wl[640].w[4:6]" 1.7222648149038019e-017 9.151577562239182e-011 
		0.99999999990848443;
	setAttr ".wl[640].w[8]" 2.5483404714678821e-018;
	setAttr ".wl[640].w[54]" 1.4887141064142882e-022;
	setAttr -s 5 ".wl[641].w";
	setAttr ".wl[641].w[4:6]" 2.6766116934331315e-026 1.6161454394158805e-019 
		1;
	setAttr ".wl[641].w[8]" 3.8060489805963776e-027;
	setAttr ".wl[641].w[54]" 3.7810890832985546e-031;
	setAttr -s 5 ".wl[642].w";
	setAttr ".wl[642].w[4:6]" 1.5071958500881413e-025 9.0922673691804592e-019 
		0.99999999999999989;
	setAttr ".wl[642].w[8]" 2.1431812897082877e-026;
	setAttr ".wl[642].w[54]" 2.1291302142256458e-030;
	setAttr -s 5 ".wl[643].w";
	setAttr ".wl[643].w[4:6]" 2.053337007735586e-013 5.1239166030218648e-008 
		0.99999994876059783;
	setAttr ".wl[643].w[8]" 3.1000563319082738e-014;
	setAttr ".wl[643].w[54]" 1.1969705976481143e-018;
	setAttr -s 5 ".wl[644].w";
	setAttr ".wl[644].w[4:6]" 1.5977328401866036e-013 2.7909313052082909e-007 
		0.99999972090668554;
	setAttr ".wl[644].w[8]" 2.4117274446002254e-014;
	setAttr ".wl[644].w[54]" 9.3031459398553018e-019;
	setAttr -s 5 ".wl[645].w";
	setAttr ".wl[645].w[4:6]" 1.4301783667611449e-021 2.3284427578174979e-015 
		0.99999999999999756;
	setAttr ".wl[645].w[8]" 2.075219324740721e-022;
	setAttr ".wl[645].w[54]" 1.6348596174785276e-026;
	setAttr -s 4 ".wl[646].w";
	setAttr ".wl[646].w[4:6]" 3.0823121188014995e-033 7.0301055371473111e-024 
		1;
	setAttr ".wl[646].w[8]" 3.4247784581049178e-034;
	setAttr -s 4 ".wl[647].w";
	setAttr ".wl[647].w[4:6]" 7.773838742073013e-032 1.7724233342224874e-022 
		1.0000000000000002;
	setAttr ".wl[647].w[8]" 8.6375663574866048e-033;
	setAttr -s 5 ".wl[648].w";
	setAttr ".wl[648].w[4:6]" 1.8546310690248069e-018 1.1465927907034397e-012 
		0.99999999999885325;
	setAttr ".wl[648].w[8]" 2.7450886335896313e-019;
	setAttr ".wl[648].w[54]" 1.6065956704599461e-023;
	setAttr -s 5 ".wl[649].w";
	setAttr ".wl[649].w[4:6]" 2.6317416640241211e-017 1.623551318052669e-011 
		0.99999999998376443;
	setAttr ".wl[649].w[8]" 3.8954028240521788e-018;
	setAttr ".wl[649].w[54]" 2.2788989849718058e-022;
	setAttr -s 5 ".wl[650].w";
	setAttr ".wl[650].w[4:6]" 1.7232954605345196e-009 1.1514737335995977e-006 
		0.99999884653758742;
	setAttr ".wl[650].w[8]" 2.6537840227789636e-010;
	setAttr ".wl[650].w[54]" 5.0733912285342073e-015;
	setAttr -s 5 ".wl[651].w";
	setAttr ".wl[651].w[4:6]" 1.1010771377838702e-009 0.00054171456501840511 
		0.99945828416436688;
	setAttr ".wl[651].w[8]" 1.6953433980432462e-010;
	setAttr ".wl[651].w[54]" 3.2371687132558289e-015;
	setAttr -s 4 ".wl[652].w";
	setAttr ".wl[652].w[4:6]" 1.9456937607311551e-031 4.436110613306053e-022 
		1;
	setAttr ".wl[652].w[8]" 2.1618738858971265e-032;
	setAttr -s 5 ".wl[653].w";
	setAttr ".wl[653].w[4:6]" 2.3757829298240871e-025 1.4314573328100127e-018 
		1;
	setAttr ".wl[653].w[8]" 3.3782849991369878e-026;
	setAttr ".wl[653].w[54]" 3.3561448644540287e-030;
	setAttr -s 4 ".wl[654].w";
	setAttr ".wl[654].w[4:6]" 5.5103459193390942e-038 1.4093785916775307e-028 
		1;
	setAttr ".wl[654].w[8]" 6.1225837208844334e-039;
	setAttr ".wl[655].w[6]"  1;
	setAttr -s 4 ".wl[656].w";
	setAttr ".wl[656].w[4:6]" 1.9046329861307985e-035 4.8712778344472684e-026 
		1;
	setAttr ".wl[656].w[8]" 2.1162509733223019e-036;
	setAttr ".wl[657].w[6]"  1;
	setAttr -s 5 ".wl[658].w";
	setAttr ".wl[658].w[4:6]" 1.5803201564805057e-020 1.7104059051085401e-014 
		0.9999999999999829;
	setAttr ".wl[658].w[8]" 2.2929677903277975e-021;
	setAttr ".wl[658].w[54]" 1.8049479760436121e-025;
	setAttr -s 5 ".wl[659].w";
	setAttr ".wl[659].w[4:6]" 6.2922456202726052e-017 1.6924786586786777e-011 
		0.99999999998307509;
	setAttr ".wl[659].w[8]" 9.3119823784607175e-018;
	setAttr ".wl[659].w[54]" 5.4396434131534937e-022;
	setAttr -s 5 ".wl[660].w";
	setAttr ".wl[660].w[4:6]" 4.3269236566115997e-022 7.0670650624099125e-016 
		0.99999999999999933;
	setAttr ".wl[660].w[8]" 6.2783102057826266e-023;
	setAttr ".wl[660].w[54]" 4.9475512319932574e-027;
	setAttr -s 5 ".wl[661].w";
	setAttr ".wl[661].w[4:6]" 3.4067838193539742e-021 5.5509390054014446e-015 
		0.99999999999999456;
	setAttr ".wl[661].w[8]" 4.9432832700326053e-022;
	setAttr ".wl[661].w[54]" 3.8946526663411661e-026;
	setAttr -s 5 ".wl[662].w";
	setAttr ".wl[662].w[4:6]" 1.9610076753489554e-013 9.3879755648077579e-010 
		0.99999999906097692;
	setAttr ".wl[662].w[8]" 2.9595094044222931e-014;
	setAttr ".wl[662].w[54]" 1.1397652998844505e-018;
	setAttr -s 5 ".wl[663].w";
	setAttr ".wl[663].w[4:6]" 9.1347416835097555e-010 9.486705328747216e-006 
		0.99999051224077884;
	setAttr ".wl[663].w[8]" 1.404155179389938e-010;
	setAttr ".wl[663].w[54]" 2.6571345400048458e-015;
	setAttr -s 4 ".wl[664].w";
	setAttr ".wl[664].w[4:6]" 5.7942306769265401e-005 0.029715532606317922 
		0.97021742432017;
	setAttr ".wl[664].w[8]" 9.1007667424841395e-006;
	setAttr -s 5 ".wl[665].w";
	setAttr ".wl[665].w[4:6]" 2.2260011875136121e-022 3.6290836812828695e-016 
		0.99999999999999956;
	setAttr ".wl[665].w[8]" 3.2299423659263743e-023;
	setAttr ".wl[665].w[54]" 2.5448820749439616e-027;
	setAttr -s 4 ".wl[666].w";
	setAttr ".wl[666].w[4:6]" 5.4573148029127416e-032 1.2447568603734018e-022 
		1;
	setAttr ".wl[666].w[8]" 6.0636604781542828e-033;
	setAttr -s 4 ".wl[667].w";
	setAttr ".wl[667].w[4:6]" 3.0512165681269487e-035 7.8037730862833786e-026 
		1;
	setAttr ".wl[667].w[8]" 3.3902279752243838e-036;
	setAttr -s 4 ".wl[668].w";
	setAttr ".wl[668].w[4:6]" 4.3131498033765645e-031 9.833717051641146e-022 
		1;
	setAttr ".wl[668].w[8]" 4.792370780064667e-032;
	setAttr ".wl[669].w[6]"  1;
	setAttr ".wl[670].w[6]"  1;
	setAttr -s 5 ".wl[671].w";
	setAttr ".wl[671].w[4:6]" 2.1689643200148783e-020 3.5272801884016108e-014 
		0.99999999999996469;
	setAttr ".wl[671].w[8]" 3.1472374558847415e-021;
	setAttr ".wl[671].w[54]" 2.4791555498848808e-025;
	setAttr -s 5 ".wl[672].w";
	setAttr ".wl[672].w[4:6]" 5.180012636824143e-024 2.1478785084808972e-017 
		0.99999999999999989;
	setAttr ".wl[672].w[8]" 7.3664169943851621e-025;
	setAttr ".wl[672].w[54]" 7.3160021959513292e-029;
	setAttr -s 5 ".wl[673].w";
	setAttr ".wl[673].w[4:6]" 2.4430501381628574e-020 2.134539333220727e-013 
		0.99999999999978628;
	setAttr ".wl[673].w[8]" 3.5441886682175822e-021;
	setAttr ".wl[673].w[54]" 2.7850779284071001e-025;
	setAttr -s 5 ".wl[674].w";
	setAttr ".wl[674].w[4:6]" 5.1380120694034247e-024 3.0957099087919323e-017 
		1;
	setAttr ".wl[674].w[8]" 7.3060838062447843e-025;
	setAttr ".wl[674].w[54]" 7.2582023461039717e-029;
	setAttr -s 5 ".wl[675].w";
	setAttr ".wl[675].w[4:6]" 5.1650963862995971e-025 3.1169312710173219e-018 
		1;
	setAttr ".wl[675].w[8]" 7.3445901229336528e-026;
	setAttr ".wl[675].w[54]" 7.2964325536600982e-030;
	setAttr -s 5 ".wl[676].w";
	setAttr ".wl[676].w[4:6]" 7.8642017356268034e-026 4.7856506028252058e-019 
		1;
	setAttr ".wl[676].w[8]" 1.1182570918771445e-026;
	setAttr ".wl[676].w[54]" 1.1109054487620953e-030;
	setAttr -s 5 ".wl[677].w";
	setAttr ".wl[677].w[4:6]" 8.5557713185562145e-013 1.9022873778899644e-006 
		0.99999809771163739;
	setAttr ".wl[677].w[8]" 1.2897286024510774e-013;
	setAttr ".wl[677].w[54]" 4.9283302117215365e-018;
	setAttr -s 4 ".wl[678].w";
	setAttr ".wl[678].w[4:6]" 1.5001181928791056e-007 0.081436465467035757 
		0.91856336491918811;
	setAttr ".wl[678].w[8]" 1.9601957026830489e-008;
	setAttr -s 5 ".wl[679].w";
	setAttr ".wl[679].w[4:6]" 1.9269865279888266e-025 1.1622474649334054e-018 
		1;
	setAttr ".wl[679].w[8]" 2.7401096728296914e-026;
	setAttr ".wl[679].w[54]" 2.7221461021491875e-030;
	setAttr -s 5 ".wl[680].w";
	setAttr ".wl[680].w[4:6]" 3.7127181546025997e-022 6.045601913091391e-016 
		0.99999999999999933;
	setAttr ".wl[680].w[8]" 5.3872266352896435e-023;
	setAttr ".wl[680].w[54]" 4.2441285487590296e-027;
	setAttr -s 4 ".wl[681].w";
	setAttr ".wl[681].w[4:6]" 1.566849271096478e-034 4.007364747811714e-025 
		1;
	setAttr ".wl[681].w[8]" 1.7409371354757948e-035;
	setAttr ".wl[682].w[6]"  1;
	setAttr -s 2 ".wl[683].w[5:6]"  1.1340339729577766e-034 1;
	setAttr ".wl[684].w[6]"  1;
	setAttr -s 5 ".wl[685].w";
	setAttr ".wl[685].w[4:6]" 1.895447507494225e-016 1.3400144955917461e-009 
		0.99999999865998546;
	setAttr ".wl[685].w[8]" 2.803240756597274e-017;
	setAttr ".wl[685].w[54]" 1.6289469004734603e-021;
	setAttr -s 4 ".wl[686].w";
	setAttr ".wl[686].w[4:6]" 2.8469841990620042e-031 1.0547342225015061e-016 
		1;
	setAttr ".wl[686].w[8]" 3.1633039678356312e-032;
	setAttr -s 5 ".wl[687].w";
	setAttr ".wl[687].w[4:6]" 2.388313101933009e-024 1.3380282136382357e-016 
		0.99999999999999989;
	setAttr ".wl[687].w[8]" 3.3964102709884394e-025;
	setAttr ".wl[687].w[54]" 3.3687536414512291e-029;
	setAttr -s 5 ".wl[688].w";
	setAttr ".wl[688].w[4:6]" 3.5435922162045651e-020 1.8322070324750638e-008 
		0.99999998167792969;
	setAttr ".wl[688].w[8]" 5.1382807871891766e-021;
	setAttr ".wl[688].w[54]" 4.0190360320023757e-025;
	setAttr -s 4 ".wl[689].w";
	setAttr ".wl[689].w[4:6]" 9.4309630239407849e-031 2.1502642019831485e-021 
		1;
	setAttr ".wl[689].w[8]" 1.0478808686037698e-031;
	setAttr -s 4 ".wl[690].w";
	setAttr ".wl[690].w[4:6]" 8.5942190085470828e-030 3.4744149270192027e-020 
		1;
	setAttr ".wl[690].w[8]" 9.5490965840774247e-031;
	setAttr -s 5 ".wl[691].w";
	setAttr ".wl[691].w[4:6]" 5.0036177644702569e-016 6.5812270006738808e-009 
		0.99999999341877255;
	setAttr ".wl[691].w[8]" 7.3965998118295018e-017;
	setAttr ".wl[691].w[54]" 4.2826797029365716e-021;
	setAttr -s 5 ".wl[692].w";
	setAttr ".wl[692].w[4:6]" 7.6786789437307153e-011 8.3051274321333486e-005 
		0.99991694863885461;
	setAttr ".wl[692].w[8]" 1.0037284053055857e-011;
	setAttr ".wl[692].w[54]" 1.0337305319508645e-018;
	setAttr -s 4 ".wl[693].w";
	setAttr ".wl[693].w[4:6]" 8.2531756865170254e-008 0.044825319762942052 
		0.95517458692092472;
	setAttr ".wl[693].w[8]" 1.0784376583987289e-008;
	setAttr -s 4 ".wl[694].w";
	setAttr ".wl[694].w[4:6]" 2.9464273288494521e-031 6.7178839700853624e-022 
		1;
	setAttr ".wl[694].w[8]" 3.2737959217896672e-032;
	setAttr -s 5 ".wl[695].w";
	setAttr ".wl[695].w[4:6]" 5.317777683682596e-026 3.2098098672748749e-019 
		1;
	setAttr ".wl[695].w[8]" 7.5616966961523552e-027;
	setAttr ".wl[695].w[54]" 7.5121120303394203e-031;
	setAttr -s 5 ".wl[696].w";
	setAttr ".wl[696].w[4:6]" 3.4406485970379891e-026 2.078027891015428e-019 
		1;
	setAttr ".wl[696].w[8]" 4.8924820816817973e-027;
	setAttr ".wl[696].w[54]" 4.8603943066917272e-031;
	setAttr -s 2 ".wl[697].w[5:6]"  1.7417361695278067e-031 1;
	setAttr -s 4 ".wl[698].w";
	setAttr ".wl[698].w[4:6]" 4.655591100953657e-037 2.5433254885827151e-027 
		1;
	setAttr ".wl[698].w[8]" 5.172859690306353e-038;
	setAttr -s 2 ".wl[699].w[5:6]"  3.9636772415617302e-028 1;
	setAttr -s 2 ".wl[700].w[5:6]"  4.1125507530800776e-024 1;
	setAttr -s 5 ".wl[701].w";
	setAttr ".wl[701].w[4:6]" 1.8299470504349383e-024 2.157178850060503e-012 
		0.9999999999978425;
	setAttr ".wl[701].w[8]" 2.6022006567870834e-025;
	setAttr ".wl[701].w[54]" 2.5784311065910406e-029;
	setAttr -s 5 ".wl[702].w";
	setAttr ".wl[702].w[4:6]" 2.5770817552310088e-024 3.8675610903842395e-011 
		0.99999999996132438;
	setAttr ".wl[702].w[8]" 3.6634187027868325e-025;
	setAttr ".wl[702].w[54]" 3.612746493294446e-029;
	setAttr -s 5 ".wl[703].w";
	setAttr ".wl[703].w[4:6]" 4.7777759080169419e-022 2.5681909280826264e-007 
		0.99999974318090712;
	setAttr ".wl[703].w[8]" 6.3133874196458135e-023;
	setAttr ".wl[703].w[54]" 8.58257008492182e-028;
	setAttr -s 5 ".wl[704].w";
	setAttr ".wl[704].w[4:6]" 1.5663877296817372e-018 0.00010372396900935962 
		0.99989627603099052;
	setAttr ".wl[704].w[8]" 2.1062742501585175e-019;
	setAttr ".wl[704].w[54]" 4.7063790930951994e-024;
	setAttr -s 4 ".wl[705].w";
	setAttr ".wl[705].w[4:6]" 1.9825060117531213e-034 1.510322908173384e-020 
		1;
	setAttr ".wl[705].w[8]" 2.2027762343404775e-035;
	setAttr -s 4 ".wl[706].w";
	setAttr ".wl[706].w[4:6]" 5.5864043055677988e-037 9.1906279512611512e-024 
		1;
	setAttr ".wl[706].w[8]" 6.2070927234365753e-038;
	setAttr -s 5 ".wl[707].w";
	setAttr ".wl[707].w[4:6]" 2.1946670152127857e-015 0.020575670274087837 
		0.97942432972590965;
	setAttr ".wl[707].w[8]" 2.9482833151844316e-016;
	setAttr ".wl[707].w[54]" 4.0176471998818472e-021;
	setAttr -s 5 ".wl[708].w";
	setAttr ".wl[708].w[4:6]" 1.7822698570734928e-011 1.9393119399329462e-005 
		0.99998060686044887;
	setAttr ".wl[708].w[8]" 2.3288828677363898e-012;
	setAttr ".wl[708].w[54]" 9.1680777008320986e-022;
	setAttr -s 4 ".wl[709].w";
	setAttr ".wl[709].w[4:6]" 1.5315085533518949e-007 0.083141672947944625 
		0.91685815388906688;
	setAttr ".wl[709].w[8]" 2.0012133038212896e-008;
	setAttr -s 4 ".wl[710].w";
	setAttr ".wl[710].w[4:6]" 6.8014548862630368e-035 1.7395359983107481e-025 
		1;
	setAttr ".wl[710].w[8]" 7.5571438843459237e-036;
	setAttr -s 4 ".wl[711].w";
	setAttr ".wl[711].w[4:6]" 6.4466451964797633e-032 1.4699279344813384e-022 
		1;
	setAttr ".wl[711].w[8]" 7.162912367399766e-033;
	setAttr -s 4 ".wl[712].w";
	setAttr ".wl[712].w[4:6]" 1.7402054347331987e-031 3.9690361973431939e-022 
		1;
	setAttr ".wl[712].w[8]" 1.9335543760145643e-032;
	setAttr -s 4 ".wl[713].w";
	setAttr ".wl[713].w[4:6]" 6.1842336550787853e-037 6.4232860476782993e-016 
		0.99999999999999933;
	setAttr ".wl[713].w[8]" 6.8713450765124255e-038;
	setAttr -s 4 ".wl[714].w";
	setAttr ".wl[714].w[4:6]" 2.1001965242068727e-028 1.5175606201232056e-012 
		0.99999999999848244;
	setAttr ".wl[714].w[8]" 2.7442828932669411e-029;
	setAttr -s 4 ".wl[715].w";
	setAttr ".wl[715].w[4:6]" 1.7334550185423839e-031 1.0029459498427207e-014 
		0.99999999999999001;
	setAttr ".wl[715].w[8]" 1.9260539415801259e-032;
	setAttr -s 4 ".wl[716].w";
	setAttr ".wl[716].w[4:6]" 1.9728984720522222e-035 4.98616058563991e-020 
		1;
	setAttr ".wl[716].w[8]" 2.192101230079124e-036;
	setAttr -s 5 ".wl[717].w";
	setAttr ".wl[717].w[4:6]" 5.9528726043080739e-019 4.9004520824016273e-005 
		0.99995099547917576;
	setAttr ".wl[717].w[8]" 7.8814142197908693e-020;
	setAttr ".wl[717].w[54]" 8.136596514719073e-025;
	setAttr -s 5 ".wl[718].w";
	setAttr ".wl[718].w[4:6]" 6.0836127093317833e-019 5.3201282979945928e-005 
		0.99994679871701986;
	setAttr ".wl[718].w[8]" 8.0544774792025454e-020;
	setAttr ".wl[718].w[54]" 8.3134766096999268e-025;
	setAttr -s 5 ".wl[719].w";
	setAttr ".wl[719].w[4:6]" 9.0344938607460063e-012 9.8053808943658171e-006 
		0.99999019460889049;
	setAttr ".wl[719].w[8]" 1.1805317426041907e-012;
	setAttr ".wl[719].w[54]" 2.907172811560744e-025;
	setAttr -s 4 ".wl[720].w";
	setAttr ".wl[720].w[4:6]" 8.1817804052086162e-008 0.044439208190482832 
		0.95556069930062837;
	setAttr ".wl[720].w[8]" 1.0691084785786195e-008;
	setAttr -s 5 ".wl[721].w";
	setAttr ".wl[721].w[4:6]" 1.1140702046809215e-023 7.5421326855378338e-009 
		0.99999999245786697;
	setAttr ".wl[721].w[8]" 1.4624700433050661e-024;
	setAttr ".wl[721].w[54]" 8.2085799185008007e-030;
	setAttr -s 5 ".wl[722].w";
	setAttr ".wl[722].w[4:6]" 2.9112575490945679e-006 2.5269718077305243e-005 
		0.99997149288858456;
	setAttr ".wl[722].w[8]" 3.2613122229214728e-007;
	setAttr ".wl[722].w[54]" 4.5666992542453505e-012;
	setAttr -s 5 ".wl[723].w";
	setAttr ".wl[723].w[4:6]" 0.021918773030489291 0.16374118172463015 0.81188520304720158;
	setAttr ".wl[723].w[8]" 0.0024548003939625506;
	setAttr ".wl[723].w[54]" 4.1803716361060549e-008;
	setAttr -s 4 ".wl[724].w";
	setAttr ".wl[724].w[4:6]" 1.1308101589467925e-029 8.2098983320330735e-006 
		0.99999179010166805;
	setAttr ".wl[724].w[8]" 1.4776155912563123e-030;
	setAttr -s 4 ".wl[725].w";
	setAttr ".wl[725].w[4:6]" 3.15655444565189e-025 0.0075968591391958259 
		0.99240314086083459;
	setAttr ".wl[725].w[8]" 4.1246418302454477e-026;
	setAttr -s 4 ".wl[726].w";
	setAttr ".wl[726].w[4:6]" 1.1382081752149522e-030 8.2258379473599608e-007 
		0.99999917741620525;
	setAttr ".wl[726].w[8]" 1.4872824872941379e-031;
	setAttr ".wl[727].w[6]"  1;
	setAttr -s 2 ".wl[728].w[5:6]"  1.0601403793609073e-030 1;
	setAttr ".wl[729].w[6]"  1;
	setAttr -s 4 ".wl[730].w";
	setAttr ".wl[730].w[4:6]" 4.2724879735288335e-021 1.7547196774436494e-014 
		1.000000000095201;
	setAttr ".wl[730].w[8]" 5.5828267145315179e-022;
	setAttr -s 4 ".wl[731].w";
	setAttr ".wl[731].w[4:6]" 4.6451630973400827e-038 4.72900857292307e-026 
		1.0000000000000104;
	setAttr ".wl[731].w[8]" 5.1612730628785315e-039;
	setAttr ".wl[732].w[6]"  1;
	setAttr ".wl[733].w[6]"  1;
	setAttr -s 4 ".wl[734].w";
	setAttr ".wl[734].w[4:6]" 5.6642557624659606e-040 1.7331014147425337e-010 
		0.99999999982668963;
	setAttr ".wl[734].w[8]" 6.2935940192951466e-041;
	setAttr -s 4 ".wl[735].w";
	setAttr ".wl[735].w[4:6]" 3.8543313653146164e-029 1.0648511330420179e-021 
		1.000000000013235;
	setAttr ".wl[735].w[8]" 5.0363962774951366e-030;
	setAttr -s 2 ".wl[736].w[5:6]"  3.0448847436571493e-030 1.0000000000000002;
	setAttr ".wl[737].w[6]"  1;
	setAttr ".wl[738].w[6]"  1;
	setAttr ".wl[739].w[6]"  1;
	setAttr ".wl[740].w[6]"  1;
	setAttr ".wl[741].w[6]"  1;
	setAttr ".wl[742].w[6]"  1;
	setAttr -s 4 ".wl[743].w";
	setAttr ".wl[743].w[4:6]" 4.724398793393667e-017 9.7750512333342759e-011 
		1.0000002132406027;
	setAttr ".wl[743].w[8]" 6.1733392757597003e-018;
	setAttr -s 4 ".wl[744].w";
	setAttr ".wl[744].w[4:6]" 2.1220525720509516e-024 1.83912043867069e-017 
		1.0000000000108484;
	setAttr ".wl[744].w[8]" 2.7728654734257289e-025;
	setAttr -s 4 ".wl[745].w";
	setAttr ".wl[745].w[4:6]" 1.6924469945874227e-037 1.7228196499079731e-025 
		1.0000000000000373;
	setAttr ".wl[745].w[8]" 1.8804896406147159e-038;
	setAttr -s 2 ".wl[746].w[5:6]"  2.227655550377892e-030 1;
	setAttr -s 2 ".wl[747].w[5:6]"  1.6543391194145231e-030 1;
	setAttr ".wl[748].w[6]"  1;
	setAttr ".wl[749].w[6]"  1;
	setAttr ".wl[750].w[6]"  1;
	setAttr ".wl[751].w[6]"  1;
	setAttr ".wl[752].w[6]"  1;
	setAttr -s 2 ".wl[753].w[5:6]"  1.3424661761411348e-020 1;
	setAttr ".wl[754].w[6]"  0.99999999999999989;
	setAttr ".wl[755].w[6]"  1;
	setAttr -s 4 ".wl[756].w";
	setAttr ".wl[756].w[4:6]" 4.2138925874831151e-020 1.6550586281582694e-013 
		1.0000000000146132;
	setAttr ".wl[756].w[8]" 5.5062601668431231e-021;
	setAttr -s 4 ".wl[757].w";
	setAttr ".wl[757].w[4:6]" 2.0969259231238817e-028 5.7909423671831456e-021 
		1.000000000000032;
	setAttr ".wl[757].w[8]" 2.7400212720681179e-029;
	setAttr -s 4 ".wl[758].w";
	setAttr ".wl[758].w[4:6]" 9.9233967409742891e-038 1.0101849904603394e-025 
		1.0000000000000224;
	setAttr ".wl[758].w[8]" 1.1025955217971861e-038;
	setAttr -s 4 ".wl[759].w";
	setAttr ".wl[759].w[4:6]" 6.9487135195328639e-038 7.0738881669329293e-026 
		1.000000000000016;
	setAttr ".wl[759].w[8]" 7.7207639771704553e-039;
	setAttr -s 2 ".wl[760].w[5:6]"  1.5544556437554596e-029 1;
	setAttr ".wl[761].w[6]"  0.99999999999999967;
	setAttr ".wl[762].w[6]"  1;
	setAttr ".wl[763].w[6]"  1;
	setAttr -s 2 ".wl[764].w[5:6]"  1.8817718411772736e-016 0.99999999999999989;
	setAttr ".wl[765].w[6]"  1;
	setAttr ".wl[766].w[6]"  1;
	setAttr ".wl[767].w[6]"  1;
	setAttr -s 4 ".wl[768].w";
	setAttr ".wl[768].w[4:6]" 5.4730373855769646e-013 5.9411345264369966e-007 
		0.99999940588592884;
	setAttr ".wl[768].w[8]" 7.1515830890988707e-014;
	setAttr -s 4 ".wl[769].w";
	setAttr ".wl[769].w[4:6]" 5.3296857658607015e-016 1.0830792118096443e-009 
		0.99999999891692037;
	setAttr ".wl[769].w[8]" 6.9642631543487186e-017;
	setAttr -s 4 ".wl[770].w";
	setAttr ".wl[770].w[4:6]" 5.0013511135931376e-024 4.3339746024144613e-017 
		1.0000000000000215;
	setAttr ".wl[770].w[8]" 6.5352168977211163e-025;
	setAttr -s 4 ".wl[771].w";
	setAttr ".wl[771].w[4:6]" 9.9745858218366129e-029 2.7549430623686695e-021 
		1.0000000000000158;
	setAttr ".wl[771].w[8]" 1.303363987126291e-029;
	setAttr -s 4 ".wl[772].w";
	setAttr ".wl[772].w[4:6]" 9.2272112649110354e-029 2.5485600546494721e-021 
		1.0000000000000147;
	setAttr ".wl[772].w[8]" 1.2057056882717296e-029;
	setAttr -s 4 ".wl[773].w";
	setAttr ".wl[773].w[4:6]" 5.2085880509876044e-037 5.3014244045429033e-025 
		1.0000000000000226;
	setAttr ".wl[773].w[8]" 5.7872984521441348e-038;
	setAttr -s 2 ".wl[774].w[5:6]"  1.0725621215705425e-029 1;
	setAttr -s 4 ".wl[775].w";
	setAttr ".wl[775].w[4:6]" 4.9502567039270782e-038 3.5703699783191599e-013 
		0.99999999999964295;
	setAttr ".wl[775].w[8]" 5.5002646935998757e-039;
	setAttr -s 2 ".wl[776].w[5:6]"  8.4600373922323254e-017 1;
	setAttr ".wl[777].w[6]"  1;
	setAttr -s 2 ".wl[778].w[5:6]"  3.003876614077023e-023 1;
	setAttr -s 4 ".wl[779].w";
	setAttr ".wl[779].w[4:6]" 3.4339098415298371e-012 3.7240041322040756e-006 
		0.99999627599198537;
	setAttr ".wl[779].w[8]" 4.4870678664912183e-013;
	setAttr -s 4 ".wl[780].w";
	setAttr ".wl[780].w[4:6]" 9.8087888249912807e-020 3.8522970378922088e-013 
		0.99999999999961486;
	setAttr ".wl[780].w[8]" 1.2817066898222291e-020;
	setAttr -s 4 ".wl[781].w";
	setAttr ".wl[781].w[4:6]" 4.9800672186353907e-024 4.3155206734130244e-017 
		1.0000000000000213;
	setAttr ".wl[781].w[8]" 6.5074054390428921e-025;
	setAttr -s 4 ".wl[782].w";
	setAttr ".wl[782].w[4:6]" 4.7179390638818416e-024 4.0884206371993831e-017 
		1.00000000000002;
	setAttr ".wl[782].w[8]" 6.1648851264062128e-025;
	setAttr -s 4 ".wl[783].w";
	setAttr ".wl[783].w[4:6]" 3.9316940035479146e-028 1.0857027152266435e-020 
		1.0000000000000373;
	setAttr ".wl[783].w[8]" 5.1374848723578014e-029;
	setAttr -s 2 ".wl[784].w[5:6]"  1.0905109811024941e-028 1;
	setAttr -s 2 ".wl[785].w[5:6]"  9.9221719502923057e-011 0.99999999990077848;
	setAttr -s 4 ".wl[786].w";
	setAttr ".wl[786].w[4:6]" 2.658889290523438e-036 1.6086954452569783e-011 
		0.99999999998391309;
	setAttr ".wl[786].w[8]" 2.9543104052068817e-037;
	setAttr -s 2 ".wl[787].w[5:6]"  5.3458403705435378e-019 1;
	setAttr -s 4 ".wl[788].w";
	setAttr ".wl[788].w[4:6]" 2.1481794852095726e-015 4.3643654306742866e-009 
		0.99999999563563202;
	setAttr ".wl[788].w[8]" 2.8070111196650313e-016;
	setAttr -s 4 ".wl[789].w";
	setAttr ".wl[789].w[4:6]" 1.9463360249115027e-015 3.9545280605776265e-009 
		0.99999999604546996;
	setAttr ".wl[789].w[8]" 2.5432636806653663e-016;
	setAttr -s 4 ".wl[790].w";
	setAttr ".wl[790].w[4:6]" 1.2721796088045038e-019 4.9960929329131898e-013 
		0.9999999999995004;
	setAttr ".wl[790].w[8]" 1.6623470486004034e-020;
	setAttr -s 4 ".wl[791].w";
	setAttr ".wl[791].w[4:6]" 1.1768971401836156e-019 4.6219837442301957e-013 
		0.99999999999953759;
	setAttr ".wl[791].w[8]" 1.5378421992537983e-020;
	setAttr -s 4 ".wl[792].w";
	setAttr ".wl[792].w[4:6]" 9.0000232521844944e-024 7.7983120546184332e-017 
		1.0000000000000371;
	setAttr ".wl[792].w[8]" 1.1760242924873493e-024;
	setAttr -s 4 ".wl[793].w";
	setAttr ".wl[793].w[4:6]" 4.5660790425783848e-028 1.2609168565663006e-020 
		1;
	setAttr ".wl[793].w[8]" 5.9664261724022222e-029;
	setAttr -s 4 ".wl[794].w";
	setAttr ".wl[794].w[4:6]" 8.7671641639940075e-036 8.9204401113870902e-024 
		1;
	setAttr ".wl[794].w[8]" 9.7412571505545618e-037;
	setAttr -s 4 ".wl[795].w";
	setAttr ".wl[795].w[4:6]" 2.3895041693988356e-037 2.4418237936359784e-025 
		0.99999999999999989;
	setAttr ".wl[795].w[8]" 2.6549947213298529e-038;
	setAttr -s 4 ".wl[796].w";
	setAttr ".wl[796].w[4:6]" 4.3596513366511883e-027 5.1248083216951224e-008 
		0.99999994875191667;
	setAttr ".wl[796].w[8]" 5.696690186653196e-028;
	setAttr -s 4 ".wl[797].w";
	setAttr ".wl[797].w[4:6]" 4.3250488138628593e-036 6.6795344016319062e-007 
		0.99999933204655989;
	setAttr ".wl[797].w[8]" 4.8055918534717552e-037;
	setAttr -s 4 ".wl[798].w";
	setAttr ".wl[798].w[4:6]" 5.9594210120441694e-024 0.016499684058029089 
		0.98350031594197118;
	setAttr ".wl[798].w[8]" 7.7871164795761685e-025;
	setAttr -s 2 ".wl[799].w[5:6]"  9.4510576344804529e-015 0.99999999999999056;
	setAttr -s 4 ".wl[800].w";
	setAttr ".wl[800].w[4:6]" 4.7845434071125752e-019 0.00084637314482859463 
		0.9991536268551714;
	setAttr ".wl[800].w[8]" 6.2519250665865598e-020;
	setAttr -s 4 ".wl[801].w";
	setAttr ".wl[801].w[4:6]" 7.7091602205584945e-019 3.0268646388386147e-012 
		0.99999999999697275;
	setAttr ".wl[801].w[8]" 1.0073498759221405e-019;
	setAttr -s 4 ".wl[802].w";
	setAttr ".wl[802].w[4:6]" 1.7072141435325982e-018 6.7006725687500372e-012 
		0.99999999999329958;
	setAttr ".wl[802].w[8]" 2.2308032359393895e-019;
	setAttr -s 4 ".wl[803].w";
	setAttr ".wl[803].w[4:6]" 2.0910432745973625e-018 0.24013854430210474 
		0.75986145569789498;
	setAttr ".wl[803].w[8]" 2.732349729205293e-019;
	setAttr -s 4 ".wl[804].w";
	setAttr ".wl[804].w[4:6]" 2.2243366557061741e-015 4.5191295402185286e-009 
		0.99999999548086782;
	setAttr ".wl[804].w[8]" 2.9065251620706816e-016;
	setAttr -s 4 ".wl[805].w";
	setAttr ".wl[805].w[4:6]" 2.6336795772478788e-023 0.10959917424857583 
		0.8904008257514241;
	setAttr ".wl[805].w[8]" 3.4414035108936019e-024;
	setAttr -s 4 ".wl[806].w";
	setAttr ".wl[806].w[4:6]" 5.5392534990445763e-027 0.00026204090329624385 
		0.99973795909670404;
	setAttr ".wl[806].w[8]" 7.2380584851410183e-028;
	setAttr -s 4 ".wl[807].w";
	setAttr ".wl[807].w[4:6]" 1.5373923447639903e-022 3.3246460034719865e-005 
		0.99996675353996523;
	setAttr ".wl[807].w[8]" 2.0088956299583471e-023;
	setAttr -s 5 ".wl[808].w";
	setAttr ".wl[808].w[4:6]" 3.6934074430808673e-019 2.5472633004670862e-006 
		0.9999974527366996;
	setAttr ".wl[808].w[8]" 4.8271861880303062e-020;
	setAttr ".wl[808].w[54]" 1.2691293329936761e-026;
	setAttr -s 5 ".wl[809].w";
	setAttr ".wl[809].w[4:6]" 2.0340247994961741e-009 0.012009947317261661 
		0.98799005043407895;
	setAttr ".wl[809].w[8]" 2.1463478543661912e-010;
	setAttr ".wl[809].w[54]" 1.0156123125303451e-017;
	setAttr -s 5 ".wl[810].w";
	setAttr ".wl[810].w[4:6]" 6.0383165326623264e-017 2.7017331762192245e-005 
		0.99997298266823775;
	setAttr ".wl[810].w[8]" 6.3700394594067747e-018;
	setAttr ".wl[810].w[54]" 1.8089251917943307e-025;
	setAttr -s 4 ".wl[811].w";
	setAttr ".wl[811].w[4:6]" 1.119939323754727e-021 0.040804317995978182 
		0.95919568200402183;
	setAttr ".wl[811].w[8]" 1.4634138290692263e-022;
	setAttr -s 4 ".wl[812].w";
	setAttr ".wl[812].w[4:6]" 1.5487925249390591e-009 0.00069711339078246907 
		0.99930288488833741;
	setAttr ".wl[812].w[8]" 1.72087415924745e-010;
	setAttr -s 5 ".wl[813].w";
	setAttr ".wl[813].w[4:6]" 3.8877171224031241e-016 0.006567805387531496 
		0.99343219461246801;
	setAttr ".wl[813].w[8]" 5.1701731310363708e-017;
	setAttr ".wl[813].w[54]" 6.3838508240959251e-022;
	setAttr -s 5 ".wl[814].w";
	setAttr ".wl[814].w[4:6]" 1.1191666307432203e-005 2.2392263058937011e-005 
		0.99996523484649269;
	setAttr ".wl[814].w[8]" 1.1812240990025255e-006;
	setAttr ".wl[814].w[54]" 4.1950013341931694e-014;
	setAttr -s 5 ".wl[815].w";
	setAttr ".wl[815].w[4:6]" 4.1042615021161657e-013 2.3707260950753832e-005 
		0.99997629273859556;
	setAttr ".wl[815].w[8]" 4.3302141537824326e-014;
	setAttr ".wl[815].w[54]" 1.8441455045380593e-021;
	setAttr -s 4 ".wl[816].w";
	setAttr ".wl[816].w[4:6]" 3.4234334842415336e-016 0.22647877135081237 
		0.77352122864918693;
	setAttr ".wl[816].w[8]" 4.4733775643496249e-017;
	setAttr -s 5 ".wl[817].w";
	setAttr ".wl[817].w[4:6]" 0.06981021473041793 0.11813195596442744 0.80468765834144007;
	setAttr ".wl[817].w[8]" 0.0073701709630128375;
	setAttr ".wl[817].w[54]" 7.0153189012679081e-013;
	setAttr -s 5 ".wl[818].w";
	setAttr ".wl[818].w[4:6]" 3.7120376321421351e-009 0.05914630017271514 
		0.9408536957235446;
	setAttr ".wl[818].w[8]" 3.917024039869726e-010;
	setAttr ".wl[818].w[54]" 1.853468097648734e-017;
	setAttr -s 5 ".wl[819].w";
	setAttr ".wl[819].w[4:6]" 2.9266934520798673e-009 0.074961434181331305 
		0.92503856258314399;
	setAttr ".wl[819].w[8]" 3.0883115025399931e-010;
	setAttr ".wl[819].w[54]" 1.4613283243768623e-017;
	setAttr -s 5 ".wl[820].w";
	setAttr ".wl[820].w[4:6]" 8.981447066281374e-013 2.5449437589369674e-005 
		0.9999745505614176;
	setAttr ".wl[820].w[8]" 9.4759043475503865e-014;
	setAttr ".wl[820].w[54]" 4.0356483264006545e-021;
	setAttr -s 5 ".wl[821].w";
	setAttr ".wl[821].w[4:6]" 7.547834467022266e-013 2.1388662470797843e-005 
		0.99997861133669463;
	setAttr ".wl[821].w[8]" 7.9633668051032819e-014;
	setAttr ".wl[821].w[54]" 3.3914792248019657e-021;
	setAttr -s 4 ".wl[822].w";
	setAttr ".wl[822].w[4:6]" 0.17101779891467928 0.44207973192681688 0.38680079764713787;
	setAttr ".wl[822].w[8]" 0.00010167151136588823;
	setAttr -s 5 ".wl[823].w";
	setAttr ".wl[823].w[4:6]" 1.1802554991341397e-012 7.3832427066966203e-005 
		0.99992616757162833;
	setAttr ".wl[823].w[8]" 1.2452323314598963e-013;
	setAttr ".wl[823].w[54]" 5.3033395113309923e-021;
	setAttr -s 5 ".wl[824].w";
	setAttr ".wl[824].w[4:6]" 0.40654723615709332 0.56686844533444447 0.026582950623481677;
	setAttr ".wl[824].w[8]" 1.3677938757023768e-006;
	setAttr ".wl[824].w[54]" 9.1104537218972702e-011;
	setAttr -s 5 ".wl[825].w";
	setAttr ".wl[825].w[4:6]" 1.897456882483675e-020 0.00040026840651456784 
		0.99959973159348514;
	setAttr ".wl[825].w[8]" 2.0015607768651643e-021;
	setAttr ".wl[825].w[54]" 2.3696329259174998e-029;
	setAttr -s 5 ".wl[826].w";
	setAttr ".wl[826].w[4:6]" 2.4082295158891027e-017 1.5247398285172589e-007 
		0.999999847526017;
	setAttr ".wl[826].w[8]" 2.5405287804881843e-018;
	setAttr ".wl[826].w[54]" 7.2140075697690243e-026;
	setAttr -s 5 ".wl[827].w";
	setAttr ".wl[827].w[4:6]" 9.1374126562644907e-017 2.0561731155723814e-008 
		0.99999997943826902;
	setAttr ".wl[827].w[8]" 9.6393890428122445e-018;
	setAttr ".wl[827].w[54]" 2.7385693194569801e-025;
	setAttr -s 4 ".wl[828].w";
	setAttr ".wl[828].w[4:6]" 1.3913131224431952e-024 0.001157382746033915 
		0.99884261725396628;
	setAttr ".wl[828].w[8]" 1.4676023292236321e-025;
	setAttr -s 5 ".wl[829].w";
	setAttr ".wl[829].w[4:6]" 9.6150126523493792e-023 0.1148838396079007 0.88511616039209962;
	setAttr ".wl[829].w[8]" 1.0142537200882134e-023;
	setAttr ".wl[829].w[54]" 1.1902648071497664e-031;
	setAttr -s 5 ".wl[830].w";
	setAttr ".wl[830].w[4:6]" 1.0894784666451148e-021 0.0011136148370560627 
		0.99888638516294392;
	setAttr ".wl[830].w[8]" 1.1492526515819646e-022;
	setAttr ".wl[830].w[54]" 1.3603356311937337e-030;
	setAttr -s 4 ".wl[831].w";
	setAttr ".wl[831].w[4:6]" 0.57506679010120076 0.35204479515093551 0.072888410212956181;
	setAttr ".wl[831].w[8]" 4.5349074540635479e-009;
	setAttr ".wl[832].w[6]"  1.0000000000000027;
	setAttr ".wl[833].w[6]"  1.0000000000251883;
	setAttr ".wl[834].w[6]"  0.99999999999999989;
	setAttr ".wl[835].w[6]"  1;
	setAttr ".wl[836].w[6]"  0.99999999999999989;
	setAttr ".wl[837].w[6]"  0.99999999999999989;
	setAttr ".wl[838].w[6]"  0.99999999999999989;
	setAttr ".wl[839].w[6]"  1;
	setAttr ".wl[840].w[6]"  0.99999999999999989;
	setAttr ".wl[841].w[6]"  1.0000000000000004;
	setAttr ".wl[842].w[6]"  0.99999999999999989;
	setAttr ".wl[843].w[6]"  0.99999999999999989;
	setAttr ".wl[844].w[6]"  1;
	setAttr ".wl[845].w[6]"  1;
	setAttr ".wl[846].w[6]"  1.0000000000194493;
	setAttr ".wl[847].w[6]"  1.0000000000000027;
	setAttr ".wl[848].w[6]"  1;
	setAttr ".wl[849].w[6]"  0.99999999999999989;
	setAttr ".wl[850].w[6]"  0.99999999999999989;
	setAttr ".wl[851].w[6]"  1.0000000000000002;
	setAttr ".wl[852].w[6]"  0.99999999999999989;
	setAttr ".wl[853].w[6]"  1;
	setAttr ".wl[854].w[6]"  1.0000002550077625;
	setAttr ".wl[855].w[6]"  1.0000000000043059;
	setAttr ".wl[856].w[6]"  1.0000000000000024;
	setAttr ".wl[857].w[6]"  1;
	setAttr ".wl[858].w[6]"  0.99999999999999978;
	setAttr -s 2 ".wl[859].w[5:6]"  1.5729192944707959e-020 1;
	setAttr -s 2 ".wl[860].w[5:6]"  6.7077498445548943e-026 0.99999999999999989;
	setAttr -s 2 ".wl[861].w[5:6]"  3.2445591149590996e-034 1;
	setAttr -s 2 ".wl[862].w[5:6]"  2.3027621758520042e-009 0.9999999976972378;
	setAttr -s 2 ".wl[863].w[5:6]"  3.1129484146160919e-005 0.9999688705158537;
	setAttr -s 4 ".wl[864].w";
	setAttr ".wl[864].w[4:6]" 7.4510143050598423e-039 0.10645438231353727 
		0.89354561768646268;
	setAttr ".wl[864].w[8]" 8.2788738776145657e-040;
	setAttr -s 5 ".wl[865].w";
	setAttr ".wl[865].w[4:6]" 0.014743914705127283 0.0720799844126086 0.91311446451850242;
	setAttr ".wl[865].w[8]" 4.2628780188324607e-008;
	setAttr ".wl[865].w[54]" 6.1593734981414723e-005;
	setAttr -s 5 ".wl[866].w";
	setAttr ".wl[866].w[4:6]" 0.14479311971128028 0.31160900335334113 0.5421537873141471;
	setAttr ".wl[866].w[8]" 4.142499640719848e-007;
	setAttr ".wl[866].w[54]" 0.0014436753712671793;
	setAttr -s 5 ".wl[867].w";
	setAttr ".wl[867].w[4:6]" 0.16932614343289437 0.44065911338362151 0.38684977564994261;
	setAttr ".wl[867].w[8]" 4.8037423290485672e-007;
	setAttr ".wl[867].w[54]" 0.0031644871593086094;
	setAttr -s 5 ".wl[868].w";
	setAttr ".wl[868].w[4:6]" 5.4898923815861742e-011 0.023306413824913989 
		0.97669358602370859;
	setAttr ".wl[868].w[8]" 1.6341209954637063e-019;
	setAttr ".wl[868].w[54]" 1.0141312671456059e-010;
	setAttr -s 5 ".wl[869].w";
	setAttr ".wl[869].w[4:6]" 3.0775526427282965e-027 1.3594082034059958e-010 
		0.99999999986405896;
	setAttr ".wl[869].w[8]" 8.8849812041697008e-032;
	setAttr ".wl[869].w[54]" 3.8358941328924515e-033;
	setAttr -s 5 ".wl[870].w";
	setAttr ".wl[870].w[4:6]" 4.9033657357036112e-012 0.31797847646919869 
		0.68202152351684098;
	setAttr ".wl[870].w[8]" 2.6005366335163935e-021;
	setAttr ".wl[870].w[54]" 9.0571960428898648e-012;
	setAttr -s 5 ".wl[871].w";
	setAttr ".wl[871].w[4:6]" 7.3931474760758668e-005 0.65825830730098978 
		0.34155136336107178;
	setAttr ".wl[871].w[8]" 7.3881470777720708e-011;
	setAttr ".wl[871].w[54]" 0.00011639785929557625;
	setAttr -s 5 ".wl[872].w";
	setAttr ".wl[872].w[4:6]" 0.16944439567141989 0.49898031655388975 0.065533714019657019;
	setAttr ".wl[872].w[8]" 1.7201038566508988e-007;
	setAttr ".wl[872].w[54]" 0.26604164647875816;
	setAttr -s 5 ".wl[873].w";
	setAttr ".wl[873].w[4:6]" 4.8593362607434964e-011 2.8218726716828844e-005 
		0.99997222488102788;
	setAttr ".wl[873].w[8]" 1.1899861274726261e-029;
	setAttr ".wl[873].w[54]" 8.9765056017169458e-011;
	setAttr -s 5 ".wl[874].w";
	setAttr ".wl[874].w[4:6]" 9.1646757950973849e-011 5.3239499786311677e-005 
		0.99994735142537861;
	setAttr ".wl[874].w[8]" 7.3093055046971021e-026;
	setAttr ".wl[874].w[54]" 1.6929629726843337e-010;
	setAttr -s 5 ".wl[875].w";
	setAttr ".wl[875].w[4:6]" 9.1494673556676773e-011 5.3044293889677862e-005 
		0.99994750396549292;
	setAttr ".wl[875].w[8]" 2.4261708617642467e-022;
	setAttr ".wl[875].w[54]" 1.6901535634076696e-010;
	setAttr -s 5 ".wl[876].w";
	setAttr ".wl[876].w[4:6]" 4.9199027360828522e-011 2.8460657610838707e-005 
		0.99997193222043268;
	setAttr ".wl[876].w[8]" 6.6392028450867785e-019;
	setAttr ".wl[876].w[54]" 9.0883871246764345e-011;
	setAttr -s 5 ".wl[877].w";
	setAttr ".wl[877].w[4:6]" 4.930279880708234e-011 2.8371996323936449e-005 
		0.99997193228937209;
	setAttr ".wl[877].w[8]" 5.1297677322687428e-016;
	setAttr ".wl[877].w[54]" 9.1067047662960572e-011;
	setAttr -s 5 ".wl[878].w";
	setAttr ".wl[878].w[4:6]" 7.4449535828823683e-016 0.079070468809614047 
		0.92092953119038412;
	setAttr ".wl[878].w[8]" 1.4804078291094156e-017;
	setAttr ".wl[878].w[54]" 1.1291587923690649e-015;
	setAttr -s 4 ".wl[879].w";
	setAttr ".wl[879].w[4:6]" 1.0924820858990228e-037 1.6515216238949537e-005 
		0.99998348478376109;
	setAttr ".wl[879].w[8]" 1.2138644528664141e-038;
	setAttr -s 2 ".wl[880].w[5:6]"  3.6729499976018001e-008 0.99999996327050011;
	setAttr ".wl[881].w[6]"  1.0000000000000002;
	setAttr ".wl[882].w[6]"  1;
	setAttr ".wl[883].w[6]"  0.99999999999999989;
	setAttr ".wl[884].w[6]"  0.99999999999999989;
	setAttr ".wl[885].w[6]"  1;
	setAttr ".wl[886].w[6]"  1;
	setAttr ".wl[887].w[6]"  1;
	setAttr ".wl[888].w[6]"  1;
	setAttr ".wl[889].w[6]"  1;
	setAttr ".wl[890].w[6]"  1;
	setAttr -s 4 ".wl[891].w";
	setAttr ".wl[891].w[4:6]" 3.4789327589939899e-031 3.2963216582167107e-020 
		1;
	setAttr ".wl[891].w[8]" 3.3575860058142015e-031;
	setAttr -s 4 ".wl[892].w";
	setAttr ".wl[892].w[4:6]" 1.1120040129655895e-026 3.1870347693253645e-016 
		0.99999999999999967;
	setAttr ".wl[892].w[8]" 1.0732125746125469e-026;
	setAttr -s 4 ".wl[893].w";
	setAttr ".wl[893].w[4:6]" 2.0076366646818687e-021 1.1022285951402255e-008 
		0.99999998897771414;
	setAttr ".wl[893].w[8]" 1.9375749043840212e-021;
	setAttr -s 4 ".wl[894].w";
	setAttr ".wl[894].w[4:6]" 1.4913736159129103e-014 3.3280179417628475e-006 
		0.9999966719820429;
	setAttr ".wl[894].w[8]" 5.0940482156176619e-016;
	setAttr -s 5 ".wl[895].w";
	setAttr ".wl[895].w[4:6]" 7.893642333958109e-010 0.037899986549473907 
		0.96210001206082796;
	setAttr ".wl[895].w[8]" 5.7283409456170943e-014;
	setAttr ".wl[895].w[54]" 6.0027671920503279e-010;
	setAttr -s 5 ".wl[896].w";
	setAttr ".wl[896].w[4:6]" 5.8867233071838035e-006 0.30127055353802346 
		0.698722699650422;
	setAttr ".wl[896].w[8]" 2.494413720217891e-012;
	setAttr ".wl[896].w[54]" 8.600857528669628e-007;
	setAttr -s 4 ".wl[897].w";
	setAttr ".wl[897].w[4:6]" 0.4999894064912741 0.42499739777455836 0.075013195734084978;
	setAttr ".wl[897].w[8]" 8.254383822054169e-014;
	setAttr -s 5 ".wl[898].w";
	setAttr ".wl[898].w[4:6]" 0.84994457504669818 0.00012257543852719436 2.1630959740093125e-005;
	setAttr ".wl[898].w[8]" 3.9648356442202128e-009;
	setAttr ".wl[898].w[54]" 0.14991121459019865;
	setAttr -s 5 ".wl[899].w";
	setAttr ".wl[899].w[4:6]" 0.89981182639900126 0.00017453398078568522 3.0812923808135345e-005;
	setAttr ".wl[899].w[8]" 8.74351643413852e-013;
	setAttr ".wl[899].w[54]" 0.09998282669553038;
	setAttr -s 5 ".wl[900].w";
	setAttr ".wl[900].w[4:6]" 0.89993996257903697 5.5831715960249293e-005 
		9.8570203693409175e-006;
	setAttr ".wl[900].w[8]" 2.7069235110575204e-017;
	setAttr ".wl[900].w[54]" 0.099994348684633277;
	setAttr -s 5 ".wl[901].w";
	setAttr ".wl[901].w[4:6]" 0.78136989478875207 0.11195301893730233 0.019757273774039047;
	setAttr ".wl[901].w[8]" 0.086919951269030238;
	setAttr ".wl[901].w[54]" 1.8522744982458002e-007;
	setAttr -s 4 ".wl[902].w";
	setAttr ".wl[902].w[4:6]" 0.62400406109014273 0.28606233931770453 0.050481589291361019;
	setAttr ".wl[902].w[8]" 0.039452010300791825;
	setAttr -s 5 ".wl[903].w";
	setAttr ".wl[903].w[4:6]" 0.49999999995765354 0.42500026870123481 0.074999731341111667;
	setAttr ".wl[903].w[8]" 5.4621997826084282e-019;
	setAttr ".wl[903].w[54]" 4.4172064094607667e-024;
	setAttr -s 5 ".wl[904].w";
	setAttr ".wl[904].w[4:6]" 5.4856254792051389e-006 0.50002584076707879 
		0.4999686736074419;
	setAttr ".wl[904].w[8]" 1.0025343837782404e-019;
	setAttr ".wl[904].w[54]" 2.9931485444571964e-023;
	setAttr -s 2 ".wl[905].w[5:6]"  7.3401692578328113e-005 0.99992659830742181;
	setAttr -s 2 ".wl[906].w[5:6]"  4.3397227591457796e-007 0.999999566027724;
	setAttr -s 2 ".wl[907].w[5:6]"  4.801538938267252e-013 0.99999999999951961;
	setAttr ".wl[908].w[6]"  0.99999999999999989;
	setAttr ".wl[909].w[6]"  1.0000000000000002;
	setAttr ".wl[910].w[6]"  1;
	setAttr ".wl[911].w[6]"  1;
	setAttr ".wl[912].w[6]"  1;
	setAttr ".wl[913].w[6]"  0.99999999999999989;
	setAttr ".wl[914].w[6]"  1;
	setAttr ".wl[915].w[6]"  1.0000000000000002;
	setAttr ".wl[916].w[6]"  1;
	setAttr ".wl[917].w[6]"  0.99999999999999989;
	setAttr ".wl[918].w[6]"  1;
	setAttr ".wl[919].w[6]"  1;
	setAttr ".wl[920].w[6]"  1.0000000000137097;
	setAttr ".wl[921].w[6]"  1;
	setAttr ".wl[922].w[6]"  1;
	setAttr ".wl[923].w[6]"  0.99999999999999978;
	setAttr ".wl[924].w[6]"  0.99999999999999989;
	setAttr ".wl[925].w[6]"  0.99999999999999978;
	setAttr ".wl[926].w[6]"  0.99999999999999978;
	setAttr ".wl[927].w[6]"  1;
	setAttr ".wl[928].w[6]"  1;
	setAttr ".wl[929].w[6]"  0.99999999999999978;
	setAttr ".wl[930].w[6]"  1;
	setAttr ".wl[931].w[6]"  1.0000000000000002;
	setAttr ".wl[932].w[6]"  1;
	setAttr ".wl[933].w[6]"  1;
	setAttr ".wl[934].w[6]"  1.0000000000000002;
	setAttr ".wl[935].w[6]"  0.99999999999999978;
	setAttr ".wl[936].w[6]"  0.99999999999999989;
	setAttr -s 4 ".wl[937].w";
	setAttr ".wl[937].w[4:6]" 8.3240302321625882e-037 0.10002473613301424 
		0.89997526386698579;
	setAttr ".wl[937].w[8]" 9.2488879532450845e-038;
	setAttr -s 2 ".wl[938].w[5:6]"  3.7431438931963923e-010 0.99999999962568586;
	setAttr ".wl[939].w[6]"  1.0000000000000007;
	setAttr -s 2 ".wl[940].w[5:6]"  3.1530273488487145e-031 0.99999999999999989;
	setAttr -s 2 ".wl[941].w[5:6]"  3.5300638091321042e-013 0.99999999999964762;
	setAttr -s 2 ".wl[942].w[5:6]"  2.0552027787916203e-016 0.99999999999999989;
	setAttr -s 2 ".wl[943].w[5:6]"  3.8978009007707056e-020 1;
	setAttr -s 2 ".wl[944].w[5:6]"  1.3781525924432821e-024 1.0000000000000002;
	setAttr -s 2 ".wl[945].w[5:6]"  9.7722897448326444e-010 0.99999999902277115;
	setAttr -s 2 ".wl[946].w[5:6]"  2.0418379816258733e-005 0.99997958162018352;
	setAttr -s 5 ".wl[947].w";
	setAttr ".wl[947].w[4:6]" 1.237141084064399e-006 0.091477820103895061 
		0.90852093755889085;
	setAttr ".wl[947].w[8]" 1.7972217167251268e-012;
	setAttr ".wl[947].w[54]" 5.1943325095196562e-009;
	setAttr -s 5 ".wl[948].w";
	setAttr ".wl[948].w[4:6]" 1.4578740189685349e-005 0.00016113243270544705 
		0.99982414272044162;
	setAttr ".wl[948].w[8]" 2.1003424441497009e-011;
	setAttr ".wl[948].w[54]" 1.4608565989782809e-007;
	setAttr -s 5 ".wl[949].w";
	setAttr ".wl[949].w[4:6]" 9.9894535774164506e-009 2.9684931856032253e-006 
		0.99999702142545688;
	setAttr ".wl[949].w[8]" 9.6461808057677139e-015;
	setAttr ".wl[949].w[54]" 1.0063471625556771e-010;
	setAttr -s 5 ".wl[950].w";
	setAttr ".wl[950].w[4:6]" 2.9629799554983171e-012 3.8027433880414932e-009 
		0.99999999619426605;
	setAttr ".wl[950].w[8]" 2.1534728967626518e-018;
	setAttr ".wl[950].w[54]" 3.0009911659997239e-014;
	setAttr -s 5 ".wl[951].w";
	setAttr ".wl[951].w[4:6]" 2.9720525506747872e-023 2.2714432928089313e-011 
		0.99999999997728517;
	setAttr ".wl[951].w[8]" 1.4423142626478496e-029;
	setAttr ".wl[951].w[54]" 3.0440359436055403e-025;
	setAttr -s 5 ".wl[952].w";
	setAttr ".wl[952].w[4:6]" 3.4524945256689159e-009 1.2846779617246728e-005 
		0.9999871443471855;
	setAttr ".wl[952].w[8]" 3.5047775558219798e-015;
	setAttr ".wl[952].w[54]" 5.4207005455494629e-009;
	setAttr -s 5 ".wl[953].w";
	setAttr ".wl[953].w[4:6]" 2.1027236929973217e-005 0.014001377355623826 
		0.98594458090872172;
	setAttr ".wl[953].w[8]" 2.1345663983706908e-011;
	setAttr ".wl[953].w[54]" 3.3014492521557575e-005;
	setAttr -s 5 ".wl[954].w";
	setAttr ".wl[954].w[4:6]" 6.3856793900216639e-015 0.067258947954170228 
		0.93274105207944913;
	setAttr ".wl[954].w[8]" 1.4718619485177087e-030;
	setAttr ".wl[954].w[54]" 1.1796073319389402e-014;
	setAttr -s 5 ".wl[955].w";
	setAttr ".wl[955].w[4:6]" 1.1441001668407231e-014 0.089201023992539472 
		0.91079897605286453;
	setAttr ".wl[955].w[8]" 7.8842342117198279e-027;
	setAttr ".wl[955].w[54]" 2.1134617991914812e-014;
	setAttr -s 5 ".wl[956].w";
	setAttr ".wl[956].w[4:6]" 5.6098695364174015e-015 0.10987349586342773 
		0.89012650416219585;
	setAttr ".wl[956].w[8]" 2.2239807647036032e-023;
	setAttr ".wl[956].w[54]" 1.0362942760030098e-014;
	setAttr -s 5 ".wl[957].w";
	setAttr ".wl[957].w[4:6]" 4.5552288280597854e-015 0.0891025434647571 0.91089745655143606;
	setAttr ".wl[957].w[8]" 3.2454201057230118e-020;
	setAttr ".wl[957].w[54]" 8.4141975283429052e-015;
	setAttr -s 5 ".wl[958].w";
	setAttr ".wl[958].w[4:6]" 5.0505898495729238e-019 2.6597087242593229e-005 
		0.99997340291275871;
	setAttr ".wl[958].w[8]" 1.6160686809703381e-024;
	setAttr ".wl[958].w[54]" 9.3295339200079645e-019;
	setAttr -s 2 ".wl[959].w[5:6]"  6.7719820499146625e-009 0.99999999322801791;
	setAttr -s 2 ".wl[960].w[5:6]"  1.0430672407094578e-011 0.99999999998956923;
	setAttr -s 2 ".wl[961].w[5:6]"  4.5199342707325363e-015 0.99999999999999545;
	setAttr -s 2 ".wl[962].w[5:6]"  1.031888951291573e-018 1;
	setAttr -s 2 ".wl[963].w[5:6]"  9.0138093873187958e-024 1;
	setAttr ".wl[964].w[6]"  0.99999999999999989;
	setAttr ".wl[965].w[6]"  0.99999999999999978;
	setAttr ".wl[966].w[6]"  0.99999999999999989;
	setAttr ".wl[967].w[6]"  1.0000000000000002;
	setAttr ".wl[968].w[6]"  1;
	setAttr ".wl[969].w[6]"  1;
	setAttr -s 4 ".wl[970].w";
	setAttr ".wl[970].w[4:6]" 3.0255296833043717e-030 8.2367809649417065e-016 
		0.99999999999999922;
	setAttr ".wl[970].w[8]" 2.9199978351337202e-030;
	setAttr -s 4 ".wl[971].w";
	setAttr ".wl[971].w[4:6]" 6.2844955715671969e-026 2.7525853774122298e-012 
		0.99999999999724742;
	setAttr ".wl[971].w[8]" 6.0652655875542564e-026;
	setAttr -s 4 ".wl[972].w";
	setAttr ".wl[972].w[4:6]" 2.0659440670234253e-025 9.0519062741626717e-012 
		0.99999999999094791;
	setAttr ".wl[972].w[8]" 1.99387513524889e-025;
	setAttr -s 4 ".wl[973].w";
	setAttr ".wl[973].w[4:6]" 2.9133522092561612e-017 2.3073848192200592e-005 
		0.99997692615180767;
	setAttr ".wl[973].w[8]" 1.4763154296004175e-019;
	setAttr -s 5 ".wl[974].w";
	setAttr ".wl[974].w[4:6]" 3.6543912699981178e-013 2.3127111477231804e-005 
		0.99997687288787918;
	setAttr ".wl[974].w[8]" 1.1903744540631242e-017;
	setAttr ".wl[974].w[54]" 2.7808943675437918e-013;
	setAttr -s 5 ".wl[975].w";
	setAttr ".wl[975].w[4:6]" 4.4269900382543296e-009 0.022131861606011476 
		0.97786813058313182;
	setAttr ".wl[975].w[8]" 1.6386756473792343e-014;
	setAttr ".wl[975].w[54]" 3.3838502692153168e-009;
	setAttr -s 5 ".wl[976].w";
	setAttr ".wl[976].w[4:6]" 0.00077048329316339891 0.46888043669123042 0.52959758028152371;
	setAttr ".wl[976].w[8]" 1.5119750679646791e-013;
	setAttr ".wl[976].w[54]" 0.00075149973393105057;
	setAttr -s 5 ".wl[977].w";
	setAttr ".wl[977].w[4:6]" 0.49999025080650211 0.42499758744580307 0.075012161730923163;
	setAttr ".wl[977].w[8]" 4.3657453440145266e-017;
	setAttr ".wl[977].w[54]" 1.6771582460016163e-011;
	setAttr -s 5 ".wl[978].w";
	setAttr ".wl[978].w[4:6]" 0.49999675739457178 0.42500028503549742 0.075002952688674324;
	setAttr ".wl[978].w[8]" 9.8178194002349449e-019;
	setAttr ".wl[978].w[54]" 4.8812564410989641e-009;
	setAttr -s 5 ".wl[979].w";
	setAttr ".wl[979].w[4:6]" 0.49999925115817356 0.42500047941228047 0.075000084602168823;
	setAttr ".wl[979].w[8]" 1.848273766499917e-007;
	setAttr ".wl[979].w[54]" 4.5189779673062466e-016;
	setAttr -s 5 ".wl[980].w";
	setAttr ".wl[980].w[4:6]" 1.0264024619101596e-005 0.40010257965565094 
		0.59988715631275302;
	setAttr ".wl[980].w[8]" 6.9771349387833843e-012;
	setAttr ".wl[980].w[54]" 1.6993075022231553e-027;
	setAttr -s 5 ".wl[981].w";
	setAttr ".wl[981].w[4:6]" 6.7421820384335857e-022 0.00018035529440476672 
		0.99981964470559548;
	setAttr ".wl[981].w[8]" 5.8619384697534948e-024;
	setAttr ".wl[981].w[54]" 1.5310858985844296e-027;
	setAttr -s 2 ".wl[982].w[5:6]"  1.7055881845011976e-005 0.9999829441181548;
	setAttr -s 2 ".wl[983].w[5:6]"  9.8806157035483873e-010 0.99999999901193837;
	setAttr -s 2 ".wl[984].w[5:6]"  1.9127879398361423e-011 0.99999999998087219;
	setAttr -s 2 ".wl[985].w[5:6]"  3.6092363041108449e-013 0.99999999999963896;
	setAttr ".wl[986].w[6]"  1;
	setAttr ".wl[987].w[6]"  1;
	setAttr ".wl[988].w[6]"  1;
	setAttr ".wl[989].w[6]"  1;
	setAttr ".wl[990].w[6]"  1;
	setAttr ".wl[991].w[6]"  1;
	setAttr ".wl[992].w[6]"  1;
	setAttr ".wl[993].w[6]"  1;
	setAttr ".wl[994].w[6]"  1;
	setAttr ".wl[995].w[6]"  1.0000001406755956;
	setAttr ".wl[996].w[6]"  1.000000016647391;
	setAttr ".wl[997].w[6]"  1.000000000000008;
	setAttr ".wl[998].w[6]"  0.99999999999999978;
	setAttr ".wl[999].w[6]"  1;
	setAttr ".wl[1000].w[6]"  0.99999999999999967;
	setAttr ".wl[1001].w[6]"  0.99999999999999967;
	setAttr ".wl[1002].w[6]"  0.99999999999999978;
	setAttr ".wl[1003].w[6]"  1;
	setAttr ".wl[1004].w[6]"  0.99999999999999989;
	setAttr ".wl[1005].w[6]"  1;
	setAttr ".wl[1006].w[6]"  0.99999999999999989;
	setAttr ".wl[1007].w[6]"  1;
	setAttr ".wl[1008].w[6]"  0.99999999999999989;
	setAttr ".wl[1009].w[6]"  1;
	setAttr ".wl[1010].w[6]"  1.0000000000000002;
	setAttr ".wl[1011].w[6]"  1;
	setAttr -s 2 ".wl[1012].w[5:6]"  4.4558200360846379e-005 0.99995544179963913;
	setAttr -s 2 ".wl[1013].w[5:6]"  2.3166881825261356e-005 0.99997683315579167;
	setAttr -s 2 ".wl[1014].w[5:6]"  1.4706147355524678e-009 0.99999999852939336;
	setAttr ".wl[1015].w[6]"  1;
	setAttr -s 2 ".wl[1016].w[5:6]"  2.0757678002137482e-028 0.99999999999999989;
	setAttr -s 2 ".wl[1017].w[5:6]"  1.8491778232116781e-013 0.99999999999981504;
	setAttr -s 5 ".wl[1018].w";
	setAttr ".wl[1018].w[4:6]" 7.0100319746885677e-023 7.3387799279101924e-017 
		1;
	setAttr ".wl[1018].w[8]" 3.4019329246709157e-029;
	setAttr ".wl[1018].w[54]" 7.1728961217052872e-025;
	setAttr -s 2 ".wl[1019].w[5:6]"  1.43863684870557e-020 1;
	setAttr -s 2 ".wl[1020].w[5:6]"  3.849148078942218e-024 1;
	setAttr -s 5 ".wl[1021].w";
	setAttr ".wl[1021].w[4:6]" 2.5125649661937726e-014 1.5650086645492802e-012 
		0.99999999999840972;
	setAttr ".wl[1021].w[8]" 1.826056854643517e-020;
	setAttr ".wl[1021].w[54]" 2.5441892642820782e-016;
	setAttr -s 5 ".wl[1022].w";
	setAttr ".wl[1022].w[4:6]" 1.5145773494315054e-009 3.8849237520891155e-008 
		0.99999995962092747;
	setAttr ".wl[1022].w[8]" 1.4624896170621983e-015;
	setAttr ".wl[1022].w[54]" 1.5256176589016583e-011;
	setAttr -s 5 ".wl[1023].w";
	setAttr ".wl[1023].w[4:6]" 8.0322573157369688e-013 2.9282892540546024e-010 
		0.99999999970636;
	setAttr ".wl[1023].w[8]" 5.8376958448214748e-019;
	setAttr ".wl[1023].w[54]" 8.1344836617380323e-015;
	setAttr -s 5 ".wl[1024].w";
	setAttr ".wl[1024].w[4:6]" 1.397622033040747e-016 6.08439429310933e-013 
		0.99999999999939126;
	setAttr ".wl[1024].w[8]" 8.1399654282824199e-023;
	setAttr ".wl[1024].w[54]" 1.4231725862572902e-018;
	setAttr -s 5 ".wl[1025].w";
	setAttr ".wl[1025].w[4:6]" 8.0203614412107498e-023 3.3729347166901634e-018 
		1;
	setAttr ".wl[1025].w[8]" 3.8922197712970305e-029;
	setAttr ".wl[1025].w[54]" 8.2146152467626626e-025;
	setAttr -s 5 ".wl[1026].w";
	setAttr ".wl[1026].w[4:6]" 2.8689224874286277e-013 9.4727527805037017e-010 
		0.99999999905198722;
	setAttr ".wl[1026].w[8]" 2.9123681642139918e-019;
	setAttr ".wl[1026].w[54]" 4.5044444175143929e-013;
	setAttr -s 5 ".wl[1027].w";
	setAttr ".wl[1027].w[4:6]" 1.3670660435356105e-009 2.0676857807759463e-006 
		0.99999792880074612;
	setAttr ".wl[1027].w[8]" 1.3877682791634765e-015;
	setAttr ".wl[1027].w[54]" 2.1464061978665013e-009;
	setAttr -s 5 ".wl[1028].w";
	setAttr ".wl[1028].w[4:6]" 4.4823302049402683e-019 1.273265115108373e-005 
		0.99998726734885035;
	setAttr ".wl[1028].w[8]" 2.8023324320187881e-035;
	setAttr ".wl[1028].w[54]" 8.2800736632362995e-019;
	setAttr -s 5 ".wl[1029].w";
	setAttr ".wl[1029].w[4:6]" 1.3988273015614464e-018 3.1527390157016603e-005 
		0.99996847260984678;
	setAttr ".wl[1029].w[8]" 3.9728393858672901e-031;
	setAttr ".wl[1029].w[54]" 2.5840115675278725e-018;
	setAttr -s 5 ".wl[1030].w";
	setAttr ".wl[1030].w[4:6]" 9.0600277477051249e-019 4.7367146489424204e-005 
		0.99995263285351332;
	setAttr ".wl[1030].w[8]" 1.1563577411820167e-027;
	setAttr ".wl[1030].w[54]" 1.6736316346696802e-018;
	setAttr -s 5 ".wl[1031].w";
	setAttr ".wl[1031].w[4:6]" 3.9337254181849951e-023 4.2353000898216469e-009 
		0.99999999576469989;
	setAttr ".wl[1031].w[8]" 1.2070943834500552e-032;
	setAttr ".wl[1031].w[54]" 7.2666525343589735e-023;
	setAttr -s 2 ".wl[1032].w[5:6]"  3.3113658754618264e-012 0.99999999999668832;
	setAttr -s 2 ".wl[1033].w[5:6]"  9.5080339279392374e-015 0.99999999999999034;
	setAttr -s 2 ".wl[1034].w[5:6]"  3.6010873936958808e-018 0.99999999999999956;
	setAttr -s 2 ".wl[1035].w[5:6]"  4.5484454167497525e-022 1;
	setAttr ".wl[1036].w[6]"  1.0000000000000002;
	setAttr ".wl[1037].w[6]"  1;
	setAttr ".wl[1038].w[6]"  1;
	setAttr ".wl[1039].w[6]"  1;
	setAttr ".wl[1040].w[6]"  1;
	setAttr -s 4 ".wl[1041].w";
	setAttr ".wl[1041].w[4:6]" 2.9360917023627598e-035 6.2882881898347321e-020 
		0.99999999999999989;
	setAttr ".wl[1041].w[8]" 2.8336794915493293e-035;
	setAttr -s 4 ".wl[1042].w";
	setAttr ".wl[1042].w[4:6]" 1.4668828462230229e-030 3.7891095553749642e-012 
		0.99999999999621125;
	setAttr ".wl[1042].w[8]" 1.4157173069569624e-030;
	setAttr -s 4 ".wl[1043].w";
	setAttr ".wl[1043].w[4:6]" 1.6121458882125289e-035 2.1000859654053365e-011 
		0.99999999997900679;
	setAttr ".wl[1043].w[8]" 1.5559135081295905e-035;
	setAttr -s 5 ".wl[1044].w";
	setAttr ".wl[1044].w[4:6]" 8.5246009660417534e-007 0.19980646980011044 
		0.80019182796154287;
	setAttr ".wl[1044].w[8]" 1.9652849437549665e-016;
	setAttr ".wl[1044].w[54]" 8.4977825026140144e-007;
	setAttr -s 5 ".wl[1045].w";
	setAttr ".wl[1045].w[4:6]" 6.6765529326602103e-014 0.0026578881090188002 
		0.99734211189091437;
	setAttr ".wl[1045].w[8]" 1.9273827166323938e-018;
	setAttr ".wl[1045].w[54]" 1.2493494169129107e-017;
	setAttr -s 5 ".wl[1046].w";
	setAttr ".wl[1046].w[4:6]" 7.5032199836349989e-015 9.6381958438571737e-005 
		0.99990361804155414;
	setAttr ".wl[1046].w[8]" 2.1644656523589844e-019;
	setAttr ".wl[1046].w[54]" 1.4291588517688075e-017;
	setAttr -s 5 ".wl[1047].w";
	setAttr ".wl[1047].w[4:6]" 6.2856816398127855e-006 0.39533718363989273 
		0.60465525491069305;
	setAttr ".wl[1047].w[8]" 5.3118595407257831e-018;
	setAttr ".wl[1047].w[54]" 1.2757677746909702e-006;
	setAttr -s 5 ".wl[1048].w";
	setAttr ".wl[1048].w[4:6]" 9.2832912877497096e-011 0.033199175118902927 
		0.96680082462351313;
	setAttr ".wl[1048].w[8]" 2.9059284669913438e-015;
	setAttr ".wl[1048].w[54]" 1.6474806644460623e-010;
	setAttr -s 2 ".wl[1049].w[5:6]"  1.8566614359637053e-009 0.99999999814333862;
	setAttr -s 2 ".wl[1050].w[5:6]"  3.8640621522757453e-011 0.99999999996135946;
	setAttr -s 2 ".wl[1051].w[5:6]"  1.8610385324794151e-011 1.000000902491172;
	setAttr -s 2 ".wl[1052].w[5:6]"  1.4694274032300699e-016 1;
	setAttr ".wl[1053].w[6]"  0.99999999999999989;
	setAttr ".wl[1054].w[6]"  1;
	setAttr ".wl[1055].w[6]"  1;
	setAttr ".wl[1056].w[6]"  1;
	setAttr ".wl[1057].w[6]"  1.0000000000000002;
	setAttr ".wl[1058].w[6]"  0.99999999999999989;
	setAttr ".wl[1059].w[6]"  1;
	setAttr ".wl[1060].w[6]"  1;
	setAttr ".wl[1061].w[6]"  1;
	setAttr ".wl[1062].w[6]"  1;
	setAttr ".wl[1063].w[6]"  1.0000000000000275;
	setAttr ".wl[1064].w[6]"  1.0000000000000031;
	setAttr ".wl[1065].w[6]"  1.0000005380425137;
	setAttr ".wl[1066].w[6]"  1;
	setAttr ".wl[1067].w[6]"  1;
	setAttr ".wl[1068].w[6]"  1;
	setAttr ".wl[1069].w[6]"  1;
	setAttr ".wl[1070].w[6]"  1;
	setAttr ".wl[1071].w[6]"  0.99999999999999978;
	setAttr ".wl[1072].w[6]"  0.99999999999999978;
	setAttr ".wl[1073].w[6]"  0.99999999999999978;
	setAttr ".wl[1074].w[6]"  0.99999999999999989;
	setAttr ".wl[1075].w[6]"  1;
	setAttr ".wl[1076].w[6]"  0.99999999999999989;
	setAttr -s 2 ".wl[1077].w[5:6]"  4.2902686401762865e-005 0.99995709731361793;
	setAttr -s 2 ".wl[1078].w[5:6]"  3.4427049124235563e-009 0.99999999655730087;
	setAttr ".wl[1079].w[6]"  1;
	setAttr ".wl[1080].w[6]"  1;
	setAttr ".wl[1081].w[6]"  1;
	setAttr -s 5 ".wl[1082].w";
	setAttr ".wl[1082].w[4:6]" 8.698617777757288e-019 1.6923986632862359e-016 
		0.99999999999999989;
	setAttr ".wl[1082].w[8]" 5.0662155432962025e-025;
	setAttr ".wl[1082].w[54]" 8.854362630522068e-021;
	setAttr -s 5 ".wl[1083].w";
	setAttr ".wl[1083].w[4:6]" 1.5724123176722218e-022 8.7608004151588624e-020 
		1;
	setAttr ".wl[1083].w[8]" 7.6308371402041758e-029;
	setAttr ".wl[1083].w[54]" 1.6089441896809293e-024;
	setAttr -s 4 ".wl[1084].w";
	setAttr ".wl[1084].w[4:6]" 5.3839316055181553e-036 9.8673836947637985e-021 
		1.0000000000000002;
	setAttr ".wl[1084].w[54]" 9.9455747910724229e-036;
	setAttr -s 2 ".wl[1085].w[5:6]"  4.3226827786426985e-030 1;
	setAttr -s 5 ".wl[1086].w";
	setAttr ".wl[1086].w[4:6]" 1.0015590381329259e-014 4.7306570617594357e-013 
		0.99999999999951672;
	setAttr ".wl[1086].w[8]" 7.2785607801597002e-021;
	setAttr ".wl[1086].w[54]" 1.0141668519041558e-016;
	setAttr -s 5 ".wl[1087].w";
	setAttr ".wl[1087].w[4:6]" 8.9843351660183812e-019 1.0066131378704834e-016 
		1.0000000000000002;
	setAttr ".wl[1087].w[8]" 5.2324840730123003e-025;
	setAttr ".wl[1087].w[54]" 9.1452032259682951e-021;
	setAttr -s 5 ".wl[1088].w";
	setAttr ".wl[1088].w[4:6]" 4.776052184641785e-025 2.1049852445511581e-022 
		1;
	setAttr ".wl[1088].w[8]" 2.3177938753412291e-031;
	setAttr ".wl[1088].w[54]" 4.8870142555663735e-027;
	setAttr -s 5 ".wl[1089].w";
	setAttr ".wl[1089].w[4:6]" 5.4587361310555463e-018 2.3076603039297716e-014 
		0.9999999999999768;
	setAttr ".wl[1089].w[8]" 5.5414007855342638e-024;
	setAttr ".wl[1089].w[54]" 8.5706649795573063e-018;
	setAttr -s 5 ".wl[1090].w";
	setAttr ".wl[1090].w[4:6]" 2.4299240048835181e-014 6.513011071575491e-011 
		0.99999999993480726;
	setAttr ".wl[1090].w[8]" 2.4667216853325673e-020;
	setAttr ".wl[1090].w[54]" 3.8151806703544062e-014;
	setAttr -s 4 ".wl[1091].w";
	setAttr ".wl[1091].w[4:6]" 3.8769612436285061e-023 2.3115982698814014e-009 
		0.99999999768840175;
	setAttr ".wl[1091].w[54]" 7.1617938034496158e-023;
	setAttr -s 5 ".wl[1092].w";
	setAttr ".wl[1092].w[4:6]" 8.5519966307556982e-023 4.3624771447339146e-009 
		0.99999999563752284;
	setAttr ".wl[1092].w[8]" 3.2011551214554561e-036;
	setAttr ".wl[1092].w[54]" 1.5797845949041509e-022;
	setAttr -s 5 ".wl[1093].w";
	setAttr ".wl[1093].w[4:6]" 4.1672989431083143e-027 8.5920456377872815e-013 
		0.99999999999914058;
	setAttr ".wl[1093].w[8]" 2.133836518959123e-037;
	setAttr ".wl[1093].w[54]" 7.6981258925840118e-027;
	setAttr -s 4 ".wl[1094].w";
	setAttr ".wl[1094].w[4:6]" 5.9382002811226319e-031 3.8479587588907919e-015 
		0.99999999999999623;
	setAttr ".wl[1094].w[54]" 1.0969458631261444e-030;
	setAttr -s 4 ".wl[1095].w";
	setAttr ".wl[1095].w[4:6]" 1.089276922247791e-034 6.1548649406902659e-018 
		1;
	setAttr ".wl[1095].w[54]" 2.0121884697236891e-034;
	setAttr -s 4 ".wl[1096].w";
	setAttr ".wl[1096].w[4:6]" 6.5853163849138538e-040 6.1739807791314476e-022 
		1;
	setAttr ".wl[1096].w[54]" 1.2164856730703605e-039;
	setAttr ".wl[1097].w[6]"  1;
	setAttr ".wl[1098].w[6]"  1;
	setAttr ".wl[1099].w[6]"  1;
	setAttr ".wl[1100].w[6]"  1;
	setAttr ".wl[1101].w[6]"  1;
	setAttr -s 2 ".wl[1102].w[5:6]"  6.5738930999883376e-012 0.99999999999342615;
	setAttr -s 4 ".wl[1103].w";
	setAttr ".wl[1103].w[4:6]" 2.3148117270095704e-042 7.1330318773086712e-008 
		0.99999992866968102;
	setAttr ".wl[1103].w[8]" 2.2340700436387377e-042;
	setAttr -s 5 ".wl[1104].w";
	setAttr ".wl[1104].w[4:6]" 3.6129784463893693e-011 0.0033168107880356796 
		0.99668318913983001;
	setAttr ".wl[1104].w[8]" 3.4273067185029339e-019;
	setAttr ".wl[1104].w[54]" 3.6004404994735314e-011;
	setAttr -s 5 ".wl[1105].w";
	setAttr ".wl[1105].w[4:6]" 4.7901636396334602e-008 0.0018420150082070529 
		0.99815788923891258;
	setAttr ".wl[1105].w[8]" 9.6014995845618557e-018;
	setAttr ".wl[1105].w[54]" 4.7851244002044084e-008;
	setAttr -s 5 ".wl[1106].w";
	setAttr ".wl[1106].w[4:6]" 3.6843750958404098e-011 2.7231688944850846e-005 
		0.99997276823746839;
	setAttr ".wl[1106].w[8]" 9.425727901251838e-021;
	setAttr ".wl[1106].w[54]" 3.6742731940856742e-011;
	setAttr -s 5 ".wl[1107].w";
	setAttr ".wl[1107].w[4:6]" 1.3152042190862352e-018 1.6926979135117792e-008 
		1.0000004628928669;
	setAttr ".wl[1107].w[8]" 3.7957148875293419e-023;
	setAttr ".wl[1107].w[54]" 6.458259291712415e-022;
	setAttr -s 5 ".wl[1108].w";
	setAttr ".wl[1108].w[4:6]" 1.2809071530245745e-018 5.1055458859227671e-008 
		0.99999994894454114;
	setAttr ".wl[1108].w[8]" 3.6979052551847192e-023;
	setAttr ".wl[1108].w[54]" 5.3258786001931994e-023;
	setAttr -s 5 ".wl[1109].w";
	setAttr ".wl[1109].w[4:6]" 2.0784178561628362e-010 0.0086921940295398691 
		0.99130780539302243;
	setAttr ".wl[1109].w[8]" 1.637566036007647e-018;
	setAttr ".wl[1109].w[54]" 3.6959579786639116e-010;
	setAttr -s 5 ".wl[1110].w";
	setAttr ".wl[1110].w[4:6]" 4.9169096654695941e-014 8.5879000944571199e-005 
		0.99991412099891874;
	setAttr ".wl[1110].w[8]" 2.6511860180853925e-018;
	setAttr ".wl[1110].w[54]" 8.7502201914534734e-014;
	setAttr -s 5 ".wl[1111].w";
	setAttr ".wl[1111].w[4:6]" 1.7751509312396776e-018 2.7358346878928399e-006 
		0.99999726416531187;
	setAttr ".wl[1111].w[8]" 1.4685180515481526e-022;
	setAttr ".wl[1111].w[54]" 3.1613732507119612e-018;
	setAttr -s 5 ".wl[1112].w";
	setAttr ".wl[1112].w[4:6]" 1.5064935154537231e-026 1.3940979787705164e-006 
		0.99999860590202116;
	setAttr ".wl[1112].w[8]" 8.4381673449357377e-029;
	setAttr ".wl[1112].w[54]" 1.4685152284355412e-032;
	setAttr -s 5 ".wl[1113].w";
	setAttr ".wl[1113].w[4:6]" 2.1708550889561219e-031 4.9882531694892256e-010 
		0.99999999950117457;
	setAttr ".wl[1113].w[8]" 7.1092302480548299e-034;
	setAttr ".wl[1113].w[54]" 6.1794358528808566e-038;
	setAttr -s 2 ".wl[1114].w[5:6]"  5.4734219581522086e-015 1.0000001591846743;
	setAttr -s 2 ".wl[1115].w[5:6]"  1.2430927921515819e-014 0.99999999999998757;
	setAttr -s 2 ".wl[1116].w[5:6]"  1.0690993248764669e-020 1;
	setAttr ".wl[1117].w[6]"  1;
	setAttr ".wl[1118].w[6]"  1;
	setAttr ".wl[1119].w[6]"  0.99999999999999989;
	setAttr ".wl[1120].w[6]"  0.99999999999999978;
	setAttr ".wl[1121].w[6]"  1;
	setAttr ".wl[1122].w[6]"  1.0000000000000002;
	setAttr ".wl[1123].w[6]"  1.0000000000000133;
	setAttr ".wl[1124].w[6]"  1;
	setAttr ".wl[1125].w[6]"  1;
	setAttr ".wl[1126].w[6]"  1;
	setAttr ".wl[1127].w[6]"  1;
	setAttr ".wl[1128].w[6]"  1;
	setAttr ".wl[1129].w[6]"  0.99999999999999989;
	setAttr ".wl[1130].w[6]"  1;
	setAttr ".wl[1131].w[6]"  1.0000000000000002;
	setAttr ".wl[1132].w[6]"  1;
	setAttr ".wl[1133].w[6]"  1;
	setAttr ".wl[1134].w[6]"  1;
	setAttr ".wl[1135].w[6]"  1;
	setAttr ".wl[1136].w[6]"  1;
	setAttr ".wl[1137].w[6]"  0.99999999999999989;
	setAttr ".wl[1138].w[6]"  1.0000000000000002;
	setAttr -s 2 ".wl[1139].w[5:6]"  1.2847122027545924e-009 0.99999999871528789;
	setAttr -s 2 ".wl[1140].w[5:6]"  1.2144519237367646e-009 0.99999999878554802;
	setAttr -s 2 ".wl[1141].w[5:6]"  6.1471096444955926e-009 0.99999999385289029;
	setAttr -s 2 ".wl[1142].w[5:6]"  1.1559568720936972e-013 0.99999999999988443;
	setAttr ".wl[1143].w[6]"  1.0000000000000002;
	setAttr ".wl[1144].w[6]"  1;
	setAttr -s 2 ".wl[1145].w[5:6]"  1.081426435483376e-030 1;
	setAttr -s 5 ".wl[1146].w";
	setAttr ".wl[1146].w[4:6]" 5.0332649117120589e-019 5.6412530270378564e-017 
		1;
	setAttr ".wl[1146].w[8]" 2.9313504743205407e-025;
	setAttr ".wl[1146].w[54]" 5.1233889884469238e-021;
	setAttr -s 4 ".wl[1147].w";
	setAttr ".wl[1147].w[4:6]" 1.0957520870526751e-032 6.0527095726576178e-018 
		1;
	setAttr ".wl[1147].w[54]" 2.0241498467563198e-032;
	setAttr -s 4 ".wl[1148].w";
	setAttr ".wl[1148].w[4:6]" 3.493986178277839e-037 8.0709364617191623e-022 
		0.99999999999999989;
	setAttr ".wl[1148].w[54]" 6.4543354933074409e-037;
	setAttr -s 2 ".wl[1149].w[5:6]"  2.529504236353261e-026 0.99999999999999989;
	setAttr -s 5 ".wl[1150].w";
	setAttr ".wl[1150].w[4:6]" 1.9204190913573785e-023 8.4299415830628613e-021 
		0.99999999999999989;
	setAttr ".wl[1150].w[8]" 9.3196963432474398e-030;
	setAttr ".wl[1150].w[54]" 1.9650362084201885e-025;
	setAttr -s 4 ".wl[1151].w";
	setAttr ".wl[1151].w[4:6]" 3.7470093005655901e-030 8.9734990509052326e-016 
		0.99999999999999922;
	setAttr ".wl[1151].w[54]" 6.9217374907630378e-030;
	setAttr -s 4 ".wl[1152].w";
	setAttr ".wl[1152].w[4:6]" 8.1348168406519764e-027 9.5834549175229609e-013 
		0.99999999999904177;
	setAttr ".wl[1152].w[54]" 1.5027202280477946e-026;
	setAttr -s 4 ".wl[1153].w";
	setAttr ".wl[1153].w[4:6]" 1.3473165978407673e-026 1.476136538932612e-012 
		0.99999999999852374;
	setAttr ".wl[1153].w[54]" 2.4888573950948218e-026;
	setAttr -s 4 ".wl[1154].w";
	setAttr ".wl[1154].w[4:6]" 2.9483953430404371e-030 9.5801636507101365e-016 
		0.999999999999999;
	setAttr ".wl[1154].w[54]" 5.4464819664134978e-030;
	setAttr -s 4 ".wl[1155].w";
	setAttr ".wl[1155].w[4:6]" 2.0194459437225457e-033 1.5256746227592893e-018 
		1;
	setAttr ".wl[1155].w[54]" 3.7304617037176212e-033;
	setAttr -s 4 ".wl[1156].w";
	setAttr ".wl[1156].w[4:6]" 8.8287701659807051e-038 2.1937584546454983e-022 
		1;
	setAttr ".wl[1156].w[54]" 1.6309121369401078e-037;
	setAttr -s 2 ".wl[1157].w[5:6]"  1.7401485168657786e-026 1;
	setAttr ".wl[1158].w[6]"  0.99999999999999989;
	setAttr ".wl[1159].w[6]"  1.0000000000000002;
	setAttr ".wl[1160].w[6]"  1.0000001901207725;
	setAttr -s 2 ".wl[1161].w[5:6]"  2.5844436639899756e-015 1.0000000000000115;
	setAttr -s 2 ".wl[1162].w[5:6]"  1.7215009420796503e-023 1;
	setAttr -s 5 ".wl[1163].w";
	setAttr ".wl[1163].w[4:6]" 8.4794587161089701e-018 3.3792772056472189e-007 
		0.99999966207229418;
	setAttr ".wl[1163].w[8]" 2.4479709418197092e-022;
	setAttr ".wl[1163].w[54]" 3.5249525461378124e-022;
	setAttr -s 5 ".wl[1164].w";
	setAttr ".wl[1164].w[4:6]" 5.2945891116430156e-022 7.8431901225742203e-011 
		0.99999999992156785;
	setAttr ".wl[1164].w[8]" 1.5285472118873555e-026;
	setAttr ".wl[1164].w[54]" 6.6011987297660435e-027;
	setAttr -s 5 ".wl[1165].w";
	setAttr ".wl[1165].w[4:6]" 4.6718864449992215e-014 1.0698238216810191e-005 
		0.99998930176165579;
	setAttr ".wl[1165].w[8]" 3.4184913893413635e-022;
	setAttr ".wl[1165].w[54]" 8.0575979457596887e-014;
	setAttr -s 2 ".wl[1166].w[5:6]"  8.9128014481489618e-012 0.99999999999108713;
	setAttr -s 5 ".wl[1167].w";
	setAttr ".wl[1167].w[4:6]" 5.7453700051650016e-023 3.4258345974205602e-011 
		1.0000000000062335;
	setAttr ".wl[1167].w[8]" 1.6584625238343925e-027;
	setAttr ".wl[1167].w[54]" 1.3643461461742193e-026;
	setAttr -s 5 ".wl[1168].w";
	setAttr ".wl[1168].w[4:6]" 3.2569126568578555e-018 5.9880293404194353e-007 
		0.99999940119706587;
	setAttr ".wl[1168].w[8]" 2.6940205704464581e-022;
	setAttr ".wl[1168].w[54]" 5.8002525107387396e-018;
	setAttr -s 5 ".wl[1169].w";
	setAttr ".wl[1169].w[4:6]" 3.9428423992712897e-017 3.1335396317379771e-006 
		0.99999686646036801;
	setAttr ".wl[1169].w[8]" 2.7659497871072078e-021;
	setAttr ".wl[1169].w[54]" 7.0047786786294875e-017;
	setAttr -s 5 ".wl[1170].w";
	setAttr ".wl[1170].w[4:6]" 5.5625058767796201e-023 7.7374217508246903e-007 
		0.99999922625782467;
	setAttr ".wl[1170].w[8]" 6.5333557094545017e-027;
	setAttr ".wl[1170].w[54]" 9.8836400972181922e-023;
	setAttr -s 2 ".wl[1171].w[5:6]"  2.5397126671913412e-013 1.0000000000000002;
	setAttr -s 5 ".wl[1172].w";
	setAttr ".wl[1172].w[4:6]" 8.6317513409492027e-028 3.316251978519355e-010 
		0.99999999966837494;
	setAttr ".wl[1172].w[8]" 1.3165635401857072e-031;
	setAttr ".wl[1172].w[54]" 1.5234605980295305e-027;
	setAttr -s 4 ".wl[1173].w";
	setAttr ".wl[1173].w[4:6]" 5.6491112406392322e-037 3.8877649198788671e-012 
		0.99999999999611255;
	setAttr ".wl[1173].w[8]" 8.2569738914453485e-040;
	setAttr -s 2 ".wl[1174].w[5:6]"  7.2180277412036119e-018 1.0000000000394222;
	setAttr ".wl[1175].w[6]"  1;
	setAttr -s 2 ".wl[1176].w[5:6]"  5.664508959560885e-018 1.0000000000022118;
	setAttr ".wl[1177].w[6]"  0.99999999999999978;
	setAttr ".wl[1178].w[6]"  1;
	setAttr ".wl[1179].w[6]"  1;
	setAttr ".wl[1180].w[6]"  1;
	setAttr ".wl[1181].w[6]"  1;
	setAttr ".wl[1182].w[6]"  1;
	setAttr ".wl[1183].w[6]"  1;
	setAttr ".wl[1184].w[6]"  0.99999999999999989;
	setAttr ".wl[1185].w[6]"  0.99999999999999989;
	setAttr ".wl[1186].w[6]"  1.000000000000032;
	setAttr ".wl[1187].w[6]"  1.0000000000000002;
	setAttr ".wl[1188].w[6]"  1;
	setAttr ".wl[1189].w[6]"  0.99999999999999967;
	setAttr ".wl[1190].w[6]"  1;
	setAttr ".wl[1191].w[6]"  1.0000000000000002;
	setAttr ".wl[1192].w[6]"  1;
	setAttr ".wl[1193].w[6]"  1;
	setAttr ".wl[1194].w[6]"  1;
	setAttr ".wl[1195].w[6]"  0.99999999999999978;
	setAttr ".wl[1196].w[6]"  1.0000000000000002;
	setAttr ".wl[1197].w[6]"  1;
	setAttr ".wl[1198].w[6]"  1;
	setAttr ".wl[1199].w[6]"  1.0000000000000002;
	setAttr -s 2 ".wl[1200].w[5:6]"  9.8360491921523051e-013 0.99999999999901645;
	setAttr -s 2 ".wl[1201].w[5:6]"  1.1795518697903717e-013 0.99999999999988198;
	setAttr -s 2 ".wl[1202].w[5:6]"  1.7740076055845657e-013 0.9999999999998227;
	setAttr ".wl[1203].w[6]"  1;
	setAttr ".wl[1204].w[6]"  1;
	setAttr -s 4 ".wl[1205].w";
	setAttr ".wl[1205].w[4:6]" 4.1108518398825826e-030 9.8508357170816112e-016 
		0.99999999999999911;
	setAttr ".wl[1205].w[54]" 7.5938528614787464e-030;
	setAttr -s 4 ".wl[1206].w";
	setAttr ".wl[1206].w[4:6]" 4.1081928876505439e-033 2.5574973919816793e-018 
		0.99999999999999989;
	setAttr ".wl[1206].w[54]" 7.588941059058649e-033;
	setAttr -s 4 ".wl[1207].w";
	setAttr ".wl[1207].w[4:6]" 6.6413945518523956e-030 1.621481990440022e-015 
		0.99999999999999845;
	setAttr ".wl[1207].w[54]" 1.226844824045865e-029;
	setAttr ".wl[1208].w[6]"  0.99999999999999989;
	setAttr ".wl[1209].w[6]"  1;
	setAttr -s 2 ".wl[1210].w[5:6]"  1.4622193611330576e-017 1;
	setAttr -s 5 ".wl[1211].w";
	setAttr ".wl[1211].w[4:6]" 8.132145717558425e-023 1.0570069845115911e-010 
		0.99999999989430721;
	setAttr ".wl[1211].w[8]" 2.347749501508397e-027;
	setAttr ".wl[1211].w[54]" 1.0121815384290866e-027;
	setAttr -s 5 ".wl[1212].w";
	setAttr ".wl[1212].w[4:6]" 1.5929862082758991e-026 3.738602751215553e-010 
		0.99999999962613939;
	setAttr ".wl[1212].w[8]" 4.5989844859017165e-031;
	setAttr ".wl[1212].w[54]" 5.9575058682534744e-032;
	setAttr -s 5 ".wl[1213].w";
	setAttr ".wl[1213].w[4:6]" 5.9209376253661777e-027 5.1512552808501411e-013 
		0.99999999999948452;
	setAttr ".wl[1213].w[8]" 1.7093870754546651e-031;
	setAttr ".wl[1213].w[54]" 2.2133377918588828e-032;
	setAttr -s 5 ".wl[1214].w";
	setAttr ".wl[1214].w[4:6]" 2.0612082193682041e-018 2.8202435169482277e-009 
		0.99999999717975685;
	setAttr ".wl[1214].w[8]" 1.553197422731075e-026;
	setAttr ".wl[1214].w[54]" 3.6121358950904224e-018;
	setAttr -s 2 ".wl[1215].w[5:6]"  1.0154696980616775e-016 0.99999999999999967;
	setAttr -s 2 ".wl[1216].w[5:6]"  3.3152895392724948e-012 0.9999999999966851;
	setAttr -s 5 ".wl[1217].w";
	setAttr ".wl[1217].w[4:6]" 3.0138320348074838e-023 5.3304874399805788e-007 
		0.99999946695125586;
	setAttr ".wl[1217].w[8]" 2.3093570131369717e-031;
	setAttr ".wl[1217].w[54]" 5.3490337265561739e-023;
	setAttr -s 2 ".wl[1218].w[5:6]"  1.170548428708333e-016 1.0000000000001426;
	setAttr -s 5 ".wl[1219].w";
	setAttr ".wl[1219].w[4:6]" 9.3653504476083339e-029 1.9639615087888419e-010 
		0.99999999980360388;
	setAttr ".wl[1219].w[8]" 7.1367066882570394e-037;
	setAttr ".wl[1219].w[54]" 1.6775111482258192e-028;
	setAttr -s 4 ".wl[1220].w";
	setAttr ".wl[1220].w[4:6]" 8.4413517741249548e-041 1.2563157287332477e-011 
		0.99999999998743727;
	setAttr ".wl[1220].w[8]" 7.2968097427703891e-046;
	setAttr -s 2 ".wl[1221].w[5:6]"  1.3840266192901512e-011 0.99999999998615963;
	setAttr -s 2 ".wl[1222].w[5:6]"  7.8163611866458923e-014 0.99999999999992184;
	setAttr ".wl[1223].w[6]"  1;
	setAttr ".wl[1224].w[6]"  1;
	setAttr ".wl[1225].w[6]"  1;
	setAttr ".wl[1226].w[6]"  1;
	setAttr ".wl[1227].w[6]"  1;
	setAttr ".wl[1228].w[6]"  1;
	setAttr ".wl[1229].w[6]"  1;
	setAttr ".wl[1230].w[6]"  0.99999999999999978;
	setAttr ".wl[1231].w[6]"  1;
	setAttr ".wl[1232].w[6]"  0.99999999999999989;
	setAttr ".wl[1233].w[6]"  1;
	setAttr ".wl[1234].w[6]"  1;
	setAttr ".wl[1235].w[6]"  1.0000000000000002;
	setAttr ".wl[1236].w[6]"  0.99999999999999978;
	setAttr ".wl[1237].w[6]"  1;
	setAttr ".wl[1238].w[6]"  1;
	setAttr ".wl[1239].w[6]"  1;
	setAttr ".wl[1240].w[6]"  1.0000000000000002;
	setAttr ".wl[1241].w[6]"  1;
	setAttr ".wl[1242].w[6]"  1;
	setAttr ".wl[1243].w[6]"  0.99999999999999989;
	setAttr ".wl[1244].w[6]"  1;
	setAttr ".wl[1245].w[6]"  1;
	setAttr -s 2 ".wl[1246].w[5:6]"  1.0352480692740292e-017 1;
	setAttr -s 4 ".wl[1247].w";
	setAttr ".wl[1247].w[4:6]" 2.221410220050803e-027 1.0625407274249652e-014 
		0.99999999999999212;
	setAttr ".wl[1247].w[8]" 6.4135448339566526e-032;
	setAttr -s 5 ".wl[1248].w";
	setAttr ".wl[1248].w[4:6]" 2.5773358394453253e-031 2.2499017163376476e-016 
		0.99999999999999989;
	setAttr ".wl[1248].w[8]" 7.4408579178175584e-036;
	setAttr ".wl[1248].w[54]" 2.050143633787636e-037;
	setAttr -s 5 ".wl[1249].w";
	setAttr ".wl[1249].w[4:6]" 1.3032811982291014e-031 6.1740446920887649e-011 
		0.99999999993825972;
	setAttr ".wl[1249].w[8]" 3.7626113314920872e-036;
	setAttr ".wl[1249].w[54]" 1.0826204535228487e-037;
	setAttr -s 2 ".wl[1250].w[5:6]"  6.0361071944736278e-017 0.99999999999999989;
	setAttr -s 2 ".wl[1251].w[5:6]"  6.4269864655938172e-018 0.99999999999999989;
	setAttr ".wl[1252].w[6]"  1.0000000000000029;
	setAttr -s 4 ".wl[1253].w";
	setAttr ".wl[1253].w[4:6]" 7.2857994368678674e-042 6.9480191025740942e-025 
		1.0000000000000002;
	setAttr ".wl[1253].w[8]" 2.1034338204085463e-046;
	setAttr ".wl[1254].w[6]"  1;
	setAttr ".wl[1255].w[6]"  1;
	setAttr ".wl[1256].w[6]"  1;
	setAttr ".wl[1257].w[6]"  1;
	setAttr ".wl[1258].w[6]"  1;
	setAttr ".wl[1259].w[6]"  1.0000000000000002;
	setAttr ".wl[1260].w[6]"  0.99999999999999989;
	setAttr ".wl[1261].w[6]"  0.99999999999999989;
	setAttr ".wl[1262].w[6]"  1.0000000000000002;
	setAttr ".wl[1263].w[6]"  1;
	setAttr ".wl[1264].w[6]"  1;
	setAttr ".wl[1265].w[6]"  1;
	setAttr ".wl[1266].w[6]"  1;
	setAttr ".wl[1267].w[6]"  1;
	setAttr ".wl[1268].w[6]"  1;
	setAttr ".wl[1269].w[6]"  1.0000000000000002;
	setAttr ".wl[1270].w[6]"  1;
	setAttr ".wl[1271].w[6]"  1;
	setAttr ".wl[1272].w[6]"  1;
	setAttr ".wl[1273].w[6]"  1;
	setAttr ".wl[1274].w[6]"  1.0000000000000002;
	setAttr -s 2 ".wl[1275].w[5:6]"  1.287964385514718e-022 1;
	setAttr -s 2 ".wl[1276].w[5:6]"  1.4846835296822849e-015 0.99999999999999856;
	setAttr -s 4 ".wl[1277].w";
	setAttr ".wl[1277].w[4:6]" 1.0915426635665324e-031 3.3806572129527452e-016 
		0.99999999999999956;
	setAttr ".wl[1277].w[8]" 3.1514475556082898e-036;
	setAttr -s 4 ".wl[1278].w";
	setAttr ".wl[1278].w[4:6]" 4.4728531406667523e-036 3.4591730934906499e-020 
		1;
	setAttr ".wl[1278].w[8]" 1.2913285637659318e-040;
	setAttr -s 2 ".wl[1279].w[5:6]"  8.0036662786334414e-023 1;
	setAttr -s 2 ".wl[1280].w[5:6]"  1.1280868661129632e-021 0.99999999999999978;
	setAttr -s 2 ".wl[1281].w[5:6]"  1.203776515704048e-026 1.0000000000109066;
	setAttr -s 2 ".wl[1282].w[5:6]"  2.1654667342305922e-026 1.0000002776374686;
	setAttr -s 2 ".wl[1283].w[5:6]"  1.5230426768216616e-034 1;
	setAttr ".wl[1284].w[6]"  1.0000000000000002;
	setAttr ".wl[1285].w[6]"  1;
	setAttr ".wl[1286].w[6]"  1;
	setAttr ".wl[1287].w[6]"  1;
	setAttr ".wl[1288].w[6]"  1.0000000000000002;
	setAttr ".wl[1289].w[6]"  0.99999999999999978;
	setAttr ".wl[1290].w[6]"  1;
	setAttr ".wl[1291].w[6]"  1;
	setAttr ".wl[1292].w[6]"  1.0000000000000002;
	setAttr ".wl[1293].w[6]"  1;
	setAttr ".wl[1294].w[6]"  1.0000000000000002;
	setAttr ".wl[1295].w[6]"  1;
	setAttr ".wl[1296].w[6]"  1;
	setAttr ".wl[1297].w[6]"  1;
	setAttr ".wl[1298].w[6]"  0.99999999999999989;
	setAttr ".wl[1299].w[6]"  1;
	setAttr ".wl[1300].w[6]"  1;
	setAttr ".wl[1301].w[6]"  1;
	setAttr ".wl[1302].w[6]"  0.99999999999999978;
	setAttr ".wl[1303].w[6]"  1;
	setAttr -s 2 ".wl[1304].w[5:6]"  1.8414266506004958e-020 1;
	setAttr -s 4 ".wl[1305].w";
	setAttr ".wl[1305].w[4:6]" 3.4606378219943638e-037 1.5778626608896348e-018 
		1.0000000000000002;
	setAttr ".wl[1305].w[8]" 9.9913809789921089e-042;
	setAttr -s 4 ".wl[1306].w";
	setAttr ".wl[1306].w[4:6]" 1.2780962151295562e-036 8.0421914570098084e-020 
		0.99999999999999989;
	setAttr ".wl[1306].w[8]" 3.6900312432203657e-041;
	setAttr ".wl[1307].w[6]"  1;
	setAttr -s 2 ".wl[1308].w[5:6]"  4.3860097412732466e-022 1;
	setAttr ".wl[1309].w[6]"  1;
	setAttr -s 2 ".wl[1310].w[5:6]"  1.1002450541562562e-028 1;
	setAttr ".wl[1311].w[6]"  0.99999999999999978;
	setAttr ".wl[1312].w[6]"  1;
	setAttr ".wl[1313].w[6]"  0.99999999999999967;
	setAttr ".wl[1314].w[6]"  1;
	setAttr ".wl[1315].w[6]"  1;
	setAttr ".wl[1316].w[6]"  1;
	setAttr ".wl[1317].w[6]"  0.99999999999999989;
	setAttr ".wl[1318].w[6]"  1;
	setAttr ".wl[1319].w[6]"  1.0000000000000002;
	setAttr ".wl[1320].w[6]"  1.0000000000000002;
	setAttr ".wl[1321].w[6]"  1;
	setAttr ".wl[1322].w[6]"  1;
	setAttr ".wl[1323].w[6]"  1.0000000000000002;
	setAttr ".wl[1324].w[6]"  1;
	setAttr ".wl[1325].w[6]"  1;
	setAttr ".wl[1326].w[6]"  0.99999999999999978;
	setAttr ".wl[1327].w[6]"  1;
	setAttr ".wl[1328].w[6]"  1;
	setAttr ".wl[1329].w[6]"  1;
	setAttr ".wl[1330].w[6]"  1;
	setAttr ".wl[1331].w[6]"  0.99999999999999978;
	setAttr -s 2 ".wl[1332].w[5:6]"  3.2750128251962881e-024 0.99999999999999989;
	setAttr ".wl[1333].w[6]"  0.99999999999999989;
	setAttr ".wl[1334].w[6]"  0.99999999999999989;
	setAttr ".wl[1335].w[6]"  0.99999999999999978;
	setAttr ".wl[1336].w[6]"  1;
	setAttr ".wl[1337].w[6]"  1;
	setAttr ".wl[1338].w[6]"  1;
	setAttr ".wl[1339].w[6]"  0.99999999999999978;
	setAttr ".wl[1340].w[6]"  1;
	setAttr ".wl[1341].w[6]"  0.99999999999999989;
	setAttr ".wl[1342].w[6]"  0.99999999999999989;
	setAttr ".wl[1343].w[6]"  0.99999999999999989;
	setAttr ".wl[1344].w[6]"  1;
	setAttr ".wl[1345].w[6]"  1;
	setAttr ".wl[1346].w[6]"  1;
	setAttr ".wl[1347].w[6]"  1;
	setAttr ".wl[1348].w[6]"  1;
	setAttr ".wl[1349].w[6]"  1.0000000000000002;
	setAttr ".wl[1350].w[6]"  1;
	setAttr ".wl[1351].w[6]"  1.0000000000000002;
	setAttr ".wl[1352].w[6]"  1;
	setAttr ".wl[1353].w[6]"  0.99999999999999978;
	setAttr ".wl[1354].w[6]"  1;
	setAttr ".wl[1355].w[6]"  0.99999999999999989;
	setAttr ".wl[1356].w[6]"  1.0000000000000004;
	setAttr ".wl[1357].w[6]"  0.99999999999999989;
	setAttr ".wl[1358].w[6]"  0.99999999999999989;
	setAttr ".wl[1359].w[6]"  1;
	setAttr ".wl[1360].w[6]"  1.0000000000000002;
	setAttr ".wl[1361].w[6]"  0.99999999999999989;
	setAttr ".wl[1362].w[6]"  0.99999999999999989;
	setAttr ".wl[1363].w[6]"  1;
	setAttr ".wl[1364].w[6]"  1;
	setAttr ".wl[1365].w[6]"  1;
	setAttr ".wl[1366].w[6]"  1;
	setAttr ".wl[1367].w[6]"  1;
	setAttr ".wl[1368].w[6]"  1;
	setAttr ".wl[1369].w[6]"  0.99999999999999989;
	setAttr ".wl[1370].w[6]"  1;
	setAttr ".wl[1371].w[6]"  1;
	setAttr ".wl[1372].w[6]"  0.99999999999999989;
	setAttr ".wl[1373].w[6]"  1;
	setAttr ".wl[1374].w[6]"  0.99999999999999989;
	setAttr ".wl[1375].w[6]"  0.99999999999999989;
	setAttr ".wl[1376].w[6]"  0.99999999999999978;
	setAttr ".wl[1377].w[6]"  1;
	setAttr ".wl[1378].w[6]"  0.99999999999999989;
	setAttr ".wl[1379].w[6]"  1;
	setAttr ".wl[1380].w[6]"  0.99999999999999989;
	setAttr ".wl[1381].w[6]"  1;
	setAttr ".wl[1382].w[6]"  0.99999999999999989;
	setAttr ".wl[1383].w[6]"  1;
	setAttr ".wl[1384].w[6]"  1;
	setAttr ".wl[1385].w[6]"  1;
	setAttr ".wl[1386].w[6]"  0.99999999999999989;
	setAttr ".wl[1387].w[6]"  0.99999999999999989;
	setAttr ".wl[1388].w[6]"  1;
	setAttr ".wl[1389].w[6]"  0.99999999999999967;
	setAttr ".wl[1390].w[6]"  0.99999999999999989;
	setAttr ".wl[1391].w[6]"  1;
	setAttr ".wl[1392].w[6]"  1.0000000000000002;
	setAttr ".wl[1393].w[6]"  1;
	setAttr ".wl[1394].w[6]"  1;
	setAttr ".wl[1395].w[6]"  1.0000000000000002;
	setAttr ".wl[1396].w[6]"  1;
	setAttr ".wl[1397].w[6]"  1;
	setAttr ".wl[1398].w[6]"  1;
	setAttr ".wl[1399].w[6]"  1;
	setAttr ".wl[1400].w[6]"  0.99999999999999989;
	setAttr ".wl[1401].w[6]"  0.99999999999999989;
	setAttr ".wl[1402].w[6]"  1;
	setAttr ".wl[1403].w[6]"  0.99999999999999989;
	setAttr ".wl[1404].w[6]"  0.99999999999999989;
	setAttr ".wl[1405].w[6]"  1;
	setAttr ".wl[1406].w[6]"  1;
	setAttr ".wl[1407].w[6]"  1;
	setAttr -s 5 ".wl[1408].w";
	setAttr ".wl[1408].w[4:6]" 1.0566085410188828e-025 6.3742026848393806e-019 
		1;
	setAttr ".wl[1408].w[8]" 1.5024614626433922e-026;
	setAttr ".wl[1408].w[54]" 1.4926111203155305e-030;
	setAttr -s 5 ".wl[1409].w";
	setAttr ".wl[1409].w[4:6]" 1.4993549295016247e-019 9.6867445984079998e-006 
		0.999990313255402;
	setAttr ".wl[1409].w[8]" 2.6829405045290342e-025;
	setAttr ".wl[1409].w[54]" 2.7696686234038585e-019;
	setAttr -s 4 ".wl[1410].w";
	setAttr ".wl[1410].w[4:6]" 1.1663137715977013e-032 2.6595060151304238e-023 
		1;
	setAttr ".wl[1410].w[8]" 1.2958993529545746e-033;
	setAttr -s 4 ".wl[1411].w";
	setAttr ".wl[1411].w[4:6]" 7.7487690744149305e-033 1.7668687405352187e-023 
		1;
	setAttr ".wl[1411].w[8]" 8.6097112751853876e-034;
	setAttr -s 5 ".wl[1412].w";
	setAttr ".wl[1412].w[4:6]" 1.2649217426311649e-023 1.8561576351584508e-009 
		0.99999999814384211;
	setAttr ".wl[1412].w[8]" 8.5661156179177384e-030;
	setAttr ".wl[1412].w[54]" 2.3366376176774895e-023;
	setAttr -s 4 ".wl[1413].w";
	setAttr ".wl[1413].w[4:6]" 4.1495559253559648e-034 9.4641904468348681e-025 
		1;
	setAttr ".wl[1413].w[8]" 4.6106004830511886e-035;
	setAttr -s 4 ".wl[1414].w";
	setAttr ".wl[1414].w[4:6]" 2.5105570939102764e-032 5.7243241938259489e-023 
		0.99999999999999989;
	setAttr ".wl[1414].w[8]" 2.7894974686760841e-033;
	setAttr -s 4 ".wl[1415].w";
	setAttr ".wl[1415].w[4:6]" 1.609114776901858e-036 4.1156253188356075e-027 
		0.99999999999999978;
	setAttr ".wl[1415].w[8]" 1.7878986332813632e-037;
	setAttr -s 4 ".wl[1416].w";
	setAttr ".wl[1416].w[4:6]" 1.4708025553268419e-038 3.7618647983371649e-029 
		1;
	setAttr ".wl[1416].w[8]" 1.6342189607870229e-039;
	setAttr ".wl[1417].w[6]"  1;
	setAttr -s 5 ".wl[1418].w";
	setAttr ".wl[1418].w[4:6]" 1.0608971105044362e-010 1.3955904734146603e-007 
		1.0000004780591554;
	setAttr ".wl[1418].w[8]" 1.0769628609947256e-016;
	setAttr ".wl[1418].w[54]" 1.6656957753086798e-010;
	setAttr -s 5 ".wl[1419].w";
	setAttr ".wl[1419].w[4:6]" 7.2527526810795121e-007 0.00055151316122304046 
		0.99944662282150731;
	setAttr ".wl[1419].w[8]" 7.3625851177515157e-013;
	setAttr ".wl[1419].w[54]" 1.1387418610795666e-006;
	setAttr -s 4 ".wl[1420].w";
	setAttr ".wl[1420].w[4:6]" 1.2696936003848142e-036 3.2474893673951987e-027 
		1;
	setAttr ".wl[1420].w[8]" 1.4107654005793509e-037;
	setAttr ".wl[1421].w[6]"  1;
	setAttr ".wl[1422].w[6]"  1;
	setAttr ".wl[1423].w[6]"  1;
	setAttr ".wl[1424].w[6]"  1;
	setAttr -s 4 ".wl[1425].w";
	setAttr ".wl[1425].w[4:6]" 5.4887005059220337e-034 1.1094852039396317e-018 
		1;
	setAttr ".wl[1425].w[54]" 1.0139111227099435e-033;
	setAttr -s 4 ".wl[1426].w";
	setAttr ".wl[1426].w[4:6]" 1.634430552538517e-030 4.1878182771762985e-016 
		0.99999999999999967;
	setAttr ".wl[1426].w[54]" 3.0192343610801142e-030;
	setAttr ".wl[1427].w[6]"  1;
	setAttr ".wl[1428].w[6]"  1;
	setAttr -s 5 ".wl[1429].w";
	setAttr ".wl[1429].w[4:6]" 1.1592896076841746e-035 8.9078022467487774e-021 
		1;
	setAttr ".wl[1429].w[8]" 1.1202949681578204e-039;
	setAttr ".wl[1429].w[54]" 2.1396582506434332e-035;
	setAttr -s 5 ".wl[1430].w";
	setAttr ".wl[1430].w[4:6]" 1.0233950883133713e-015 1.8008539010490559e-010 
		0.99999999983579457;
	setAttr ".wl[1430].w[8]" 1.0388929250072106e-021;
	setAttr ".wl[1430].w[54]" 1.6068145140462058e-015;
	setAttr -s 5 ".wl[1431].w";
	setAttr ".wl[1431].w[4:6]" 9.2233204111374754e-012 1.6957838930646081e-008 
		0.99999998307694882;
	setAttr ".wl[1431].w[8]" 9.3629942427945571e-018;
	setAttr ".wl[1431].w[54]" 1.4481372124620902e-011;
	setAttr ".wl[1432].w[6]"  1;
	setAttr -s 2 ".wl[1433].w[5:6]"  6.9226598990992982e-034 1;
	setAttr ".wl[1434].w[6]"  1;
	setAttr -s 2 ".wl[1435].w[5:6]"  4.9918371487718775e-034 1;
	setAttr ".wl[1436].w[6]"  1;
	setAttr ".wl[1437].w[6]"  1;
	setAttr -s 4 ".wl[1438].w";
	setAttr ".wl[1438].w[4:6]" 5.6661973103424518e-030 4.6118787962336875e-015 
		0.99999999999999534;
	setAttr ".wl[1438].w[54]" 1.0466995731005524e-029;
	setAttr -s 4 ".wl[1439].w";
	setAttr ".wl[1439].w[4:6]" 2.1383078703694446e-030 5.8623959153375081e-016 
		0.99999999999999956;
	setAttr ".wl[1439].w[54]" 3.9500317629037511e-030;
	setAttr -s 4 ".wl[1440].w";
	setAttr ".wl[1440].w[4:6]" 9.6424275676360164e-027 1.1392368164585414e-012 
		0.9999999999988608;
	setAttr ".wl[1440].w[54]" 1.7812166195263744e-026;
	setAttr ".wl[1441].w[6]"  1;
	setAttr ".wl[1442].w[6]"  1;
	setAttr ".wl[1443].w[6]"  1;
	setAttr -s 5 ".wl[1444].w";
	setAttr ".wl[1444].w[4:6]" 6.2215486392796656e-015 1.4669667126077792e-005 
		0.99998533033286074;
	setAttr ".wl[1444].w[8]" 6.5205177199579094e-023;
	setAttr ".wl[1444].w[54]" 6.6455768833017434e-015;
	setAttr -s 5 ".wl[1445].w";
	setAttr ".wl[1445].w[4:6]" 3.6925812701790406e-018 2.208256174152317e-005 
		0.9999779174382587;
	setAttr ".wl[1445].w[8]" 7.6980008842833855e-027;
	setAttr ".wl[1445].w[54]" 3.9257230303603706e-018;
	setAttr -s 4 ".wl[1446].w";
	setAttr ".wl[1446].w[4:6]" 6.5993263839352235e-038 1.6879066144229553e-028 
		1;
	setAttr ".wl[1446].w[8]" 7.3325574979385429e-039;
	setAttr ".wl[1447].w[6]"  1;
	setAttr -s 2 ".wl[1448].w[5:6]"  7.4241933816016115e-030 1;
	setAttr ".wl[1449].w[6]"  1;
	setAttr -s 2 ".wl[1450].w[5:6]"  3.3891337002474729e-034 1;
	setAttr -s 5 ".wl[1451].w";
	setAttr ".wl[1451].w[4:6]" 5.5459257608983642e-020 1.0705454189744755e-015 
		0.99999999999999867;
	setAttr ".wl[1451].w[8]" 5.6299107760480505e-026;
	setAttr ".wl[1451].w[54]" 8.7075598741203608e-020;
	setAttr -s 5 ".wl[1452].w";
	setAttr ".wl[1452].w[4:6]" 4.1813576994737682e-027 1.3580346199713415e-012 
		0.99999999999864186;
	setAttr ".wl[1452].w[8]" 3.6601987444907478e-034;
	setAttr ".wl[1452].w[54]" 7.7240901283172919e-027;
	setAttr -s 4 ".wl[1453].w";
	setAttr ".wl[1453].w[4:6]" 2.8172321332318897e-027 3.3356312341835699e-013 
		0.99999999999966638;
	setAttr ".wl[1453].w[54]" 5.2041881171285215e-027;
	setAttr -s 5 ".wl[1454].w";
	setAttr ".wl[1454].w[4:6]" 2.7433342623138361e-016 3.7800090530387829e-012 
		0.99999999999621914;
	setAttr ".wl[1454].w[8]" 2.7848780871761817e-022;
	setAttr ".wl[1454].w[54]" 4.3072605682060944e-016;
	setAttr -s 2 ".wl[1455].w[5:6]"  6.9360869952329489e-034 1;
	setAttr ".wl[1456].w[6]"  0.99999999999999978;
	setAttr -s 5 ".wl[1457].w";
	setAttr ".wl[1457].w[4:6]" 9.247955937366922e-018 5.214275798822854e-008 
		0.99999994785724189;
	setAttr ".wl[1457].w[8]" 7.7549133321353256e-026;
	setAttr ".wl[1457].w[54]" 9.8610125984540466e-018;
	setAttr -s 5 ".wl[1458].w";
	setAttr ".wl[1458].w[4:6]" 1.222526787024041e-012 3.3012671071834879e-009 
		0.9999999966962112;
	setAttr ".wl[1458].w[8]" 2.2889767014522053e-024;
	setAttr ".wl[1458].w[54]" 1.2994480805361835e-012;
	setAttr -s 5 ".wl[1459].w";
	setAttr ".wl[1459].w[4:6]" 2.7714115202380798e-014 1.2778886584151345e-006 
		0.99999872211128449;
	setAttr ".wl[1459].w[8]" 5.1884313907678003e-026;
	setAttr ".wl[1459].w[54]" 2.9469062231042823e-014;
	setAttr -s 2 ".wl[1460].w[5:6]"  2.6535807877524491e-033 1;
	setAttr -s 2 ".wl[1461].w[5:6]"  1.351227776949899e-033 1;
	setAttr -s 2 ".wl[1462].w[5:6]"  9.8814085455535402e-034 1;
	setAttr -s 2 ".wl[1463].w[5:6]"  8.9381723742221169e-026 0.99999999999999978;
	setAttr -s 2 ".wl[1464].w[5:6]"  1.0718287655448136e-025 1.0000000000000002;
	setAttr -s 2 ".wl[1465].w[5:6]"  1.3294623413066273e-021 1;
	setAttr -s 5 ".wl[1466].w";
	setAttr ".wl[1466].w[4:6]" 2.0977641957052287e-023 1.2518127596506356e-009 
		0.99999999874818735;
	setAttr ".wl[1466].w[8]" 9.9006736277746366e-035;
	setAttr ".wl[1466].w[54]" 3.8751366529527275e-023;
	setAttr -s 5 ".wl[1467].w";
	setAttr ".wl[1467].w[4:6]" 3.4192448276814096e-013 3.3102890216442253e-009 
		0.99999999668883199;
	setAttr ".wl[1467].w[8]" 3.471024339040345e-019;
	setAttr ".wl[1467].w[54]" 5.3684957833320075e-013;
	setAttr -s 5 ".wl[1468].w";
	setAttr ".wl[1468].w[4:6]" 6.4685035737748032e-016 3.0852404768815784e-012 
		0.99999999999691291;
	setAttr ".wl[1468].w[8]" 6.566459694053413e-022;
	setAttr ".wl[1468].w[54]" 1.0156082968448012e-015;
	setAttr -s 5 ".wl[1469].w";
	setAttr ".wl[1469].w[4:6]" 1.5955835651043915e-014 2.1095708749654523e-005 
		0.99997890429121761;
	setAttr ".wl[1469].w[8]" 1.6750709586536374e-022;
	setAttr ".wl[1469].w[54]" 1.7043448842188732e-014;
	setAttr -s 2 ".wl[1470].w[5:6]"  1.5835809590905781e-033 1;
	setAttr -s 2 ".wl[1471].w[5:6]"  1.5097291526207103e-029 0.99999999999999989;
	setAttr -s 5 ".wl[1472].w";
	setAttr ".wl[1472].w[4:6]" 8.1542679182581831e-011 0.020595931343859567 
		0.97940406848725359;
	setAttr ".wl[1472].w[8]" 1.1406082792599316e-018;
	setAttr ".wl[1472].w[54]" 8.7344515171988745e-011;
	setAttr -s 5 ".wl[1473].w";
	setAttr ".wl[1473].w[4:6]" 2.2024464757934169e-009 1.151675668898581e-006 
		0.99999884377807913;
	setAttr ".wl[1473].w[8]" 1.0942633697529518e-020;
	setAttr ".wl[1473].w[54]" 2.3438055818307237e-009;
	setAttr -s 5 ".wl[1474].w";
	setAttr ".wl[1474].w[4:6]" 3.9788412816514435e-011 0.00069369593390474773 
		0.9993063039839577;
	setAttr ".wl[1474].w[8]" 2.0871518905978279e-022;
	setAttr ".wl[1474].w[54]" 4.2349327564712799e-011;
	setAttr -s 2 ".wl[1475].w[5:6]"  1.1116653912110147e-029 1;
	setAttr -s 2 ".wl[1476].w[5:6]"  7.1166233675925688e-030 0.99999999999999989;
	setAttr -s 2 ".wl[1477].w[5:6]"  2.7702804589159024e-033 1.0000000000000002;
	setAttr -s 5 ".wl[1478].w";
	setAttr ".wl[1478].w[4:6]" 3.4888460359464541e-019 2.24412072795481e-005 
		0.9999775587927211;
	setAttr ".wl[1478].w[8]" 3.0254447342744784e-025;
	setAttr ".wl[1478].w[54]" 6.444789963599421e-019;
	setAttr -s 5 ".wl[1479].w";
	setAttr ".wl[1479].w[4:6]" 9.5812529422871224e-020 2.7966257586868384e-006 
		0.99999720337424192;
	setAttr ".wl[1479].w[8]" 7.2968866369977261e-034;
	setAttr ".wl[1479].w[54]" 1.769916015129651e-019;
	setAttr -s 5 ".wl[1480].w";
	setAttr ".wl[1480].w[4:6]" 1.2402153943254279e-023 1.8039506406428708e-009 
		0.99999999819604946;
	setAttr ".wl[1480].w[8]" 4.0530877608341914e-030;
	setAttr ".wl[1480].w[54]" 2.2910058272780894e-023;
	setAttr -s 5 ".wl[1481].w";
	setAttr ".wl[1481].w[4:6]" 2.3250869093703257e-013 7.3723898797403758e-010 
		0.99999999926216365;
	setAttr ".wl[1481].w[8]" 2.3602969838115471e-019;
	setAttr ".wl[1481].w[54]" 3.6505778023092398e-013;
	setAttr -s 5 ".wl[1482].w";
	setAttr ".wl[1482].w[4:6]" 1.1232183373663945e-009 2.3848216818512065e-006 
		0.99999761229155371;
	setAttr ".wl[1482].w[8]" 1.1402278525782974e-015;
	setAttr ".wl[1482].w[54]" 1.7635452305218404e-009;
	setAttr -s 5 ".wl[1483].w";
	setAttr ".wl[1483].w[4:6]" 1.0851137181673849e-006 0.0001182783798857515 
		0.99987947990037518;
	setAttr ".wl[1483].w[8]" 1.9447897103502581e-017;
	setAttr ".wl[1483].w[54]" 1.1566060209454545e-006;
	setAttr -s 5 ".wl[1484].w";
	setAttr ".wl[1484].w[4:6]" 1.8229129829936146e-012 0.1108052098143901 
		0.8891947901806303;
	setAttr ".wl[1484].w[8]" 7.008432905191893e-020;
	setAttr ".wl[1484].w[54]" 3.1567804428574926e-012;
	setAttr -s 5 ".wl[1485].w";
	setAttr ".wl[1485].w[4:6]" 5.6025668724263153e-016 0.0063404530983179122 
		0.99365954690486169;
	setAttr ".wl[1485].w[8]" 4.9489420561866902e-029;
	setAttr ".wl[1485].w[54]" 1.0349453138399166e-015;
	setAttr -s 5 ".wl[1486].w";
	setAttr ".wl[1486].w[4:6]" 1.1211216168468459e-005 0.0085074034195709441 
		0.99146378283002623;
	setAttr ".wl[1486].w[8]" 1.1380993802421068e-011;
	setAttr ".wl[1486].w[54]" 1.7602532067516946e-005;
	setAttr -s 5 ".wl[1487].w";
	setAttr ".wl[1487].w[4:6]" 0.001961316858813567 0.13308965603984474 0.86285436298477947;
	setAttr ".wl[1487].w[8]" 2.2082999843586846e-013;
	setAttr ".wl[1487].w[54]" 0.0020946641163414031;
	setAttr -s 2 ".wl[1488].w[5:6]"  1.7503782698738247e-006 0.99999824962173012;
	setAttr -s 5 ".wl[1489].w";
	setAttr ".wl[1489].w[4:6]" 5.046001704698571e-008 0.0068365838408668972 
		0.99316336548691786;
	setAttr ".wl[1489].w[8]" 6.1206583767405758e-014;
	setAttr ".wl[1489].w[54]" 2.1213678847222863e-010;
	setAttr -s 4 ".wl[1490].w";
	setAttr ".wl[1490].w[4:6]" 1.1037258110225669e-039 5.0467940542551574e-007 
		0.99999949532059462;
	setAttr ".wl[1490].w[8]" 1.2263574341440338e-040;
	setAttr -s 5 ".wl[1491].w";
	setAttr ".wl[1491].w[4:6]" 1.3503564073168179e-012 1.3303507867684376e-006 
		0.99999866964785722;
	setAttr ".wl[1491].w[8]" 1.096674610991534e-018;
	setAttr ".wl[1491].w[54]" 5.7145342311232395e-015;
	setAttr -s 2 ".wl[1492].w[5:6]"  2.4160885371207378e-007 0.99999975839114597;
	setAttr -s 5 ".wl[1493].w";
	setAttr ".wl[1493].w[4:6]" 6.7513154627983447e-007 8.063864363242594e-006 
		0.99999125422952673;
	setAttr ".wl[1493].w[8]" 8.1239534021216547e-013;
	setAttr ".wl[1493].w[54]" 6.7738492984845703e-009;
	setAttr -s 5 ".wl[1494].w";
	setAttr ".wl[1494].w[4:6]" 3.4999995639143382e-011 1.9413366912516944e-009 
		0.99999999802330986;
	setAttr ".wl[1494].w[8]" 2.8235016304685232e-017;
	setAttr ".wl[1494].w[54]" 3.5347520162057524e-013;
	setAttr -s 2 ".wl[1495].w[5:6]"  1.0348629640412037e-009 0.99999999896513714;
	setAttr ".wl[1496].w[6]"  1.0000000000000002;
	setAttr -s 5 ".wl[1497].w";
	setAttr ".wl[1497].w[4:6]" 1.5368617833660375e-011 3.3349912121876046e-010 
		0.99999999965097686;
	setAttr ".wl[1497].w[8]" 1.2397249054559407e-017;
	setAttr ".wl[1497].w[54]" 1.5521296071097287e-013;
	setAttr -s 5 ".wl[1498].w";
	setAttr ".wl[1498].w[4:6]" 3.295184854907095e-016 1.9794398961817735e-009 
		0.99999999802055972;
	setAttr ".wl[1498].w[8]" 2.0112182727349123e-022;
	setAttr ".wl[1498].w[54]" 1.4037108547693815e-018;
	setAttr -s 2 ".wl[1499].w[5:6]"  1.4294679264810269e-018 1;
	setAttr -s 2 ".wl[1500].w[5:6]"  1.8368037796372351e-015 0.99999999999999822;
	setAttr -s 2 ".wl[1501].w[5:6]"  3.245743637212316e-012 0.99999999999675449;
	setAttr -s 2 ".wl[1502].w[5:6]"  1.2553091126222004e-009 0.99999999874469103;
	setAttr ".wl[1503].w[6]"  1;
	setAttr -s 5 ".wl[1504].w";
	setAttr ".wl[1504].w[4:6]" 1.1855128346608252e-009 4.6756779660886311e-007 
		0.99999953123644336;
	setAttr ".wl[1504].w[8]" 9.564716443597197e-016;
	setAttr ".wl[1504].w[54]" 1.1974759542378462e-011;
	setAttr -s 5 ".wl[1505].w";
	setAttr ".wl[1505].w[4:6]" 1.9269375699821268e-014 1.5884618032043605e-011 
		0.99999999998409572;
	setAttr ".wl[1505].w[8]" 1.1690385496405747e-020;
	setAttr ".wl[1505].w[54]" 1.9595176039244438e-016;
	setAttr -s 5 ".wl[1506].w";
	setAttr ".wl[1506].w[4:6]" 6.5555542154607348e-015 1.0313347569674753e-012 
		0.99999999999896205;
	setAttr ".wl[1506].w[8]" 3.9770791315083147e-021;
	setAttr ".wl[1506].w[54]" 6.6641959744260996e-017;
	setAttr -s 2 ".wl[1507].w[5:6]"  1.0201317167124391e-015 0.999999999999999;
	setAttr -s 2 ".wl[1508].w[5:6]"  9.2420021265892934e-024 1;
	setAttr -s 2 ".wl[1509].w[5:6]"  5.0713965553061737e-023 1;
	setAttr -s 2 ".wl[1510].w[5:6]"  1.1345459471588634e-021 1;
	setAttr -s 2 ".wl[1511].w[5:6]"  1.9720265987009521e-016 0.99999999999999978;
	setAttr -s 2 ".wl[1512].w[5:6]"  7.7478291110404929e-020 1;
	setAttr -s 2 ".wl[1513].w[5:6]"  1.3592843850493483e-031 1;
	setAttr -s 2 ".wl[1514].w[5:6]"  2.242563788610737e-027 1;
	setAttr -s 2 ".wl[1515].w[5:6]"  3.0354219029044618e-032 1.0000000000000002;
	setAttr ".wl[1516].w[6]"  1;
	setAttr -s 5 ".wl[1517].w";
	setAttr ".wl[1517].w[4:6]" 3.25191303747648e-015 2.8946138490871498e-012 
		0.99999999999710198;
	setAttr ".wl[1517].w[8]" 1.972819912853873e-021;
	setAttr ".wl[1517].w[54]" 3.3069909448651559e-017;
	setAttr -s 5 ".wl[1518].w";
	setAttr ".wl[1518].w[4:6]" 2.7094648546423924e-015 1.379009064012112e-013 
		0.99999999999985945;
	setAttr ".wl[1518].w[8]" 1.6437246441355231e-021;
	setAttr ".wl[1518].w[54]" 2.7543727167590054e-017;
	setAttr -s 2 ".wl[1519].w[5:6]"  2.1077469005911903e-016 0.99999999999999978;
	setAttr -s 5 ".wl[1520].w";
	setAttr ".wl[1520].w[4:6]" 2.416709868639834e-018 2.1631711212208398e-015 
		0.99999999999999778;
	setAttr ".wl[1520].w[8]" 1.1728170285770614e-024;
	setAttr ".wl[1520].w[54]" 2.4728573533816614e-020;
	setAttr -s 5 ".wl[1521].w";
	setAttr ".wl[1521].w[4:6]" 1.9426126409299843e-015 3.0508000219576204e-013 
		0.99999999999969258;
	setAttr ".wl[1521].w[8]" 1.1786495774844657e-021;
	setAttr ".wl[1521].w[54]" 1.9748000364406835e-017;
	setAttr -s 2 ".wl[1522].w[5:6]"  1.89548523644073e-013 0.99999999999981026;
	setAttr -s 2 ".wl[1523].w[5:6]"  1.2893748553550884e-023 1;
	setAttr -s 2 ".wl[1524].w[5:6]"  2.3306897369563819e-012 0.99999999999766942;
	setAttr -s 2 ".wl[1525].w[5:6]"  7.1595503757313501e-027 1;
	setAttr -s 2 ".wl[1526].w[5:6]"  8.9563677853306678e-028 0.99999999999999978;
	setAttr ".wl[1527].w[6]"  1;
	setAttr -s 5 ".wl[1528].w";
	setAttr ".wl[1528].w[4:6]" 3.1712591432884379e-014 3.1312821688448516e-011 
		0.99999999996865552;
	setAttr ".wl[1528].w[8]" 1.9239421709525951e-020;
	setAttr ".wl[1528].w[54]" 3.2249679264346648e-016;
	setAttr -s 5 ".wl[1529].w";
	setAttr ".wl[1529].w[4:6]" 1.5283457409824088e-015 1.3602777299069596e-012 
		0.99999999999863831;
	setAttr ".wl[1529].w[8]" 9.2721138526824574e-022;
	setAttr ".wl[1529].w[54]" 1.5542303683081663e-017;
	setAttr -s 5 ".wl[1530].w";
	setAttr ".wl[1530].w[4:6]" 9.1066703245261292e-019 1.1304955715080341e-014 
		0.99999999999998879;
	setAttr ".wl[1530].w[8]" 4.4199300083160051e-025;
	setAttr ".wl[1530].w[54]" 9.4825712655211699e-021;
	setAttr -s 2 ".wl[1531].w[5:6]"  1.5663639836964669e-010 0.99999999984336352;
	setAttr -s 2 ".wl[1532].w[5:6]"  1.9732377607699662e-015 0.999999999999998;
	setAttr -s 2 ".wl[1533].w[5:6]"  8.6287082359141599e-016 0.99999999999999922;
	setAttr -s 2 ".wl[1534].w[5:6]"  2.2313452704127331e-013 0.99999999999977696;
	setAttr -s 4 ".wl[1535].w";
	setAttr ".wl[1535].w[4:6]" 2.028925358225025e-031 4.3314935440876027e-010 
		0.99999999956685071;
	setAttr ".wl[1535].w[8]" 2.1401764516667156e-032;
	setAttr -s 2 ".wl[1536].w[5:6]"  1.8921956458636682e-022 0.99999999999999978;
	setAttr -s 2 ".wl[1537].w[5:6]"  4.8553457675483281e-027 1;
	setAttr -s 5 ".wl[1538].w";
	setAttr ".wl[1538].w[4:6]" 2.4233122695419861e-021 1.5341725065676104e-010 
		0.99999999984658294;
	setAttr ".wl[1538].w[8]" 1.1760149460030389e-027;
	setAttr ".wl[1538].w[54]" 2.481957906535818e-023;
	setAttr -s 5 ".wl[1539].w";
	setAttr ".wl[1539].w[4:6]" 9.7952844130419635e-020 2.6479978356619028e-009 
		0.99999999735200218;
	setAttr ".wl[1539].w[8]" 4.7535768797813051e-026;
	setAttr ".wl[1539].w[54]" 1.0032374752705987e-021;
	setAttr -s 5 ".wl[1540].w";
	setAttr ".wl[1540].w[4:6]" 7.2949005512944571e-018 1.1002226902591881e-009 
		0.99999999889977731;
	setAttr ".wl[1540].w[8]" 7.4053712564975312e-024;
	setAttr ".wl[1540].w[54]" 1.1453594235783243e-017;
	setAttr -s 5 ".wl[1541].w";
	setAttr ".wl[1541].w[4:6]" 4.4658184125618329e-018 8.9070414957443389e-011 
		0.99999999991092969;
	setAttr ".wl[1541].w[8]" 4.5334467655290371e-024;
	setAttr ".wl[1541].w[54]" 7.0117024445380283e-018;
	setAttr -s 2 ".wl[1542].w[5:6]"  2.798483536081375e-008 0.99999997201516455;
	setAttr -s 2 ".wl[1543].w[5:6]"  5.6950141237879952e-013 0.99999999999943046;
	setAttr -s 4 ".wl[1544].w";
	setAttr ".wl[1544].w[4:6]" 3.5713190378439023e-032 1.0894090897043586e-010 
		0.99999999989105925;
	setAttr ".wl[1544].w[8]" 3.7671434659721235e-033;
	setAttr -s 4 ".wl[1545].w";
	setAttr ".wl[1545].w[4:6]" 6.4084460382976194e-026 5.2242236055519206e-006 
		0.9999947757763944;
	setAttr ".wl[1545].w[8]" 6.7598372938465032e-027;
	setAttr -s 4 ".wl[1546].w";
	setAttr ".wl[1546].w[4:6]" 5.1248535236337629e-014 3.793742766933602e-005 
		0.99996206257218467;
	setAttr ".wl[1546].w[54]" 9.4669876493279532e-014;
	setAttr -s 2 ".wl[1547].w[5:6]"  1.31283067814013e-006 0.99999868716932172;
	setAttr -s 2 ".wl[1548].w[5:6]"  0.00024852872006313984 0.99975147127993669;
	setAttr -s 5 ".wl[1549].w";
	setAttr ".wl[1549].w[4:6]" 1.164003341337498e-021 7.0522821061303501e-005 
		0.99992947717893821;
	setAttr ".wl[1549].w[8]" 1.1816304865017309e-027;
	setAttr ".wl[1549].w[54]" 1.8275810433271526e-021;
	setAttr -s 5 ".wl[1550].w";
	setAttr ".wl[1550].w[4:6]" 4.4525033493915194e-018 1.2258272330280939e-006 
		0.99999877417276695;
	setAttr ".wl[1550].w[8]" 4.519930065008335e-024;
	setAttr ".wl[1550].w[54]" 6.9907966995310638e-018;
	setAttr -s 5 ".wl[1551].w";
	setAttr ".wl[1551].w[4:6]" 2.8783607284553531e-014 5.8260707815946765e-010 
		0.99999999941731887;
	setAttr ".wl[1551].w[8]" 2.9219493332114375e-020;
	setAttr ".wl[1551].w[54]" 4.5192632328361024e-014;
	setAttr -s 2 ".wl[1552].w[5:6]"  2.0849767366789078e-006 0.9999979150232633;
	setAttr -s 2 ".wl[1553].w[5:6]"  6.0671573550830849e-012 0.99999999999393296;
	setAttr -s 4 ".wl[1554].w";
	setAttr ".wl[1554].w[4:6]" 5.017152179900227e-026 4.728059957540634e-006 
		0.99999527194004212;
	setAttr ".wl[1554].w[8]" 5.2922552849648815e-027;
	setAttr -s 4 ".wl[1555].w";
	setAttr ".wl[1555].w[4:6]" 1.4447587781628727e-030 3.7180086179408395e-009 
		0.9999999962819911;
	setAttr ".wl[1555].w[8]" 1.5239785450106359e-031;
	setAttr -s 5 ".wl[1556].w";
	setAttr ".wl[1556].w[4:6]" 4.8453181065024205e-021 0.016472351128042167 
		0.98352764887195776;
	setAttr ".wl[1556].w[8]" 5.1111562135496081e-022;
	setAttr ".wl[1556].w[54]" 6.0482484936213498e-030;
	setAttr -s 4 ".wl[1557].w";
	setAttr ".wl[1557].w[4:6]" 7.4173812652142925e-031 1.8398617691815373e-011 
		0.99999999998160138;
	setAttr ".wl[1557].w[8]" 7.8240949833329869e-032;
	setAttr -s 4 ".wl[1558].w";
	setAttr ".wl[1558].w[4:6]" 1.6853286185771147e-031 5.9788712675750307e-007 
		0.99999940211287319;
	setAttr ".wl[1558].w[8]" 1.7777394363852698e-032;
	setAttr -s 2 ".wl[1559].w[5:6]"  0.00040404379935657765 0.99959595620064323;
	setAttr -s 4 ".wl[1560].w";
	setAttr ".wl[1560].w[4:6]" 3.094352884431464e-009 0.24793644455700795 
		0.75206354663253427;
	setAttr ".wl[1560].w[54]" 5.7161049392888838e-009;
	setAttr -s 4 ".wl[1561].w";
	setAttr ".wl[1561].w[4:6]" 3.2945078198930863e-027 4.6881640456626641e-009 
		0.99999999531183603;
	setAttr ".wl[1561].w[8]" 3.4751539909507029e-028;
	setAttr -s 4 ".wl[1562].w";
	setAttr ".wl[1562].w[4:6]" 9.4412229046930255e-032 0.10903738856883907 
		0.89096261143116118;
	setAttr ".wl[1562].w[8]" 9.958908963135667e-033;
	setAttr -s 2 ".wl[1563].w[5:6]"  0.00031041790029184753 0.99968958209970815;
	setAttr -s 4 ".wl[1564].w";
	setAttr ".wl[1564].w[4:6]" 1.1175564327654597e-027 4.7384807394887531e-009 
		0.99999999526151884;
	setAttr ".wl[1564].w[8]" 1.1788348699574635e-028;
	setAttr -s 5 ".wl[1565].w";
	setAttr ".wl[1565].w[4:6]" 6.3298386742532985e-023 7.9638281086673982e-006 
		0.99999203617189114;
	setAttr ".wl[1565].w[8]" 6.6771243927271369e-024;
	setAttr ".wl[1565].w[54]" 7.8810543000362963e-032;
	setAttr -s 5 ".wl[1566].w";
	setAttr ".wl[1566].w[4:6]" 7.6289089127430874e-018 0.011986611546071823 
		0.98801338845392805;
	setAttr ".wl[1566].w[8]" 8.0480118344241578e-019;
	setAttr ".wl[1566].w[54]" 2.2822266574805285e-026;
	setAttr -s 4 ".wl[1567].w";
	setAttr ".wl[1567].w[4:6]" 7.0428202256350079e-032 0.041259460786766101 
		0.95874053921323399;
	setAttr ".wl[1567].w[8]" 7.4289958174766927e-033;
	setAttr -s 4 ".wl[1568].w";
	setAttr ".wl[1568].w[4:6]" 5.2535770249163977e-027 7.3916246738568596e-009 
		0.99999999260837535;
	setAttr ".wl[1568].w[8]" 5.541643900392266e-028;
	setAttr -s 5 ".wl[1569].w";
	setAttr ".wl[1569].w[4:6]" 1.962768583348106e-022 4.1113198249729019e-006 
		0.99999588868017486;
	setAttr ".wl[1569].w[8]" 2.0704556847072837e-023;
	setAttr ".wl[1569].w[54]" 2.4466995344927252e-031;
	setAttr -s 5 ".wl[1570].w";
	setAttr ".wl[1570].w[4:6]" 4.7265582420511373e-007 2.4260911825492679e-005 
		0.99997526323164243;
	setAttr ".wl[1570].w[8]" 6.0144768537426367e-013;
	setAttr ".wl[1570].w[54]" 3.2001065020349803e-009;
	setAttr -s 5 ".wl[1571].w";
	setAttr ".wl[1571].w[4:6]" 1.3446360115198557e-007 0.54547657366703806 
		0.45452304347879802;
	setAttr ".wl[1571].w[8]" 2.8128689498753238e-032;
	setAttr ".wl[1571].w[54]" 2.4839056287552485e-007;
	setAttr -s 5 ".wl[1572].w";
	setAttr ".wl[1572].w[4:6]" 1.5627744562310236e-006 0.00019306613229695308 
		0.99980370486127224;
	setAttr ".wl[1572].w[8]" 2.4709395283585194e-017;
	setAttr ".wl[1572].w[54]" 1.6662319742930759e-006;
	setAttr -s 5 ".wl[1573].w";
	setAttr ".wl[1573].w[4:6]" 0.022562405652024106 0.091003182951348072 0.88628257692701073;
	setAttr ".wl[1573].w[8]" 5.4172193221557881e-008;
	setAttr ".wl[1573].w[54]" 0.00015178029742382918;
	setAttr -s 5 ".wl[1574].w";
	setAttr ".wl[1574].w[4:6]" 1.1650114406633681e-016 7.3456799255720943e-006 
		0.99999265432007434;
	setAttr ".wl[1574].w[8]" 1.2290128930356432e-017;
	setAttr ".wl[1574].w[54]" 3.4901703251739554e-025;
	setAttr -s 5 ".wl[1575].w";
	setAttr ".wl[1575].w[4:6]" 0.17078503219879945 0.44226967231269337 0.38656882319079366;
	setAttr ".wl[1575].w[8]" 7.568118272181789e-014;
	setAttr ".wl[1575].w[54]" 0.00037647229763776511;
	setAttr -s 5 ".wl[1576].w";
	setAttr ".wl[1576].w[4:6]" 6.5975789456510864e-021 7.4905541539807439e-009 
		0.99999999250944582;
	setAttr ".wl[1576].w[8]" 6.9595548331144387e-022;
	setAttr ".wl[1576].w[54]" 8.2389032172155307e-030;
	setAttr -s 4 ".wl[1577].w";
	setAttr ".wl[1577].w[4:6]" 0.0014666296184495508 0.11559872078858259 0.88293464958140233;
	setAttr ".wl[1577].w[8]" 1.1565664551567649e-011;
	setAttr ".wl[1578].w[6]"  1.0000000000015217;
	setAttr ".wl[1579].w[6]"  1.0000000000000002;
	setAttr ".wl[1580].w[6]"  1;
	setAttr ".wl[1581].w[6]"  1.0000000000575184;
	setAttr ".wl[1582].w[6]"  1;
	setAttr ".wl[1583].w[6]"  1;
	setAttr ".wl[1584].w[7]"  1;
	setAttr ".wl[1585].w[7]"  1;
	setAttr ".wl[1586].w[7]"  1;
	setAttr ".wl[1587].w[7]"  1;
	setAttr ".wl[1588].w[7]"  1;
	setAttr ".wl[1589].w[7]"  1;
	setAttr ".wl[1590].w[7]"  1;
	setAttr ".wl[1591].w[7]"  1;
	setAttr -s 72 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 -0.99994069318767687 0.010890826752274131 0
		 0 -0.010890826752274131 -0.99994069318767687 0 0 46.687069653350832 -1.3357332542372329 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 -0.97357988541123952 -0.22834668099763877 0
		 0 0.22834668099763877 -0.97357988541123952 0 0 50.514390811674524 11.054165786474274 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 -0.95163355108230174 -0.30723538932630839 0
		 0 0.30723538932630839 -0.95163355108230174 0 0 54.601783054435423 15.573667371814446 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 -0.999884049953639 -0.015227824805549014 0
		 0 0.015227824805549014 -0.999884049953639 0 0 63.722726884058652 -3.2195231770122672 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 -0.97782545333777893 0.20942154331578919 0
		 0 -0.20942154331578919 -0.97782545333777893 0 0 66.131544156796764 -18.523929722929179 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 -0.98706667617529598 0.16031025165052018 0
		 0 -0.16031025165052018 -0.98706667617529598 0 0 71.391996274040352 -14.976058200298917 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 -1 -1.5820678100908481e-015 0 0 1.5820678100908481e-015 -1 0
		 0 75.691068172087583 -2.8792421854894461 1;
	setAttr ".pm[7]" -type "matrix" 0.70274456034469468 -0.71113485451339042 -0.020911757510092277 0
		 -0.14226912066537853 -0.16926886321503776 0.9752474297587197 0 -0.69707214849758681 -0.6823747289005565 -0.22012530328621988 0
		 11.609023527255626 15.120545967747146 -72.33403426347175 1;
	setAttr ".pm[8]" -type "matrix" 0.24968213650014237 -0.94620392863969727 0.20580805654669376 0
		 0.96821650385656277 0.24072634944739454 -0.067879498683367526 0 0.014684426188947022 0.21621505523097548 0.97623532896477738 0
		 -67.202324576729552 -15.6453627097614 5.4083249405665885 1;
	setAttr ".pm[9]" -type "matrix" 0.049440737522716369 -0.96173869926074995 -0.26947038393383943 0
		 0.99214165528792098 0.0162429587240723 0.12406088075792479 0 -0.11493715376567225 -0.27348645420958051 0.95498408889788156 0
		 -67.218712837145347 7.5569137566769422 -2.8272935920650277 1;
	setAttr ".pm[10]" -type "matrix" 0.049440737522716383 -0.47624023037149543 -0.87792417465799089 0
		 0.99214165528792109 -0.077735483174845799 0.098041473357539946 0 -0.11493715376567222 -0.87587238661307143 0.46865447085562723 0
		 -67.218712837145347 16.013740831641869 12.446813203332967 1;
	setAttr ".pm[11]" -type "matrix" 0.049440737522716383 -0.47624023037149543 -0.87792417465799089 0
		 0.99214165528792109 -0.077735483174845799 0.098041473357539946 0 -0.11493715376567222 -0.87587238661307143 0.46865447085562723 0
		 -67.218712837145333 29.027235831641867 12.446813203332971 1;
	setAttr ".pm[12]" -type "matrix" 0.6494001267949161 -0.034819093337805564 -0.75964933097968268 0
		 0.75995515414569981 0.0656340545900157 0.6466531795061865 0 0.027342988244374793 -0.99723608118499563 0.069083712817566173 0
		 -69.54490858862485 10.321961946122453 -24.088787529411473 1;
	setAttr ".pm[13]" -type "matrix" 0.6494001267949161 -0.17529860632605418 -0.73996613026468261 0
		 0.75995515414569981 0.18459132098873046 0.62321281108704807 0 0.027342988244374773 -0.96705555312803904 0.2530927066473655 0
		 -69.54490858862485 7.6549537488004562 -25.962190686933361 1;
	setAttr ".pm[14]" -type "matrix" 0.6494001267949161 -0.017109253674599867 -0.76025439739434875 0
		 0.75995515414569981 0.050548741865216032 0.64800693544377208 0 0.027342988244374779 -0.9985750338029391 0.045828624890193209 0
		 -69.544908588624864 14.012747044449039 -23.557652588499124 1;
	setAttr ".pm[15]" -type "matrix" 0.62943189212847384 -0.44052643142328718 0.64011870492044864 0
		 -0.56262090018538657 0.30983921429469008 0.76645768569428152 0 -0.53597874570373993 -0.84257707333080945 -0.052826694493719122 0
		 29.005441175622888 5.5136122604239173 -70.191646371614226 1;
	setAttr ".pm[16]" -type "matrix" 0.62943189212847384 0.04670144838705409 0.77565099618972966 0
		 -0.56262090018538657 0.71589899342228613 0.41345659251188926 0 -0.53597874570373993 -0.69664022704370732 0.47688486893414533 0
		 29.005441175622895 -37.467228254806152 -59.798828873468956 1;
	setAttr ".pm[17]" -type "matrix" 0.62943189212847384 0.11826966141890843 0.76800246116755744 0
		 -0.56262090018538657 0.75108376322022796 0.34544305363044325 0 -0.53597874570373993 -0.64952711091593107 0.53929705760281021 0
		 29.005441175622899 -41.617748342057951 -56.189109860949316 1;
	setAttr ".pm[18]" -type "matrix" 0.53838617598216199 -0.41125225554832129 0.73553511664482929 0
		 -0.64981147228843283 0.35313387416847569 0.67308358871473173 0 -0.53654950935924228 -0.84033805651129545 -0.077114037536461844 0
		 36.356283863756161 1.5654209319655028 -66.309579666205707 1;
	setAttr ".pm[19]" -type "matrix" 0.53838617598216199 0.17753330814621096 0.82378531791357312 0
		 -0.64981147228843272 0.70987596612954829 0.27170050274885305 0 -0.53654950935924228 -0.68158494497039945 0.49755058717285555 0
		 36.356283863756168 -40.872146806463498 -52.363477945707572 1;
	setAttr ".pm[20]" -type "matrix" 0.53838617598216199 0.2056423938147309 0.81722183731068487 0
		 -0.64981147228843283 0.71876479757178313 0.24722907647348583 0 -0.53654950935924228 -0.66414484236327576 0.52060181748493295 0
		 36.356283863756168 -41.062382645461518 -50.987073039290735 1;
	setAttr ".pm[21]" -type "matrix" 0.47072274342265469 -0.35869300642266955 0.8060765633412974 0
		 -0.71127504653143747 0.38628912697856771 0.58725507112313435 0 -0.52202289892910947 -0.84977646326643019 -0.073294307228091909 0
		 40.995023458578146 -2.0866397932432683 -62.710771996707173 1;
	setAttr ".pm[22]" -type "matrix" 0.47072274342265474 0.064237176014089153 0.87993959113247366 0
		 -0.71127504653143758 0.6177333813760284 0.33540017548510609 0 -0.52202289892910947 -0.78375956437639305 0.33647145234354631 0
		 40.995023458578146 -29.948123043087843 -55.099071454966143 1;
	setAttr ".pm[23]" -type "matrix" 0.47072274342265474 0.26669702028497499 0.84100701435586456 0
		 -0.71127504653143758 0.67870631926069247 0.18288121931271306 0 -0.52202289892910947 -0.68427365254459327 0.50917743609367638 0
		 40.995023458578146 -40.533109319014883 -46.974804394344424 1;
	setAttr ".pm[24]" -type "matrix" 0.41138114154404731 -0.34885413952054356 0.84206077317572359 0
		 -0.72327406830719976 0.43725114269359039 0.53449608074101118 0 -0.55465320561254172 -0.82892232902276797 -0.072440278514102757 0
		 42.876236943091804 -6.1227410734777488 -60.243559576776569 1;
	setAttr ".pm[25]" -type "matrix" 0.41138114154404731 0.02934067090254984 0.91099104354154026 0
		 -0.72327406830719976 0.6187234898551851 0.30668528692419028 0 -0.55465320561254183 -0.78506074168334805 0.27575252196729261 0
		 42.876236943091811 -29.105557806557481 -52.953767202850536 1;
	setAttr ".pm[26]" -type "matrix" 0.41138114154404831 0.3161925771221053 0.8548612814689861 0
		 0.72327406830719909 -0.68398587297699487 -0.095068121272331954 0 0.55465320561254161 0.65740822913983943 -0.5100727808489216 0
		 -42.876210397818262 43.365844668187457 41.353330156501499 1;
	setAttr ".pm[27]" -type "matrix" 0.63378257793418225 -0.4760857768155895 -0.60964085904817644 0
		 -0.66161786799157118 0.074652149103755117 -0.74611584448293156 0 0.4007261417244819 0.87622450875793645 -0.26767362513053661 0
		 59.895547762199868 -29.508543099256581 36.922964131250239 1;
	setAttr ".pm[28]" -type "matrix" 0.50870126735680654 -0.47608577681540953 -0.71733210837355332 0
		 -0.78938431882642579 0.074652149103858964 -0.60934346129675887 0 0.34365013863014587 0.8762245087580256 -0.33783900377433962 0
		 60.447998256837806 -29.508547289441395 25.427647819568019 1;
	setAttr ".pm[29]" -type "matrix" 0.049440737522715945 -0.96173869926074951 -0.26947038393384076 0
		 -0.99214165528792087 -0.016242958724071405 -0.12406088075792496 0 0.11493715376567265 0.27348645420958184 -0.954984088897881 0
		 70.184504957563377 -7.9731683156252373 2.3066440400704815 1;
	setAttr ".pm[30]" -type "matrix" 0.049440737522715932 -0.96664004817363691 0.25132176734234213 0
		 -0.99214165528792075 -0.076489012959995009 -0.099017002272082918 0 0.11493715376567265 -0.24445132064129688 -0.96282553067571452 0
		 63.495801658994644 -5.4956830031233777 5.3653109114607362 1;
	setAttr ".pm[31]" -type "matrix" 0.9605756088873123 -0.23598877037581881 0.14698231140949714 0
		 0.16334361100276054 0.90685333909890065 0.38850467964974711 0 -0.22497414152597217 -0.34917949771096646 0.90964845628570623 0
		 -11.920677489069167 -38.302648949734248 -17.651152810548997 1;
	setAttr ".pm[32]" -type "matrix" 0.9605756088873123 -0.0087136334073508979 0.27788229919088342 0
		 0.16334361100276054 0.82649522272412945 -0.53872489413314684 0 -0.22497414152597214 0.56287629138828876 0.7953344681563963 0
		 -11.920677489069169 -23.564951246984077 3.5152218983454016 1;
	setAttr ".pm[33]" -type "matrix" 0.95902714300123004 -0.27633425893522418 0.06250053060269796 0
		 0.060001777595216736 0.41370475506771992 0.90843170481867896 0 -0.27688756864892367 -0.86746051954718806 0.41333463604518933 0
		 -11.15919678188135 -2.6517728708373007 -7.3055024909580499 1;
	setAttr ".pm[34]" -type "matrix" 0.95902714300123004 -0.27803994304974616 -0.054412581778410553 0
		 0.060001777595216729 0.011625927992065563 0.99813056484797458 0 -0.27688756864892372 -0.96049915557860654 0.027832471332426202 0
		 -11.159196781881349 6.9929723669940591 -4.8987684520590493 1;
	setAttr ".pm[35]" -type "matrix" 0.95902714300123004 -0.22617187912888567 0.17062596542791203 0
		 0.060001777595216729 0.75073116415809071 0.65787727263316498 0 -0.27688756864892372 -0.62068429998925057 0.73354227831430474 0
		 -10.911595225454475 -2.9658856630530246 -8.2898272661226411 1;
	setAttr ".pm[36]" -type "matrix" 0.95902714300123004 -0.22617187912888567 0.17062596542791203 0
		 0.060001777595216729 0.75073116415809071 0.65787727263316498 0 -0.27688756864892372 -0.62068429998925057 0.73354227831430474 0
		 -10.911595225454477 -7.6799906221407284 -3.7290142623384996 1;
	setAttr ".pm[37]" -type "matrix" 0.96057560888731253 -0.23598877037581895 0.14698231140949641 0
		 -0.16334361100276026 -0.90685333909889976 -0.38850467964974994 0 0.22497414152597203 0.3491794977109694 -0.90964845628570556 0
		 11.920672252778733 38.302643539876662 17.65114943887156 1;
	setAttr ".pm[38]" -type "matrix" 0.96057560888731253 -0.0087136334073519683 0.27788229919088303 0
		 -0.16334361100276026 -0.82649522272413189 0.53872489413314339 0 0.224974141525972 -0.56287629138828532 -0.79533446815639885 0
		 11.920714441677591 23.564930720480014 -3.5151982276759774 1;
	setAttr ".pm[39]" -type "matrix" 0.95902714300123004 -0.27633425893522451 0.062500530602698057 0
		 -0.060001777595216896 -0.41370475506772025 -0.90843170481867885 0 0.27688756864892405 0.86746051954718817 -0.41333463604518977 0
		 11.159200613046355 2.6517668552377489 7.3055019261545837 1;
	setAttr ".pm[40]" -type "matrix" 0.95902714300123004 -0.27803994304974661 -0.054412581778410303 0
		 -0.06000177759521691 -0.01162592799206689 -0.9981305648479748 0 0.27688756864892411 0.96049915557860677 -0.027832471332427659 0
		 11.159153716947547 -6.9929640917749545 4.8987685676689967 1;
	setAttr ".pm[41]" -type "matrix" 0.95902714300123004 -0.22617187912888598 0.17062596542791217 0
		 -0.060001777595216896 -0.75073116415809082 -0.65787727263316498 0 0.276887568648924 0.62068429998925068 -0.73354227831430485 0
		 10.91161720950681 2.9658794791527696 8.2898370922977378 1;
	setAttr ".pm[42]" -type "matrix" 0.95902714300123004 -0.22617187912888598 0.17062596542791217 0
		 -0.060001777595216896 -0.75073116415809082 -0.65787727263316498 0 0.276887568648924 0.62068429998925068 -0.73354227831430485 0
		 10.911592217180722 7.6799969074478769 3.729011707148715 1;
	setAttr ".pm[43]" -type "matrix" 1 0 0 0 0 0.99999999999999978 0 0 0 0 0.99999999999999978 0
		 -4.2951831817626953 -43.048092414295311 -5.2513569892849556 1;
	setAttr ".pm[44]" -type "matrix" 1 0 0 0 0 -0.99999999999999978 9.7821056810332105e-015 0
		 0 -9.7821056810332105e-015 -0.99999999999999978 0 4.2951798439025879 43.048100012078514 5.2513599332282199 1;
	setAttr ".pm[45]" -type "matrix" -0.36431148677367847 -0.15345463620951602 -0.91854712194342913 0
		 0.12341819896885381 0.96967507475575865 -0.21094595886316037 0 0.92306288451439544 -0.19021546736061931 -0.33432467334724919 0
		 -3.2233645298520068 -44.675224325332415 17.518276364459016 1;
	setAttr ".pm[46]" -type "matrix" 0.97522204163322113 -0.10853011150386004 -0.19277755162282728 0
		 0.1010454602924989 0.9937100467221992 -0.048271710117232178 0 0.19680392391161605 0.027596339255864626 0.98005441562837037 0
		 -7.3445829470803607 -44.975911343134804 7.6408752817460277 1;
	setAttr ".pm[47]" -type "matrix" -0.3643114880099505 0.15345463339908022 0.91854712192262056 0
		 -0.12341819722350725 0.9696750757023378 -0.21094595553308143 0 -0.9230628842598293 -0.19021546480246865 -0.33432467550557116 0
		 3.2233644370474881 -44.675224393724406 17.51827620712136 1;
	setAttr ".pm[48]" -type "matrix" 0.97522204163077053 0.1085301098057663 0.19277755259121823 0
		 -0.10104545716020878 0.99371004670827157 -0.048271716960641843 0 -0.19680392553197718 0.027596346435573994 0.98005441510082025 0
		 7.3445831907846451 -44.97591127095604 7.6408756588225817 1;
	setAttr ".pm[49]" -type "matrix" 0.41138114154404726 0.31619257712210558 0.85486128146898632 0
		 -0.72327406830719976 0.68398587297699465 0.095068121272330872 0 -0.55465320561254183 -0.65740822913983921 0.51007278084892105 0
		 42.876236943091804 -43.365772299890601 -41.353335647583798 1;
	setAttr ".pm[50]" -type "matrix" 0.63378257793418247 -0.47608577681572262 -0.60964085904807253 0
		 0.66161786799157096 -0.074652149103592191 0.74611584448294821 0 -0.40072614172448195 -0.87622450875787783 0.26767362513072773 0
		 -59.89550910796649 29.508551381678881 -36.922936632501575 1;
	setAttr ".pm[51]" -type "matrix" 0.50870126735680643 -0.47608577681572228 -0.7173321083733456 0
		 0.78938431882642612 -0.07465214910359283 0.60934346129679118 0 -0.34365013863014543 -0.87622450875787794 0.33783900377472198 0
		 -60.447971576292275 29.508551381678924 -25.427598052242228 1;
	setAttr ".pm[52]" -type "matrix" 0.049440737522716369 -0.96173869926074995 -0.26947038393383943 0
		 0.99214165528792098 0.0162429587240723 0.12406088075792479 0 -0.11493715376567225 -0.27348645420958051 0.95498408889788156 0
		 -70.184467346117515 7.9731903606140913 -2.306637125580957 1;
	setAttr ".pm[53]" -type "matrix" 0.049440737522716369 -0.96664004817363702 0.25132176734234302 0
		 0.99214165528792109 0.076489012959995661 0.099017002272082391 0 -0.11493715376567225 0.24445132064129771 0.96282553067571464 0
		 -63.495788843081009 5.4956782577585708 -5.3653164932550004 1;
	setAttr ".pm[54]" -type "matrix" 0.24968213650014232 -0.94620392863969549 0.20580805654670078 0
		 -0.96821650385656266 -0.24072634944739385 0.067879498683368789 0 -0.014684426188946505 -0.21621505523098258 -0.97623532896477583 0
		 67.202358168186237 15.645371609701044 -5.4083270685803475 1;
	setAttr ".pm[55]" -type "matrix" 0.049440737522715945 -0.96173869926074951 -0.26947038393384076 0
		 -0.99214165528792087 -0.016242958724071405 -0.12406088075792496 0 0.11493715376567265 0.27348645420958184 -0.954984088897881 0
		 67.218745680219627 -7.5569211265802831 2.827293592415757 1;
	setAttr ".pm[56]" -type "matrix" 0.049440737522715918 -0.47624023037149471 -0.87792417465799122 0
		 -0.99214165528792075 0.077735483174846465 -0.098041473357539446 0 0.11493715376567262 0.87587238661307176 -0.46865447085562645 0
		 67.218745680219627 -16.013751378286742 -12.446824074528228 1;
	setAttr ".pm[57]" -type "matrix" 0.049440737522715918 -0.47624023037149471 -0.87792417465799122 0
		 -0.99214165528792075 0.077735483174846465 -0.098041473357539446 0 0.11493715376567262 0.87587238661307176 -0.46865447085562645 0
		 67.218745680219612 -29.027246378286744 -12.446824074528228 1;
	setAttr ".pm[58]" -type "matrix" 0.64940012679491566 -0.034819093337805786 -0.75964933097968323 0
		 -0.75995515414570036 -0.06563405459001595 -0.64665317950618562 0 -0.02734298824437487 0.99723608118499585 -0.069083712817566506 0
		 69.544936699585961 -10.321891773618885 24.088792368675861 1;
	setAttr ".pm[59]" -type "matrix" 0.64940012679491577 -0.17529860632605307 -0.7399661302646835 0
		 -0.75995515414570025 -0.18459132098872935 -0.62321281108704785 0 -0.02734298824437487 0.96705555312803992 -0.25309270664736394 0
		 69.544934618156688 -7.6549547271198719 25.9621850941822 1;
	setAttr ".pm[60]" -type "matrix" 0.64940012679491566 -0.017109253674600217 -0.76025439739434941 0
		 -0.75995515414570025 -0.050548741865216434 -0.6480069354437713 0 -0.027342988244374877 0.99857503380293933 -0.045828624890193653 0
		 69.544974268773942 -14.012657972125673 23.557649482336057 1;
	setAttr ".pm[61]" -type "matrix" 0.62943189212847428 -0.44052643142328712 0.64011870492044831 0
		 0.56262090018538613 -0.30983921429468936 -0.76645768569428174 0 0.53597874570373927 0.84257707333081022 0.052826694493719295 0
		 -29.005438077549716 -5.5135276101014155 70.191743187523784 1;
	setAttr ".pm[62]" -type "matrix" 0.62943189212847406 0.046701448387053805 0.7756509961897291 0
		 0.56262090018538613 -0.71589899342228558 -0.41345659251188988 0 0.53597874570373927 0.69664022704370776 -0.4768848689341455 0
		 -29.005444162341227 37.467247883415304 59.798842137143502 1;
	setAttr ".pm[63]" -type "matrix" 0.62943189212847417 0.11826966141890914 0.76800246116755666 0
		 0.56262090018538602 -0.75108376322022807 -0.34544305363044292 0 0.53597874570373916 0.64952711091593085 -0.53929705760281121 0
		 -29.005405444990323 41.617840076730033 56.189082945775226 1;
	setAttr ".pm[64]" -type "matrix" 0.53838617598216276 -0.41125225554832118 0.73553511664482885 0
		 0.64981147228843261 -0.35313387416847469 -0.67308358871473239 0 0.53654950935924162 0.84033805651129578 0.077114037536461899 0
		 -36.3562443193169 -1.5653858153225262 66.309662744651206 1;
	setAttr ".pm[65]" -type "matrix" 0.53838617598216276 0.1775333081462111 0.82378531791357257 0
		 0.64981147228843272 -0.70987596612954795 -0.27170050274885377 0 0.53654950935924151 0.68158494497039945 -0.49755058717285616 0
		 -36.356312797551276 40.872228242400908 52.363532108982 1;
	setAttr ".pm[66]" -type "matrix" 0.53838617598216287 0.20564239381473362 0.81722183731068354 0
		 0.64981147228843261 -0.71876479757178369 -0.24722907647348424 0 0.53654950935924151 0.66414484236327409 -0.52060181748493572 0
		 -36.35624675807729 41.062473213731266 50.987098107181353 1;
	setAttr ".pm[67]" -type "matrix" 0.47072274342265535 -0.35869300642266905 0.80607656334129696 0
		 0.71127504653143725 -0.38628912697856699 -0.5872550711231348 0 0.5220228989291088 0.84977646326643064 0.07329430722809159 0
		 -40.995027573514001 2.0866945265972521 62.710828592457865 1;
	setAttr ".pm[68]" -type "matrix" 0.47072274342265541 0.064237176014089389 0.879939591132473 0
		 0.71127504653143725 -0.61773338137602796 -0.33540017548510681 0 0.5220228989291088 0.78375956437639305 -0.33647145234354675 0
		 -40.995037867904294 29.94814543934292 55.099085786542986 1;
	setAttr ".pm[69]" -type "matrix" 0.47072274342265552 0.26669702028497599 0.84100701435586389 0
		 0.71127504653143725 -0.67870631926069247 -0.18288121931271323 0 0.52202289892910891 0.68427365254459294 -0.5091774360936776 0
		 -40.995006524283347 40.533172925812138 46.974828316693056 1;
	setAttr ".pm[70]" -type "matrix" 0.41138114154404831 -0.34885413952054323 0.84206077317572336 0
		 0.72327406830719909 -0.43725114269359011 -0.53449608074101185 0 0.55465320561254161 0.82892232902276863 0.072440278514101925 0
		 -42.876253021877858 6.1227853885384684 60.243627507920579 1;
	setAttr ".pm[71]" -type "matrix" 0.41138114154404826 0.029340670902549944 0.9109910435415397 0
		 0.72327406830719909 -0.61872348985518477 -0.30668528692419106 0 0.5546532056125415 0.78506074168334827 -0.27575252196729333 0
		 -42.876217524983659 29.105651585690453 52.953805555729083 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 6 ".ma";
	setAttr -s 72 ".dpf[0:71]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
createNode tweak -n "tweak12";
createNode objectSet -n "skinCluster12Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster12GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster12GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:1591]";
createNode objectSet -n "tweakSet12";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId323";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts107";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId327";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts111";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1629]";
createNode groupId -n "groupId328";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts112";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1630:1651]";
createNode groupId -n "groupId329";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts113";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1652:1673]";
createNode groupId -n "groupId330";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts114";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1674:1679]";
createNode groupId -n "groupId377";
	setAttr ".ihi" 0;
createNode groupId -n "groupId495";
	setAttr ".ihi" 0;
createNode groupId -n "groupId496";
	setAttr ".ihi" 0;
createNode lambert -n "eyes";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo40";
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
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 43 100 -ps 2 57 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
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
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultResolution;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".pa" 1;
	setAttr -k on ".al";
	setAttr -k on ".fld";
	setAttr -k on ".zsl";
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
connectAttr "skeleton_layer.di" "bip_pelvis.do";
connectAttr "bip_pelvis.s" "bip_spine_0.is";
connectAttr "skeleton_layer.di" "bip_spine_0.do";
connectAttr "bip_spine_0.s" "bip_spine_1.is";
connectAttr "skeleton_layer.di" "bip_spine_1.do";
connectAttr "bip_spine_1.s" "bip_spine_2.is";
connectAttr "skeleton_layer.di" "bip_spine_2.do";
connectAttr "bip_spine_2.s" "bip_spine_3.is";
connectAttr "skeleton_layer.di" "bip_spine_3.do";
connectAttr "bip_spine_3.s" "bip_neck.is";
connectAttr "skeleton_layer.di" "bip_neck.do";
connectAttr "bip_neck.s" "bip_head.is";
connectAttr "skeleton_layer.di" "bip_head.do";
connectAttr "bip_head.s" "bip_headEnd.is";
connectAttr "skeleton_layer.di" "bip_headEnd.do";
connectAttr "bip_head.s" "prp_cig.is";
connectAttr "skeleton_layer.di" "prp_cig.do";
connectAttr "prp_cig.s" "prp_cigEnd.is";
connectAttr "skeleton_layer.di" "prp_cigEnd.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_neck|bip_head|prp_cig|cig_smoke.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_neck|bip_head|prp_cig|cig_smoke|cig_smoke.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_neck|bip_head|head.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_neck|bip_head|head|head.do"
		;
connectAttr "bip_spine_3.s" "bip_collar_L.is";
connectAttr "skeleton_layer.di" "bip_collar_L.do";
connectAttr "bip_collar_L.s" "bip_upperArm_L.is";
connectAttr "skeleton_layer.di" "bip_upperArm_L.do";
connectAttr "bip_upperArm_L.s" "bip_lowerArm_L.is";
connectAttr "skeleton_layer.di" "bip_lowerArm_L.do";
connectAttr "bip_lowerArm_L.s" "bip_hand_L.is";
connectAttr "skeleton_layer.di" "bip_hand_L.do";
connectAttr "bip_hand_L.s" "bip_thumb_0_L.is";
connectAttr "skeleton_layer.di" "bip_thumb_0_L.do";
connectAttr "bip_thumb_0_L.s" "bip_thumb_1_L.is";
connectAttr "skeleton_layer.di" "bip_thumb_1_L.do";
connectAttr "bip_thumb_1_L.s" "bip_thumb_2_L.is";
connectAttr "skeleton_layer.di" "bip_thumb_2_L.do";
connectAttr "bip_thumb_2_L.s" "bip_thumbEnd_L.is";
connectAttr "skeleton_layer.di" "bip_thumbEnd_L.do";
connectAttr "bip_hand_L.s" "bip_index_0_L.is";
connectAttr "skeleton_layer.di" "bip_index_0_L.do";
connectAttr "bip_index_0_L.s" "bip_index_1_L.is";
connectAttr "skeleton_layer.di" "bip_index_1_L.do";
connectAttr "bip_index_1_L.s" "bip_index_2_L.is";
connectAttr "skeleton_layer.di" "bip_index_2_L.do";
connectAttr "bip_index_2_L.s" "bip_indexEnd_L.is";
connectAttr "skeleton_layer.di" "bip_indexEnd_L.do";
connectAttr "bip_hand_L.s" "bip_middle_0_L.is";
connectAttr "skeleton_layer.di" "bip_middle_0_L.do";
connectAttr "bip_middle_0_L.s" "bip_middle_1_L.is";
connectAttr "skeleton_layer.di" "bip_middle_1_L.do";
connectAttr "bip_middle_1_L.s" "bip_middle_2_L.is";
connectAttr "skeleton_layer.di" "bip_middle_2_L.do";
connectAttr "bip_middle_2_L.s" "bip_middleEnd_L.is";
connectAttr "skeleton_layer.di" "bip_middleEnd_L.do";
connectAttr "bip_hand_L.s" "bip_ring_0_L.is";
connectAttr "skeleton_layer.di" "bip_ring_0_L.do";
connectAttr "bip_ring_0_L.s" "bip_ring_1_L.is";
connectAttr "skeleton_layer.di" "bip_ring_1_L.do";
connectAttr "bip_ring_1_L.s" "bip_ring_2_L.is";
connectAttr "skeleton_layer.di" "bip_ring_2_L.do";
connectAttr "bip_ring_2_L.s" "bip_ringEnd_L.is";
connectAttr "skeleton_layer.di" "bip_ringEnd_L.do";
connectAttr "bip_hand_L.s" "bip_pinky_0_L.is";
connectAttr "skeleton_layer.di" "bip_pinky_0_L.do";
connectAttr "bip_pinky_0_L.s" "bip_pinky_1_L.is";
connectAttr "skeleton_layer.di" "bip_pinky_1_L.do";
connectAttr "bip_pinky_1_L.s" "bip_pinky_2_L.is";
connectAttr "skeleton_layer.di" "bip_pinky_2_L.do";
connectAttr "bip_pinky_2_L.s" "bip_pinkyEnd_L.is";
connectAttr "skeleton_layer.di" "bip_pinkyEnd_L.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_L|bip_upperArm_L|bip_lowerArm_L|bip_hand_L|weapon_bone_L.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_L|bip_upperArm_L|bip_lowerArm_L|bip_hand_L|weapon_bone_L|weapon_bone_L.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_L|bip_upperArm_L|bip_lowerArm_L|bip_hand_L|effect_hand_L.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_L|bip_upperArm_L|bip_lowerArm_L|bip_hand_L|effect_hand_L|effect_hand_L.do"
		;
connectAttr "bip_lowerArm_L.s" "prp_wristOuter_L.is";
connectAttr "skeleton_layer.di" "prp_wristOuter_L.do";
connectAttr "bip_lowerArm_L.s" "prp_wristInner_L.is";
connectAttr "skeleton_layer.di" "prp_wristInner_L.do";
connectAttr "hlp_suitArmTop_LShape.tx" "hlp_suitArmTop_L.tx";
connectAttr "hlp_suitArmTop_LShape.ty" "hlp_suitArmTop_L.ty";
connectAttr "hlp_suitArmTop_LShape.tz" "hlp_suitArmTop_L.tz";
connectAttr "hlp_suitArmTop_LShape.rx" "hlp_suitArmTop_L.rx";
connectAttr "hlp_suitArmTop_LShape.ry" "hlp_suitArmTop_L.ry";
connectAttr "hlp_suitArmTop_LShape.rz" "hlp_suitArmTop_L.rz";
connectAttr "skeleton_layer.di" "hlp_suitArmTop_L.do";
connectAttr "bip_upperArm_L.pm" "hlp_suitArmTop_LShape.ps";
connectAttr "bip_upperArm_L.wm" "hlp_suitArmTop_LShape.trs";
connectAttr "skeleton_layer.di" "hlp_suitArmTop_LShape.do";
connectAttr "hlp_suitArmpitBack_LShape.tx" "hlp_suitArmpitBack_L.tx";
connectAttr "hlp_suitArmpitBack_LShape.ty" "hlp_suitArmpitBack_L.ty";
connectAttr "hlp_suitArmpitBack_LShape.tz" "hlp_suitArmpitBack_L.tz";
connectAttr "hlp_suitArmpitBack_LShape.rx" "hlp_suitArmpitBack_L.rx";
connectAttr "hlp_suitArmpitBack_LShape.ry" "hlp_suitArmpitBack_L.ry";
connectAttr "hlp_suitArmpitBack_LShape.rz" "hlp_suitArmpitBack_L.rz";
connectAttr "skeleton_layer.di" "hlp_suitArmpitBack_L.do";
connectAttr "bip_upperArm_L.pm" "hlp_suitArmpitBack_LShape.ps";
connectAttr "bip_upperArm_L.wm" "hlp_suitArmpitBack_LShape.trs";
connectAttr "skeleton_layer.di" "hlp_suitArmpitBack_LShape.do";
connectAttr "bip_spine_3.s" "bip_collar_R.is";
connectAttr "skeleton_layer.di" "bip_collar_R.do";
connectAttr "bip_collar_R.s" "bip_upperArm_R.is";
connectAttr "skeleton_layer.di" "bip_upperArm_R.do";
connectAttr "bip_upperArm_R.s" "bip_lowerArm_R.is";
connectAttr "skeleton_layer.di" "bip_lowerArm_R.do";
connectAttr "bip_lowerArm_R.s" "bip_hand_R.is";
connectAttr "skeleton_layer.di" "bip_hand_R.do";
connectAttr "bip_hand_R.s" "bip_thumb_0_R.is";
connectAttr "skeleton_layer.di" "bip_thumb_0_R.do";
connectAttr "bip_thumb_0_R.s" "bip_thumb_1_R.is";
connectAttr "skeleton_layer.di" "bip_thumb_1_R.do";
connectAttr "bip_thumb_1_R.s" "bip_thumb_2_R.is";
connectAttr "skeleton_layer.di" "bip_thumb_2_R.do";
connectAttr "bip_thumb_2_R.s" "bip_thumbEnd_R.is";
connectAttr "skeleton_layer.di" "bip_thumbEnd_R.do";
connectAttr "bip_hand_R.s" "bip_index_0_R.is";
connectAttr "skeleton_layer.di" "bip_index_0_R.do";
connectAttr "bip_index_0_R.s" "bip_index_1_R.is";
connectAttr "skeleton_layer.di" "bip_index_1_R.do";
connectAttr "bip_index_1_R.s" "bip_index_2_R.is";
connectAttr "skeleton_layer.di" "bip_index_2_R.do";
connectAttr "bip_index_2_R.s" "bip_indexEnd_R.is";
connectAttr "skeleton_layer.di" "bip_indexEnd_R.do";
connectAttr "bip_hand_R.s" "bip_middle_0_R.is";
connectAttr "skeleton_layer.di" "bip_middle_0_R.do";
connectAttr "bip_middle_0_R.s" "bip_middle_1_R.is";
connectAttr "skeleton_layer.di" "bip_middle_1_R.do";
connectAttr "bip_middle_1_R.s" "bip_middle_2_R.is";
connectAttr "skeleton_layer.di" "bip_middle_2_R.do";
connectAttr "bip_middle_2_R.s" "bip_middleEnd_R.is";
connectAttr "skeleton_layer.di" "bip_middleEnd_R.do";
connectAttr "bip_hand_R.s" "bip_ring_0_R.is";
connectAttr "skeleton_layer.di" "bip_ring_0_R.do";
connectAttr "bip_ring_0_R.s" "bip_ring_1_R.is";
connectAttr "skeleton_layer.di" "bip_ring_1_R.do";
connectAttr "bip_ring_1_R.s" "bip_ring_2_R.is";
connectAttr "skeleton_layer.di" "bip_ring_2_R.do";
connectAttr "bip_ring_2_R.s" "bip_ringEnd_R.is";
connectAttr "skeleton_layer.di" "bip_ringEnd_R.do";
connectAttr "bip_hand_R.s" "bip_pinky_0_R.is";
connectAttr "skeleton_layer.di" "bip_pinky_0_R.do";
connectAttr "bip_pinky_0_R.s" "bip_pinky_1_R.is";
connectAttr "skeleton_layer.di" "bip_pinky_1_R.do";
connectAttr "bip_pinky_1_R.s" "bip_pinky_2_R.is";
connectAttr "skeleton_layer.di" "bip_pinky_2_R.do";
connectAttr "bip_pinky_2_R.s" "bip_pinkyEnd_R.is";
connectAttr "skeleton_layer.di" "bip_pinkyEnd_R.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone|weapon_bone.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_1.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_1|weapon_bone_1.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_2.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_2|weapon_bone_2.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_3.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|weapon_bone_3|weapon_bone_3.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|effect_hand_R.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|bip_spine_3|bip_collar_R|bip_upperArm_R|bip_lowerArm_R|bip_hand_R|effect_hand_R|effect_hand_R.do"
		;
connectAttr "bip_lowerArm_R.s" "prp_wristOuter_R.is";
connectAttr "skeleton_layer.di" "prp_wristOuter_R.do";
connectAttr "bip_lowerArm_R.s" "prp_wristInner_R.is";
connectAttr "skeleton_layer.di" "prp_wristInner_R.do";
connectAttr "hlp_suitArmTop_RShape.tx" "hlp_suitArmTop_R.tx";
connectAttr "hlp_suitArmTop_RShape.ty" "hlp_suitArmTop_R.ty";
connectAttr "hlp_suitArmTop_RShape.tz" "hlp_suitArmTop_R.tz";
connectAttr "hlp_suitArmTop_RShape.rx" "hlp_suitArmTop_R.rx";
connectAttr "hlp_suitArmTop_RShape.ry" "hlp_suitArmTop_R.ry";
connectAttr "hlp_suitArmTop_RShape.rz" "hlp_suitArmTop_R.rz";
connectAttr "skeleton_layer.di" "hlp_suitArmTop_R.do";
connectAttr "bip_upperArm_R.pm" "hlp_suitArmTop_RShape.ps";
connectAttr "bip_upperArm_R.wm" "hlp_suitArmTop_RShape.trs";
connectAttr "skeleton_layer.di" "hlp_suitArmTop_RShape.do";
connectAttr "hlp_suitArmpitBack_RShape.tx" "hlp_suitArmpitBack_R.tx";
connectAttr "hlp_suitArmpitBack_RShape.ty" "hlp_suitArmpitBack_R.ty";
connectAttr "hlp_suitArmpitBack_RShape.tz" "hlp_suitArmpitBack_R.tz";
connectAttr "hlp_suitArmpitBack_RShape.rx" "hlp_suitArmpitBack_R.rx";
connectAttr "hlp_suitArmpitBack_RShape.ry" "hlp_suitArmpitBack_R.ry";
connectAttr "hlp_suitArmpitBack_RShape.rz" "hlp_suitArmpitBack_R.rz";
connectAttr "skeleton_layer.di" "hlp_suitArmpitBack_R.do";
connectAttr "bip_upperArm_R.pm" "hlp_suitArmpitBack_RShape.ps";
connectAttr "bip_upperArm_R.wm" "hlp_suitArmpitBack_RShape.trs";
connectAttr "skeleton_layer.di" "hlp_suitArmpitBack_RShape.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|flag.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|bip_spine_0|bip_spine_1|bip_spine_2|flag|flag.do"
		;
connectAttr "bip_spine_2.s" "medal_bone.is";
connectAttr "bip_pelvis.s" "bip_hip_L.is";
connectAttr "skeleton_layer.di" "bip_hip_L.do";
connectAttr "bip_hip_L.s" "bip_knee_L.is";
connectAttr "skeleton_layer.di" "bip_knee_L.do";
connectAttr "bip_knee_L.s" "bip_foot_L.is";
connectAttr "skeleton_layer.di" "bip_foot_L.do";
connectAttr "bip_foot_L.s" "bip_toe_L.is";
connectAttr "skeleton_layer.di" "bip_toe_L.do";
connectAttr "bip_toe_L.s" "bip_toeEnd_L.is";
connectAttr "skeleton_layer.di" "bip_toeEnd_L.do";
connectAttr "bip_knee_L.s" "prp_pantsFront_L.is";
connectAttr "skeleton_layer.di" "prp_pantsFront_L.do";
connectAttr "bip_knee_L.s" "prp_pantsBack_L.is";
connectAttr "skeleton_layer.di" "prp_pantsBack_L.do";
connectAttr "bip_pelvis.s" "bip_hip_R.is";
connectAttr "skeleton_layer.di" "bip_hip_R.do";
connectAttr "bip_hip_R.s" "bip_knee_R.is";
connectAttr "skeleton_layer.di" "bip_knee_R.do";
connectAttr "bip_knee_R.s" "bip_foot_R.is";
connectAttr "skeleton_layer.di" "bip_foot_R.do";
connectAttr "bip_foot_R.s" "bip_toe_R.is";
connectAttr "skeleton_layer.di" "bip_toe_R.do";
connectAttr "bip_toe_R.s" "bip_toeEnd_R.is";
connectAttr "skeleton_layer.di" "bip_toeEnd_R.do";
connectAttr "bip_knee_R.s" "prp_pantsFront_R.is";
connectAttr "skeleton_layer.di" "prp_pantsFront_R.do";
connectAttr "bip_knee_R.s" "prp_pantsBack_R.is";
connectAttr "skeleton_layer.di" "prp_pantsBack_R.do";
connectAttr "hlp_thigh_LShape.rx" "hlp_thigh_L.rx";
connectAttr "hlp_thigh_LShape.ry" "hlp_thigh_L.ry";
connectAttr "hlp_thigh_LShape.rz" "hlp_thigh_L.rz";
connectAttr "bip_pelvis.s" "hlp_thigh_L.is";
connectAttr "hlp_thigh_LShape.tx" "hlp_thigh_L.tx";
connectAttr "hlp_thigh_LShape.ty" "hlp_thigh_L.ty";
connectAttr "hlp_thigh_LShape.tz" "hlp_thigh_L.tz";
connectAttr "skeleton_layer.di" "hlp_thigh_L.do";
connectAttr "bip_hip_L.pm" "hlp_thigh_LShape.ps";
connectAttr "bip_hip_L.wm" "hlp_thigh_LShape.trs";
connectAttr "skeleton_layer.di" "hlp_thigh_LShape.do";
connectAttr "hlp_thigh_RShape.tx" "hlp_thigh_R.tx";
connectAttr "hlp_thigh_RShape.ty" "hlp_thigh_R.ty";
connectAttr "hlp_thigh_RShape.tz" "hlp_thigh_R.tz";
connectAttr "bip_pelvis.s" "hlp_thigh_R.is";
connectAttr "hlp_thigh_RShape.rx" "hlp_thigh_R.rx";
connectAttr "hlp_thigh_RShape.ry" "hlp_thigh_R.ry";
connectAttr "hlp_thigh_RShape.rz" "hlp_thigh_R.rz";
connectAttr "skeleton_layer.di" "hlp_thigh_R.do";
connectAttr "bip_hip_R.pm" "hlp_thigh_RShape.ps";
connectAttr "bip_hip_R.wm" "hlp_thigh_RShape.trs";
connectAttr "skeleton_layer.di" "hlp_thigh_RShape.do";
connectAttr "bip_pelvis.s" "prp_coat_front_0_L.is";
connectAttr "skeleton_layer.di" "prp_coat_front_0_L.do";
connectAttr "prp_coat_front_0_L.s" "prp_coat_frontEnd_L.is";
connectAttr "skeleton_layer.di" "prp_coat_frontEnd_L.do";
connectAttr "bip_pelvis.s" "prp_coat_back_0_L.is";
connectAttr "skeleton_layer.di" "prp_coat_back_0_L.do";
connectAttr "prp_coat_back_0_L.s" "prp_coat_backEnd_L.is";
connectAttr "skeleton_layer.di" "prp_coat_backEnd_L.do";
connectAttr "bip_pelvis.s" "prp_coat_front_0_R.is";
connectAttr "skeleton_layer.di" "prp_coat_front_0_R.do";
connectAttr "prp_coat_front_0_R.s" "prp_coat_frontEnd_R.is";
connectAttr "skeleton_layer.di" "prp_coat_frontEnd_R.do";
connectAttr "bip_pelvis.s" "prp_coat_back_0_R.is";
connectAttr "skeleton_layer.di" "prp_coat_back_0_R.do";
connectAttr "prp_coat_back_0_R.s" "prp_coat_backEnd_R.is";
connectAttr "skeleton_layer.di" "prp_coat_backEnd_R.do";
connectAttr "bip_pelvis.s" "mvm.is";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone|prop_bone.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_1.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_1|prop_bone_1.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_2.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_2|prop_bone_2.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_3.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_3|prop_bone_3.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_4.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_4|prop_bone_4.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_5.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_5|prop_bone_5.do"
		;
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_6.do";
connectAttr "skeleton_layer.di" "|spyInfo_group|bip_pelvis|prop_bone_6|prop_bone_6.do"
		;
connectAttr "mesh_layer.di" "hands_mesh.do";
connectAttr "groupId257.id" "hands_meshShape.iog.og[477].gid";
connectAttr "spy_redSG.mwc" "hands_meshShape.iog.og[477].gco";
connectAttr "skinCluster3GroupId.id" "hands_meshShape.iog.og[478].gid";
connectAttr "skinCluster3Set.mwc" "hands_meshShape.iog.og[478].gco";
connectAttr "groupId259.id" "hands_meshShape.iog.og[479].gid";
connectAttr "tweakSet3.mwc" "hands_meshShape.iog.og[479].gco";
connectAttr "mesh_layer.di" "hands_meshShape.do";
connectAttr "skinCluster3.og[0]" "hands_meshShape.i";
connectAttr "tweak3.vl[0].vt[0]" "hands_meshShape.twl";
connectAttr "mesh_layer.di" "hands_meshOrig1.do";
connectAttr "mesh_layer.di" "body_mesh.do";
connectAttr "groupId260.id" "body_meshShape.iog.og[465].gid";
connectAttr "spy_redSG.mwc" "body_meshShape.iog.og[465].gco";
connectAttr "groupId261.id" "body_meshShape.iog.og[466].gid";
connectAttr "spy_redSG.mwc" "body_meshShape.iog.og[466].gco";
connectAttr "skinCluster4GroupId.id" "body_meshShape.iog.og[467].gid";
connectAttr "skinCluster4Set.mwc" "body_meshShape.iog.og[467].gco";
connectAttr "groupId263.id" "body_meshShape.iog.og[468].gid";
connectAttr "tweakSet4.mwc" "body_meshShape.iog.og[468].gco";
connectAttr "mesh_layer.di" "body_meshShape.do";
connectAttr "skinCluster4.og[0]" "body_meshShape.i";
connectAttr "tweak4.vl[0].vt[0]" "body_meshShape.twl";
connectAttr "mesh_layer.di" "body_meshOrig1.do";
connectAttr "mesh_layer.di" "spy_head_mesh.do";
connectAttr "skinCluster12GroupId.id" "spy_head_meshShape.iog.og[18].gid";
connectAttr "skinCluster12Set.mwc" "spy_head_meshShape.iog.og[18].gco";
connectAttr "groupId323.id" "spy_head_meshShape.iog.og[19].gid";
connectAttr "tweakSet12.mwc" "spy_head_meshShape.iog.og[19].gco";
connectAttr "groupId327.id" "spy_head_meshShape.iog.og[23].gid";
connectAttr "spy_headSG.mwc" "spy_head_meshShape.iog.og[23].gco";
connectAttr "groupId328.id" "spy_head_meshShape.iog.og[24].gid";
connectAttr "lambert2SG.mwc" "spy_head_meshShape.iog.og[24].gco";
connectAttr "groupId329.id" "spy_head_meshShape.iog.og[25].gid";
connectAttr "lambert2SG.mwc" "spy_head_meshShape.iog.og[25].gco";
connectAttr "groupId330.id" "spy_head_meshShape.iog.og[26].gid";
connectAttr "spy_redSG.mwc" "spy_head_meshShape.iog.og[26].gco";
connectAttr "groupParts114.og" "spy_head_meshShape.i";
connectAttr "tweak12.vl[0].vt[0]" "spy_head_meshShape.twl";
connectAttr "mesh_layer.di" "spy_head_meshShape.do";
connectAttr "mesh_layer.di" "spy_head_meshShapeOrig1.do";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "helperBoneSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spy_redSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "spy_headSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "spy_redFile.oc" "spy_red.c";
connectAttr "spy_red.oc" "spy_redSG.ss";
connectAttr "hands_meshShape.iog.og[477]" "spy_redSG.dsm" -na;
connectAttr "body_meshShape.iog.og[465]" "spy_redSG.dsm" -na;
connectAttr "body_meshShape.iog.og[466]" "spy_redSG.dsm" -na;
connectAttr "spy_head_meshShape.iog.og[26]" "spy_redSG.dsm" -na;
connectAttr "groupId228.msg" "spy_redSG.gn" -na;
connectAttr "groupId229.msg" "spy_redSG.gn" -na;
connectAttr "groupId244.msg" "spy_redSG.gn" -na;
connectAttr "groupId245.msg" "spy_redSG.gn" -na;
connectAttr "groupId257.msg" "spy_redSG.gn" -na;
connectAttr "groupId260.msg" "spy_redSG.gn" -na;
connectAttr "groupId261.msg" "spy_redSG.gn" -na;
connectAttr "groupId330.msg" "spy_redSG.gn" -na;
connectAttr "groupId377.msg" "spy_redSG.gn" -na;
connectAttr "groupId495.msg" "spy_redSG.gn" -na;
connectAttr "groupId496.msg" "spy_redSG.gn" -na;
connectAttr "spy_redSG.msg" "materialInfo7.sg";
connectAttr "spy_red.msg" "materialInfo7.m";
connectAttr "spy_redFile.msg" "materialInfo7.t" -na;
connectAttr "layerManager.dli[8]" "mesh_layer.id";
connectAttr "bip_thumb_0_L.iog" "bones.dsm" -na;
connectAttr "bip_thumb_1_L.iog" "bones.dsm" -na;
connectAttr "bip_thumb_2_L.iog" "bones.dsm" -na;
connectAttr "bip_index_0_L.iog" "bones.dsm" -na;
connectAttr "bip_index_1_L.iog" "bones.dsm" -na;
connectAttr "bip_index_2_L.iog" "bones.dsm" -na;
connectAttr "bip_middle_0_L.iog" "bones.dsm" -na;
connectAttr "bip_middle_1_L.iog" "bones.dsm" -na;
connectAttr "bip_middle_2_L.iog" "bones.dsm" -na;
connectAttr "bip_ring_0_L.iog" "bones.dsm" -na;
connectAttr "bip_ring_1_L.iog" "bones.dsm" -na;
connectAttr "bip_ring_2_L.iog" "bones.dsm" -na;
connectAttr "bip_pinky_0_L.iog" "bones.dsm" -na;
connectAttr "bip_pinky_1_L.iog" "bones.dsm" -na;
connectAttr "bip_pinky_2_L.iog" "bones.dsm" -na;
connectAttr "prp_wristOuter_L.iog" "bones.dsm" -na;
connectAttr "prp_wristInner_L.iog" "bones.dsm" -na;
connectAttr "bip_hip_L.iog" "bones.dsm" -na;
connectAttr "bip_knee_L.iog" "bones.dsm" -na;
connectAttr "bip_foot_L.iog" "bones.dsm" -na;
connectAttr "bip_toe_L.iog" "bones.dsm" -na;
connectAttr "prp_pantsFront_L.iog" "bones.dsm" -na;
connectAttr "prp_pantsBack_L.iog" "bones.dsm" -na;
connectAttr "hlp_thigh_L.iog" "bones.dsm" -na;
connectAttr "hlp_thigh_R.iog" "bones.dsm" -na;
connectAttr "prp_coat_front_0_L.iog" "bones.dsm" -na;
connectAttr "prp_coat_back_0_L.iog" "bones.dsm" -na;
connectAttr "prp_coat_front_0_R.iog" "bones.dsm" -na;
connectAttr "prp_coat_back_0_R.iog" "bones.dsm" -na;
connectAttr "bip_hip_R.iog" "bones.dsm" -na;
connectAttr "bip_knee_R.iog" "bones.dsm" -na;
connectAttr "bip_foot_R.iog" "bones.dsm" -na;
connectAttr "bip_toe_R.iog" "bones.dsm" -na;
connectAttr "prp_pantsFront_R.iog" "bones.dsm" -na;
connectAttr "prp_pantsBack_R.iog" "bones.dsm" -na;
connectAttr "bip_pelvis.iog" "bones.dsm" -na;
connectAttr "bip_spine_0.iog" "bones.dsm" -na;
connectAttr "bip_spine_1.iog" "bones.dsm" -na;
connectAttr "bip_spine_2.iog" "bones.dsm" -na;
connectAttr "bip_spine_3.iog" "bones.dsm" -na;
connectAttr "bip_neck.iog" "bones.dsm" -na;
connectAttr "bip_head.iog" "bones.dsm" -na;
connectAttr "prp_cig.iog" "bones.dsm" -na;
connectAttr "bip_collar_L.iog" "bones.dsm" -na;
connectAttr "bip_upperArm_L.iog" "bones.dsm" -na;
connectAttr "bip_lowerArm_L.iog" "bones.dsm" -na;
connectAttr "bip_hand_L.iog" "bones.dsm" -na;
connectAttr "hlp_suitArmTop_L.iog" "bones.dsm" -na;
connectAttr "hlp_suitArmpitBack_L.iog" "bones.dsm" -na;
connectAttr "bip_collar_R.iog" "bones.dsm" -na;
connectAttr "bip_upperArm_R.iog" "bones.dsm" -na;
connectAttr "bip_lowerArm_R.iog" "bones.dsm" -na;
connectAttr "bip_hand_R.iog" "bones.dsm" -na;
connectAttr "bip_thumb_0_R.iog" "bones.dsm" -na;
connectAttr "bip_thumb_1_R.iog" "bones.dsm" -na;
connectAttr "bip_thumb_2_R.iog" "bones.dsm" -na;
connectAttr "bip_index_0_R.iog" "bones.dsm" -na;
connectAttr "bip_index_1_R.iog" "bones.dsm" -na;
connectAttr "bip_index_2_R.iog" "bones.dsm" -na;
connectAttr "bip_middle_0_R.iog" "bones.dsm" -na;
connectAttr "bip_middle_1_R.iog" "bones.dsm" -na;
connectAttr "bip_middle_2_R.iog" "bones.dsm" -na;
connectAttr "bip_ring_0_R.iog" "bones.dsm" -na;
connectAttr "bip_ring_1_R.iog" "bones.dsm" -na;
connectAttr "bip_ring_2_R.iog" "bones.dsm" -na;
connectAttr "bip_pinky_0_R.iog" "bones.dsm" -na;
connectAttr "bip_pinky_1_R.iog" "bones.dsm" -na;
connectAttr "bip_pinky_2_R.iog" "bones.dsm" -na;
connectAttr "prp_wristOuter_R.iog" "bones.dsm" -na;
connectAttr "prp_wristInner_R.iog" "bones.dsm" -na;
connectAttr "hlp_suitArmTop_R.iog" "bones.dsm" -na;
connectAttr "hlp_suitArmpitBack_R.iog" "bones.dsm" -na;
connectAttr "helperBone.oc" "helperBoneSG.ss";
connectAttr "hlp_suitArmTop_LShape.iog" "helperBoneSG.dsm" -na;
connectAttr "hlp_thigh_LShape.iog" "helperBoneSG.dsm" -na;
connectAttr "hlp_suitArmpitBack_RShape.iog" "helperBoneSG.dsm" -na;
connectAttr "hlp_suitArmTop_RShape.iog" "helperBoneSG.dsm" -na;
connectAttr "hlp_suitArmpitBack_LShape.iog" "helperBoneSG.dsm" -na;
connectAttr "hlp_thigh_RShape.iog" "helperBoneSG.dsm" -na;
connectAttr "helperBoneSG.msg" "materialInfo14.sg";
connectAttr "helperBone.msg" "materialInfo14.m";
connectAttr "helperBoneRamp.msg" "materialInfo14.t" -na;
connectAttr "helperBoneRamp.oc" "helperBone.c";
connectAttr "layerManager.dli[13]" "skeleton_layer.id";
connectAttr "bip_pelvis.msg" "bindPose1.m[1]";
connectAttr "bip_hip_R.msg" "bindPose1.m[3]";
connectAttr "bip_knee_R.msg" "bindPose1.m[4]";
connectAttr "bip_foot_R.msg" "bindPose1.m[5]";
connectAttr "bip_spine_0.msg" "bindPose1.m[6]";
connectAttr "bip_spine_1.msg" "bindPose1.m[7]";
connectAttr "bip_spine_2.msg" "bindPose1.m[8]";
connectAttr "bip_spine_3.msg" "bindPose1.m[9]";
connectAttr "bip_collar_R.msg" "bindPose1.m[10]";
connectAttr "bip_upperArm_R.msg" "bindPose1.m[11]";
connectAttr "bip_lowerArm_R.msg" "bindPose1.m[12]";
connectAttr "bip_hand_R.msg" "bindPose1.m[13]";
connectAttr "bip_ring_0_R.msg" "bindPose1.m[14]";
connectAttr "bip_pinky_0_R.msg" "bindPose1.m[15]";
connectAttr "bip_ring_1_R.msg" "bindPose1.m[16]";
connectAttr "bip_pinky_1_R.msg" "bindPose1.m[18]";
connectAttr "bip_hip_L.msg" "bindPose1.m[24]";
connectAttr "bip_knee_L.msg" "bindPose1.m[25]";
connectAttr "bip_foot_L.msg" "bindPose1.m[26]";
connectAttr "bip_collar_L.msg" "bindPose1.m[35]";
connectAttr "bip_upperArm_L.msg" "bindPose1.m[36]";
connectAttr "bip_lowerArm_L.msg" "bindPose1.m[37]";
connectAttr "bip_hand_L.msg" "bindPose1.m[38]";
connectAttr "bip_ring_0_L.msg" "bindPose1.m[39]";
connectAttr "bip_ring_1_L.msg" "bindPose1.m[40]";
connectAttr "bip_pinky_0_L.msg" "bindPose1.m[42]";
connectAttr "bip_pinky_1_L.msg" "bindPose1.m[43]";
connectAttr "bip_thumb_0_R.msg" "bindPose1.m[49]";
connectAttr "bip_thumb_1_R.msg" "bindPose1.m[50]";
connectAttr "bip_index_0_R.msg" "bindPose1.m[52]";
connectAttr "bip_index_1_R.msg" "bindPose1.m[53]";
connectAttr "bip_middle_0_R.msg" "bindPose1.m[55]";
connectAttr "bip_middle_1_R.msg" "bindPose1.m[56]";
connectAttr "bip_middle_0_L.msg" "bindPose1.m[61]";
connectAttr "bip_middle_1_L.msg" "bindPose1.m[62]";
connectAttr "bip_index_0_L.msg" "bindPose1.m[64]";
connectAttr "bip_index_1_L.msg" "bindPose1.m[65]";
connectAttr "bip_thumb_0_L.msg" "bindPose1.m[67]";
connectAttr "bip_thumb_1_L.msg" "bindPose1.m[68]";
connectAttr "bip_neck.msg" "bindPose1.m[70]";
connectAttr "bip_head.msg" "bindPose1.m[71]";
connectAttr "prp_cig.msg" "bindPose1.m[72]";
connectAttr "bip_ring_2_R.msg" "bindPose1.m[104]";
connectAttr "bip_pinky_2_R.msg" "bindPose1.m[105]";
connectAttr "prp_wristOuter_R.msg" "bindPose1.m[106]";
connectAttr "prp_wristInner_R.msg" "bindPose1.m[107]";
connectAttr "bip_ring_2_L.msg" "bindPose1.m[118]";
connectAttr "bip_pinky_2_L.msg" "bindPose1.m[119]";
connectAttr "prp_wristOuter_L.msg" "bindPose1.m[120]";
connectAttr "prp_wristInner_L.msg" "bindPose1.m[121]";
connectAttr "bip_thumb_2_R.msg" "bindPose1.m[124]";
connectAttr "bip_index_2_R.msg" "bindPose1.m[125]";
connectAttr "bip_middle_2_R.msg" "bindPose1.m[126]";
connectAttr "bip_middle_2_L.msg" "bindPose1.m[130]";
connectAttr "bip_index_2_L.msg" "bindPose1.m[131]";
connectAttr "bip_thumb_2_L.msg" "bindPose1.m[132]";
connectAttr "prp_coat_back_0_R.msg" "bindPose1.m[133]";
connectAttr "hlp_suitArmTop_R.msg" "bindPose1.m[134]";
connectAttr "hlp_suitArmpitBack_R.msg" "bindPose1.m[135]";
connectAttr "bip_toe_L.msg" "bindPose1.m[136]";
connectAttr "prp_pantsFront_L.msg" "bindPose1.m[137]";
connectAttr "prp_pantsBack_L.msg" "bindPose1.m[138]";
connectAttr "hlp_thigh_L.msg" "bindPose1.m[139]";
connectAttr "hlp_thigh_R.msg" "bindPose1.m[140]";
connectAttr "prp_coat_front_0_L.msg" "bindPose1.m[141]";
connectAttr "prp_coat_back_0_L.msg" "bindPose1.m[142]";
connectAttr "prp_coat_front_0_R.msg" "bindPose1.m[143]";
connectAttr "hlp_suitArmTop_L.msg" "bindPose1.m[144]";
connectAttr "hlp_suitArmpitBack_L.msg" "bindPose1.m[145]";
connectAttr "bip_toe_R.msg" "bindPose1.m[146]";
connectAttr "prp_pantsFront_R.msg" "bindPose1.m[147]";
connectAttr "prp_pantsBack_R.msg" "bindPose1.m[148]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[13]" "bindPose1.p[15]";
connectAttr "bindPose1.m[14]" "bindPose1.p[16]";
connectAttr "bindPose1.m[15]" "bindPose1.p[18]";
connectAttr "bindPose1.m[1]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[9]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[38]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[13]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[13]" "bindPose1.p[52]";
connectAttr "bindPose1.m[52]" "bindPose1.p[53]";
connectAttr "bindPose1.m[13]" "bindPose1.p[55]";
connectAttr "bindPose1.m[55]" "bindPose1.p[56]";
connectAttr "bindPose1.m[38]" "bindPose1.p[61]";
connectAttr "bindPose1.m[61]" "bindPose1.p[62]";
connectAttr "bindPose1.m[38]" "bindPose1.p[64]";
connectAttr "bindPose1.m[64]" "bindPose1.p[65]";
connectAttr "bindPose1.m[38]" "bindPose1.p[67]";
connectAttr "bindPose1.m[67]" "bindPose1.p[68]";
connectAttr "bindPose1.m[9]" "bindPose1.p[70]";
connectAttr "bindPose1.m[70]" "bindPose1.p[71]";
connectAttr "bindPose1.m[71]" "bindPose1.p[72]";
connectAttr "bindPose1.m[16]" "bindPose1.p[104]";
connectAttr "bindPose1.m[18]" "bindPose1.p[105]";
connectAttr "bindPose1.m[12]" "bindPose1.p[106]";
connectAttr "bindPose1.m[12]" "bindPose1.p[107]";
connectAttr "bindPose1.m[40]" "bindPose1.p[118]";
connectAttr "bindPose1.m[43]" "bindPose1.p[119]";
connectAttr "bindPose1.m[37]" "bindPose1.p[120]";
connectAttr "bindPose1.m[37]" "bindPose1.p[121]";
connectAttr "bindPose1.m[50]" "bindPose1.p[124]";
connectAttr "bindPose1.m[53]" "bindPose1.p[125]";
connectAttr "bindPose1.m[56]" "bindPose1.p[126]";
connectAttr "bindPose1.m[62]" "bindPose1.p[130]";
connectAttr "bindPose1.m[65]" "bindPose1.p[131]";
connectAttr "bindPose1.m[68]" "bindPose1.p[132]";
connectAttr "bindPose1.m[1]" "bindPose1.p[133]";
connectAttr "bindPose1.m[11]" "bindPose1.p[134]";
connectAttr "bindPose1.m[11]" "bindPose1.p[135]";
connectAttr "bindPose1.m[26]" "bindPose1.p[136]";
connectAttr "bindPose1.m[25]" "bindPose1.p[137]";
connectAttr "bindPose1.m[25]" "bindPose1.p[138]";
connectAttr "bindPose1.m[1]" "bindPose1.p[139]";
connectAttr "bindPose1.m[1]" "bindPose1.p[140]";
connectAttr "bindPose1.m[1]" "bindPose1.p[141]";
connectAttr "bindPose1.m[1]" "bindPose1.p[142]";
connectAttr "bindPose1.m[1]" "bindPose1.p[143]";
connectAttr "bindPose1.m[36]" "bindPose1.p[144]";
connectAttr "bindPose1.m[36]" "bindPose1.p[145]";
connectAttr "bindPose1.m[5]" "bindPose1.p[146]";
connectAttr "bindPose1.m[4]" "bindPose1.p[147]";
connectAttr "bindPose1.m[4]" "bindPose1.p[148]";
connectAttr "bip_pelvis.bps" "bindPose1.wm[1]";
connectAttr "bip_hip_R.bps" "bindPose1.wm[3]";
connectAttr "bip_knee_R.bps" "bindPose1.wm[4]";
connectAttr "bip_foot_R.bps" "bindPose1.wm[5]";
connectAttr "bip_spine_0.bps" "bindPose1.wm[6]";
connectAttr "bip_spine_1.bps" "bindPose1.wm[7]";
connectAttr "bip_spine_2.bps" "bindPose1.wm[8]";
connectAttr "bip_spine_3.bps" "bindPose1.wm[9]";
connectAttr "bip_collar_R.bps" "bindPose1.wm[10]";
connectAttr "bip_upperArm_R.bps" "bindPose1.wm[11]";
connectAttr "bip_lowerArm_R.bps" "bindPose1.wm[12]";
connectAttr "bip_hand_R.bps" "bindPose1.wm[13]";
connectAttr "bip_ring_0_R.bps" "bindPose1.wm[14]";
connectAttr "bip_pinky_0_R.bps" "bindPose1.wm[15]";
connectAttr "bip_ring_1_R.bps" "bindPose1.wm[16]";
connectAttr "bip_pinky_1_R.bps" "bindPose1.wm[18]";
connectAttr "bip_hip_L.bps" "bindPose1.wm[24]";
connectAttr "bip_knee_L.bps" "bindPose1.wm[25]";
connectAttr "bip_foot_L.bps" "bindPose1.wm[26]";
connectAttr "bip_collar_L.bps" "bindPose1.wm[35]";
connectAttr "bip_upperArm_L.bps" "bindPose1.wm[36]";
connectAttr "bip_lowerArm_L.bps" "bindPose1.wm[37]";
connectAttr "bip_hand_L.bps" "bindPose1.wm[38]";
connectAttr "bip_ring_0_L.bps" "bindPose1.wm[39]";
connectAttr "bip_ring_1_L.bps" "bindPose1.wm[40]";
connectAttr "bip_pinky_0_L.bps" "bindPose1.wm[42]";
connectAttr "bip_pinky_1_L.bps" "bindPose1.wm[43]";
connectAttr "bip_thumb_0_R.bps" "bindPose1.wm[49]";
connectAttr "bip_thumb_1_R.bps" "bindPose1.wm[50]";
connectAttr "bip_index_0_R.bps" "bindPose1.wm[52]";
connectAttr "bip_index_1_R.bps" "bindPose1.wm[53]";
connectAttr "bip_middle_0_R.bps" "bindPose1.wm[55]";
connectAttr "bip_middle_1_R.bps" "bindPose1.wm[56]";
connectAttr "bip_middle_0_L.bps" "bindPose1.wm[61]";
connectAttr "bip_middle_1_L.bps" "bindPose1.wm[62]";
connectAttr "bip_index_0_L.bps" "bindPose1.wm[64]";
connectAttr "bip_index_1_L.bps" "bindPose1.wm[65]";
connectAttr "bip_thumb_0_L.bps" "bindPose1.wm[67]";
connectAttr "bip_thumb_1_L.bps" "bindPose1.wm[68]";
connectAttr "bip_neck.bps" "bindPose1.wm[70]";
connectAttr "bip_head.bps" "bindPose1.wm[71]";
connectAttr "prp_cig.bps" "bindPose1.wm[72]";
connectAttr "bip_ring_2_R.bps" "bindPose1.wm[104]";
connectAttr "bip_pinky_2_R.bps" "bindPose1.wm[105]";
connectAttr "prp_wristOuter_R.bps" "bindPose1.wm[106]";
connectAttr "prp_wristInner_R.bps" "bindPose1.wm[107]";
connectAttr "bip_ring_2_L.bps" "bindPose1.wm[118]";
connectAttr "bip_pinky_2_L.bps" "bindPose1.wm[119]";
connectAttr "prp_wristOuter_L.bps" "bindPose1.wm[120]";
connectAttr "prp_wristInner_L.bps" "bindPose1.wm[121]";
connectAttr "bip_thumb_2_R.bps" "bindPose1.wm[124]";
connectAttr "bip_index_2_R.bps" "bindPose1.wm[125]";
connectAttr "bip_middle_2_R.bps" "bindPose1.wm[126]";
connectAttr "bip_middle_2_L.bps" "bindPose1.wm[130]";
connectAttr "bip_index_2_L.bps" "bindPose1.wm[131]";
connectAttr "bip_thumb_2_L.bps" "bindPose1.wm[132]";
connectAttr "prp_coat_back_0_R.bps" "bindPose1.wm[133]";
connectAttr "hlp_suitArmTop_R.bps" "bindPose1.wm[134]";
connectAttr "hlp_suitArmpitBack_R.bps" "bindPose1.wm[135]";
connectAttr "bip_toe_L.bps" "bindPose1.wm[136]";
connectAttr "prp_pantsFront_L.bps" "bindPose1.wm[137]";
connectAttr "prp_pantsBack_L.bps" "bindPose1.wm[138]";
connectAttr "hlp_thigh_L.bps" "bindPose1.wm[139]";
connectAttr "hlp_thigh_R.bps" "bindPose1.wm[140]";
connectAttr "prp_coat_front_0_L.bps" "bindPose1.wm[141]";
connectAttr "prp_coat_back_0_L.bps" "bindPose1.wm[142]";
connectAttr "prp_coat_front_0_R.bps" "bindPose1.wm[143]";
connectAttr "hlp_suitArmTop_L.bps" "bindPose1.wm[144]";
connectAttr "hlp_suitArmpitBack_L.bps" "bindPose1.wm[145]";
connectAttr "bip_toe_R.bps" "bindPose1.wm[146]";
connectAttr "prp_pantsFront_R.bps" "bindPose1.wm[147]";
connectAttr "prp_pantsBack_R.bps" "bindPose1.wm[148]";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bip_ring_0_R.wm" "skinCluster3.ma[4]";
connectAttr "bip_pinky_0_R.wm" "skinCluster3.ma[5]";
connectAttr "bip_ring_2_R.wm" "skinCluster3.ma[6]";
connectAttr "bip_ring_1_R.wm" "skinCluster3.ma[7]";
connectAttr "bip_pinky_1_R.wm" "skinCluster3.ma[8]";
connectAttr "bip_pinky_2_R.wm" "skinCluster3.ma[9]";
connectAttr "bip_ring_0_L.wm" "skinCluster3.ma[25]";
connectAttr "bip_ring_1_L.wm" "skinCluster3.ma[26]";
connectAttr "bip_ring_2_L.wm" "skinCluster3.ma[27]";
connectAttr "bip_pinky_0_L.wm" "skinCluster3.ma[28]";
connectAttr "bip_pinky_1_L.wm" "skinCluster3.ma[29]";
connectAttr "bip_pinky_2_L.wm" "skinCluster3.ma[30]";
connectAttr "bip_lowerArm_R.wm" "skinCluster3.ma[37]";
connectAttr "bip_hand_R.wm" "skinCluster3.ma[38]";
connectAttr "bip_thumb_0_R.wm" "skinCluster3.ma[39]";
connectAttr "bip_thumb_1_R.wm" "skinCluster3.ma[40]";
connectAttr "bip_thumb_2_R.wm" "skinCluster3.ma[41]";
connectAttr "bip_index_0_R.wm" "skinCluster3.ma[42]";
connectAttr "bip_index_1_R.wm" "skinCluster3.ma[43]";
connectAttr "bip_index_2_R.wm" "skinCluster3.ma[44]";
connectAttr "bip_middle_0_R.wm" "skinCluster3.ma[45]";
connectAttr "bip_middle_1_R.wm" "skinCluster3.ma[46]";
connectAttr "bip_middle_2_R.wm" "skinCluster3.ma[47]";
connectAttr "bip_middle_0_L.wm" "skinCluster3.ma[51]";
connectAttr "bip_middle_1_L.wm" "skinCluster3.ma[52]";
connectAttr "bip_middle_2_L.wm" "skinCluster3.ma[53]";
connectAttr "bip_index_2_L.wm" "skinCluster3.ma[54]";
connectAttr "bip_thumb_2_L.wm" "skinCluster3.ma[55]";
connectAttr "bip_index_1_L.wm" "skinCluster3.ma[56]";
connectAttr "bip_index_0_L.wm" "skinCluster3.ma[57]";
connectAttr "bip_lowerArm_L.wm" "skinCluster3.ma[68]";
connectAttr "bip_hand_L.wm" "skinCluster3.ma[69]";
connectAttr "bip_thumb_0_L.wm" "skinCluster3.ma[70]";
connectAttr "bip_thumb_1_L.wm" "skinCluster3.ma[71]";
connectAttr "bip_ring_0_R.liw" "skinCluster3.lw[4]";
connectAttr "bip_pinky_0_R.liw" "skinCluster3.lw[5]";
connectAttr "bip_ring_2_R.liw" "skinCluster3.lw[6]";
connectAttr "bip_ring_1_R.liw" "skinCluster3.lw[7]";
connectAttr "bip_pinky_1_R.liw" "skinCluster3.lw[8]";
connectAttr "bip_pinky_2_R.liw" "skinCluster3.lw[9]";
connectAttr "bip_ring_0_L.liw" "skinCluster3.lw[25]";
connectAttr "bip_ring_1_L.liw" "skinCluster3.lw[26]";
connectAttr "bip_ring_2_L.liw" "skinCluster3.lw[27]";
connectAttr "bip_pinky_0_L.liw" "skinCluster3.lw[28]";
connectAttr "bip_pinky_1_L.liw" "skinCluster3.lw[29]";
connectAttr "bip_pinky_2_L.liw" "skinCluster3.lw[30]";
connectAttr "bip_lowerArm_R.liw" "skinCluster3.lw[37]";
connectAttr "bip_hand_R.liw" "skinCluster3.lw[38]";
connectAttr "bip_thumb_0_R.liw" "skinCluster3.lw[39]";
connectAttr "bip_thumb_1_R.liw" "skinCluster3.lw[40]";
connectAttr "bip_thumb_2_R.liw" "skinCluster3.lw[41]";
connectAttr "bip_index_0_R.liw" "skinCluster3.lw[42]";
connectAttr "bip_index_1_R.liw" "skinCluster3.lw[43]";
connectAttr "bip_index_2_R.liw" "skinCluster3.lw[44]";
connectAttr "bip_middle_0_R.liw" "skinCluster3.lw[45]";
connectAttr "bip_middle_1_R.liw" "skinCluster3.lw[46]";
connectAttr "bip_middle_2_R.liw" "skinCluster3.lw[47]";
connectAttr "bip_middle_0_L.liw" "skinCluster3.lw[51]";
connectAttr "bip_middle_1_L.liw" "skinCluster3.lw[52]";
connectAttr "bip_middle_2_L.liw" "skinCluster3.lw[53]";
connectAttr "bip_index_2_L.liw" "skinCluster3.lw[54]";
connectAttr "bip_thumb_2_L.liw" "skinCluster3.lw[55]";
connectAttr "bip_index_1_L.liw" "skinCluster3.lw[56]";
connectAttr "bip_index_0_L.liw" "skinCluster3.lw[57]";
connectAttr "bip_lowerArm_L.liw" "skinCluster3.lw[68]";
connectAttr "bip_hand_L.liw" "skinCluster3.lw[69]";
connectAttr "bip_thumb_0_L.liw" "skinCluster3.lw[70]";
connectAttr "bip_thumb_1_L.liw" "skinCluster3.lw[71]";
connectAttr "hands_meshOrig1.w" "groupParts44.ig";
connectAttr "groupId257.id" "groupParts44.gi";
connectAttr "groupParts46.og" "tweak3.ip[0].ig";
connectAttr "groupId259.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "hands_meshShape.iog.og[478]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId259.msg" "tweakSet3.gn" -na;
connectAttr "hands_meshShape.iog.og[479]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "groupParts44.og" "groupParts46.ig";
connectAttr "groupId259.id" "groupParts46.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "prp_coat_back_0_R.wm" "skinCluster4.ma[0]";
connectAttr "bip_hip_R.wm" "skinCluster4.ma[1]";
connectAttr "bip_knee_R.wm" "skinCluster4.ma[2]";
connectAttr "bip_foot_R.wm" "skinCluster4.ma[3]";
connectAttr "prp_wristOuter_R.wm" "skinCluster4.ma[10]";
connectAttr "prp_wristInner_R.wm" "skinCluster4.ma[11]";
connectAttr "hlp_suitArmTop_R.wm" "skinCluster4.ma[12]";
connectAttr "hlp_suitArmpitBack_R.wm" "skinCluster4.ma[13]";
connectAttr "bip_hip_L.wm" "skinCluster4.ma[14]";
connectAttr "bip_knee_L.wm" "skinCluster4.ma[15]";
connectAttr "bip_foot_L.wm" "skinCluster4.ma[16]";
connectAttr "bip_toe_L.wm" "skinCluster4.ma[17]";
connectAttr "prp_pantsFront_L.wm" "skinCluster4.ma[18]";
connectAttr "prp_pantsBack_L.wm" "skinCluster4.ma[19]";
connectAttr "hlp_thigh_L.wm" "skinCluster4.ma[20]";
connectAttr "hlp_thigh_R.wm" "skinCluster4.ma[21]";
connectAttr "prp_coat_front_0_L.wm" "skinCluster4.ma[22]";
connectAttr "prp_coat_back_0_L.wm" "skinCluster4.ma[23]";
connectAttr "prp_coat_front_0_R.wm" "skinCluster4.ma[24]";
connectAttr "prp_wristOuter_L.wm" "skinCluster4.ma[31]";
connectAttr "prp_wristInner_L.wm" "skinCluster4.ma[32]";
connectAttr "hlp_suitArmTop_L.wm" "skinCluster4.ma[33]";
connectAttr "hlp_suitArmpitBack_L.wm" "skinCluster4.ma[34]";
connectAttr "bip_collar_R.wm" "skinCluster4.ma[35]";
connectAttr "bip_upperArm_R.wm" "skinCluster4.ma[36]";
connectAttr "bip_lowerArm_R.wm" "skinCluster4.ma[37]";
connectAttr "bip_toe_R.wm" "skinCluster4.ma[48]";
connectAttr "prp_pantsFront_R.wm" "skinCluster4.ma[49]";
connectAttr "prp_pantsBack_R.wm" "skinCluster4.ma[50]";
connectAttr "bip_pelvis.wm" "skinCluster4.ma[58]";
connectAttr "bip_spine_0.wm" "skinCluster4.ma[59]";
connectAttr "bip_spine_1.wm" "skinCluster4.ma[60]";
connectAttr "bip_spine_2.wm" "skinCluster4.ma[61]";
connectAttr "bip_spine_3.wm" "skinCluster4.ma[62]";
connectAttr "bip_neck.wm" "skinCluster4.ma[63]";
connectAttr "bip_collar_L.wm" "skinCluster4.ma[66]";
connectAttr "bip_upperArm_L.wm" "skinCluster4.ma[67]";
connectAttr "bip_lowerArm_L.wm" "skinCluster4.ma[68]";
connectAttr "prp_coat_back_0_R.liw" "skinCluster4.lw[0]";
connectAttr "bip_hip_R.liw" "skinCluster4.lw[1]";
connectAttr "bip_knee_R.liw" "skinCluster4.lw[2]";
connectAttr "bip_foot_R.liw" "skinCluster4.lw[3]";
connectAttr "prp_wristOuter_R.liw" "skinCluster4.lw[10]";
connectAttr "prp_wristInner_R.liw" "skinCluster4.lw[11]";
connectAttr "hlp_suitArmTop_R.liw" "skinCluster4.lw[12]";
connectAttr "hlp_suitArmpitBack_R.liw" "skinCluster4.lw[13]";
connectAttr "bip_hip_L.liw" "skinCluster4.lw[14]";
connectAttr "bip_knee_L.liw" "skinCluster4.lw[15]";
connectAttr "bip_foot_L.liw" "skinCluster4.lw[16]";
connectAttr "bip_toe_L.liw" "skinCluster4.lw[17]";
connectAttr "prp_pantsFront_L.liw" "skinCluster4.lw[18]";
connectAttr "prp_pantsBack_L.liw" "skinCluster4.lw[19]";
connectAttr "hlp_thigh_L.liw" "skinCluster4.lw[20]";
connectAttr "hlp_thigh_R.liw" "skinCluster4.lw[21]";
connectAttr "prp_coat_front_0_L.liw" "skinCluster4.lw[22]";
connectAttr "prp_coat_back_0_L.liw" "skinCluster4.lw[23]";
connectAttr "prp_coat_front_0_R.liw" "skinCluster4.lw[24]";
connectAttr "prp_wristOuter_L.liw" "skinCluster4.lw[31]";
connectAttr "prp_wristInner_L.liw" "skinCluster4.lw[32]";
connectAttr "hlp_suitArmTop_L.liw" "skinCluster4.lw[33]";
connectAttr "hlp_suitArmpitBack_L.liw" "skinCluster4.lw[34]";
connectAttr "bip_collar_R.liw" "skinCluster4.lw[35]";
connectAttr "bip_upperArm_R.liw" "skinCluster4.lw[36]";
connectAttr "bip_lowerArm_R.liw" "skinCluster4.lw[37]";
connectAttr "bip_toe_R.liw" "skinCluster4.lw[48]";
connectAttr "prp_pantsFront_R.liw" "skinCluster4.lw[49]";
connectAttr "prp_pantsBack_R.liw" "skinCluster4.lw[50]";
connectAttr "bip_pelvis.liw" "skinCluster4.lw[58]";
connectAttr "bip_spine_0.liw" "skinCluster4.lw[59]";
connectAttr "bip_spine_1.liw" "skinCluster4.lw[60]";
connectAttr "bip_spine_2.liw" "skinCluster4.lw[61]";
connectAttr "bip_spine_3.liw" "skinCluster4.lw[62]";
connectAttr "bip_neck.liw" "skinCluster4.lw[63]";
connectAttr "bip_collar_L.liw" "skinCluster4.lw[66]";
connectAttr "bip_upperArm_L.liw" "skinCluster4.lw[67]";
connectAttr "bip_lowerArm_L.liw" "skinCluster4.lw[68]";
connectAttr "body_meshOrig1.w" "groupParts47.ig";
connectAttr "groupId260.id" "groupParts47.gi";
connectAttr "groupParts47.og" "groupParts48.ig";
connectAttr "groupId261.id" "groupParts48.gi";
connectAttr "groupParts50.og" "tweak4.ip[0].ig";
connectAttr "groupId263.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "body_meshShape.iog.og[467]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId263.msg" "tweakSet4.gn" -na;
connectAttr "body_meshShape.iog.og[468]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "groupParts48.og" "groupParts50.ig";
connectAttr "groupId263.id" "groupParts50.gi";
connectAttr "bip_pelvis.msg" "riggingPose.m[1]";
connectAttr "bip_spine_0.msg" "riggingPose.m[2]";
connectAttr "bip_spine_1.msg" "riggingPose.m[3]";
connectAttr "bip_spine_2.msg" "riggingPose.m[4]";
connectAttr "bip_spine_3.msg" "riggingPose.m[5]";
connectAttr "bip_neck.msg" "riggingPose.m[6]";
connectAttr "bip_head.msg" "riggingPose.m[7]";
connectAttr "prp_cig.msg" "riggingPose.m[8]";
connectAttr "bip_collar_L.msg" "riggingPose.m[9]";
connectAttr "bip_upperArm_L.msg" "riggingPose.m[10]";
connectAttr "bip_lowerArm_L.msg" "riggingPose.m[11]";
connectAttr "bip_hand_L.msg" "riggingPose.m[12]";
connectAttr "bip_thumb_0_L.msg" "riggingPose.m[13]";
connectAttr "bip_thumb_1_L.msg" "riggingPose.m[14]";
connectAttr "bip_thumb_2_L.msg" "riggingPose.m[15]";
connectAttr "bip_index_0_L.msg" "riggingPose.m[16]";
connectAttr "bip_index_1_L.msg" "riggingPose.m[17]";
connectAttr "bip_index_2_L.msg" "riggingPose.m[18]";
connectAttr "bip_middle_0_L.msg" "riggingPose.m[19]";
connectAttr "bip_middle_1_L.msg" "riggingPose.m[20]";
connectAttr "bip_middle_2_L.msg" "riggingPose.m[21]";
connectAttr "bip_ring_0_L.msg" "riggingPose.m[22]";
connectAttr "bip_ring_1_L.msg" "riggingPose.m[23]";
connectAttr "bip_ring_2_L.msg" "riggingPose.m[24]";
connectAttr "bip_pinky_0_L.msg" "riggingPose.m[25]";
connectAttr "bip_pinky_1_L.msg" "riggingPose.m[26]";
connectAttr "bip_pinky_2_L.msg" "riggingPose.m[27]";
connectAttr "prp_wristOuter_L.msg" "riggingPose.m[28]";
connectAttr "prp_wristInner_L.msg" "riggingPose.m[29]";
connectAttr "bip_collar_R.msg" "riggingPose.m[30]";
connectAttr "bip_upperArm_R.msg" "riggingPose.m[31]";
connectAttr "bip_lowerArm_R.msg" "riggingPose.m[32]";
connectAttr "bip_hand_R.msg" "riggingPose.m[33]";
connectAttr "bip_thumb_0_R.msg" "riggingPose.m[34]";
connectAttr "bip_thumb_1_R.msg" "riggingPose.m[35]";
connectAttr "bip_thumb_2_R.msg" "riggingPose.m[36]";
connectAttr "bip_index_0_R.msg" "riggingPose.m[37]";
connectAttr "bip_index_1_R.msg" "riggingPose.m[38]";
connectAttr "bip_index_2_R.msg" "riggingPose.m[39]";
connectAttr "bip_middle_0_R.msg" "riggingPose.m[40]";
connectAttr "bip_middle_1_R.msg" "riggingPose.m[41]";
connectAttr "bip_middle_2_R.msg" "riggingPose.m[42]";
connectAttr "bip_ring_0_R.msg" "riggingPose.m[43]";
connectAttr "bip_ring_1_R.msg" "riggingPose.m[44]";
connectAttr "bip_ring_2_R.msg" "riggingPose.m[45]";
connectAttr "bip_pinky_0_R.msg" "riggingPose.m[46]";
connectAttr "bip_pinky_1_R.msg" "riggingPose.m[47]";
connectAttr "bip_pinky_2_R.msg" "riggingPose.m[48]";
connectAttr "prp_wristOuter_R.msg" "riggingPose.m[49]";
connectAttr "prp_wristInner_R.msg" "riggingPose.m[50]";
connectAttr "bip_hip_L.msg" "riggingPose.m[51]";
connectAttr "bip_knee_L.msg" "riggingPose.m[52]";
connectAttr "bip_foot_L.msg" "riggingPose.m[53]";
connectAttr "bip_toe_L.msg" "riggingPose.m[54]";
connectAttr "prp_pantsFront_L.msg" "riggingPose.m[55]";
connectAttr "prp_pantsBack_L.msg" "riggingPose.m[56]";
connectAttr "bip_hip_R.msg" "riggingPose.m[57]";
connectAttr "bip_knee_R.msg" "riggingPose.m[58]";
connectAttr "bip_foot_R.msg" "riggingPose.m[59]";
connectAttr "bip_toe_R.msg" "riggingPose.m[60]";
connectAttr "prp_pantsFront_R.msg" "riggingPose.m[61]";
connectAttr "prp_pantsBack_R.msg" "riggingPose.m[62]";
connectAttr "prp_coat_front_0_L.msg" "riggingPose.m[63]";
connectAttr "prp_coat_back_0_L.msg" "riggingPose.m[64]";
connectAttr "prp_coat_front_0_R.msg" "riggingPose.m[65]";
connectAttr "prp_coat_back_0_R.msg" "riggingPose.m[66]";
connectAttr "riggingPose.w" "riggingPose.p[0]";
connectAttr "riggingPose.m[0]" "riggingPose.p[1]";
connectAttr "riggingPose.m[1]" "riggingPose.p[2]";
connectAttr "riggingPose.m[2]" "riggingPose.p[3]";
connectAttr "riggingPose.m[3]" "riggingPose.p[4]";
connectAttr "riggingPose.m[4]" "riggingPose.p[5]";
connectAttr "riggingPose.m[5]" "riggingPose.p[6]";
connectAttr "riggingPose.m[6]" "riggingPose.p[7]";
connectAttr "riggingPose.m[7]" "riggingPose.p[8]";
connectAttr "riggingPose.m[5]" "riggingPose.p[9]";
connectAttr "riggingPose.m[9]" "riggingPose.p[10]";
connectAttr "riggingPose.m[10]" "riggingPose.p[11]";
connectAttr "riggingPose.m[11]" "riggingPose.p[12]";
connectAttr "riggingPose.m[12]" "riggingPose.p[13]";
connectAttr "riggingPose.m[13]" "riggingPose.p[14]";
connectAttr "riggingPose.m[14]" "riggingPose.p[15]";
connectAttr "riggingPose.m[12]" "riggingPose.p[16]";
connectAttr "riggingPose.m[16]" "riggingPose.p[17]";
connectAttr "riggingPose.m[17]" "riggingPose.p[18]";
connectAttr "riggingPose.m[12]" "riggingPose.p[19]";
connectAttr "riggingPose.m[19]" "riggingPose.p[20]";
connectAttr "riggingPose.m[20]" "riggingPose.p[21]";
connectAttr "riggingPose.m[12]" "riggingPose.p[22]";
connectAttr "riggingPose.m[22]" "riggingPose.p[23]";
connectAttr "riggingPose.m[23]" "riggingPose.p[24]";
connectAttr "riggingPose.m[12]" "riggingPose.p[25]";
connectAttr "riggingPose.m[25]" "riggingPose.p[26]";
connectAttr "riggingPose.m[26]" "riggingPose.p[27]";
connectAttr "riggingPose.m[11]" "riggingPose.p[28]";
connectAttr "riggingPose.m[11]" "riggingPose.p[29]";
connectAttr "riggingPose.m[5]" "riggingPose.p[30]";
connectAttr "riggingPose.m[30]" "riggingPose.p[31]";
connectAttr "riggingPose.m[31]" "riggingPose.p[32]";
connectAttr "riggingPose.m[32]" "riggingPose.p[33]";
connectAttr "riggingPose.m[33]" "riggingPose.p[34]";
connectAttr "riggingPose.m[34]" "riggingPose.p[35]";
connectAttr "riggingPose.m[35]" "riggingPose.p[36]";
connectAttr "riggingPose.m[33]" "riggingPose.p[37]";
connectAttr "riggingPose.m[37]" "riggingPose.p[38]";
connectAttr "riggingPose.m[38]" "riggingPose.p[39]";
connectAttr "riggingPose.m[33]" "riggingPose.p[40]";
connectAttr "riggingPose.m[40]" "riggingPose.p[41]";
connectAttr "riggingPose.m[41]" "riggingPose.p[42]";
connectAttr "riggingPose.m[33]" "riggingPose.p[43]";
connectAttr "riggingPose.m[43]" "riggingPose.p[44]";
connectAttr "riggingPose.m[44]" "riggingPose.p[45]";
connectAttr "riggingPose.m[33]" "riggingPose.p[46]";
connectAttr "riggingPose.m[46]" "riggingPose.p[47]";
connectAttr "riggingPose.m[47]" "riggingPose.p[48]";
connectAttr "riggingPose.m[32]" "riggingPose.p[49]";
connectAttr "riggingPose.m[32]" "riggingPose.p[50]";
connectAttr "riggingPose.m[1]" "riggingPose.p[51]";
connectAttr "riggingPose.m[51]" "riggingPose.p[52]";
connectAttr "riggingPose.m[52]" "riggingPose.p[53]";
connectAttr "riggingPose.m[53]" "riggingPose.p[54]";
connectAttr "riggingPose.m[52]" "riggingPose.p[55]";
connectAttr "riggingPose.m[52]" "riggingPose.p[56]";
connectAttr "riggingPose.m[1]" "riggingPose.p[57]";
connectAttr "riggingPose.m[57]" "riggingPose.p[58]";
connectAttr "riggingPose.m[58]" "riggingPose.p[59]";
connectAttr "riggingPose.m[59]" "riggingPose.p[60]";
connectAttr "riggingPose.m[58]" "riggingPose.p[61]";
connectAttr "riggingPose.m[58]" "riggingPose.p[62]";
connectAttr "riggingPose.m[1]" "riggingPose.p[63]";
connectAttr "riggingPose.m[1]" "riggingPose.p[64]";
connectAttr "riggingPose.m[1]" "riggingPose.p[65]";
connectAttr "riggingPose.m[1]" "riggingPose.p[66]";
connectAttr "spy_head.oc" "spy_headSG.ss";
connectAttr "spy_head_meshShape.iog.og[23]" "spy_headSG.dsm" -na;
connectAttr "groupId327.msg" "spy_headSG.gn" -na;
connectAttr "spy_headSG.msg" "materialInfo39.sg";
connectAttr "spy_head.msg" "materialInfo39.m";
connectAttr "spy_headFile1.msg" "materialInfo39.t" -na;
connectAttr "spy_headFile1.oc" "spy_head.c";
connectAttr "skinCluster12GroupParts.og" "skinCluster12.ip[0].ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12.ip[0].gi";
connectAttr "bip_spine_3.wm" "skinCluster12.ma[4]";
connectAttr "bip_neck.wm" "skinCluster12.ma[5]";
connectAttr "bip_head.wm" "skinCluster12.ma[6]";
connectAttr "prp_cig.wm" "skinCluster12.ma[7]";
connectAttr "bip_collar_L.wm" "skinCluster12.ma[8]";
connectAttr "bip_collar_R.wm" "skinCluster12.ma[54]";
connectAttr "bip_spine_3.liw" "skinCluster12.lw[4]";
connectAttr "bip_neck.liw" "skinCluster12.lw[5]";
connectAttr "bip_head.liw" "skinCluster12.lw[6]";
connectAttr "prp_cig.liw" "skinCluster12.lw[7]";
connectAttr "bip_collar_L.liw" "skinCluster12.lw[8]";
connectAttr "bip_collar_R.liw" "skinCluster12.lw[54]";
connectAttr "groupParts107.og" "tweak12.ip[0].ig";
connectAttr "groupId323.id" "tweak12.ip[0].gi";
connectAttr "skinCluster12GroupId.msg" "skinCluster12Set.gn" -na;
connectAttr "spy_head_meshShape.iog.og[18]" "skinCluster12Set.dsm" -na;
connectAttr "skinCluster12.msg" "skinCluster12Set.ub[0]";
connectAttr "tweak12.og[0]" "skinCluster12GroupParts.ig";
connectAttr "skinCluster12GroupId.id" "skinCluster12GroupParts.gi";
connectAttr "groupId323.msg" "tweakSet12.gn" -na;
connectAttr "spy_head_meshShape.iog.og[19]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "spy_head_meshShapeOrig1.w" "groupParts107.ig";
connectAttr "groupId323.id" "groupParts107.gi";
connectAttr "skinCluster12.og[0]" "groupParts111.ig";
connectAttr "groupId327.id" "groupParts111.gi";
connectAttr "groupParts111.og" "groupParts112.ig";
connectAttr "groupId328.id" "groupParts112.gi";
connectAttr "groupParts112.og" "groupParts113.ig";
connectAttr "groupId329.id" "groupParts113.gi";
connectAttr "groupParts113.og" "groupParts114.ig";
connectAttr "groupId330.id" "groupParts114.gi";
connectAttr "eyes.oc" "lambert2SG.ss";
connectAttr "spy_head_meshShape.iog.og[24]" "lambert2SG.dsm" -na;
connectAttr "spy_head_meshShape.iog.og[25]" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo40.sg";
connectAttr "eyes.msg" "materialInfo40.m";
connectAttr "spy_redSG.pa" ":renderPartition.st" -na;
connectAttr "helperBoneSG.pa" ":renderPartition.st" -na;
connectAttr "spy_headSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "spy_red.msg" ":defaultShaderList1.s" -na;
connectAttr "spy_head.msg" ":defaultShaderList1.s" -na;
connectAttr "eyes.msg" ":defaultShaderList1.s" -na;
connectAttr "spy_redFile.msg" ":defaultTextureList1.tx" -na;
connectAttr "spy_headFile1.msg" ":defaultTextureList1.tx" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of spy_reference.ma
