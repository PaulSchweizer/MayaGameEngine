//Maya ASCII 2016 scene
//Name: GreenCar.ma
//Last modified: Fri, May 06, 2016 03:47:48 PM
//Codeset: ANSI_X3.4-1968
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201511301000-979500";
fileInfo "osv" "Linux 2.6.32-431.29.2.el6.x86_64 #1 SMP Tue Sep 9 21:36:05 UTC 2014 x86_64";
createNode transform -s -n "persp";
	rename -uid "323CA4B9-4450-E351-5961-9FB36A1E6A2D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9700981942955869 1.4172450416562226 -4.7151993846154916 ;
	setAttr ".r" -type "double3" -9.9383527270376408 -566.60000000037473 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8B9A762C-40A2-DDBE-4F02-29B961611E0F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5.1053774296689074;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.5 0.023189544677734375 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3271DC2E-41FE-F2E4-3F45-EFA36FFE0231";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.0095862577032308459 100.10316222031564 -0.29878076220279476 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E86F4A73-4E2F-69FF-2DF9-9BB87164ABF9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.4462323090461466;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7B3D7940-4E6F-7CED-BE6D-D381353A26D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AE9E92D8-479E-AB5D-4D5B-2A942AF913C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0A5F3422-4D01-2F48-46D3-06A58DFEB226";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2F182919-4364-10A0-5C44-698A30BCE253";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "C_TestCar_GRP";
	rename -uid "2AED347B-4FDE-6680-CDF4-D0BB5EFB835F";
createNode transform -n "C_RIG_GRP" -p "C_TestCar_GRP";
	rename -uid "3A3E0897-4802-4A01-254E-EFA974274929";
createNode transform -n "C_main_CTL" -p "C_RIG_GRP";
	rename -uid "4EF27EBC-4981-A5CE-3C4B-BEBD16DE767E";
	addAttr -ci true -sn "damage" -ln "damage" -min 0 -max 100 -at "double";
	setAttr -k on ".damage";
createNode locator -n "C_main_CTLShape" -p "C_main_CTL";
	rename -uid "A5CC5029-48F4-9CEC-6B7B-1781CD9C3D8D";
	setAttr -k off ".v";
createNode transform -n "C_bake_CTL" -p "C_main_CTL";
	rename -uid "45AD9860-0000-37A5-5729-426400000B1D";
createNode locator -n "C_bake_CTLShape" -p "C_bake_CTL";
	rename -uid "45AD9860-0000-37A5-5729-426400000B1E";
	setAttr -k off ".v";
createNode transform -n "C_body_GRP" -p "C_bake_CTL";
	rename -uid "1BECC860-0000-2709-572B-9B01000002D9";
	setAttr ".t" -type "double3" 0 0.27477129999076427 0 ;
createNode transform -n "C_body_CTL" -p "C_body_GRP";
	rename -uid "1BECC860-0000-2709-572B-9AFD000002D5";
createNode locator -n "C_body_CTLShape" -p "C_body_CTL";
	rename -uid "1BECC860-0000-2709-572B-9AFD000002D6";
	setAttr -k off ".v";
createNode transform -n "C_steeringWheel_GRP" -p "C_bake_CTL";
	rename -uid "0DEC0CF4-4A37-42A5-AD86-B1990DB487CB";
	setAttr ".t" -type "double3" 0.21332997977650889 0.61790320673796295 0.39194358892466669 ;
	setAttr ".r" -type "double3" -89.999999999999986 33.884134168740161 -90 ;
createNode transform -n "C_steeringWheel_CTL" -p "C_steeringWheel_GRP";
	rename -uid "4E00EB70-4596-E6EF-BC00-C595F77BFB06";
createNode locator -n "C_steeringWheel_CTLShape" -p "C_steeringWheel_CTL";
	rename -uid "9AA642E0-4409-5F36-EB40-2EBB3C81519F";
	setAttr -k off ".v";
createNode transform -n "L_frontWheel_GRP" -p "C_bake_CTL";
	rename -uid "C45BAEEA-4864-1D86-A6AD-74A81F9A70EC";
	setAttr ".t" -type "double3" 0.60528143420708758 0.2 0.67268425822793099 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode transform -n "L_frontWheelSteer_GRP" -p "L_frontWheel_GRP";
	rename -uid "26FCC4BD-46B3-9EE8-EA97-57AB71995A4B";
createNode transform -n "L_frontWheel_CTL" -p "L_frontWheelSteer_GRP";
	rename -uid "A42AD7EB-4D8C-D438-602B-C38482402B6F";
createNode locator -n "L_frontWheel_CTLShape" -p "L_frontWheel_CTL";
	rename -uid "AD6F1844-4B61-9FC8-CFD3-A698B36E98F8";
	setAttr -k off ".v";
createNode transform -n "R_frontWheel_GRP" -p "C_bake_CTL";
	rename -uid "B3AFA72F-4346-DA80-BDE2-E9BC202BC598";
	setAttr ".t" -type "double3" -0.60514982363814196 0.20000000000000004 0.67268425822793088 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode transform -n "R_frontWheelSteer_GRP" -p "R_frontWheel_GRP";
	rename -uid "B61267FE-4A7D-9CE2-0370-4891612B45AB";
createNode transform -n "R_frontWheel_CTL" -p "R_frontWheelSteer_GRP";
	rename -uid "77811E6C-4823-ED96-B696-FC8379877E7C";
createNode locator -n "R_frontWheel_CTLShape" -p "R_frontWheel_CTL";
	rename -uid "C7C5DED8-42DC-9941-33EB-6695EE802568";
	setAttr -k off ".v";
createNode transform -n "R_rearWheel_GRP" -p "C_bake_CTL";
	rename -uid "D5E6CA8E-48C2-69D9-DA8F-6EA4B8B25C7A";
	setAttr ".t" -type "double3" -0.60514982363814174 0.20000000000000007 -0.66404625916750515 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode transform -n "R_rearWheel_CTL" -p "R_rearWheel_GRP";
	rename -uid "E209764D-4CAD-9753-4DF4-D09347BCA594";
createNode locator -n "R_rearWheel_CTLShape" -p "R_rearWheel_CTL";
	rename -uid "41086C89-4C31-2172-6D24-148C47A3F102";
	setAttr -k off ".v";
createNode transform -n "L_rearWheel_GRP" -p "C_bake_CTL";
	rename -uid "BC5437B3-425A-F99C-8BCE-AE974D01D5B6";
	setAttr ".t" -type "double3" 0.6052814342070878 0.20000000000000004 -0.66404625916750504 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode transform -n "L_rearWheel_CTL" -p "L_rearWheel_GRP";
	rename -uid "3EDB445C-44F6-A73E-8D72-7DA7390E00BD";
createNode locator -n "L_rearWheel_CTLShape" -p "L_rearWheel_CTL";
	rename -uid "0E3A1573-4501-05C5-B74A-4AA7BAEDDEB3";
	setAttr -k off ".v";
createNode transform -n "C_steeringAxis_GRP" -p "C_bake_CTL";
	rename -uid "907EA087-40AF-52F1-254B-50B0EDC94226";
	setAttr ".t" -type "double3" -1.4936591035750865e-16 0.2 0.67268425822793088 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode transform -n "C_steeringAxis_CTL" -p "C_steeringAxis_GRP";
	rename -uid "331A81B2-4DFF-C815-5E15-8EA89AA254D1";
createNode locator -n "C_steeringAxis_CTLShape" -p "C_steeringAxis_CTL";
	rename -uid "24F16B81-4AA8-211D-2A2D-C2887D827BCD";
	setAttr -k off ".v";
createNode transform -n "C_playerCamera_GRP" -p "C_bake_CTL";
	rename -uid "8C130860-0000-70E6-5728-F41C00000392";
	setAttr ".t" -type "double3" 1.2477748385564185e-15 2.0009363119633763 -4.392322240298788 ;
	setAttr ".r" -type "double3" 166.65808195982359 2.5444437451708134e-14 180 ;
createNode transform -n "C_playerCamera_CAM" -p "C_playerCamera_GRP";
	rename -uid "8C130860-0000-70E6-5728-F40D0000038A";
	setAttr ".t" -type "double3" -1.9721522630525295e-31 4.4408920985006242e-16 5.6791191029402341 ;
createNode camera -n "C_playerCamera_CAMShape" -p "C_playerCamera_CAM";
	rename -uid "8C130860-0000-70E6-5728-F40D0000038B";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dgo" 1;
	setAttr ".dfg" yes;
	setAttr ".dgc" -type "float3" 0 0 0 ;
createNode transform -n "C_Collider_COL" -p "C_bake_CTL";
	rename -uid "8C130860-0000-70E6-5728-F6EC000006FE";
createNode implicitSphere -n "C_Collider_COLShape" -p "C_Collider_COL";
	rename -uid "8C130860-0000-70E6-5728-F6EC000006FD";
	setAttr -k off ".v";
createNode aimConstraint -n "C_bake_CTL_aimConstraint1" -p "C_bake_CTL";
	rename -uid "37602860-0000-5387-572B-8895000028C3";
	addAttr -dcb 0 -ci true -sn "w0" -ln "C_front_CTLW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr ".o" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "C_front_CTL" -p "C_RIG_GRP";
	rename -uid "37602860-0000-5387-572B-882E0000288B";
	setAttr ".t" -type "double3" 0 0 0.67268425226211548 ;
createNode locator -n "C_front_CTLShape" -p "C_front_CTL";
	rename -uid "37602860-0000-5387-572B-882E0000288C";
	setAttr -k off ".v";
createNode transform -n "C_frontUp_CTL" -p "C_front_CTL";
	rename -uid "37602860-0000-5387-572B-886D000028AB";
	setAttr ".t" -type "double3" 0 1 0 ;
createNode locator -n "C_frontUp_CTLShape" -p "C_frontUp_CTL";
	rename -uid "37602860-0000-5387-572B-886D000028AC";
	setAttr -k off ".v";
createNode transform -n "C_GEO_GRP" -p "C_TestCar_GRP";
	rename -uid "9C28AAD5-4D79-F2D2-264A-2EBDAC5FF61B";
createNode transform -n "C_carBody_PLY" -p "C_GEO_GRP";
	rename -uid "F1DF72B3-4B21-905D-6C98-65AB4640CC44";
	setAttr ".rp" -type "double3" 0 0.5 0 ;
	setAttr ".sp" -type "double3" 0 0.5 0 ;
createNode mesh -n "C_carBody_PLYShape" -p "C_carBody_PLY";
	rename -uid "E3DB8A9A-4ACE-E8BF-D055-D9BBB3BD9606";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[3]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".pt[5]" -type "float3" 0 7.4505806e-09 -6.9849193e-10 ;
	setAttr ".pt[11]" -type "float3" 0 2.8865799e-15 -1.8626451e-09 ;
	setAttr ".pt[15]" -type "float3" -2.0116568e-07 -1.8626451e-09 -1.6763806e-08 ;
	setAttr ".dr" 1;
createNode parentConstraint -n "C_carBody_PLY_parentConstraint1" -p "C_carBody_PLY";
	rename -uid "1BECC860-0000-2709-572B-9B1C000002E5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "C_body_LOCW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0.22522870000923573 0 ;
	setAttr -k on ".w0";
createNode mesh -n "C_carBody_PLYShapeOrig" -p "C_carBody_PLY";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.075933889 0.125 0.075933889 0.375 0.67406607
		 0.625 0.67406607 0.875 0.075933889 0.625 0.075933889 0.375 0.1413251 0.125 0.14132509
		 0.375 0.60867488 0.625 0.60867488 0.875 0.14132509 0.625 0.1413251;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  0.5 0.19572943 1.046379089 0.5 0.19572943 -1
		 0.5 1 0.38429761 0.5 1 -0.85811245 -0.5 1 0.38429761 -0.5 1 -0.85811245 -0.5 0.19572943 1.046379089
		 -0.5 0.19572943 -1 0.5 0.52473593 1.046379089 -0.5 0.52473593 1.046379089 -0.5 0.52473593 -1
		 0.5 0.52473593 -1 0.5 0.63089466 0.5871613 -0.5 0.63089466 0.5871613 -0.5 0.7351048 -1
		 0.5 0.7351048 -1;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 11 0 2 4 0
		 3 5 0 4 13 0 5 14 0 6 0 0 7 1 0 8 12 0 9 6 0 8 9 1 10 7 0 9 10 1 11 15 0 10 11 1
		 11 8 1 12 2 0 13 9 0 12 13 1 14 10 0 13 14 1 15 3 0 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 19 -5
		mu 0 4 0 1 19 14
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 16 15 -4 -14
		mu 0 4 16 17 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -16 18 -6
		mu 0 4 1 10 18 19
		f 4 10 4 14 13
		mu 0 4 12 0 14 15
		f 4 -15 12 22 21
		mu 0 4 15 14 20 21
		f 4 24 23 -17 -22
		mu 0 4 22 23 17 16
		f 4 -19 -24 26 -18
		mu 0 4 19 18 24 25
		f 4 -20 17 27 -13
		mu 0 4 14 19 25 20
		f 4 -23 20 6 8
		mu 0 4 21 20 2 13
		f 4 2 9 -25 -9
		mu 0 4 4 5 23 22
		f 4 -27 -10 -8 -26
		mu 0 4 25 24 11 3
		f 4 -28 25 -2 -21
		mu 0 4 20 25 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_frontWheel_PLY" -p "C_GEO_GRP";
	rename -uid "0449F070-4E23-512B-62AE-44BC62C9533D";
	setAttr ".rp" -type "double3" 0.55513161056894578 0.2 0.67268425822793099 ;
	setAttr ".sp" -type "double3" 0.55513161056894578 0.2 0.67268425822793099 ;
createNode mesh -n "L_frontWheel_PLYShape" -p "L_frontWheel_PLY";
	rename -uid "02DC9C40-4B1F-B433-FB70-FEBAAC206415";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[20:59]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.50498182 0.26180345 0.48247284 0.50498182 0.31755713 0.51088071
		 0.50498182 0.3618035 0.55512714 0.50498182 0.3902114 0.61088085 0.50498182 0.4000001 0.67268425
		 0.50498182 0.3902114 0.73448765 0.50498182 0.36180347 0.79024136 0.50498182 0.3175571 0.83448768
		 0.50498182 0.26180342 0.86289561 0.50498182 0.2 0.8726843 0.50498182 0.13819659 0.86289561
		 0.50498182 0.082442932 0.83448768 0.50498182 0.038196579 0.7902413 0.50498182 0.0097886622 0.73448765
		 0.50498182 -2.9802322e-08 0.67268425 0.50498182 0.0097886771 0.61088085 0.50498182 0.038196594 0.5551272
		 0.50498182 0.082442939 0.51088083 0.50498182 0.1381966 0.48247296 0.50498182 0.2 0.47268426
		 0.60528141 0.26180345 0.48247284 0.60528141 0.31755713 0.51088071 0.60528141 0.3618035 0.55512714
		 0.60528141 0.3902114 0.61088085 0.60528141 0.4000001 0.67268425 0.60528141 0.3902114 0.73448765
		 0.60528141 0.36180347 0.79024136 0.60528141 0.3175571 0.83448768 0.60528141 0.26180342 0.86289561
		 0.60528141 0.2 0.8726843 0.60528141 0.13819659 0.86289561 0.60528141 0.082442932 0.83448768
		 0.60528141 0.038196579 0.7902413 0.60528141 0.0097886622 0.73448765 0.60528141 -2.9802322e-08 0.67268425
		 0.60528141 0.0097886771 0.61088085 0.60528141 0.038196594 0.5551272 0.60528141 0.082442939 0.51088083
		 0.60528141 0.1381966 0.48247296 0.60528141 0.2 0.47268426 0.50498182 0.2 0.67268425
		 0.60528141 0.2 0.67268425;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "L_frontWheel_PLY_parentConstraint1" -p "L_frontWheel_PLY";
	rename -uid "65CB9860-0000-156E-572A-2E83000004BC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_frontWheel_CTLW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -0.050149823638141799 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "R_frontWheel_PLY" -p "C_GEO_GRP";
	rename -uid "2CCD221B-4619-FA26-DC70-838B25F18B38";
	setAttr ".rp" -type "double3" -0.55500000000000016 0.20000000000000004 0.67268425822793088 ;
	setAttr ".sp" -type "double3" -0.55500000000000016 0.20000000000000004 0.67268425822793088 ;
createNode mesh -n "R_frontWheel_PLYShape" -p "R_frontWheel_PLY";
	rename -uid "0161CEFE-41E6-2D59-E8FE-F9939351306F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[20:59]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -1.5562069 1.2618034 0.79149002 -1.4141674 
		1.3175571 1.0986663 -1.1929355 1.3618035 1.3641446 -0.91416699 1.3902113 1.5619378 -0.60514981 1.4000001 1.6726848 -0.29613268 
		1.3902113 1.6855446 -0.017364342 1.3618034 1.5992587 0.20386742 1.3175571 1.4222732 0.34590694 1.2618034 1.1719127 0.3948504 
		1.2 0.8726843 0.34590694 1.1381966 0.55387855 0.20386736 1.0824429 0.24670233 -0.017364461 1.0381966 -0.018775791 -0.29613277 
		1.0097886 -0.21656899 -0.60514981 1 -0.32731587 -0.91416681 1.0097886 -0.34017575 -1.1929351 1.0381966 -0.25388986 -1.4141668 
		1.082443 -0.076904446 -1.5562063 1.1381966 0.17345595 -1.6051499 1.2 0.47268426 -1.4559073 -0.73819655 0.79149002 -1.3138677 
		-0.6824429 1.0986663 -1.0926358 -0.63819653 1.3641446 -0.81386733 -0.6097886 1.5619378 -0.50485015 -0.5999999 1.6726848 -0.19583303 
		-0.6097886 1.6855446 0.082935303 -0.63819653 1.5992587 0.30416706 -0.6824429 1.4222732 0.4462066 -0.73819661 1.1719127 0.49515006 
		-0.80000001 0.8726843 0.4462066 -0.86180341 0.55387855 0.304167 -0.91755706 0.24670233 0.082935184 -0.96180344 -0.018775791 -0.19583312 
		-0.99021131 -0.21656899 -0.50485015 -1 -0.32731587 -0.81386715 -0.99021131 -0.34017575 -1.0926354 -0.96180344 -0.25388986 -1.3138672 
		-0.91755706 -0.076904446 -1.4559067 -0.86180341 0.17345595 -1.5048501 -0.80000001 0.47268426 -0.60514981 1.2 0.67268425 -0.50485015 
		-0.80000001 0.67268425;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "R_frontWheel_PLY_parentConstraint1" -p "R_frontWheel_PLY";
	rename -uid "65CB9860-0000-156E-572A-2E8B000004CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_frontWheel_CTLW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 0 0 0.050149823638141799 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "L_rearWheel_PLY" -p "C_GEO_GRP";
	rename -uid "42F71202-4B95-9552-2203-0586D787D7C3";
	setAttr ".rp" -type "double3" 0.555131610568946 0.20000000000000004 -0.66404625916750504 ;
	setAttr ".sp" -type "double3" 0.555131610568946 0.20000000000000004 -0.66404625916750504 ;
createNode mesh -n "L_rearWheel_PLYShape" -p "L_rearWheel_PLY";
	rename -uid "A68D7854-4673-719F-098D-B2BA065C0A16";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[20:59]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -0.44607535 1.2618034 -0.54524052 -0.30403575 
		1.3175571 -0.23806417 -0.082803816 1.3618035 0.0274141 0.19596463 1.3902113 0.22520733 0.50498182 1.4000001 0.33595422 0.81399894 
		1.3902113 0.34881413 1.0927672 1.3618034 0.26252815 1.3139991 1.3175571 0.085542612 1.4560386 1.2618034 -0.16481784 1.504982 
		1.2 -0.46404621 1.4560386 1.1381966 -0.78285199 1.3139989 1.0824429 -1.0900282 1.0927671 1.0381966 -1.3555063 0.81399888 
		1.0097886 -1.5532995 0.50498182 1 -1.6640464 0.19596481 1.0097886 -1.6769062 -0.082803458 1.0381966 -1.5906204 -0.30403522 
		1.082443 -1.413635 -0.44607475 1.1381966 -1.1632745 -0.49501821 1.2 -0.86404628 -0.34577569 -0.73819655 -0.54524052 -0.20373611 
		-0.6824429 -0.23806417 0.017495833 -0.63819653 0.0274141 0.29626429 -0.6097886 0.22520733 0.60528141 -0.5999999 0.33595422 0.91429859 
		-0.6097886 0.34881413 1.193067 -0.63819653 0.26252815 1.4142987 -0.6824429 0.085542612 1.5563382 -0.73819661 -0.16481784 1.6052817 
		-0.80000001 -0.46404621 1.5563382 -0.86180341 -0.78285199 1.4142987 -0.91755706 -1.0900282 1.1930668 -0.96180344 -1.3555063 0.91429847 
		-0.99021131 -1.5532995 0.60528147 -1 -1.6640464 0.29626447 -0.99021131 -1.6769062 0.017496191 -0.96180344 -1.5906204 -0.20373558 
		-0.91755706 -1.413635 -0.3457751 -0.86180341 -1.1632745 -0.39471856 -0.80000001 -0.86404628 0.50498182 1.2 -0.66404629 0.60528141 
		-0.80000001 -0.66404629;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "L_rearWheel_PLY_parentConstraint1" -p "L_rearWheel_PLY";
	rename -uid "65CB9860-0000-156E-572A-2E86000004C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_rearWheel_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -0.050149823638141799 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "R_rearWheel_PLY" -p "C_GEO_GRP";
	rename -uid "32D931F4-4683-B8A2-D7E9-AEBE4205B102";
	setAttr ".rp" -type "double3" -0.55499999999999994 0.20000000000000007 -0.66404625916750515 ;
	setAttr ".sp" -type "double3" -0.55499999999999994 0.20000000000000007 -0.66404625916750515 ;
createNode mesh -n "R_rearWheel_PLYShape" -p "R_rearWheel_PLY";
	rename -uid "902B44E0-436D-9F5B-667F-D4A469E78BA8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[20:59]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -1.5562069 1.2618034 -0.54524052 -1.4141674 
		1.3175571 -0.23806417 -1.1929355 1.3618035 0.0274141 -0.91416699 1.3902113 0.22520733 -0.60514981 1.4000001 0.33595422 -0.29613268 
		1.3902113 0.34881413 -0.017364342 1.3618034 0.26252815 0.20386742 1.3175571 0.085542612 0.34590694 1.2618034 -0.16481784 0.3948504 
		1.2 -0.46404621 0.34590694 1.1381966 -0.78285199 0.20386736 1.0824429 -1.0900282 -0.017364461 1.0381966 -1.3555063 -0.29613277 
		1.0097886 -1.5532995 -0.60514981 1 -1.6640464 -0.91416681 1.0097886 -1.6769062 -1.1929351 1.0381966 -1.5906204 -1.4141668 
		1.082443 -1.413635 -1.5562063 1.1381966 -1.1632745 -1.6051499 1.2 -0.86404628 -1.4559073 -0.73819655 -0.54524052 -1.3138677 
		-0.6824429 -0.23806417 -1.0926358 -0.63819653 0.0274141 -0.81386733 -0.6097886 0.22520733 -0.50485015 -0.5999999 0.33595422 -0.19583303 
		-0.6097886 0.34881413 0.082935303 -0.63819653 0.26252815 0.30416706 -0.6824429 0.085542612 0.4462066 -0.73819661 -0.16481784 0.49515006 
		-0.80000001 -0.46404621 0.4462066 -0.86180341 -0.78285199 0.304167 -0.91755706 -1.0900282 0.082935184 -0.96180344 -1.3555063 -0.19583312 
		-0.99021131 -1.5532995 -0.50485015 -1 -1.6640464 -0.81386715 -0.99021131 -1.6769062 -1.0926354 -0.96180344 -1.5906204 -1.3138672 
		-0.91755706 -1.413635 -1.4559067 -0.86180341 -1.1632745 -1.5048501 -0.80000001 -0.86404628 -0.60514981 1.2 -0.66404629 -0.50485015 
		-0.80000001 -0.66404629;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "R_rearWheel_PLY_parentConstraint1" -p "R_rearWheel_PLY";
	rename -uid "65CB9860-0000-156E-572A-2E89000004C6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_rearWheel_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 0.050149823638141799 ;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "C_steeringWheel_PLY" -p "C_GEO_GRP";
	rename -uid "D6186932-4F30-1CD2-7F77-05AEA4A8FF9B";
	setAttr ".rp" -type "double3" 0.21332997977650889 0.61790320673796284 0.39194358892466674 ;
	setAttr ".sp" -type "double3" 0.21332997977650889 0.61790320673796284 0.39194358892466674 ;
createNode mesh -n "C_steeringWheel_PLYShape" -p "C_steeringWheel_PLY";
	rename -uid "207DBE48-4769-934A-F42A-A08E2523A53A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47916665486991405 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 195 ".uvst[0].uvsp[0:194]" -type "float2" 0 1 0.0625 1 0.125
		 1 0.1875 1 0.25 1 0.3125 1 0.375 1 0.5 1 0.5625 1 0.625 1 0.6875 1 0.75 1 0.8125
		 1 0.875 1 0 0.875 0.0625 0.875 0.125 0.875 0.1875 0.875 0.25 0.875 0.3125 0.875 0.375
		 0.875 0.4375 0.875 0.5 0.875 0.5625 0.875 0.625 0.875 0.6875 0.875 0.75 0.875 0.8125
		 0.875 0.875 0.875 0.9375 0.875 1 0.875 0 0.75 0.0625 0.75 0.125 0.75 0.1875 0.75
		 0.25 0.75 0.3125 0.75 0.375 0.75 0.4375 0.75 0.5 0.75 0.5625 0.75 0.625 0.75 0.6875
		 0.75 0.75 0.75 0.8125 0.75 0.875 0.75 0.9375 0.75 1 0.75 0 0.625 0.0625 0.625 0.125
		 0.625 0.1875 0.625 0.25 0.625 0.3125 0.625 0.375 0.625 0.4375 0.625 0.5 0.625 0.5625
		 0.625 0.625 0.625 0.6875 0.625 0.75 0.625 0.8125 0.625 0.875 0.625 0.9375 0.625 1
		 0.625 0 0.5 0.0625 0.5 0.125 0.5 0.1875 0.5 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375
		 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.8125 0.5 0.875 0.5 0.9375
		 0.5 1 0.5 0 0.375 0.0625 0.375 0.125 0.375 0.1875 0.375 0.25 0.375 0.3125 0.375 0.375
		 0.375 0.4375 0.375 0.5 0.375 0.5625 0.375 0.625 0.375 0.6875 0.375 0.75 0.375 0.8125
		 0.375 0.875 0.375 0.9375 0.375 1 0.375 0 0.25 0.0625 0.25 0.125 0.25 0.1875 0.25
		 0.25 0.25 0.3125 0.25 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.6875
		 0.25 0.75 0.25 0.8125 0.25 0.875 0.25 0.9375 0.25 1 0.25 0 0.125 0.0625 0.125 0.125
		 0.125 0.1875 0.125 0.25 0.125 0.3125 0.125 0.375 0.125 0.4375 0.125 0.5 0.125 0.5625
		 0.125 0.625 0.125 0.6875 0.125 0.75 0.125 0.8125 0.125 0.875 0.125 0.9375 0.125 1
		 0.125 0 0 0.0625 0 0.125 0 0.1875 0 0.25 0 0.3125 0 0.375 0 0.4375 0 0.5 0 0.5625
		 0 0.625 0 0.6875 0 0.75 0 0.8125 0 0.875 0 0.9375 0 1 0 0.52083331 0 0.47916669 0
		 0.3125 1 0.3125 0.875 0.47916669 0.875 0.52083331 0.875 0.5625 0.875 0.5625 1 0.5625
		 0 0.60416663 0 0.58333337 0 0.25 1 0.25 0.875 0.58333337 0.875 0.60416663 0.875 0.625
		 0.875 0.625 1 0.625 0 0.6875 0 0.6875 0 0.1875 1 0.1875 0.875 0.6875 0.875 0.6875
		 0.875 0.6875 0.875 0.6875 1 0.6875 0 0.77083331 0 0.79166663 0 0.12499999 1 0.12499999
		 0.875 0.79166663 0.875 0.77083331 0.875 0.75 0.875 0.75 1 0.75 0 0.85416663 0 0.89583331
		 0 0.062499996 1 0.062499996 0.875 0.89583331 0.875 0.85416663 0.875 0.8125 0.875
		 0.8125 1 0.8125 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 29 ".pt[129:157]" -type "float3"  0.022874789 0 0 0.024214773 0 0 1.7213971e-08 
		0 0 -0.024214758 0 0 -0.022874778 0 0 -7.4992084e-09 0 0 0.022874778 0 0 0.024214758 0 0 7.4992084e-09 0 0 -0.024214758 0 0 
		-0.022874778 0 0 -7.4992084e-09 0 0 0.022874774 0 0 0.024214758 0 0 7.4992084e-09 0 0 -0.024214773 0 0 -0.022874778 0 0 0 0 
		0 0.022874763 0 0 0.024214748 0 0 7.4992084e-09 0 0 -0.024214773 0 0 -0.022874778 0 0 0 0 0 0.022874754 0 0 0.024214737 
		0 0 0 0 0 -0.024214773 0 0 -0.022874778 0 0;
	setAttr -s 158 ".vt[0:157]"  0.1750617 0.54120582 0.34043589 0.14261936 0.55920154 0.3525213
		 0.12094206 0.58613408 0.37060839 0.11333 0.61790317 0.39194357 0.12094203 0.64967227 0.41327876
		 0.14261928 0.67660487 0.43136588 0.17506161 0.69460058 0.44345129 0.21332996 0.70091987 0.44769514
		 0.2515983 0.69460064 0.44345129 0.28404063 0.67660487 0.43136591 0.30571792 0.64967233 0.41327879
		 0.31332999 0.61790323 0.3919436 0.30571795 0.58613414 0.37060842 0.28404066 0.5592016 0.35252133
		 0.25159833 0.54120582 0.34043592 0.21332999 0.5348866 0.33619207 0.17281999 0.54459745 0.32567832
		 0.13847722 0.56364733 0.33847168 0.1155301 0.59215754 0.35761827 0.10747213 0.62578762 0.38020325
		 0.11553006 0.65941775 0.40278822 0.13847715 0.68792796 0.42193484 0.1728199 0.7069779 0.43472821
		 0.21332994 0.71366739 0.43922064 0.25384 0.70697796 0.43472824 0.2881828 0.68792802 0.42193487
		 0.3111299 0.65941781 0.40278825 0.31918785 0.62578768 0.38020328 0.3111299 0.5921576 0.3576183
		 0.2881828 0.56364739 0.33847168 0.25384003 0.54459745 0.32567835 0.21332999 0.53790802 0.32118589
		 0.16740805 0.53701663 0.31353104 0.12847722 0.55861151 0.32803351 0.10246447 0.59093058 0.349738
		 0.093329996 0.62905347 0.37534022 0.10246442 0.66717643 0.40094247 0.12847714 0.69949549 0.422647
		 0.16740793 0.72109044 0.43714949 0.21332994 0.72867352 0.44224212 0.25925195 0.72109044 0.43714952
		 0.29818279 0.69949555 0.42264703 0.3241955 0.66717649 0.4009425 0.33332998 0.62905353 0.37534028
		 0.32419553 0.59093064 0.34973806 0.29818279 0.55861157 0.32803354 0.25925201 0.53701663 0.31353104
		 0.21332999 0.52943355 0.30843842 0.1619961 0.52290416 0.31110975 0.11847723 0.54704404 0.32732135
		 0.089398853 0.5831719 0.35158378 0.07918787 0.62578762 0.38020325 0.089398794 0.66840339 0.40882272
		 0.11847714 0.70453131 0.43308514 0.16199596 0.72867119 0.44929677 0.21332994 0.73714805 0.45498955
		 0.2646639 0.72867125 0.4492968 0.30818278 0.70453137 0.43308517 0.33726114 0.66840345 0.40882277
		 0.34747213 0.62578773 0.38020328 0.33726114 0.58317196 0.35158381 0.30818281 0.54704404 0.32732141
		 0.26466396 0.52290416 0.31110975 0.21332999 0.51442736 0.305417 0.15975438 0.51052684 0.3198328
		 0.1143351 0.53572088 0.33675238 0.083986893 0.57342643 0.36207432 0.07333 0.61790317 0.39194357
		 0.083986834 0.66237992 0.42181283 0.11433499 0.70008552 0.44713476 0.15975425 0.72527957 0.46405435
		 0.21332994 0.73412657 0.46999574 0.26690564 0.72527963 0.46405438 0.31232491 0.70008558 0.44713482
		 0.34267312 0.66237998 0.42181289 0.35332999 0.61790323 0.3919436 0.34267312 0.57342649 0.36207435
		 0.31232494 0.53572094 0.33675241 0.26690567 0.5105269 0.31983283 0.21332999 0.5016799 0.31389147
		 0.1619961 0.50713521 0.33459041 0.11847723 0.53127509 0.350802 0.089398853 0.56740296 0.37506443
		 0.07918787 0.61001873 0.4036839 0.089398794 0.6526345 0.43230337 0.11847714 0.68876237 0.4565658
		 0.16199596 0.71290231 0.47277743 0.21332994 0.7213791 0.47847021 0.2646639 0.71290231 0.47277746
		 0.30818278 0.68876243 0.45656583 0.33726114 0.65263456 0.43230343 0.34747213 0.61001879 0.40368393
		 0.33726114 0.56740302 0.37506446 0.30818281 0.53127515 0.35080206 0.26466396 0.50713527 0.33459041
		 0.21332999 0.49865845 0.32889766 0.16740805 0.51471603 0.34673768 0.12847722 0.53631091 0.36124018
		 0.10246447 0.56862998 0.38294467 0.093329996 0.60675287 0.40854689 0.10246442 0.64487582 0.43414912
		 0.12847714 0.67719489 0.45585364 0.16740793 0.69878978 0.47035617 0.21332994 0.70637292 0.47544879
		 0.25925195 0.69878983 0.47035617 0.29818279 0.67719489 0.4558537 0.3241955 0.64487588 0.43414918
		 0.33332998 0.60675293 0.40854695 0.32419553 0.56863004 0.38294473 0.29818279 0.53631097 0.36124021
		 0.25925201 0.51471603 0.34673771 0.21332999 0.50713295 0.34164509 0.17281999 0.5288285 0.34915897
		 0.13847722 0.54787844 0.36195233 0.1155301 0.57638866 0.38109893 0.10747213 0.61001873 0.4036839
		 0.11553006 0.6436488 0.42626888 0.13847715 0.67215908 0.4454155 0.1728199 0.69120902 0.45820886
		 0.21332994 0.69789845 0.46270132 0.25384 0.69120902 0.45820889 0.2881828 0.67215908 0.44541553
		 0.3111299 0.64364886 0.42626891 0.31918785 0.61001879 0.40368393 0.3111299 0.57638872 0.38109896
		 0.2881828 0.54787844 0.36195233 0.25384003 0.52882856 0.349159 0.21332999 0.52213907 0.34466654
		 0.21332997 0.67324764 0.42911127 0.17506163 0.66903478 0.42628205 0.17281991 0.67991447 0.4165532
		 0.21332994 0.68437415 0.41954818 0.25384 0.67991453 0.41655323 0.2515983 0.66903484 0.42628205
		 0.21332999 0.64557546 0.41052744 0.17506164 0.64346898 0.40911284 0.17281994 0.6528511 0.39837822
		 0.21332996 0.65508097 0.39987573 0.25384 0.65285116 0.39837825 0.2515983 0.64346904 0.40911284
		 0.21332999 0.61790323 0.39194357 0.17506166 0.61790317 0.3919436 0.17281994 0.62578768 0.38020325
		 0.21332996 0.62578773 0.38020325 0.25384003 0.62578773 0.38020328 0.2515983 0.61790323 0.39194363
		 0.21332997 0.590231 0.37335974 0.17506167 0.59233737 0.37477434 0.17281996 0.59872425 0.36202824
		 0.21332996 0.5964945 0.36053079 0.25384003 0.59872431 0.3620283 0.2515983 0.59233743 0.3747744
		 0.21332997 0.56255877 0.35477591 0.17506169 0.56677163 0.3576051 0.17281997 0.57166088 0.34385329
		 0.21332997 0.56720126 0.34085834 0.25384003 0.57166088 0.34385332 0.2515983 0.56677163 0.35760516;
	setAttr -s 320 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 1 23 24 1 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 1
		 31 16 1 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 32 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 63 48 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 64 0 80 81 0 81 82 0 82 83 0 83 84 0 84 85 0 85 86 0
		 86 87 0 87 88 0 88 89 0 89 90 0 90 91 0 91 92 0 92 93 0 93 94 0 94 95 0 95 80 0 96 97 0
		 97 98 0 98 99 0 99 100 0 100 101 0 101 102 0 102 103 0 103 104 0 104 105 0 105 106 0
		 106 107 0 107 108 0 108 109 0 109 110 0 110 111 0 111 96 0 112 113 0 113 114 0 114 115 0
		 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0 120 121 0 121 122 0 122 123 0 123 124 0
		 124 125 0 125 126 0 126 127 0 127 112 0 0 16 0 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1
		 6 22 0 8 24 0 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 0 16 32 1 17 33 1 18 34 1
		 19 35 1 20 36 1 21 37 1 22 38 1 23 39 1 24 40 1 25 41 1 26 42 1 27 43 1 28 44 1 29 45 1
		 30 46 1 31 47 1 32 48 1 33 49 1 34 50 1 35 51 1 36 52 1 37 53 1 38 54 1 39 55 1;
	setAttr ".ed[166:319]" 40 56 1 41 57 1 42 58 1 43 59 1 44 60 1 45 61 1 46 62 1
		 47 63 1 48 64 1 49 65 1 50 66 1 51 67 1 52 68 1 53 69 1 54 70 1 55 71 1 56 72 1 57 73 1
		 58 74 1 59 75 1 60 76 1 61 77 1 62 78 1 63 79 1 64 80 1 65 81 1 66 82 1 67 83 1 68 84 1
		 69 85 1 70 86 1 71 87 1 72 88 1 73 89 1 74 90 1 75 91 1 76 92 1 77 93 1 78 94 1 79 95 1
		 80 96 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1 87 103 1 88 104 1 89 105 1
		 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 1 96 112 1 97 113 1 98 114 1
		 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1 105 121 1 106 122 1 107 123 1
		 108 124 1 109 125 1 110 126 1 111 127 1 112 0 1 113 1 1 114 2 1 115 3 1 116 4 1 117 5 1
		 118 6 1 119 7 1 120 8 1 121 9 1 122 10 1 123 11 1 124 12 1 125 13 1 126 14 1 127 15 1
		 7 128 1 6 129 0 22 130 0 23 131 1 24 132 0 8 133 0 128 134 1 129 135 0 128 129 1
		 130 136 0 129 130 1 131 137 1 130 131 1 132 138 0 131 132 1 133 139 0 132 133 1 133 128 1
		 134 140 1 135 141 0 134 135 1 136 142 0 135 136 1 137 143 1 136 137 1 138 144 0 137 138 1
		 139 145 0 138 139 1 139 134 1 140 146 1 141 147 0 140 141 1 142 148 0 141 142 1 143 149 1
		 142 143 1 144 150 0 143 144 1 145 151 0 144 145 1 145 140 1 146 152 1 147 153 0 146 147 1
		 148 154 0 147 148 1 149 155 1 148 149 1 150 156 0 149 150 1 151 157 0 150 151 1 151 146 1
		 152 15 1 153 0 0 152 153 1 154 16 0 153 154 1 155 31 1 154 155 1 156 30 0 155 156 1
		 157 14 0 156 157 1 157 152 1;
	setAttr -s 160 -ch 640 ".fc[0:159]" -type "polyFaces" 
		f 4 -1 128 16 -130
		mu 0 4 1 0 14 15
		f 4 -2 129 17 -131
		mu 0 4 2 1 15 16
		f 4 -3 130 18 -132
		mu 0 4 3 2 16 17
		f 4 -4 131 19 -133
		mu 0 4 4 3 17 18
		f 4 -5 132 20 -134
		mu 0 4 5 4 18 19
		f 4 -6 133 21 -135
		mu 0 4 6 5 19 20
		f 4 -9 135 24 -137
		mu 0 4 8 7 22 23
		f 4 -10 136 25 -138
		mu 0 4 9 8 23 24
		f 4 -11 137 26 -139
		mu 0 4 10 9 24 25
		f 4 -12 138 27 -140
		mu 0 4 11 10 25 26
		f 4 -13 139 28 -141
		mu 0 4 12 11 26 27
		f 4 -14 140 29 -142
		mu 0 4 13 12 27 28
		f 4 -17 142 32 -144
		mu 0 4 15 14 31 32
		f 4 -18 143 33 -145
		mu 0 4 16 15 32 33
		f 4 -19 144 34 -146
		mu 0 4 17 16 33 34
		f 4 -20 145 35 -147
		mu 0 4 18 17 34 35
		f 4 -21 146 36 -148
		mu 0 4 19 18 35 36
		f 4 -22 147 37 -149
		mu 0 4 20 19 36 37
		f 4 -23 148 38 -150
		mu 0 4 21 20 37 38
		f 4 -24 149 39 -151
		mu 0 4 22 21 38 39
		f 4 -25 150 40 -152
		mu 0 4 23 22 39 40
		f 4 -26 151 41 -153
		mu 0 4 24 23 40 41
		f 4 -27 152 42 -154
		mu 0 4 25 24 41 42
		f 4 -28 153 43 -155
		mu 0 4 26 25 42 43
		f 4 -29 154 44 -156
		mu 0 4 27 26 43 44
		f 4 -30 155 45 -157
		mu 0 4 28 27 44 45
		f 4 -31 156 46 -158
		mu 0 4 29 28 45 46
		f 4 -32 157 47 -143
		mu 0 4 30 29 46 47
		f 4 -33 158 48 -160
		mu 0 4 32 31 48 49
		f 4 -34 159 49 -161
		mu 0 4 33 32 49 50
		f 4 -35 160 50 -162
		mu 0 4 34 33 50 51
		f 4 -36 161 51 -163
		mu 0 4 35 34 51 52
		f 4 -37 162 52 -164
		mu 0 4 36 35 52 53
		f 4 -38 163 53 -165
		mu 0 4 37 36 53 54
		f 4 -39 164 54 -166
		mu 0 4 38 37 54 55
		f 4 -40 165 55 -167
		mu 0 4 39 38 55 56
		f 4 -41 166 56 -168
		mu 0 4 40 39 56 57
		f 4 -42 167 57 -169
		mu 0 4 41 40 57 58
		f 4 -43 168 58 -170
		mu 0 4 42 41 58 59
		f 4 -44 169 59 -171
		mu 0 4 43 42 59 60
		f 4 -45 170 60 -172
		mu 0 4 44 43 60 61
		f 4 -46 171 61 -173
		mu 0 4 45 44 61 62
		f 4 -47 172 62 -174
		mu 0 4 46 45 62 63
		f 4 -48 173 63 -159
		mu 0 4 47 46 63 64
		f 4 -49 174 64 -176
		mu 0 4 49 48 65 66
		f 4 -50 175 65 -177
		mu 0 4 50 49 66 67
		f 4 -51 176 66 -178
		mu 0 4 51 50 67 68
		f 4 -52 177 67 -179
		mu 0 4 52 51 68 69
		f 4 -53 178 68 -180
		mu 0 4 53 52 69 70
		f 4 -54 179 69 -181
		mu 0 4 54 53 70 71
		f 4 -55 180 70 -182
		mu 0 4 55 54 71 72
		f 4 -56 181 71 -183
		mu 0 4 56 55 72 73
		f 4 -57 182 72 -184
		mu 0 4 57 56 73 74
		f 4 -58 183 73 -185
		mu 0 4 58 57 74 75
		f 4 -59 184 74 -186
		mu 0 4 59 58 75 76
		f 4 -60 185 75 -187
		mu 0 4 60 59 76 77
		f 4 -61 186 76 -188
		mu 0 4 61 60 77 78
		f 4 -62 187 77 -189
		mu 0 4 62 61 78 79
		f 4 -63 188 78 -190
		mu 0 4 63 62 79 80
		f 4 -64 189 79 -175
		mu 0 4 64 63 80 81
		f 4 -65 190 80 -192
		mu 0 4 66 65 82 83
		f 4 -66 191 81 -193
		mu 0 4 67 66 83 84
		f 4 -67 192 82 -194
		mu 0 4 68 67 84 85
		f 4 -68 193 83 -195
		mu 0 4 69 68 85 86
		f 4 -69 194 84 -196
		mu 0 4 70 69 86 87
		f 4 -70 195 85 -197
		mu 0 4 71 70 87 88
		f 4 -71 196 86 -198
		mu 0 4 72 71 88 89
		f 4 -72 197 87 -199
		mu 0 4 73 72 89 90
		f 4 -73 198 88 -200
		mu 0 4 74 73 90 91
		f 4 -74 199 89 -201
		mu 0 4 75 74 91 92
		f 4 -75 200 90 -202
		mu 0 4 76 75 92 93
		f 4 -76 201 91 -203
		mu 0 4 77 76 93 94
		f 4 -77 202 92 -204
		mu 0 4 78 77 94 95
		f 4 -78 203 93 -205
		mu 0 4 79 78 95 96
		f 4 -79 204 94 -206
		mu 0 4 80 79 96 97
		f 4 -80 205 95 -191
		mu 0 4 81 80 97 98
		f 4 -81 206 96 -208
		mu 0 4 83 82 99 100
		f 4 -82 207 97 -209
		mu 0 4 84 83 100 101
		f 4 -83 208 98 -210
		mu 0 4 85 84 101 102
		f 4 -84 209 99 -211
		mu 0 4 86 85 102 103
		f 4 -85 210 100 -212
		mu 0 4 87 86 103 104
		f 4 -86 211 101 -213
		mu 0 4 88 87 104 105
		f 4 -87 212 102 -214
		mu 0 4 89 88 105 106
		f 4 -88 213 103 -215
		mu 0 4 90 89 106 107
		f 4 -89 214 104 -216
		mu 0 4 91 90 107 108
		f 4 -90 215 105 -217
		mu 0 4 92 91 108 109
		f 4 -91 216 106 -218
		mu 0 4 93 92 109 110
		f 4 -92 217 107 -219
		mu 0 4 94 93 110 111
		f 4 -93 218 108 -220
		mu 0 4 95 94 111 112
		f 4 -94 219 109 -221
		mu 0 4 96 95 112 113
		f 4 -95 220 110 -222
		mu 0 4 97 96 113 114
		f 4 -96 221 111 -207
		mu 0 4 98 97 114 115
		f 4 -97 222 112 -224
		mu 0 4 100 99 116 117
		f 4 -98 223 113 -225
		mu 0 4 101 100 117 118
		f 4 -99 224 114 -226
		mu 0 4 102 101 118 119
		f 4 -100 225 115 -227
		mu 0 4 103 102 119 120
		f 4 -101 226 116 -228
		mu 0 4 104 103 120 121
		f 4 -102 227 117 -229
		mu 0 4 105 104 121 122
		f 4 -103 228 118 -230
		mu 0 4 106 105 122 123
		f 4 -104 229 119 -231
		mu 0 4 107 106 123 124
		f 4 -105 230 120 -232
		mu 0 4 108 107 124 125
		f 4 -106 231 121 -233
		mu 0 4 109 108 125 126
		f 4 -107 232 122 -234
		mu 0 4 110 109 126 127
		f 4 -108 233 123 -235
		mu 0 4 111 110 127 128
		f 4 -109 234 124 -236
		mu 0 4 112 111 128 129
		f 4 -110 235 125 -237
		mu 0 4 113 112 129 130
		f 4 -111 236 126 -238
		mu 0 4 114 113 130 131
		f 4 -112 237 127 -223
		mu 0 4 115 114 131 132
		f 4 -113 238 0 -240
		mu 0 4 117 116 133 134
		f 4 -114 239 1 -241
		mu 0 4 118 117 134 135
		f 4 -115 240 2 -242
		mu 0 4 119 118 135 136
		f 4 -116 241 3 -243
		mu 0 4 120 119 136 137
		f 4 -117 242 4 -244
		mu 0 4 121 120 137 138
		f 4 -118 243 5 -245
		mu 0 4 122 121 138 139
		f 4 -119 244 6 -246
		mu 0 4 123 122 139 140
		f 4 -120 245 7 -247
		mu 0 4 124 123 140 141
		f 4 -121 246 8 -248
		mu 0 4 125 124 141 142
		f 4 -122 247 9 -249
		mu 0 4 126 125 142 143
		f 4 -123 248 10 -250
		mu 0 4 127 126 143 144
		f 4 -124 249 11 -251
		mu 0 4 128 127 144 145
		f 4 -125 250 12 -252
		mu 0 4 129 128 145 146
		f 4 -126 251 13 -253
		mu 0 4 130 129 146 147
		f 4 -127 252 14 -254
		mu 0 4 131 130 147 148
		f 4 -128 253 15 -239
		mu 0 4 132 131 148 149
		f 4 310 309 -16 -309
		mu 0 4 186 187 149 148
		f 4 312 311 -129 -310
		mu 0 4 188 189 14 0
		f 4 314 313 31 -312
		mu 0 4 190 191 29 30
		f 4 316 315 30 -314
		mu 0 4 191 192 28 29
		f 4 318 317 141 -316
		mu 0 4 192 193 13 28
		f 4 319 308 -15 -318
		mu 0 4 194 186 148 147
		f 4 -7 255 -263 -255
		mu 0 4 140 139 151 150
		f 4 134 256 -265 -256
		mu 0 4 6 20 153 152
		f 4 22 257 -267 -257
		mu 0 4 20 21 155 154
		f 4 23 258 -269 -258
		mu 0 4 21 22 156 155
		f 4 -136 259 -271 -259
		mu 0 4 22 7 157 156
		f 4 -8 254 -272 -260
		mu 0 4 141 140 150 158
		f 4 262 261 -275 -261
		mu 0 4 150 151 160 159
		f 4 264 263 -277 -262
		mu 0 4 152 153 162 161
		f 4 266 265 -279 -264
		mu 0 4 154 155 164 163
		f 4 268 267 -281 -266
		mu 0 4 155 156 165 164
		f 4 270 269 -283 -268
		mu 0 4 156 157 166 165
		f 4 271 260 -284 -270
		mu 0 4 158 150 159 167
		f 4 274 273 -287 -273
		mu 0 4 159 160 169 168
		f 4 276 275 -289 -274
		mu 0 4 161 162 171 170
		f 4 278 277 -291 -276
		mu 0 4 163 164 173 172
		f 4 280 279 -293 -278
		mu 0 4 164 165 174 173
		f 4 282 281 -295 -280
		mu 0 4 165 166 175 174
		f 4 283 272 -296 -282
		mu 0 4 167 159 168 176
		f 4 286 285 -299 -285
		mu 0 4 168 169 178 177
		f 4 288 287 -301 -286
		mu 0 4 170 171 180 179
		f 4 290 289 -303 -288
		mu 0 4 172 173 182 181
		f 4 292 291 -305 -290
		mu 0 4 173 174 183 182
		f 4 294 293 -307 -292
		mu 0 4 174 175 184 183
		f 4 295 284 -308 -294
		mu 0 4 176 168 177 185
		f 4 298 297 -311 -297
		mu 0 4 177 178 187 186
		f 4 300 299 -313 -298
		mu 0 4 179 180 189 188
		f 4 302 301 -315 -300
		mu 0 4 181 182 191 190
		f 4 304 303 -317 -302
		mu 0 4 182 183 192 191
		f 4 306 305 -319 -304
		mu 0 4 183 184 193 192
		f 4 307 296 -320 -306
		mu 0 4 185 177 186 194;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "C_steeringWheel_PLY_parentConstraint1" -p "C_steeringWheel_PLY";
	rename -uid "65CB9860-0000-156E-572A-2E7C000004B3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "C_steeringWheel_CTLW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.1102230246251565e-16 -1.2836953722228372e-16 0 ;
	setAttr ".tg[0].tor" -type "double3" 56.115865831259832 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-15 -9.5416640443905503e-15 -5.2966875576601903e-31 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-15 -7.9513867036587919e-15 2.2069531490250793e-31 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "C_GEO_GRP_parentConstraint1" -p "C_GEO_GRP";
	rename -uid "EF86D860-0000-3F41-5729-446F00000444";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "C_bake_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "C_carBody_PLY1" -p "C_GEO_GRP";
	rename -uid "A109E860-0000-4ED2-572D-1E9300001C19";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0.5 0 ;
	setAttr ".sp" -type "double3" 0 0.5 0 ;
createNode mesh -n "C_carBody_PLY1Shape" -p "C_carBody_PLY1";
	rename -uid "A109E860-0000-4ED2-572D-1E9300001C1A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[0:9]" "f[11]" "f[13]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[10]" "f[12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.375 0.14132510125637054 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.075933889 0.125 0.075933889 0.375 0.67406607
		 0.625 0.67406607 0.875 0.075933889 0.625 0.075933889 0.375 0.1413251 0.125 0.14132509
		 0.375 0.60867488 0.625 0.60867488 0.875 0.14132509 0.625 0.1413251;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[2]" -type "float3" -0.015973341 -0.0058071432 0.00059220858 ;
	setAttr ".pt[3]" -type "float3" -0.016528979 -0.15590526 0 ;
	setAttr ".pt[4]" -type "float3" 0.015677422 -0.16884933 0.017222298 ;
	setAttr ".pt[5]" -type "float3" 0.1111111 -0.17524514 0.017222298 ;
	setAttr ".pt[10]" -type "float3" 0.08199808 -0.067964226 0.020104567 ;
	setAttr ".pt[11]" -type "float3" -0.095433682 -0.14930949 0.10181575 ;
	setAttr ".pt[12]" -type "float3" -0.071647316 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.12299851 -0.0027195676 0 ;
	setAttr ".pt[15]" -type "float3" -0.060507827 -0.152229 0.064946853 ;
	setAttr -s 16 ".vt[0:15]"  0.5 0.19572943 1.046379089 0.5 0.19572943 -1
		 0.5 1 0.38429761 0.5 1 -0.85811245 -0.5 1 0.38429761 -0.5 1 -0.85811245 -0.5 0.19572943 1.046379089
		 -0.5 0.19572943 -1 0.5 0.52473593 1.046379089 -0.5 0.52473593 1.046379089 -0.5 0.52473593 -1
		 0.5 0.52473593 -1 0.5 0.63089466 0.5871613 -0.5 0.63089466 0.5871613 -0.5 0.7351048 -1
		 0.5 0.7351048 -1;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 11 0 2 4 0
		 3 5 0 4 13 0 5 14 0 6 0 0 7 1 0 8 12 0 9 6 0 8 9 1 10 7 0 9 10 1 11 15 0 10 11 1
		 11 8 1 12 2 0 13 9 0 12 13 1 14 10 0 13 14 1 15 3 0 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 19 -5
		mu 0 4 0 1 19 14
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 16 15 -4 -14
		mu 0 4 16 17 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -16 18 -6
		mu 0 4 1 10 18 19
		f 4 10 4 14 13
		mu 0 4 12 0 14 15
		f 4 -15 12 22 21
		mu 0 4 15 14 20 21
		f 4 24 23 -17 -22
		mu 0 4 22 23 17 16
		f 4 -19 -24 26 -18
		mu 0 4 19 18 24 25
		f 4 -20 17 27 -13
		mu 0 4 14 19 25 20
		f 4 -23 20 6 8
		mu 0 4 21 20 2 13
		f 4 2 9 -25 -9
		mu 0 4 4 5 23 22
		f 4 -27 -10 -8 -26
		mu 0 4 25 24 11 3
		f 4 -28 25 -2 -21
		mu 0 4 20 25 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "C_FX_GRP" -p "C_TestCar_GRP";
	rename -uid "1BECC860-0000-2709-572B-C9550000554B";
createNode transform -n "pSphere1" -p "C_FX_GRP";
	rename -uid "1BECC860-0000-2709-572B-CC3100006693";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.47725411250769162 0.4298814455217343 0.91076354517324487 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "1BECC860-0000-2709-572B-CC3100006692";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001 0 0.47499999
		 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001 0 0.72500002 0 0.77500004 0 0.82499999
		 0 0.875 0 0.92500001 0 0.97500002 0 0.025 1 0.075000003 1 0.125 1 0.175 1 0.22500001
		 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47499999 1 0.52500004 1 0.57499999
		 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004 1 0.82499999 1 0.875 1 0.92500001
		 1 0.97500002 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "pSphere1_parentConstraint1" -p "pSphere1";
	rename -uid "1BECC860-0000-2709-572B-CD1B000066C8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "C_bake_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0.46237581271924866 0 ;
	setAttr ".rst" -type "double3" 0 0.46237581271924866 0 ;
	setAttr -k on ".w0";
createNode transform -n "C_UI_GRP";
	rename -uid "1BECC860-0000-2709-572B-B67000002DDA";
	setAttr ".t" -type "double3" 1.4082676129127675e-15 3.3114592681993305 -9.9181636573645413 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "C_speedometer_GRP" -p "C_UI_GRP";
	rename -uid "1BECC860-0000-2709-572B-B66100002DD1";
	setAttr ".t" -type "double3" -0.35880301894539529 -0.2325623536905046 -0.99999999999999101 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.11425732288950821 0.11425732288950821 0.11425732288950821 ;
createNode transform -n "C_pointer_PLY" -p "C_speedometer_GRP";
	rename -uid "1BECC860-0000-2709-572B-B37B0000275D";
	setAttr ".s" -type "double3" 0.93863549834577342 0.93863549834577342 0.93863549834577342 ;
createNode mesh -n "C_pointer_PLYShape" -p "C_pointer_PLY";
	rename -uid "1BECC860-0000-2709-572B-B37B0000275C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:57]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 85 ".uvst[0].uvsp[0:84]" -type "float2" 1 0.5 0 0.5 0.86846757
		 1 0.86846757 0 0.5 0.88543826 0.5 0.11456174 0.25 0.76596093 0.25 0.23403907 0.045061085
		 0.375 0.25 0.375 0.125 0.30685923 0.125 0.375 0.125 0.69314075 0.5 0.375 0.375 0.17063977
		 0.375 0.375 0.375 0.82936025 0.75 0.97515738 0.75 0.024842618 0.75 0.375 0.625 0.065313548
		 0.625 0.375 0.625 0.93468648 0.99779618 0.375 0.875 0.00017334435 0.875 0.375 0.98470831
		 0.1875 0.875 0.1875 0.9375 0.025292313 0.9375 0.1875 0.9375 0.375 0.875 0.99982667
		 0.99489784 0.6875 0.875 0.6875 0.9375 0.6875 0.9375 0.97470766 0.87268442 0.83333331
		 0.83333331 0.87268442 0.83333331 0.83333331 1 0.5 0.99828857 0.54166669 0.83333331
		 0.54166669 0.83333331 0.33333334 0.97154903 0.33333334 0.45833334 0.54166669 0.33333334
		 0.54166669 0.33333334 0.33333334 0.45833334 0.33333334 0.33333334 0.028450951 0.45833334
		 0.0017114073 0.45833334 0.16666667 0.33333334 0.16666667 0.12731558 0.16666667 0.16666667
		 0.12731558 0.16666667 0.16666667 0.16666667 0.54166669 0.0017114073 0.54166669 0
		 0.5 0.028450951 0.33333334 0.16666667 0.33333334 0.83333331 0.12731558 0.87268442
		 0.16666667 0.83333331 0.16666667 0.5 0 0.66666669 0.028450951 0.66666669 0.16666667
		 0.66666669 0.54166669 0.66666669 0.33333334 0.45833334 0.99828857 0.33333334 0.97154903
		 0.33333334 0.83333331 0.45833334 0.83333331 0.45833334 0.66666669 0.33333334 0.66666669
		 0.028450951 0.66666669 0.16666667 0.66666669 0.16666667 0.87268442 0.12731558 0.83333331
		 0.16666667 0.83333331 0.97154903 0.66666669 0.83333331 0.66666669 0.66666669 0.66666669
		 0.66666669 0.97154903 0.5 1 0.66666669 0.83333331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 85 ".pt[0:84]" -type "float3"  1.0318347e-05 0 0.069474764 1.0318348e-05 0 
		-0.15513386 0.015065321 0 0.039931431 -0.015065321 0 0.039931476 0.011613341 0 -0.042829547 -0.011597374 0 -0.042829618 0.0078785811 0 -0.098978475 
		-0.0079984507 0 -0.09898179 -0.0037533676 0 -0.14501287 -0.0037534125 0 -0.098981731 -0.0058114501 0 -0.12705795 -0.0037534125 0 -0.12705781 0.0058257557 
		0 -0.12705781 -0.0037534125 0 -0.042829584 -0.0099135954 0 -0.070905805 -0.0037534125 0 -0.070905678 0.0099113723 0 -0.070905365 0.014315852 0 
		0.013322609 -0.014360809 0 0.013321842 -0.0037534125 0 0.013322595 -0.01309387 0 -0.014753724 -0.0037534125 0 -0.014753502 0.013104657 0 -0.014753575 
		-0.003753966 0 0.068980381 -0.015052169 0 0.041398726 -0.0037534118 0 0.041398682 -0.0093992213 0 0.066040188 -0.0093990099 0 0.041398682 -0.014303483 
		0 0.055437341 -0.0093990089 0 0.055436708 -0.0037534118 0 0.055436708 0.015060092 0 0.041398682 0.0056568659 0 0.068329409 0.005655915 0 
		0.041398682 0.005655915 0 0.055436708 0.014324119 0 0.055437341 0 0 0.026341625 3.9798922e-17 0 -0.026341625 0.026341625 0 6.1507503e-17 
		-0.026341625 0 4.5226067e-18 0.0021951364 0 0.026251443 0.0021951364 0 -0.026251443 0.0021951364 0 -0.0021951364 -0.026251443 0 -0.0021951364 -0.017561091 
		0 -0.019634232 -0.017561091 0 -0.0021951364 -0.019634232 0 -0.017561091 -0.017561091 0 -0.017561091 -0.024842728 0 -0.0087805456 -0.017561091 0 
		-0.0087805456 0.0021951364 0 -0.017561091 -0.0087805456 0 -0.024842728 -0.0087805456 0 -0.017561091 -0.0087805456 0 -0.0021951364 -0.0087805456 0 -0.0087805456 
		0.0021951364 0 -0.0087805456 -0.017561091 0 0.019634232 -0.024842728 0 0.0087805456 -0.017561091 0 0.0087805456 -0.019634232 0 0.017561091 -0.017561091 
		0 0.017561091 0.0021951364 0 0.0087805456 -0.0087805456 0 0.0087805456 -0.0087805456 0 0.024842728 -0.0087805456 0 0.017561091 0.0021951364 0 
		0.017561091 0.026251443 0 -0.0021951364 0.0087805456 0 -0.024842728 0.0087805456 0 -0.0021951364 0.0087805456 0 -0.017561091 0.0087805456 0 -0.0087805456 
		0.019634232 0 -0.017561091 0.017561091 0 -0.019634232 0.017561091 0 -0.017561091 0.017561091 0 -0.0021951364 0.017561091 0 -0.0087805456 0.024842728 
		0 -0.0087805456 0.0087805456 0 0.024842728 0.0087805456 0 0.0087805456 0.0087805456 0 0.017561091 0.024842728 0 0.0087805456 0.017561091 0 
		0.0087805456 0.017561091 0 0.019634232 0.017561091 0 0.017561091 0.019634232 0 0.017561091;
	setAttr -s 85 ".vt[0:84]"  -4.4235449e-17 -4.2862638e-18 -0.07 -3.6892633e-17 5.1667041e-17 0.84378678
		 -0.033218391 7.1414911e-18 0.050192621 0.033263925 -1.0002532e-18 0.050192475 -0.025601698 2.6825682e-17 0.38689324
		 0.025612002 2.0553832e-17 0.38689354 -0.017361075 3.980401e-17 0.6153267 0.017671091 3.5514632e-17 0.61534017
		 0.0083044544 4.812872e-17 0.80261058 0.0083045531 3.66617e-17 0.61534011 0.01284555 4.3099789e-17 0.72956407
		 0.0083045531 4.3655863e-17 0.72956347 -0.012831583 4.6244293e-17 0.72956347 0.0083045531 2.2673373e-17 0.38689339
		 0.021896802 2.8002999e-17 0.50111729 0.0083045531 2.9667537e-17 0.50111675 -0.021846361 3.3359883e-17 0.5011155
		 -0.031564709 1.356762e-17 0.15844664 0.03170944 5.818965e-18 0.15844978 0.0083045531 8.6850474e-18 0.1584467
		 0.028913971 1.3155342e-17 0.27267098 0.0083045531 1.567921e-17 0.27267006 -0.028892245 2.0234527e-17 0.27267039
		 0.0083057741 -5.1802678e-18 -0.067988649 0.033234905 -1.3622145e-18 0.044223163 0.0083045531 1.6908847e-18 0.04422335
		 0.020761847 -5.9732544e-18 -0.056026954 0.020761384 1.6536299e-19 0.04422335 0.031582948 -4.6571344e-18 -0.012890877
		 0.020761384 -3.3317185e-18 -0.012888325 0.0083045531 -1.8061968e-18 -0.012888325
		 -0.033206843 6.7745645e-18 0.04422335 -0.012458928 -2.4751649e-18 -0.06534037 -0.01245683 4.233421e-18 0.04422335
		 -0.01245683 7.3633938e-19 -0.012888325 -0.031582948 3.0784571e-18 -0.012890877 0 -6.1867841e-18 -0.10103785
		 -1.5265567e-16 6.1867841e-18 0.10103785 -0.10103785 1.2373568e-17 -2.3592239e-16
		 0.10103785 -1.2373568e-17 -1.7347235e-17 -0.008419821 -5.1344772e-18 -0.10069201
		 -0.008419821 7.1967385e-18 0.10069201 -0.008419821 1.546696e-18 0.008419821 0.10069201 -1.181565e-17 0.008419821
		 0.067358568 -3.6376095e-18 0.075310461 0.067358568 -7.7334795e-18 0.008419821 0.075310461 -5.0983492e-18 0.067358568
		 0.067358568 -4.1245227e-18 0.067358568 0.095288604 -9.6072272e-18 0.033679284 0.067358568 -6.1867841e-18 0.033679284
		 -0.008419821 5.1556534e-18 0.067358568 0.033679284 1.7102216e-18 0.095288604 0.033679284 2.7733391e-32 0.067358568
		 0.033679284 -3.6089572e-18 0.008419821 0.033679284 -2.0622614e-18 0.033679284 -0.008419821 3.093392e-18 0.033679284
		 0.067358568 -1.2860481e-17 -0.075310461 0.095288604 -1.3731749e-17 -0.033679284 0.067358568 -1.0311307e-17 -0.033679284
		 0.075310461 -1.3347395e-17 -0.067358568 0.067358568 -1.2373568e-17 -0.067358568 -0.008419821 -1.0311307e-18 -0.033679284
		 0.033679284 -6.1867841e-18 -0.033679284 0.033679284 -9.959267e-18 -0.095288604 0.033679284 -8.2490454e-18 -0.067358568
		 -0.008419821 -3.093392e-18 -0.067358568 -0.10069201 1.2846781e-17 0.008419821 -0.033679284 9.959267e-18 0.095288604
		 -0.033679284 4.6400878e-18 0.008419821 -0.033679284 8.2490454e-18 0.067358568 -0.033679284 6.1867841e-18 0.033679284
		 -0.075310461 1.3347395e-17 0.067358568 -0.067358568 1.2860481e-17 0.075310461 -0.067358568 1.2373568e-17 0.067358568
		 -0.067358568 8.7646106e-18 0.008419821 -0.067358568 1.0311307e-17 0.033679284 -0.095288604 1.3731749e-17 0.033679284
		 -0.033679284 -1.7102216e-18 -0.095288604 -0.033679284 2.0622614e-18 -0.033679284
		 -0.033679284 2.8503763e-32 -0.067358568 -0.095288604 9.6072272e-18 -0.033679284 -0.067358568 6.1867841e-18 -0.033679284
		 -0.067358568 3.6376095e-18 -0.075310461 -0.067358568 4.1245227e-18 -0.067358568 -0.075310461 5.0983492e-18 -0.067358568;
	setAttr -s 141 ".ed[0:140]"  32 35 0 35 34 1 34 32 1 4 16 0 16 15 1 15 13 1
		 13 4 1 6 12 0 12 11 1 11 9 1 9 6 1 10 7 0 7 9 1 11 10 1 8 10 0 11 8 1 12 1 0 1 8 0
		 14 5 0 5 13 1 15 14 1 7 14 0 15 9 1 16 6 0 17 22 0 22 21 1 21 19 1 19 17 1 20 18 0
		 18 19 1 21 20 1 5 20 0 21 13 1 22 4 0 26 23 0 23 30 1 30 29 1 29 26 1 18 3 0 3 24 0
		 24 27 1 27 25 1 25 19 1 28 26 0 29 28 1 24 28 0 29 27 1 30 25 1 31 2 0 2 17 0 25 33 1
		 33 31 1 0 32 0 34 30 1 23 0 0 34 33 1 35 31 0 82 84 0 84 83 1 83 82 1 36 40 0 40 65 1
		 65 64 1 64 63 1 63 36 0 42 55 1 55 54 1 54 53 1 53 42 1 48 43 0 43 45 1 45 49 1 49 48 1
		 44 46 0 46 47 1 47 44 1 46 48 0 49 47 1 50 41 1 41 37 0 37 51 0 51 52 1 52 50 1 51 44 0
		 47 52 1 45 53 1 54 49 1 54 52 1 55 50 1 59 56 0 56 60 1 60 59 1 43 39 0 39 57 0 57 58 1
		 58 45 1 57 59 0 60 58 1 61 42 1 53 62 1 62 61 1 58 62 1 56 63 0 64 60 1 64 62 1 65 61 1
		 66 76 0 76 75 1 75 74 1 74 66 1 42 68 1 68 70 1 70 55 1 67 41 0 50 69 1 69 67 1 70 69 1
		 71 72 0 72 73 1 73 71 1 72 67 0 69 73 1 68 74 1 75 70 1 75 73 1 76 71 0 40 77 0 77 79 1
		 79 65 1 78 68 1 61 78 1 79 78 1 80 38 0 38 66 0 74 81 1 81 80 1 78 81 1 77 82 0 83 79 1
		 83 81 1 84 80 0;
	setAttr -s 58 -ch 234 ".fc[0:57]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 32 35 34
		f 4 3 4 5 6
		mu 0 4 4 16 15 13
		f 4 7 8 9 10
		mu 0 4 6 12 11 9
		f 4 11 12 -10 13
		mu 0 4 10 7 9 11
		f 3 14 -14 15
		mu 0 3 8 10 11
		f 4 16 17 -16 -9
		mu 0 4 12 1 8 11
		f 4 18 19 -6 20
		mu 0 4 14 5 13 15
		f 4 -13 21 -21 22
		mu 0 4 9 7 14 15
		f 4 23 -11 -23 -5
		mu 0 4 16 6 9 15
		f 4 24 25 26 27
		mu 0 4 17 22 21 19
		f 4 28 29 -27 30
		mu 0 4 20 18 19 21
		f 4 -20 31 -31 32
		mu 0 4 13 5 20 21
		f 4 33 -7 -33 -26
		mu 0 4 22 4 13 21
		f 4 34 35 36 37
		mu 0 4 26 23 30 29
		f 6 -30 38 39 40 41 42
		mu 0 6 19 18 3 24 27 25
		f 3 43 -38 44
		mu 0 3 28 26 29
		f 4 45 -45 46 -41
		mu 0 4 24 28 29 27
		f 4 47 -42 -47 -37
		mu 0 4 30 25 27 29
		f 6 48 49 -28 -43 50 51
		mu 0 6 31 2 17 19 25 33
		f 5 52 -3 53 -36 54
		mu 0 5 0 32 34 30 23
		f 4 55 -51 -48 -54
		mu 0 4 34 33 25 30
		f 4 56 -52 -56 -2
		mu 0 4 35 31 33 34
		f 3 57 58 59
		mu 0 3 36 37 38
		f 5 60 61 62 63 64
		mu 0 5 39 40 41 42 43
		f 4 65 66 67 68
		mu 0 4 44 45 46 47
		f 4 69 70 71 72
		mu 0 4 48 49 50 51
		f 3 73 74 75
		mu 0 3 52 53 54
		f 4 76 -73 77 -75
		mu 0 4 53 48 51 54
		f 5 78 79 80 81 82
		mu 0 5 55 56 57 58 59
		f 4 83 -76 84 -82
		mu 0 4 58 52 54 59
		f 4 -72 85 -68 86
		mu 0 4 51 50 47 46
		f 4 -85 -78 -87 87
		mu 0 4 59 54 51 46
		f 4 88 -83 -88 -67
		mu 0 4 45 55 59 46
		f 3 89 90 91
		mu 0 3 60 61 62
		f 5 -71 92 93 94 95
		mu 0 5 50 49 63 64 65
		f 4 96 -92 97 -95
		mu 0 4 64 60 62 65
		f 4 98 -69 99 100
		mu 0 4 66 44 47 67
		f 4 -86 -96 101 -100
		mu 0 4 47 50 65 67
		f 4 -91 102 -64 103
		mu 0 4 62 61 43 42
		f 4 -102 -98 -104 104
		mu 0 4 67 65 62 42
		f 4 105 -101 -105 -63
		mu 0 4 41 66 67 42
		f 4 106 107 108 109
		mu 0 4 68 69 70 71
		f 4 -66 110 111 112
		mu 0 4 45 44 72 73
		f 4 113 -79 114 115
		mu 0 4 74 56 55 75
		f 4 -89 -113 116 -115
		mu 0 4 55 45 73 75
		f 3 117 118 119
		mu 0 3 76 77 78
		f 4 120 -116 121 -119
		mu 0 4 77 74 75 78
		f 4 -112 122 -109 123
		mu 0 4 73 72 71 70
		f 4 -122 -117 -124 124
		mu 0 4 78 75 73 70
		f 4 125 -120 -125 -108
		mu 0 4 69 76 78 70
		f 4 126 127 128 -62
		mu 0 4 40 79 80 41
		f 4 129 -111 -99 130
		mu 0 4 81 72 44 66
		f 4 131 -131 -106 -129
		mu 0 4 80 81 66 41
		f 5 132 133 -110 134 135
		mu 0 5 82 83 68 71 84
		f 4 -123 -130 136 -135
		mu 0 4 71 72 81 84
		f 4 137 -60 138 -128
		mu 0 4 79 36 38 80
		f 4 139 -137 -132 -139
		mu 0 4 38 84 81 80
		f 4 140 -136 -140 -59
		mu 0 4 37 82 84 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode orientConstraint -n "C_pointer_PLY_orientConstraint1" -p "C_pointer_PLY";
	rename -uid "1BECC860-0000-2709-572B-B76800002EA1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "locator1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 -50.000000000000007 -5.4934553579246957e-31 ;
	setAttr ".o" -type "double3" 0 180 0 ;
	setAttr ".rsrr" -type "double3" 0 180 0 ;
	setAttr -k on ".w0";
createNode transform -n "C_scale_PLY" -p "C_speedometer_GRP";
	rename -uid "1BECC860-0000-2709-572B-B6A700002E14";
createNode mesh -n "C_scale_PLYShape" -p "C_scale_PLY";
	rename -uid "1BECC860-0000-2709-572B-B6A700002E13";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1236]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2407 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 1 0 0 1 1 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.45452169 0.75 0.45452169 1 0.4090693 1 0.4090693
		 0.75 0.18182659 0.75 0.18182659 1 0.13635179 1 0.13635179 0.75 0.18182659 0.25 0.18182659
		 0.5 0.13635179 0.5 0.13635179 0.25 0.13635179 0 0.18182659 0 0.27275768 0.75 0.27275768
		 1 0.22729214 1 0.22729214 0.75 0.27275768 0.25 0.27275768 0.5 0.22729214 0.5 0.22729214
		 0.25 0.22729214 0 0.27275768 0 0.45452169 0.25 0.45452169 0.5 0.4090693 0.5 0.4090693
		 0.25 0.36361694 0.25 0.36361694 0.5 0.3181873 0.5 0.3181873 0.25 0.3181873 0 0.36361694
		 0 0.4090693 0 0.45452169 0 0.36361694 1 0.3181873 1 0.3181873 0.75 0.36361694 0.75
		 0.72724235 0.75 0.72724235 1 0.6818127 1 0.6818127 0.75 0.54547834 0.75 0.54547834
		 1 0.5 1 0.5 0.75 0.54547834 0.25 0.54547834 0.5 0.5 0.5 0.5 0.25 0.5 0 0.54547834
		 0 0.72724235 0.25 0.72724235 0.5 0.6818127 0.5 0.6818127 0.25 0.63638306 0.25 0.63638306
		 0.5 0.5909307 0.5 0.5909307 0.25 0.5909307 0 0.63638306 0 0.6818127 0 0.72724235
		 0 0.63638306 1 0.5909307 1 0.5909307 0.75 0.63638306 0.75 0.81817341 0.75 0.81817341
		 1 0.77270788 1 0.77270788 0.75 0.81817341 0.25 0.81817341 0.5 0.77270788 0.5 0.77270788
		 0.25 0.77270788 0 0.81817341 0 0.86364818 0.5 0.86364818 0.25 0.86364818 0 0.86364818
		 1 0.86364818 0.75 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159
		 0.2857143 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143
		 0.25 0.2857143 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662
		 0.5 0.13333334 0.41371468 0.14285715 0.40625 0.14285715 0.40625 0.071428575 0.11450716
		 0.14285715 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715 0.40625 0.0052421666
		 0.5 0 0.5625 0.0022524802 0.29319084 0.21428572 0.25 0.21428572 0.032668434 0.2857143
		 0.40625 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143 0.75 0.045756251
		 0.88549286 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529 0.14285715 0.75
		 0.21428572 0.74925715 0.2857143 0.70680916 0.21428572 0.65625 0.17126311 0.99685395
		 0.5714286 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533 0.5714286
		 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469
		 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715
		 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714
		 0.40625 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716 0.85714287
		 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714
		 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369
		 0.70680916 0.78571427 0.58628529 0.85714287 0.75 0.85714287 0.87500691 0.85714287
		 0.89717221 0.87307638 0.75 0.94665247 0.6378535 0.2857143 0.5 0.40220931 0.5 0.2857143
		 0.4703798 0.42857143 0.25 0.42857143 0.25 0.39838514 0.37600353 0.2857143 0.5 0.13329411
		 0.25 0.13329411 0.25 0 0.5 1.3721095e-16 0 0.13329411 0.087403595 0 0.5 0.18292211
		 0.21911818 0.42857143 0.75 1.3721095e-16 1 2.7442189e-16 0.81716126 0.14285715 0.75
		 0.14285715 0.56041133 0.13329411 0.54884124 0.14285715 0.75 0.19568296 0.32716769
		 0.5714286 0.25843644 0.71170092 0.25846994 0.71428573 0.25 0.71428573 0.25 0.5714286
		 0.097977638 0.5714286 0.045079373 0.71428573;
	setAttr ".uvst[0].uvsp[250:499]" 0.41472873 0.85714287 0.48571792 0.86511141
		 0.5 0.86481363 0.5 0.99945045 0.471596 1 0.25 0.96147525 0.25 0.85714287 0.375 0.85714287
		 0.375 0.84512794 0.097718574 0.85714287 0.044896383 0.72277224 0.25 0.78571427 0.28739142
		 0.78571427 0.75 0.77547354 0.75578403 0.77143961 0.56150132 0.85714287 0.88549286
		 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143 0.99685395 0.42857143
		 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143
		 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715
		 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25
		 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084
		 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566
		 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715
		 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572 0.74925715 0.2857143 0.70680916
		 0.21428572 0.65625 0.17126311 0.99685395 0.5714286 0.96733159 0.71428573 0.75 0.71428573
		 0.75 0.71242499 0.77894533 0.5714286 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499
		 0 0.5 0.21875 0.5 0.22105469 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573
		 1 0.5 0.78125 0.5 0.74925715 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783
		 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.85521936 0.41371468 0.85714287 0.40625
		 0.85714287 0.11450716 0.85714287 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427
		 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625
		 0.85714287 0.65625 0.8287369 0.70680916 0.78571427 0.58628529 0.85714287 0.83009708
		 0.85714287 0.83009708 1 0.75 1 0.75 0.85714287 0.98002774 0.2857143 1 0.31999999
		 0.83009708 0.31999999 0.83009708 0.42857143 0.75 0.42857143 0.75 0.2857143 0.5 0.2857143
		 0.5 0.31999999 0.26213592 0.31999999 0.36263195 0.42857143 0.25 0.42857143 0.25 0.2857143
		 0.25 0.18666667 0.5 0.18666667 0 0.27666667 2.0452896e-16 0.18666667 0.0084400186
		 0.2857143 0.14170347 0.42857143 0.75 0 0.83009708 0 0.83009708 0.14285715 0.75 0.14285715
		 0.62621361 0.14285715 0.62621361 0 0.83009708 0.18666667 0.92233008 0.18666667 0.62621361
		 0.18666667 0.62621361 0.42857143 0.62621361 0.31999999 0.83009708 0.5714286 0.83009708
		 0.7492857 0.75 0.7492857 0.75 0.5714286 0.5 0.7492857 0.44087991 0.7492857 0.27496693
		 0.5714286 0.49486354 0.5714286 0.5 0.57697779 0.25 0.54466426 0.62621361 0.5714286
		 0.62621361 0.71333331 0.5 0.81266189 0.54149383 0.85714287 0.6747573 1 0.88549286
		 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143 0.99685395 0.42857143
		 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143
		 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715
		 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25
		 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084
		 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566
		 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715
		 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572 0.74925715 0.2857143 0.70680916
		 0.21428572 0.65625 0.17126311 0.99685395 0.5714286 0.96733159 0.71428573 0.75 0.71428573
		 0.75 0.71242499 0.77894533 0.5714286 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499
		 0 0.5 0.21875 0.5 0.22105469 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573
		 1 0.5 0.78125 0.5 0.74925715 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783
		 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.85521936 0.41371468 0.85714287 0.40625
		 0.85714287 0.11450716 0.85714287 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427
		 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625
		 0.85714287 0.65625 0.8287369 0.70680916 0.78571427 0.58628529 0.85714287 0.56129307
		 0.85714287 0.43760574 0.9724195 0.43760574 0.85714287 0.99785519 0.2857143 1 0.31320095
		 0.96890265 0.42857143 0.75 0.42857143 0.75 0.38964993 0.77915734 0.31036714 0.77651936
		 0.2857143 0.25 0.38928995 0.29201439 0.42857143 0.25 0.42857143 0.25 0.042820442
		 0.43760574 0.0024247344 0.43760574 0.13815494 0.41084713 0.14285715 0.34380287 0.14285715
		 0.25 0.14285715 0.081701666 0.14285715 0.26536253 0.21428572 0.25 0.2314443 0.25
		 0.21428572 0.0023770069 0.2857143 0.22376263 0.2857143 0.34380287 0.1636675 0.031652223
		 0.42857143 0 0.31681794 0.22112469 0.31036714 0.125 0.42857143 0.75 0.04268175 0.91882479
		 0.14285715 0.75 0.14285715 0.49884459 0;
	setAttr ".uvst[0].uvsp[500:749]" 0.59380287 0.14285715 0.58943486 0.14285715
		 0.50014102 0.13379447 0.75 0.23108435 0.75 0.21428572 0.73491949 0.21428572 0.59380287
		 0.14380112 0.70826763 0.42857143 0.86638081 0.5714286 0.75 0.68216264 0.75 0.5714286
		 0.43760574 0.6315068 0.25 0.59121436 0.25 0.5714286 0.43760574 0.5714286 0.43760574
		 0.48257932 0.43760574 0.5 0.25 0.5 0.2020857 0.5714286 0.125 0.52701169 0.125 0.5
		 0.091134116 0.5 0.75 0.5 0.59380287 0.5714286 0.59380287 0.5 0.59380287 0.47693315
		 0.50014102 0.48693979 0.44568476 0.71428573 0.53172773 0.63186264 0.49685177 0.63359904
		 0.71493089 0.71428573 0.40801299 1 0.25 1 0.25 0.90173781 0.29655352 0.85714287 0.43760574
		 0.72202486 0.14742227 1 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159
		 0.2857143 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143
		 0.25 0.2857143 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662
		 0.5 0.13333334 0.41371468 0.14285715 0.40625 0.14285715 0.40625 0.071428575 0.11450716
		 0.14285715 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715 0.40625 0.0052421666
		 0.5 0 0.5625 0.0022524802 0.29319084 0.21428572 0.25 0.21428572 0.032668434 0.2857143
		 0.40625 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143 0.75 0.045756251
		 0.88549286 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529 0.14285715 0.75
		 0.21428572 0.74925715 0.2857143 0.70680916 0.21428572 0.65625 0.17126311 0.99685395
		 0.5714286 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533 0.5714286
		 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469
		 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715
		 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714
		 0.40625 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716 0.85714287
		 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714
		 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369
		 0.70680916 0.78571427 0.58628529 0.85714287 0.87679565 0.85714287 0.75 0.94980335
		 0.75 0.85714287 0.99967217 0.2857143 1 0.29666665 0.94775474 0.42857143 0.75 0.42857143
		 0.75 0.36070278 0.77173913 0.29666665 0.77113867 0.2857143 0.25 0.36070278 0.34020728
		 0.42857143 0.25 0.42857143 0.25 0.03983989 0.5 0 0.5625 0.0023314594 0.5625 0.13774502
		 0.5 0.13333334 0.40892664 0.14285715 0.40625 0.14285715 0.25 0.14285715 0.072039627
		 0.14285715 0.26544216 0.21428572 0.25 0.23263054 0.25 0.21428572 0.00032783046 0.2857143
		 0.22886136 0.2857143 0.40625 0.1434439 0.052245285 0.42857143 0 0.29666665 0.22826087
		 0.29666665 0.75 0.03983989 0.9279604 0.14285715 0.75 0.14285715 0.65625 0.14285715
		 0.59107333 0.14285715 0.75 0.23263054 0.75 0.21428572 0.73455787 0.21428572 0.65625
		 0.16323505 0.65979272 0.42857143 0.88228881 0.64285713 0.91514766 0.71428573 0.875
		 0.71428573 0.875 0.64285713 0.31672284 0.71428573 0.25 0.71428573 0.25 0.64285713
		 0.40372476 0.64285713 0.5 0.46000001 0.5625 0.45558831 0.5625 0.5714286 0.40625 0.5714286
		 0.25 0.5714286 0.19863549 0.5714286 0.23913044 0.55000001 0.125 0.71428573 0.125
		 0.64285713 0.125 0.63353026 0.11771119 0.64285713 0.084852353 0.71428573 0.5625 0.63312984
		 0.5 0.62666667 0.40625 0.64194524 0.76086956 0.55000001 0.80136448 0.5714286 0.75
		 0.5714286 0.65625 0.5714286 0.75 0.71428573 0.68327713 0.71428573 0.65625 0.67787498
		 0.65625 0.64285713 0.75 0.64285713 0.59627527 0.64285713 0.875 0.63353026 0.5625
		 0.99717671 0.5 1 0.40625 0.9935866 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.8513881
		 0.42481166 0.85714287 0.40625 0.85714287 0.12320434 0.85714287 0.081521742 0.74666667
		 0.25 0.78571427 0.25 0.85714287 0.30978259 0.74666667 0.31997854 0.78571427 0.25
		 0.94980335 0.25 0.9285714 0.5 0.86666667 0.5625 0.86020344 0.91847825 0.74666667
		 0.75 0.78571427 0.65625 0.85714287 0.65625 0.81545836 0.68002146 0.78571427 0.69021738
		 0.74666667 0.57518834 0.85714287 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287
		 0.96733159 0.2857143 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501
		 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575
		 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715 0.40625 0.14285715 0.40625
		 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715
		 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084 0.21428572 0.25 0.21428572
		 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143
		 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529
		 0.14285715 0.75 0.21428572 0.74925715 0.2857143;
	setAttr ".uvst[0].uvsp[750:999]" 0.70680916 0.21428572 0.65625 0.17126311 0.99685395
		 0.5714286 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533 0.5714286
		 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469
		 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715
		 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714
		 0.40625 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716 0.85714287
		 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714
		 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369
		 0.70680916 0.78571427 0.58628529 0.85714287 0.5 0.875 0.63780171 0.875 0.5 0.92449319
		 0.5 0.375 0.57534248 0.375 0.57534248 0.5 0.5 0.5 0.5 0.125 0.57534248 0.125 0.57534248
		 0.25 0.5 0.25 0.5 0 0.57534248 0 4.2545875e-16 0.125 4.2545875e-16 0 4.2545875e-16
		 0.25 4.2545875e-16 0.375 0 0.5 0.5 0.625 0.57534248 0.625 0.57534248 0.73333335 1
		 0.65166664 1 0.75 0.5 0.75 0 0.625 0 0.75 1 0.78666669 0 0.875 0.3561644 1 0 1 0.88549286
		 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143 0.99685395 0.42857143
		 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143
		 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715
		 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25
		 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084
		 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566
		 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715
		 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572 0.74925715 0.2857143 0.70680916
		 0.21428572 0.65625 0.17126311 0.99685395 0.5714286 0.96733159 0.71428573 0.75 0.71428573
		 0.75 0.71242499 0.77894533 0.5714286 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499
		 0 0.5 0.21875 0.5 0.22105469 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573
		 1 0.5 0.78125 0.5 0.74925715 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783
		 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.85521936 0.41371468 0.85714287 0.40625
		 0.85714287 0.11450716 0.85714287 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427
		 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625
		 0.85714287 0.65625 0.8287369 0.70680916 0.78571427 0.58628529 0.85714287 0.88549286
		 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143 0.99685395 0.42857143
		 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143
		 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715
		 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25
		 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084
		 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566
		 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715
		 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572 0.74925715 0.2857143 0.70680916
		 0.21428572 0.65625 0.17126311 0.99685395 0.5714286 0.96733159 0.71428573 0.75 0.71428573
		 0.75 0.71242499 0.77894533 0.5714286 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499
		 0 0.5 0.21875 0.5 0.22105469 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573
		 1 0.5 0.78125 0.5 0.74925715 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783
		 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.85521936 0.41371468 0.85714287 0.40625
		 0.85714287 0.11450716 0.85714287 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427
		 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625
		 0.85714287 0.65625 0.8287369 0.70680916 0.78571427 0.58628529 0.85714287 0.5 0.875
		 0.63780171 0.875 0.5 0.92449319 0.5 0.375 0.57534248 0.375 0.57534248 0.5 0.5 0.5
		 0.5 0.125 0.57534248 0.125 0.57534248 0.25 0.5 0.25 0.5 0 0.57534248 0 4.2545875e-16
		 0.125 4.2545875e-16 0 4.2545875e-16 0.25 4.2545875e-16 0.375 0 0.5 0.5 0.625 0.57534248
		 0.625 0.57534248 0.73333335 1 0.65166664 1 0.75 0.5 0.75 0 0.625 0 0.75 1 0.78666669
		 0 0.875 0.3561644 1;
	setAttr ".uvst[0].uvsp[1000:1249]" 0 1 0.75 0.85714287 0.87500691 0.85714287
		 0.89717221 0.87307638 0.75 0.94665247 0.6378535 0.2857143 0.5 0.40220931 0.5 0.2857143
		 0.4703798 0.42857143 0.25 0.42857143 0.25 0.39838514 0.37600353 0.2857143 0.5 0.13329411
		 0.25 0.13329411 0.25 0 0.5 1.3721095e-16 0 0.13329411 0.087403595 0 0.5 0.18292211
		 0.21911818 0.42857143 0.75 1.3721095e-16 1 2.7442189e-16 0.81716126 0.14285715 0.75
		 0.14285715 0.56041133 0.13329411 0.54884124 0.14285715 0.75 0.19568296 0.32716769
		 0.5714286 0.25843644 0.71170092 0.25846994 0.71428573 0.25 0.71428573 0.25 0.5714286
		 0.097977638 0.5714286 0.045079373 0.71428573 0.41472873 0.85714287 0.48571792 0.86511141
		 0.5 0.86481363 0.5 0.99945045 0.471596 1 0.25 0.96147525 0.25 0.85714287 0.375 0.85714287
		 0.375 0.84512794 0.097718574 0.85714287 0.044896383 0.72277224 0.25 0.78571427 0.28739142
		 0.78571427 0.75 0.77547354 0.75578403 0.77143961 0.56150132 0.85714287 0.88549286
		 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143 0.99685395 0.42857143
		 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143
		 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715
		 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25
		 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084
		 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566
		 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715
		 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572 0.74925715 0.2857143 0.70680916
		 0.21428572 0.65625 0.17126311 0.99685395 0.5714286 0.96733159 0.71428573 0.75 0.71428573
		 0.75 0.71242499 0.77894533 0.5714286 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499
		 0 0.5 0.21875 0.5 0.22105469 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573
		 1 0.5 0.78125 0.5 0.74925715 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783
		 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.85521936 0.41371468 0.85714287 0.40625
		 0.85714287 0.11450716 0.85714287 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427
		 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625
		 0.85714287 0.65625 0.8287369 0.70680916 0.78571427 0.58628529 0.85714287 0.5 0.875
		 0.63780171 0.875 0.5 0.92449319 0.5 0.375 0.57534248 0.375 0.57534248 0.5 0.5 0.5
		 0.5 0.125 0.57534248 0.125 0.57534248 0.25 0.5 0.25 0.5 0 0.57534248 0 4.2545875e-16
		 0.125 4.2545875e-16 0 4.2545875e-16 0.25 4.2545875e-16 0.375 0 0.5 0.5 0.625 0.57534248
		 0.625 0.57534248 0.73333335 1 0.65166664 1 0.75 0.5 0.75 0 0.625 0 0.75 1 0.78666669
		 0 0.875 0.3561644 1 0 1 0.83009708 0.85714287 0.83009708 1 0.75 1 0.75 0.85714287
		 0.98002774 0.2857143 1 0.31999999 0.83009708 0.31999999 0.83009708 0.42857143 0.75
		 0.42857143 0.75 0.2857143 0.5 0.2857143 0.5 0.31999999 0.26213592 0.31999999 0.36263195
		 0.42857143 0.25 0.42857143 0.25 0.2857143 0.25 0.18666667 0.5 0.18666667 0 0.27666667
		 2.0452896e-16 0.18666667 0.0084400186 0.2857143 0.14170347 0.42857143 0.75 0 0.83009708
		 0 0.83009708 0.14285715 0.75 0.14285715 0.62621361 0.14285715 0.62621361 0 0.83009708
		 0.18666667 0.92233008 0.18666667 0.62621361 0.18666667 0.62621361 0.42857143 0.62621361
		 0.31999999 0.83009708 0.5714286 0.83009708 0.7492857 0.75 0.7492857 0.75 0.5714286
		 0.5 0.7492857 0.44087991 0.7492857 0.27496693 0.5714286 0.49486354 0.5714286 0.5
		 0.57697779 0.25 0.54466426 0.62621361 0.5714286 0.62621361 0.71333331 0.5 0.81266189
		 0.54149383 0.85714287 0.6747573 1 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287
		 0.96733159 0.2857143 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501
		 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575
		 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715 0.40625 0.14285715 0.40625
		 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715
		 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084 0.21428572 0.25 0.21428572
		 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143
		 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529
		 0.14285715 0.75 0.21428572 0.74925715 0.2857143 0.70680916 0.21428572 0.65625 0.17126311
		 0.99685395 0.5714286 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533
		 0.5714286 0.25074288 0.71428573 0.25 0.71428573;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469
		 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715
		 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714
		 0.40625 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716 0.85714287
		 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714
		 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369
		 0.70680916 0.78571427 0.58628529 0.85714287 0.5 0.875 0.63780171 0.875 0.5 0.92449319
		 0.5 0.375 0.57534248 0.375 0.57534248 0.5 0.5 0.5 0.5 0.125 0.57534248 0.125 0.57534248
		 0.25 0.5 0.25 0.5 0 0.57534248 0 4.2545875e-16 0.125 4.2545875e-16 0 4.2545875e-16
		 0.25 4.2545875e-16 0.375 0 0.5 0.5 0.625 0.57534248 0.625 0.57534248 0.73333335 1
		 0.65166664 1 0.75 0.5 0.75 0 0.625 0 0.75 1 0.78666669 0 0.875 0.3561644 1 0 1 0.56129307
		 0.85714287 0.43760574 0.9724195 0.43760574 0.85714287 0.99785519 0.2857143 1 0.31320095
		 0.96890265 0.42857143 0.75 0.42857143 0.75 0.38964993 0.77915734 0.31036714 0.77651936
		 0.2857143 0.25 0.38928995 0.29201439 0.42857143 0.25 0.42857143 0.25 0.042820442
		 0.43760574 0.0024247344 0.43760574 0.13815494 0.41084713 0.14285715 0.34380287 0.14285715
		 0.25 0.14285715 0.081701666 0.14285715 0.26536253 0.21428572 0.25 0.2314443 0.25
		 0.21428572 0.0023770069 0.2857143 0.22376263 0.2857143 0.34380287 0.1636675 0.031652223
		 0.42857143 0 0.31681794 0.22112469 0.31036714 0.125 0.42857143 0.75 0.04268175 0.91882479
		 0.14285715 0.75 0.14285715 0.49884459 0 0.59380287 0.14285715 0.58943486 0.14285715
		 0.50014102 0.13379447 0.75 0.23108435 0.75 0.21428572 0.73491949 0.21428572 0.59380287
		 0.14380112 0.70826763 0.42857143 0.86638081 0.5714286 0.75 0.68216264 0.75 0.5714286
		 0.43760574 0.6315068 0.25 0.59121436 0.25 0.5714286 0.43760574 0.5714286 0.43760574
		 0.48257932 0.43760574 0.5 0.25 0.5 0.2020857 0.5714286 0.125 0.52701169 0.125 0.5
		 0.091134116 0.5 0.75 0.5 0.59380287 0.5714286 0.59380287 0.5 0.59380287 0.47693315
		 0.50014102 0.48693979 0.44568476 0.71428573 0.53172773 0.63186264 0.49685177 0.63359904
		 0.71493089 0.71428573 0.40801299 1 0.25 1 0.25 0.90173781 0.29655352 0.85714287 0.43760574
		 0.72202486 0.14742227 1 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159
		 0.2857143 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143
		 0.25 0.2857143 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662
		 0.5 0.13333334 0.41371468 0.14285715 0.40625 0.14285715 0.40625 0.071428575 0.11450716
		 0.14285715 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715 0.40625 0.0052421666
		 0.5 0 0.5625 0.0022524802 0.29319084 0.21428572 0.25 0.21428572 0.032668434 0.2857143
		 0.40625 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143 0.75 0.045756251
		 0.88549286 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529 0.14285715 0.75
		 0.21428572 0.74925715 0.2857143 0.70680916 0.21428572 0.65625 0.17126311 0.99685395
		 0.5714286 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533 0.5714286
		 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469
		 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715
		 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714
		 0.40625 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716 0.85714287
		 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714
		 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369
		 0.70680916 0.78571427 0.58628529 0.85714287 0.5 0.875 0.63780171 0.875 0.5 0.92449319
		 0.5 0.375 0.57534248 0.375 0.57534248 0.5 0.5 0.5 0.5 0.125 0.57534248 0.125 0.57534248
		 0.25 0.5 0.25 0.5 0 0.57534248 0 4.2545875e-16 0.125 4.2545875e-16 0 4.2545875e-16
		 0.25 4.2545875e-16 0.375 0 0.5 0.5 0.625 0.57534248 0.625 0.57534248 0.73333335 1
		 0.65166664 1 0.75 0.5 0.75 0 0.625 0 0.75 1 0.78666669 0 0.875 0.3561644 1 0 1 0.87679565
		 0.85714287 0.75 0.94980335 0.75 0.85714287 0.99967217 0.2857143 1 0.29666665 0.94775474
		 0.42857143 0.75 0.42857143 0.75 0.36070278 0.77173913 0.29666665 0.77113867 0.2857143
		 0.25 0.36070278 0.34020728 0.42857143 0.25 0.42857143;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.25 0.03983989 0.5 0 0.5625 0.0023314594
		 0.5625 0.13774502 0.5 0.13333334 0.40892664 0.14285715 0.40625 0.14285715 0.25 0.14285715
		 0.072039627 0.14285715 0.26544216 0.21428572 0.25 0.23263054 0.25 0.21428572 0.00032783046
		 0.2857143 0.22886136 0.2857143 0.40625 0.1434439 0.052245285 0.42857143 0 0.29666665
		 0.22826087 0.29666665 0.75 0.03983989 0.9279604 0.14285715 0.75 0.14285715 0.65625
		 0.14285715 0.59107333 0.14285715 0.75 0.23263054 0.75 0.21428572 0.73455787 0.21428572
		 0.65625 0.16323505 0.65979272 0.42857143 0.88228881 0.64285713 0.91514766 0.71428573
		 0.875 0.71428573 0.875 0.64285713 0.31672284 0.71428573 0.25 0.71428573 0.25 0.64285713
		 0.40372476 0.64285713 0.5 0.46000001 0.5625 0.45558831 0.5625 0.5714286 0.40625 0.5714286
		 0.25 0.5714286 0.19863549 0.5714286 0.23913044 0.55000001 0.125 0.71428573 0.125
		 0.64285713 0.125 0.63353026 0.11771119 0.64285713 0.084852353 0.71428573 0.5625 0.63312984
		 0.5 0.62666667 0.40625 0.64194524 0.76086956 0.55000001 0.80136448 0.5714286 0.75
		 0.5714286 0.65625 0.5714286 0.75 0.71428573 0.68327713 0.71428573 0.65625 0.67787498
		 0.65625 0.64285713 0.75 0.64285713 0.59627527 0.64285713 0.875 0.63353026 0.5625
		 0.99717671 0.5 1 0.40625 0.9935866 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.8513881
		 0.42481166 0.85714287 0.40625 0.85714287 0.12320434 0.85714287 0.081521742 0.74666667
		 0.25 0.78571427 0.25 0.85714287 0.30978259 0.74666667 0.31997854 0.78571427 0.25
		 0.94980335 0.25 0.9285714 0.5 0.86666667 0.5625 0.86020344 0.91847825 0.74666667
		 0.75 0.78571427 0.65625 0.85714287 0.65625 0.81545836 0.68002146 0.78571427 0.69021738
		 0.74666667 0.57518834 0.85714287 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287
		 0.96733159 0.2857143 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501
		 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575
		 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715 0.40625 0.14285715 0.40625
		 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715
		 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084 0.21428572 0.25 0.21428572
		 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143
		 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529
		 0.14285715 0.75 0.21428572 0.74925715 0.2857143 0.70680916 0.21428572 0.65625 0.17126311
		 0.99685395 0.5714286 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533
		 0.5714286 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5
		 0.22105469 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125
		 0.5 0.74925715 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714
		 0.5625 0.9285714 0.40625 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716
		 0.85714287 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378
		 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287
		 0.65625 0.8287369 0.70680916 0.78571427 0.58628529 0.85714287 0.75 0.85714287 0.87500691
		 0.85714287 0.89717221 0.87307638 0.75 0.94665247 0.6378535 0.2857143 0.5 0.40220931
		 0.5 0.2857143 0.4703798 0.42857143 0.25 0.42857143 0.25 0.39838514 0.37600353 0.2857143
		 0.5 0.13329411 0.25 0.13329411 0.25 0 0.5 1.3721095e-16 0 0.13329411 0.087403595
		 0 0.5 0.18292211 0.21911818 0.42857143 0.75 1.3721095e-16 1 2.7442189e-16 0.81716126
		 0.14285715 0.75 0.14285715 0.56041133 0.13329411 0.54884124 0.14285715 0.75 0.19568296
		 0.32716769 0.5714286 0.25843644 0.71170092 0.25846994 0.71428573 0.25 0.71428573
		 0.25 0.5714286 0.097977638 0.5714286 0.045079373 0.71428573 0.41472873 0.85714287
		 0.48571792 0.86511141 0.5 0.86481363 0.5 0.99945045 0.471596 1 0.25 0.96147525 0.25
		 0.85714287 0.375 0.85714287 0.375 0.84512794 0.097718574 0.85714287 0.044896383 0.72277224
		 0.25 0.78571427 0.28739142 0.78571427 0.75 0.77547354 0.75578403 0.77143961 0.56150132
		 0.85714287 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143
		 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143
		 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334
		 0.41371468 0.14285715 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715
		 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625
		 0.0022524802 0.29319084 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625
		 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286
		 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572
		 0.74925715 0.2857143 0.70680916 0.21428572;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.65625 0.17126311 0.99685395 0.5714286 0.96733159
		 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533 0.5714286 0.25074288 0.71428573
		 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469 0.5714286 0.0031460566
		 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715 0.71428573 0.5625 0.99774754
		 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.85521936 0.41371468
		 0.85714287 0.40625 0.85714287 0.11450716 0.85714287 0.25 0.78571427 0.25 0.85714287
		 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341
		 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369 0.70680916 0.78571427 0.58628529
		 0.85714287 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143
		 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143
		 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334
		 0.41371468 0.14285715 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715
		 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625
		 0.0022524802 0.29319084 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625
		 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286
		 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572
		 0.74925715 0.2857143 0.70680916 0.21428572 0.65625 0.17126311 0.99685395 0.5714286
		 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533 0.5714286 0.25074288
		 0.71428573 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469 0.5714286
		 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715 0.71428573
		 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714 0.40625
		 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716 0.85714287 0.25 0.78571427
		 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667
		 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369 0.70680916
		 0.78571427 0.58628529 0.85714287 0.75 0.85714287 0.87500691 0.85714287 0.89717221
		 0.87307638 0.75 0.94665247 0.6378535 0.2857143 0.5 0.40220931 0.5 0.2857143 0.4703798
		 0.42857143 0.25 0.42857143 0.25 0.39838514 0.37600353 0.2857143 0.5 0.13329411 0.25
		 0.13329411 0.25 0 0.5 1.3721095e-16 0 0.13329411 0.087403595 0 0.5 0.18292211 0.21911818
		 0.42857143 0.75 1.3721095e-16 1 2.7442189e-16 0.81716126 0.14285715 0.75 0.14285715
		 0.56041133 0.13329411 0.54884124 0.14285715 0.75 0.19568296 0.32716769 0.5714286
		 0.25843644 0.71170092 0.25846994 0.71428573 0.25 0.71428573 0.25 0.5714286 0.097977638
		 0.5714286 0.045079373 0.71428573 0.41472873 0.85714287 0.48571792 0.86511141 0.5
		 0.86481363 0.5 0.99945045 0.471596 1 0.25 0.96147525 0.25 0.85714287 0.375 0.85714287
		 0.375 0.84512794 0.097718574 0.85714287 0.044896383 0.72277224 0.25 0.78571427 0.28739142
		 0.78571427 0.75 0.77547354 0.75578403 0.77143961 0.56150132 0.85714287 0.75 0.85714287
		 0.87500691 0.85714287 0.89717221 0.87307638 0.75 0.94665247 0.6378535 0.2857143 0.5
		 0.40220931 0.5 0.2857143 0.4703798 0.42857143 0.25 0.42857143 0.25 0.39838514 0.37600353
		 0.2857143 0.5 0.13329411 0.25 0.13329411 0.25 0 0.5 1.3721095e-16 0 0.13329411 0.087403595
		 0 0.5 0.18292211 0.21911818 0.42857143 0.75 1.3721095e-16 1 2.7442189e-16 0.81716126
		 0.14285715 0.75 0.14285715 0.56041133 0.13329411 0.54884124 0.14285715 0.75 0.19568296
		 0.32716769 0.5714286 0.25843644 0.71170092 0.25846994 0.71428573 0.25 0.71428573
		 0.25 0.5714286 0.097977638 0.5714286 0.045079373 0.71428573 0.41472873 0.85714287
		 0.48571792 0.86511141 0.5 0.86481363 0.5 0.99945045 0.471596 1 0.25 0.96147525 0.25
		 0.85714287 0.375 0.85714287 0.375 0.84512794 0.097718574 0.85714287 0.044896383 0.72277224
		 0.25 0.78571427 0.28739142 0.78571427 0.75 0.77547354 0.75578403 0.77143961 0.56150132
		 0.85714287 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143
		 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143
		 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334
		 0.41371468 0.14285715 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715
		 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625
		 0.0022524802 0.29319084 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625
		 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286
		 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572
		 0.74925715 0.2857143 0.70680916 0.21428572;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.65625 0.17126311 0.99685395 0.5714286 0.96733159
		 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533 0.5714286 0.25074288 0.71428573
		 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469 0.5714286 0.0031460566
		 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715 0.71428573 0.5625 0.99774754
		 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714 0.40625 0.85521936 0.41371468
		 0.85714287 0.40625 0.85714287 0.11450716 0.85714287 0.25 0.78571427 0.25 0.85714287
		 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341
		 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369 0.70680916 0.78571427 0.58628529
		 0.85714287 0.75 0.85714287 0.87500691 0.85714287 0.89717221 0.87307638 0.75 0.94665247
		 0.6378535 0.2857143 0.5 0.40220931 0.5 0.2857143 0.4703798 0.42857143 0.25 0.42857143
		 0.25 0.39838514 0.37600353 0.2857143 0.5 0.13329411 0.25 0.13329411 0.25 0 0.5 1.3721095e-16
		 0 0.13329411 0.087403595 0 0.5 0.18292211 0.21911818 0.42857143 0.75 1.3721095e-16
		 1 2.7442189e-16 0.81716126 0.14285715 0.75 0.14285715 0.56041133 0.13329411 0.54884124
		 0.14285715 0.75 0.19568296 0.32716769 0.5714286 0.25843644 0.71170092 0.25846994
		 0.71428573 0.25 0.71428573 0.25 0.5714286 0.097977638 0.5714286 0.045079373 0.71428573
		 0.41472873 0.85714287 0.48571792 0.86511141 0.5 0.86481363 0.5 0.99945045 0.471596
		 1 0.25 0.96147525 0.25 0.85714287 0.375 0.85714287 0.375 0.84512794 0.097718574 0.85714287
		 0.044896383 0.72277224 0.25 0.78571427 0.28739142 0.78571427 0.75 0.77547354 0.75578403
		 0.77143961 0.56150132 0.85714287 0.83009708 0.85714287 0.83009708 1 0.75 1 0.75 0.85714287
		 0.98002774 0.2857143 1 0.31999999 0.83009708 0.31999999 0.83009708 0.42857143 0.75
		 0.42857143 0.75 0.2857143 0.5 0.2857143 0.5 0.31999999 0.26213592 0.31999999 0.36263195
		 0.42857143 0.25 0.42857143 0.25 0.2857143 0.25 0.18666667 0.5 0.18666667 0 0.27666667
		 2.0452896e-16 0.18666667 0.0084400186 0.2857143 0.14170347 0.42857143 0.75 0 0.83009708
		 0 0.83009708 0.14285715 0.75 0.14285715 0.62621361 0.14285715 0.62621361 0 0.83009708
		 0.18666667 0.92233008 0.18666667 0.62621361 0.18666667 0.62621361 0.42857143 0.62621361
		 0.31999999 0.83009708 0.5714286 0.83009708 0.7492857 0.75 0.7492857 0.75 0.5714286
		 0.5 0.7492857 0.44087991 0.7492857 0.27496693 0.5714286 0.49486354 0.5714286 0.5
		 0.57697779 0.25 0.54466426 0.62621361 0.5714286 0.62621361 0.71333331 0.5 0.81266189
		 0.54149383 0.85714287 0.6747573 1 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287
		 0.96733159 0.2857143 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501
		 0.75 0.2857143 0.25 0.2857143 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575
		 0.5625 0.13806662 0.5 0.13333334 0.41371468 0.14285715 0.40625 0.14285715 0.40625
		 0.071428575 0.11450716 0.14285715 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715
		 0.40625 0.0052421666 0.5 0 0.5625 0.0022524802 0.29319084 0.21428572 0.25 0.21428572
		 0.032668434 0.2857143 0.40625 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143
		 0.75 0.045756251 0.88549286 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529
		 0.14285715 0.75 0.21428572 0.74925715 0.2857143 0.70680916 0.21428572 0.65625 0.17126311
		 0.99685395 0.5714286 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533
		 0.5714286 0.25074288 0.71428573 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5
		 0.22105469 0.5714286 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125
		 0.5 0.74925715 0.71428573 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714
		 0.5625 0.9285714 0.40625 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716
		 0.85714287 0.25 0.78571427 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378
		 0.25 0.9285714 0.5 0.86666667 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287
		 0.65625 0.8287369 0.70680916 0.78571427 0.58628529 0.85714287 0.75 0.85714287 0.87500691
		 0.85714287 0.89717221 0.87307638 0.75 0.94665247 0.6378535 0.2857143 0.5 0.40220931
		 0.5 0.2857143 0.4703798 0.42857143 0.25 0.42857143 0.25 0.39838514 0.37600353 0.2857143
		 0.5 0.13329411 0.25 0.13329411 0.25 0 0.5 1.3721095e-16 0 0.13329411 0.087403595
		 0 0.5 0.18292211 0.21911818 0.42857143 0.75 1.3721095e-16 1 2.7442189e-16 0.81716126
		 0.14285715 0.75 0.14285715 0.56041133 0.13329411 0.54884124 0.14285715 0.75 0.19568296
		 0.32716769 0.5714286 0.25843644 0.71170092 0.25846994 0.71428573 0.25 0.71428573
		 0.25 0.5714286 0.097977638 0.5714286 0.045079373 0.71428573 0.41472873 0.85714287
		 0.48571792 0.86511141 0.5 0.86481363 0.5 0.99945045 0.471596 1 0.25 0.96147525;
	setAttr ".uvst[0].uvsp[2250:2406]" 0.25 0.85714287 0.375 0.85714287 0.375 0.84512794
		 0.097718574 0.85714287 0.044896383 0.72277224 0.25 0.78571427 0.28739142 0.78571427
		 0.75 0.77547354 0.75578403 0.77143961 0.56150132 0.85714287 0.56129307 0.85714287
		 0.43760574 0.9724195 0.43760574 0.85714287 0.99785519 0.2857143 1 0.31320095 0.96890265
		 0.42857143 0.75 0.42857143 0.75 0.38964993 0.77915734 0.31036714 0.77651936 0.2857143
		 0.25 0.38928995 0.29201439 0.42857143 0.25 0.42857143 0.25 0.042820442 0.43760574
		 0.0024247344 0.43760574 0.13815494 0.41084713 0.14285715 0.34380287 0.14285715 0.25
		 0.14285715 0.081701666 0.14285715 0.26536253 0.21428572 0.25 0.2314443 0.25 0.21428572
		 0.0023770069 0.2857143 0.22376263 0.2857143 0.34380287 0.1636675 0.031652223 0.42857143
		 0 0.31681794 0.22112469 0.31036714 0.125 0.42857143 0.75 0.04268175 0.91882479 0.14285715
		 0.75 0.14285715 0.49884459 0 0.59380287 0.14285715 0.58943486 0.14285715 0.50014102
		 0.13379447 0.75 0.23108435 0.75 0.21428572 0.73491949 0.21428572 0.59380287 0.14380112
		 0.70826763 0.42857143 0.86638081 0.5714286 0.75 0.68216264 0.75 0.5714286 0.43760574
		 0.6315068 0.25 0.59121436 0.25 0.5714286 0.43760574 0.5714286 0.43760574 0.48257932
		 0.43760574 0.5 0.25 0.5 0.2020857 0.5714286 0.125 0.52701169 0.125 0.5 0.091134116
		 0.5 0.75 0.5 0.59380287 0.5714286 0.59380287 0.5 0.59380287 0.47693315 0.50014102
		 0.48693979 0.44568476 0.71428573 0.53172773 0.63186264 0.49685177 0.63359904 0.71493089
		 0.71428573 0.40801299 1 0.25 1 0.25 0.90173781 0.29655352 0.85714287 0.43760574 0.72202486
		 0.14742227 1 0.88549286 0.85714287 0.75 0.95424378 0.75 0.85714287 0.96733159 0.2857143
		 0.99685395 0.42857143 0.77894533 0.42857143 0.75 0.28757501 0.75 0.2857143 0.25 0.2857143
		 0.25074288 0.2857143 0.25 0.28757501 0.5625 0.071428575 0.5625 0.13806662 0.5 0.13333334
		 0.41371468 0.14285715 0.40625 0.14285715 0.40625 0.071428575 0.11450716 0.14285715
		 0.25 0.045756251 0.25 0.071428575 0.25 0.14285715 0.40625 0.0052421666 0.5 0 0.5625
		 0.0022524802 0.29319084 0.21428572 0.25 0.21428572 0.032668434 0.2857143 0.40625
		 0.14478065 0.0031460566 0.42857143 0.22105469 0.42857143 0.75 0.045756251 0.88549286
		 0.14285715 0.75 0.14285715 0.65625 0.14285715 0.58628529 0.14285715 0.75 0.21428572
		 0.74925715 0.2857143 0.70680916 0.21428572 0.65625 0.17126311 0.99685395 0.5714286
		 0.96733159 0.71428573 0.75 0.71428573 0.75 0.71242499 0.77894533 0.5714286 0.25074288
		 0.71428573 0.25 0.71428573 0.25 0.71242499 0 0.5 0.21875 0.5 0.22105469 0.5714286
		 0.0031460566 0.5714286 0.032668434 0.71428573 1 0.5 0.78125 0.5 0.74925715 0.71428573
		 0.5625 0.99774754 0.5 1 0.40625 0.99475783 0.40625 0.9285714 0.5625 0.9285714 0.40625
		 0.85521936 0.41371468 0.85714287 0.40625 0.85714287 0.11450716 0.85714287 0.25 0.78571427
		 0.25 0.85714287 0.29319084 0.78571427 0.25 0.95424378 0.25 0.9285714 0.5 0.86666667
		 0.5625 0.86193341 0.75 0.78571427 0.65625 0.85714287 0.65625 0.8287369 0.70680916
		 0.78571427 0.58628529 0.85714287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2407 ".vt";
	setAttr ".vt[0:165]"  -0.94867647 -1.110223e-16 -0.012446554 -0.94867647 -1.110223e-16 0.012446523
		 -0.80898643 1.110223e-16 -0.012446554 -0.80898643 1.110223e-16 0.012446523 -0.88720727 -1.110223e-16 -0.33616251
		 -0.8957215 -1.110223e-16 -0.31277063 -0.75594169 1.110223e-16 -0.28838563 -0.7644558 1.110223e-16 -0.26499367
		 -0.7187283 -1.110223e-16 -0.61933231 -0.73472893 -1.110223e-16 -0.60026288 -0.61171937 1.110223e-16 -0.52954131
		 -0.62772006 1.110223e-16 -0.51047164 -0.46355918 -1.110223e-16 -0.82780153 -0.4851175 -1.110223e-16 -0.81535482
		 -0.39371419 1.110223e-16 -0.70682615 -0.4152723 1.110223e-16 -0.69437957 -0.15247852 -1.110223e-16 -0.93642545
		 -0.17699344 -1.110223e-16 -0.93210292 -0.12822154 1.110223e-16 -0.79885763 -0.15273656 1.110223e-16 -0.79453498
		 0.17699344 -1.110223e-16 -0.93210292 0.15247852 -1.110223e-16 -0.93642545 0.15273656 1.110223e-16 -0.79453498
		 0.12822154 1.110223e-16 -0.79885763 0.4851175 -1.110223e-16 -0.81535482 0.46355918 -1.110223e-16 -0.82780153
		 0.4152723 1.110223e-16 -0.69437957 0.39371419 1.110223e-16 -0.70682615 0.73472893 -1.110223e-16 -0.60026288
		 0.7187283 -1.110223e-16 -0.61933231 0.62772006 1.110223e-16 -0.51047164 0.61171937 1.110223e-16 -0.52954131
		 0.8957215 -1.110223e-16 -0.31277063 0.88720727 -1.110223e-16 -0.33616251 0.7644558 1.110223e-16 -0.26499367
		 0.75594169 1.110223e-16 -0.28838563 0.94867647 -1.110223e-16 0.012446523 0.94867647 -1.110223e-16 -0.012446554
		 0.80898643 1.110223e-16 0.012446523 0.80898643 1.110223e-16 -0.012446554 0.88720727 -1.110223e-16 0.33616251
		 0.8957215 -1.110223e-16 0.31277058 0.75594169 1.110223e-16 0.28838563 0.7644558 1.110223e-16 0.26499349
		 0.7187283 -1.110223e-16 0.61933208 0.73472893 -1.110223e-16 0.60026288 0.61171937 1.110223e-16 0.52954131
		 0.62772006 1.110223e-16 0.51047164 -0.73472893 -1.110223e-16 0.60026288 -0.7187283 -1.110223e-16 0.61933208
		 -0.62772006 1.110223e-16 0.51047164 -0.61171937 1.110223e-16 0.52954131 -0.8957215 -1.110223e-16 0.31277058
		 -0.88720727 -1.110223e-16 0.33616251 -0.7644558 1.110223e-16 0.26499349 -0.75594169 1.110223e-16 0.28838563
		 0.28141427 -5.869495e-17 -0.95856124 0.27253446 -5.6842872e-17 -0.92831457 0.90859455 2.5409026e-17 0.41496089
		 0.87992454 2.4607265e-17 0.40186712 0.89425957 2.5008146e-17 0.40841401 0.90142703 2.5208587e-17 0.41168746
		 0.75551015 4.0104198e-17 0.65495121 0.74955028 3.9787834e-17 0.64978462 0.74359035 3.9471467e-17 0.64461797
		 0.88709205 2.4807706e-17 0.40514058 0.73763049 3.9155104e-17 0.63945138 0.73167062 3.883874e-17 0.63428473
		 0.98943251 -8.7074681e-18 -0.14220373 0.95821172 -8.4327101e-18 -0.13771661 0.97382212 -8.5700891e-18 -0.13996017
		 0.98162729 -8.6387782e-18 -0.14108196 0.98947829 8.6885348e-18 0.14189455 0.9816727 8.6199946e-18 0.1407752
		 0.97386718 8.5514552e-18 0.13965586 0.96601689 -8.5013992e-18 -0.1388384 0.96606159 8.482915e-18 0.13853651
		 0.95825607 8.4143748e-18 0.13741717 0.27697438 -5.7768911e-17 -0.94343787 0.75563812 -4.0095099e-17 -0.65480268
		 0.74371636 -3.9462514e-17 -0.64447176 0.74967724 -3.9778805e-17 -0.64963722 0.90855837 -2.5413895e-17 -0.4150404
		 0.90139115 -2.5213416e-17 -0.41176632 0.89422393 -2.5012936e-17 -0.40849227 0.27919433 -5.8231927e-17 -0.95099956
		 0.54058444 -5.146193e-17 -0.84043711 0.53632003 -5.105597e-17 -0.83380723 0.53205556 -5.0650009e-17 -0.82717741
		 0.73179454 -3.8829929e-17 -0.63414085 0.73775542 -3.914622e-17 -0.63930631 0.88705671 -2.4812457e-17 -0.40521818
		 0.87988949 -2.4611978e-17 -0.4019441 0.27475441 -5.7305888e-17 -0.93587619 0.52779114 -5.0244049e-17 -0.82054758
		 0.52352673 -4.9838089e-17 -0.81391776 -0.98943251 -8.7074681e-18 -0.14220373 -0.95821172 -8.4327101e-18 -0.13771661
		 -0.28141427 -5.869495e-17 -0.95856124 -0.27253446 -5.6842872e-17 -0.92831457 -0.27697438 -5.7768911e-17 -0.94343787
		 -0.27919433 -5.8231927e-17 -0.95099956 -1.6559896e-15 -6.1232343e-17 -1 -1.6028932e-15 -6.0749302e-17 -0.99211144
		 -1.5706133e-15 -6.0266268e-17 -0.98422289 -0.27475441 -5.7305888e-17 -0.93587619
		 -1.5487417e-15 -5.9783235e-17 -0.97633433 -1.5268704e-15 -5.9300201e-17 -0.96844578
		 -0.97382212 -8.5700891e-18 -0.13996017 -0.75563812 -4.0095099e-17 -0.65480268 -0.74371636 -3.9462514e-17 -0.64447176
		 -0.74967724 -3.9778805e-17 -0.64963722 -0.54058444 -5.146193e-17 -0.84043711 -0.53632003 -5.105597e-17 -0.83380723
		 -0.53205556 -5.0650009e-17 -0.82717741 -0.98162729 -8.6387782e-18 -0.14108196 -0.90855837 -2.5413895e-17 -0.4150404
		 -0.90139115 -2.5213416e-17 -0.41176632 -0.89422393 -2.5012936e-17 -0.40849227 -0.73179454 -3.8829929e-17 -0.63414085
		 -0.73775542 -3.914622e-17 -0.63930631 -0.52779114 -5.0244049e-17 -0.82054758 -0.52352673 -4.9838089e-17 -0.81391776
		 -0.96601689 -8.5013992e-18 -0.1388384 -0.88705671 -2.4812457e-17 -0.40521818 -0.87988949 -2.4611978e-17 -0.4019441
		 -0.90859455 2.5409026e-17 0.41496089 -0.87992454 2.4607265e-17 0.40186712 -0.89425957 2.5008146e-17 0.40841401
		 -0.90142703 2.5208587e-17 0.41168746 -0.98947829 8.6885348e-18 0.14189455 -0.9816727 8.6199946e-18 0.1407752
		 -0.97386718 8.5514552e-18 0.13965586 -0.88709205 2.4807706e-17 0.40514058 -0.96606159 8.482915e-18 0.13853651
		 -0.95825607 8.4143748e-18 0.13741717 -0.75551015 4.0104198e-17 0.65495121 -0.74955028 3.9787834e-17 0.64978462
		 -0.74359035 3.9471467e-17 0.64461797 -0.73763049 3.9155104e-17 0.63945138 -0.73167062 3.883874e-17 0.63428473
		 -0.51812363 0 0.45354843 -0.58778501 0 0.45361888 -0.55289924 1.2084337e-17 0.50800663
		 -0.55300939 -1.2084337e-17 0.39916068 -0.53336203 0 0.45356384 -0.5725466 0 0.45360348
		 -0.55299467 -8.8618481e-18 0.41367346 -0.55291396 8.8618473e-18 0.49349385 -0.51833487 1.7263334e-18 0.46132335
		 -0.58755803 1.7263334e-18 0.46139339 -0.5723781 1.7263326e-18 0.46137804 -0.5335148 1.7263326e-18 0.4613387
		 -0.55725348 1.203011e-17 0.50776684 -0.55726838 8.7475309e-18 0.49298343 -0.52606016 8.6317761e-18 0.49243054
		 -0.54690397 8.6318092e-18 0.49245176 -0.53548443 1.0979934e-17 0.50301522 -0.53549963 8.6316694e-18 0.4924396
		 -0.55726099 1.0358003e-17 0.50023633 -0.53549176 1.0358003e-17 0.50021434 -0.54636872 1.1958091e-17 0.50743151
		 -0.54637635 1.0358003e-17 0.50022531 -0.54638422 8.6316694e-18 0.49245062 -0.52037567 5.1790039e-18 0.47687489
		 -0.53556705 5.1790035e-18 0.47689024;
	setAttr ".vt[166:331]" -0.53551537 5.1790014e-18 0.47689018 -0.53851563 6.9054063e-18 0.48466825
		 -0.5355075 6.9053348e-18 0.48466489 -0.54638416 8.585339e-18 0.49224195 -0.53551555 5.134033e-18 0.47668767
		 -0.57976985 8.6317761e-18 0.49248487 -0.55892599 8.6318092e-18 0.49246395 -0.57032418 1.0979934e-17 0.50305051
		 -0.57033032 8.6316694e-18 0.49247485 -0.58548576 5.1790039e-18 0.47694075 -0.57029438 5.1790035e-18 0.47692537
		 -0.57034606 5.1790014e-18 0.4769254 -0.56733006 6.9054063e-18 0.4846974 -0.57033819 6.9053348e-18 0.48470011
		 -0.56380361 7.9453469e-18 0.48937732 -0.56379956 8.6316694e-18 0.49246824 -0.57034636 5.134033e-18 0.4767229
		 -0.58553296 -5.1790051e-18 0.43029243 -0.52042288 -5.1790051e-18 0.43022656 -0.53561425 -5.1790051e-18 0.43024194
		 -0.57034159 -5.1790051e-18 0.43027708 -0.5183506 -1.7263359e-18 0.44577393 -0.53353053 -1.7263342e-18 0.44578928
		 -0.53556257 -5.1790018e-18 0.43024188 -0.53556228 -5.1340346e-18 0.43044442 -0.58757377 -1.7263359e-18 0.44584396
		 -0.57239383 -1.7263342e-18 0.44582862 -0.57039326 -5.1790018e-18 0.43027714 -0.57039309 -5.1340346e-18 0.43047965
		 -0.55736309 -1.2030112e-17 0.39940929 -0.55734813 -8.7475318e-18 0.41419271 -0.52613878 -8.6317778e-18 0.41468245
		 -0.54698265 -8.6318108e-18 0.41470337 -0.53557831 -8.6316719e-18 0.41469246 -0.53857857 -6.9054072e-18 0.42246991
		 -0.53557044 -6.905336e-18 0.42246717 -0.54646236 -8.5853398e-18 0.41491213 -0.54646289 -8.6316719e-18 0.41470349
		 -0.53558445 -1.0979937e-17 0.40411681 -0.53558618 -1.0358004e-17 0.40691775 -0.55735534 -1.0358004e-17 0.40693977
		 -0.54647076 -1.0358004e-17 0.40692878 -0.54647768 -1.1958093e-17 0.39972264 -0.57984847 -8.6317778e-18 0.41473678
		 -0.55900466 -8.6318108e-18 0.41471553 -0.570409 -8.6316719e-18 0.41472769 -0.567393 -6.9054072e-18 0.42249906
		 -0.57040113 -6.905336e-18 0.42250243 -0.56387824 -8.6316719e-18 0.4147211 -0.56387603 -7.9453485e-18 0.41781202
		 -0.5704242 -1.0979937e-17 0.40415207 -0.68233335 8.8665473e-18 0.27710328 -0.64278597 8.8665473e-18 0.27706325
		 -0.64893925 1.2089037e-17 0.29158229 -0.71333975 1.2089037e-17 0.29164743 -0.69619077 -6.5611247e-18 0.20763719
		 -0.6610626 -5.1168623e-18 0.21410602 -0.67714435 -8.8578644e-18 0.19727433 -0.70617956 -9.0182729e-18 0.19658127
		 -0.67616123 -1.2089037e-17 0.18272141 -0.6460098 -5.3845562e-18 0.21288523 -0.67598987 1.7316058e-18 0.24496391
		 -0.65828049 1.7281044e-18 0.24493022 -0.67807019 8.8665473e-18 0.27709895 -0.67805552 1.2089037e-17 0.29161176
		 -0.67808086 2.3684199e-18 0.24783398 -0.6780799 7.6660047e-18 0.27169219 -0.66042811 8.8665473e-18 0.2770811
		 -0.66041338 1.2089037e-17 0.29159391 -0.6693359 5.1818146e-18 0.26049554 -0.678087 5.181669e-18 0.26050374
		 -0.66046059 1.7279853e-18 0.24493189 -0.66045344 2.4583444e-18 0.24822113 -0.70044792 8.6362611e-18 0.27608448
		 -0.68151826 8.6352958e-18 0.27606097 -0.69569767 1.2089037e-17 0.29162958 -0.6957134 8.6353528e-18 0.2760756
		 -0.68781197 5.1822216e-18 0.26051608 -0.69571602 7.3588254e-18 0.27032661 -0.66106337 -5.1794369e-18 0.21382421
		 -0.64602011 -5.1793194e-18 0.21380953 -0.66588378 -1.7210502e-18 0.2294043 -0.64970797 -1.7218873e-18 0.22938417
		 -0.66047633 -1.7256989e-18 0.2293779 -0.66049206 -5.1793823e-18 0.21382388 -0.67816085 -8.8485504e-18 0.1973173
		 -0.67816651 -1.2076935e-17 0.18277794 -0.67207706 -8.6668039e-18 0.19812965 -0.6497196 -8.6381355e-18 0.19823615
		 -0.6605078 -8.6330665e-18 0.19826989 -0.66309297 -6.9118774e-18 0.20602405 -0.66049993 -6.9062244e-18 0.20604689
		 -0.66927707 -8.3604344e-18 0.19950658 -0.66932887 -8.6330665e-18 0.19827881 -0.66053981 -1.114779e-17 0.1869446
		 -0.68251944 -8.6531504e-18 0.1982017 -0.70461363 -8.6330665e-18 0.1983145 -0.69578338 -6.6587105e-18 0.20719729
		 -0.69579208 -8.6330665e-18 0.19830558 -0.69579929 -1.0796071e-17 0.18856429 -0.56155467 4.7000402e-21 0.23707084
		 -0.63121611 4.7000402e-21 0.23714131 -0.59633034 1.2089037e-17 0.29152906 -0.59644043 -1.2079637e-17 0.18268308
		 -0.57679313 4.7000402e-21 0.23708627 -0.61597764 4.7000402e-21 0.2371259 -0.59642577 -8.8571481e-18 0.19719589
		 -0.59634501 8.8665473e-18 0.27701628 -0.56176591 1.7310334e-18 0.24484578 -0.63098913 1.7310334e-18 0.24491581
		 -0.61580914 1.7310326e-18 0.24490045 -0.5769459 1.7310326e-18 0.24486113 -0.60068452 1.203481e-17 0.29128927
		 -0.60069948 8.752231e-18 0.27650586 -0.56949127 8.6364761e-18 0.27595297 -0.59033507 8.6365092e-18 0.27597418
		 -0.57891548 1.0984634e-17 0.28653765 -0.57893074 8.6363694e-18 0.27596202 -0.60069203 1.0362703e-17 0.28375876
		 -0.57892287 1.0362703e-17 0.28373674 -0.58979976 1.1962791e-17 0.2909539 -0.58980745 1.0362703e-17 0.28374776
		 -0.58981532 8.6363694e-18 0.27597305 -0.56380677 5.1837039e-18 0.26039729 -0.57899815 5.1837035e-18 0.26041266
		 -0.57894647 5.1837014e-18 0.2604126 -0.58194673 6.9101064e-18 0.26819068 -0.5789386 6.9100348e-18 0.26818731
		 -0.58981526 8.5900391e-18 0.27576438 -0.57894659 5.138733e-18 0.2602101 -0.62320089 8.6364761e-18 0.27600729
		 -0.60235709 8.6365092e-18 0.27598634 -0.61375523 1.0984634e-17 0.2865729 -0.61376143 8.6363694e-18 0.27599725
		 -0.62891686 5.1837039e-18 0.26046318 -0.61372542 5.1837035e-18 0.2604478 -0.61377716 5.1837014e-18 0.26044783
		 -0.61076117 6.9101064e-18 0.26821983 -0.61376929 6.9100348e-18 0.26822254 -0.60723472 7.9500469e-18 0.27289975
		 -0.60723066 8.6363694e-18 0.27599066 -0.6137774 5.138733e-18 0.26024532 -0.62896401 -5.1743051e-18 0.21381487
		 -0.56385398 -5.1743051e-18 0.21374899 -0.57904536 -5.1743051e-18 0.21376437 -0.61377263 -5.1743051e-18 0.21379951
		 -0.56178164 -1.7216358e-18 0.22929636 -0.57696164 -1.7216342e-18 0.2293117 -0.57899362 -5.1743018e-18 0.21376432
		 -0.57899338 -5.1293346e-18 0.21396685 -0.63100487 -1.7216358e-18 0.22936638 -0.61582488 -1.7216342e-18 0.22935103
		 -0.61382437 -5.1743018e-18 0.21379957 -0.61382419 -5.1293346e-18 0.21400207 -0.60079414 -1.2025412e-17 0.18293172
		 -0.60077918 -8.7428317e-18 0.19771513 -0.56956989 -8.6270777e-18 0.19820486 -0.59041369 -8.6271108e-18 0.1982258
		 -0.57900935 -8.6269718e-18 0.19821489 -0.58200967 -6.9007071e-18 0.20599234 -0.57900149 -6.900636e-18 0.20598961
		 -0.58989346 -8.5806398e-18 0.19843456 -0.58989394 -8.6269718e-18 0.19822592 -0.57901555 -1.0975237e-17 0.18763924
		 -0.57901722 -1.0353304e-17 0.19044018 -0.60078645 -1.0353304e-17 0.1904622;
	setAttr ".vt[332:497]" -0.5899018 -1.0353304e-17 0.1904512 -0.58990872 -1.1953393e-17 0.18324505
		 -0.62327957 -8.6270777e-18 0.1982592 -0.60243571 -8.6271108e-18 0.19823797 -0.6138401 -8.6269718e-18 0.19825013
		 -0.61082405 -6.9007071e-18 0.20602149 -0.61383224 -6.900636e-18 0.20602486 -0.60730934 -8.6269718e-18 0.19824353
		 -0.60730708 -7.9406485e-18 0.20133445 -0.6138553 -1.0975237e-17 0.18767449 -0.76239008 5.3976703e-18 0.016416639
		 -0.76238012 7.5728509e-18 0.026212778 -0.71557635 7.5728509e-18 0.02616543 -0.71555579 1.2084337e-17 0.046483345
		 -0.70031738 1.2084337e-17 0.04646793 -0.70033795 7.5728509e-18 0.026150014 -0.69344437 7.5728509e-18 0.026143039
		 -0.6876539 4.3503612e-18 0.01162437 -0.70035261 4.3503612e-18 0.011637218 -0.70042747 -1.2084337e-17 -0.062378049
		 -0.71203774 -1.2084337e-17 -0.062366307 -0.74280256 4.3503612e-18 0.01168016 -0.71563435 -5.1559847e-18 -0.031160124
		 -0.71559107 4.3503612e-18 0.011652634 -0.70036459 1.7263326e-18 -0.00018034875 -0.75181574 1.7263326e-18 -0.000128299
		 -0.73530334 1.7263326e-18 -0.0001450032 -0.71560299 1.7263326e-18 -0.0001649335 -0.72500968 7.5728509e-18 0.026174972
		 -0.72502434 4.3503612e-18 0.011662178 -0.72502059 5.1790014e-18 0.015394038 -0.76176023 5.1790014e-18 0.015431205
		 -0.7436949 7.5728509e-18 0.026193876 -0.74370581 5.1790014e-18 0.015412942 -0.74372154 1.7263326e-18 -0.00013648719
		 -0.71557152 8.6316694e-18 0.03093392 -0.70033312 8.6316694e-18 0.030918505 -0.70630389 1.2084337e-17 0.046473984
		 -0.70631963 8.6316694e-18 0.030924561 -0.68914288 5.1790014e-18 0.015357742 -0.70633537 5.1790014e-18 0.015375135
		 -0.7063511 1.7263326e-18 -0.00017429516 -0.70039988 -6.0249065e-18 -0.035088807 -0.72949034 -6.0249065e-18 -0.035059378
		 -0.72507167 -6.0249065e-18 -0.035063848 -0.72505265 -1.8604508e-18 -0.016308822 -0.74187124 -1.7263342e-18 -0.015687797
		 -0.72543597 -1.7263342e-18 -0.015704423 -0.74373436 -1.0794765e-18 -0.012772724 -0.70038033 -1.7263342e-18 -0.01572977
		 -0.71561873 -1.7263342e-18 -0.015714355 -0.70636684 -1.7263342e-18 -0.015723716 -0.70638639 -6.0249065e-18 -0.03508275
		 -0.72507864 -7.5566233e-18 -0.041962087 -0.7004118 -8.6316719e-18 -0.046828628 -0.72198224 -8.6316719e-18 -0.046806805
		 -0.70639831 -8.6316719e-18 -0.04682257 -0.70641404 -1.2084337e-17 -0.062371992 -0.60857898 0 -0.0080479234
		 -0.67824042 0 -0.0079774484 -0.64335465 1.2084337e-17 0.046410304 -0.64346474 -1.2084337e-17 -0.062435679
		 -0.62381744 0 -0.0080325082 -0.66300195 0 -0.0079928674 -0.64345008 -8.8618481e-18 -0.047922887
		 -0.64336932 8.8618473e-18 0.031897508 -0.60879028 1.7263334e-18 -0.00027298555 -0.67801344 1.7263334e-18 -0.00020295754
		 -0.66283345 1.7263326e-18 -0.00021832064 -0.62397021 1.7263326e-18 -0.00025763735
		 -0.64770883 1.203011e-17 0.046170492 -0.64772379 8.7475309e-18 0.031387076 -0.61651558 8.6317761e-18 0.030834192
		 -0.63735938 8.6318092e-18 0.030855427 -0.62593985 1.0979934e-17 0.041418895 -0.62595505 8.6316694e-18 0.03084326
		 -0.64771634 1.0358003e-17 0.038639996 -0.62594718 1.0358003e-17 0.038617972 -0.63682413 1.1958091e-17 0.045835137
		 -0.63683176 1.0358003e-17 0.038628984 -0.63683963 8.6316694e-18 0.030854272 -0.61083108 5.1790039e-18 0.015278529
		 -0.62602246 5.1790035e-18 0.015293894 -0.62597072 5.1790014e-18 0.015293835 -0.62897104 6.9054063e-18 0.023071911
		 -0.62596285 6.9053348e-18 0.023068545 -0.63683951 8.585339e-18 0.030645616 -0.6259709 5.134033e-18 0.015091319
		 -0.6702252 8.6317761e-18 0.030888528 -0.6493814 8.6318092e-18 0.03086759 -0.66077954 1.0979934e-17 0.04145414
		 -0.66078573 8.6316694e-18 0.030878497 -0.67594117 5.1790039e-18 0.015344398 -0.66074973 5.1790035e-18 0.015329026
		 -0.66080147 5.1790014e-18 0.015329072 -0.65778548 6.9054063e-18 0.023101062 -0.6607936 6.9053348e-18 0.023103783
		 -0.65425903 7.9453469e-18 0.027780971 -0.65425497 8.6316694e-18 0.03087189 -0.66080171 5.134033e-18 0.015126552
		 -0.67598832 -5.1790051e-18 -0.031303898 -0.61087823 -5.1790051e-18 -0.031369768 -0.62606966 -5.1790051e-18 -0.031354398
		 -0.66079694 -5.1790051e-18 -0.031319268 -0.60880601 -1.7263359e-18 -0.015822418 -0.62398595 -1.7263342e-18 -0.015807055
		 -0.62601793 -5.1790018e-18 -0.031354442 -0.62601769 -5.1340346e-18 -0.031151921 -0.67802918 -1.7263359e-18 -0.01575239
		 -0.66284919 -1.7263342e-18 -0.015767738 -0.66084868 -5.1790018e-18 -0.031319208 -0.6608485 -5.1340346e-18 -0.031116687
		 -0.64781845 -1.2030112e-17 -0.062187053 -0.64780349 -8.7475318e-18 -0.047403641 -0.6165942 -8.6317778e-18 -0.046913907
		 -0.63743806 -8.6318108e-18 -0.046892963 -0.62603366 -8.6316719e-18 -0.046903871 -0.62903398 -6.9054072e-18 -0.039126433
		 -0.6260258 -6.905336e-18 -0.039129153 -0.63691777 -8.5853398e-18 -0.046684198 -0.63691831 -8.6316719e-18 -0.046892859
		 -0.62603986 -1.0979937e-17 -0.057479523 -0.62604153 -1.0358004e-17 -0.054678582 -0.64781076 -1.0358004e-17 -0.054656558
		 -0.63692617 -1.0358004e-17 -0.05466757 -0.63693309 -1.1958093e-17 -0.061873719 -0.67030388 -8.6317778e-18 -0.04685957
		 -0.64946002 -8.6318108e-18 -0.046880797 -0.66086441 -8.6316719e-18 -0.046868637 -0.65784836 -6.9054072e-18 -0.039097279
		 -0.66085654 -6.905336e-18 -0.039093919 -0.65433365 -8.6316719e-18 -0.046875246 -0.65433139 -7.9453485e-18 -0.043784313
		 -0.66087961 -1.0979937e-17 -0.057444274 -0.68748194 -1.2088892e-17 -0.30226284 -0.66952235 -1.2088892e-17 -0.30228102
		 -0.69596767 -3.1867646e-18 -0.26216263 -0.65928596 4.4315018e-18 -0.2278901 -0.69356865 -3.26603e-18 -0.26252204
		 -0.69363183 1.2088892e-17 -0.19336952 -0.72818345 4.5189646e-18 -0.2274265 -0.69377476 3.1769278e-19 -0.24638218
		 -0.6937359 8.857292e-18 -0.20792325 -0.7129848 4.5874924e-18 -0.22713326 -0.67452586 4.5874924e-18 -0.22717217
		 -0.6614812 1.7291723e-18 -0.24005809 -0.72609359 1.7278074e-18 -0.23999888 -0.70811218 1.7291301e-18 -0.24001111
		 -0.67942452 1.7291301e-18 -0.24004014 -0.68941504 1.2027966e-17 -0.19364817 -0.68942648 8.7518488e-18 -0.20840248
		 -0.66490024 8.6378981e-18 -0.20894049 -0.68758285 8.6381421e-18 -0.20891644 -0.67648518 1.1057673e-17 -0.19803107
		 -0.67649746 8.6381421e-18 -0.20892766 -0.65944713 5.183641e-18 -0.22450261 -0.67470497 5.1836365e-18 -0.22448719
		 -0.67650723 6.4959676e-18 -0.21857515 -0.67756408 6.9108893e-18 -0.21670544 -0.67650533 6.9108893e-18 -0.21670651
		 -0.68296224 8.6381421e-18 -0.20892112 -0.68296456 8.134916e-18 -0.21118745 -0.67652464 2.6790171e-18 -0.23576516
		 -0.67652893 1.7291301e-18 -0.24004306 -0.72259086 8.6379667e-18 -0.20888181 -0.69989091 8.6381421e-18 -0.208904;
	setAttr ".vt[498:663]" -0.71094662 1.1060846e-17 -0.19798191 -0.71095687 8.6381421e-18 -0.20889279
		 -0.72804689 5.1834855e-18 -0.2244339 -0.71280026 5.1836365e-18 -0.22444865 -0.71096659 6.5046725e-18 -0.21850109
		 -0.70992535 6.9108893e-18 -0.2166727 -0.71096474 6.9108893e-18 -0.21667165 -0.70019203 8.6153152e-18 -0.20900649
		 -0.70019192 8.6381421e-18 -0.20890369 -0.71098834 1.7291301e-18 -0.24000821 -0.71098405 2.6703119e-18 -0.2357695
		 -0.69004679 -5.1798828e-18 -0.27114484 -0.70861757 -5.182141e-18 -0.27113622 -0.68947047 -3.1926905e-18 -0.26219589
		 -0.68946445 4.231368e-19 -0.24591166 -0.67324233 -1.725426e-18 -0.25560433 -0.68947423 -1.7253755e-18 -0.2555877
		 -0.67654467 -1.7253755e-18 -0.25560078 -0.66558832 1.9306395e-21 -0.24783275 -0.6765368 1.8777e-21 -0.24782191
		 -0.66791409 1.7291301e-18 -0.24005178 -0.66792196 1.8777e-21 -0.24783063 -0.66792494 -6.513063e-19 -0.2507723
		 -0.67654514 -2.2044843e-18 -0.25775847 -0.71895301 -1.7158108e-18 -0.2555148 -0.71100408 -1.7253755e-18 -0.25556591
		 -0.71099621 1.8777e-21 -0.24778706 -0.68946636 1.8777e-21 -0.24780883 -0.70022875 5.5966875e-19 -0.24528587
		 -0.70023125 1.8777e-21 -0.24779794 -0.70023918 -1.7253755e-18 -0.25557679 -0.71103507 -4.4059726e-18 -0.26763821
		 -0.68949085 -5.3670257e-18 -0.27198821 -0.68951839 -1.1421955e-17 -0.29925716 -0.6797846 -8.6343875e-18 -0.28671294
		 -0.6895057 -8.6343875e-18 -0.28670311 -0.67659187 -1.2088892e-17 -0.30227387 -0.67658108 -9.712763e-18 -0.29157275
		 -0.69803011 -8.6343875e-18 -0.28669447 -0.57731104 -4.5552836e-21 -0.24795127 -0.64697248 -4.5552836e-21 -0.24788079
		 -0.61208671 1.2079782e-17 -0.19349304 -0.6121968 -1.2088892e-17 -0.30233902 -0.5925495 -4.5552836e-21 -0.24793586
		 -0.63173401 -4.5552836e-21 -0.24789621 -0.61218214 -8.8664034e-18 -0.28782624 -0.61210138 8.857292e-18 -0.20800585
		 -0.57752228 1.7217781e-18 -0.24017633 -0.6467455 1.7217781e-18 -0.2401063 -0.63156551 1.7217773e-18 -0.24012166
		 -0.59270227 1.7217773e-18 -0.24016099 -0.61644089 1.2025554e-17 -0.19373286 -0.61645585 8.7429756e-18 -0.20851627
		 -0.58524764 8.6272208e-18 -0.20906915 -0.60609144 8.6272539e-18 -0.20904791 -0.59467185 1.0975378e-17 -0.19848445
		 -0.5946871 8.6271141e-18 -0.20906009 -0.6164484 1.0353447e-17 -0.20126335 -0.59467924 1.0353447e-17 -0.20128538
		 -0.60555613 1.1953536e-17 -0.19406821 -0.60556382 1.0353447e-17 -0.20127437 -0.60557169 8.6271141e-18 -0.20904908
		 -0.57956314 5.1744486e-18 -0.22462481 -0.59475452 5.1744482e-18 -0.22460945 -0.59470284 5.1744461e-18 -0.22460951
		 -0.5977031 6.900851e-18 -0.21683143 -0.59469497 6.9007795e-18 -0.2168348 -0.60557163 8.5807829e-18 -0.20925772
		 -0.59470296 5.1294777e-18 -0.22481203 -0.63895726 8.6272208e-18 -0.20901482 -0.61811346 8.6272539e-18 -0.20903575
		 -0.62951159 1.0975378e-17 -0.19844921 -0.62951779 8.6271141e-18 -0.20902485 -0.64467323 5.1744486e-18 -0.22455895
		 -0.62948179 5.1744482e-18 -0.22457433 -0.62953353 5.1744461e-18 -0.22457427 -0.62651753 6.900851e-18 -0.21680228
		 -0.62952566 6.9007795e-18 -0.21679956 -0.62299109 7.9407916e-18 -0.21212238 -0.62298703 8.6271141e-18 -0.20903146
		 -0.62953377 5.1294777e-18 -0.22477679 -0.64472038 -5.1835604e-18 -0.27120724 -0.57961035 -5.1835604e-18 -0.27127311
		 -0.59480172 -5.1835604e-18 -0.27125776 -0.629529 -5.1835604e-18 -0.27122262 -0.57753801 -1.7308911e-18 -0.25572577
		 -0.59271801 -1.7308895e-18 -0.25571039 -0.59474999 -5.1835571e-18 -0.27125779 -0.59474975 -5.1385899e-18 -0.27105528
		 -0.64676124 -1.7308911e-18 -0.25565574 -0.63158125 -1.7308895e-18 -0.25567108 -0.62958074 -5.1835571e-18 -0.27122256
		 -0.62958056 -5.1385899e-18 -0.27102003 -0.61655051 -1.2034667e-17 -0.30209041 -0.61653554 -8.752087e-18 -0.28730699
		 -0.58532625 -8.636333e-18 -0.28681725 -0.60617006 -8.6363661e-18 -0.2867963 -0.59476572 -8.6362272e-18 -0.28680721
		 -0.59776604 -6.9099624e-18 -0.27902979 -0.59475785 -6.9098913e-18 -0.2790325 -0.60564983 -8.5898951e-18 -0.28658754
		 -0.60565031 -8.6362272e-18 -0.28679621 -0.59477192 -1.0984492e-17 -0.29738286 -0.59477359 -1.036256e-17 -0.29458192
		 -0.61654282 -1.036256e-17 -0.2945599 -0.60565817 -1.036256e-17 -0.29457092 -0.60566509 -1.1962648e-17 -0.30177706
		 -0.63903594 -8.636333e-18 -0.28676292 -0.61819208 -8.6363661e-18 -0.28678414 -0.62959647 -8.6362272e-18 -0.28677198
		 -0.62658042 -6.9099624e-18 -0.27900064 -0.6295886 -6.9098913e-18 -0.27899727 -0.62306571 -8.6362272e-18 -0.2867786
		 -0.62306345 -7.9499038e-18 -0.28368765 -0.62961167 -1.0984492e-17 -0.29734761 -0.53032964 -1.2084348e-18 -0.45925921
		 -0.56516039 -1.2084348e-18 -0.45922399 -0.54779458 -1.2084337e-17 -0.50822228 -0.51981974 -5.961609e-18 -0.48067626
		 -0.57571357 -5.961609e-18 -0.48061973 -0.54768443 1.2084337e-17 -0.39937633 -0.58112353 4.9142966e-18 -0.4316335
		 -0.51431066 4.9142966e-18 -0.43170109 -0.54777986 -8.8618481e-18 -0.4937095 -0.54775345 -3.0613665e-18 -0.46758646
		 -0.53506798 -5.9616073e-18 -0.48066083 -0.56046534 -5.9616073e-18 -0.48063514 -0.5477351 9.6674583e-19 -0.44944549
		 -0.54769915 8.8618473e-18 -0.41388911 -0.52957612 4.9142966e-18 -0.43168566 -0.56585813 4.9142966e-18 -0.43164894
		 -0.57761973 1.7267329e-18 -0.44599256 -0.51784348 1.7267329e-18 -0.44605303 -0.5370639 1.7262838e-18 -0.44603562
		 -0.55839938 1.7262838e-18 -0.44601402 -0.54351264 1.2027373e-17 -0.39963707 -0.54352719 8.7552369e-18 -0.41437346
		 -0.57627606 8.6324685e-18 -0.41489324 -0.5537802 8.6316967e-18 -0.41491947 -0.56437641 1.1120608e-17 -0.4036997
		 -0.56438988 8.6316694e-18 -0.41490886 -0.58109939 5.1792231e-18 -0.4304404 -0.56581682 5.1790014e-18 -0.43045685
		 -0.56439996 6.4619796e-18 -0.42468026 -0.56336707 6.9053617e-18 -0.42268449 -0.56439775 6.9053348e-18 -0.42268357
		 -0.55395883 8.6316694e-18 -0.41491941 -0.55395895 8.6175163e-18 -0.41498315 -0.56441402 3.3666135e-18 -0.43862054
		 -0.56442136 1.7263326e-18 -0.44600773 -0.51912427 8.6324685e-18 -0.41495106 -0.54162019 8.6316967e-18 -0.41493177
		 -0.53100127 1.1120608e-17 -0.40373346 -0.53101045 8.6316694e-18 -0.41494262 -0.51433241 5.1792231e-18 -0.43050796
		 -0.52961498 5.1790014e-18 -0.43049347 -0.53102022 6.4619796e-18 -0.42471403 -0.532049 6.9053617e-18 -0.42271617
		 -0.53101832 6.9053348e-18 -0.42271733 -0.5372712 8.1392107e-18 -0.41715413 -0.53726912 8.6316694e-18 -0.4149363
		 -0.53104192 1.7263326e-18 -0.44604149 -0.53103429 3.3666135e-18 -0.4386543 -0.52004117 -5.1787983e-18 -0.47715056
		 -0.57548505 -5.1787983e-18 -0.47709447 -0.53552759 -5.1789952e-18 -0.47713581;
	setAttr ".vt[664:829]" -0.55999857 -5.1789952e-18 -0.47711104 -0.54358166 -3.2175382e-18 -0.46829402
		 -0.54356217 1.0733562e-18 -0.44896957 -0.56786489 -1.7266055e-18 -0.46155488 -0.54357493 -1.7263342e-18 -0.46157825
		 -0.56443709 -1.7263342e-18 -0.46155715 -0.56445283 -5.1790018e-18 -0.47710657 -0.57327121 -3.4531937e-18 -0.4693253
		 -0.56444496 -3.4526676e-18 -0.46933186 -0.57278311 -3.2278862e-18 -0.46831107 -0.57278979 -3.4526676e-18 -0.4693234
		 -0.57279766 -5.1790018e-18 -0.47709811 -0.55418265 -3.4526097e-18 -0.46934196 -0.55400604 -1.7263342e-18 -0.4615677
		 -0.55401391 -3.4305719e-18 -0.46924287 -0.52762985 -1.7266055e-18 -0.46159559 -0.53105766 -1.7263342e-18 -0.46159092
		 -0.53107339 -5.1790018e-18 -0.47714034 -0.54132783 -3.4526097e-18 -0.46935499 -0.53106552 -3.4526676e-18 -0.4693656
		 -0.53731632 -1.7263342e-18 -0.46158457 -0.53732419 -3.4526676e-18 -0.46935928 -0.53732771 -4.2989594e-18 -0.47317064
		 -0.52223927 -3.4531937e-18 -0.46937692 -0.52272528 -3.2278862e-18 -0.46836174 -0.52272069 -3.4526676e-18 -0.46937406
		 -0.52272856 -5.1790018e-18 -0.47714877 -0.5436222 -1.2015524e-17 -0.50791663 -0.5436067 -8.7056764e-18 -0.4930104
		 -0.57293433 -8.631786e-18 -0.49264795 -0.55279839 -8.6317149e-18 -0.492668 -0.56446856 -8.6316719e-18 -0.49265599
		 -0.55978918 -6.9053476e-18 -0.48488605 -0.56446069 -6.905336e-18 -0.48488128 -0.55403697 -8.4926427e-18 -0.4920404
		 -0.55403745 -8.6316719e-18 -0.49266654 -0.56447989 -1.0871498e-17 -0.50274324 -0.56447643 -1.0358004e-17 -0.5004307
		 -0.54361427 -1.0358004e-17 -0.5004518 -0.55404532 -1.0358004e-17 -0.50044125 -0.55405152 -1.1928394e-17 -0.50751364
		 -0.5226233 -8.631786e-18 -0.49269885 -0.54275924 -8.6317149e-18 -0.49267817 -0.53108913 -8.6316719e-18 -0.49268976
		 -0.53575277 -6.9053476e-18 -0.48491037 -0.53108126 -6.905336e-18 -0.48491505 -0.53734773 -8.6316719e-18 -0.49268344
		 -0.53734291 -7.6242552e-18 -0.48814642 -0.53109819 -1.0871498e-17 -0.50277704 -0.43127429 0 -0.45391715
		 -0.50093573 0 -0.45384666 -0.46604997 1.2084337e-17 -0.39945891 -0.46616006 -1.2084337e-17 -0.50830489
		 -0.44651276 0 -0.45390171 -0.4856973 0 -0.45386207 -0.4661454 -8.8618481e-18 -0.49379209
		 -0.46606463 8.8618473e-18 -0.41397169 -0.43148556 1.7263334e-18 -0.4461422 -0.50070876 1.7263334e-18 -0.44607216
		 -0.48552877 1.7263326e-18 -0.44608754 -0.44666553 1.7263326e-18 -0.44612685 -0.47040415 1.203011e-17 -0.3996987
		 -0.47041911 8.7475309e-18 -0.41448212 -0.43921089 8.6317761e-18 -0.41503501 -0.4600547 8.6318092e-18 -0.41501379
		 -0.44863513 1.0979934e-17 -0.40445033 -0.44865036 8.6316694e-18 -0.41502595 -0.47041166 1.0358003e-17 -0.40722921
		 -0.44864249 1.0358003e-17 -0.40725124 -0.45951942 1.1958091e-17 -0.40003407 -0.45952708 1.0358003e-17 -0.40724021
		 -0.45953494 8.6316694e-18 -0.41501492 -0.4335264 5.1790039e-18 -0.43059069 -0.44871777 5.1790035e-18 -0.43057531
		 -0.44866607 5.1790014e-18 -0.43057537 -0.45166636 6.9054063e-18 -0.42279729 -0.4486582 6.9053348e-18 -0.42280066
		 -0.45953485 8.585339e-18 -0.4152236 -0.44866621 5.134033e-18 -0.43077788 -0.49292052 8.6317761e-18 -0.41498068
		 -0.47207668 8.6318092e-18 -0.41500163 -0.48347485 1.0979934e-17 -0.40441507 -0.48348105 8.6316694e-18 -0.41499072
		 -0.49863645 5.1790039e-18 -0.4305248 -0.48344508 5.1790035e-18 -0.43054017 -0.48349679 5.1790014e-18 -0.43054014
		 -0.48048076 6.9054063e-18 -0.42276815 -0.48348892 6.9053348e-18 -0.42276543 -0.47695434 7.9453469e-18 -0.41808823
		 -0.47695029 8.6316694e-18 -0.41499731 -0.48349702 5.134033e-18 -0.43074265 -0.49868366 -5.1790051e-18 -0.47717309
		 -0.43357357 -5.1790051e-18 -0.47723898 -0.44876498 -5.1790051e-18 -0.4772236 -0.48349226 -5.1790051e-18 -0.47718847
		 -0.4315013 -1.7263359e-18 -0.46169162 -0.44668126 -1.7263342e-18 -0.46167627 -0.44871324 -5.1790018e-18 -0.47722363
		 -0.448713 -5.1340346e-18 -0.47702113 -0.50072449 -1.7263359e-18 -0.46162158 -0.4855445 -1.7263342e-18 -0.46163696
		 -0.48354399 -5.1790018e-18 -0.47718841 -0.48354381 -5.1340346e-18 -0.4769859 -0.47051376 -1.2030112e-17 -0.50805628
		 -0.4704988 -8.7475318e-18 -0.49327284 -0.43928951 -8.6317778e-18 -0.49278313 -0.46013334 -8.6318108e-18 -0.49276218
		 -0.44872898 -8.6316719e-18 -0.49277309 -0.4517293 -6.9054072e-18 -0.48499563 -0.44872111 -6.905336e-18 -0.48499835
		 -0.45961308 -8.5853398e-18 -0.49255341 -0.45961359 -8.6316719e-18 -0.49276206 -0.44873518 -1.0979937e-17 -0.50334871
		 -0.44873685 -1.0358004e-17 -0.50054777 -0.47050604 -1.0358004e-17 -0.50052577 -0.45962146 -1.0358004e-17 -0.5005368
		 -0.45962837 -1.1958093e-17 -0.50774294 -0.4929992 -8.6317778e-18 -0.49272877 -0.47215533 -8.6318108e-18 -0.49274999
		 -0.4835597 -8.6316719e-18 -0.49273783 -0.48054367 -6.9054072e-18 -0.48496649 -0.48355183 -6.905336e-18 -0.48496312
		 -0.47702894 -8.6316719e-18 -0.49274445 -0.47702673 -7.9453485e-18 -0.48965353 -0.48357493 -1.0979937e-17 -0.50331348
		 -0.45533258 -1.2084337e-17 -0.66988635 -0.44589925 -1.2084337e-17 -0.66989589 -0.44578916 1.2084337e-17 -0.56104994
		 -0.46102759 1.2084337e-17 -0.5610345 -0.46110833 -5.6393576e-18 -0.6408549 -0.47234675 -3.6655839e-18 -0.63195443
		 -0.47236162 -6.9283548e-18 -0.64664865 -0.4458442 0 -0.61547291 -0.46108264 0 -0.61545748
		 -0.4458167 6.0421685e-18 -0.58826143 -0.4610551 6.0421685e-18 -0.58824599 -0.44580293 9.0632525e-18 -0.57465565
		 -0.46104136 9.0632525e-18 -0.57464021 -0.45903209 1.2084337e-17 -0.56103653 -0.45904583 9.0632525e-18 -0.57464224
		 -0.4590596 6.0421685e-18 -0.58824801 -0.44583043 3.0210836e-18 -0.60186714 -0.46106887 3.0210836e-18 -0.60185176
		 -0.45907336 3.0210836e-18 -0.60185373 -0.45908713 0 -0.6154595 -0.44587174 -6.0421697e-18 -0.6426844
		 -0.4723576 -6.0421697e-18 -0.64265758 -0.44585797 -3.0210845e-18 -0.62907863 -0.46109641 -3.0210845e-18 -0.62906325
		 -0.4591009 -3.0210845e-18 -0.62906528 -0.45911467 -6.0421697e-18 -0.64267099 -0.44588551 -9.063255e-18 -0.65629017
		 -0.46277818 -9.0632484e-18 -0.65627301 -0.45912844 -9.063255e-18 -0.65627676 -0.45913386 -1.0259438e-17 -0.66166389
		 -0.34262192 0 -0.61557734 -0.41228336 0 -0.61550683 -0.3773976 1.2084337e-17 -0.56111908
		 -0.37750769 -1.2084337e-17 -0.66996509 -0.35786039 0 -0.6155619 -0.39704493 0 -0.61552227
		 -0.37749302 -8.8618481e-18 -0.65545231 -0.37741226 8.8618473e-18 -0.57563192 -0.34283319 1.7263334e-18 -0.60780239
		 -0.41205639 1.7263334e-18 -0.60773236 -0.39687639 1.7263326e-18 -0.60774773;
	setAttr ".vt[830:995]" -0.35801315 1.7263326e-18 -0.60778701 -0.38175178 1.203011e-17 -0.56135893
		 -0.38176674 8.7475309e-18 -0.57614231 -0.35055852 8.6317761e-18 -0.5766952 -0.37140232 8.6318092e-18 -0.57667398
		 -0.35998276 1.0979934e-17 -0.56611049 -0.35999799 8.6316694e-18 -0.57668614 -0.38175929 1.0358003e-17 -0.56888938
		 -0.35999012 1.0358003e-17 -0.56891143 -0.37086704 1.1958091e-17 -0.56169426 -0.3708747 1.0358003e-17 -0.56890041
		 -0.37088257 8.6316694e-18 -0.57667512 -0.34487402 5.1790039e-18 -0.59225088 -0.3600654 5.1790035e-18 -0.59223551
		 -0.36001369 5.1790014e-18 -0.59223557 -0.36301398 6.9054063e-18 -0.58445752 -0.36000583 6.9053348e-18 -0.58446085
		 -0.37088248 8.585339e-18 -0.57688379 -0.36001384 5.134033e-18 -0.5924381 -0.40426815 8.6317761e-18 -0.57664084
		 -0.38342431 8.6318092e-18 -0.57666183 -0.39482248 1.0979934e-17 -0.56607527 -0.39482868 8.6316694e-18 -0.57665092
		 -0.40998408 5.1790039e-18 -0.59218502 -0.39479271 5.1790035e-18 -0.5922004 -0.39484441 5.1790014e-18 -0.59220034
		 -0.39182839 6.9054063e-18 -0.58442831 -0.39483654 6.9053348e-18 -0.58442563 -0.38830197 7.9453469e-18 -0.57974845
		 -0.38829792 8.6316694e-18 -0.57665753 -0.39484465 5.134033e-18 -0.59240288 -0.41003129 -5.1790051e-18 -0.63883328
		 -0.3449212 -5.1790051e-18 -0.63889915 -0.36011261 -5.1790051e-18 -0.63888383 -0.39483988 -5.1790051e-18 -0.63884866
		 -0.34284893 -1.7263359e-18 -0.62335181 -0.35802889 -1.7263342e-18 -0.62333643 -0.36006087 -5.1790018e-18 -0.63888383
		 -0.36006063 -5.1340346e-18 -0.63868129 -0.41207209 -1.7263359e-18 -0.62328178 -0.39689213 -1.7263342e-18 -0.62329715
		 -0.39489162 -5.1790018e-18 -0.6388486 -0.39489144 -5.1340346e-18 -0.63864607 -0.38186139 -1.2030112e-17 -0.66971648
		 -0.38184643 -8.7475318e-18 -0.65493304 -0.35063714 -8.6317778e-18 -0.65444332 -0.37148097 -8.6318108e-18 -0.65442234
		 -0.36007661 -8.6316719e-18 -0.65443325 -0.36307693 -6.9054072e-18 -0.64665586 -0.36006874 -6.905336e-18 -0.64665854
		 -0.37096071 -8.5853398e-18 -0.65421361 -0.37096122 -8.6316719e-18 -0.65442228 -0.36008281 -1.0979937e-17 -0.6650089
		 -0.36008447 -1.0358004e-17 -0.66220796 -0.38185367 -1.0358004e-17 -0.66218597 -0.37096909 -1.0358004e-17 -0.66219699
		 -0.370976 -1.1958093e-17 -0.66940314 -0.40434682 -8.6317778e-18 -0.65438896 -0.38350296 -8.6318108e-18 -0.65441018
		 -0.39490733 -8.6316719e-18 -0.65439802 -0.3918913 -6.9054072e-18 -0.64662671 -0.39489946 -6.905336e-18 -0.64662331
		 -0.38837656 -8.6316719e-18 -0.65440464 -0.38837436 -7.9453485e-18 -0.65131372 -0.39492255 -1.0979937e-17 -0.66497368
		 -0.26098746 0 -0.61565989 -0.33064887 0 -0.61558944 -0.29576308 1.2084337e-17 -0.56120169
		 -0.29587322 -1.2084337e-17 -0.67004764 -0.27622586 0 -0.61564451 -0.31541044 0 -0.61560488
		 -0.2958585 -8.8618481e-18 -0.65553486 -0.29577777 8.8618473e-18 -0.57571447 -0.2611987 1.7263334e-18 -0.607885
		 -0.33042189 1.7263334e-18 -0.60781497 -0.31524193 1.7263326e-18 -0.60783029 -0.27637866 1.7263326e-18 -0.60786963
		 -0.30011731 1.203011e-17 -0.56144148 -0.30013222 8.7475309e-18 -0.57622492 -0.268924 8.6317761e-18 -0.57677782
		 -0.28976786 8.6318092e-18 -0.57675654 -0.27834827 1.0979934e-17 -0.5661931 -0.27836347 8.6316694e-18 -0.57676876
		 -0.30012482 1.0358003e-17 -0.56897199 -0.2783556 1.0358003e-17 -0.56899399 -0.28923255 1.1958091e-17 -0.56177688
		 -0.28924021 1.0358003e-17 -0.56898302 -0.28924808 8.6316694e-18 -0.57675773 -0.26323953 5.1790039e-18 -0.59233344
		 -0.27843094 5.1790035e-18 -0.59231812 -0.2783792 5.1790014e-18 -0.59231818 -0.28137949 6.9054063e-18 -0.58454007
		 -0.27837133 6.9053348e-18 -0.58454347 -0.28924799 8.585339e-18 -0.57696635 -0.27837938 5.134033e-18 -0.59252065
		 -0.32263368 8.6317761e-18 -0.57672346 -0.30178982 8.6318092e-18 -0.57674438 -0.31318802 1.0979934e-17 -0.56615788
		 -0.31319422 8.6316694e-18 -0.57673347 -0.32834959 5.1790039e-18 -0.59226757 -0.31315821 5.1790035e-18 -0.59228295
		 -0.31320992 5.1790014e-18 -0.59228289 -0.3101939 6.9054063e-18 -0.58451092 -0.31320205 6.9053348e-18 -0.58450818
		 -0.30666745 7.9453469e-18 -0.579831 -0.30666345 8.6316694e-18 -0.57674009 -0.31321019 5.134033e-18 -0.59248543
		 -0.3283968 -5.1790051e-18 -0.6389159 -0.26328671 -5.1790051e-18 -0.63898176 -0.27847812 -5.1790051e-18 -0.63896638
		 -0.31320542 -5.1790051e-18 -0.63893127 -0.26121444 -1.7263359e-18 -0.62343442 -0.2763944 -1.7263342e-18 -0.62341905
		 -0.27842641 -5.1790018e-18 -0.63896644 -0.27842617 -5.1340346e-18 -0.6387639 -0.33043763 -1.7263359e-18 -0.62336439
		 -0.31525767 -1.7263342e-18 -0.62337971 -0.3132571 -5.1790018e-18 -0.63893121 -0.31325698 -5.1340346e-18 -0.63872868
		 -0.30022693 -1.2030112e-17 -0.66979903 -0.30021194 -8.7475318e-18 -0.65501565 -0.26900268 -8.6317778e-18 -0.65452588
		 -0.28984648 -8.6318108e-18 -0.65450495 -0.27844214 -8.6316719e-18 -0.65451586 -0.2814424 -6.9054072e-18 -0.64673841
		 -0.27843428 -6.905336e-18 -0.64674115 -0.28932622 -8.5853398e-18 -0.65429616 -0.28932673 -8.6316719e-18 -0.65450484
		 -0.27844834 -1.0979937e-17 -0.66509151 -0.27845001 -1.0358004e-17 -0.66229057 -0.30021921 -1.0358004e-17 -0.66226852
		 -0.2893346 -1.0358004e-17 -0.66227955 -0.28934151 -1.1958093e-17 -0.66948569 -0.3227123 -8.6317778e-18 -0.65447158
		 -0.3018685 -8.6318108e-18 -0.6544928 -0.31327283 -8.6316719e-18 -0.65448064 -0.31025684 -6.9054072e-18 -0.64670926
		 -0.31326497 -6.905336e-18 -0.64670593 -0.30674207 -8.6316719e-18 -0.65448725 -0.30673987 -7.9453485e-18 -0.65139627
		 -0.31328806 -1.0979937e-17 -0.66505629 -0.21284229 -1.2084337e-17 -0.77939808 -0.20340897 -1.2084337e-17 -0.77940762
		 -0.20329887 1.2084337e-17 -0.67056167 -0.2185373 1.2084337e-17 -0.67054623 -0.21861804 -5.6393576e-18 -0.75036663
		 -0.22985646 -3.6655839e-18 -0.74146616 -0.22987133 -6.9283548e-18 -0.75616038 -0.20335391 0 -0.72498465
		 -0.21859235 0 -0.72496921 -0.20332639 6.0421685e-18 -0.69777316 -0.21856482 6.0421685e-18 -0.69775772
		 -0.20331262 9.0632525e-18 -0.68416739 -0.21855105 9.0632525e-18 -0.68415195 -0.21654178 1.2084337e-17 -0.67054826
		 -0.21655555 9.0632525e-18 -0.68415397 -0.21656932 6.0421685e-18 -0.69775975 -0.20334014 3.0210836e-18 -0.71137887
		 -0.21857858 3.0210836e-18 -0.71136349 -0.21658307 3.0210836e-18 -0.71136546 -0.21659684 0 -0.72497123
		 -0.20338145 -6.0421697e-18 -0.75219613 -0.22986729 -6.0421697e-18 -0.75216931 -0.20336768 -3.0210845e-18 -0.73859036
		 -0.21860611 -3.0210845e-18 -0.73857498 -0.21661061 -3.0210845e-18 -0.73857701;
	setAttr ".vt[996:1161]" -0.21662438 -6.0421697e-18 -0.75218272 -0.2033952 -9.063255e-18 -0.76580191
		 -0.2202879 -9.0632484e-18 -0.76578474 -0.21663813 -9.063255e-18 -0.7657885 -0.21664356 -1.0259438e-17 -0.77117562
		 -0.13927582 8.8618473e-18 -0.68513924 -0.099728435 8.8618473e-18 -0.68517923 -0.10588171 1.2084337e-17 -0.6706602
		 -0.17028224 1.2084337e-17 -0.67059505 -0.15313327 -6.5658247e-18 -0.75460529 -0.11800507 -5.1215624e-18 -0.74813646
		 -0.13408685 -8.8625645e-18 -0.76496816 -0.163122 -9.022973e-18 -0.76566124 -0.1331037 -1.2093737e-17 -0.77952105
		 -0.10295226 -5.3892562e-18 -0.74935728 -0.13293234 1.7269058e-18 -0.7172786 -0.11522298 1.7234043e-18 -0.71731228
		 -0.13501269 8.8618473e-18 -0.68514353 -0.13499799 1.2084337e-17 -0.67063075 -0.13502333 2.3637199e-18 -0.71440852
		 -0.1350224 7.6613046e-18 -0.69055027 -0.11737056 8.8618473e-18 -0.68516141 -0.11735588 1.2084337e-17 -0.67064857
		 -0.12627837 5.1771146e-18 -0.70174694 -0.13502946 5.176969e-18 -0.70173872 -0.11740309 1.7232852e-18 -0.71731061
		 -0.11739591 2.4536443e-18 -0.71402133 -0.15739039 8.631561e-18 -0.686158 -0.13846073 8.6305957e-18 -0.68618149
		 -0.15264012 1.2084337e-17 -0.67061287 -0.15265585 8.6306528e-18 -0.68616688 -0.14475445 5.1775216e-18 -0.70172644
		 -0.15265851 7.3541253e-18 -0.69191587 -0.11800584 -5.1841369e-18 -0.74841827 -0.10296257 -5.1840195e-18 -0.74843293
		 -0.12282625 -1.7257502e-18 -0.73283821 -0.10665046 -1.7265873e-18 -0.7328583 -0.11741883 -1.730399e-18 -0.73286462
		 -0.11743456 -5.1840823e-18 -0.74841857 -0.13510332 -8.8532504e-18 -0.76492518 -0.13510901 -1.2081635e-17 -0.77946454
		 -0.12901954 -8.6715039e-18 -0.76411283 -0.10666203 -8.6428355e-18 -0.76400632 -0.1174503 -8.6377665e-18 -0.76397258
		 -0.12003544 -6.9165774e-18 -0.75621843 -0.11744243 -6.9109244e-18 -0.7561956 -0.12621954 -8.3651344e-18 -0.7627359
		 -0.12627137 -8.6377665e-18 -0.7639637 -0.11748227 -1.115249e-17 -0.77529788 -0.13946193 -8.6578505e-18 -0.76404077
		 -0.16155609 -8.6377665e-18 -0.763928 -0.15272583 -6.6634105e-18 -0.75504518 -0.15273453 -8.6377665e-18 -0.76393688
		 -0.15274179 -1.0800771e-17 -0.77367818 -0.018497169 0 -0.72517163 -0.088158578 0 -0.72510117
		 -0.053272799 1.2084337e-17 -0.67071342 -0.053382918 -1.2084337e-17 -0.77955937 -0.033735588 0 -0.72515625
		 -0.072920144 0 -0.72511661 -0.053368226 -8.8618481e-18 -0.7650466 -0.053287476 8.8618473e-18 -0.6852262
		 -0.018708408 1.7263334e-18 -0.71739674 -0.087931603 1.7263334e-18 -0.7173267 -0.072751641 1.7263326e-18 -0.71734202
		 -0.03388837 1.7263326e-18 -0.71738136 -0.057627022 1.203011e-17 -0.67095321 -0.057641938 8.7475309e-18 -0.68573666
		 -0.026433721 8.6317761e-18 -0.68628955 -0.047277555 8.6318092e-18 -0.68626827 -0.03585799 1.0979934e-17 -0.67570484
		 -0.03587319 8.6316694e-18 -0.68628049 -0.057634532 1.0358003e-17 -0.67848372 -0.035865322 1.0358003e-17 -0.67850572
		 -0.046742275 1.1958091e-17 -0.67128861 -0.04674992 1.0358003e-17 -0.67849475 -0.046757787 8.6316694e-18 -0.68626946
		 -0.020749241 5.1790039e-18 -0.70184517 -0.035940632 5.1790035e-18 -0.70182985 -0.03588891 5.1790014e-18 -0.70182991
		 -0.038889199 6.9054063e-18 -0.6940518 -0.035881042 6.9053348e-18 -0.6940552 -0.046757698 8.585339e-18 -0.68647808
		 -0.035889074 5.134033e-18 -0.70203239 -0.080143377 8.6317761e-18 -0.68623519 -0.059299543 8.6318092e-18 -0.68625611
		 -0.070697725 1.0979934e-17 -0.67566961 -0.070703909 8.6316694e-18 -0.6862452 -0.085859314 5.1790039e-18 -0.70177931
		 -0.070667922 5.1790035e-18 -0.70179468 -0.07071963 5.1790014e-18 -0.70179462 -0.06770362 6.9054063e-18 -0.69402266
		 -0.070711762 6.9053348e-18 -0.69401991 -0.06417717 7.9453469e-18 -0.68934274 -0.064173147 8.6316694e-18 -0.68625182
		 -0.070719883 5.134033e-18 -0.70199716 -0.085906506 -5.1790051e-18 -0.74842763 -0.020796433 -5.1790051e-18 -0.74849349
		 -0.035987824 -5.1790051e-18 -0.74847811 -0.070715114 -5.1790051e-18 -0.74844301 -0.018724144 -1.7263359e-18 -0.73294616
		 -0.033904105 -1.7263342e-18 -0.73293078 -0.035936102 -5.1790018e-18 -0.74847817 -0.035935864 -5.1340346e-18 -0.74827564
		 -0.087947339 -1.7263359e-18 -0.73287612 -0.072767377 -1.7263342e-18 -0.73289144 -0.070766822 -5.1790018e-18 -0.74844295
		 -0.070766672 -5.1340346e-18 -0.74824041 -0.057736635 -1.2030112e-17 -0.77931076 -0.057721645 -8.7475318e-18 -0.76452738
		 -0.02651237 -8.6317778e-18 -0.76403761 -0.047356203 -8.6318108e-18 -0.76401669 -0.035951838 -8.6316719e-18 -0.7640276
		 -0.038952127 -6.9054072e-18 -0.75625014 -0.03594397 -6.905336e-18 -0.75625288 -0.046835929 -8.5853398e-18 -0.76380789
		 -0.046836436 -8.6316719e-18 -0.76401657 -0.035958037 -1.0979937e-17 -0.77460325 -0.035959706 -1.0358004e-17 -0.77180231
		 -0.057728916 -1.0358004e-17 -0.77178025 -0.046844304 -1.0358004e-17 -0.77179128 -0.046851233 -1.1958093e-17 -0.77899742
		 -0.080222026 -8.6317778e-18 -0.76398331 -0.059378192 -8.6318108e-18 -0.76400453 -0.070782557 -8.6316719e-18 -0.76399237
		 -0.067766547 -6.9054072e-18 -0.756221 -0.070774689 -6.905336e-18 -0.75621766 -0.064251795 -8.6316719e-18 -0.76399899
		 -0.064249575 -7.9453485e-18 -0.76090801 -0.070797771 -1.0979937e-17 -0.77456802 0.055722203 -1.2084337e-17 -0.77679068
		 0.065155521 -1.2084337e-17 -0.77680022 0.065265633 1.2084337e-17 -0.66795427 0.050027199 1.2084337e-17 -0.66793883
		 0.04994645 -5.6393576e-18 -0.74775922 0.038708024 -3.6655839e-18 -0.73885876 0.038693156 -6.9283548e-18 -0.75355297
		 0.065210573 0 -0.72237724 0.049972143 0 -0.7223618 0.065238103 6.0421685e-18 -0.69516575
		 0.049999669 6.0421685e-18 -0.69515032 0.065251864 9.0632525e-18 -0.68155998 0.050013434 9.0632525e-18 -0.68154454
		 0.052022707 1.2084337e-17 -0.66794086 0.052008942 9.0632525e-18 -0.68154657 0.051995177 6.0421685e-18 -0.69515234
		 0.065224342 3.0210836e-18 -0.70877147 0.049985908 3.0210836e-18 -0.70875609 0.051981416 3.0210836e-18 -0.70875806
		 0.051967651 0 -0.72236383 0.065183043 -6.0421697e-18 -0.74958873 0.038697194 -6.0421697e-18 -0.74956191
		 0.065196812 -3.0210845e-18 -0.73598295 0.049958378 -3.0210845e-18 -0.73596758 0.051953886 -3.0210845e-18 -0.7359696
		 0.051940121 -6.0421697e-18 -0.74957532 0.065169282 -9.063255e-18 -0.76319444 0.048276592 -9.0632484e-18 -0.76317739
		 0.05192636 -9.063255e-18 -0.76318109 0.051920932 -1.0259438e-17 -0.76856822 0.096256278 5.3976703e-18 -0.69809967
		 0.096266188 7.5728509e-18 -0.68830353 0.14306997 7.5728509e-18 -0.68835092 0.14309052 1.2084337e-17 -0.66803294
		 0.15832895 1.2084337e-17 -0.66804838 0.1583084 7.5728509e-18 -0.68836629;
	setAttr ".vt[1162:1327]" 0.16520198 7.5728509e-18 -0.68837327 0.1709924 4.3503612e-18 -0.70289195
		 0.15829371 4.3503612e-18 -0.70287907 0.15821883 -1.2084337e-17 -0.77689433 0.14660859 -1.2084337e-17 -0.77688265
		 0.11584378 4.3503612e-18 -0.70283616 0.14301197 -5.1559847e-18 -0.74567646 0.14305528 4.3503612e-18 -0.70286369
		 0.15828176 1.7263326e-18 -0.71469665 0.10683059 1.7263326e-18 -0.71464461 0.12334299 1.7263326e-18 -0.7146613
		 0.14304332 1.7263326e-18 -0.71468127 0.13363664 7.5728509e-18 -0.68834132 0.13362196 4.3503612e-18 -0.70285416
		 0.13362573 5.1790014e-18 -0.69912225 0.096886091 5.1790014e-18 -0.69908512 0.1149514 7.5728509e-18 -0.68832242
		 0.11494049 5.1790014e-18 -0.69910336 0.11492477 1.7263326e-18 -0.71465278 0.14307478 8.6316694e-18 -0.68358243
		 0.15831321 8.6316694e-18 -0.6835978 0.15234242 1.2084337e-17 -0.6680423 0.15232669 8.6316694e-18 -0.68359172
		 0.16950345 5.1790014e-18 -0.69915855 0.15231097 5.1790014e-18 -0.6991412 0.15229523 1.7263326e-18 -0.71469063
		 0.15824644 -6.0249065e-18 -0.74960512 0.12915599 -6.0249065e-18 -0.74957567 0.13357468 -6.0249065e-18 -0.74958014
		 0.13359366 -1.8604508e-18 -0.73082513 0.1167751 -1.7263342e-18 -0.73020411 0.13321036 -1.7263342e-18 -0.73022074
		 0.11491198 -1.0794765e-18 -0.72728902 0.15826602 -1.7263342e-18 -0.73024607 0.14302759 -1.7263342e-18 -0.73023069
		 0.1522795 -1.7263342e-18 -0.73024005 0.15225992 -6.0249065e-18 -0.7495991 0.13356771 -7.5566233e-18 -0.75647843
		 0.15823457 -8.6316719e-18 -0.76134491 0.13666411 -8.6316719e-18 -0.76132309 0.15224804 -8.6316719e-18 -0.76133889
		 0.1522323 -1.2084337e-17 -0.77688831 0.25006732 0 -0.72256422 0.18040591 0 -0.72249377
		 0.21529169 1.2084337e-17 -0.66810602 0.21518157 -1.2084337e-17 -0.77695197 0.2348289 0 -0.72254884
		 0.19564435 0 -0.72250921 0.21519627 -8.8618481e-18 -0.76243919 0.21527702 8.8618473e-18 -0.6826188
		 0.24985608 1.7263334e-18 -0.71478927 0.18063289 1.7263334e-18 -0.7147193 0.19581285 1.7263326e-18 -0.71473461
		 0.23467612 1.7263326e-18 -0.71477395 0.21093747 1.203011e-17 -0.66834581 0.21092255 8.7475309e-18 -0.68312925
		 0.24213077 8.6317761e-18 -0.68368214 0.22128694 8.6318092e-18 -0.68366086 0.2327065 1.0979934e-17 -0.67309743
		 0.2326913 8.6316694e-18 -0.68367302 0.21092996 1.0358003e-17 -0.67587632 0.23269917 1.0358003e-17 -0.67589831
		 0.22182222 1.1958091e-17 -0.6686812 0.22181457 1.0358003e-17 -0.67588735 0.2218067 8.6316694e-18 -0.68366206
		 0.24781525 5.1790039e-18 -0.69923776 0.23262386 5.1790035e-18 -0.69922245 0.23267558 5.1790014e-18 -0.69922251
		 0.22967529 6.9054063e-18 -0.6914444 0.23268345 6.9053348e-18 -0.69144779 0.22180679 8.585339e-18 -0.68387067
		 0.23267542 5.134033e-18 -0.69942498 0.18842112 8.6317761e-18 -0.68362778 0.20926495 8.6318092e-18 -0.68364871
		 0.19786677 1.0979934e-17 -0.67306221 0.19786058 8.6316694e-18 -0.6836378 0.18270518 5.1790039e-18 -0.6991719
		 0.19789657 5.1790035e-18 -0.69918728 0.19784486 5.1790014e-18 -0.69918722 0.20086087 6.9054063e-18 -0.69141525
		 0.19785273 6.9053348e-18 -0.69141251 0.20438732 7.9453469e-18 -0.68673533 0.20439135 8.6316694e-18 -0.68364441
		 0.19784461 5.134033e-18 -0.69938976 0.18265799 -5.1790051e-18 -0.74582022 0.24776806 -5.1790051e-18 -0.74588609
		 0.23257667 -5.1790051e-18 -0.74587071 0.19784938 -5.1790051e-18 -0.7458356 0.24984035 -1.7263359e-18 -0.73033875
		 0.23466039 -1.7263342e-18 -0.73032337 0.23262839 -5.1790018e-18 -0.74587077 0.23262863 -5.1340346e-18 -0.74566823
		 0.18061715 -1.7263359e-18 -0.73026872 0.19579712 -1.7263342e-18 -0.73028404 0.19779767 -5.1790018e-18 -0.74583554
		 0.19779782 -5.1340346e-18 -0.74563301 0.21082786 -1.2030112e-17 -0.77670336 0.21084285 -8.7475318e-18 -0.76191998
		 0.24205212 -8.6317778e-18 -0.7614302 0.22120829 -8.6318108e-18 -0.76140928 0.23261265 -8.6316719e-18 -0.76142019
		 0.22961237 -6.9054072e-18 -0.75364274 0.23262052 -6.905336e-18 -0.75364548 0.22172856 -8.5853398e-18 -0.76120055
		 0.22172806 -8.6316719e-18 -0.76140916 0.23260646 -1.0979937e-17 -0.77199584 0.23260479 -1.0358004e-17 -0.7691949
		 0.21083558 -1.0358004e-17 -0.76917291 0.22172019 -1.0358004e-17 -0.76918387 0.22171326 -1.1958093e-17 -0.77639002
		 0.18834247 -8.6317778e-18 -0.7613759 0.2091863 -8.6318108e-18 -0.76139712 0.19778194 -8.6316719e-18 -0.76138496
		 0.20079795 -6.9054072e-18 -0.75361359 0.1977898 -6.905336e-18 -0.75361025 0.2043127 -8.6316719e-18 -0.76139158
		 0.20431492 -7.9453485e-18 -0.75830066 0.19776672 -1.0979937e-17 -0.77196062 0.29821247 -1.2084337e-17 -0.66727895
		 0.3076458 -1.2084337e-17 -0.66728848 0.30775589 1.2084337e-17 -0.55844253 0.29251745 1.2084337e-17 -0.5584271
		 0.29243672 -5.6393576e-18 -0.63824749 0.28119829 -3.6655839e-18 -0.62934703 0.28118342 -6.9283548e-18 -0.64404124
		 0.30770084 0 -0.61286551 0.29246241 0 -0.61285007 0.30772835 6.0421685e-18 -0.58565402
		 0.29248995 6.0421685e-18 -0.58563858 0.30774212 9.0632525e-18 -0.57204825 0.29250368 9.0632525e-18 -0.57203281
		 0.29451296 1.2084337e-17 -0.55842912 0.29449922 9.0632525e-18 -0.57203484 0.29448545 6.0421685e-18 -0.58564061
		 0.30771461 3.0210836e-18 -0.59925973 0.29247618 3.0210836e-18 -0.59924436 0.29447168 3.0210836e-18 -0.59924632
		 0.29445791 0 -0.6128521 0.30767331 -6.0421697e-18 -0.64007699 0.28118744 -6.0421697e-18 -0.64005017
		 0.30768707 -3.0210845e-18 -0.62647122 0.29244864 -3.0210845e-18 -0.62645584 0.29444414 -3.0210845e-18 -0.62645787
		 0.29443038 -6.0421697e-18 -0.64006358 0.30765954 -9.063255e-18 -0.65368271 0.29076687 -9.0632484e-18 -0.65366566
		 0.29441661 -9.063255e-18 -0.65366936 0.29441118 -1.0259438e-17 -0.65905648 0.38238668 -1.2084337e-17 -0.66736412
		 0.40034628 -1.2084337e-17 -0.66738224 0.37390098 -3.1822093e-18 -0.62726384 0.41058266 4.4360571e-18 -0.59299135
		 0.37630001 -3.2614747e-18 -0.62762326 0.3762368 1.2093448e-17 -0.55847073 0.34168518 4.5235199e-18 -0.59252775
		 0.37609386 3.2224806e-19 -0.6114834 0.37613279 8.8618473e-18 -0.57302451 0.35688385 4.5920477e-18 -0.59223449
		 0.39534277 4.5920477e-18 -0.59227341 0.40838745 1.7337276e-18 -0.60515934 0.34377506 1.7323627e-18 -0.6051001
		 0.36175647 1.7336854e-18 -0.60511237 0.39044413 1.7336854e-18 -0.60514134 0.38045359 1.2032522e-17 -0.55874938
		 0.38044214 8.7564033e-18 -0.57350373 0.40496844 8.6424534e-18 -0.57404172;
	setAttr ".vt[1328:1493]" 0.3822858 8.6426974e-18 -0.5740177 0.39338344 1.1062228e-17 -0.56313229
		 0.39337119 8.6426974e-18 -0.57402891 0.41042155 5.1881963e-18 -0.58960384 0.39516369 5.1881918e-18 -0.5895884
		 0.39336145 6.5005229e-18 -0.5836764 0.39230454 6.9154446e-18 -0.58180666 0.39336333 6.9154446e-18 -0.58180773
		 0.38690642 8.6426974e-18 -0.57402235 0.38690412 8.1394705e-18 -0.5762887 0.39334404 2.6835724e-18 -0.60086638
		 0.39333969 1.7336854e-18 -0.60514432 0.34727782 8.642522e-18 -0.57398307 0.36997774 8.6426974e-18 -0.57400525
		 0.35892203 1.1065401e-17 -0.56308317 0.35891181 8.6426974e-18 -0.57399404 0.34182179 5.1880408e-18 -0.58953512
		 0.35706839 5.1881918e-18 -0.5895499 0.3589021 6.5092278e-18 -0.58360231 0.35994327 6.9154446e-18 -0.58177394
		 0.35890394 6.9154446e-18 -0.58177286 0.36967662 8.6198705e-18 -0.57410771 0.36967671 8.6426974e-18 -0.57400495
		 0.35888034 1.7336854e-18 -0.60510945 0.3588846 2.6748672e-18 -0.60087073 0.3798219 -5.1753275e-18 -0.63624609
		 0.36125109 -5.1775857e-18 -0.63623744 0.38039815 -3.1881352e-18 -0.6272971 0.38040417 4.2769208e-19 -0.61101288
		 0.39662632 -1.7208707e-18 -0.62070554 0.3803944 -1.7208202e-18 -0.62068892 0.39332396 -1.7208202e-18 -0.62070203
		 0.40428033 6.4859232e-21 -0.61293399 0.39333183 6.4329836e-21 -0.61292315 0.40195453 1.7336854e-18 -0.60515302
		 0.40194666 6.4329836e-21 -0.61293185 0.40194368 -6.4675101e-19 -0.61587352 0.39332348 -2.199929e-18 -0.62285972
		 0.35091561 -1.7112555e-18 -0.62061602 0.35886458 -1.7208202e-18 -0.62066716 0.35887244 6.4329836e-21 -0.61288828
		 0.38040227 6.4329836e-21 -0.61291009 0.3696399 5.6422403e-19 -0.61038709 0.36963737 6.4329836e-21 -0.61289918
		 0.3696295 -1.7208202e-18 -0.62067801 0.35883358 -4.4014173e-18 -0.63273942 0.38037783 -5.3624705e-18 -0.63708943
		 0.38035023 -1.1417399e-17 -0.66435844 0.39008409 -8.6298322e-18 -0.65181416 0.38036293 -8.6298322e-18 -0.65180433
		 0.39327675 -1.2084337e-17 -0.66737509 0.3932876 -9.7082077e-18 -0.65667397 0.37183857 -8.6298322e-18 -0.65179569
		 0.49255759 0 -0.61305249 0.42289618 0 -0.61298203 0.45778197 1.2084337e-17 -0.55859429
		 0.45767182 -1.2084337e-17 -0.66744024 0.47731918 0 -0.61303711 0.43813461 0 -0.61299747
		 0.45768654 -8.8618481e-18 -0.65292746 0.45776728 8.8618473e-18 -0.57310706 0.49234635 1.7263334e-18 -0.60527754
		 0.42312315 1.7263334e-18 -0.60520756 0.43830311 1.7263326e-18 -0.60522288 0.47716638 1.7263326e-18 -0.60526222
		 0.45342773 1.203011e-17 -0.55883408 0.45341283 8.7475309e-18 -0.57361752 0.48462105 8.6317761e-18 -0.57417041
		 0.46377718 8.6318092e-18 -0.57414913 0.47519678 1.0979934e-17 -0.5635857 0.47518158 8.6316694e-18 -0.57416129
		 0.45342022 1.0358003e-17 -0.56636459 0.47518945 1.0358003e-17 -0.56638658 0.46431249 1.1958091e-17 -0.55916947
		 0.46430483 1.0358003e-17 -0.56637561 0.46429697 8.6316694e-18 -0.57415032 0.49030551 5.1790039e-18 -0.58972603
		 0.47511411 5.1790035e-18 -0.58971071 0.47516584 5.1790014e-18 -0.58971077 0.47216555 6.9054063e-18 -0.58193266
		 0.47517371 6.9053348e-18 -0.58193606 0.46429706 8.585339e-18 -0.57435894 0.47516567 5.134033e-18 -0.58991325
		 0.43091136 8.6317761e-18 -0.57411605 0.45175523 8.6318092e-18 -0.57413697 0.44035703 1.0979934e-17 -0.56355047
		 0.44035083 8.6316694e-18 -0.57412606 0.42519546 5.1790039e-18 -0.58966017 0.44038683 5.1790035e-18 -0.58967555
		 0.44033512 5.1790014e-18 -0.58967549 0.44335115 6.9054063e-18 -0.58190352 0.44034299 6.9053348e-18 -0.58190078
		 0.4468776 7.9453469e-18 -0.5772236 0.44688159 8.6316694e-18 -0.57413268 0.44033486 5.134033e-18 -0.58987802
		 0.42514825 -5.1790051e-18 -0.63630849 0.49025834 -5.1790051e-18 -0.63637435 0.47506693 -5.1790051e-18 -0.63635898
		 0.44033962 -5.1790051e-18 -0.63632387 0.49233061 -1.7263359e-18 -0.62082702 0.47715065 -1.7263342e-18 -0.62081164
		 0.47511864 -5.1790018e-18 -0.63635904 0.47511888 -5.1340346e-18 -0.6361565 0.42310742 -1.7263359e-18 -0.62075698
		 0.43828738 -1.7263342e-18 -0.6207723 0.44028795 -5.1790018e-18 -0.63632381 0.44028807 -5.1340346e-18 -0.63612127
		 0.45331812 -1.2030112e-17 -0.66719162 0.45333311 -8.7475318e-18 -0.65240824 0.48454237 -8.6317778e-18 -0.65191847
		 0.46369857 -8.6318108e-18 -0.65189755 0.4751029 -8.6316719e-18 -0.65190846 0.47210264 -6.9054072e-18 -0.644131
		 0.47511077 -6.905336e-18 -0.64413375 0.46421883 -8.5853398e-18 -0.65168881 0.46421832 -8.6316719e-18 -0.65189743
		 0.4750967 -1.0979937e-17 -0.66248411 0.47509503 -1.0358004e-17 -0.65968317 0.45332584 -1.0358004e-17 -0.65966117
		 0.46421045 -1.0358004e-17 -0.65967214 0.46420354 -1.1958093e-17 -0.66687828 0.43083274 -8.6317778e-18 -0.65186417
		 0.45167655 -8.6318108e-18 -0.65188539 0.44027221 -8.6316719e-18 -0.65187323 0.44328821 -6.9054072e-18 -0.64410186
		 0.44028008 -6.905336e-18 -0.64409852 0.44680297 -8.6316719e-18 -0.65187985 0.44680518 -7.9453485e-18 -0.64878893
		 0.44025698 -1.0979937e-17 -0.66244888 0.43379843 -1.2084337e-17 -0.50561875 0.44323176 -1.2084337e-17 -0.50562829
		 0.44334185 1.2084337e-17 -0.39678231 0.42810342 1.2084337e-17 -0.3967669 0.42802268 -5.6393576e-18 -0.4765873
		 0.41678426 -3.6655839e-18 -0.46768683 0.41676939 -6.9283548e-18 -0.48238102 0.44328681 0 -0.45120531
		 0.42804837 0 -0.45118988 0.44331431 6.0421685e-18 -0.4239938 0.42807591 6.0421685e-18 -0.42397839
		 0.44332808 9.0632525e-18 -0.41038805 0.42808965 9.0632525e-18 -0.41037264 0.43009892 1.2084337e-17 -0.39676893
		 0.43008518 9.0632525e-18 -0.41037467 0.43007141 6.0421685e-18 -0.42398041 0.44330058 3.0210836e-18 -0.43759954
		 0.42806214 3.0210836e-18 -0.43758413 0.43005764 3.0210836e-18 -0.43758616 0.43004388 0 -0.4511919
		 0.44325927 -6.0421697e-18 -0.4784168 0.41677341 -6.0421697e-18 -0.47839001 0.44327304 -3.0210845e-18 -0.46481106
		 0.4280346 -3.0210845e-18 -0.46479565 0.43003011 -3.0210845e-18 -0.46479765 0.43001634 -6.0421697e-18 -0.47840339
		 0.4432455 -9.063255e-18 -0.49202254 0.42635283 -9.0632484e-18 -0.49200544 0.43000257 -9.063255e-18 -0.49200916
		 0.42999715 -1.0259438e-17 -0.49739629 0.5290882 -1.2084348e-18 -0.45673442 0.49425751 -1.2084348e-18 -0.45669916
		 0.51162332 -1.2084337e-17 -0.50569749 0.53959811 -5.961609e-18 -0.47815144 0.4837043 -5.961609e-18 -0.47809491
		 0.51173341 1.2084337e-17 -0.39685151 0.47829431 4.9142966e-18 -0.42910868;
	setAttr ".vt[1494:1659]" 0.54510719 4.9142966e-18 -0.42917627 0.51163799 -8.8618481e-18 -0.49118468
		 0.51166439 -3.0613665e-18 -0.46506166 0.52434987 -5.9616073e-18 -0.478136 0.49895251 -5.9616073e-18 -0.47811031
		 0.51168275 9.6674583e-19 -0.44692066 0.51171875 8.8618473e-18 -0.41136429 0.52984178 4.9142966e-18 -0.42916083
		 0.49355978 4.9142966e-18 -0.42912412 0.48179811 1.7267329e-18 -0.44346774 0.54157436 1.7267329e-18 -0.44352821
		 0.52235395 1.7262838e-18 -0.4435108 0.50101846 1.7262838e-18 -0.44348919 0.51590526 1.2027373e-17 -0.39711225
		 0.51589072 8.7552369e-18 -0.41184863 0.48314181 8.6324685e-18 -0.41236842 0.50563771 8.6316967e-18 -0.41239464
		 0.49504143 1.1120608e-17 -0.40117487 0.49502796 8.6316694e-18 -0.41238403 0.47831845 5.1792231e-18 -0.42791557
		 0.49360102 5.1790014e-18 -0.42793202 0.49501795 6.4619796e-18 -0.42215544 0.4960508 6.9053617e-18 -0.42015967
		 0.49502009 6.9053348e-18 -0.42015874 0.50545907 8.6316694e-18 -0.41239458 0.50545895 8.6175163e-18 -0.41245833
		 0.49500382 3.3666135e-18 -0.43609571 0.49499652 1.7263326e-18 -0.44348291 0.54029357 8.6324685e-18 -0.41242623
		 0.51779771 8.6316967e-18 -0.41240695 0.52841663 1.1120608e-17 -0.40120864 0.52840739 8.6316694e-18 -0.4124178
		 0.54508543 5.1792231e-18 -0.42798313 0.52980286 5.1790014e-18 -0.42796865 0.52839768 6.4619796e-18 -0.42218921
		 0.52736884 6.9053617e-18 -0.42019135 0.52839953 6.9053348e-18 -0.42019251 0.5221467 8.1392107e-18 -0.41462931
		 0.52214873 8.6316694e-18 -0.41241148 0.52837592 1.7263326e-18 -0.44351667 0.52838355 3.3666135e-18 -0.43612951
		 0.53937674 -5.1787983e-18 -0.47462577 0.48393282 -5.1787983e-18 -0.47456968 0.52389026 -5.1789952e-18 -0.47461098
		 0.49941927 -5.1789952e-18 -0.47458622 0.51583618 -3.2175382e-18 -0.4657692 0.51585567 1.0733562e-18 -0.44644475
		 0.49155295 -1.7266055e-18 -0.45903006 0.51584291 -1.7263342e-18 -0.45905343 0.49498078 -1.7263342e-18 -0.45903233
		 0.49496505 -5.1790018e-18 -0.47458175 0.48614666 -3.4531937e-18 -0.46680045 0.49497291 -3.4526676e-18 -0.46680701
		 0.48663473 -3.2278862e-18 -0.46578628 0.48662806 -3.4526676e-18 -0.46679857 0.48662019 -5.1790018e-18 -0.47457331
		 0.50523525 -3.4526097e-18 -0.46681714 0.50541186 -1.7263342e-18 -0.45904288 0.50540394 -3.4305719e-18 -0.46671808
		 0.53178805 -1.7266055e-18 -0.45907077 0.52836019 -1.7263342e-18 -0.45906609 0.52834451 -5.1790018e-18 -0.47461551
		 0.51809001 -3.4526097e-18 -0.46683013 0.52835238 -3.4526676e-18 -0.4668408 0.52210158 -1.7263342e-18 -0.45905975
		 0.52209371 -3.4526676e-18 -0.46683446 0.52209014 -4.2989594e-18 -0.47064582 0.53717858 -3.4531937e-18 -0.4668521
		 0.53669256 -3.2278862e-18 -0.46583691 0.53669721 -3.4526676e-18 -0.46684924 0.53668934 -5.1790018e-18 -0.47462395
		 0.51579565 -1.2015524e-17 -0.50539178 0.5158112 -8.7056764e-18 -0.49048558 0.48648351 -8.631786e-18 -0.49012312
		 0.50661945 -8.6317149e-18 -0.49014318 0.49494931 -8.6316719e-18 -0.49013117 0.49962872 -6.9053476e-18 -0.48236123
		 0.49495718 -6.905336e-18 -0.48235646 0.50538087 -8.4926427e-18 -0.4895156 0.50538039 -8.6316719e-18 -0.49014172
		 0.49493796 -1.0871498e-17 -0.50021845 0.49494147 -1.0358004e-17 -0.49790588 0.51580358 -1.0358004e-17 -0.49792698
		 0.50537252 -1.0358004e-17 -0.49791643 0.50536633 -1.1928394e-17 -0.50498885 0.53679454 -8.631786e-18 -0.49017403
		 0.5166586 -8.6317149e-18 -0.49015331 0.52832878 -8.6316719e-18 -0.49016494 0.52366507 -6.9053476e-18 -0.48238555
		 0.52833664 -6.905336e-18 -0.48239022 0.52207011 -8.6316719e-18 -0.49015862 0.522075 -7.6242552e-18 -0.48562163
		 0.52831972 -1.0871498e-17 -0.50025225 0.62814355 0 -0.45139229 0.55848217 0 -0.45132184
		 0.59336793 1.2084337e-17 -0.39693409 0.59325778 -1.2084337e-17 -0.50578004 0.61290514 0 -0.45137689
		 0.57372057 0 -0.45133725 0.59327251 -8.8618481e-18 -0.49126726 0.59335327 8.8618473e-18 -0.41144687
		 0.62793231 1.7263334e-18 -0.44361737 0.55870914 1.7263334e-18 -0.44354734 0.57388908 1.7263326e-18 -0.44356272
		 0.61275232 1.7263326e-18 -0.44360203 0.5890137 1.203011e-17 -0.39717391 0.58899879 8.7475309e-18 -0.41195732
		 0.62020701 8.6317761e-18 -0.41251019 0.59936315 8.6318092e-18 -0.41248897 0.61078274 1.0979934e-17 -0.4019255
		 0.61076754 8.6316694e-18 -0.41250113 0.58900619 1.0358003e-17 -0.40470439 0.61077541 1.0358003e-17 -0.40472642
		 0.59989846 1.1958091e-17 -0.39750925 0.59989083 1.0358003e-17 -0.40471539 0.59988296 8.6316694e-18 -0.41249013
		 0.62589145 5.1790039e-18 -0.42806587 0.61070007 5.1790035e-18 -0.42805049 0.61075181 5.1790014e-18 -0.42805055
		 0.60775149 6.9054063e-18 -0.42027247 0.61075968 6.9053348e-18 -0.42027584 0.59988302 8.585339e-18 -0.41269878
		 0.61075163 5.134033e-18 -0.42825305 0.56649733 8.6317761e-18 -0.41245586 0.58734119 8.6318092e-18 -0.41247681
		 0.57594299 1.0979934e-17 -0.40189025 0.57593679 8.6316694e-18 -0.4124659 0.56078142 5.1790039e-18 -0.42799997
		 0.5759728 5.1790035e-18 -0.42801535 0.57592106 5.1790014e-18 -0.42801532 0.57893711 6.9054063e-18 -0.42024332
		 0.57592893 6.9053348e-18 -0.42024061 0.58246356 7.9453469e-18 -0.4155634 0.58246756 8.6316694e-18 -0.41247249
		 0.57592082 5.134033e-18 -0.42821783 0.56073421 -5.1790051e-18 -0.4746483 0.6258443 -5.1790051e-18 -0.47471416
		 0.61065292 -5.1790051e-18 -0.47469878 0.57592559 -5.1790051e-18 -0.47466365 0.62791657 -1.7263359e-18 -0.4591668
		 0.61273658 -1.7263342e-18 -0.45915145 0.6107046 -5.1790018e-18 -0.47469884 0.61070484 -5.1340346e-18 -0.4744963
		 0.55869341 -1.7263359e-18 -0.45909679 0.57387334 -1.7263342e-18 -0.45911214 0.57587391 -5.1790018e-18 -0.47466359
		 0.57587403 -5.1340346e-18 -0.47446108 0.58890408 -1.2030112e-17 -0.50553143 0.58891904 -8.7475318e-18 -0.49074805
		 0.62012833 -8.6317778e-18 -0.49025828 0.59928453 -8.6318108e-18 -0.49023736 0.61068887 -8.6316719e-18 -0.49024826
		 0.60768861 -6.9054072e-18 -0.48247081 0.61069673 -6.905336e-18 -0.48247355 0.59980476 -8.5853398e-18 -0.49002859
		 0.59980428 -8.6316719e-18 -0.49023724 0.61068267 -1.0979937e-17 -0.50082392 0.610681 -1.0358004e-17 -0.49802297
		 0.58891177 -1.0358004e-17 -0.49800095 0.59979641 -1.0358004e-17 -0.49801195 0.5997895 -1.1958093e-17 -0.50521809
		 0.56641871 -8.6317778e-18 -0.49020398 0.58726251 -8.6318108e-18 -0.4902252 0.57585818 -8.6316719e-18 -0.49021304
		 0.57887417 -6.9054072e-18 -0.48244166 0.57586604 -6.905336e-18 -0.4824383;
	setAttr ".vt[1660:1825]" 0.58238894 -8.6316719e-18 -0.49021962 0.58239114 -7.9453485e-18 -0.4871287
		 0.57584298 -1.0979937e-17 -0.50078869 0.53533292 8.8665473e-18 -0.20787729 0.57488024 8.8665473e-18 -0.2079173
		 0.56872702 1.2089037e-17 -0.19339827 0.50432646 1.2089037e-17 -0.1933331 0.52147543 -6.5611247e-18 -0.27734336
		 0.55660367 -5.1168623e-18 -0.27087453 0.54052186 -8.8578644e-18 -0.28770623 0.51148671 -9.0182729e-18 -0.28839928
		 0.54150504 -1.2089037e-17 -0.30225915 0.57165647 -5.3845562e-18 -0.27209532 0.5416764 1.7316058e-18 -0.24001664
		 0.55938572 1.7281044e-18 -0.24005033 0.53959602 8.8665473e-18 -0.2078816 0.53961068 1.2089037e-17 -0.19336881
		 0.53958535 2.3684199e-18 -0.23714657 0.53958631 7.6660047e-18 -0.21328837 0.55723816 8.8665473e-18 -0.20789945
		 0.55725282 1.2089037e-17 -0.19338666 0.54833031 5.1818146e-18 -0.22448501 0.53957921 5.181669e-18 -0.22447681
		 0.55720562 1.7279853e-18 -0.24004866 0.55721283 2.4583444e-18 -0.23675942 0.51721835 8.6362611e-18 -0.20889609
		 0.53614801 8.6352958e-18 -0.20891958 0.5219686 1.2089037e-17 -0.19335096 0.52195287 8.6353528e-18 -0.20890497
		 0.5298543 5.1822216e-18 -0.22446448 0.52195024 7.3588254e-18 -0.21465394 0.5566029 -5.1794369e-18 -0.27115634
		 0.57164615 -5.1793194e-18 -0.27117103 0.55178249 -1.7210502e-18 -0.25557625 0.5679583 -1.7218873e-18 -0.2555964
		 0.55718988 -1.7256989e-18 -0.25560266 0.55717415 -5.1793823e-18 -0.27115667 0.53950542 -8.8485504e-18 -0.28766325
		 0.5394997 -1.2076935e-17 -0.30220261 0.54558915 -8.6668039e-18 -0.2868509 0.56794667 -8.6381355e-18 -0.28674442
		 0.55715841 -8.6330665e-18 -0.28671068 0.5545733 -6.9118774e-18 -0.2789565 0.55716628 -6.9062244e-18 -0.27893364
		 0.54838914 -8.3604344e-18 -0.28547397 0.54833734 -8.6330665e-18 -0.28670174 0.55712646 -1.114779e-17 -0.29803595
		 0.53514677 -8.6531504e-18 -0.28677887 0.51305264 -8.6330665e-18 -0.28666604 0.52188289 -6.6587105e-18 -0.27778327
		 0.52187419 -8.6330665e-18 -0.28667498 0.52186692 -1.0796071e-17 -0.29641628 0.65611154 4.7000402e-21 -0.24790971
		 0.5864501 4.7000402e-21 -0.24783924 0.62133592 1.2089037e-17 -0.19345148 0.62122577 -1.2079637e-17 -0.30229747
		 0.64087313 4.7000402e-21 -0.24789429 0.60168856 4.7000402e-21 -0.24785465 0.6212405 -8.8571481e-18 -0.28778467
		 0.6213212 8.8665473e-18 -0.20796429 0.6559003 1.7310334e-18 -0.24013478 0.58667713 1.7310334e-18 -0.24006474
		 0.60185707 1.7310326e-18 -0.2400801 0.64072037 1.7310326e-18 -0.24011943 0.61698169 1.203481e-17 -0.1936913
		 0.61696678 8.752231e-18 -0.20847471 0.648175 8.6364761e-18 -0.20902759 0.62733114 8.6365092e-18 -0.20900635
		 0.63875073 1.0984634e-17 -0.19844289 0.63873553 8.6363694e-18 -0.20901853 0.61697417 1.0362703e-17 -0.20122179
		 0.6387434 1.0362703e-17 -0.20124382 0.62786645 1.1962791e-17 -0.19402665 0.62785876 1.0362703e-17 -0.20123281
		 0.62785089 8.6363694e-18 -0.20900752 0.6538595 5.1837039e-18 -0.22458325 0.63866806 5.1837035e-18 -0.22456789
		 0.6387198 5.1837014e-18 -0.22456795 0.63571954 6.9101064e-18 -0.21678987 0.63872766 6.9100348e-18 -0.21679324
		 0.62785101 8.5900391e-18 -0.20921618 0.63871962 5.138733e-18 -0.22477047 0.59446532 8.6364761e-18 -0.20897326
		 0.61530918 8.6365092e-18 -0.20899419 0.60391098 1.0984634e-17 -0.19840765 0.60390484 8.6363694e-18 -0.20898329
		 0.58874941 5.1837039e-18 -0.22451739 0.60394078 5.1837035e-18 -0.22453275 0.60388911 5.1837014e-18 -0.22453271
		 0.6069051 6.9101064e-18 -0.21676072 0.60389698 6.9100348e-18 -0.216758 0.61043155 7.9500469e-18 -0.21208082
		 0.61043561 8.6363694e-18 -0.20898989 0.60388881 5.138733e-18 -0.22473523 0.5887022 -5.1743051e-18 -0.27116567
		 0.65381229 -5.1743051e-18 -0.27123156 0.63862091 -5.1743051e-18 -0.27121618 0.60389358 -5.1743051e-18 -0.27118105
		 0.65588456 -1.7216358e-18 -0.2556842 0.64070463 -1.7216342e-18 -0.25566885 0.63867259 -5.1743018e-18 -0.27121621
		 0.63867283 -5.1293346e-18 -0.27101371 0.5866614 -1.7216358e-18 -0.25561416 0.60184133 -1.7216342e-18 -0.25562954
		 0.6038419 -5.1743018e-18 -0.27118099 0.60384202 -5.1293346e-18 -0.27097848 0.61687207 -1.2025412e-17 -0.30204883
		 0.61688703 -8.7428317e-18 -0.28726542 0.64809632 -8.6270777e-18 -0.28677571 0.62725252 -8.6271108e-18 -0.28675476
		 0.63865685 -8.6269718e-18 -0.28676566 0.6356566 -6.9007071e-18 -0.27898821 0.63866472 -6.900636e-18 -0.27899092
		 0.62777281 -8.5806398e-18 -0.28654599 0.62777227 -8.6269718e-18 -0.28675464 0.63865066 -1.0975237e-17 -0.29734132
		 0.63864899 -1.0353304e-17 -0.29454038 0.61687982 -1.0353304e-17 -0.29451835 0.6277644 -1.0353304e-17 -0.29452935
		 0.62775749 -1.1953393e-17 -0.30173552 0.5943867 -8.6270777e-18 -0.28672135 0.6152305 -8.6271108e-18 -0.28674257
		 0.60382617 -8.6269718e-18 -0.28673041 0.60684216 -6.9007071e-18 -0.27895907 0.60383403 -6.900636e-18 -0.2789557
		 0.61035693 -8.6269718e-18 -0.28673702 0.61035913 -7.9406485e-18 -0.28364611 0.60381097 -1.0975237e-17 -0.29730606
		 0.737746 4.7000402e-21 -0.24799229 0.66808462 4.7000402e-21 -0.24792182 0.70297039 1.2089037e-17 -0.19353406
		 0.7028603 -1.2079637e-17 -0.30238006 0.7225076 4.7000402e-21 -0.24797687 0.68332303 4.7000402e-21 -0.24793723
		 0.70287496 -8.8571481e-18 -0.28786725 0.70295572 8.8665473e-18 -0.20804687 0.73753476 1.7310334e-18 -0.24021736
		 0.6683116 1.7310334e-18 -0.24014732 0.68349159 1.7310326e-18 -0.2401627 0.72235483 1.7310326e-18 -0.24020201
		 0.69861615 1.203481e-17 -0.19377388 0.69860125 8.752231e-18 -0.20855729 0.72980946 8.6364761e-18 -0.20911017
		 0.70896566 8.6365092e-18 -0.20908895 0.72038519 1.0984634e-17 -0.19852547 0.72036999 8.6363694e-18 -0.20910111
		 0.69860864 1.0362703e-17 -0.20130438 0.72037786 1.0362703e-17 -0.2013264 0.70950091 1.1962791e-17 -0.19410923
		 0.70949328 1.0362703e-17 -0.20131539 0.70948541 8.6363694e-18 -0.2090901 0.73549396 5.1837039e-18 -0.22466584
		 0.72030258 5.1837035e-18 -0.22465047 0.72035432 5.1837014e-18 -0.22465053 0.717354 6.9101064e-18 -0.21687245
		 0.72036219 6.9100348e-18 -0.21687582 0.70948553 8.5900391e-18 -0.20929876 0.72035414 5.138733e-18 -0.22485305
		 0.67609984 8.6364761e-18 -0.20905584 0.69694364 8.6365092e-18 -0.20907678 0.68554544 1.0984634e-17 -0.19849023
		 0.68553931 8.6363694e-18 -0.20906587 0.67038387 5.1837039e-18 -0.22459997 0.68557525 5.1837035e-18 -0.22461534
		 0.68552357 5.1837014e-18 -0.22461531 0.68853956 6.9101064e-18 -0.21684331;
	setAttr ".vt[1826:1991]" 0.68553144 6.9100348e-18 -0.2168406 0.69206601 7.9500469e-18 -0.2121634
		 0.69207007 8.6363694e-18 -0.20907249 0.68552333 5.138733e-18 -0.22481781 0.67033672 -5.1743051e-18 -0.27124828
		 0.73544675 -5.1743051e-18 -0.27131414 0.72025537 -5.1743051e-18 -0.27129877 0.6855281 -5.1743051e-18 -0.27126363
		 0.73751903 -1.7216358e-18 -0.25576678 0.72233909 -1.7216342e-18 -0.25575143 0.72030711 -5.1743018e-18 -0.27129883
		 0.72030735 -5.1293346e-18 -0.27109629 0.66829586 -1.7216358e-18 -0.25569677 0.68347585 -1.7216342e-18 -0.25571212
		 0.68547636 -5.1743018e-18 -0.27126357 0.68547654 -5.1293346e-18 -0.27106106 0.69850659 -1.2025412e-17 -0.30213141
		 0.69852155 -8.7428317e-18 -0.28734803 0.72973084 -8.6270777e-18 -0.28685826 0.70888698 -8.6271108e-18 -0.28683734
		 0.72029138 -8.6269718e-18 -0.28684825 0.71729106 -6.9007071e-18 -0.27907079 0.72029924 -6.900636e-18 -0.27907354
		 0.70940727 -8.5806398e-18 -0.28662857 0.70940673 -8.6269718e-18 -0.28683722 0.72028518 -1.0975237e-17 -0.2974239
		 0.72028351 -1.0353304e-17 -0.29462296 0.69851428 -1.0353304e-17 -0.29460093 0.70939887 -1.0353304e-17 -0.29461193
		 0.70939195 -1.1953393e-17 -0.3018181 0.67602116 -8.6270777e-18 -0.28680396 0.69686502 -8.6271108e-18 -0.28682518
		 0.68546063 -8.6269718e-18 -0.28681302 0.68847668 -6.9007071e-18 -0.27904165 0.68546849 -6.900636e-18 -0.27903828
		 0.69199139 -8.6269718e-18 -0.28681961 0.69199359 -7.9406485e-18 -0.28372869 0.68544543 -1.0975237e-17 -0.29738864
		 0.57179642 8.8665473e-18 0.042430967 0.6113438 8.8665473e-18 0.042430967 0.60517585 1.2089037e-17 0.05694377
		 0.5407753 1.2089037e-17 0.05694377 0.55800921 -6.5611247e-18 -0.027049091 0.59313089 -5.1168623e-18 -0.020544712
		 0.57706612 -8.8578644e-18 -0.037392687 0.54803169 -9.0182729e-18 -0.038115103 0.57806402 -1.2089037e-17 -0.051944595
		 0.60818493 -5.3845562e-18 -0.021750297 0.57817239 1.7316058e-18 0.010298047 0.59588176 1.7281044e-18 0.010282278
		 0.57605952 8.8665473e-18 0.042430967 0.57605952 1.2089037e-17 0.05694377 0.57607847 2.3684199e-18 0.013166003
		 0.57605529 7.6660047e-18 0.037024204 0.59370166 8.8665473e-18 0.042430967 0.59370166 1.2089037e-17 0.05694377
		 0.58481061 5.1818146e-18 0.025836406 0.57605952 5.181669e-18 0.025835751 0.59370166 1.7279853e-18 0.010281742
		 0.59370553 2.4583444e-18 0.013570987 0.55368286 8.6362611e-18 0.04139385 0.57261252 8.6352958e-18 0.041389503
		 0.55841738 1.2089037e-17 0.05694377 0.55841738 8.6353528e-18 0.04138976 0.56633455 5.1822216e-18 0.025838239
		 0.5584206 7.3588254e-18 0.035640791 0.59313041 -5.1794369e-18 -0.020826522 0.60817367 -5.1793194e-18 -0.020825993
		 0.58829421 -1.7210502e-18 -0.0052513331 0.60447001 -1.7218873e-18 -0.0052551031 0.59370166 -1.7256989e-18 -0.0052722692
		 0.59370166 -5.1793823e-18 -0.020826276 0.57604963 -8.8485504e-18 -0.03735074 0.57605863 -1.2076935e-17 -0.051890094
		 0.58213258 -8.6668039e-18 -0.036532227 0.60448992 -8.6381355e-18 -0.036403116 0.59370166 -8.6330665e-18 -0.036380287
		 0.59110868 -6.9118774e-18 -0.02862874 0.59370166 -6.9062244e-18 -0.028603282 0.58493114 -8.3604344e-18 -0.035152461
		 0.58488059 -8.6330665e-18 -0.036380287 0.59368116 -1.114779e-17 -0.047705594 0.57169008 -8.6531504e-18 -0.036470737
		 0.54959583 -8.6330665e-18 -0.036380287 0.55841708 -6.6587105e-18 -0.027488578 0.55841738 -8.6330665e-18 -0.036380287
		 0.55842 -1.0796071e-17 -0.046121594 0.65343094 8.8665473e-18 0.042430967 0.69297832 8.8665473e-18 0.042430967
		 0.68681037 1.2089037e-17 0.05694377 0.62240982 1.2089037e-17 0.05694377 0.63964379 -6.5611247e-18 -0.027049091
		 0.67476541 -5.1168623e-18 -0.020544712 0.65870064 -8.8578644e-18 -0.037392687 0.62966621 -9.0182729e-18 -0.038115103
		 0.65969855 -1.2089037e-17 -0.051944595 0.68981946 -5.3845562e-18 -0.021750297 0.65980691 1.7316058e-18 0.010298047
		 0.67751634 1.7281044e-18 0.010282278 0.65769404 8.8665473e-18 0.042430967 0.65769404 1.2089037e-17 0.05694377
		 0.657713 2.3684199e-18 0.013166003 0.65768981 7.6660047e-18 0.037024204 0.67533618 8.8665473e-18 0.042430967
		 0.67533618 1.2089037e-17 0.05694377 0.6664452 5.1818146e-18 0.025836406 0.65769404 5.181669e-18 0.025835751
		 0.67533618 1.7279853e-18 0.010281742 0.67534006 2.4583444e-18 0.013570987 0.63531739 8.6362611e-18 0.04139385
		 0.65424711 8.6352958e-18 0.041389503 0.64005196 1.2089037e-17 0.05694377 0.64005196 8.6353528e-18 0.04138976
		 0.64796907 5.1822216e-18 0.025838239 0.64005512 7.3588254e-18 0.035640791 0.67476493 -5.1794369e-18 -0.020826522
		 0.68980819 -5.1793194e-18 -0.020825993 0.66992873 -1.7210502e-18 -0.0052513331 0.68610454 -1.7218873e-18 -0.0052551031
		 0.67533618 -1.7256989e-18 -0.0052722692 0.67533618 -5.1793823e-18 -0.020826276 0.65768415 -8.8485504e-18 -0.03735074
		 0.65769315 -1.2076935e-17 -0.051890094 0.6637671 -8.6668039e-18 -0.036532227 0.6861245 -8.6381355e-18 -0.036403116
		 0.67533618 -8.6330665e-18 -0.036380287 0.6727432 -6.9118774e-18 -0.02862874 0.67533618 -6.9062244e-18 -0.028603282
		 0.66656572 -8.3604344e-18 -0.035152461 0.66651511 -8.6330665e-18 -0.036380287 0.67531568 -1.114779e-17 -0.047705594
		 0.65332466 -8.6531504e-18 -0.036470737 0.63123035 -8.6330665e-18 -0.036380287 0.64005166 -6.6587105e-18 -0.027488578
		 0.64005196 -8.6330665e-18 -0.036380287 0.64005452 -1.0796071e-17 -0.046121594 0.77425003 4.7000402e-21 0.0025207549
		 0.70458859 4.7000402e-21 0.0025207549 0.73941934 1.2089037e-17 0.05694377 0.73941934 -1.2079637e-17 -0.051902261
		 0.75901163 4.7000402e-21 0.0025207549 0.719827 4.7000402e-21 0.0025207549 0.73941934 -8.8571481e-18 -0.037389461
		 0.73941934 8.8665473e-18 0.042430967 0.77403092 1.7310334e-18 0.010295469 0.7048077 1.7310334e-18 0.010295469
		 0.71998763 1.7310326e-18 0.010295466 0.75885093 1.7310326e-18 0.010295466 0.73506534 1.203481e-17 0.056699552
		 0.73506534 8.752231e-18 0.041916132 0.76627415 8.6364761e-18 0.041394819 0.74543029 8.6365092e-18 0.041394968
		 0.75683916 1.0984634e-17 0.051969983 0.75683469 8.6363694e-18 0.041394338 0.73506546 1.0362703e-17 0.049169052
		 0.75683469 1.0362703e-17 0.049169052 0.74595046 1.1962791e-17 0.056375209 0.7459501 1.0362703e-17 0.049169052
		 0.7459501 8.6363694e-18 0.041394338 0.77197433 5.1837039e-18 0.025844915 0.75678295 5.1837035e-18 0.025844913
		 0.75683469 5.1837014e-18 0.025844904 0.7538265 6.9101064e-18 0.03361994 0.75683469 6.9100348e-18 0.03361962
		 0.74595034 8.5900391e-18 0.041185685 0.75683475 5.138733e-18 0.025642384;
	setAttr ".vt[1992:2157]" 0.71256447 8.6364761e-18 0.041394819 0.73340833 8.6365092e-18 0.041394968
		 0.72199941 1.0984634e-17 0.051969983 0.72200394 8.6363694e-18 0.041394338 0.70686424 5.1837039e-18 0.025844915
		 0.72205567 5.1837035e-18 0.025844913 0.72200394 5.1837014e-18 0.025844904 0.72501206 6.9101064e-18 0.03361994
		 0.72200394 6.9100348e-18 0.03361962 0.7285338 7.9500469e-18 0.038303416 0.7285347 8.6363694e-18 0.041394338
		 0.72200388 5.138733e-18 0.025642384 0.70686424 -5.1743051e-18 -0.020803411 0.77197433 -5.1743051e-18 -0.020803411
		 0.75678295 -5.1743051e-18 -0.020803411 0.72205567 -5.1743051e-18 -0.020803411 0.77403092 -1.7216358e-18 -0.0052539706
		 0.75885093 -1.7216342e-18 -0.0052539632 0.75683469 -5.1743018e-18 -0.020803396 0.75683475 -5.1293346e-18 -0.020600881
		 0.7048077 -1.7216358e-18 -0.0052539706 0.71998763 -1.7216342e-18 -0.0052539632 0.72200394 -5.1743018e-18 -0.020803396
		 0.72200388 -5.1293346e-18 -0.020600881 0.73506534 -1.2025412e-17 -0.051658053 0.73506534 -8.7428317e-18 -0.036874626
		 0.76627415 -8.6270777e-18 -0.036353316 0.74543029 -8.6271108e-18 -0.036353465 0.75683469 -8.6269718e-18 -0.036352839
		 0.7538265 -6.9007071e-18 -0.028578434 0.75683469 -6.900636e-18 -0.028578114 0.74595034 -8.5806398e-18 -0.036144178
		 0.7459501 -8.6269718e-18 -0.036352839 0.75683916 -1.0975237e-17 -0.046928484 0.75683469 -1.0353304e-17 -0.04412755
		 0.73506546 -1.0353304e-17 -0.04412755 0.7459501 -1.0353304e-17 -0.04412755 0.74595046 -1.1953393e-17 -0.051333707
		 0.71256447 -8.6270777e-18 -0.036353316 0.73340833 -8.6271108e-18 -0.036353465 0.72200394 -8.6269718e-18 -0.036352839
		 0.72501206 -6.9007071e-18 -0.028578434 0.72200394 -6.900636e-18 -0.028578114 0.7285347 -8.6269718e-18 -0.036352839
		 0.7285338 -7.9406485e-18 -0.033261914 0.72199941 -1.0975237e-17 -0.046928484 0.52790487 0 0.3006736
		 0.56745225 0 0.3006736 0.5612843 0 0.31518641 0.49688375 0 0.31518641 0.51411772 0 0.23119354
		 0.5492394 0 0.23769793 0.53317463 0 0.22084996 0.50414014 0 0.22012754 0.53417248 0 0.20629805
		 0.56429338 0 0.23649234 0.5342809 0 0.26854068 0.55199027 0 0.26852491 0.53216803 0 0.3006736
		 0.53216803 0 0.31518641 0.53218699 0 0.27140865 0.53216374 0 0.29526684 0.54981017 0 0.3006736
		 0.54981017 0 0.31518641 0.54091913 0 0.28407905 0.53216803 0 0.28407839 0.54981017 0 0.26852438
		 0.54981399 0 0.27181363 0.50979137 0 0.29963648 0.52872103 0 0.29963213 0.51452589 0 0.31518641
		 0.51452589 0 0.2996324 0.52244306 0 0.28408089 0.51452905 0 0.29388344 0.54923886 0 0.23741612
		 0.56428212 0 0.23741665 0.54440272 0 0.25299132 0.56057853 0 0.25298753 0.54981017 0 0.25297037
		 0.54981017 0 0.23741636 0.53215814 0 0.22089189 0.53216714 0 0.20635255 0.53824103 0 0.22171041
		 0.56059843 0 0.22183952 0.54981017 0 0.22186235 0.54721713 0 0.2296139 0.54981017 0 0.22963935
		 0.54103965 0 0.22309017 0.5409891 0 0.22186235 0.54978961 0 0.21053705 0.52779859 0 0.2217719
		 0.50570434 0 0.22186235 0.51452559 0 0.23075406 0.51452589 0 0.22186235 0.51452851 0 0.21212104
		 0.57652277 0 0.28507233 0.57652277 0 0.29486847 0.62332654 0 0.29486847 0.62332654 0 0.31518641
		 0.638565 0 0.31518641 0.638565 0 0.29486847 0.64545858 0 0.29486847 0.65126371 0 0.28035569
		 0.638565 0 0.28035569 0.638565 0 0.20634037 0.62695479 0 0.20634037 0.59611505 0 0.28035569
		 0.62332654 0 0.2375429 0.62332654 0 0.28035569 0.638565 0 0.26853812 0.58711386 0 0.26853812
		 0.60362625 0 0.26853812 0.62332654 0 0.26853812 0.61389327 0 0.29486847 0.61389327 0 0.28035569
		 0.61389327 0 0.28408754 0.57715356 0 0.28408754 0.59520799 0 0.29486847 0.59520799 0 0.28408754
		 0.59520799 0 0.26853812 0.62332654 0 0.29963699 0.638565 0 0.29963699 0.63257849 0 0.31518641
		 0.63257849 0 0.29963699 0.64977098 0 0.28408754 0.63257849 0 0.28408754 0.63257849 0 0.26853812
		 0.638565 0 0.23362963 0.60947454 0 0.23362963 0.61389327 0 0.23362963 0.61389327 0 0.25238466
		 0.59707403 0 0.25298867 0.61350936 0 0.25298867 0.59520799 0 0.25590187 0.638565 0 0.25298867
		 0.62332654 0 0.25298867 0.63257849 0 0.25298867 0.63257849 0 0.23362963 0.61389327 0 0.22673139
		 0.638565 0 0.22188979 0.61699456 0 0.22188979 0.63257849 0 0.22188979 0.63257849 0 0.20634037
		 0.73035848 0 0.26076341 0.66069704 0 0.26076341 0.69552779 0 0.31518641 0.69552779 0 0.20634037
		 0.71512008 0 0.26076341 0.67593551 0 0.26076341 0.69552779 0 0.22085318 0.69552779 0 0.3006736
		 0.73013937 0 0.26853812 0.66091615 0 0.26853812 0.67609614 0 0.26853812 0.71495944 0 0.26853812
		 0.69117379 0 0.31494218 0.69117385 0 0.30015877 0.72238261 0 0.29963747 0.7015388 0 0.29963762
		 0.71294767 0 0.31021261 0.71294314 0 0.29963699 0.69117391 0 0.3074117 0.71294314 0 0.3074117
		 0.70205891 0 0.31461784 0.70205855 0 0.3074117 0.70205855 0 0.29963699;
	setAttr ".vt[2158:2323]" 0.72808284 0 0.28408757 0.71289146 0 0.28408754 0.71294314 0 0.28408754
		 0.70993501 0 0.29186258 0.71294314 0 0.29186225 0.70205885 0 0.29942831 0.7129432 0 0.28388503
		 0.66867292 0 0.29963747 0.68951678 0 0.29963762 0.67810792 0 0.31021261 0.67811239 0 0.29963699
		 0.66297269 0 0.28408757 0.67816412 0 0.28408754 0.67811239 0 0.28408754 0.68112057 0 0.29186258
		 0.67811239 0 0.29186225 0.68464226 0 0.29654604 0.68464315 0 0.29963699 0.67811239 0 0.28388503
		 0.66297269 0 0.23743923 0.72808284 0 0.23743923 0.71289146 0 0.23743923 0.67816412 0 0.23743923
		 0.73013937 0 0.25298867 0.71495944 0 0.25298867 0.71294314 0 0.23743924 0.7129432 0 0.23764175
		 0.66091615 0 0.25298867 0.67609614 0 0.25298867 0.67811239 0 0.23743924 0.67811239 0 0.23764175
		 0.69117379 0 0.20658459 0.69117385 0 0.22136801 0.72238261 0 0.22188932 0.7015388 0 0.22188917
		 0.71294314 0 0.22188979 0.70993501 0 0.22966421 0.71294314 0 0.22966453 0.70205885 0 0.22209847
		 0.70205855 0 0.22188979 0.71294767 0 0.21131416 0.71294314 0 0.21411508 0.69117391 0 0.21411508
		 0.70205855 0 0.21411508 0.70205891 0 0.20690894 0.66867292 0 0.22188932 0.68951678 0 0.22188917
		 0.67811239 0 0.22188979 0.68112057 0 0.22966421 0.67811239 0 0.22966453 0.68464315 0 0.22188979
		 0.68464226 0 0.22498073 0.67810792 0 0.21131416 0.40796342 0 0.49883768 0.44751084 0 0.49883768
		 0.44134289 0 0.51335049 0.37694231 0 0.51335049 0.39417627 0 0.42935762 0.42929792 0 0.435862
		 0.41323316 0 0.41901404 0.38419873 0 0.41829163 0.41423103 0 0.40446213 0.44435194 0 0.43465641
		 0.41433945 0 0.46670476 0.43204883 0 0.46668899 0.41222656 0 0.49883768 0.41222656 0 0.51335049
		 0.41224554 0 0.46957272 0.41222233 0 0.49343091 0.4298687 0 0.49883768 0.4298687 0 0.51335049
		 0.42097768 0 0.48224312 0.41222656 0 0.48224247 0.4298687 0 0.46668845 0.42987257 0 0.46997771
		 0.38984993 0 0.49780056 0.40877959 0 0.49779621 0.39458445 0 0.51335049 0.39458445 0 0.49779648
		 0.40250158 0 0.48224497 0.39458764 0 0.49204752 0.42929742 0 0.43558019 0.44434071 0 0.43558073
		 0.42446125 0 0.45115539 0.44063708 0 0.45115161 0.4298687 0 0.45113444 0.4298687 0 0.43558043
		 0.41221666 0 0.41905597 0.41222566 0 0.40451664 0.41829959 0 0.41987449 0.44065699 0 0.42000359
		 0.4298687 0 0.42002642 0.42727572 0 0.42777798 0.4298687 0 0.42780343 0.4210982 0 0.42125425
		 0.42104763 0 0.42002642 0.42984819 0 0.40870112 0.40785715 0 0.41993597 0.3857629 0 0.42002642
		 0.39458415 0 0.42891812 0.39458445 0 0.42002642 0.39458704 0 0.41028512 0.50030118 0 0.40450445
		 0.51826078 0 0.40450445 0.49177489 0 0.44459608 0.52842188 0 0.47890571 0.49417427 0 0.44423908
		 0.49404112 0 0.51339149 0.45952398 0 0.4792996 0.4939518 0 0.46037874 0.4939518 0 0.49883768
		 0.47472233 0 0.47960821 0.51318127 0 0.47960821 0.52623898 0 0.46673548 0.46162659 0 0.46672934
		 0.47960797 0 0.4667353 0.50829566 0 0.4667353 0.49825817 0 0.51311713 0.49826166 0 0.49836281
		 0.52278847 0 0.49784961 0.50010586 0 0.49785072 0.5111925 0 0.50874734 0.51119125 0 0.49785072
		 0.52825731 0 0.48229304 0.51299948 0 0.48229301 0.51119125 0 0.48820323 0.51013243 0 0.49007186
		 0.51119125 0 0.49007186 0.50472647 0 0.49785072 0.50472647 0 0.4955844 0.51119125 0 0.47101322
		 0.51119125 0 0.4667353 0.46509784 0 0.49784994 0.4877978 0 0.49785072 0.47673103 0 0.50876158
		 0.47673184 0 0.49785072 0.45965752 0 0.48229232 0.47490415 0 0.48229301 0.47673184 0 0.48824242
		 0.47777116 0 0.49007186 0.47673184 0 0.49007186 0.48749673 0 0.49774793 0.48749673 0 0.49785072
		 0.47673184 0 0.4667353 0.47673184 0 0.470974 0.49770486 0 0.43561986 0.47913408 0 0.4356097
		 0.49827209 0 0.44456938 0.49826166 0 0.46085364 0.51449358 0 0.45117736 0.49826166 0 0.4511776
		 0.51119125 0 0.4511776 0.52213973 0 0.45895669 0.51119125 0 0.45895645 0.51980609 0 0.4667353
		 0.51980609 0 0.45895645 0.51980609 0 0.45601475 0.51119292 0 0.44901988 0.46878281 0 0.45122066
		 0.47673184 0 0.4511776 0.47673184 0 0.45895645 0.49826166 0 0.45895645 0.48749673 0 0.46146852
		 0.48749673 0 0.45895645 0.48749673 0 0.4511776 0.47671303 0 0.43910524;
	setAttr ".vt[2324:2406]" 0.49826166 0 0.43477705 0.49826166 0 0.40750808 0.50798285 0 0.42006215
		 0.49826166 0 0.42006215 0.51119125 0 0.40450445 0.51119125 0 0.4152056 0.48973727 0 0.42006215
		 0.61041707 0 0.45892748 0.54075563 0 0.45892748 0.57558632 0 0.51335049 0.57558632 0 0.40450445
		 0.5951786 0 0.45892748 0.55599403 0 0.45892748 0.57558632 0 0.41901726 0.57558632 0 0.49883768
		 0.61019796 0 0.46670219 0.54097474 0 0.46670219 0.55615473 0 0.46670219 0.59501797 0 0.46670219
		 0.57123238 0 0.51310629 0.57123244 0 0.49832284 0.60244119 0 0.49780154 0.58159733 0 0.49780169
		 0.59300619 0 0.50837672 0.59300172 0 0.49780107 0.5712325 0 0.50557578 0.59300172 0 0.50557578
		 0.58211744 0 0.51278192 0.58211708 0 0.50557578 0.58211708 0 0.49780107 0.60814136 0 0.48225164
		 0.59294999 0 0.48225164 0.59300172 0 0.48225161 0.58999354 0 0.49002665 0.59300172 0 0.49002632
		 0.58211738 0 0.49759239 0.59300172 0 0.48204911 0.54873151 0 0.49780154 0.56957531 0 0.49780169
		 0.55816644 0 0.50837672 0.55817097 0 0.49780107 0.54303128 0 0.48225164 0.55822265 0 0.48225164
		 0.55817097 0 0.48225161 0.5611791 0 0.49002665 0.55817097 0 0.49002632 0.56470084 0 0.49471015
		 0.56470174 0 0.49780107 0.55817091 0 0.48204911 0.54303128 0 0.43560332 0.60814136 0 0.43560332
		 0.59294999 0 0.43560332 0.55822265 0 0.43560332 0.61019796 0 0.45115274 0.59501797 0 0.45115274
		 0.59300172 0 0.43560332 0.59300172 0 0.43580583 0.54097474 0 0.45115274 0.55615473 0 0.45115274
		 0.55817097 0 0.43560332 0.55817091 0 0.43580583 0.57123238 0 0.40474868 0.57123244 0 0.41953209
		 0.60244119 0 0.42005339 0.58159733 0 0.42005324 0.59300172 0 0.42005387 0.58999354 0 0.42782828
		 0.59300172 0 0.42782861 0.58211738 0 0.42026255 0.58211708 0 0.42005387 0.59300619 0 0.40947825
		 0.59300172 0 0.41227916 0.5712325 0 0.41227916 0.58211708 0 0.41227916 0.58211744 0 0.40507302
		 0.54873151 0 0.42005339 0.56957531 0 0.42005324 0.55817097 0 0.42005387 0.5611791 0 0.42782828
		 0.55817097 0 0.42782861 0.56470174 0 0.42005387 0.56470084 0 0.42314482 0.55816644 0 0.40947825;
	setAttr -s 3619 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 4 6 0 5 7 0 6 7 0 8 9 0
		 8 10 0 9 11 0 10 11 0 12 13 0 12 14 0 13 15 0 14 15 0 16 17 0 16 18 0 17 19 0 18 19 0
		 20 21 0 20 22 0 21 23 0 22 23 0 24 25 0 24 26 0 25 27 0 26 27 0 28 29 0 28 30 0 29 31 0
		 30 31 0 32 33 0 32 34 0 33 35 0 34 35 0 36 37 0 36 38 0 37 39 0 38 39 0 40 41 0 40 42 0
		 41 43 0 42 43 0 44 45 0 44 46 0 45 47 0 46 47 0 48 49 0 48 50 0 49 51 0 50 51 0 52 53 0
		 52 54 0 53 55 0 54 55 0 93 57 1 57 95 0 95 94 1 94 93 1 65 59 1 59 67 0 67 66 0 66 65 1
		 61 60 1 60 64 1 64 63 0 63 61 1 62 58 0 58 61 1 63 62 0 60 65 1 66 64 0 75 69 1 69 77 0
		 77 76 1 76 75 1 71 70 1 70 74 1 74 73 1 73 71 1 72 68 0 68 71 1 73 72 1 58 72 0 73 61 1
		 74 60 1 70 75 1 76 74 1 76 65 1 77 59 0 85 78 1 78 88 1 88 87 1 87 85 1 81 80 1 80 84 1
		 84 83 1 83 81 1 82 79 0 79 81 1 83 82 1 68 82 0 83 71 1 84 70 1 86 56 0 56 85 1 87 86 1
		 79 86 0 87 81 1 88 80 1 89 92 0 92 91 1 91 90 1 90 89 1 80 90 1 91 84 1 91 75 1 92 69 0
		 78 93 1 94 88 1 94 90 1 95 89 0 123 97 1 97 125 0 125 124 1 124 123 1 105 99 1 99 107 0
		 107 106 1 106 105 1 101 100 1 100 104 1 104 103 1 103 101 1 102 98 0 98 101 1 103 102 1
		 56 102 0 103 85 1 104 78 1 100 105 1 106 104 1 106 93 1 107 57 0 115 108 1 108 118 1
		 118 117 1 117 115 1 111 110 1 110 114 1 114 113 1 113 111 1 112 109 0 109 111 1 113 112 1
		 98 112 0 113 101 1 114 100 1 116 96 0 96 115 1 117 116 1 109 116 0 117 111 1 118 110 1
		 119 122 0;
	setAttr ".ed[166:331]" 122 121 1 121 120 1 120 119 1 110 120 1 121 114 1 121 105 1
		 122 99 0 108 123 1 124 118 1 124 120 1 125 119 0 133 127 1 127 135 0 135 134 1 134 133 1
		 129 128 1 128 132 1 132 131 1 131 129 1 130 126 0 126 129 1 131 130 1 96 130 0 131 115 1
		 132 108 1 128 133 1 134 132 1 134 123 1 135 97 0 138 137 0 137 136 0 126 136 0 137 129 1
		 138 128 1 140 139 0 139 138 0 139 133 1 140 127 0 209 216 0 216 211 1 211 209 1 175 150 0
		 150 151 1 151 182 0 182 177 1 177 175 1 166 165 1 165 170 0 170 166 1 159 154 1 154 148 0
		 148 156 0 156 163 1 163 162 1 162 159 1 155 157 0 157 160 1 160 158 1 158 155 1 161 143 0
		 143 153 0 153 159 1 162 161 1 157 161 0 162 160 1 163 158 1 167 165 0 166 168 1 168 167 1
		 164 155 0 158 168 1 166 164 1 156 169 0 169 163 1 169 167 0 149 164 0 170 152 0 152 149 1
		 173 171 0 171 174 1 174 173 1 153 173 0 174 181 1 181 172 1 172 154 0 171 175 0 177 179 1
		 179 174 1 177 176 1 176 178 0 178 179 1 178 180 0 180 181 1 180 172 0 182 176 0 191 183 0
		 183 193 1 193 194 1 194 192 0 192 191 1 185 189 1 189 190 1 190 185 0 141 149 0 152 145 0
		 145 188 0 188 187 1 187 141 0 189 184 1 184 187 0 188 190 0 150 142 0 142 191 0 192 146 0
		 146 151 0 193 186 1 186 194 0 195 144 0 144 208 0 208 207 1 207 206 1 206 195 1 202 198 0
		 198 203 1 203 202 1 197 184 0 189 201 1 201 199 1 199 197 1 185 200 0 200 201 1 200 202 0
		 203 199 1 204 197 0 199 205 1 205 204 1 198 147 0 147 196 0 196 206 1 207 203 1 207 205 1
		 208 204 0 183 209 0 211 213 1 213 193 1 211 214 1 214 215 1 215 212 0 212 213 1 212 186 0
		 214 210 1 210 215 0 216 195 0 196 210 0 264 262 1 262 224 0 224 265 0 265 264 1 243 231 0
		 231 236 1 236 243 1 231 227 0 227 237 1 237 238 1 238 235 0 235 236 1;
	setAttr ".ed[332:497]" 229 233 0 233 234 1 234 230 0 230 229 1 233 218 0 218 219 0
		 219 234 0 235 232 0 232 236 1 237 228 1 228 238 0 241 220 0 220 239 0 239 242 1 242 241 1
		 217 229 0 230 241 0 242 240 1 240 217 0 239 244 0 244 242 1 244 243 0 232 240 0 247 222 0
		 222 245 0 245 250 1 250 249 1 249 247 1 227 247 0 249 237 1 249 248 1 248 228 0 250 246 1
		 246 248 0 253 223 0 223 251 0 251 252 1 252 225 0 225 260 0 260 255 1 255 259 1 259 253 1
		 258 253 0 259 258 1 255 254 1 254 226 0 226 246 0 250 257 1 257 255 1 245 256 0 256 257 1
		 256 258 0 260 254 0 263 221 0 221 262 0 264 263 1 261 263 0 264 261 1 251 261 0 265 252 0
		 334 341 0 341 336 1 336 334 1 300 275 0 275 276 1 276 307 0 307 302 1 302 300 1 291 290 1
		 290 295 0 295 291 1 284 279 1 279 273 0 273 281 0 281 288 1 288 287 1 287 284 1 280 282 0
		 282 285 1 285 283 1 283 280 1 286 268 0 268 278 0 278 284 1 287 286 1 282 286 0 287 285 1
		 288 283 1 292 290 0 291 293 1 293 292 1 289 280 0 283 293 1 291 289 1 281 294 0 294 288 1
		 294 292 0 274 289 0 295 277 0 277 274 1 298 296 0 296 299 1 299 298 1 278 298 0 299 306 1
		 306 297 1 297 279 0 296 300 0 302 304 1 304 299 1 302 301 1 301 303 0 303 304 1 303 305 0
		 305 306 1 305 297 0 307 301 0 316 308 0 308 318 1 318 319 1 319 317 0 317 316 1 310 314 1
		 314 315 1 315 310 0 266 274 0 277 270 0 270 313 0 313 312 1 312 266 0 314 309 1 309 312 0
		 313 315 0 275 267 0 267 316 0 317 271 0 271 276 0 318 311 1 311 319 0 320 269 0 269 333 0
		 333 332 1 332 331 1 331 320 1 327 323 0 323 328 1 328 327 1 322 309 0 314 326 1 326 324 1
		 324 322 1 310 325 0 325 326 1 325 327 0 328 324 1 329 322 0 324 330 1 330 329 1 323 272 0
		 272 321 0 321 331 1 332 328 1 332 330 1 333 329 0 308 334 0 336 338 1;
	setAttr ".ed[498:663]" 338 318 1 336 339 1 339 340 1 340 337 0 337 338 1 337 311 0
		 339 335 1 335 340 0 341 320 0 321 335 0 386 351 0 351 389 0 389 388 1 388 386 1 371 349 0
		 349 350 0 350 356 0 356 373 1 373 372 1 372 371 1 362 361 1 361 353 0 353 358 0 358 366 1
		 366 365 1 365 362 1 364 360 0 360 362 1 365 364 1 342 343 0 343 364 0 365 363 1 363 342 0
		 366 357 1 357 363 0 369 346 0 346 368 0 368 370 1 370 369 1 367 345 0 345 369 0 370 367 1
		 368 347 0 347 348 0 348 371 0 372 370 1 360 344 0 344 367 0 372 362 1 373 359 1 359 355 0
		 355 361 0 381 374 0 374 384 1 384 383 1 383 381 1 376 375 1 375 378 0 378 379 1 379 377 0
		 377 376 1 378 380 0 380 366 1 358 379 0 380 357 0 356 381 0 383 373 1 383 382 1 382 359 0
		 384 376 1 377 354 0 354 382 0 385 375 0 376 385 1 374 386 0 388 384 1 388 387 1 387 385 0
		 389 352 0 352 387 0 458 465 0 465 460 1 460 458 1 424 399 0 399 400 1 400 431 0 431 426 1
		 426 424 1 415 414 1 414 419 0 419 415 1 408 403 1 403 397 0 397 405 0 405 412 1 412 411 1
		 411 408 1 404 406 0 406 409 1 409 407 1 407 404 1 410 392 0 392 402 0 402 408 1 411 410 1
		 406 410 0 411 409 1 412 407 1 416 414 0 415 417 1 417 416 1 413 404 0 407 417 1 415 413 1
		 405 418 0 418 412 1 418 416 0 398 413 0 419 401 0 401 398 1 422 420 0 420 423 1 423 422 1
		 402 422 0 423 430 1 430 421 1 421 403 0 420 424 0 426 428 1 428 423 1 426 425 1 425 427 0
		 427 428 1 427 429 0 429 430 1 429 421 0 431 425 0 440 432 0 432 442 1 442 443 1 443 441 0
		 441 440 1 434 438 1 438 439 1 439 434 0 390 398 0 401 394 0 394 437 0 437 436 1 436 390 0
		 438 433 1 433 436 0 437 439 0 399 391 0 391 440 0 441 395 0 395 400 0 442 435 1 435 443 0
		 444 393 0 393 457 0 457 456 1 456 455 1 455 444 1 451 447 0 447 452 1;
	setAttr ".ed[664:829]" 452 451 1 446 433 0 438 450 1 450 448 1 448 446 1 434 449 0
		 449 450 1 449 451 0 452 448 1 453 446 0 448 454 1 454 453 1 447 396 0 396 445 0 445 455 1
		 456 452 1 456 454 1 457 453 0 432 458 0 460 462 1 462 442 1 460 463 1 463 464 1 464 461 0
		 461 462 1 461 435 0 463 459 1 459 464 0 465 444 0 445 459 0 536 531 0 531 533 1 533 536 1
		 500 472 0 472 478 0 478 507 1 507 508 1 508 475 0 475 501 0 501 500 1 494 480 0 480 495 1
		 495 494 1 485 481 0 481 482 1 482 484 0 484 492 1 492 486 1 486 485 1 483 485 0 486 483 1
		 490 489 0 489 491 1 491 490 1 487 483 0 486 491 1 489 488 0 488 487 1 484 493 0 493 492 1
		 493 490 0 477 469 0 469 487 0 488 476 0 476 494 0 495 518 1 518 477 1 498 496 0 496 499 1
		 499 498 1 481 471 0 471 498 0 499 506 1 506 497 1 497 474 0 474 482 0 496 500 0 501 502 0
		 502 504 1 504 499 1 502 503 0 503 504 1 503 505 0 505 506 1 505 497 0 507 479 1 479 508 0
		 522 529 0 529 523 1 523 522 1 511 521 0 521 515 1 515 514 1 514 511 1 480 512 0 512 525 1
		 525 514 1 515 517 1 517 495 1 513 520 0 520 519 1 519 517 1 515 513 1 519 518 1 516 477 0
		 519 516 1 520 516 0 521 513 0 478 522 0 523 524 1 524 507 1 523 528 1 528 527 1 527 524 1
		 526 479 0 527 526 1 473 526 0 527 525 1 512 473 0 528 514 1 509 468 0 468 470 0 470 511 0
		 529 510 0 510 509 1 466 534 0 534 535 1 535 532 0 532 533 1 531 466 0 532 530 0 530 533 1
		 534 467 0 467 535 0 530 509 0 510 536 0 605 612 0 612 607 1 607 605 1 571 546 0 546 547 1
		 547 578 0 578 573 1 573 571 1 562 561 1 561 566 0 566 562 1 555 550 1 550 544 0 544 552 0
		 552 559 1 559 558 1 558 555 1 551 553 0 553 556 1 556 554 1 554 551 1 557 539 0 539 549 0
		 549 555 1 558 557 1 553 557 0 558 556 1 559 554 1 563 561 0 562 564 1;
	setAttr ".ed[830:995]" 564 563 1 560 551 0 554 564 1 562 560 1 552 565 0 565 559 1
		 565 563 0 545 560 0 566 548 0 548 545 1 569 567 0 567 570 1 570 569 1 549 569 0 570 577 1
		 577 568 1 568 550 0 567 571 0 573 575 1 575 570 1 573 572 1 572 574 0 574 575 1 574 576 0
		 576 577 1 576 568 0 578 572 0 587 579 0 579 589 1 589 590 1 590 588 0 588 587 1 581 585 1
		 585 586 1 586 581 0 537 545 0 548 541 0 541 584 0 584 583 1 583 537 0 585 580 1 580 583 0
		 584 586 0 546 538 0 538 587 0 588 542 0 542 547 0 589 582 1 582 590 0 591 540 0 540 604 0
		 604 603 1 603 602 1 602 591 1 598 594 0 594 599 1 599 598 1 593 580 0 585 597 1 597 595 1
		 595 593 1 581 596 0 596 597 1 596 598 0 599 595 1 600 593 0 595 601 1 601 600 1 594 543 0
		 543 592 0 592 602 1 603 599 1 603 601 1 604 600 0 579 605 0 607 609 1 609 589 1 607 610 1
		 610 611 1 611 608 0 608 609 1 608 582 0 610 606 1 606 611 0 612 591 0 592 606 0 705 712 0
		 712 707 1 707 705 1 652 620 0 620 630 0 630 659 1 659 660 1 660 627 0 627 653 0 653 652 1
		 646 632 0 632 647 1 647 646 1 637 618 0 618 633 0 633 634 1 634 626 0 626 636 0 636 644 1
		 644 638 1 638 637 1 635 637 0 638 635 1 642 641 0 641 643 1 643 642 1 639 635 0 638 643 1
		 641 640 0 640 639 1 636 645 0 645 644 1 645 642 0 629 619 0 619 639 0 640 628 0 628 646 0
		 647 629 1 650 648 0 648 651 1 651 650 1 633 650 0 651 658 1 658 649 1 649 634 0 648 652 0
		 653 654 0 654 656 1 656 651 1 654 655 0 655 656 1 655 657 0 657 658 1 657 649 0 659 631 1
		 631 660 0 687 661 0 661 690 1 690 689 1 689 687 1 664 670 1 670 672 1 672 676 1 676 664 0
		 632 625 0 625 666 0 666 668 1 668 677 1 677 669 1 669 647 1 667 614 0 614 629 0 669 667 1
		 670 675 1 675 674 1 674 672 1 673 667 0 669 672 1 674 673 1 671 673 0;
	setAttr ".ed[996:1161]" 674 671 1 675 662 1 662 671 0 668 665 1 665 622 0 622 678 0
		 678 677 1 678 676 0 613 679 0 679 680 1 680 659 1 630 613 0 680 684 1 684 668 1 666 631 0
		 681 663 1 663 686 0 686 685 1 685 683 1 683 681 1 680 683 1 685 684 1 682 665 0 685 682 1
		 686 682 0 688 687 0 689 688 1 679 688 0 689 683 1 690 681 1 691 615 0 615 704 0 704 703 1
		 703 702 1 702 691 1 698 694 0 694 699 1 699 698 1 693 617 0 617 662 0 670 697 1 697 695 1
		 695 693 1 664 624 0 624 696 0 696 697 1 696 698 0 699 695 1 700 693 0 695 701 1 701 700 1
		 694 621 0 621 692 0 692 702 1 703 699 1 703 701 1 704 700 0 661 616 0 616 705 0 707 709 1
		 709 681 1 707 710 1 710 711 1 711 708 0 708 709 1 708 623 0 623 663 0 710 706 1 706 711 0
		 712 691 0 692 706 0 781 788 0 788 783 1 783 781 1 747 722 0 722 723 1 723 754 0 754 749 1
		 749 747 1 738 737 1 737 742 0 742 738 1 731 726 1 726 720 0 720 728 0 728 735 1 735 734 1
		 734 731 1 727 729 0 729 732 1 732 730 1 730 727 1 733 715 0 715 725 0 725 731 1 734 733 1
		 729 733 0 734 732 1 735 730 1 739 737 0 738 740 1 740 739 1 736 727 0 730 740 1 738 736 1
		 728 741 0 741 735 1 741 739 0 721 736 0 742 724 0 724 721 1 745 743 0 743 746 1 746 745 1
		 725 745 0 746 753 1 753 744 1 744 726 0 743 747 0 749 751 1 751 746 1 749 748 1 748 750 0
		 750 751 1 750 752 0 752 753 1 752 744 0 754 748 0 763 755 0 755 765 1 765 766 1 766 764 0
		 764 763 1 757 761 1 761 762 1 762 757 0 713 721 0 724 717 0 717 760 0 760 759 1 759 713 0
		 761 756 1 756 759 0 760 762 0 722 714 0 714 763 0 764 718 0 718 723 0 765 758 1 758 766 0
		 767 716 0 716 780 0 780 779 1 779 778 1 778 767 1 774 770 0 770 775 1 775 774 1 769 756 0
		 761 773 1 773 771 1 771 769 1 757 772 0 772 773 1 772 774 0 775 771 1;
	setAttr ".ed[1162:1327]" 776 769 0 771 777 1 777 776 1 770 719 0 719 768 0 768 778 1
		 779 775 1 779 777 1 780 776 0 755 781 0 783 785 1 785 765 1 783 786 1 786 787 1 787 784 0
		 784 785 1 784 758 0 786 782 1 782 787 0 788 767 0 768 782 0 817 816 1 816 818 0 818 817 1
		 807 806 1 806 797 0 797 808 1 808 807 1 803 801 1 801 799 0 799 804 1 804 803 1 802 792 0
		 792 801 0 803 802 1 800 791 0 791 802 0 803 800 1 798 800 0 804 798 1 799 806 0 807 804 1
		 805 798 0 807 805 1 796 805 0 808 796 1 813 812 1 812 793 0 793 794 0 794 810 0 810 814 1
		 814 813 1 797 812 0 813 808 1 811 796 0 813 811 1 809 811 0 814 809 1 810 795 0 795 816 0
		 817 814 1 815 809 0 817 815 1 789 790 0 790 815 0 818 789 0 887 894 0 894 889 1 889 887 1
		 853 828 0 828 829 1 829 860 0 860 855 1 855 853 1 844 843 1 843 848 0 848 844 1 837 832 1
		 832 826 0 826 834 0 834 841 1 841 840 1 840 837 1 833 835 0 835 838 1 838 836 1 836 833 1
		 839 821 0 821 831 0 831 837 1 840 839 1 835 839 0 840 838 1 841 836 1 845 843 0 844 846 1
		 846 845 1 842 833 0 836 846 1 844 842 1 834 847 0 847 841 1 847 845 0 827 842 0 848 830 0
		 830 827 1 851 849 0 849 852 1 852 851 1 831 851 0 852 859 1 859 850 1 850 832 0 849 853 0
		 855 857 1 857 852 1 855 854 1 854 856 0 856 857 1 856 858 0 858 859 1 858 850 0 860 854 0
		 869 861 0 861 871 1 871 872 1 872 870 0 870 869 1 863 867 1 867 868 1 868 863 0 819 827 0
		 830 823 0 823 866 0 866 865 1 865 819 0 867 862 1 862 865 0 866 868 0 828 820 0 820 869 0
		 870 824 0 824 829 0 871 864 1 864 872 0 873 822 0 822 886 0 886 885 1 885 884 1 884 873 1
		 880 876 0 876 881 1 881 880 1 875 862 0 867 879 1 879 877 1 877 875 1 863 878 0 878 879 1
		 878 880 0 881 877 1 882 875 0 877 883 1 883 882 1 876 825 0 825 874 0;
	setAttr ".ed[1328:1493]" 874 884 1 885 881 1 885 883 1 886 882 0 861 887 0 889 891 1
		 891 871 1 889 892 1 892 893 1 893 890 0 890 891 1 890 864 0 892 888 1 888 893 0 894 873 0
		 874 888 0 963 970 0 970 965 1 965 963 1 929 904 0 904 905 1 905 936 0 936 931 1 931 929 1
		 920 919 1 919 924 0 924 920 1 913 908 1 908 902 0 902 910 0 910 917 1 917 916 1 916 913 1
		 909 911 0 911 914 1 914 912 1 912 909 1 915 897 0 897 907 0 907 913 1 916 915 1 911 915 0
		 916 914 1 917 912 1 921 919 0 920 922 1 922 921 1 918 909 0 912 922 1 920 918 1 910 923 0
		 923 917 1 923 921 0 903 918 0 924 906 0 906 903 1 927 925 0 925 928 1 928 927 1 907 927 0
		 928 935 1 935 926 1 926 908 0 925 929 0 931 933 1 933 928 1 931 930 1 930 932 0 932 933 1
		 932 934 0 934 935 1 934 926 0 936 930 0 945 937 0 937 947 1 947 948 1 948 946 0 946 945 1
		 939 943 1 943 944 1 944 939 0 895 903 0 906 899 0 899 942 0 942 941 1 941 895 0 943 938 1
		 938 941 0 942 944 0 904 896 0 896 945 0 946 900 0 900 905 0 947 940 1 940 948 0 949 898 0
		 898 962 0 962 961 1 961 960 1 960 949 1 956 952 0 952 957 1 957 956 1 951 938 0 943 955 1
		 955 953 1 953 951 1 939 954 0 954 955 1 954 956 0 957 953 1 958 951 0 953 959 1 959 958 1
		 952 901 0 901 950 0 950 960 1 961 957 1 961 959 1 962 958 0 937 963 0 965 967 1 967 947 1
		 965 968 1 968 969 1 969 966 0 966 967 1 966 940 0 968 964 1 964 969 0 970 949 0 950 964 0
		 999 998 1 998 1000 0 1000 999 1 989 988 1 988 979 0 979 990 1 990 989 1 985 983 1
		 983 981 0 981 986 1 986 985 1 984 974 0 974 983 0 985 984 1 982 973 0 973 984 0 985 982 1
		 980 982 0 986 980 1 981 988 0 989 986 1 987 980 0 989 987 1 978 987 0 990 978 1 995 994 1
		 994 975 0 975 976 0 976 992 0 992 996 1 996 995 1 979 994 0 995 990 1 993 978 0;
	setAttr ".ed[1494:1659]" 995 993 1 991 993 0 996 991 1 992 977 0 977 998 0 999 996 1
		 997 991 0 999 997 1 971 972 0 972 997 0 1000 971 0 1048 1046 1 1046 1008 0 1008 1049 0
		 1049 1048 1 1027 1015 0 1015 1020 1 1020 1027 1 1015 1011 0 1011 1021 1 1021 1022 1
		 1022 1019 0 1019 1020 1 1013 1017 0 1017 1018 1 1018 1014 0 1014 1013 1 1017 1002 0
		 1002 1003 0 1003 1018 0 1019 1016 0 1016 1020 1 1021 1012 1 1012 1022 0 1025 1004 0
		 1004 1023 0 1023 1026 1 1026 1025 1 1001 1013 0 1014 1025 0 1026 1024 1 1024 1001 0
		 1023 1028 0 1028 1026 1 1028 1027 0 1016 1024 0 1031 1006 0 1006 1029 0 1029 1034 1
		 1034 1033 1 1033 1031 1 1011 1031 0 1033 1021 1 1033 1032 1 1032 1012 0 1034 1030 1
		 1030 1032 0 1037 1007 0 1007 1035 0 1035 1036 1 1036 1009 0 1009 1044 0 1044 1039 1
		 1039 1043 1 1043 1037 1 1042 1037 0 1043 1042 1 1039 1038 1 1038 1010 0 1010 1030 0
		 1034 1041 1 1041 1039 1 1029 1040 0 1040 1041 1 1040 1042 0 1044 1038 0 1047 1005 0
		 1005 1046 0 1048 1047 1 1045 1047 0 1048 1045 1 1035 1045 0 1049 1036 0 1118 1125 0
		 1125 1120 1 1120 1118 1 1084 1059 0 1059 1060 1 1060 1091 0 1091 1086 1 1086 1084 1
		 1075 1074 1 1074 1079 0 1079 1075 1 1068 1063 1 1063 1057 0 1057 1065 0 1065 1072 1
		 1072 1071 1 1071 1068 1 1064 1066 0 1066 1069 1 1069 1067 1 1067 1064 1 1070 1052 0
		 1052 1062 0 1062 1068 1 1071 1070 1 1066 1070 0 1071 1069 1 1072 1067 1 1076 1074 0
		 1075 1077 1 1077 1076 1 1073 1064 0 1067 1077 1 1075 1073 1 1065 1078 0 1078 1072 1
		 1078 1076 0 1058 1073 0 1079 1061 0 1061 1058 1 1082 1080 0 1080 1083 1 1083 1082 1
		 1062 1082 0 1083 1090 1 1090 1081 1 1081 1063 0 1080 1084 0 1086 1088 1 1088 1083 1
		 1086 1085 1 1085 1087 0 1087 1088 1 1087 1089 0 1089 1090 1 1089 1081 0 1091 1085 0
		 1100 1092 0 1092 1102 1 1102 1103 1 1103 1101 0 1101 1100 1 1094 1098 1 1098 1099 1
		 1099 1094 0 1050 1058 0 1061 1054 0 1054 1097 0 1097 1096 1 1096 1050 0 1098 1093 1
		 1093 1096 0 1097 1099 0 1059 1051 0 1051 1100 0 1101 1055 0 1055 1060 0 1102 1095 1
		 1095 1103 0 1104 1053 0 1053 1117 0 1117 1116 1 1116 1115 1;
	setAttr ".ed[1660:1825]" 1115 1104 1 1111 1107 0 1107 1112 1 1112 1111 1 1106 1093 0
		 1098 1110 1 1110 1108 1 1108 1106 1 1094 1109 0 1109 1110 1 1109 1111 0 1112 1108 1
		 1113 1106 0 1108 1114 1 1114 1113 1 1107 1056 0 1056 1105 0 1105 1115 1 1116 1112 1
		 1116 1114 1 1117 1113 0 1092 1118 0 1120 1122 1 1122 1102 1 1120 1123 1 1123 1124 1
		 1124 1121 0 1121 1122 1 1121 1095 0 1123 1119 1 1119 1124 0 1125 1104 0 1105 1119 0
		 1154 1153 1 1153 1155 0 1155 1154 1 1144 1143 1 1143 1134 0 1134 1145 1 1145 1144 1
		 1140 1138 1 1138 1136 0 1136 1141 1 1141 1140 1 1139 1129 0 1129 1138 0 1140 1139 1
		 1137 1128 0 1128 1139 0 1140 1137 1 1135 1137 0 1141 1135 1 1136 1143 0 1144 1141 1
		 1142 1135 0 1144 1142 1 1133 1142 0 1145 1133 1 1150 1149 1 1149 1130 0 1130 1131 0
		 1131 1147 0 1147 1151 1 1151 1150 1 1134 1149 0 1150 1145 1 1148 1133 0 1150 1148 1
		 1146 1148 0 1151 1146 1 1147 1132 0 1132 1153 0 1154 1151 1 1152 1146 0 1154 1152 1
		 1126 1127 0 1127 1152 0 1155 1126 0 1200 1165 0 1165 1203 0 1203 1202 1 1202 1200 1
		 1185 1163 0 1163 1164 0 1164 1170 0 1170 1187 1 1187 1186 1 1186 1185 1 1176 1175 1
		 1175 1167 0 1167 1172 0 1172 1180 1 1180 1179 1 1179 1176 1 1178 1174 0 1174 1176 1
		 1179 1178 1 1156 1157 0 1157 1178 0 1179 1177 1 1177 1156 0 1180 1171 1 1171 1177 0
		 1183 1160 0 1160 1182 0 1182 1184 1 1184 1183 1 1181 1159 0 1159 1183 0 1184 1181 1
		 1182 1161 0 1161 1162 0 1162 1185 0 1186 1184 1 1174 1158 0 1158 1181 0 1186 1176 1
		 1187 1173 1 1173 1169 0 1169 1175 0 1195 1188 0 1188 1198 1 1198 1197 1 1197 1195 1
		 1190 1189 1 1189 1192 0 1192 1193 1 1193 1191 0 1191 1190 1 1192 1194 0 1194 1180 1
		 1172 1193 0 1194 1171 0 1170 1195 0 1197 1187 1 1197 1196 1 1196 1173 0 1198 1190 1
		 1191 1168 0 1168 1196 0 1199 1189 0 1190 1199 1 1188 1200 0 1202 1198 1 1202 1201 1
		 1201 1199 0 1203 1166 0 1166 1201 0 1272 1279 0 1279 1274 1 1274 1272 1 1238 1213 0
		 1213 1214 1 1214 1245 0 1245 1240 1 1240 1238 1 1229 1228 1 1228 1233 0 1233 1229 1
		 1222 1217 1 1217 1211 0 1211 1219 0 1219 1226 1 1226 1225 1 1225 1222 1 1218 1220 0;
	setAttr ".ed[1826:1991]" 1220 1223 1 1223 1221 1 1221 1218 1 1224 1206 0 1206 1216 0
		 1216 1222 1 1225 1224 1 1220 1224 0 1225 1223 1 1226 1221 1 1230 1228 0 1229 1231 1
		 1231 1230 1 1227 1218 0 1221 1231 1 1229 1227 1 1219 1232 0 1232 1226 1 1232 1230 0
		 1212 1227 0 1233 1215 0 1215 1212 1 1236 1234 0 1234 1237 1 1237 1236 1 1216 1236 0
		 1237 1244 1 1244 1235 1 1235 1217 0 1234 1238 0 1240 1242 1 1242 1237 1 1240 1239 1
		 1239 1241 0 1241 1242 1 1241 1243 0 1243 1244 1 1243 1235 0 1245 1239 0 1254 1246 0
		 1246 1256 1 1256 1257 1 1257 1255 0 1255 1254 1 1248 1252 1 1252 1253 1 1253 1248 0
		 1204 1212 0 1215 1208 0 1208 1251 0 1251 1250 1 1250 1204 0 1252 1247 1 1247 1250 0
		 1251 1253 0 1213 1205 0 1205 1254 0 1255 1209 0 1209 1214 0 1256 1249 1 1249 1257 0
		 1258 1207 0 1207 1271 0 1271 1270 1 1270 1269 1 1269 1258 1 1265 1261 0 1261 1266 1
		 1266 1265 1 1260 1247 0 1252 1264 1 1264 1262 1 1262 1260 1 1248 1263 0 1263 1264 1
		 1263 1265 0 1266 1262 1 1267 1260 0 1262 1268 1 1268 1267 1 1261 1210 0 1210 1259 0
		 1259 1269 1 1270 1266 1 1270 1268 1 1271 1267 0 1246 1272 0 1274 1276 1 1276 1256 1
		 1274 1277 1 1277 1278 1 1278 1275 0 1275 1276 1 1275 1249 0 1277 1273 1 1273 1278 0
		 1279 1258 0 1259 1273 0 1308 1307 1 1307 1309 0 1309 1308 1 1298 1297 1 1297 1288 0
		 1288 1299 1 1299 1298 1 1294 1292 1 1292 1290 0 1290 1295 1 1295 1294 1 1293 1283 0
		 1283 1292 0 1294 1293 1 1291 1282 0 1282 1293 0 1294 1291 1 1289 1291 0 1295 1289 1
		 1290 1297 0 1298 1295 1 1296 1289 0 1298 1296 1 1287 1296 0 1299 1287 1 1304 1303 1
		 1303 1284 0 1284 1285 0 1285 1301 0 1301 1305 1 1305 1304 1 1288 1303 0 1304 1299 1
		 1302 1287 0 1304 1302 1 1300 1302 0 1305 1300 1 1301 1286 0 1286 1307 0 1308 1305 1
		 1306 1300 0 1308 1306 1 1280 1281 0 1281 1306 0 1309 1280 0 1380 1375 0 1375 1377 1
		 1377 1380 1 1344 1316 0 1316 1322 0 1322 1351 1 1351 1352 1 1352 1319 0 1319 1345 0
		 1345 1344 1 1338 1324 0 1324 1339 1 1339 1338 1 1329 1325 0 1325 1326 1 1326 1328 0
		 1328 1336 1 1336 1330 1 1330 1329 1 1327 1329 0 1330 1327 1 1334 1333 0 1333 1335 1;
	setAttr ".ed[1992:2157]" 1335 1334 1 1331 1327 0 1330 1335 1 1333 1332 0 1332 1331 1
		 1328 1337 0 1337 1336 1 1337 1334 0 1321 1313 0 1313 1331 0 1332 1320 0 1320 1338 0
		 1339 1362 1 1362 1321 1 1342 1340 0 1340 1343 1 1343 1342 1 1325 1315 0 1315 1342 0
		 1343 1350 1 1350 1341 1 1341 1318 0 1318 1326 0 1340 1344 0 1345 1346 0 1346 1348 1
		 1348 1343 1 1346 1347 0 1347 1348 1 1347 1349 0 1349 1350 1 1349 1341 0 1351 1323 1
		 1323 1352 0 1366 1373 0 1373 1367 1 1367 1366 1 1355 1365 0 1365 1359 1 1359 1358 1
		 1358 1355 1 1324 1356 0 1356 1369 1 1369 1358 1 1359 1361 1 1361 1339 1 1357 1364 0
		 1364 1363 1 1363 1361 1 1359 1357 1 1363 1362 1 1360 1321 0 1363 1360 1 1364 1360 0
		 1365 1357 0 1322 1366 0 1367 1368 1 1368 1351 1 1367 1372 1 1372 1371 1 1371 1368 1
		 1370 1323 0 1371 1370 1 1317 1370 0 1371 1369 1 1356 1317 0 1372 1358 1 1353 1312 0
		 1312 1314 0 1314 1355 0 1373 1354 0 1354 1353 1 1310 1378 0 1378 1379 1 1379 1376 0
		 1376 1377 1 1375 1310 0 1376 1374 0 1374 1377 1 1378 1311 0 1311 1379 0 1374 1353 0
		 1354 1380 0 1449 1456 0 1456 1451 1 1451 1449 1 1415 1390 0 1390 1391 1 1391 1422 0
		 1422 1417 1 1417 1415 1 1406 1405 1 1405 1410 0 1410 1406 1 1399 1394 1 1394 1388 0
		 1388 1396 0 1396 1403 1 1403 1402 1 1402 1399 1 1395 1397 0 1397 1400 1 1400 1398 1
		 1398 1395 1 1401 1383 0 1383 1393 0 1393 1399 1 1402 1401 1 1397 1401 0 1402 1400 1
		 1403 1398 1 1407 1405 0 1406 1408 1 1408 1407 1 1404 1395 0 1398 1408 1 1406 1404 1
		 1396 1409 0 1409 1403 1 1409 1407 0 1389 1404 0 1410 1392 0 1392 1389 1 1413 1411 0
		 1411 1414 1 1414 1413 1 1393 1413 0 1414 1421 1 1421 1412 1 1412 1394 0 1411 1415 0
		 1417 1419 1 1419 1414 1 1417 1416 1 1416 1418 0 1418 1419 1 1418 1420 0 1420 1421 1
		 1420 1412 0 1422 1416 0 1431 1423 0 1423 1433 1 1433 1434 1 1434 1432 0 1432 1431 1
		 1425 1429 1 1429 1430 1 1430 1425 0 1381 1389 0 1392 1385 0 1385 1428 0 1428 1427 1
		 1427 1381 0 1429 1424 1 1424 1427 0 1428 1430 0 1390 1382 0 1382 1431 0 1432 1386 0
		 1386 1391 0 1433 1426 1 1426 1434 0 1435 1384 0 1384 1448 0 1448 1447 1 1447 1446 1;
	setAttr ".ed[2158:2323]" 1446 1435 1 1442 1438 0 1438 1443 1 1443 1442 1 1437 1424 0
		 1429 1441 1 1441 1439 1 1439 1437 1 1425 1440 0 1440 1441 1 1440 1442 0 1443 1439 1
		 1444 1437 0 1439 1445 1 1445 1444 1 1438 1387 0 1387 1436 0 1436 1446 1 1447 1443 1
		 1447 1445 1 1448 1444 0 1423 1449 0 1451 1453 1 1453 1433 1 1451 1454 1 1454 1455 1
		 1455 1452 0 1452 1453 1 1452 1426 0 1454 1450 1 1450 1455 0 1456 1435 0 1436 1450 0
		 1485 1484 1 1484 1486 0 1486 1485 1 1475 1474 1 1474 1465 0 1465 1476 1 1476 1475 1
		 1471 1469 1 1469 1467 0 1467 1472 1 1472 1471 1 1470 1460 0 1460 1469 0 1471 1470 1
		 1468 1459 0 1459 1470 0 1471 1468 1 1466 1468 0 1472 1466 1 1467 1474 0 1475 1472 1
		 1473 1466 0 1475 1473 1 1464 1473 0 1476 1464 1 1481 1480 1 1480 1461 0 1461 1462 0
		 1462 1478 0 1478 1482 1 1482 1481 1 1465 1480 0 1481 1476 1 1479 1464 0 1481 1479 1
		 1477 1479 0 1482 1477 1 1478 1463 0 1463 1484 0 1485 1482 1 1483 1477 0 1485 1483 1
		 1457 1458 0 1458 1483 0 1486 1457 0 1579 1586 0 1586 1581 1 1581 1579 1 1526 1494 0
		 1494 1504 0 1504 1533 1 1533 1534 1 1534 1501 0 1501 1527 0 1527 1526 1 1520 1506 0
		 1506 1521 1 1521 1520 1 1511 1492 0 1492 1507 0 1507 1508 1 1508 1500 0 1500 1510 0
		 1510 1518 1 1518 1512 1 1512 1511 1 1509 1511 0 1512 1509 1 1516 1515 0 1515 1517 1
		 1517 1516 1 1513 1509 0 1512 1517 1 1515 1514 0 1514 1513 1 1510 1519 0 1519 1518 1
		 1519 1516 0 1503 1493 0 1493 1513 0 1514 1502 0 1502 1520 0 1521 1503 1 1524 1522 0
		 1522 1525 1 1525 1524 1 1507 1524 0 1525 1532 1 1532 1523 1 1523 1508 0 1522 1526 0
		 1527 1528 0 1528 1530 1 1530 1525 1 1528 1529 0 1529 1530 1 1529 1531 0 1531 1532 1
		 1531 1523 0 1533 1505 1 1505 1534 0 1561 1535 0 1535 1564 1 1564 1563 1 1563 1561 1
		 1538 1544 1 1544 1546 1 1546 1550 1 1550 1538 0 1506 1499 0 1499 1540 0 1540 1542 1
		 1542 1551 1 1551 1543 1 1543 1521 1 1541 1488 0 1488 1503 0 1543 1541 1 1544 1549 1
		 1549 1548 1 1548 1546 1 1547 1541 0 1543 1546 1 1548 1547 1 1545 1547 0 1548 1545 1
		 1549 1536 1 1536 1545 0 1542 1539 1 1539 1496 0 1496 1552 0 1552 1551 1 1552 1550 0;
	setAttr ".ed[2324:2489]" 1487 1553 0 1553 1554 1 1554 1533 1 1504 1487 0 1554 1558 1
		 1558 1542 1 1540 1505 0 1555 1537 1 1537 1560 0 1560 1559 1 1559 1557 1 1557 1555 1
		 1554 1557 1 1559 1558 1 1556 1539 0 1559 1556 1 1560 1556 0 1562 1561 0 1563 1562 1
		 1553 1562 0 1563 1557 1 1564 1555 1 1565 1489 0 1489 1578 0 1578 1577 1 1577 1576 1
		 1576 1565 1 1572 1568 0 1568 1573 1 1573 1572 1 1567 1491 0 1491 1536 0 1544 1571 1
		 1571 1569 1 1569 1567 1 1538 1498 0 1498 1570 0 1570 1571 1 1570 1572 0 1573 1569 1
		 1574 1567 0 1569 1575 1 1575 1574 1 1568 1495 0 1495 1566 0 1566 1576 1 1577 1573 1
		 1577 1575 1 1578 1574 0 1535 1490 0 1490 1579 0 1581 1583 1 1583 1555 1 1581 1584 1
		 1584 1585 1 1585 1582 0 1582 1583 1 1582 1497 0 1497 1537 0 1584 1580 1 1580 1585 0
		 1586 1565 0 1566 1580 0 1655 1662 0 1662 1657 1 1657 1655 1 1621 1596 0 1596 1597 1
		 1597 1628 0 1628 1623 1 1623 1621 1 1612 1611 1 1611 1616 0 1616 1612 1 1605 1600 1
		 1600 1594 0 1594 1602 0 1602 1609 1 1609 1608 1 1608 1605 1 1601 1603 0 1603 1606 1
		 1606 1604 1 1604 1601 1 1607 1589 0 1589 1599 0 1599 1605 1 1608 1607 1 1603 1607 0
		 1608 1606 1 1609 1604 1 1613 1611 0 1612 1614 1 1614 1613 1 1610 1601 0 1604 1614 1
		 1612 1610 1 1602 1615 0 1615 1609 1 1615 1613 0 1595 1610 0 1616 1598 0 1598 1595 1
		 1619 1617 0 1617 1620 1 1620 1619 1 1599 1619 0 1620 1627 1 1627 1618 1 1618 1600 0
		 1617 1621 0 1623 1625 1 1625 1620 1 1623 1622 1 1622 1624 0 1624 1625 1 1624 1626 0
		 1626 1627 1 1626 1618 0 1628 1622 0 1637 1629 0 1629 1639 1 1639 1640 1 1640 1638 0
		 1638 1637 1 1631 1635 1 1635 1636 1 1636 1631 0 1587 1595 0 1598 1591 0 1591 1634 0
		 1634 1633 1 1633 1587 0 1635 1630 1 1630 1633 0 1634 1636 0 1596 1588 0 1588 1637 0
		 1638 1592 0 1592 1597 0 1639 1632 1 1632 1640 0 1641 1590 0 1590 1654 0 1654 1653 1
		 1653 1652 1 1652 1641 1 1648 1644 0 1644 1649 1 1649 1648 1 1643 1630 0 1635 1647 1
		 1647 1645 1 1645 1643 1 1631 1646 0 1646 1647 1 1646 1648 0 1649 1645 1 1650 1643 0
		 1645 1651 1 1651 1650 1 1644 1593 0 1593 1642 0 1642 1652 1 1653 1649 1 1653 1651 1;
	setAttr ".ed[2490:2655]" 1654 1650 0 1629 1655 0 1657 1659 1 1659 1639 1 1657 1660 1
		 1660 1661 1 1661 1658 0 1658 1659 1 1658 1632 0 1660 1656 1 1656 1661 0 1662 1641 0
		 1642 1656 0 1710 1708 1 1708 1670 0 1670 1711 0 1711 1710 1 1689 1677 0 1677 1682 1
		 1682 1689 1 1677 1673 0 1673 1683 1 1683 1684 1 1684 1681 0 1681 1682 1 1675 1679 0
		 1679 1680 1 1680 1676 0 1676 1675 1 1679 1664 0 1664 1665 0 1665 1680 0 1681 1678 0
		 1678 1682 1 1683 1674 1 1674 1684 0 1687 1666 0 1666 1685 0 1685 1688 1 1688 1687 1
		 1663 1675 0 1676 1687 0 1688 1686 1 1686 1663 0 1685 1690 0 1690 1688 1 1690 1689 0
		 1678 1686 0 1693 1668 0 1668 1691 0 1691 1696 1 1696 1695 1 1695 1693 1 1673 1693 0
		 1695 1683 1 1695 1694 1 1694 1674 0 1696 1692 1 1692 1694 0 1699 1669 0 1669 1697 0
		 1697 1698 1 1698 1671 0 1671 1706 0 1706 1701 1 1701 1705 1 1705 1699 1 1704 1699 0
		 1705 1704 1 1701 1700 1 1700 1672 0 1672 1692 0 1696 1703 1 1703 1701 1 1691 1702 0
		 1702 1703 1 1702 1704 0 1706 1700 0 1709 1667 0 1667 1708 0 1710 1709 1 1707 1709 0
		 1710 1707 1 1697 1707 0 1711 1698 0 1780 1787 0 1787 1782 1 1782 1780 1 1746 1721 0
		 1721 1722 1 1722 1753 0 1753 1748 1 1748 1746 1 1737 1736 1 1736 1741 0 1741 1737 1
		 1730 1725 1 1725 1719 0 1719 1727 0 1727 1734 1 1734 1733 1 1733 1730 1 1726 1728 0
		 1728 1731 1 1731 1729 1 1729 1726 1 1732 1714 0 1714 1724 0 1724 1730 1 1733 1732 1
		 1728 1732 0 1733 1731 1 1734 1729 1 1738 1736 0 1737 1739 1 1739 1738 1 1735 1726 0
		 1729 1739 1 1737 1735 1 1727 1740 0 1740 1734 1 1740 1738 0 1720 1735 0 1741 1723 0
		 1723 1720 1 1744 1742 0 1742 1745 1 1745 1744 1 1724 1744 0 1745 1752 1 1752 1743 1
		 1743 1725 0 1742 1746 0 1748 1750 1 1750 1745 1 1748 1747 1 1747 1749 0 1749 1750 1
		 1749 1751 0 1751 1752 1 1751 1743 0 1753 1747 0 1762 1754 0 1754 1764 1 1764 1765 1
		 1765 1763 0 1763 1762 1 1756 1760 1 1760 1761 1 1761 1756 0 1712 1720 0 1723 1716 0
		 1716 1759 0 1759 1758 1 1758 1712 0 1760 1755 1 1755 1758 0 1759 1761 0 1721 1713 0
		 1713 1762 0 1763 1717 0 1717 1722 0 1764 1757 1 1757 1765 0 1766 1715 0 1715 1779 0;
	setAttr ".ed[2656:2821]" 1779 1778 1 1778 1777 1 1777 1766 1 1773 1769 0 1769 1774 1
		 1774 1773 1 1768 1755 0 1760 1772 1 1772 1770 1 1770 1768 1 1756 1771 0 1771 1772 1
		 1771 1773 0 1774 1770 1 1775 1768 0 1770 1776 1 1776 1775 1 1769 1718 0 1718 1767 0
		 1767 1777 1 1778 1774 1 1778 1776 1 1779 1775 0 1754 1780 0 1782 1784 1 1784 1764 1
		 1782 1785 1 1785 1786 1 1786 1783 0 1783 1784 1 1783 1757 0 1785 1781 1 1781 1786 0
		 1787 1766 0 1767 1781 0 1856 1863 0 1863 1858 1 1858 1856 1 1822 1797 0 1797 1798 1
		 1798 1829 0 1829 1824 1 1824 1822 1 1813 1812 1 1812 1817 0 1817 1813 1 1806 1801 1
		 1801 1795 0 1795 1803 0 1803 1810 1 1810 1809 1 1809 1806 1 1802 1804 0 1804 1807 1
		 1807 1805 1 1805 1802 1 1808 1790 0 1790 1800 0 1800 1806 1 1809 1808 1 1804 1808 0
		 1809 1807 1 1810 1805 1 1814 1812 0 1813 1815 1 1815 1814 1 1811 1802 0 1805 1815 1
		 1813 1811 1 1803 1816 0 1816 1810 1 1816 1814 0 1796 1811 0 1817 1799 0 1799 1796 1
		 1820 1818 0 1818 1821 1 1821 1820 1 1800 1820 0 1821 1828 1 1828 1819 1 1819 1801 0
		 1818 1822 0 1824 1826 1 1826 1821 1 1824 1823 1 1823 1825 0 1825 1826 1 1825 1827 0
		 1827 1828 1 1827 1819 0 1829 1823 0 1838 1830 0 1830 1840 1 1840 1841 1 1841 1839 0
		 1839 1838 1 1832 1836 1 1836 1837 1 1837 1832 0 1788 1796 0 1799 1792 0 1792 1835 0
		 1835 1834 1 1834 1788 0 1836 1831 1 1831 1834 0 1835 1837 0 1797 1789 0 1789 1838 0
		 1839 1793 0 1793 1798 0 1840 1833 1 1833 1841 0 1842 1791 0 1791 1855 0 1855 1854 1
		 1854 1853 1 1853 1842 1 1849 1845 0 1845 1850 1 1850 1849 1 1844 1831 0 1836 1848 1
		 1848 1846 1 1846 1844 1 1832 1847 0 1847 1848 1 1847 1849 0 1850 1846 1 1851 1844 0
		 1846 1852 1 1852 1851 1 1845 1794 0 1794 1843 0 1843 1853 1 1854 1850 1 1854 1852 1
		 1855 1851 0 1830 1856 0 1858 1860 1 1860 1840 1 1858 1861 1 1861 1862 1 1862 1859 0
		 1859 1860 1 1859 1833 0 1861 1857 1 1857 1862 0 1863 1842 0 1843 1857 0 1911 1909 1
		 1909 1871 0 1871 1912 0 1912 1911 1 1890 1878 0 1878 1883 1 1883 1890 1 1878 1874 0
		 1874 1884 1 1884 1885 1 1885 1882 0 1882 1883 1 1876 1880 0 1880 1881 1 1881 1877 0;
	setAttr ".ed[2822:2987]" 1877 1876 1 1880 1865 0 1865 1866 0 1866 1881 0 1882 1879 0
		 1879 1883 1 1884 1875 1 1875 1885 0 1888 1867 0 1867 1886 0 1886 1889 1 1889 1888 1
		 1864 1876 0 1877 1888 0 1889 1887 1 1887 1864 0 1886 1891 0 1891 1889 1 1891 1890 0
		 1879 1887 0 1894 1869 0 1869 1892 0 1892 1897 1 1897 1896 1 1896 1894 1 1874 1894 0
		 1896 1884 1 1896 1895 1 1895 1875 0 1897 1893 1 1893 1895 0 1900 1870 0 1870 1898 0
		 1898 1899 1 1899 1872 0 1872 1907 0 1907 1902 1 1902 1906 1 1906 1900 1 1905 1900 0
		 1906 1905 1 1902 1901 1 1901 1873 0 1873 1893 0 1897 1904 1 1904 1902 1 1892 1903 0
		 1903 1904 1 1903 1905 0 1907 1901 0 1910 1868 0 1868 1909 0 1911 1910 1 1908 1910 0
		 1911 1908 1 1898 1908 0 1912 1899 0 1960 1958 1 1958 1920 0 1920 1961 0 1961 1960 1
		 1939 1927 0 1927 1932 1 1932 1939 1 1927 1923 0 1923 1933 1 1933 1934 1 1934 1931 0
		 1931 1932 1 1925 1929 0 1929 1930 1 1930 1926 0 1926 1925 1 1929 1914 0 1914 1915 0
		 1915 1930 0 1931 1928 0 1928 1932 1 1933 1924 1 1924 1934 0 1937 1916 0 1916 1935 0
		 1935 1938 1 1938 1937 1 1913 1925 0 1926 1937 0 1938 1936 1 1936 1913 0 1935 1940 0
		 1940 1938 1 1940 1939 0 1928 1936 0 1943 1918 0 1918 1941 0 1941 1946 1 1946 1945 1
		 1945 1943 1 1923 1943 0 1945 1933 1 1945 1944 1 1944 1924 0 1946 1942 1 1942 1944 0
		 1949 1919 0 1919 1947 0 1947 1948 1 1948 1921 0 1921 1956 0 1956 1951 1 1951 1955 1
		 1955 1949 1 1954 1949 0 1955 1954 1 1951 1950 1 1950 1922 0 1922 1942 0 1946 1953 1
		 1953 1951 1 1941 1952 0 1952 1953 1 1952 1954 0 1956 1950 0 1959 1917 0 1917 1958 0
		 1960 1959 1 1957 1959 0 1960 1957 1 1947 1957 0 1961 1948 0 2030 2037 0 2037 2032 1
		 2032 2030 1 1996 1971 0 1971 1972 1 1972 2003 0 2003 1998 1 1998 1996 1 1987 1986 1
		 1986 1991 0 1991 1987 1 1980 1975 1 1975 1969 0 1969 1977 0 1977 1984 1 1984 1983 1
		 1983 1980 1 1976 1978 0 1978 1981 1 1981 1979 1 1979 1976 1 1982 1964 0 1964 1974 0
		 1974 1980 1 1983 1982 1 1978 1982 0 1983 1981 1 1984 1979 1 1988 1986 0 1987 1989 1
		 1989 1988 1 1985 1976 0 1979 1989 1 1987 1985 1 1977 1990 0 1990 1984 1 1990 1988 0;
	setAttr ".ed[2988:3153]" 1970 1985 0 1991 1973 0 1973 1970 1 1994 1992 0 1992 1995 1
		 1995 1994 1 1974 1994 0 1995 2002 1 2002 1993 1 1993 1975 0 1992 1996 0 1998 2000 1
		 2000 1995 1 1998 1997 1 1997 1999 0 1999 2000 1 1999 2001 0 2001 2002 1 2001 1993 0
		 2003 1997 0 2012 2004 0 2004 2014 1 2014 2015 1 2015 2013 0 2013 2012 1 2006 2010 1
		 2010 2011 1 2011 2006 0 1962 1970 0 1973 1966 0 1966 2009 0 2009 2008 1 2008 1962 0
		 2010 2005 1 2005 2008 0 2009 2011 0 1971 1963 0 1963 2012 0 2013 1967 0 1967 1972 0
		 2014 2007 1 2007 2015 0 2016 1965 0 1965 2029 0 2029 2028 1 2028 2027 1 2027 2016 1
		 2023 2019 0 2019 2024 1 2024 2023 1 2018 2005 0 2010 2022 1 2022 2020 1 2020 2018 1
		 2006 2021 0 2021 2022 1 2021 2023 0 2024 2020 1 2025 2018 0 2020 2026 1 2026 2025 1
		 2019 1968 0 1968 2017 0 2017 2027 1 2028 2024 1 2028 2026 1 2029 2025 0 2004 2030 0
		 2032 2034 1 2034 2014 1 2032 2035 1 2035 2036 1 2036 2033 0 2033 2034 1 2033 2007 0
		 2035 2031 1 2031 2036 0 2037 2016 0 2017 2031 0 2085 2083 1 2083 2045 0 2045 2086 0
		 2086 2085 1 2064 2052 0 2052 2057 1 2057 2064 1 2052 2048 0 2048 2058 1 2058 2059 1
		 2059 2056 0 2056 2057 1 2050 2054 0 2054 2055 1 2055 2051 0 2051 2050 1 2054 2039 0
		 2039 2040 0 2040 2055 0 2056 2053 0 2053 2057 1 2058 2049 1 2049 2059 0 2062 2041 0
		 2041 2060 0 2060 2063 1 2063 2062 1 2038 2050 0 2051 2062 0 2063 2061 1 2061 2038 0
		 2060 2065 0 2065 2063 1 2065 2064 0 2053 2061 0 2068 2043 0 2043 2066 0 2066 2071 1
		 2071 2070 1 2070 2068 1 2048 2068 0 2070 2058 1 2070 2069 1 2069 2049 0 2071 2067 1
		 2067 2069 0 2074 2044 0 2044 2072 0 2072 2073 1 2073 2046 0 2046 2081 0 2081 2076 1
		 2076 2080 1 2080 2074 1 2079 2074 0 2080 2079 1 2076 2075 1 2075 2047 0 2047 2067 0
		 2071 2078 1 2078 2076 1 2066 2077 0 2077 2078 1 2077 2079 0 2081 2075 0 2084 2042 0
		 2042 2083 0 2085 2084 1 2082 2084 0 2085 2082 1 2072 2082 0 2086 2073 0 2131 2096 0
		 2096 2134 0 2134 2133 1 2133 2131 1 2116 2094 0 2094 2095 0 2095 2101 0 2101 2118 1
		 2118 2117 1 2117 2116 1 2107 2106 1 2106 2098 0 2098 2103 0 2103 2111 1 2111 2110 1;
	setAttr ".ed[3154:3319]" 2110 2107 1 2109 2105 0 2105 2107 1 2110 2109 1 2087 2088 0
		 2088 2109 0 2110 2108 1 2108 2087 0 2111 2102 1 2102 2108 0 2114 2091 0 2091 2113 0
		 2113 2115 1 2115 2114 1 2112 2090 0 2090 2114 0 2115 2112 1 2113 2092 0 2092 2093 0
		 2093 2116 0 2117 2115 1 2105 2089 0 2089 2112 0 2117 2107 1 2118 2104 1 2104 2100 0
		 2100 2106 0 2126 2119 0 2119 2129 1 2129 2128 1 2128 2126 1 2121 2120 1 2120 2123 0
		 2123 2124 1 2124 2122 0 2122 2121 1 2123 2125 0 2125 2111 1 2103 2124 0 2125 2102 0
		 2101 2126 0 2128 2118 1 2128 2127 1 2127 2104 0 2129 2121 1 2122 2099 0 2099 2127 0
		 2130 2120 0 2121 2130 1 2119 2131 0 2133 2129 1 2133 2132 1 2132 2130 0 2134 2097 0
		 2097 2132 0 2203 2210 0 2210 2205 1 2205 2203 1 2169 2144 0 2144 2145 1 2145 2176 0
		 2176 2171 1 2171 2169 1 2160 2159 1 2159 2164 0 2164 2160 1 2153 2148 1 2148 2142 0
		 2142 2150 0 2150 2157 1 2157 2156 1 2156 2153 1 2149 2151 0 2151 2154 1 2154 2152 1
		 2152 2149 1 2155 2137 0 2137 2147 0 2147 2153 1 2156 2155 1 2151 2155 0 2156 2154 1
		 2157 2152 1 2161 2159 0 2160 2162 1 2162 2161 1 2158 2149 0 2152 2162 1 2160 2158 1
		 2150 2163 0 2163 2157 1 2163 2161 0 2143 2158 0 2164 2146 0 2146 2143 1 2167 2165 0
		 2165 2168 1 2168 2167 1 2147 2167 0 2168 2175 1 2175 2166 1 2166 2148 0 2165 2169 0
		 2171 2173 1 2173 2168 1 2171 2170 1 2170 2172 0 2172 2173 1 2172 2174 0 2174 2175 1
		 2174 2166 0 2176 2170 0 2185 2177 0 2177 2187 1 2187 2188 1 2188 2186 0 2186 2185 1
		 2179 2183 1 2183 2184 1 2184 2179 0 2135 2143 0 2146 2139 0 2139 2182 0 2182 2181 1
		 2181 2135 0 2183 2178 1 2178 2181 0 2182 2184 0 2144 2136 0 2136 2185 0 2186 2140 0
		 2140 2145 0 2187 2180 1 2180 2188 0 2189 2138 0 2138 2202 0 2202 2201 1 2201 2200 1
		 2200 2189 1 2196 2192 0 2192 2197 1 2197 2196 1 2191 2178 0 2183 2195 1 2195 2193 1
		 2193 2191 1 2179 2194 0 2194 2195 1 2194 2196 0 2197 2193 1 2198 2191 0 2193 2199 1
		 2199 2198 1 2192 2141 0 2141 2190 0 2190 2200 1 2201 2197 1 2201 2199 1 2202 2198 0
		 2177 2203 0 2205 2207 1 2207 2187 1 2205 2208 1 2208 2209 1 2209 2206 0 2206 2207 1;
	setAttr ".ed[3320:3485]" 2206 2180 0 2208 2204 1 2204 2209 0 2210 2189 0 2190 2204 0
		 2258 2256 1 2256 2218 0 2218 2259 0 2259 2258 1 2237 2225 0 2225 2230 1 2230 2237 1
		 2225 2221 0 2221 2231 1 2231 2232 1 2232 2229 0 2229 2230 1 2223 2227 0 2227 2228 1
		 2228 2224 0 2224 2223 1 2227 2212 0 2212 2213 0 2213 2228 0 2229 2226 0 2226 2230 1
		 2231 2222 1 2222 2232 0 2235 2214 0 2214 2233 0 2233 2236 1 2236 2235 1 2211 2223 0
		 2224 2235 0 2236 2234 1 2234 2211 0 2233 2238 0 2238 2236 1 2238 2237 0 2226 2234 0
		 2241 2216 0 2216 2239 0 2239 2244 1 2244 2243 1 2243 2241 1 2221 2241 0 2243 2231 1
		 2243 2242 1 2242 2222 0 2244 2240 1 2240 2242 0 2247 2217 0 2217 2245 0 2245 2246 1
		 2246 2219 0 2219 2254 0 2254 2249 1 2249 2253 1 2253 2247 1 2252 2247 0 2253 2252 1
		 2249 2248 1 2248 2220 0 2220 2240 0 2244 2251 1 2251 2249 1 2239 2250 0 2250 2251 1
		 2250 2252 0 2254 2248 0 2257 2215 0 2215 2256 0 2258 2257 1 2255 2257 0 2258 2255 1
		 2245 2255 0 2259 2246 0 2330 2325 0 2325 2327 1 2327 2330 1 2294 2266 0 2266 2272 0
		 2272 2301 1 2301 2302 1 2302 2269 0 2269 2295 0 2295 2294 1 2288 2274 0 2274 2289 1
		 2289 2288 1 2279 2275 0 2275 2276 1 2276 2278 0 2278 2286 1 2286 2280 1 2280 2279 1
		 2277 2279 0 2280 2277 1 2284 2283 0 2283 2285 1 2285 2284 1 2281 2277 0 2280 2285 1
		 2283 2282 0 2282 2281 1 2278 2287 0 2287 2286 1 2287 2284 0 2271 2263 0 2263 2281 0
		 2282 2270 0 2270 2288 0 2289 2312 1 2312 2271 1 2292 2290 0 2290 2293 1 2293 2292 1
		 2275 2265 0 2265 2292 0 2293 2300 1 2300 2291 1 2291 2268 0 2268 2276 0 2290 2294 0
		 2295 2296 0 2296 2298 1 2298 2293 1 2296 2297 0 2297 2298 1 2297 2299 0 2299 2300 1
		 2299 2291 0 2301 2273 1 2273 2302 0 2316 2323 0 2323 2317 1 2317 2316 1 2305 2315 0
		 2315 2309 1 2309 2308 1 2308 2305 1 2274 2306 0 2306 2319 1 2319 2308 1 2309 2311 1
		 2311 2289 1 2307 2314 0 2314 2313 1 2313 2311 1 2309 2307 1 2313 2312 1 2310 2271 0
		 2313 2310 1 2314 2310 0 2315 2307 0 2272 2316 0 2317 2318 1 2318 2301 1 2317 2322 1
		 2322 2321 1 2321 2318 1 2320 2273 0 2321 2320 1 2267 2320 0 2321 2319 1 2306 2267 0;
	setAttr ".ed[3486:3618]" 2322 2308 1 2303 2262 0 2262 2264 0 2264 2305 0 2323 2304 0
		 2304 2303 1 2260 2328 0 2328 2329 1 2329 2326 0 2326 2327 1 2325 2260 0 2326 2324 0
		 2324 2327 1 2328 2261 0 2261 2329 0 2324 2303 0 2304 2330 0 2399 2406 0 2406 2401 1
		 2401 2399 1 2365 2340 0 2340 2341 1 2341 2372 0 2372 2367 1 2367 2365 1 2356 2355 1
		 2355 2360 0 2360 2356 1 2349 2344 1 2344 2338 0 2338 2346 0 2346 2353 1 2353 2352 1
		 2352 2349 1 2345 2347 0 2347 2350 1 2350 2348 1 2348 2345 1 2351 2333 0 2333 2343 0
		 2343 2349 1 2352 2351 1 2347 2351 0 2352 2350 1 2353 2348 1 2357 2355 0 2356 2358 1
		 2358 2357 1 2354 2345 0 2348 2358 1 2356 2354 1 2346 2359 0 2359 2353 1 2359 2357 0
		 2339 2354 0 2360 2342 0 2342 2339 1 2363 2361 0 2361 2364 1 2364 2363 1 2343 2363 0
		 2364 2371 1 2371 2362 1 2362 2344 0 2361 2365 0 2367 2369 1 2369 2364 1 2367 2366 1
		 2366 2368 0 2368 2369 1 2368 2370 0 2370 2371 1 2370 2362 0 2372 2366 0 2381 2373 0
		 2373 2383 1 2383 2384 1 2384 2382 0 2382 2381 1 2375 2379 1 2379 2380 1 2380 2375 0
		 2331 2339 0 2342 2335 0 2335 2378 0 2378 2377 1 2377 2331 0 2379 2374 1 2374 2377 0
		 2378 2380 0 2340 2332 0 2332 2381 0 2382 2336 0 2336 2341 0 2383 2376 1 2376 2384 0
		 2385 2334 0 2334 2398 0 2398 2397 1 2397 2396 1 2396 2385 1 2392 2388 0 2388 2393 1
		 2393 2392 1 2387 2374 0 2379 2391 1 2391 2389 1 2389 2387 1 2375 2390 0 2390 2391 1
		 2390 2392 0 2393 2389 1 2394 2387 0 2389 2395 1 2395 2394 1 2388 2337 0 2337 2386 0
		 2386 2396 1 2397 2393 1 2397 2395 1 2398 2394 0 2373 2399 0 2401 2403 1 2403 2383 1
		 2401 2404 1 2404 2405 1 2405 2402 0 2402 2403 1 2402 2376 0 2404 2400 1 2400 2405 0
		 2406 2385 0 2386 2400 0;
	setAttr -s 1237 -ch 5475 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 4 6 -8 -6
		mu 0 4 4 5 6 7
		f 4 8 10 -12 -10
		mu 0 4 8 9 10 11
		f 4 12 14 -16 -14
		mu 0 4 12 13 14 15
		f 4 16 18 -20 -18
		mu 0 4 16 17 18 19
		f 4 20 22 -24 -22
		mu 0 4 20 21 22 23
		f 4 24 26 -28 -26
		mu 0 4 24 25 26 27
		f 4 28 30 -32 -30
		mu 0 4 28 29 30 31
		f 4 32 34 -36 -34
		mu 0 4 32 33 34 35
		f 4 36 38 -40 -38
		mu 0 4 36 37 38 39
		f 4 40 42 -44 -42
		mu 0 4 40 41 42 43
		f 4 44 46 -48 -46
		mu 0 4 44 45 46 47
		f 4 48 50 -52 -50
		mu 0 4 48 49 50 51
		f 4 52 54 -56 -54
		mu 0 4 52 53 54 55
		f 4 56 57 58 59
		mu 0 4 56 57 58 59
		f 4 60 61 62 63
		mu 0 4 60 61 62 63
		f 4 64 65 66 67
		mu 0 4 64 65 66 67
		f 4 68 69 -68 70
		mu 0 4 68 69 64 67
		f 4 71 -64 72 -66
		mu 0 4 65 60 63 66
		f 4 73 74 75 76
		mu 0 4 70 71 72 73
		f 4 77 78 79 80
		mu 0 4 74 75 76 77
		f 4 81 82 -81 83
		mu 0 4 78 79 74 77
		f 4 84 -84 85 -70
		mu 0 4 69 78 77 64
		f 4 86 -65 -86 -80
		mu 0 4 76 65 64 77
		f 4 87 -77 88 -79
		mu 0 4 75 70 73 76
		f 4 89 -72 -87 -89
		mu 0 4 73 60 65 76
		f 4 90 -61 -90 -76
		mu 0 4 72 61 60 73
		f 4 91 92 93 94
		mu 0 4 80 81 82 83
		f 4 95 96 97 98
		mu 0 4 84 85 86 87
		f 4 99 100 -99 101
		mu 0 4 88 89 84 87
		f 4 102 -102 103 -83
		mu 0 4 79 88 87 74
		f 4 104 -78 -104 -98
		mu 0 4 86 75 74 87
		f 4 105 106 -95 107
		mu 0 4 90 91 80 83
		f 4 108 -108 109 -101
		mu 0 4 89 90 83 84
		f 4 110 -96 -110 -94
		mu 0 4 82 85 84 83
		f 4 111 112 113 114
		mu 0 4 92 93 94 95
		f 4 -97 115 -114 116
		mu 0 4 86 85 95 94
		f 4 -88 -105 -117 117
		mu 0 4 70 75 86 94
		f 4 118 -74 -118 -113
		mu 0 4 93 71 70 94
		f 4 119 -60 120 -93
		mu 0 4 81 56 59 82
		f 4 121 -116 -111 -121
		mu 0 4 59 95 85 82
		f 4 122 -115 -122 -59
		mu 0 4 58 92 95 59
		f 4 123 124 125 126
		mu 0 4 96 97 98 99
		f 4 127 128 129 130
		mu 0 4 100 101 102 103
		f 4 131 132 133 134
		mu 0 4 104 105 106 107
		f 4 135 136 -135 137
		mu 0 4 108 109 104 107
		f 4 138 -138 139 -107
		mu 0 4 91 108 107 80
		f 4 140 -92 -140 -134
		mu 0 4 106 81 80 107
		f 4 141 -131 142 -133
		mu 0 4 105 100 103 106
		f 4 143 -120 -141 -143
		mu 0 4 103 56 81 106
		f 4 144 -57 -144 -130
		mu 0 4 102 57 56 103
		f 4 145 146 147 148
		mu 0 4 110 111 112 113
		f 4 149 150 151 152
		mu 0 4 114 115 116 117
		f 4 153 154 -153 155
		mu 0 4 118 119 114 117
		f 4 156 -156 157 -137
		mu 0 4 109 118 117 104
		f 4 158 -132 -158 -152
		mu 0 4 116 105 104 117
		f 4 159 160 -149 161
		mu 0 4 120 121 110 113
		f 4 162 -162 163 -155
		mu 0 4 119 120 113 114
		f 4 164 -150 -164 -148
		mu 0 4 112 115 114 113
		f 4 165 166 167 168
		mu 0 4 122 123 124 125
		f 4 -151 169 -168 170
		mu 0 4 116 115 125 124
		f 4 -142 -159 -171 171
		mu 0 4 100 105 116 124
		f 4 172 -128 -172 -167
		mu 0 4 123 101 100 124
		f 4 173 -127 174 -147
		mu 0 4 111 96 99 112
		f 4 175 -170 -165 -175
		mu 0 4 99 125 115 112
		f 4 176 -169 -176 -126
		mu 0 4 98 122 125 99
		f 4 177 178 179 180
		mu 0 4 126 127 128 129
		f 4 181 182 183 184
		mu 0 4 130 131 132 133
		f 4 185 186 -185 187
		mu 0 4 134 135 130 133
		f 4 188 -188 189 -161
		mu 0 4 121 134 133 110
		f 4 190 -146 -190 -184
		mu 0 4 132 111 110 133
		f 4 191 -181 192 -183
		mu 0 4 131 126 129 132
		f 4 193 -174 -191 -193
		mu 0 4 129 96 111 132
		f 4 194 -124 -194 -180
		mu 0 4 128 97 96 129
		f 4 197 -197 198 -187
		mu 0 4 135 138 137 130
		f 4 199 -182 -199 -196
		mu 0 4 136 131 130 137
		f 4 -192 -200 -202 202
		mu 0 4 126 131 136 140
		f 4 203 -178 -203 -201
		mu 0 4 139 127 126 140
		f 3 204 205 206
		mu 0 3 141 142 143
		f 5 207 208 209 210 211
		mu 0 5 144 145 146 147 148
		f 3 212 213 214
		mu 0 3 149 150 151
		f 6 215 216 217 218 219 220
		mu 0 6 152 153 154 155 156 157
		f 4 221 222 223 224
		mu 0 4 158 159 160 161
		f 5 225 226 227 -221 228
		mu 0 5 162 163 164 152 157
		f 4 229 -229 230 -223
		mu 0 4 159 162 157 160
		f 4 231 -224 -231 -220
		mu 0 4 156 161 160 157
		f 4 232 -213 233 234
		mu 0 4 165 150 149 166
		f 5 235 -225 236 -234 237
		mu 0 5 167 158 161 166 149
		f 3 -219 238 239
		mu 0 3 156 155 168
		f 5 -232 -240 240 -235 -237
		mu 0 5 161 156 168 165 166
		f 5 241 -238 -215 242 243
		mu 0 5 169 167 149 151 170
		f 3 244 245 246
		mu 0 3 171 172 173
		f 7 247 -247 248 249 250 -216 -228
		mu 0 7 164 171 173 174 175 153 152
		f 5 251 -212 252 253 -246
		mu 0 5 172 144 148 176 173
		f 4 254 255 256 -253
		mu 0 4 148 177 178 176
		f 5 257 258 -249 -254 -257
		mu 0 5 178 179 174 173 176
		f 3 259 -250 -259
		mu 0 3 179 175 174
		f 3 260 -255 -211
		mu 0 3 147 177 148
		f 5 261 262 263 264 265
		mu 0 5 180 181 182 183 184
		f 3 266 267 268
		mu 0 3 185 186 187
		f 6 269 -244 270 271 272 273
		mu 0 6 188 169 170 189 190 191
		f 5 274 275 -273 276 -268
		mu 0 5 186 192 191 190 187
		f 6 277 278 -266 279 280 -209
		mu 0 6 145 193 180 184 194 146
		f 3 281 282 -264
		mu 0 3 182 195 183
		f 5 283 284 285 286 287
		mu 0 5 196 197 198 199 200
		f 3 288 289 290
		mu 0 3 201 202 203
		f 5 291 -275 292 293 294
		mu 0 5 204 192 186 205 206
		f 4 -267 295 296 -293
		mu 0 4 186 185 207 205
		f 5 297 -291 298 -294 -297
		mu 0 5 207 201 203 206 205
		f 4 299 -295 300 301
		mu 0 4 208 204 206 209
		f 6 -290 302 303 304 -287 305
		mu 0 6 203 202 210 211 200 199
		f 4 -301 -299 -306 306
		mu 0 4 209 206 203 199
		f 4 307 -302 -307 -286
		mu 0 4 198 208 209 199
		f 5 308 -207 309 310 -263
		mu 0 5 181 141 143 212 182
		f 5 311 312 313 314 -310
		mu 0 5 143 213 214 215 212
		f 4 315 -282 -311 -315
		mu 0 4 215 195 182 212
		f 3 316 317 -313
		mu 0 3 213 216 214
		f 7 318 -288 -305 319 -317 -312 -206
		mu 0 7 142 196 200 211 216 213 143
		f 4 320 321 322 323
		mu 0 4 217 218 219 220
		f 3 324 325 326
		mu 0 3 221 222 223
		f 6 327 328 329 330 331 -326
		mu 0 6 222 224 225 226 227 223
		f 4 332 333 334 335
		mu 0 4 228 229 230 231
		f 4 336 337 338 -334
		mu 0 4 229 232 233 230
		f 3 339 340 -332
		mu 0 3 227 234 223
		f 3 341 342 -330
		mu 0 3 225 235 226
		f 4 343 344 345 346
		mu 0 4 236 237 238 239
		f 6 347 -336 348 -347 349 350
		mu 0 6 240 228 231 236 239 241
		f 3 351 352 -346
		mu 0 3 238 242 239
		f 6 353 -327 -341 354 -350 -353
		mu 0 6 242 221 223 234 241 239
		f 5 355 356 357 358 359
		mu 0 5 243 244 245 246 247
		f 4 360 -360 361 -329
		mu 0 4 224 243 247 225
		f 4 362 363 -342 -362
		mu 0 4 247 248 235 225
		f 4 364 365 -363 -359
		mu 0 4 246 249 248 247
		f 8 366 367 368 369 370 371 372 373
		mu 0 8 250 251 252 253 254 255 256 257
		f 3 374 -374 375
		mu 0 3 258 250 257
		f 6 376 377 378 -365 379 380
		mu 0 6 256 259 260 249 246 261
		f 4 381 382 -380 -358
		mu 0 4 245 262 261 246
		f 5 383 -376 -373 -381 -383
		mu 0 5 262 258 257 256 261
		f 3 384 -377 -372
		mu 0 3 255 259 256
		f 4 385 386 -321 387
		mu 0 4 263 264 218 217
		f 3 388 -388 389
		mu 0 3 265 263 217
		f 5 390 -390 -324 391 -369
		mu 0 5 252 265 217 220 253
		f 3 392 393 394
		mu 0 3 266 267 268
		f 5 395 396 397 398 399
		mu 0 5 269 270 271 272 273
		f 3 400 401 402
		mu 0 3 274 275 276
		f 6 403 404 405 406 407 408
		mu 0 6 277 278 279 280 281 282
		f 4 409 410 411 412
		mu 0 4 283 284 285 286
		f 5 413 414 415 -409 416
		mu 0 5 287 288 289 277 282
		f 4 417 -417 418 -411
		mu 0 4 284 287 282 285
		f 4 419 -412 -419 -408
		mu 0 4 281 286 285 282
		f 4 420 -401 421 422
		mu 0 4 290 275 274 291
		f 5 423 -413 424 -422 425
		mu 0 5 292 283 286 291 274
		f 3 -407 426 427
		mu 0 3 281 280 293
		f 5 -420 -428 428 -423 -425
		mu 0 5 286 281 293 290 291
		f 5 429 -426 -403 430 431
		mu 0 5 294 292 274 276 295
		f 3 432 433 434
		mu 0 3 296 297 298
		f 7 435 -435 436 437 438 -404 -416
		mu 0 7 289 296 298 299 300 278 277
		f 5 439 -400 440 441 -434
		mu 0 5 297 269 273 301 298
		f 4 442 443 444 -441
		mu 0 4 273 302 303 301
		f 5 445 446 -437 -442 -445
		mu 0 5 303 304 299 298 301
		f 3 447 -438 -447
		mu 0 3 304 300 299
		f 3 448 -443 -399
		mu 0 3 272 302 273
		f 5 449 450 451 452 453
		mu 0 5 305 306 307 308 309
		f 3 454 455 456
		mu 0 3 310 311 312
		f 6 457 -432 458 459 460 461
		mu 0 6 313 294 295 314 315 316
		f 5 462 463 -461 464 -456
		mu 0 5 311 317 316 315 312
		f 6 465 466 -454 467 468 -397
		mu 0 6 270 318 305 309 319 271
		f 3 469 470 -452
		mu 0 3 307 320 308
		f 5 471 472 473 474 475
		mu 0 5 321 322 323 324 325
		f 3 476 477 478
		mu 0 3 326 327 328
		f 5 479 -463 480 481 482
		mu 0 5 329 317 311 330 331
		f 4 -455 483 484 -481
		mu 0 4 311 310 332 330
		f 5 485 -479 486 -482 -485
		mu 0 5 332 326 328 331 330
		f 4 487 -483 488 489
		mu 0 4 333 329 331 334
		f 6 -478 490 491 492 -475 493
		mu 0 6 328 327 335 336 325 324
		f 4 -489 -487 -494 494
		mu 0 4 334 331 328 324
		f 4 495 -490 -495 -474
		mu 0 4 323 333 334 324
		f 5 496 -395 497 498 -451
		mu 0 5 306 266 268 337 307
		f 5 499 500 501 502 -498
		mu 0 5 268 338 339 340 337
		f 4 503 -470 -499 -503
		mu 0 4 340 320 307 337
		f 3 504 505 -501
		mu 0 3 338 341 339
		f 7 506 -476 -493 507 -505 -500 -394
		mu 0 7 267 321 325 336 341 338 268
		f 4 508 509 510 511
		mu 0 4 342 343 344 345
		f 6 512 513 514 515 516 517
		mu 0 6 346 347 348 349 350 351
		f 6 518 519 520 521 522 523
		mu 0 6 352 353 354 355 356 357
		f 4 524 525 -524 526
		mu 0 4 358 359 352 357
		f 5 527 528 -527 529 530
		mu 0 5 360 361 358 357 362
		f 4 531 532 -530 -523
		mu 0 4 356 363 362 357
		f 4 533 534 535 536
		mu 0 4 364 365 366 367
		f 4 537 538 -537 539
		mu 0 4 368 369 364 367
		f 6 -536 540 541 542 -518 543
		mu 0 6 367 366 370 371 346 351
		f 6 544 545 -540 -544 546 -526
		mu 0 6 359 372 368 367 351 352
		f 6 547 548 549 -519 -547 -517
		mu 0 6 350 373 374 353 352 351
		f 4 550 551 552 553
		mu 0 4 375 376 377 378
		f 5 554 555 556 557 558
		mu 0 5 379 380 381 382 383
		f 5 559 560 -522 561 -557
		mu 0 5 381 384 356 355 382
		f 3 562 -532 -561
		mu 0 3 384 363 356
		f 4 563 -554 564 -516
		mu 0 4 349 375 378 350
		f 4 565 566 -548 -565
		mu 0 4 378 385 373 350
		f 6 567 -559 568 569 -566 -553
		mu 0 6 377 379 383 386 385 378
		f 3 570 -555 571
		mu 0 3 387 380 379
		f 4 572 -512 573 -552
		mu 0 4 376 342 345 377
		f 5 574 575 -572 -568 -574
		mu 0 5 345 388 387 379 377
		f 4 576 577 -575 -511
		mu 0 4 344 389 388 345
		f 3 578 579 580
		mu 0 3 390 391 392
		f 5 581 582 583 584 585
		mu 0 5 393 394 395 396 397
		f 3 586 587 588
		mu 0 3 398 399 400
		f 6 589 590 591 592 593 594
		mu 0 6 401 402 403 404 405 406
		f 4 595 596 597 598
		mu 0 4 407 408 409 410
		f 5 599 600 601 -595 602
		mu 0 5 411 412 413 401 406
		f 4 603 -603 604 -597
		mu 0 4 408 411 406 409
		f 4 605 -598 -605 -594
		mu 0 4 405 410 409 406
		f 4 606 -587 607 608
		mu 0 4 414 399 398 415
		f 5 609 -599 610 -608 611
		mu 0 5 416 407 410 415 398
		f 3 -593 612 613
		mu 0 3 405 404 417
		f 5 -606 -614 614 -609 -611
		mu 0 5 410 405 417 414 415
		f 5 615 -612 -589 616 617
		mu 0 5 418 416 398 400 419
		f 3 618 619 620
		mu 0 3 420 421 422
		f 7 621 -621 622 623 624 -590 -602
		mu 0 7 413 420 422 423 424 402 401
		f 5 625 -586 626 627 -620
		mu 0 5 421 393 397 425 422
		f 4 628 629 630 -627
		mu 0 4 397 426 427 425
		f 5 631 632 -623 -628 -631
		mu 0 5 427 428 423 422 425
		f 3 633 -624 -633
		mu 0 3 428 424 423
		f 3 634 -629 -585
		mu 0 3 396 426 397
		f 5 635 636 637 638 639
		mu 0 5 429 430 431 432 433
		f 3 640 641 642
		mu 0 3 434 435 436
		f 6 643 -618 644 645 646 647
		mu 0 6 437 418 419 438 439 440
		f 5 648 649 -647 650 -642
		mu 0 5 435 441 440 439 436
		f 6 651 652 -640 653 654 -583
		mu 0 6 394 442 429 433 443 395
		f 3 655 656 -638
		mu 0 3 431 444 432
		f 5 657 658 659 660 661
		mu 0 5 445 446 447 448 449
		f 3 662 663 664
		mu 0 3 450 451 452
		f 5 665 -649 666 667 668
		mu 0 5 453 441 435 454 455
		f 4 -641 669 670 -667
		mu 0 4 435 434 456 454
		f 5 671 -665 672 -668 -671
		mu 0 5 456 450 452 455 454
		f 4 673 -669 674 675
		mu 0 4 457 453 455 458
		f 6 -664 676 677 678 -661 679
		mu 0 6 452 451 459 460 449 448
		f 4 -675 -673 -680 680
		mu 0 4 458 455 452 448
		f 4 681 -676 -681 -660
		mu 0 4 447 457 458 448
		f 5 682 -581 683 684 -637
		mu 0 5 430 390 392 461 431
		f 5 685 686 687 688 -684
		mu 0 5 392 462 463 464 461
		f 4 689 -656 -685 -689
		mu 0 4 464 444 431 461
		f 3 690 691 -687
		mu 0 3 462 465 463
		f 7 692 -662 -679 693 -691 -686 -580
		mu 0 7 391 445 449 460 465 462 392
		f 3 694 695 696
		mu 0 3 466 467 468
		f 7 697 698 699 700 701 702 703
		mu 0 7 469 470 471 472 473 474 475
		f 3 704 705 706
		mu 0 3 476 477 478
		f 6 707 708 709 710 711 712
		mu 0 6 479 480 481 482 483 484
		f 3 713 -713 714
		mu 0 3 485 479 484
		f 3 715 716 717
		mu 0 3 486 487 488
		f 6 718 -715 719 -717 720 721
		mu 0 6 489 485 484 488 487 490
		f 3 -711 722 723
		mu 0 3 483 482 491
		f 5 -712 -724 724 -718 -720
		mu 0 5 484 483 491 486 488
		f 8 725 726 -722 727 728 -707 729 730
		mu 0 8 492 493 489 490 494 476 478 495
		f 3 731 732 733
		mu 0 3 496 497 498
		f 8 734 735 -734 736 737 738 739 -709
		mu 0 8 480 499 496 498 500 501 502 481
		f 6 740 -704 741 742 743 -733
		mu 0 6 497 469 475 503 504 498
		f 3 744 745 -743
		mu 0 3 503 505 504
		f 5 746 747 -737 -744 -746
		mu 0 5 505 506 500 498 504
		f 3 748 -738 -748
		mu 0 3 506 501 500
		f 3 749 750 -701
		mu 0 3 472 507 473
		f 3 751 752 753
		mu 0 3 508 509 510
		f 4 754 755 756 757
		mu 0 4 511 512 513 514
		f 7 -706 758 759 760 -757 761 762
		mu 0 7 478 477 515 516 514 513 517
		f 5 763 764 765 -762 766
		mu 0 5 518 519 520 517 513
		f 4 -730 -763 -766 767
		mu 0 4 495 478 517 520
		f 4 768 -731 -768 769
		mu 0 4 521 492 495 520
		f 3 770 -770 -765
		mu 0 3 519 521 520
		f 3 771 -767 -756
		mu 0 3 512 518 513
		f 5 772 -754 773 774 -700
		mu 0 5 471 508 510 522 472
		f 4 -774 775 776 777
		mu 0 4 522 510 523 524
		f 5 778 -750 -775 -778 779
		mu 0 5 525 507 472 522 524
		f 5 780 -780 781 -760 782
		mu 0 5 526 525 524 516 515
		f 4 783 -761 -782 -777
		mu 0 4 523 514 516 524
		f 9 784 785 786 -758 -784 -776 -753 787 788
		mu 0 9 527 528 529 511 514 523 510 509 530
		f 6 789 790 791 792 -696 793
		mu 0 6 531 532 533 534 468 467
		f 3 794 795 -793
		mu 0 3 534 535 468
		f 3 796 797 -791
		mu 0 3 532 536 533
		f 5 798 -789 799 -697 -796
		mu 0 5 535 527 530 466 468
		f 3 800 801 802
		mu 0 3 537 538 539
		f 5 803 804 805 806 807
		mu 0 5 540 541 542 543 544
		f 3 808 809 810
		mu 0 3 545 546 547
		f 6 811 812 813 814 815 816
		mu 0 6 548 549 550 551 552 553
		f 4 817 818 819 820
		mu 0 4 554 555 556 557
		f 5 821 822 823 -817 824
		mu 0 5 558 559 560 548 553
		f 4 825 -825 826 -819
		mu 0 4 555 558 553 556
		f 4 827 -820 -827 -816
		mu 0 4 552 557 556 553
		f 4 828 -809 829 830
		mu 0 4 561 546 545 562
		f 5 831 -821 832 -830 833
		mu 0 5 563 554 557 562 545
		f 3 -815 834 835
		mu 0 3 552 551 564
		f 5 -828 -836 836 -831 -833
		mu 0 5 557 552 564 561 562
		f 5 837 -834 -811 838 839
		mu 0 5 565 563 545 547 566
		f 3 840 841 842
		mu 0 3 567 568 569
		f 7 843 -843 844 845 846 -812 -824
		mu 0 7 560 567 569 570 571 549 548
		f 5 847 -808 848 849 -842
		mu 0 5 568 540 544 572 569
		f 4 850 851 852 -849
		mu 0 4 544 573 574 572
		f 5 853 854 -845 -850 -853
		mu 0 5 574 575 570 569 572
		f 3 855 -846 -855
		mu 0 3 575 571 570
		f 3 856 -851 -807
		mu 0 3 543 573 544
		f 5 857 858 859 860 861
		mu 0 5 576 577 578 579 580
		f 3 862 863 864
		mu 0 3 581 582 583
		f 6 865 -840 866 867 868 869
		mu 0 6 584 565 566 585 586 587
		f 5 870 871 -869 872 -864
		mu 0 5 582 588 587 586 583
		f 6 873 874 -862 875 876 -805
		mu 0 6 541 589 576 580 590 542
		f 3 877 878 -860
		mu 0 3 578 591 579
		f 5 879 880 881 882 883
		mu 0 5 592 593 594 595 596
		f 3 884 885 886
		mu 0 3 597 598 599
		f 5 887 -871 888 889 890
		mu 0 5 600 588 582 601 602
		f 4 -863 891 892 -889
		mu 0 4 582 581 603 601
		f 5 893 -887 894 -890 -893
		mu 0 5 603 597 599 602 601
		f 4 895 -891 896 897
		mu 0 4 604 600 602 605
		f 6 -886 898 899 900 -883 901
		mu 0 6 599 598 606 607 596 595
		f 4 -897 -895 -902 902
		mu 0 4 605 602 599 595
		f 4 903 -898 -903 -882
		mu 0 4 594 604 605 595
		f 5 904 -803 905 906 -859
		mu 0 5 577 537 539 608 578
		f 5 907 908 909 910 -906
		mu 0 5 539 609 610 611 608
		f 4 911 -878 -907 -911
		mu 0 4 611 591 578 608
		f 3 912 913 -909
		mu 0 3 609 612 610
		f 7 914 -884 -901 915 -913 -908 -802
		mu 0 7 538 592 596 607 612 609 539
		f 3 916 917 918
		mu 0 3 613 614 615
		f 7 919 920 921 922 923 924 925
		mu 0 7 616 617 618 619 620 621 622
		f 3 926 927 928
		mu 0 3 623 624 625
		f 8 929 930 931 932 933 934 935 936
		mu 0 8 626 627 628 629 630 631 632 633
		f 3 937 -937 938
		mu 0 3 634 626 633
		f 3 939 940 941
		mu 0 3 635 636 637
		f 6 942 -939 943 -941 944 945
		mu 0 6 638 634 633 637 636 639
		f 3 -935 946 947
		mu 0 3 632 631 640
		f 5 -936 -948 948 -942 -944
		mu 0 5 633 632 640 635 637
		f 7 949 950 -946 951 952 -929 953
		mu 0 7 641 642 638 639 643 623 625
		f 3 954 955 956
		mu 0 3 644 645 646
		f 6 957 -957 958 959 960 -932
		mu 0 6 628 644 646 647 648 629
		f 6 961 -926 962 963 964 -956
		mu 0 6 645 616 622 649 650 646
		f 3 965 966 -964
		mu 0 3 649 651 650
		f 5 967 968 -959 -965 -967
		mu 0 5 651 652 647 646 650
		f 3 969 -960 -969
		mu 0 3 652 648 647
		f 3 970 971 -923
		mu 0 3 619 653 620
		f 4 972 973 974 975
		mu 0 4 654 655 656 657
		f 4 976 977 978 979
		mu 0 4 658 659 660 661
		f 7 -928 980 981 982 983 984 985
		mu 0 7 625 624 662 663 664 665 666
		f 5 986 987 -954 -986 988
		mu 0 5 667 668 641 625 666
		f 4 989 990 991 -978
		mu 0 4 659 669 670 660
		f 5 992 -989 993 -992 994
		mu 0 5 671 667 666 660 670
		f 3 995 -995 996
		mu 0 3 672 671 670
		f 4 997 998 -997 -991
		mu 0 4 669 673 672 670
		f 5 -984 999 1000 1001 1002
		mu 0 5 665 664 674 675 676
		f 5 -994 -985 -1003 1003 -979
		mu 0 5 660 666 665 676 661
		f 5 1004 1005 1006 -922 1007
		mu 0 5 677 678 679 619 618
		f 6 1008 1009 -983 1010 -971 -1007
		mu 0 6 679 680 664 663 653 619
		f 5 1011 1012 1013 1014 1015
		mu 0 5 681 682 683 684 685
		f 4 -1009 1016 -1015 1017
		mu 0 4 680 679 685 684
		f 5 1018 -1000 -1010 -1018 1019
		mu 0 5 686 674 664 680 684
		f 3 1020 -1020 -1014
		mu 0 3 683 686 684
		f 3 1021 -976 1022
		mu 0 3 687 654 657
		f 5 1023 -1023 1024 -1017 -1006
		mu 0 5 678 687 657 685 679
		f 4 1025 -1016 -1025 -975
		mu 0 4 656 681 685 657
		f 5 1026 1027 1028 1029 1030
		mu 0 5 688 689 690 691 692
		f 3 1031 1032 1033
		mu 0 3 693 694 695
		f 7 1034 1035 -998 -990 1036 1037 1038
		mu 0 7 696 697 673 669 659 698 699
		f 5 -977 1039 1040 1041 -1037
		mu 0 5 659 658 700 701 698
		f 5 1042 -1034 1043 -1038 -1042
		mu 0 5 701 693 695 699 698
		f 4 1044 -1039 1045 1046
		mu 0 4 702 696 699 703
		f 6 -1033 1047 1048 1049 -1030 1050
		mu 0 6 695 694 704 705 692 691
		f 4 -1046 -1044 -1051 1051
		mu 0 4 703 699 695 691
		f 4 1052 -1047 -1052 -1029
		mu 0 4 690 702 703 691
		f 7 1053 1054 -919 1055 1056 -1026 -974
		mu 0 7 655 706 613 615 707 681 656
		f 5 1057 1058 1059 1060 -1056
		mu 0 5 615 708 709 710 707
		f 5 1061 1062 -1012 -1057 -1061
		mu 0 5 710 711 682 681 707
		f 3 1063 1064 -1059
		mu 0 3 708 712 709
		f 7 1065 -1031 -1050 1066 -1064 -1058 -918
		mu 0 7 614 688 692 705 712 708 615
		f 3 1067 1068 1069
		mu 0 3 713 714 715
		f 5 1070 1071 1072 1073 1074
		mu 0 5 716 717 718 719 720
		f 3 1075 1076 1077
		mu 0 3 721 722 723
		f 6 1078 1079 1080 1081 1082 1083
		mu 0 6 724 725 726 727 728 729
		f 4 1084 1085 1086 1087
		mu 0 4 730 731 732 733
		f 5 1088 1089 1090 -1084 1091
		mu 0 5 734 735 736 724 729
		f 4 1092 -1092 1093 -1086
		mu 0 4 731 734 729 732
		f 4 1094 -1087 -1094 -1083
		mu 0 4 728 733 732 729
		f 4 1095 -1076 1096 1097
		mu 0 4 737 722 721 738
		f 5 1098 -1088 1099 -1097 1100
		mu 0 5 739 730 733 738 721
		f 3 -1082 1101 1102
		mu 0 3 728 727 740
		f 5 -1095 -1103 1103 -1098 -1100
		mu 0 5 733 728 740 737 738
		f 5 1104 -1101 -1078 1105 1106
		mu 0 5 741 739 721 723 742
		f 3 1107 1108 1109
		mu 0 3 743 744 745
		f 7 1110 -1110 1111 1112 1113 -1079 -1091
		mu 0 7 736 743 745 746 747 725 724
		f 5 1114 -1075 1115 1116 -1109
		mu 0 5 744 716 720 748 745
		f 4 1117 1118 1119 -1116
		mu 0 4 720 749 750 748
		f 5 1120 1121 -1112 -1117 -1120
		mu 0 5 750 751 746 745 748
		f 3 1122 -1113 -1122
		mu 0 3 751 747 746
		f 3 1123 -1118 -1074
		mu 0 3 719 749 720
		f 5 1124 1125 1126 1127 1128
		mu 0 5 752 753 754 755 756
		f 3 1129 1130 1131
		mu 0 3 757 758 759
		f 6 1132 -1107 1133 1134 1135 1136
		mu 0 6 760 741 742 761 762 763
		f 5 1137 1138 -1136 1139 -1131
		mu 0 5 758 764 763 762 759
		f 6 1140 1141 -1129 1142 1143 -1072
		mu 0 6 717 765 752 756 766 718
		f 3 1144 1145 -1127
		mu 0 3 754 767 755
		f 5 1146 1147 1148 1149 1150
		mu 0 5 768 769 770 771 772
		f 3 1151 1152 1153
		mu 0 3 773 774 775
		f 5 1154 -1138 1155 1156 1157
		mu 0 5 776 764 758 777 778
		f 4 -1130 1158 1159 -1156
		mu 0 4 758 757 779 777
		f 5 1160 -1154 1161 -1157 -1160
		mu 0 5 779 773 775 778 777
		f 4 1162 -1158 1163 1164
		mu 0 4 780 776 778 781
		f 6 -1153 1165 1166 1167 -1150 1168
		mu 0 6 775 774 782 783 772 771
		f 4 -1164 -1162 -1169 1169
		mu 0 4 781 778 775 771
		f 4 1170 -1165 -1170 -1149
		mu 0 4 770 780 781 771
		f 5 1171 -1070 1172 1173 -1126
		mu 0 5 753 713 715 784 754
		f 5 1174 1175 1176 1177 -1173
		mu 0 5 715 785 786 787 784
		f 4 1178 -1145 -1174 -1178
		mu 0 4 787 767 754 784
		f 3 1179 1180 -1176
		mu 0 3 785 788 786
		f 7 1181 -1151 -1168 1182 -1180 -1175 -1069
		mu 0 7 714 768 772 783 788 785 715
		f 3 1183 1184 1185
		mu 0 3 789 790 791
		f 4 1186 1187 1188 1189
		mu 0 4 792 793 794 795
		f 4 1190 1191 1192 1193
		mu 0 4 796 797 798 799
		f 4 1194 1195 -1191 1196
		mu 0 4 800 801 797 796
		f 4 1197 1198 -1197 1199
		mu 0 4 802 803 800 796
		f 4 1200 -1200 -1194 1201
		mu 0 4 804 802 796 799
		f 4 -1193 1202 -1187 1203
		mu 0 4 799 798 793 792
		f 4 1204 -1202 -1204 1205
		mu 0 4 805 804 799 792
		f 4 1206 -1206 -1190 1207
		mu 0 4 806 805 792 795
		f 6 1208 1209 1210 1211 1212 1213
		mu 0 6 807 808 809 810 811 812
		f 4 -1189 1214 -1209 1215
		mu 0 4 795 794 808 807
		f 4 1216 -1208 -1216 1217
		mu 0 4 813 806 795 807
		f 4 1218 -1218 -1214 1219
		mu 0 4 814 813 807 812
		f 5 -1213 1220 1221 -1184 1222
		mu 0 5 812 811 815 790 789
		f 4 1223 -1220 -1223 1224
		mu 0 4 816 814 812 789
		f 5 1225 1226 -1225 -1186 1227
		mu 0 5 817 818 816 789 791
		f 3 1228 1229 1230
		mu 0 3 819 820 821
		f 5 1231 1232 1233 1234 1235
		mu 0 5 822 823 824 825 826
		f 3 1236 1237 1238
		mu 0 3 827 828 829
		f 6 1239 1240 1241 1242 1243 1244
		mu 0 6 830 831 832 833 834 835
		f 4 1245 1246 1247 1248
		mu 0 4 836 837 838 839
		f 5 1249 1250 1251 -1245 1252
		mu 0 5 840 841 842 830 835
		f 4 1253 -1253 1254 -1247
		mu 0 4 837 840 835 838
		f 4 1255 -1248 -1255 -1244
		mu 0 4 834 839 838 835
		f 4 1256 -1237 1257 1258
		mu 0 4 843 828 827 844
		f 5 1259 -1249 1260 -1258 1261
		mu 0 5 845 836 839 844 827
		f 3 -1243 1262 1263
		mu 0 3 834 833 846
		f 5 -1256 -1264 1264 -1259 -1261
		mu 0 5 839 834 846 843 844
		f 5 1265 -1262 -1239 1266 1267
		mu 0 5 847 845 827 829 848
		f 3 1268 1269 1270
		mu 0 3 849 850 851
		f 7 1271 -1271 1272 1273 1274 -1240 -1252
		mu 0 7 842 849 851 852 853 831 830
		f 5 1275 -1236 1276 1277 -1270
		mu 0 5 850 822 826 854 851
		f 4 1278 1279 1280 -1277
		mu 0 4 826 855 856 854
		f 5 1281 1282 -1273 -1278 -1281
		mu 0 5 856 857 852 851 854
		f 3 1283 -1274 -1283
		mu 0 3 857 853 852
		f 3 1284 -1279 -1235
		mu 0 3 825 855 826
		f 5 1285 1286 1287 1288 1289
		mu 0 5 858 859 860 861 862
		f 3 1290 1291 1292
		mu 0 3 863 864 865
		f 6 1293 -1268 1294 1295 1296 1297
		mu 0 6 866 847 848 867 868 869
		f 5 1298 1299 -1297 1300 -1292
		mu 0 5 864 870 869 868 865
		f 6 1301 1302 -1290 1303 1304 -1233
		mu 0 6 823 871 858 862 872 824
		f 3 1305 1306 -1288
		mu 0 3 860 873 861
		f 5 1307 1308 1309 1310 1311
		mu 0 5 874 875 876 877 878
		f 3 1312 1313 1314
		mu 0 3 879 880 881
		f 5 1315 -1299 1316 1317 1318
		mu 0 5 882 870 864 883 884
		f 4 -1291 1319 1320 -1317
		mu 0 4 864 863 885 883
		f 5 1321 -1315 1322 -1318 -1321
		mu 0 5 885 879 881 884 883
		f 4 1323 -1319 1324 1325
		mu 0 4 886 882 884 887
		f 6 -1314 1326 1327 1328 -1311 1329
		mu 0 6 881 880 888 889 878 877
		f 4 -1325 -1323 -1330 1330
		mu 0 4 887 884 881 877
		f 4 1331 -1326 -1331 -1310
		mu 0 4 876 886 887 877
		f 5 1332 -1231 1333 1334 -1287
		mu 0 5 859 819 821 890 860
		f 5 1335 1336 1337 1338 -1334
		mu 0 5 821 891 892 893 890
		f 4 1339 -1306 -1335 -1339
		mu 0 4 893 873 860 890
		f 3 1340 1341 -1337
		mu 0 3 891 894 892
		f 7 1342 -1312 -1329 1343 -1341 -1336 -1230
		mu 0 7 820 874 878 889 894 891 821
		f 3 1344 1345 1346
		mu 0 3 895 896 897
		f 5 1347 1348 1349 1350 1351
		mu 0 5 898 899 900 901 902
		f 3 1352 1353 1354
		mu 0 3 903 904 905
		f 6 1355 1356 1357 1358 1359 1360
		mu 0 6 906 907 908 909 910 911
		f 4 1361 1362 1363 1364
		mu 0 4 912 913 914 915
		f 5 1365 1366 1367 -1361 1368
		mu 0 5 916 917 918 906 911
		f 4 1369 -1369 1370 -1363
		mu 0 4 913 916 911 914
		f 4 1371 -1364 -1371 -1360
		mu 0 4 910 915 914 911
		f 4 1372 -1353 1373 1374
		mu 0 4 919 904 903 920
		f 5 1375 -1365 1376 -1374 1377
		mu 0 5 921 912 915 920 903
		f 3 -1359 1378 1379
		mu 0 3 910 909 922
		f 5 -1372 -1380 1380 -1375 -1377
		mu 0 5 915 910 922 919 920
		f 5 1381 -1378 -1355 1382 1383
		mu 0 5 923 921 903 905 924
		f 3 1384 1385 1386
		mu 0 3 925 926 927
		f 7 1387 -1387 1388 1389 1390 -1356 -1368
		mu 0 7 918 925 927 928 929 907 906
		f 5 1391 -1352 1392 1393 -1386
		mu 0 5 926 898 902 930 927
		f 4 1394 1395 1396 -1393
		mu 0 4 902 931 932 930
		f 5 1397 1398 -1389 -1394 -1397
		mu 0 5 932 933 928 927 930
		f 3 1399 -1390 -1399
		mu 0 3 933 929 928
		f 3 1400 -1395 -1351
		mu 0 3 901 931 902
		f 5 1401 1402 1403 1404 1405
		mu 0 5 934 935 936 937 938
		f 3 1406 1407 1408
		mu 0 3 939 940 941
		f 6 1409 -1384 1410 1411 1412 1413
		mu 0 6 942 923 924 943 944 945
		f 5 1414 1415 -1413 1416 -1408
		mu 0 5 940 946 945 944 941
		f 6 1417 1418 -1406 1419 1420 -1349
		mu 0 6 899 947 934 938 948 900
		f 3 1421 1422 -1404
		mu 0 3 936 949 937
		f 5 1423 1424 1425 1426 1427
		mu 0 5 950 951 952 953 954
		f 3 1428 1429 1430
		mu 0 3 955 956 957
		f 5 1431 -1415 1432 1433 1434
		mu 0 5 958 946 940 959 960
		f 4 -1407 1435 1436 -1433
		mu 0 4 940 939 961 959
		f 5 1437 -1431 1438 -1434 -1437
		mu 0 5 961 955 957 960 959
		f 4 1439 -1435 1440 1441
		mu 0 4 962 958 960 963
		f 6 -1430 1442 1443 1444 -1427 1445
		mu 0 6 957 956 964 965 954 953
		f 4 -1441 -1439 -1446 1446
		mu 0 4 963 960 957 953
		f 4 1447 -1442 -1447 -1426
		mu 0 4 952 962 963 953;
	setAttr ".fc[500:999]"
		f 5 1448 -1347 1449 1450 -1403
		mu 0 5 935 895 897 966 936
		f 5 1451 1452 1453 1454 -1450
		mu 0 5 897 967 968 969 966
		f 4 1455 -1422 -1451 -1455
		mu 0 4 969 949 936 966
		f 3 1456 1457 -1453
		mu 0 3 967 970 968
		f 7 1458 -1428 -1445 1459 -1457 -1452 -1346
		mu 0 7 896 950 954 965 970 967 897
		f 3 1460 1461 1462
		mu 0 3 971 972 973
		f 4 1463 1464 1465 1466
		mu 0 4 974 975 976 977
		f 4 1467 1468 1469 1470
		mu 0 4 978 979 980 981
		f 4 1471 1472 -1468 1473
		mu 0 4 982 983 979 978
		f 4 1474 1475 -1474 1476
		mu 0 4 984 985 982 978
		f 4 1477 -1477 -1471 1478
		mu 0 4 986 984 978 981
		f 4 -1470 1479 -1464 1480
		mu 0 4 981 980 975 974
		f 4 1481 -1479 -1481 1482
		mu 0 4 987 986 981 974
		f 4 1483 -1483 -1467 1484
		mu 0 4 988 987 974 977
		f 6 1485 1486 1487 1488 1489 1490
		mu 0 6 989 990 991 992 993 994
		f 4 -1466 1491 -1486 1492
		mu 0 4 977 976 990 989
		f 4 1493 -1485 -1493 1494
		mu 0 4 995 988 977 989
		f 4 1495 -1495 -1491 1496
		mu 0 4 996 995 989 994
		f 5 -1490 1497 1498 -1461 1499
		mu 0 5 994 993 997 972 971
		f 4 1500 -1497 -1500 1501
		mu 0 4 998 996 994 971
		f 5 1502 1503 -1502 -1463 1504
		mu 0 5 999 1000 998 971 973
		f 4 1505 1506 1507 1508
		mu 0 4 1001 1002 1003 1004
		f 3 1509 1510 1511
		mu 0 3 1005 1006 1007
		f 6 1512 1513 1514 1515 1516 -1511
		mu 0 6 1006 1008 1009 1010 1011 1007
		f 4 1517 1518 1519 1520
		mu 0 4 1012 1013 1014 1015
		f 4 1521 1522 1523 -1519
		mu 0 4 1013 1016 1017 1014
		f 3 1524 1525 -1517
		mu 0 3 1011 1018 1007
		f 3 1526 1527 -1515
		mu 0 3 1009 1019 1010
		f 4 1528 1529 1530 1531
		mu 0 4 1020 1021 1022 1023
		f 6 1532 -1521 1533 -1532 1534 1535
		mu 0 6 1024 1012 1015 1020 1023 1025
		f 3 1536 1537 -1531
		mu 0 3 1022 1026 1023
		f 6 1538 -1512 -1526 1539 -1535 -1538
		mu 0 6 1026 1005 1007 1018 1025 1023
		f 5 1540 1541 1542 1543 1544
		mu 0 5 1027 1028 1029 1030 1031
		f 4 1545 -1545 1546 -1514
		mu 0 4 1008 1027 1031 1009
		f 4 1547 1548 -1527 -1547
		mu 0 4 1031 1032 1019 1009
		f 4 1549 1550 -1548 -1544
		mu 0 4 1030 1033 1032 1031
		f 8 1551 1552 1553 1554 1555 1556 1557 1558
		mu 0 8 1034 1035 1036 1037 1038 1039 1040 1041
		f 3 1559 -1559 1560
		mu 0 3 1042 1034 1041
		f 6 1561 1562 1563 -1550 1564 1565
		mu 0 6 1040 1043 1044 1033 1030 1045
		f 4 1566 1567 -1565 -1543
		mu 0 4 1029 1046 1045 1030
		f 5 1568 -1561 -1558 -1566 -1568
		mu 0 5 1046 1042 1041 1040 1045
		f 3 1569 -1562 -1557
		mu 0 3 1039 1043 1040
		f 4 1570 1571 -1506 1572
		mu 0 4 1047 1048 1002 1001
		f 3 1573 -1573 1574
		mu 0 3 1049 1047 1001
		f 5 1575 -1575 -1509 1576 -1554
		mu 0 5 1036 1049 1001 1004 1037
		f 3 1577 1578 1579
		mu 0 3 1050 1051 1052
		f 5 1580 1581 1582 1583 1584
		mu 0 5 1053 1054 1055 1056 1057
		f 3 1585 1586 1587
		mu 0 3 1058 1059 1060
		f 6 1588 1589 1590 1591 1592 1593
		mu 0 6 1061 1062 1063 1064 1065 1066
		f 4 1594 1595 1596 1597
		mu 0 4 1067 1068 1069 1070
		f 5 1598 1599 1600 -1594 1601
		mu 0 5 1071 1072 1073 1061 1066
		f 4 1602 -1602 1603 -1596
		mu 0 4 1068 1071 1066 1069
		f 4 1604 -1597 -1604 -1593
		mu 0 4 1065 1070 1069 1066
		f 4 1605 -1586 1606 1607
		mu 0 4 1074 1059 1058 1075
		f 5 1608 -1598 1609 -1607 1610
		mu 0 5 1076 1067 1070 1075 1058
		f 3 -1592 1611 1612
		mu 0 3 1065 1064 1077
		f 5 -1605 -1613 1613 -1608 -1610
		mu 0 5 1070 1065 1077 1074 1075
		f 5 1614 -1611 -1588 1615 1616
		mu 0 5 1078 1076 1058 1060 1079
		f 3 1617 1618 1619
		mu 0 3 1080 1081 1082
		f 7 1620 -1620 1621 1622 1623 -1589 -1601
		mu 0 7 1073 1080 1082 1083 1084 1062 1061
		f 5 1624 -1585 1625 1626 -1619
		mu 0 5 1081 1053 1057 1085 1082
		f 4 1627 1628 1629 -1626
		mu 0 4 1057 1086 1087 1085
		f 5 1630 1631 -1622 -1627 -1630
		mu 0 5 1087 1088 1083 1082 1085
		f 3 1632 -1623 -1632
		mu 0 3 1088 1084 1083
		f 3 1633 -1628 -1584
		mu 0 3 1056 1086 1057
		f 5 1634 1635 1636 1637 1638
		mu 0 5 1089 1090 1091 1092 1093
		f 3 1639 1640 1641
		mu 0 3 1094 1095 1096
		f 6 1642 -1617 1643 1644 1645 1646
		mu 0 6 1097 1078 1079 1098 1099 1100
		f 5 1647 1648 -1646 1649 -1641
		mu 0 5 1095 1101 1100 1099 1096
		f 6 1650 1651 -1639 1652 1653 -1582
		mu 0 6 1054 1102 1089 1093 1103 1055
		f 3 1654 1655 -1637
		mu 0 3 1091 1104 1092
		f 5 1656 1657 1658 1659 1660
		mu 0 5 1105 1106 1107 1108 1109
		f 3 1661 1662 1663
		mu 0 3 1110 1111 1112
		f 5 1664 -1648 1665 1666 1667
		mu 0 5 1113 1101 1095 1114 1115
		f 4 -1640 1668 1669 -1666
		mu 0 4 1095 1094 1116 1114
		f 5 1670 -1664 1671 -1667 -1670
		mu 0 5 1116 1110 1112 1115 1114
		f 4 1672 -1668 1673 1674
		mu 0 4 1117 1113 1115 1118
		f 6 -1663 1675 1676 1677 -1660 1678
		mu 0 6 1112 1111 1119 1120 1109 1108
		f 4 -1674 -1672 -1679 1679
		mu 0 4 1118 1115 1112 1108
		f 4 1680 -1675 -1680 -1659
		mu 0 4 1107 1117 1118 1108
		f 5 1681 -1580 1682 1683 -1636
		mu 0 5 1090 1050 1052 1121 1091
		f 5 1684 1685 1686 1687 -1683
		mu 0 5 1052 1122 1123 1124 1121
		f 4 1688 -1655 -1684 -1688
		mu 0 4 1124 1104 1091 1121
		f 3 1689 1690 -1686
		mu 0 3 1122 1125 1123
		f 7 1691 -1661 -1678 1692 -1690 -1685 -1579
		mu 0 7 1051 1105 1109 1120 1125 1122 1052
		f 3 1693 1694 1695
		mu 0 3 1126 1127 1128
		f 4 1696 1697 1698 1699
		mu 0 4 1129 1130 1131 1132
		f 4 1700 1701 1702 1703
		mu 0 4 1133 1134 1135 1136
		f 4 1704 1705 -1701 1706
		mu 0 4 1137 1138 1134 1133
		f 4 1707 1708 -1707 1709
		mu 0 4 1139 1140 1137 1133
		f 4 1710 -1710 -1704 1711
		mu 0 4 1141 1139 1133 1136
		f 4 -1703 1712 -1697 1713
		mu 0 4 1136 1135 1130 1129
		f 4 1714 -1712 -1714 1715
		mu 0 4 1142 1141 1136 1129
		f 4 1716 -1716 -1700 1717
		mu 0 4 1143 1142 1129 1132
		f 6 1718 1719 1720 1721 1722 1723
		mu 0 6 1144 1145 1146 1147 1148 1149
		f 4 -1699 1724 -1719 1725
		mu 0 4 1132 1131 1145 1144
		f 4 1726 -1718 -1726 1727
		mu 0 4 1150 1143 1132 1144
		f 4 1728 -1728 -1724 1729
		mu 0 4 1151 1150 1144 1149
		f 5 -1723 1730 1731 -1694 1732
		mu 0 5 1149 1148 1152 1127 1126
		f 4 1733 -1730 -1733 1734
		mu 0 4 1153 1151 1149 1126
		f 5 1735 1736 -1735 -1696 1737
		mu 0 5 1154 1155 1153 1126 1128
		f 4 1738 1739 1740 1741
		mu 0 4 1156 1157 1158 1159
		f 6 1742 1743 1744 1745 1746 1747
		mu 0 6 1160 1161 1162 1163 1164 1165
		f 6 1748 1749 1750 1751 1752 1753
		mu 0 6 1166 1167 1168 1169 1170 1171
		f 4 1754 1755 -1754 1756
		mu 0 4 1172 1173 1166 1171
		f 5 1757 1758 -1757 1759 1760
		mu 0 5 1174 1175 1172 1171 1176
		f 4 1761 1762 -1760 -1753
		mu 0 4 1170 1177 1176 1171
		f 4 1763 1764 1765 1766
		mu 0 4 1178 1179 1180 1181
		f 4 1767 1768 -1767 1769
		mu 0 4 1182 1183 1178 1181
		f 6 -1766 1770 1771 1772 -1748 1773
		mu 0 6 1181 1180 1184 1185 1160 1165
		f 6 1774 1775 -1770 -1774 1776 -1756
		mu 0 6 1173 1186 1182 1181 1165 1166
		f 6 1777 1778 1779 -1749 -1777 -1747
		mu 0 6 1164 1187 1188 1167 1166 1165
		f 4 1780 1781 1782 1783
		mu 0 4 1189 1190 1191 1192
		f 5 1784 1785 1786 1787 1788
		mu 0 5 1193 1194 1195 1196 1197
		f 5 1789 1790 -1752 1791 -1787
		mu 0 5 1195 1198 1170 1169 1196
		f 3 1792 -1762 -1791
		mu 0 3 1198 1177 1170
		f 4 1793 -1784 1794 -1746
		mu 0 4 1163 1189 1192 1164
		f 4 1795 1796 -1778 -1795
		mu 0 4 1192 1199 1187 1164
		f 6 1797 -1789 1798 1799 -1796 -1783
		mu 0 6 1191 1193 1197 1200 1199 1192
		f 3 1800 -1785 1801
		mu 0 3 1201 1194 1193
		f 4 1802 -1742 1803 -1782
		mu 0 4 1190 1156 1159 1191
		f 5 1804 1805 -1802 -1798 -1804
		mu 0 5 1159 1202 1201 1193 1191
		f 4 1806 1807 -1805 -1741
		mu 0 4 1158 1203 1202 1159
		f 3 1808 1809 1810
		mu 0 3 1204 1205 1206
		f 5 1811 1812 1813 1814 1815
		mu 0 5 1207 1208 1209 1210 1211
		f 3 1816 1817 1818
		mu 0 3 1212 1213 1214
		f 6 1819 1820 1821 1822 1823 1824
		mu 0 6 1215 1216 1217 1218 1219 1220
		f 4 1825 1826 1827 1828
		mu 0 4 1221 1222 1223 1224
		f 5 1829 1830 1831 -1825 1832
		mu 0 5 1225 1226 1227 1215 1220
		f 4 1833 -1833 1834 -1827
		mu 0 4 1222 1225 1220 1223
		f 4 1835 -1828 -1835 -1824
		mu 0 4 1219 1224 1223 1220
		f 4 1836 -1817 1837 1838
		mu 0 4 1228 1213 1212 1229
		f 5 1839 -1829 1840 -1838 1841
		mu 0 5 1230 1221 1224 1229 1212
		f 3 -1823 1842 1843
		mu 0 3 1219 1218 1231
		f 5 -1836 -1844 1844 -1839 -1841
		mu 0 5 1224 1219 1231 1228 1229
		f 5 1845 -1842 -1819 1846 1847
		mu 0 5 1232 1230 1212 1214 1233
		f 3 1848 1849 1850
		mu 0 3 1234 1235 1236
		f 7 1851 -1851 1852 1853 1854 -1820 -1832
		mu 0 7 1227 1234 1236 1237 1238 1216 1215
		f 5 1855 -1816 1856 1857 -1850
		mu 0 5 1235 1207 1211 1239 1236
		f 4 1858 1859 1860 -1857
		mu 0 4 1211 1240 1241 1239
		f 5 1861 1862 -1853 -1858 -1861
		mu 0 5 1241 1242 1237 1236 1239
		f 3 1863 -1854 -1863
		mu 0 3 1242 1238 1237
		f 3 1864 -1859 -1815
		mu 0 3 1210 1240 1211
		f 5 1865 1866 1867 1868 1869
		mu 0 5 1243 1244 1245 1246 1247
		f 3 1870 1871 1872
		mu 0 3 1248 1249 1250
		f 6 1873 -1848 1874 1875 1876 1877
		mu 0 6 1251 1232 1233 1252 1253 1254
		f 5 1878 1879 -1877 1880 -1872
		mu 0 5 1249 1255 1254 1253 1250
		f 6 1881 1882 -1870 1883 1884 -1813
		mu 0 6 1208 1256 1243 1247 1257 1209
		f 3 1885 1886 -1868
		mu 0 3 1245 1258 1246
		f 5 1887 1888 1889 1890 1891
		mu 0 5 1259 1260 1261 1262 1263
		f 3 1892 1893 1894
		mu 0 3 1264 1265 1266
		f 5 1895 -1879 1896 1897 1898
		mu 0 5 1267 1255 1249 1268 1269
		f 4 -1871 1899 1900 -1897
		mu 0 4 1249 1248 1270 1268
		f 5 1901 -1895 1902 -1898 -1901
		mu 0 5 1270 1264 1266 1269 1268
		f 4 1903 -1899 1904 1905
		mu 0 4 1271 1267 1269 1272
		f 6 -1894 1906 1907 1908 -1891 1909
		mu 0 6 1266 1265 1273 1274 1263 1262
		f 4 -1905 -1903 -1910 1910
		mu 0 4 1272 1269 1266 1262
		f 4 1911 -1906 -1911 -1890
		mu 0 4 1261 1271 1272 1262
		f 5 1912 -1811 1913 1914 -1867
		mu 0 5 1244 1204 1206 1275 1245
		f 5 1915 1916 1917 1918 -1914
		mu 0 5 1206 1276 1277 1278 1275
		f 4 1919 -1886 -1915 -1919
		mu 0 4 1278 1258 1245 1275
		f 3 1920 1921 -1917
		mu 0 3 1276 1279 1277
		f 7 1922 -1892 -1909 1923 -1921 -1916 -1810
		mu 0 7 1205 1259 1263 1274 1279 1276 1206
		f 3 1924 1925 1926
		mu 0 3 1280 1281 1282
		f 4 1927 1928 1929 1930
		mu 0 4 1283 1284 1285 1286
		f 4 1931 1932 1933 1934
		mu 0 4 1287 1288 1289 1290
		f 4 1935 1936 -1932 1937
		mu 0 4 1291 1292 1288 1287
		f 4 1938 1939 -1938 1940
		mu 0 4 1293 1294 1291 1287
		f 4 1941 -1941 -1935 1942
		mu 0 4 1295 1293 1287 1290
		f 4 -1934 1943 -1928 1944
		mu 0 4 1290 1289 1284 1283
		f 4 1945 -1943 -1945 1946
		mu 0 4 1296 1295 1290 1283
		f 4 1947 -1947 -1931 1948
		mu 0 4 1297 1296 1283 1286
		f 6 1949 1950 1951 1952 1953 1954
		mu 0 6 1298 1299 1300 1301 1302 1303
		f 4 -1930 1955 -1950 1956
		mu 0 4 1286 1285 1299 1298
		f 4 1957 -1949 -1957 1958
		mu 0 4 1304 1297 1286 1298
		f 4 1959 -1959 -1955 1960
		mu 0 4 1305 1304 1298 1303
		f 5 -1954 1961 1962 -1925 1963
		mu 0 5 1303 1302 1306 1281 1280
		f 4 1964 -1961 -1964 1965
		mu 0 4 1307 1305 1303 1280
		f 5 1966 1967 -1966 -1927 1968
		mu 0 5 1308 1309 1307 1280 1282
		f 3 1969 1970 1971
		mu 0 3 1310 1311 1312
		f 7 1972 1973 1974 1975 1976 1977 1978
		mu 0 7 1313 1314 1315 1316 1317 1318 1319
		f 3 1979 1980 1981
		mu 0 3 1320 1321 1322
		f 6 1982 1983 1984 1985 1986 1987
		mu 0 6 1323 1324 1325 1326 1327 1328
		f 3 1988 -1988 1989
		mu 0 3 1329 1323 1328
		f 3 1990 1991 1992
		mu 0 3 1330 1331 1332
		f 6 1993 -1990 1994 -1992 1995 1996
		mu 0 6 1333 1329 1328 1332 1331 1334
		f 3 -1986 1997 1998
		mu 0 3 1327 1326 1335
		f 5 -1987 -1999 1999 -1993 -1995
		mu 0 5 1328 1327 1335 1330 1332
		f 8 2000 2001 -1997 2002 2003 -1982 2004 2005
		mu 0 8 1336 1337 1333 1334 1338 1320 1322 1339
		f 3 2006 2007 2008
		mu 0 3 1340 1341 1342
		f 8 2009 2010 -2009 2011 2012 2013 2014 -1984
		mu 0 8 1324 1343 1340 1342 1344 1345 1346 1325
		f 6 2015 -1979 2016 2017 2018 -2008
		mu 0 6 1341 1313 1319 1347 1348 1342
		f 3 2019 2020 -2018
		mu 0 3 1347 1349 1348
		f 5 2021 2022 -2012 -2019 -2021
		mu 0 5 1349 1350 1344 1342 1348
		f 3 2023 -2013 -2023
		mu 0 3 1350 1345 1344
		f 3 2024 2025 -1976
		mu 0 3 1316 1351 1317
		f 3 2026 2027 2028
		mu 0 3 1352 1353 1354
		f 4 2029 2030 2031 2032
		mu 0 4 1355 1356 1357 1358
		f 7 -1981 2033 2034 2035 -2032 2036 2037
		mu 0 7 1322 1321 1359 1360 1358 1357 1361
		f 5 2038 2039 2040 -2037 2041
		mu 0 5 1362 1363 1364 1361 1357
		f 4 -2005 -2038 -2041 2042
		mu 0 4 1339 1322 1361 1364
		f 4 2043 -2006 -2043 2044
		mu 0 4 1365 1336 1339 1364
		f 3 2045 -2045 -2040
		mu 0 3 1363 1365 1364
		f 3 2046 -2042 -2031
		mu 0 3 1356 1362 1357
		f 5 2047 -2029 2048 2049 -1975
		mu 0 5 1315 1352 1354 1366 1316
		f 4 -2049 2050 2051 2052
		mu 0 4 1366 1354 1367 1368
		f 5 2053 -2025 -2050 -2053 2054
		mu 0 5 1369 1351 1316 1366 1368
		f 5 2055 -2055 2056 -2035 2057
		mu 0 5 1370 1369 1368 1360 1359
		f 4 2058 -2036 -2057 -2052
		mu 0 4 1367 1358 1360 1368
		f 9 2059 2060 2061 -2033 -2059 -2051 -2028 2062 2063
		mu 0 9 1371 1372 1373 1355 1358 1367 1354 1353 1374
		f 6 2064 2065 2066 2067 -1971 2068
		mu 0 6 1375 1376 1377 1378 1312 1311
		f 3 2069 2070 -2068
		mu 0 3 1378 1379 1312
		f 3 2071 2072 -2066
		mu 0 3 1376 1380 1377
		f 5 2073 -2064 2074 -1972 -2071
		mu 0 5 1379 1371 1374 1310 1312
		f 3 2075 2076 2077
		mu 0 3 1381 1382 1383
		f 5 2078 2079 2080 2081 2082
		mu 0 5 1384 1385 1386 1387 1388
		f 3 2083 2084 2085
		mu 0 3 1389 1390 1391
		f 6 2086 2087 2088 2089 2090 2091
		mu 0 6 1392 1393 1394 1395 1396 1397
		f 4 2092 2093 2094 2095
		mu 0 4 1398 1399 1400 1401
		f 5 2096 2097 2098 -2092 2099
		mu 0 5 1402 1403 1404 1392 1397
		f 4 2100 -2100 2101 -2094
		mu 0 4 1399 1402 1397 1400
		f 4 2102 -2095 -2102 -2091
		mu 0 4 1396 1401 1400 1397
		f 4 2103 -2084 2104 2105
		mu 0 4 1405 1390 1389 1406
		f 5 2106 -2096 2107 -2105 2108
		mu 0 5 1407 1398 1401 1406 1389
		f 3 -2090 2109 2110
		mu 0 3 1396 1395 1408
		f 5 -2103 -2111 2111 -2106 -2108
		mu 0 5 1401 1396 1408 1405 1406
		f 5 2112 -2109 -2086 2113 2114
		mu 0 5 1409 1407 1389 1391 1410
		f 3 2115 2116 2117
		mu 0 3 1411 1412 1413
		f 7 2118 -2118 2119 2120 2121 -2087 -2099
		mu 0 7 1404 1411 1413 1414 1415 1393 1392
		f 5 2122 -2083 2123 2124 -2117
		mu 0 5 1412 1384 1388 1416 1413
		f 4 2125 2126 2127 -2124
		mu 0 4 1388 1417 1418 1416
		f 5 2128 2129 -2120 -2125 -2128
		mu 0 5 1418 1419 1414 1413 1416
		f 3 2130 -2121 -2130
		mu 0 3 1419 1415 1414
		f 3 2131 -2126 -2082
		mu 0 3 1387 1417 1388
		f 5 2132 2133 2134 2135 2136
		mu 0 5 1420 1421 1422 1423 1424
		f 3 2137 2138 2139
		mu 0 3 1425 1426 1427
		f 6 2140 -2115 2141 2142 2143 2144
		mu 0 6 1428 1409 1410 1429 1430 1431
		f 5 2145 2146 -2144 2147 -2139
		mu 0 5 1426 1432 1431 1430 1427
		f 6 2148 2149 -2137 2150 2151 -2080
		mu 0 6 1385 1433 1420 1424 1434 1386
		f 3 2152 2153 -2135
		mu 0 3 1422 1435 1423
		f 5 2154 2155 2156 2157 2158
		mu 0 5 1436 1437 1438 1439 1440
		f 3 2159 2160 2161
		mu 0 3 1441 1442 1443
		f 5 2162 -2146 2163 2164 2165
		mu 0 5 1444 1432 1426 1445 1446
		f 4 -2138 2166 2167 -2164
		mu 0 4 1426 1425 1447 1445
		f 5 2168 -2162 2169 -2165 -2168
		mu 0 5 1447 1441 1443 1446 1445
		f 4 2170 -2166 2171 2172
		mu 0 4 1448 1444 1446 1449
		f 6 -2161 2173 2174 2175 -2158 2176
		mu 0 6 1443 1442 1450 1451 1440 1439
		f 4 -2172 -2170 -2177 2177
		mu 0 4 1449 1446 1443 1439
		f 4 2178 -2173 -2178 -2157
		mu 0 4 1438 1448 1449 1439
		f 5 2179 -2078 2180 2181 -2134
		mu 0 5 1421 1381 1383 1452 1422
		f 5 2182 2183 2184 2185 -2181
		mu 0 5 1383 1453 1454 1455 1452
		f 4 2186 -2153 -2182 -2186
		mu 0 4 1455 1435 1422 1452
		f 3 2187 2188 -2184
		mu 0 3 1453 1456 1454
		f 7 2189 -2159 -2176 2190 -2188 -2183 -2077
		mu 0 7 1382 1436 1440 1451 1456 1453 1383
		f 3 2191 2192 2193
		mu 0 3 1457 1458 1459
		f 4 2194 2195 2196 2197
		mu 0 4 1460 1461 1462 1463
		f 4 2198 2199 2200 2201
		mu 0 4 1464 1465 1466 1467
		f 4 2202 2203 -2199 2204
		mu 0 4 1468 1469 1465 1464
		f 4 2205 2206 -2205 2207
		mu 0 4 1470 1471 1468 1464
		f 4 2208 -2208 -2202 2209
		mu 0 4 1472 1470 1464 1467
		f 4 -2201 2210 -2195 2211
		mu 0 4 1467 1466 1461 1460
		f 4 2212 -2210 -2212 2213
		mu 0 4 1473 1472 1467 1460
		f 4 2214 -2214 -2198 2215
		mu 0 4 1474 1473 1460 1463
		f 6 2216 2217 2218 2219 2220 2221
		mu 0 6 1475 1476 1477 1478 1479 1480
		f 4 -2197 2222 -2217 2223
		mu 0 4 1463 1462 1476 1475
		f 4 2224 -2216 -2224 2225
		mu 0 4 1481 1474 1463 1475
		f 4 2226 -2226 -2222 2227
		mu 0 4 1482 1481 1475 1480
		f 5 -2221 2228 2229 -2192 2230
		mu 0 5 1480 1479 1483 1458 1457
		f 4 2231 -2228 -2231 2232
		mu 0 4 1484 1482 1480 1457
		f 5 2233 2234 -2233 -2194 2235
		mu 0 5 1485 1486 1484 1457 1459
		f 3 2236 2237 2238
		mu 0 3 1487 1488 1489
		f 7 2239 2240 2241 2242 2243 2244 2245
		mu 0 7 1490 1491 1492 1493 1494 1495 1496
		f 3 2246 2247 2248
		mu 0 3 1497 1498 1499
		f 8 2249 2250 2251 2252 2253 2254 2255 2256
		mu 0 8 1500 1501 1502 1503 1504 1505 1506 1507
		f 3 2257 -2257 2258
		mu 0 3 1508 1500 1507
		f 3 2259 2260 2261
		mu 0 3 1509 1510 1511
		f 6 2262 -2259 2263 -2261 2264 2265
		mu 0 6 1512 1508 1507 1511 1510 1513
		f 3 -2255 2266 2267
		mu 0 3 1506 1505 1514
		f 5 -2256 -2268 2268 -2262 -2264
		mu 0 5 1507 1506 1514 1509 1511
		f 7 2269 2270 -2266 2271 2272 -2249 2273
		mu 0 7 1515 1516 1512 1513 1517 1497 1499
		f 3 2274 2275 2276
		mu 0 3 1518 1519 1520
		f 6 2277 -2277 2278 2279 2280 -2252
		mu 0 6 1502 1518 1520 1521 1522 1503
		f 6 2281 -2246 2282 2283 2284 -2276
		mu 0 6 1519 1490 1496 1523 1524 1520
		f 3 2285 2286 -2284
		mu 0 3 1523 1525 1524
		f 5 2287 2288 -2279 -2285 -2287
		mu 0 5 1525 1526 1521 1520 1524
		f 3 2289 -2280 -2289
		mu 0 3 1526 1522 1521
		f 3 2290 2291 -2243
		mu 0 3 1493 1527 1494
		f 4 2292 2293 2294 2295
		mu 0 4 1528 1529 1530 1531
		f 4 2296 2297 2298 2299
		mu 0 4 1532 1533 1534 1535
		f 7 -2248 2300 2301 2302 2303 2304 2305
		mu 0 7 1499 1498 1536 1537 1538 1539 1540
		f 5 2306 2307 -2274 -2306 2308
		mu 0 5 1541 1542 1515 1499 1540
		f 4 2309 2310 2311 -2298
		mu 0 4 1533 1543 1544 1534
		f 5 2312 -2309 2313 -2312 2314
		mu 0 5 1545 1541 1540 1534 1544
		f 3 2315 -2315 2316
		mu 0 3 1546 1545 1544
		f 4 2317 2318 -2317 -2311
		mu 0 4 1543 1547 1546 1544
		f 5 -2304 2319 2320 2321 2322
		mu 0 5 1539 1538 1548 1549 1550
		f 5 -2314 -2305 -2323 2323 -2299
		mu 0 5 1534 1540 1539 1550 1535
		f 5 2324 2325 2326 -2242 2327
		mu 0 5 1551 1552 1553 1493 1492
		f 6 2328 2329 -2303 2330 -2291 -2327
		mu 0 6 1553 1554 1538 1537 1527 1493
		f 5 2331 2332 2333 2334 2335
		mu 0 5 1555 1556 1557 1558 1559
		f 4 -2329 2336 -2335 2337
		mu 0 4 1554 1553 1559 1558
		f 5 2338 -2320 -2330 -2338 2339
		mu 0 5 1560 1548 1538 1554 1558
		f 3 2340 -2340 -2334
		mu 0 3 1557 1560 1558
		f 3 2341 -2296 2342
		mu 0 3 1561 1528 1531
		f 5 2343 -2343 2344 -2337 -2326
		mu 0 5 1552 1561 1531 1559 1553
		f 4 2345 -2336 -2345 -2295
		mu 0 4 1530 1555 1559 1531
		f 5 2346 2347 2348 2349 2350
		mu 0 5 1562 1563 1564 1565 1566
		f 3 2351 2352 2353
		mu 0 3 1567 1568 1569
		f 7 2354 2355 -2318 -2310 2356 2357 2358
		mu 0 7 1570 1571 1547 1543 1533 1572 1573
		f 5 -2297 2359 2360 2361 -2357
		mu 0 5 1533 1532 1574 1575 1572
		f 5 2362 -2354 2363 -2358 -2362
		mu 0 5 1575 1567 1569 1573 1572
		f 4 2364 -2359 2365 2366
		mu 0 4 1576 1570 1573 1577
		f 6 -2353 2367 2368 2369 -2350 2370
		mu 0 6 1569 1568 1578 1579 1566 1565
		f 4 -2366 -2364 -2371 2371
		mu 0 4 1577 1573 1569 1565
		f 4 2372 -2367 -2372 -2349
		mu 0 4 1564 1576 1577 1565
		f 7 2373 2374 -2239 2375 2376 -2346 -2294
		mu 0 7 1529 1580 1487 1489 1581 1555 1530
		f 5 2377 2378 2379 2380 -2376
		mu 0 5 1489 1582 1583 1584 1581
		f 5 2381 2382 -2332 -2377 -2381
		mu 0 5 1584 1585 1556 1555 1581
		f 3 2383 2384 -2379
		mu 0 3 1582 1586 1583
		f 7 2385 -2351 -2370 2386 -2384 -2378 -2238
		mu 0 7 1488 1562 1566 1579 1586 1582 1489
		f 3 2387 2388 2389
		mu 0 3 1587 1588 1589
		f 5 2390 2391 2392 2393 2394
		mu 0 5 1590 1591 1592 1593 1594
		f 3 2395 2396 2397
		mu 0 3 1595 1596 1597
		f 6 2398 2399 2400 2401 2402 2403
		mu 0 6 1598 1599 1600 1601 1602 1603
		f 4 2404 2405 2406 2407
		mu 0 4 1604 1605 1606 1607
		f 5 2408 2409 2410 -2404 2411
		mu 0 5 1608 1609 1610 1598 1603
		f 4 2412 -2412 2413 -2406
		mu 0 4 1605 1608 1603 1606
		f 4 2414 -2407 -2414 -2403
		mu 0 4 1602 1607 1606 1603
		f 4 2415 -2396 2416 2417
		mu 0 4 1611 1596 1595 1612
		f 5 2418 -2408 2419 -2417 2420
		mu 0 5 1613 1604 1607 1612 1595
		f 3 -2402 2421 2422
		mu 0 3 1602 1601 1614
		f 5 -2415 -2423 2423 -2418 -2420
		mu 0 5 1607 1602 1614 1611 1612
		f 5 2424 -2421 -2398 2425 2426
		mu 0 5 1615 1613 1595 1597 1616
		f 3 2427 2428 2429
		mu 0 3 1617 1618 1619
		f 7 2430 -2430 2431 2432 2433 -2399 -2411
		mu 0 7 1610 1617 1619 1620 1621 1599 1598
		f 5 2434 -2395 2435 2436 -2429
		mu 0 5 1618 1590 1594 1622 1619
		f 4 2437 2438 2439 -2436
		mu 0 4 1594 1623 1624 1622
		f 5 2440 2441 -2432 -2437 -2440
		mu 0 5 1624 1625 1620 1619 1622
		f 3 2442 -2433 -2442
		mu 0 3 1625 1621 1620
		f 3 2443 -2438 -2394
		mu 0 3 1593 1623 1594
		f 5 2444 2445 2446 2447 2448
		mu 0 5 1626 1627 1628 1629 1630
		f 3 2449 2450 2451
		mu 0 3 1631 1632 1633
		f 6 2452 -2427 2453 2454 2455 2456
		mu 0 6 1634 1615 1616 1635 1636 1637
		f 5 2457 2458 -2456 2459 -2451
		mu 0 5 1632 1638 1637 1636 1633
		f 6 2460 2461 -2449 2462 2463 -2392
		mu 0 6 1591 1639 1626 1630 1640 1592
		f 3 2464 2465 -2447
		mu 0 3 1628 1641 1629
		f 5 2466 2467 2468 2469 2470
		mu 0 5 1642 1643 1644 1645 1646
		f 3 2471 2472 2473
		mu 0 3 1647 1648 1649
		f 5 2474 -2458 2475 2476 2477
		mu 0 5 1650 1638 1632 1651 1652
		f 4 -2450 2478 2479 -2476
		mu 0 4 1632 1631 1653 1651
		f 5 2480 -2474 2481 -2477 -2480
		mu 0 5 1653 1647 1649 1652 1651
		f 4 2482 -2478 2483 2484
		mu 0 4 1654 1650 1652 1655
		f 6 -2473 2485 2486 2487 -2470 2488
		mu 0 6 1649 1648 1656 1657 1646 1645
		f 4 -2484 -2482 -2489 2489
		mu 0 4 1655 1652 1649 1645
		f 4 2490 -2485 -2490 -2469
		mu 0 4 1644 1654 1655 1645
		f 5 2491 -2390 2492 2493 -2446
		mu 0 5 1627 1587 1589 1658 1628
		f 5 2494 2495 2496 2497 -2493
		mu 0 5 1589 1659 1660 1661 1658
		f 4 2498 -2465 -2494 -2498
		mu 0 4 1661 1641 1628 1658
		f 3 2499 2500 -2496
		mu 0 3 1659 1662 1660
		f 7 2501 -2471 -2488 2502 -2500 -2495 -2389
		mu 0 7 1588 1642 1646 1657 1662 1659 1589
		f 4 2503 2504 2505 2506
		mu 0 4 1663 1664 1665 1666
		f 3 2507 2508 2509
		mu 0 3 1667 1668 1669
		f 6 2510 2511 2512 2513 2514 -2509
		mu 0 6 1668 1670 1671 1672 1673 1669
		f 4 2515 2516 2517 2518
		mu 0 4 1674 1675 1676 1677
		f 4 2519 2520 2521 -2517
		mu 0 4 1675 1678 1679 1676
		f 3 2522 2523 -2515
		mu 0 3 1673 1680 1669
		f 3 2524 2525 -2513
		mu 0 3 1671 1681 1672
		f 4 2526 2527 2528 2529
		mu 0 4 1682 1683 1684 1685
		f 6 2530 -2519 2531 -2530 2532 2533
		mu 0 6 1686 1674 1677 1682 1685 1687
		f 3 2534 2535 -2529
		mu 0 3 1684 1688 1685
		f 6 2536 -2510 -2524 2537 -2533 -2536
		mu 0 6 1688 1667 1669 1680 1687 1685
		f 5 2538 2539 2540 2541 2542
		mu 0 5 1689 1690 1691 1692 1693
		f 4 2543 -2543 2544 -2512
		mu 0 4 1670 1689 1693 1671
		f 4 2545 2546 -2525 -2545
		mu 0 4 1693 1694 1681 1671
		f 4 2547 2548 -2546 -2542
		mu 0 4 1692 1695 1694 1693
		f 8 2549 2550 2551 2552 2553 2554 2555 2556
		mu 0 8 1696 1697 1698 1699 1700 1701 1702 1703
		f 3 2557 -2557 2558
		mu 0 3 1704 1696 1703
		f 6 2559 2560 2561 -2548 2562 2563
		mu 0 6 1702 1705 1706 1695 1692 1707
		f 4 2564 2565 -2563 -2541
		mu 0 4 1691 1708 1707 1692
		f 5 2566 -2559 -2556 -2564 -2566
		mu 0 5 1708 1704 1703 1702 1707
		f 3 2567 -2560 -2555
		mu 0 3 1701 1705 1702
		f 4 2568 2569 -2504 2570
		mu 0 4 1709 1710 1664 1663
		f 3 2571 -2571 2572
		mu 0 3 1711 1709 1663
		f 5 2573 -2573 -2507 2574 -2552
		mu 0 5 1698 1711 1663 1666 1699
		f 3 2575 2576 2577
		mu 0 3 1712 1713 1714
		f 5 2578 2579 2580 2581 2582
		mu 0 5 1715 1716 1717 1718 1719
		f 3 2583 2584 2585
		mu 0 3 1720 1721 1722
		f 6 2586 2587 2588 2589 2590 2591
		mu 0 6 1723 1724 1725 1726 1727 1728
		f 4 2592 2593 2594 2595
		mu 0 4 1729 1730 1731 1732
		f 5 2596 2597 2598 -2592 2599
		mu 0 5 1733 1734 1735 1723 1728
		f 4 2600 -2600 2601 -2594
		mu 0 4 1730 1733 1728 1731
		f 4 2602 -2595 -2602 -2591
		mu 0 4 1727 1732 1731 1728
		f 4 2603 -2584 2604 2605
		mu 0 4 1736 1721 1720 1737
		f 5 2606 -2596 2607 -2605 2608
		mu 0 5 1738 1729 1732 1737 1720
		f 3 -2590 2609 2610
		mu 0 3 1727 1726 1739
		f 5 -2603 -2611 2611 -2606 -2608
		mu 0 5 1732 1727 1739 1736 1737
		f 5 2612 -2609 -2586 2613 2614
		mu 0 5 1740 1738 1720 1722 1741
		f 3 2615 2616 2617
		mu 0 3 1742 1743 1744
		f 7 2618 -2618 2619 2620 2621 -2587 -2599
		mu 0 7 1735 1742 1744 1745 1746 1724 1723
		f 5 2622 -2583 2623 2624 -2617
		mu 0 5 1743 1715 1719 1747 1744
		f 4 2625 2626 2627 -2624
		mu 0 4 1719 1748 1749 1747
		f 5 2628 2629 -2620 -2625 -2628
		mu 0 5 1749 1750 1745 1744 1747
		f 3 2630 -2621 -2630
		mu 0 3 1750 1746 1745
		f 3 2631 -2626 -2582
		mu 0 3 1718 1748 1719
		f 5 2632 2633 2634 2635 2636
		mu 0 5 1751 1752 1753 1754 1755
		f 3 2637 2638 2639
		mu 0 3 1756 1757 1758
		f 6 2640 -2615 2641 2642 2643 2644
		mu 0 6 1759 1740 1741 1760 1761 1762
		f 5 2645 2646 -2644 2647 -2639
		mu 0 5 1757 1763 1762 1761 1758
		f 6 2648 2649 -2637 2650 2651 -2580
		mu 0 6 1716 1764 1751 1755 1765 1717
		f 3 2652 2653 -2635
		mu 0 3 1753 1766 1754
		f 5 2654 2655 2656 2657 2658
		mu 0 5 1767 1768 1769 1770 1771
		f 3 2659 2660 2661
		mu 0 3 1772 1773 1774
		f 5 2662 -2646 2663 2664 2665
		mu 0 5 1775 1763 1757 1776 1777
		f 4 -2638 2666 2667 -2664
		mu 0 4 1757 1756 1778 1776
		f 5 2668 -2662 2669 -2665 -2668
		mu 0 5 1778 1772 1774 1777 1776
		f 4 2670 -2666 2671 2672
		mu 0 4 1779 1775 1777 1780
		f 6 -2661 2673 2674 2675 -2658 2676
		mu 0 6 1774 1773 1781 1782 1771 1770
		f 4 -2672 -2670 -2677 2677
		mu 0 4 1780 1777 1774 1770
		f 4 2678 -2673 -2678 -2657
		mu 0 4 1769 1779 1780 1770
		f 5 2679 -2578 2680 2681 -2634
		mu 0 5 1752 1712 1714 1783 1753
		f 5 2682 2683 2684 2685 -2681
		mu 0 5 1714 1784 1785 1786 1783
		f 4 2686 -2653 -2682 -2686
		mu 0 4 1786 1766 1753 1783
		f 3 2687 2688 -2684
		mu 0 3 1784 1787 1785
		f 7 2689 -2659 -2676 2690 -2688 -2683 -2577
		mu 0 7 1713 1767 1771 1782 1787 1784 1714
		f 3 2691 2692 2693
		mu 0 3 1788 1789 1790
		f 5 2694 2695 2696 2697 2698
		mu 0 5 1791 1792 1793 1794 1795
		f 3 2699 2700 2701
		mu 0 3 1796 1797 1798
		f 6 2702 2703 2704 2705 2706 2707
		mu 0 6 1799 1800 1801 1802 1803 1804
		f 4 2708 2709 2710 2711
		mu 0 4 1805 1806 1807 1808
		f 5 2712 2713 2714 -2708 2715
		mu 0 5 1809 1810 1811 1799 1804
		f 4 2716 -2716 2717 -2710
		mu 0 4 1806 1809 1804 1807
		f 4 2718 -2711 -2718 -2707
		mu 0 4 1803 1808 1807 1804
		f 4 2719 -2700 2720 2721
		mu 0 4 1812 1797 1796 1813
		f 5 2722 -2712 2723 -2721 2724
		mu 0 5 1814 1805 1808 1813 1796
		f 3 -2706 2725 2726
		mu 0 3 1803 1802 1815
		f 5 -2719 -2727 2727 -2722 -2724
		mu 0 5 1808 1803 1815 1812 1813
		f 5 2728 -2725 -2702 2729 2730
		mu 0 5 1816 1814 1796 1798 1817
		f 3 2731 2732 2733
		mu 0 3 1818 1819 1820
		f 7 2734 -2734 2735 2736 2737 -2703 -2715
		mu 0 7 1811 1818 1820 1821 1822 1800 1799
		f 5 2738 -2699 2739 2740 -2733
		mu 0 5 1819 1791 1795 1823 1820
		f 4 2741 2742 2743 -2740
		mu 0 4 1795 1824 1825 1823
		f 5 2744 2745 -2736 -2741 -2744
		mu 0 5 1825 1826 1821 1820 1823
		f 3 2746 -2737 -2746
		mu 0 3 1826 1822 1821
		f 3 2747 -2742 -2698
		mu 0 3 1794 1824 1795
		f 5 2748 2749 2750 2751 2752
		mu 0 5 1827 1828 1829 1830 1831
		f 3 2753 2754 2755
		mu 0 3 1832 1833 1834
		f 6 2756 -2731 2757 2758 2759 2760
		mu 0 6 1835 1816 1817 1836 1837 1838
		f 5 2761 2762 -2760 2763 -2755
		mu 0 5 1833 1839 1838 1837 1834
		f 6 2764 2765 -2753 2766 2767 -2696
		mu 0 6 1792 1840 1827 1831 1841 1793
		f 3 2768 2769 -2751
		mu 0 3 1829 1842 1830
		f 5 2770 2771 2772 2773 2774
		mu 0 5 1843 1844 1845 1846 1847
		f 3 2775 2776 2777
		mu 0 3 1848 1849 1850
		f 5 2778 -2762 2779 2780 2781
		mu 0 5 1851 1839 1833 1852 1853
		f 4 -2754 2782 2783 -2780
		mu 0 4 1833 1832 1854 1852
		f 5 2784 -2778 2785 -2781 -2784
		mu 0 5 1854 1848 1850 1853 1852
		f 4 2786 -2782 2787 2788
		mu 0 4 1855 1851 1853 1856
		f 6 -2777 2789 2790 2791 -2774 2792
		mu 0 6 1850 1849 1857 1858 1847 1846
		f 4 -2788 -2786 -2793 2793
		mu 0 4 1856 1853 1850 1846
		f 4 2794 -2789 -2794 -2773
		mu 0 4 1845 1855 1856 1846
		f 5 2795 -2694 2796 2797 -2750
		mu 0 5 1828 1788 1790 1859 1829
		f 5 2798 2799 2800 2801 -2797
		mu 0 5 1790 1860 1861 1862 1859
		f 4 2802 -2769 -2798 -2802
		mu 0 4 1862 1842 1829 1859
		f 3 2803 2804 -2800
		mu 0 3 1860 1863 1861
		f 7 2805 -2775 -2792 2806 -2804 -2799 -2693
		mu 0 7 1789 1843 1847 1858 1863 1860 1790
		f 4 2807 2808 2809 2810
		mu 0 4 1864 1865 1866 1867
		f 3 2811 2812 2813
		mu 0 3 1868 1869 1870
		f 6 2814 2815 2816 2817 2818 -2813
		mu 0 6 1869 1871 1872 1873 1874 1870
		f 4 2819 2820 2821 2822
		mu 0 4 1875 1876 1877 1878
		f 4 2823 2824 2825 -2821
		mu 0 4 1876 1879 1880 1877
		f 3 2826 2827 -2819
		mu 0 3 1874 1881 1870
		f 3 2828 2829 -2817
		mu 0 3 1872 1882 1873
		f 4 2830 2831 2832 2833
		mu 0 4 1883 1884 1885 1886
		f 6 2834 -2823 2835 -2834 2836 2837
		mu 0 6 1887 1875 1878 1883 1886 1888
		f 3 2838 2839 -2833
		mu 0 3 1885 1889 1886
		f 6 2840 -2814 -2828 2841 -2837 -2840
		mu 0 6 1889 1868 1870 1881 1888 1886
		f 5 2842 2843 2844 2845 2846
		mu 0 5 1890 1891 1892 1893 1894
		f 4 2847 -2847 2848 -2816
		mu 0 4 1871 1890 1894 1872
		f 4 2849 2850 -2829 -2849
		mu 0 4 1894 1895 1882 1872
		f 4 2851 2852 -2850 -2846
		mu 0 4 1893 1896 1895 1894
		f 8 2853 2854 2855 2856 2857 2858 2859 2860
		mu 0 8 1897 1898 1899 1900 1901 1902 1903 1904
		f 3 2861 -2861 2862
		mu 0 3 1905 1897 1904
		f 6 2863 2864 2865 -2852 2866 2867
		mu 0 6 1903 1906 1907 1896 1893 1908
		f 4 2868 2869 -2867 -2845
		mu 0 4 1892 1909 1908 1893
		f 5 2870 -2863 -2860 -2868 -2870
		mu 0 5 1909 1905 1904 1903 1908
		f 3 2871 -2864 -2859
		mu 0 3 1902 1906 1903
		f 4 2872 2873 -2808 2874
		mu 0 4 1910 1911 1865 1864
		f 3 2875 -2875 2876
		mu 0 3 1912 1910 1864
		f 5 2877 -2877 -2811 2878 -2856
		mu 0 5 1899 1912 1864 1867 1900
		f 4 2879 2880 2881 2882
		mu 0 4 1913 1914 1915 1916
		f 3 2883 2884 2885
		mu 0 3 1917 1918 1919
		f 6 2886 2887 2888 2889 2890 -2885
		mu 0 6 1918 1920 1921 1922 1923 1919
		f 4 2891 2892 2893 2894
		mu 0 4 1924 1925 1926 1927
		f 4 2895 2896 2897 -2893
		mu 0 4 1925 1928 1929 1926
		f 3 2898 2899 -2891
		mu 0 3 1923 1930 1919
		f 3 2900 2901 -2889
		mu 0 3 1921 1931 1922
		f 4 2902 2903 2904 2905
		mu 0 4 1932 1933 1934 1935
		f 6 2906 -2895 2907 -2906 2908 2909
		mu 0 6 1936 1924 1927 1932 1935 1937
		f 3 2910 2911 -2905
		mu 0 3 1934 1938 1935
		f 6 2912 -2886 -2900 2913 -2909 -2912
		mu 0 6 1938 1917 1919 1930 1937 1935
		f 5 2914 2915 2916 2917 2918
		mu 0 5 1939 1940 1941 1942 1943;
	setAttr ".fc[1000:1236]"
		f 4 2919 -2919 2920 -2888
		mu 0 4 1920 1939 1943 1921
		f 4 2921 2922 -2901 -2921
		mu 0 4 1943 1944 1931 1921
		f 4 2923 2924 -2922 -2918
		mu 0 4 1942 1945 1944 1943
		f 8 2925 2926 2927 2928 2929 2930 2931 2932
		mu 0 8 1946 1947 1948 1949 1950 1951 1952 1953
		f 3 2933 -2933 2934
		mu 0 3 1954 1946 1953
		f 6 2935 2936 2937 -2924 2938 2939
		mu 0 6 1952 1955 1956 1945 1942 1957
		f 4 2940 2941 -2939 -2917
		mu 0 4 1941 1958 1957 1942
		f 5 2942 -2935 -2932 -2940 -2942
		mu 0 5 1958 1954 1953 1952 1957
		f 3 2943 -2936 -2931
		mu 0 3 1951 1955 1952
		f 4 2944 2945 -2880 2946
		mu 0 4 1959 1960 1914 1913
		f 3 2947 -2947 2948
		mu 0 3 1961 1959 1913
		f 5 2949 -2949 -2883 2950 -2928
		mu 0 5 1948 1961 1913 1916 1949
		f 3 2951 2952 2953
		mu 0 3 1962 1963 1964
		f 5 2954 2955 2956 2957 2958
		mu 0 5 1965 1966 1967 1968 1969
		f 3 2959 2960 2961
		mu 0 3 1970 1971 1972
		f 6 2962 2963 2964 2965 2966 2967
		mu 0 6 1973 1974 1975 1976 1977 1978
		f 4 2968 2969 2970 2971
		mu 0 4 1979 1980 1981 1982
		f 5 2972 2973 2974 -2968 2975
		mu 0 5 1983 1984 1985 1973 1978
		f 4 2976 -2976 2977 -2970
		mu 0 4 1980 1983 1978 1981
		f 4 2978 -2971 -2978 -2967
		mu 0 4 1977 1982 1981 1978
		f 4 2979 -2960 2980 2981
		mu 0 4 1986 1971 1970 1987
		f 5 2982 -2972 2983 -2981 2984
		mu 0 5 1988 1979 1982 1987 1970
		f 3 -2966 2985 2986
		mu 0 3 1977 1976 1989
		f 5 -2979 -2987 2987 -2982 -2984
		mu 0 5 1982 1977 1989 1986 1987
		f 5 2988 -2985 -2962 2989 2990
		mu 0 5 1990 1988 1970 1972 1991
		f 3 2991 2992 2993
		mu 0 3 1992 1993 1994
		f 7 2994 -2994 2995 2996 2997 -2963 -2975
		mu 0 7 1985 1992 1994 1995 1996 1974 1973
		f 5 2998 -2959 2999 3000 -2993
		mu 0 5 1993 1965 1969 1997 1994
		f 4 3001 3002 3003 -3000
		mu 0 4 1969 1998 1999 1997
		f 5 3004 3005 -2996 -3001 -3004
		mu 0 5 1999 2000 1995 1994 1997
		f 3 3006 -2997 -3006
		mu 0 3 2000 1996 1995
		f 3 3007 -3002 -2958
		mu 0 3 1968 1998 1969
		f 5 3008 3009 3010 3011 3012
		mu 0 5 2001 2002 2003 2004 2005
		f 3 3013 3014 3015
		mu 0 3 2006 2007 2008
		f 6 3016 -2991 3017 3018 3019 3020
		mu 0 6 2009 1990 1991 2010 2011 2012
		f 5 3021 3022 -3020 3023 -3015
		mu 0 5 2007 2013 2012 2011 2008
		f 6 3024 3025 -3013 3026 3027 -2956
		mu 0 6 1966 2014 2001 2005 2015 1967
		f 3 3028 3029 -3011
		mu 0 3 2003 2016 2004
		f 5 3030 3031 3032 3033 3034
		mu 0 5 2017 2018 2019 2020 2021
		f 3 3035 3036 3037
		mu 0 3 2022 2023 2024
		f 5 3038 -3022 3039 3040 3041
		mu 0 5 2025 2013 2007 2026 2027
		f 4 -3014 3042 3043 -3040
		mu 0 4 2007 2006 2028 2026
		f 5 3044 -3038 3045 -3041 -3044
		mu 0 5 2028 2022 2024 2027 2026
		f 4 3046 -3042 3047 3048
		mu 0 4 2029 2025 2027 2030
		f 6 -3037 3049 3050 3051 -3034 3052
		mu 0 6 2024 2023 2031 2032 2021 2020
		f 4 -3048 -3046 -3053 3053
		mu 0 4 2030 2027 2024 2020
		f 4 3054 -3049 -3054 -3033
		mu 0 4 2019 2029 2030 2020
		f 5 3055 -2954 3056 3057 -3010
		mu 0 5 2002 1962 1964 2033 2003
		f 5 3058 3059 3060 3061 -3057
		mu 0 5 1964 2034 2035 2036 2033
		f 4 3062 -3029 -3058 -3062
		mu 0 4 2036 2016 2003 2033
		f 3 3063 3064 -3060
		mu 0 3 2034 2037 2035
		f 7 3065 -3035 -3052 3066 -3064 -3059 -2953
		mu 0 7 1963 2017 2021 2032 2037 2034 1964
		f 4 3067 3068 3069 3070
		mu 0 4 2038 2039 2040 2041
		f 3 3071 3072 3073
		mu 0 3 2042 2043 2044
		f 6 3074 3075 3076 3077 3078 -3073
		mu 0 6 2043 2045 2046 2047 2048 2044
		f 4 3079 3080 3081 3082
		mu 0 4 2049 2050 2051 2052
		f 4 3083 3084 3085 -3081
		mu 0 4 2050 2053 2054 2051
		f 3 3086 3087 -3079
		mu 0 3 2048 2055 2044
		f 3 3088 3089 -3077
		mu 0 3 2046 2056 2047
		f 4 3090 3091 3092 3093
		mu 0 4 2057 2058 2059 2060
		f 6 3094 -3083 3095 -3094 3096 3097
		mu 0 6 2061 2049 2052 2057 2060 2062
		f 3 3098 3099 -3093
		mu 0 3 2059 2063 2060
		f 6 3100 -3074 -3088 3101 -3097 -3100
		mu 0 6 2063 2042 2044 2055 2062 2060
		f 5 3102 3103 3104 3105 3106
		mu 0 5 2064 2065 2066 2067 2068
		f 4 3107 -3107 3108 -3076
		mu 0 4 2045 2064 2068 2046
		f 4 3109 3110 -3089 -3109
		mu 0 4 2068 2069 2056 2046
		f 4 3111 3112 -3110 -3106
		mu 0 4 2067 2070 2069 2068
		f 8 3113 3114 3115 3116 3117 3118 3119 3120
		mu 0 8 2071 2072 2073 2074 2075 2076 2077 2078
		f 3 3121 -3121 3122
		mu 0 3 2079 2071 2078
		f 6 3123 3124 3125 -3112 3126 3127
		mu 0 6 2077 2080 2081 2070 2067 2082
		f 4 3128 3129 -3127 -3105
		mu 0 4 2066 2083 2082 2067
		f 5 3130 -3123 -3120 -3128 -3130
		mu 0 5 2083 2079 2078 2077 2082
		f 3 3131 -3124 -3119
		mu 0 3 2076 2080 2077
		f 4 3132 3133 -3068 3134
		mu 0 4 2084 2085 2039 2038
		f 3 3135 -3135 3136
		mu 0 3 2086 2084 2038
		f 5 3137 -3137 -3071 3138 -3116
		mu 0 5 2073 2086 2038 2041 2074
		f 4 3139 3140 3141 3142
		mu 0 4 2087 2088 2089 2090
		f 6 3143 3144 3145 3146 3147 3148
		mu 0 6 2091 2092 2093 2094 2095 2096
		f 6 3149 3150 3151 3152 3153 3154
		mu 0 6 2097 2098 2099 2100 2101 2102
		f 4 3155 3156 -3155 3157
		mu 0 4 2103 2104 2097 2102
		f 5 3158 3159 -3158 3160 3161
		mu 0 5 2105 2106 2103 2102 2107
		f 4 3162 3163 -3161 -3154
		mu 0 4 2101 2108 2107 2102
		f 4 3164 3165 3166 3167
		mu 0 4 2109 2110 2111 2112
		f 4 3168 3169 -3168 3170
		mu 0 4 2113 2114 2109 2112
		f 6 -3167 3171 3172 3173 -3149 3174
		mu 0 6 2112 2111 2115 2116 2091 2096
		f 6 3175 3176 -3171 -3175 3177 -3157
		mu 0 6 2104 2117 2113 2112 2096 2097
		f 6 3178 3179 3180 -3150 -3178 -3148
		mu 0 6 2095 2118 2119 2098 2097 2096
		f 4 3181 3182 3183 3184
		mu 0 4 2120 2121 2122 2123
		f 5 3185 3186 3187 3188 3189
		mu 0 5 2124 2125 2126 2127 2128
		f 5 3190 3191 -3153 3192 -3188
		mu 0 5 2126 2129 2101 2100 2127
		f 3 3193 -3163 -3192
		mu 0 3 2129 2108 2101
		f 4 3194 -3185 3195 -3147
		mu 0 4 2094 2120 2123 2095
		f 4 3196 3197 -3179 -3196
		mu 0 4 2123 2130 2118 2095
		f 6 3198 -3190 3199 3200 -3197 -3184
		mu 0 6 2122 2124 2128 2131 2130 2123
		f 3 3201 -3186 3202
		mu 0 3 2132 2125 2124
		f 4 3203 -3143 3204 -3183
		mu 0 4 2121 2087 2090 2122
		f 5 3205 3206 -3203 -3199 -3205
		mu 0 5 2090 2133 2132 2124 2122
		f 4 3207 3208 -3206 -3142
		mu 0 4 2089 2134 2133 2090
		f 3 3209 3210 3211
		mu 0 3 2135 2136 2137
		f 5 3212 3213 3214 3215 3216
		mu 0 5 2138 2139 2140 2141 2142
		f 3 3217 3218 3219
		mu 0 3 2143 2144 2145
		f 6 3220 3221 3222 3223 3224 3225
		mu 0 6 2146 2147 2148 2149 2150 2151
		f 4 3226 3227 3228 3229
		mu 0 4 2152 2153 2154 2155
		f 5 3230 3231 3232 -3226 3233
		mu 0 5 2156 2157 2158 2146 2151
		f 4 3234 -3234 3235 -3228
		mu 0 4 2153 2156 2151 2154
		f 4 3236 -3229 -3236 -3225
		mu 0 4 2150 2155 2154 2151
		f 4 3237 -3218 3238 3239
		mu 0 4 2159 2144 2143 2160
		f 5 3240 -3230 3241 -3239 3242
		mu 0 5 2161 2152 2155 2160 2143
		f 3 -3224 3243 3244
		mu 0 3 2150 2149 2162
		f 5 -3237 -3245 3245 -3240 -3242
		mu 0 5 2155 2150 2162 2159 2160
		f 5 3246 -3243 -3220 3247 3248
		mu 0 5 2163 2161 2143 2145 2164
		f 3 3249 3250 3251
		mu 0 3 2165 2166 2167
		f 7 3252 -3252 3253 3254 3255 -3221 -3233
		mu 0 7 2158 2165 2167 2168 2169 2147 2146
		f 5 3256 -3217 3257 3258 -3251
		mu 0 5 2166 2138 2142 2170 2167
		f 4 3259 3260 3261 -3258
		mu 0 4 2142 2171 2172 2170
		f 5 3262 3263 -3254 -3259 -3262
		mu 0 5 2172 2173 2168 2167 2170
		f 3 3264 -3255 -3264
		mu 0 3 2173 2169 2168
		f 3 3265 -3260 -3216
		mu 0 3 2141 2171 2142
		f 5 3266 3267 3268 3269 3270
		mu 0 5 2174 2175 2176 2177 2178
		f 3 3271 3272 3273
		mu 0 3 2179 2180 2181
		f 6 3274 -3249 3275 3276 3277 3278
		mu 0 6 2182 2163 2164 2183 2184 2185
		f 5 3279 3280 -3278 3281 -3273
		mu 0 5 2180 2186 2185 2184 2181
		f 6 3282 3283 -3271 3284 3285 -3214
		mu 0 6 2139 2187 2174 2178 2188 2140
		f 3 3286 3287 -3269
		mu 0 3 2176 2189 2177
		f 5 3288 3289 3290 3291 3292
		mu 0 5 2190 2191 2192 2193 2194
		f 3 3293 3294 3295
		mu 0 3 2195 2196 2197
		f 5 3296 -3280 3297 3298 3299
		mu 0 5 2198 2186 2180 2199 2200
		f 4 -3272 3300 3301 -3298
		mu 0 4 2180 2179 2201 2199
		f 5 3302 -3296 3303 -3299 -3302
		mu 0 5 2201 2195 2197 2200 2199
		f 4 3304 -3300 3305 3306
		mu 0 4 2202 2198 2200 2203
		f 6 -3295 3307 3308 3309 -3292 3310
		mu 0 6 2197 2196 2204 2205 2194 2193
		f 4 -3306 -3304 -3311 3311
		mu 0 4 2203 2200 2197 2193
		f 4 3312 -3307 -3312 -3291
		mu 0 4 2192 2202 2203 2193
		f 5 3313 -3212 3314 3315 -3268
		mu 0 5 2175 2135 2137 2206 2176
		f 5 3316 3317 3318 3319 -3315
		mu 0 5 2137 2207 2208 2209 2206
		f 4 3320 -3287 -3316 -3320
		mu 0 4 2209 2189 2176 2206
		f 3 3321 3322 -3318
		mu 0 3 2207 2210 2208
		f 7 3323 -3293 -3310 3324 -3322 -3317 -3211
		mu 0 7 2136 2190 2194 2205 2210 2207 2137
		f 4 3325 3326 3327 3328
		mu 0 4 2211 2212 2213 2214
		f 3 3329 3330 3331
		mu 0 3 2215 2216 2217
		f 6 3332 3333 3334 3335 3336 -3331
		mu 0 6 2216 2218 2219 2220 2221 2217
		f 4 3337 3338 3339 3340
		mu 0 4 2222 2223 2224 2225
		f 4 3341 3342 3343 -3339
		mu 0 4 2223 2226 2227 2224
		f 3 3344 3345 -3337
		mu 0 3 2221 2228 2217
		f 3 3346 3347 -3335
		mu 0 3 2219 2229 2220
		f 4 3348 3349 3350 3351
		mu 0 4 2230 2231 2232 2233
		f 6 3352 -3341 3353 -3352 3354 3355
		mu 0 6 2234 2222 2225 2230 2233 2235
		f 3 3356 3357 -3351
		mu 0 3 2232 2236 2233
		f 6 3358 -3332 -3346 3359 -3355 -3358
		mu 0 6 2236 2215 2217 2228 2235 2233
		f 5 3360 3361 3362 3363 3364
		mu 0 5 2237 2238 2239 2240 2241
		f 4 3365 -3365 3366 -3334
		mu 0 4 2218 2237 2241 2219
		f 4 3367 3368 -3347 -3367
		mu 0 4 2241 2242 2229 2219
		f 4 3369 3370 -3368 -3364
		mu 0 4 2240 2243 2242 2241
		f 8 3371 3372 3373 3374 3375 3376 3377 3378
		mu 0 8 2244 2245 2246 2247 2248 2249 2250 2251
		f 3 3379 -3379 3380
		mu 0 3 2252 2244 2251
		f 6 3381 3382 3383 -3370 3384 3385
		mu 0 6 2250 2253 2254 2243 2240 2255
		f 4 3386 3387 -3385 -3363
		mu 0 4 2239 2256 2255 2240
		f 5 3388 -3381 -3378 -3386 -3388
		mu 0 5 2256 2252 2251 2250 2255
		f 3 3389 -3382 -3377
		mu 0 3 2249 2253 2250
		f 4 3390 3391 -3326 3392
		mu 0 4 2257 2258 2212 2211
		f 3 3393 -3393 3394
		mu 0 3 2259 2257 2211
		f 5 3395 -3395 -3329 3396 -3374
		mu 0 5 2246 2259 2211 2214 2247
		f 3 3397 3398 3399
		mu 0 3 2260 2261 2262
		f 7 3400 3401 3402 3403 3404 3405 3406
		mu 0 7 2263 2264 2265 2266 2267 2268 2269
		f 3 3407 3408 3409
		mu 0 3 2270 2271 2272
		f 6 3410 3411 3412 3413 3414 3415
		mu 0 6 2273 2274 2275 2276 2277 2278
		f 3 3416 -3416 3417
		mu 0 3 2279 2273 2278
		f 3 3418 3419 3420
		mu 0 3 2280 2281 2282
		f 6 3421 -3418 3422 -3420 3423 3424
		mu 0 6 2283 2279 2278 2282 2281 2284
		f 3 -3414 3425 3426
		mu 0 3 2277 2276 2285
		f 5 -3415 -3427 3427 -3421 -3423
		mu 0 5 2278 2277 2285 2280 2282
		f 8 3428 3429 -3425 3430 3431 -3410 3432 3433
		mu 0 8 2286 2287 2283 2284 2288 2270 2272 2289
		f 3 3434 3435 3436
		mu 0 3 2290 2291 2292
		f 8 3437 3438 -3437 3439 3440 3441 3442 -3412
		mu 0 8 2274 2293 2290 2292 2294 2295 2296 2275
		f 6 3443 -3407 3444 3445 3446 -3436
		mu 0 6 2291 2263 2269 2297 2298 2292
		f 3 3447 3448 -3446
		mu 0 3 2297 2299 2298
		f 5 3449 3450 -3440 -3447 -3449
		mu 0 5 2299 2300 2294 2292 2298
		f 3 3451 -3441 -3451
		mu 0 3 2300 2295 2294
		f 3 3452 3453 -3404
		mu 0 3 2266 2301 2267
		f 3 3454 3455 3456
		mu 0 3 2302 2303 2304
		f 4 3457 3458 3459 3460
		mu 0 4 2305 2306 2307 2308
		f 7 -3409 3461 3462 3463 -3460 3464 3465
		mu 0 7 2272 2271 2309 2310 2308 2307 2311
		f 5 3466 3467 3468 -3465 3469
		mu 0 5 2312 2313 2314 2311 2307
		f 4 -3433 -3466 -3469 3470
		mu 0 4 2289 2272 2311 2314
		f 4 3471 -3434 -3471 3472
		mu 0 4 2315 2286 2289 2314
		f 3 3473 -3473 -3468
		mu 0 3 2313 2315 2314
		f 3 3474 -3470 -3459
		mu 0 3 2306 2312 2307
		f 5 3475 -3457 3476 3477 -3403
		mu 0 5 2265 2302 2304 2316 2266
		f 4 -3477 3478 3479 3480
		mu 0 4 2316 2304 2317 2318
		f 5 3481 -3453 -3478 -3481 3482
		mu 0 5 2319 2301 2266 2316 2318
		f 5 3483 -3483 3484 -3463 3485
		mu 0 5 2320 2319 2318 2310 2309
		f 4 3486 -3464 -3485 -3480
		mu 0 4 2317 2308 2310 2318
		f 9 3487 3488 3489 -3461 -3487 -3479 -3456 3490 3491
		mu 0 9 2321 2322 2323 2305 2308 2317 2304 2303 2324
		f 6 3492 3493 3494 3495 -3399 3496
		mu 0 6 2325 2326 2327 2328 2262 2261
		f 3 3497 3498 -3496
		mu 0 3 2328 2329 2262
		f 3 3499 3500 -3494
		mu 0 3 2326 2330 2327
		f 5 3501 -3492 3502 -3400 -3499
		mu 0 5 2329 2321 2324 2260 2262
		f 3 3503 3504 3505
		mu 0 3 2331 2332 2333
		f 5 3506 3507 3508 3509 3510
		mu 0 5 2334 2335 2336 2337 2338
		f 3 3511 3512 3513
		mu 0 3 2339 2340 2341
		f 6 3514 3515 3516 3517 3518 3519
		mu 0 6 2342 2343 2344 2345 2346 2347
		f 4 3520 3521 3522 3523
		mu 0 4 2348 2349 2350 2351
		f 5 3524 3525 3526 -3520 3527
		mu 0 5 2352 2353 2354 2342 2347
		f 4 3528 -3528 3529 -3522
		mu 0 4 2349 2352 2347 2350
		f 4 3530 -3523 -3530 -3519
		mu 0 4 2346 2351 2350 2347
		f 4 3531 -3512 3532 3533
		mu 0 4 2355 2340 2339 2356
		f 5 3534 -3524 3535 -3533 3536
		mu 0 5 2357 2348 2351 2356 2339
		f 3 -3518 3537 3538
		mu 0 3 2346 2345 2358
		f 5 -3531 -3539 3539 -3534 -3536
		mu 0 5 2351 2346 2358 2355 2356
		f 5 3540 -3537 -3514 3541 3542
		mu 0 5 2359 2357 2339 2341 2360
		f 3 3543 3544 3545
		mu 0 3 2361 2362 2363
		f 7 3546 -3546 3547 3548 3549 -3515 -3527
		mu 0 7 2354 2361 2363 2364 2365 2343 2342
		f 5 3550 -3511 3551 3552 -3545
		mu 0 5 2362 2334 2338 2366 2363
		f 4 3553 3554 3555 -3552
		mu 0 4 2338 2367 2368 2366
		f 5 3556 3557 -3548 -3553 -3556
		mu 0 5 2368 2369 2364 2363 2366
		f 3 3558 -3549 -3558
		mu 0 3 2369 2365 2364
		f 3 3559 -3554 -3510
		mu 0 3 2337 2367 2338
		f 5 3560 3561 3562 3563 3564
		mu 0 5 2370 2371 2372 2373 2374
		f 3 3565 3566 3567
		mu 0 3 2375 2376 2377
		f 6 3568 -3543 3569 3570 3571 3572
		mu 0 6 2378 2359 2360 2379 2380 2381
		f 5 3573 3574 -3572 3575 -3567
		mu 0 5 2376 2382 2381 2380 2377
		f 6 3576 3577 -3565 3578 3579 -3508
		mu 0 6 2335 2383 2370 2374 2384 2336
		f 3 3580 3581 -3563
		mu 0 3 2372 2385 2373
		f 5 3582 3583 3584 3585 3586
		mu 0 5 2386 2387 2388 2389 2390
		f 3 3587 3588 3589
		mu 0 3 2391 2392 2393
		f 5 3590 -3574 3591 3592 3593
		mu 0 5 2394 2382 2376 2395 2396
		f 4 -3566 3594 3595 -3592
		mu 0 4 2376 2375 2397 2395
		f 5 3596 -3590 3597 -3593 -3596
		mu 0 5 2397 2391 2393 2396 2395
		f 4 3598 -3594 3599 3600
		mu 0 4 2398 2394 2396 2399
		f 6 -3589 3601 3602 3603 -3586 3604
		mu 0 6 2393 2392 2400 2401 2390 2389
		f 4 -3600 -3598 -3605 3605
		mu 0 4 2399 2396 2393 2389
		f 4 3606 -3601 -3606 -3585
		mu 0 4 2388 2398 2399 2389
		f 5 3607 -3506 3608 3609 -3562
		mu 0 5 2371 2331 2333 2402 2372
		f 5 3610 3611 3612 3613 -3609
		mu 0 5 2333 2403 2404 2405 2402
		f 4 3614 -3581 -3610 -3614
		mu 0 4 2405 2385 2372 2402
		f 3 3615 3616 -3612
		mu 0 3 2403 2406 2404
		f 7 3617 -3587 -3604 3618 -3616 -3611 -3505
		mu 0 7 2332 2386 2390 2401 2406 2403 2333;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "C_pointer_GRP" -p "C_speedometer_GRP";
	rename -uid "1BECC860-0000-2709-572B-B76A00002EA3";
	setAttr ".r" -type "double3" 0 130 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "C_pointer_CTL" -p "C_pointer_GRP";
	rename -uid "1BECC860-0000-2709-572B-B74B00002E98";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 -4.4408920985006262e-15 ;
	setAttr ".r" -type "double3" 0 -3.5311250384401278e-31 -1.4124500153760511e-30 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode locator -n "C_pointer_CTLShape" -p "C_pointer_CTL";
	rename -uid "1BECC860-0000-2709-572B-B74B00002E99";
	setAttr -k off ".v";
createNode parentConstraint -n "C_UI_GRP_parentConstraint1" -p "C_UI_GRP";
	rename -uid "1BECC860-0000-2709-572B-B70800002E75";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "C_playerCamera_CAMW0" -dv 1 -min 
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
	setAttr ".lr" -type "double3" -13.341918040176397 180 0 ;
	setAttr ".rst" -type "double3" 1.4082676129127675e-15 3.3114592681993305 -9.9181636573645413 ;
	setAttr ".rsrr" -type "double3" -13.341918040176397 180 0 ;
	setAttr -k on ".w0";
createNode transform -n "C_healthBar_GRP" -p "C_UI_GRP";
	rename -uid "1BECC860-0000-2709-572B-BC3800003110";
	setAttr ".t" -type "double3" -0.45265093194092826 0.10878073519490741 -0.99999999999999534 ;
	setAttr ".r" -type "double3" 90 -6.3611093629270351e-15 0 ;
	setAttr ".s" -type "double3" 0.044884810721099497 0.044884810721099497 0.044884810721099455 ;
createNode transform -n "C_backdrop_PLY" -p "C_healthBar_GRP";
	rename -uid "1BECC860-0000-2709-572B-BB2900003093";
	setAttr ".t" -type "double3" 0 -0.01 0 ;
	setAttr ".s" -type "double3" 1 1 10 ;
createNode mesh -n "C_backdrop_PLYShape" -p "C_backdrop_PLY";
	rename -uid "1BECC860-0000-2709-572B-BB2900003092";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "C_health_PLY" -p "C_healthBar_GRP";
	rename -uid "1BECC860-0000-2709-572B-BB44000030A2";
	setAttr ".s" -type "double3" 0.8 1 9.8 ;
	setAttr ".rp" -type "double3" 0 0 -1.4074852394685423e-14 ;
	setAttr ".spt" -type "double3" 0 0 -1.4210854715202004e-14 ;
createNode mesh -n "C_health_PLYShape" -p "C_health_PLY";
	rename -uid "1BECC860-0000-2709-572B-BB44000030A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999992549419403 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 1.1920929e-07 0 0 1.1920929e-07 0 0 
		1.1920929e-07 0 0 1.1920929e-07;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "C_health_PLY";
	rename -uid "1BECC860-0000-2709-572B-BBC8000030D8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5
		 -0.5 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "C_health_CTL" -p "C_healthBar_GRP";
	rename -uid "1BECC860-0000-2709-572B-BCA50000315F";
	setAttr ".s" -type "double3" 9.9999999999999998e-13 1 1 ;
createNode locator -n "C_health_CTLShape" -p "C_health_CTL";
	rename -uid "1BECC860-0000-2709-572B-BCA500003160";
	setAttr -k off ".v";
createNode transform -n "C_countdown_GRP" -p "C_UI_GRP";
	rename -uid "1BECC860-0000-2709-572B-C0AB0000421B";
	setAttr ".t" -type "double3" -1.9171851151084715e-16 -2.2204460492503101e-16 -1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.18757593867485825 0.18757593867485825 0.18757593867485808 ;
createNode transform -n "C_3_PLY" -p "C_countdown_GRP";
	rename -uid "1BECC860-0000-2709-572B-C06B000041DC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.57857420295476925 -0.61656098160892725 7.0854904571778973e-17 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0.57857420295476913 0.61656098160892725 0 ;
	setAttr ".rpt" -type "double3" -1.1571484059095383 0 -7.0854904571778912e-17 ;
	setAttr ".sp" -type "double3" 0.57857420295476913 0.61656098160892725 0 ;
createNode mesh -n "C_3_PLYShape" -p "C_3_PLY";
	rename -uid "1BECC860-0000-2709-572B-C06B000041DB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 93 ".uvst[0].uvsp[0:92]" -type "float2" 0.056864649 0.95868236
		 0.056864649 0.77662665 0.2274586 0.59521645 0.6268456 0.71581793 0.38963172 0.8302207
		 0.33740208 0.59444928 0.2274586 0.43511072 0 0.23949762 0.6576876 0.30346954 0.33704162
		 0.43588135 0.37547889 0.16906145 0 0.047758054 0.72591281 0.53840476 0.4103224 0
		 1 0.291886 0.96847606 0.75273991 0.45314017 1 0.4797107 0.42857143 0.9523899 0.42857143
		 0.5 0.42560643 0.5 0.17773831 0.5 0.0021078086 0.5 0.42857143 0 0.14285715 0.5 0.14285715
		 0.25 0.0070510525 0.25 0.14285715 0.25 0.17699903 0.94442385 0.14285715 0.75 0.03812252
		 0.75 0.14285715 0.8435995 0.071428575 0.75 0.071428575 0.875 0.08770059 0.875 0.14285715
		 0.65632236 0.2857143 0.99991935 0.2857143 0.75 0.2857143 0.60496533 0.21428572 0.75
		 0.21428572 0.625 0.14285715 0.625 0.21428572 0.625 0.2294742 0.75 0.42857143 0.64143133
		 0.35714287 0.75 0.35714287 0.625 0.37575132 0.625 0.42857143 0.62683302 0.71428573
		 0.96507591 0.71428573 0.5 0.60560507 0.2274586 0.5714286 0.5 0.5714286 0.25 0.43519592
		 0.25 0.5714286 0.25 0.59513217 0.83885884 0.5714286 0.75 0.53348511 0.75 0.5432688
		 0.75 0.5714286 0.85204399 0.5 0.75 0.5 0.875 0.42857143 0.875 0.48865658 0.75 0.71428573
		 0.59212744 0.64285713 0.75 0.64285713 0.625 0.5714286 0.625 0.64285713 0.625 0.69680184
		 0.93425912 0.64285713 0.875 0.59019446 0.875 0.64285713 0.875 0.71428573 0.5 0.82077783
		 0.5 0.99948645 0.056864649 0.85714287 0.5 0.85714287 0.25 0.82066029 0.25 0.85714287
		 0.25 0.98885977 0.93880224 0.85714287 0.75 0.85714287 0.58986521 0.78571427 0.75
		 0.78571427 0.625 0.73378831 0.625 0.78571427 0.625 0.85714287 0.75 0.9701342 0.85848218
		 0.9285714 0.75 0.9285714 0.875 0.91861641 0.875 0.85714287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 93 ".vt[0:92]"  0.1661914 1.2038542 0 0.1661914 0.97069013 0
		 0.3249414 0.73835284 0 0.69656259 0.89281029 0 0.47585517 1.039317012 0 0.42725188 0.73730463 0
		 0.3249414 0.53330076 0 0.11327474 0.28277344 0 0.7253812 0.36470488 0 0.42691663 0.53443283 0
		 0.46268442 0.19241112 0 0.11327474 0.03720703 0 0.78878903 0.66559243 0 0.49510938 -0.023962526 0
		 1.043873668 0.34986886 0 1.014511704 0.94009763 0 0.53495353 1.25708449 0 0.55966938 0.52486491 0
		 0.99920493 0.52471966 0 0.57854319 0.52105063 0 0.57844263 0.20417841 0 0.57856512 -0.021323251 0
		 0.57856089 0.52492571 0 0.11327474 0.15900318 0 0.57856089 0.15900318 0 0.34591782 -0.01492743 0
		 0.34591782 0.15900318 0 0.34591788 0.20273004 0 0.9922291 0.15893768 0 0.81124133 0.024767112 0
		 0.81120396 0.15900318 0 0.89827597 0.067567773 0 0.81120396 0.067522548 0 0.92745394 0.088452317 0
		 0.92752546 0.15900318 0 0.72420979 0.34194347 0 1.043838978 0.34196359 0 0.81120396 0.34196445 0
		 0.6762377 0.25048497 0 0.81120396 0.25048381 0 0.69488239 0.15900318 0 0.69488239 0.25048381 0
		 0.6948626 0.26995194 0 0.81120396 0.52492571 0 0.71019226 0.43345472 0 0.81120396 0.4334451 0
		 0.69488806 0.45728201 0 0.69488239 0.52492571 0 0.69656843 0.89084834 0 1.011348248 0.89084822 0
		 0.57855862 0.75166619 0 0.3249414 0.70788699 0 0.57856089 0.70788699 0 0.34591717 0.53345913 0
		 0.34591782 0.70788699 0 0.34591737 0.73820823 0 0.89389479 0.70788485 0 0.81122369 0.65935683 0
		 0.81120402 0.67182183 0 0.81120396 0.70788699 0 0.90653139 0.6169945 0 0.81120396 0.61640638 0
		 0.92752546 0.52492571 0 0.92790204 0.60238308 0 0.81120396 0.89084828 0 0.66429698 0.79936326 0
		 0.81120396 0.79936767 0 0.69488239 0.70788699 0 0.69488239 0.79936767 0 0.69499028 0.86844122 0
		 0.98267365 0.79936588 0 0.9275279 0.73191816 0 0.92752546 0.79936767 0 0.92752546 0.89084828 0
		 0.57863039 1.027499318 0 0.5785709 1.25640845 0 0.1661914 1.073809505 0 0.57856089 1.073809505 0
		 0.34591779 1.027085304 0 0.34591782 1.073809505 0 0.34592822 1.24243355 0 0.98708093 1.073896408 0
		 0.81120396 1.073809505 0 0.66232246 0.98245949 0 0.81120396 0.98232889 0 0.69471663 0.91580009 0
		 0.69488239 0.98232889 0 0.69488239 1.073809505 0 0.81125629 1.21866953 0 0.91235203 1.16554666 0
		 0.81120396 1.16529024 0 0.9277451 1.15278649 0 0.92752546 1.073809505 0;
	setAttr -s 140 ".ed[0:139]"  89 88 0 88 90 1 90 89 1 37 36 1 36 14 0 14 18 0
		 18 62 1 62 43 1 43 45 1 45 37 1 17 19 0 19 22 1 22 17 1 25 13 0 13 21 0 21 24 1 24 26 1
		 26 25 1 23 11 0 11 25 0 26 23 1 20 10 0 10 27 0 27 26 1 24 20 1 27 7 0 7 23 0 33 28 0
		 28 34 1 34 33 1 21 29 0 29 32 1 32 30 1 30 40 1 40 24 1 29 31 0 31 32 1 31 33 0 34 30 1
		 28 36 0 37 39 1 39 30 1 35 42 0 42 41 1 41 39 1 37 35 1 41 40 1 38 20 0 41 38 1 42 38 0
		 46 44 0 44 45 1 43 47 1 47 46 1 44 8 0 8 35 0 19 46 0 47 22 1 70 49 0 49 73 1 73 72 1
		 72 70 1 50 5 0 5 55 0 55 54 1 54 52 1 52 50 1 53 9 0 9 17 0 22 52 1 54 53 1 51 6 0
		 6 53 0 54 51 1 55 2 0 2 51 0 60 57 0 57 61 1 61 60 1 43 61 1 57 12 0 12 58 0 58 59 1
		 59 67 1 67 52 1 18 63 0 63 62 1 63 60 0 48 69 0 69 68 1 68 66 1 66 64 1 64 48 1 59 66 1
		 68 67 1 65 50 0 68 65 1 69 65 0 71 70 0 72 71 1 59 56 1 56 71 0 72 66 1 73 64 1 79 77 1
		 77 75 1 75 16 0 16 80 0 80 79 1 78 4 0 4 74 0 74 77 1 79 78 1 76 1 0 1 78 0 79 76 1
		 0 76 0 80 0 0 49 15 0 15 81 0 81 92 1 92 82 1 82 84 1 84 64 1 86 84 1 82 87 1 87 86 1
		 85 3 0 3 48 0 86 85 1 83 85 0 86 83 1 74 83 0 87 77 1 88 75 0 82 90 1 81 91 0 91 92 1
		 91 89 0 58 56 0;
	setAttr -s 48 -ch 219 ".fc[0:47]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 89 88 90
		f 7 3 4 5 6 7 8 9
		mu 0 7 37 36 14 18 62 43 45
		f 3 10 11 12
		mu 0 3 17 19 22
		f 5 13 14 15 16 17
		mu 0 5 25 13 21 24 26
		f 4 18 19 -18 20
		mu 0 4 23 11 25 26
		f 5 21 22 23 -17 24
		mu 0 5 20 10 27 26 24
		f 4 25 26 -21 -24
		mu 0 4 27 7 23 26
		f 3 27 28 29
		mu 0 3 33 28 34
		f 6 -16 30 31 32 33 34
		mu 0 6 24 21 29 32 30 40
		f 3 35 36 -32
		mu 0 3 29 31 32
		f 5 37 -30 38 -33 -37
		mu 0 5 31 33 34 30 32
		f 6 -39 -29 39 -4 40 41
		mu 0 6 30 34 28 36 37 39
		f 5 42 43 44 -41 45
		mu 0 5 35 42 41 39 37
		f 4 -34 -42 -45 46
		mu 0 4 40 30 39 41
		f 5 47 -25 -35 -47 48
		mu 0 5 38 20 24 40 41
		f 3 49 -49 -44
		mu 0 3 42 38 41
		f 5 50 51 -9 52 53
		mu 0 5 46 44 45 43 47
		f 5 54 55 -46 -10 -52
		mu 0 5 44 8 35 37 45
		f 4 56 -54 57 -12
		mu 0 4 19 46 47 22
		f 4 58 59 60 61
		mu 0 4 70 49 73 72
		f 5 62 63 64 65 66
		mu 0 5 50 5 55 54 52
		f 6 67 68 -13 69 -66 70
		mu 0 6 53 9 17 22 52 54
		f 4 71 72 -71 73
		mu 0 4 51 6 53 54
		f 4 74 75 -74 -65
		mu 0 4 55 2 51 54
		f 3 76 77 78
		mu 0 3 60 57 61
		f 10 -70 -58 -53 79 -78 80 81 82 83 84
		mu 0 10 52 22 47 43 61 57 12 58 59 67
		f 3 -7 85 86
		mu 0 3 62 18 63
		f 5 -8 -87 87 -79 -80
		mu 0 5 43 62 63 60 61
		f 5 88 89 90 91 92
		mu 0 5 48 69 68 66 64
		f 4 -84 93 -91 94
		mu 0 4 67 59 66 68
		f 5 95 -67 -85 -95 96
		mu 0 5 65 50 52 67 68
		f 3 97 -97 -90
		mu 0 3 69 65 68
		f 3 98 -62 99
		mu 0 3 71 70 72
		f 5 100 101 -100 102 -94
		mu 0 5 59 56 71 72 66
		f 4 103 -92 -103 -61
		mu 0 4 73 64 66 72
		f 5 104 105 106 107 108
		mu 0 5 79 77 75 16 80
		f 5 109 110 111 -105 112
		mu 0 5 78 4 74 77 79
		f 4 113 114 -113 115
		mu 0 4 76 1 78 79
		f 4 116 -116 -109 117
		mu 0 4 0 76 79 80
		f 8 -104 -60 118 119 120 121 122 123
		mu 0 8 64 73 49 15 81 92 82 84
		f 4 124 -123 125 126
		mu 0 4 86 84 82 87
		f 6 127 128 -93 -124 -125 129
		mu 0 6 85 3 48 64 84 86
		f 3 130 -130 131
		mu 0 3 83 85 86
		f 5 132 -132 -127 133 -112
		mu 0 5 74 83 86 87 77
		f 6 134 -106 -134 -126 135 -2
		mu 0 6 88 75 77 87 82 90
		f 3 136 137 -121
		mu 0 3 81 91 92
		f 5 138 -3 -136 -122 -138
		mu 0 5 91 89 90 82 92
		f 3 -83 139 -101
		mu 0 3 59 58 56;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "C_2_PLY" -p "C_countdown_GRP";
	rename -uid "1BECC860-0000-2709-572B-C06A000041CA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.58249674737453472 -0.62838542461395264 7.1335277718596886e-17 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0.58249674737453461 0.62838542461395264 0 ;
	setAttr ".rpt" -type "double3" -1.1649934947490692 0 -7.1335277718596824e-17 ;
	setAttr ".sp" -type "double3" 0.58249674737453461 0.62838542461395264 0 ;
createNode mesh -n "C_2_PLYShape" -p "C_2_PLY";
	rename -uid "1BECC860-0000-2709-572B-C06A000041C9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0.003686636 0.94210523
		 0.003686636 0.7263158 0 0.18618421 0.39544991 0.82701945 0.63466263 0.67698389 0
		 0 1 0 1 0.18618421 0.39447004 0.18618421 0.47004607 1 0.99083972 0.70809358 0.38474679
		 0.42857143 0.77849138 0.42857143 0.5 0 0.5 0.18618421 0.5 0.25184152 0.5 0.42857143
		 0 0.14285715 0.5 0.14285715 0.25 0 0.25 0.14285715 0.15798637 0.2857143 0.5 0.2857143
		 0.25 0.2857143 0.25 0.34368211 1 0.14285715 0.75 0 0.75 0.14285715 0.55459923 0.2857143
		 0.75 0.18618421 0.75 0.40973046 0.75 0.42857143 0.62837332 0.71428573 0.99076241
		 0.71428573 0.5 0.50136036 0.58740568 0.5714286 0.94400942 0.5714286 0.75 0.5714286
		 0.75 0.71428573 0.5 0.81486559 0.5 0.99972355 0.003686636 0.85714287 0.5 0.85714287
		 0.25 0.80994654 0.25 0.85714287 0.25 0.98641831 0.93587708 0.85714287 0.75 0.85714287
		 0.56860775 0.78571427 0.75 0.78571427 0.625 0.72284347 0.625 0.78571427 0.625 0.85714287
		 0.75 0.96656603 0.84454072 0.9285714 0.75 0.9285714 0.875 0.91027915 0.875 0.85714287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  0.1372526 1.18401039 0 0.1372526 0.91281247 0
		 0.13394532 0.23399089 0 0.48870456 1.039364338 0 0.7040745 0.85080814 0 0.13394532 -1.110223e-16 0
		 1.031048179 -1.110223e-16 0 1.031048179 0.23399089 0 0.48782551 0.23399089 0 0.55562502 1.25677085 0
		 1.023364425 0.88990766 0 0.4790796 0.53864229 0 0.83234638 0.53860104 0 0.58249676 -1.110223e-16 0
		 0.58249676 0.23399089 0 0.58249676 0.31650707 0 0.58249676 0.53861606 0 0.13394532 0.1795387 0
		 0.58249676 0.1795387 0 0.35822102 -1.110223e-16 0 0.35822102 0.1795387 0 0.27567372 0.35907918 0
		 0.58249676 0.35907739 0 0.35822102 0.35907739 0 0.35821468 0.43193683 0 1.031048179 0.1795387 0
		 0.80677247 -1.110223e-16 0 0.80677247 0.1795387 0 0.63147789 0.35907739 0 0.80677247 0.23399089 0
		 0.8067956 0.51491201 0 0.80677247 0.53861606 0 0.69847596 0.89790016 0 1.023337364 0.89770144 0
		 0.58246052 0.63013482 0 0.66098207 0.71810663 0 0.98083109 0.71814847 0 0.80677247 0.71815479 0
		 0.80677247 0.89769346 0 0.58221048 1.023347259 0 0.58249676 1.25642395 0 0.1372526 1.077232122 0
		 0.58249676 1.077232122 0 0.35820752 1.017961502 0 0.35822102 1.077232122 0 0.35822102 1.23970175 0
		 0.97306687 1.076955199 0 0.80677247 1.077232122 0 0.64357299 0.98692322 0 0.80677247 0.98746282 0
		 0.69537288 0.90868676 0 0.69463462 0.98746282 0 0.69463462 1.077232122 0 0.80677181 1.21475041 0
		 0.89158499 1.16700125 0 0.80677247 1.16700149 0 0.91890275 1.14400423 0 0.91891032 1.077232122 0;
	setAttr -s 88 ".ed[0:87]"  54 53 0 53 55 1 55 54 1 30 12 0 12 31 1 31 30 1
		 11 24 0 24 23 1 23 22 1 22 16 1 16 11 1 19 13 0 13 18 1 18 20 1 20 19 1 17 5 0 5 19 0
		 20 17 1 18 14 1 14 8 0 8 15 0 15 22 1 23 20 1 21 2 0 2 17 0 23 21 1 24 21 0 26 6 0
		 6 25 0 25 27 1 27 26 1 13 26 0 27 18 1 25 7 0 7 29 0 29 27 1 29 14 0 22 28 1 28 30 0
		 31 16 1 37 36 1 36 10 0 10 33 0 33 38 1 38 37 1 34 11 0 16 34 1 12 36 0 37 31 1 35 34 0
		 37 35 1 32 4 0 4 35 0 38 32 1 44 42 1 42 40 1 40 9 0 9 45 0 45 44 1 43 3 0 3 39 0
		 39 42 1 44 43 1 41 1 0 1 43 0 44 41 1 0 41 0 45 0 0 33 46 0 46 57 1 57 47 1 47 49 1
		 49 38 1 51 49 1 47 52 1 52 51 1 50 32 0 51 50 1 48 50 0 51 48 1 39 48 0 52 42 1 53 40 0
		 47 55 1 46 56 0 56 57 1 56 54 0 15 28 0;
	setAttr -s 31 -ch 135 ".fc[0:30]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 54 53 55
		f 3 3 4 5
		mu 0 3 30 12 31
		f 5 6 7 8 9 10
		mu 0 5 11 24 23 22 16
		f 4 11 12 13 14
		mu 0 4 19 13 18 20
		f 4 15 16 -15 17
		mu 0 4 17 5 19 20
		f 7 -14 18 19 20 21 -9 22
		mu 0 7 20 18 14 8 15 22 23
		f 5 23 24 -18 -23 25
		mu 0 5 21 2 17 20 23
		f 3 26 -26 -8
		mu 0 3 24 21 23
		f 4 27 28 29 30
		mu 0 4 26 6 25 27
		f 4 31 -31 32 -13
		mu 0 4 13 26 27 18
		f 4 33 34 35 -30
		mu 0 4 25 7 29 27
		f 4 36 -19 -33 -36
		mu 0 4 29 14 18 27
		f 5 -10 37 38 -6 39
		mu 0 5 16 22 28 30 31
		f 5 40 41 42 43 44
		mu 0 5 37 36 10 33 38
		f 3 45 -11 46
		mu 0 3 34 11 16
		f 4 -5 47 -41 48
		mu 0 4 31 12 36 37
		f 5 49 -47 -40 -49 50
		mu 0 5 35 34 16 31 37
		f 5 51 52 -51 -45 53
		mu 0 5 32 4 35 37 38
		f 5 54 55 56 57 58
		mu 0 5 44 42 40 9 45
		f 5 59 60 61 -55 62
		mu 0 5 43 3 39 42 44
		f 4 63 64 -63 65
		mu 0 4 41 1 43 44
		f 4 66 -66 -59 67
		mu 0 4 0 41 44 45
		f 6 -44 68 69 70 71 72
		mu 0 6 38 33 46 57 47 49
		f 4 73 -72 74 75
		mu 0 4 51 49 47 52
		f 5 76 -54 -73 -74 77
		mu 0 5 50 32 38 49 51
		f 3 78 -78 79
		mu 0 3 48 50 51
		f 5 80 -80 -76 81 -62
		mu 0 5 39 48 51 52 42
		f 6 82 -56 -82 -75 83 -2
		mu 0 6 53 40 42 52 47 55
		f 3 84 85 -70
		mu 0 3 46 56 57
		f 5 86 -3 -84 -71 -86
		mu 0 5 56 54 55 47 57
		f 3 -38 -22 87
		mu 0 3 28 22 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "C_1_PLY" -p "C_countdown_GRP";
	rename -uid "1BECC860-0000-2709-572B-C068000041B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.62631835788488399 -0.61722332239151001 7.6701877223094958e-17 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0.62631835788488388 0.61722332239151001 0 ;
	setAttr ".rpt" -type "double3" -1.2526367157697678 0 -7.6701877223094946e-17 ;
	setAttr ".sp" -type "double3" 0.62631835788488388 0.61722332239151001 0 ;
createNode mesh -n "C_1_PLYShape" -p "C_1_PLY";
	rename -uid "1BECC860-0000-2709-572B-C068000041B7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.008547009 0 1 0
		 1 0.17816477 0.677113 0.17816477 0.677113 1 0.32953465 1 0 0.95177495 2.0132676e-16
		 0.77628934 0.33143401 0.82451439 0.33143401 0.17816477 0.008547009 0.17816477 0.677113
		 0.42857143 0.33143401 0.42857143 0.5 0 0.5 0.42857143 0.5 0.14285715 0.008547009
		 0.14285715 0.25 0 0.25 0.14285715 0.5 0.2857143 0.33143401 0.2857143 0.25 0.17816477
		 1 0.14285715 0.75 0 0.75 0.14285715 0.677113 0.2857143 0.75 0.17816477 0.677113 0.71428573
		 0.33143401 0.71428573 0.5 0.71428573 0.33143401 0.5714286 0.5 0.5714286 0.677113
		 0.5714286 0.5 1 2.0132676e-16 0.85714287 0.5 0.85714287 0.25 0.8126654 0.25 0.85714287
		 0.25 0.98836064 0.677113 0.85714287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.1984375 0 0 1.06164062 0 0 1.06164062 0.2199349 0
		 0.78052086 0.2199349 0 0.78052086 1.23444664 0 0.47790363 1.23444664 0 0.1909961 1.17491531 0
		 0.1909961 0.95828778 0 0.47955731 1.017819047 0 0.47955731 0.2199349 0 0.1984375 0.2199349 0
		 0.78052086 0.52904856 0 0.47955731 0.52904856 0 0.62631834 1.110223e-16 0 0.62631834 0.52904856 0
		 0.62631834 0.17634952 0 0.1984375 0.17634952 0 0.40865722 1.110223e-16 0 0.40865722 0.17634952 0
		 0.62631834 0.35269904 0 0.47955731 0.35269904 0 0.40865722 0.2199349 0 1.06164062 0.17634952 0
		 0.84397948 1.110223e-16 0 0.84397948 0.17634952 0 0.78052086 0.35269904 0 0.84397948 0.2199349 0
		 0.78052086 0.8817476 0 0.47955731 0.8817476 0 0.62631834 0.8817476 0 0.47955731 0.70539808 0
		 0.62631834 0.70539808 0 0.78052086 0.70539808 0 0.62631834 1.23444664 0 0.1909961 1.058097124 0
		 0.62631834 1.058097124 0 0.40865722 1.0031920671 0 0.40865722 1.058097124 0 0.40865722 1.22007847 0
		 0.78052086 1.058097124 0;
	setAttr -s 59 ".ed[0:58]"  39 4 0 4 33 0 33 35 1 35 39 1 25 11 0 11 14 1
		 14 19 1 19 25 1 14 12 1 12 20 0 20 19 1 17 13 0 13 15 1 15 18 1 18 17 1 0 17 0 18 16 1
		 16 0 0 15 19 1 20 9 0 9 21 0 21 18 1 21 10 0 10 16 0 23 1 0 1 22 0 22 24 1 24 23 1
		 13 23 0 24 15 1 22 2 0 2 26 0 26 24 1 26 3 0 3 25 0 32 27 0 27 29 1 29 31 1 31 32 1
		 29 28 1 28 30 0 30 31 1 30 12 0 14 31 1 11 32 0 33 5 0 5 38 0 38 37 1 37 35 1 36 8 0
		 8 28 0 29 35 1 37 36 1 34 7 0 7 36 0 37 34 1 38 6 0 6 34 0 27 39 0;
	setAttr -s 20 -ch 87 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 39 4 33 35
		f 4 4 5 6 7
		mu 0 4 25 11 14 19
		f 4 -7 8 9 10
		mu 0 4 19 14 12 20
		f 4 11 12 13 14
		mu 0 4 17 13 15 18
		f 4 15 -15 16 17
		mu 0 4 0 17 18 16
		f 6 18 -11 19 20 21 -14
		mu 0 6 15 19 20 9 21 18
		f 4 22 23 -17 -22
		mu 0 4 21 10 16 18
		f 4 24 25 26 27
		mu 0 4 23 1 22 24
		f 4 28 -28 29 -13
		mu 0 4 13 23 24 15
		f 4 30 31 32 -27
		mu 0 4 22 2 26 24
		f 6 33 34 -8 -19 -30 -33
		mu 0 6 26 3 25 19 15 24
		f 4 35 36 37 38
		mu 0 4 32 27 29 31
		f 4 39 40 41 -38
		mu 0 4 29 28 30 31
		f 4 42 -9 43 -42
		mu 0 4 30 12 14 31
		f 4 44 -39 -44 -6
		mu 0 4 11 32 31 14
		f 5 45 46 47 48 -3
		mu 0 5 33 5 38 37 35
		f 6 49 50 -40 51 -49 52
		mu 0 6 36 8 28 29 35 37
		f 4 53 54 -53 55
		mu 0 4 34 7 36 37
		f 4 56 57 -56 -48
		mu 0 4 38 6 34 37
		f 4 58 -4 -52 -37
		mu 0 4 27 39 35 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "C_go_PLY" -p "C_countdown_GRP";
	rename -uid "1BECC860-0000-2709-572B-C089000041F7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.37496417760848999 -0.61622301395982504 1.2854526016289204e-16 ;
	setAttr ".rp" -type "double3" -0.37496417760848999 0.61622301395982504 -1.2854526016289204e-16 ;
	setAttr ".sp" -type "double3" -0.37496417760848999 0.61622301395982504 -1.2854526016289204e-16 ;
createNode mesh -n "C_go_PLYShape" -p "C_go_PLY";
	rename -uid "1BECC860-0000-2709-572B-C089000041F6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:78]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 149 ".uvst[0].uvsp[0:148]" -type "float2" 0.96148461 0.72895318
		 0.96148461 0.92827433 1 0.090996526 0 0.49995965 0.58239442 1 0.56776196 0 1 0.55414402
		 0.57983196 0.55414402 0.57983196 0.38772056 0.74439776 0.38772056 0.74439776 0.20065542
		 0.60154063 0.18065879 0.27832857 0.5004344 0.61750567 0.82035786 0.0013433117 0.54163641
		 1 0.54163641 0.57983196 0.54163641 0.28016955 0.54163641 0.40000001 0.016214613 0.40000001
		 0.2328071 0.11826759 0.16666667 0.40000001 0.16666667 0.2 0.096672043 0.2 0.16666667
		 0.024049263 0.33333334 0.31292805 0.33333334 0.2 0.33333334 0.2 0.54163641 1 0.16666667
		 0.55115545 0.0001441263 0.55115545 0.16666667 0.80000001 0.026022654 0.80000001 0.16666667
		 0.55115545 0.18301733 1 0.33333334 0.74439776 0.33333334 0.80000001 0.33333334 0.80000001
		 0.54163641 0.40000001 0.98241675 0.40000001 0.76464611 0.02389905 0.66666669 0.31354088
		 0.66666669 0.2 0.66666669 0.11885545 0.83333331 0.40000001 0.83333331 0.2 0.83333331
		 0.2 0.90202451 0.80000001 0.55414402 0.55115545 0.99953824 0.55115545 0.81646967
		 0.55115545 0.83333331 0.96148461 0.83333331 0.80000001 0.83333331 0.80000001 0.79387313
		 0.80000001 0.97827047 0.89534181 0.83333331 0.83333331 0.89846754 0.83333331 0.83333331
		 0.99929148 0.33333334 0.98524576 0.54078919 0.83333331 0.54078919 0.83333331 0.33333334
		 0.26136002 0.54078919 0.16666667 0.54078919 0.16666667 0.33333334 0.28671956 0.33333334
		 0.25853863 0.42911202 0.33333334 0.019904792 0.45837131 0.00099383981 0.45837131
		 0.16666667 0.33333334 0.16666667 0.101538 0.16666667 0.16666667 0.10177647 0.16666667
		 0.16666667 0.0011697536 0.54078919 0 0.49883008 0.019767484 0.33333334 0.45837131
		 0.18296988 0.33333334 0.24838936 0.83333331 0.12194534 0.89266264 0.16666667 0.83333331
		 0.16666667 0.49399325 0 0.66666669 0.031818099 0.66666669 0.16666667 0.56251901 0.16666667
		 0.66666669 0.24867164 0.56251901 0.1868484 0.5000506 0.18000637 1 0.2632567 0.71492809
		 0.33333334 0.73966861 0.54078919 0.74100888 0.49862847 0.45837131 0.99885082 0.33333334
		 0.9796111 0.33333334 0.83333331 0.45837131 0.83333331 0.28496483 0.66666669 0.16666667
		 0.66666669 0.020024139 0.66666669 0.16666667 0.89805961 0.1017851 0.83333331 0.16666667
		 0.83333331 0.33333334 0.75113124 0.45837131 0.81686908 0.96315873 0.66666669 0.83333331
		 0.66666669 0.71546197 0.66666669 0.66666669 0.97935855 0.49908507 1 0.56251901 0.83333331
		 0.66666669 0.83333331 0.56251901 0.81242704 0.66612488 0.75 0.66666669 0.75 0.66666669
		 0.74939919 0.49945155 0.82005423 1 0.5242275 1 1 0.5 1 0.5 0.5242275 0.5 0 1 0 0
		 0 0 0.5242275 0 1 1 3.66959262 1 4.19382 0.5 4.19382 0.5 3.66959262 0.5 1.57268262
		 0.87794805 1.57268262 0.94119817 2.09691 0.5 2.09691 0.5 1.41011238 0.85833335 1.41011238
		 0.12205193 1.57268262 0.14166667 1.41011238 0.058801834 2.09691 1 2.62113762 1 3.14536524
		 0.5 3.14536524 0.5 2.62113762 1 2.58426976 -8.5718469e-16 2.58426976 -8.5718469e-16
		 2.62113762 -8.5718469e-16 3.14536524 -8.5718469e-16 3.66959262 -8.5718469e-16 4.19382;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 149 ".vt[0:148]"  0.12981117 0.90950519 -6.6728117e-17 0.12981117 1.16499352 -6.6728117e-17
		 0.084335923 0.091777347 -7.2297227e-17 1.26503909 0.61598307 7.229722e-17 0.57740414 1.25706995 -1.1913776e-17
		 0.59468073 -0.024844931 -9.7980073e-18 0.084335923 0.68543619 -7.2297227e-17 0.58042967 0.68543619 -1.1543259e-17
		 0.58042967 0.47211587 -1.1543259e-17 0.38612634 0.47211587 -3.5338559e-17 0.38612634 0.23233724 -3.5338559e-17
		 0.55479819 0.20670573 -1.4682211e-17 0.93666196 0.61659175 3.2082617e-17 0.53594816 1.026667953 -1.6990674e-17
		 1.26344788 0.66940373 7.2102356e-17 0.084335923 0.66940403 -7.2297227e-17 0.58042967 0.66940403 -1.1543259e-17
		 0.93439239 0.66941696 3.1804674e-17 0.79274487 -0.0040196897 1.4457853e-17 0.79286247 0.27340388 1.4472259e-17
		 1.12541687 0.18875672 5.5198427e-17 0.79275781 0.18877074 1.4459441e-17 1.028909802 0.099036455 4.337972e-17
		 1.028898478 0.18877074 4.3378331e-17 1.23662257 0.4024089 6.8817198e-17 0.89556366 0.40240288 2.7049527e-17
		 1.028898478 0.40240276 4.3378331e-17 1.028898478 0.66940403 4.3378331e-17 0.084335923 0.18877074 -7.2297227e-17
		 0.61428767 -0.024655366 -7.3968476e-18 0.61428809 0.18877074 -7.3967946e-18 0.32047701 0.0084959893 -4.3378278e-17
		 0.32047653 0.18877074 -4.3378344e-17 0.61428422 0.20976511 -7.3972711e-18 0.084335923 0.40240276 -7.2297227e-17
		 0.38612634 0.40240276 -3.5338559e-17 0.32047653 0.40240276 -4.3378344e-17 0.32047653 0.66940403 -4.3378344e-17
		 0.79270601 1.23416495 1.4453095e-17 0.79283428 0.95536155 1.4468805e-17 1.23679066 0.82965803 6.8837785e-17
		 0.89472997 0.82961631 2.6947433e-17 1.028898478 0.82966679 4.3378331e-17 1.12472773 1.043317199 5.5114032e-17
		 0.79275781 1.043298841 1.4459441e-17 1.028898478 1.043298841 4.3378331e-17 1.028911948 1.13136554 4.3379982e-17
		 0.32047653 0.68543619 -4.3378344e-17 0.61429203 1.25645685 -7.3963182e-18 0.61430472 1.021810412 -7.3947631e-18
		 0.61428809 1.043298841 -7.3967946e-18 0.12981117 1.043298841 -6.6728117e-17 0.32047653 1.043298841 -4.3378344e-17
		 0.32047653 0.99271923 -4.3378344e-17 0.32066989 1.22822547 -4.3354653e-17 -0.12485027 0.31336588 -9.7915143e-17
		 -1.39498091 0.61518198 -2.534613e-16 -0.76107669 1.25729096 -1.7583041e-16 -0.76754403 -0.023907812 -1.7662244e-16
		 -1.066601515 0.52585936 -2.1324642e-16 -0.45384407 0.61492383 -1.3820527e-16 -0.76061201 1.027100801 -1.757735e-16
		 -0.75985146 0.20645303 -1.7568038e-16 -0.14354098 0.66894609 -1.0020409e-16 -1.39350367 0.6689406 -2.5328037e-16
		 -1.063050508 0.66894221 -2.1281155e-16 -0.4554894 0.66894096 -1.3840676e-16 -0.81279087 -0.022690447 -1.8216357e-16
		 -0.81275177 0.21073259 -1.8215878e-16 -1.26598787 0.18963438 -2.3766421e-16 -0.81278825 0.18961494 -1.8216325e-16
		 -1.1833601 0.10639132 -2.2754521e-16 -1.18329072 0.18961494 -2.2753671e-16 -0.97160125 0.0015896098 -2.0161224e-16
		 -0.97160268 0.18961494 -2.0161242e-16 -1.18329072 0.66894001 -2.2753671e-16 -1.36981964 0.40316126 -2.5037992e-16
		 -1.18329072 0.40314794 -2.2753671e-16 -1.031273842 0.40297499 -2.0892001e-16 -0.97102332 0.29481158 -2.0154146e-16
		 -0.26119578 0.18963115 -1.1461265e-16 -0.54822063 0.016831966 -1.4976307e-16 -0.54822648 0.18961494 -1.4976379e-16
		 -0.3365289 0.13230461 -1.2383829e-16 -0.33653831 0.18961494 -1.2383946e-16 -0.54830968 0.29475209 -1.4977398e-16
		 -0.68050742 0.18961494 -1.6596353e-16 -0.68050075 0.21544439 -1.6596271e-16 -0.12575901 0.40314776 -9.8026435e-17
		 -0.48689294 0.40313524 -1.4225259e-16 -0.33653831 0.40314794 -1.2383946e-16 -0.33653831 0.66894001 -1.2383946e-16
		 -0.81278682 1.25578213 -1.8216306e-16 -0.81280613 1.022761464 -1.8216545e-16 -1.36951351 0.83020568 -2.5034244e-16
		 -1.033058643 0.83022189 -2.091386e-16 -1.18329072 0.8302139 -2.2753671e-16 -1.18327141 1.12664998 -2.2753436e-16
		 -1.26572943 1.043771386 -2.3763255e-16 -1.18329072 1.043746948 -2.2753671e-16 -0.81278825 1.043746948 -1.8216325e-16
		 -0.97160578 0.93843257 -2.0161279e-16 -0.97160268 1.043746948 -2.0161242e-16 -0.97159815 1.23114061 -2.0161187e-16
		 -0.1716429 0.83021402 -1.0364559e-16 -0.48623753 0.83021855 -1.4217231e-16 -0.33653831 0.8302139 -1.2383946e-16
		 -0.54827368 1.23065746 -1.4976956e-16 -0.54821694 0.93621922 -1.497626e-16 -0.54822648 1.043746948 -1.4976379e-16
		 -0.54890573 0.93698841 -1.4984696e-16 -0.54822648 0.93698043 -1.4976379e-16 -0.68052125 1.016909719 -1.6596523e-16
		 -0.68050742 1.043746948 -1.6596353e-16 -0.25793779 1.04363811 -1.1421367e-16 -0.33653831 1.043746948 -1.2383946e-16
		 -0.33595324 1.12792075 -1.2376781e-16 -1.71731114 5.5511151e-17 -2.9293536e-16 -2.014967442 5.5511151e-17 -3.2938774e-16
		 -2.014967442 0.29434896 -3.2938774e-16 -1.71731114 0.29434896 -2.9293536e-16 -2.014967442 0.15430583 -3.2938774e-16
		 -1.71731114 0.15430583 -2.9293536e-16 -1.86613941 0 -3.1116158e-16 -1.86613941 0.15430583 -3.1116158e-16
		 -1.86613941 0.29434896 -3.1116158e-16 -1.71731114 0.7606771 -2.9293536e-16 -1.75947905 0.41506511 -2.9809946e-16
		 -1.97279954 0.41506511 -3.2422367e-16 -2.014967442 0.7606771 -3.2938774e-16 -2.014967442 1.23444664 -3.2938774e-16
		 -1.71731114 1.23444664 -2.9293536e-16 -1.73481393 0.61722332 -2.9507883e-16 -1.99746466 0.61722332 -3.2724427e-16
		 -1.75364065 0.46291748 -2.9738445e-16 -1.97863793 0.46291748 -3.2493867e-16 -1.86613941 0.41506511 -3.1116158e-16
		 -1.86613941 0.46291748 -3.1116158e-16 -1.86613941 0.61722332 -3.1116158e-16 -2.014967442 0.92583495 -3.2938774e-16
		 -1.71731114 0.92583495 -2.9293536e-16 -2.014967442 0.77152914 -3.2938774e-16 -1.71731114 0.77152914 -2.9293536e-16
		 -1.86613941 0.77152914 -3.1116158e-16 -1.86613941 0.92583495 -3.1116158e-16 -2.014967442 1.080140829 -3.2938774e-16
		 -1.71731114 1.080140829 -2.9293536e-16 -1.86613941 1.080140829 -3.1116158e-16 -1.86613941 1.23444664 -3.1116158e-16;
	setAttr -s 225 ".ed";
	setAttr ".ed[0:165]"  51 1 0 1 54 0 54 52 1 52 51 1 34 15 0 15 37 1 37 36 1
		 36 34 1 26 25 1 25 12 0 12 17 0 17 27 1 27 26 1 22 18 0 18 21 1 21 23 1 23 22 1 20 22 0
		 23 20 1 21 19 1 19 25 0 26 23 1 24 20 0 26 24 1 14 3 0 3 24 0 27 14 1 31 2 0 2 28 0
		 28 32 1 32 31 1 18 29 0 29 30 1 30 21 1 29 5 0 5 31 0 32 30 1 33 19 0 30 33 1 28 34 0
		 36 32 1 36 35 1 35 10 0 10 11 0 11 33 0 37 16 1 16 8 0 8 9 0 9 35 0 38 46 0 46 45 1
		 45 44 1 44 38 1 17 41 0 41 42 1 42 27 1 40 14 0 42 40 1 41 39 0 39 44 1 45 42 1 43 40 0
		 45 43 1 46 43 0 15 6 0 6 47 0 47 37 1 47 7 0 7 16 0 48 38 0 44 50 1 50 48 1 39 49 0
		 49 50 1 0 51 0 52 53 1 53 0 0 52 50 1 49 13 0 13 53 0 54 4 0 4 48 0 114 116 0 116 115 1
		 115 114 1 88 63 0 63 91 1 91 90 1 90 88 1 65 75 1 75 77 1 77 78 1 78 59 0 59 65 0
		 73 67 0 67 70 1 70 74 1 74 73 1 69 71 0 71 72 1 72 69 1 71 73 0 74 72 1 75 64 1 64 56 0
		 56 76 0 76 77 1 76 69 0 72 77 1 70 68 1 68 79 0 79 74 1 79 78 0 83 80 0 80 84 1 84 83 1
		 67 58 0 58 81 0 81 82 1 82 86 1 86 70 1 81 83 0 84 82 1 82 85 1 85 87 0 87 86 1 87 62 0
		 62 68 0 55 88 0 90 84 1 80 55 0 90 89 1 89 85 0 91 66 1 66 60 0 60 89 0 92 103 0
		 103 102 1 102 100 1 100 92 1 65 95 0 95 96 1 96 75 1 94 64 0 96 94 1 97 98 0 98 99 1
		 99 97 1 98 94 0 96 99 1 101 93 0 93 100 1 102 101 1 95 101 0 102 99 1 103 97 0 63 104 0
		 104 106 1 106 91 1 106 105 1 105 66 0 107 57 0 57 92 0 100 113 1 113 109 1 109 107 1;
	setAttr ".ed[166:224]" 112 110 0 110 111 1 111 109 1 113 112 1 110 108 0 108 111 1
		 93 61 0 61 112 0 104 114 0 115 106 1 115 109 1 108 105 0 116 107 0 121 119 0 119 125 0
		 125 124 1 124 121 1 123 118 0 118 121 0 124 123 1 117 123 0 124 122 1 122 117 0 125 120 0
		 120 122 0 145 130 0 130 148 0 148 147 1 147 145 1 137 135 1 135 133 0 133 138 1 138 137 1
		 136 128 0 128 135 0 137 136 1 134 127 0 127 136 0 137 134 1 132 134 0 138 132 1 141 139 0
		 139 144 1 144 143 1 143 141 1 133 129 0 129 141 0 143 138 1 126 132 0 143 142 1 142 126 0
		 144 140 1 140 142 0 139 145 0 147 144 1 147 146 1 146 140 0 148 131 0 131 146 0;
	setAttr -s 79 -ch 339 ".fc[0:78]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 51 1 54 52
		f 4 4 5 6 7
		mu 0 4 34 15 37 36
		f 5 8 9 10 11 12
		mu 0 5 26 25 12 17 27
		f 4 13 14 15 16
		mu 0 4 22 18 21 23
		f 3 17 -17 18
		mu 0 3 20 22 23
		f 5 -16 19 20 -9 21
		mu 0 5 23 21 19 25 26
		f 4 22 -19 -22 23
		mu 0 4 24 20 23 26
		f 5 24 25 -24 -13 26
		mu 0 5 14 3 24 26 27
		f 4 27 28 29 30
		mu 0 4 31 2 28 32
		f 4 31 32 33 -15
		mu 0 4 18 29 30 21
		f 5 34 35 -31 36 -33
		mu 0 5 29 5 31 32 30
		f 4 37 -20 -34 38
		mu 0 4 33 19 21 30
		f 4 39 -8 40 -30
		mu 0 4 28 34 36 32
		f 7 41 42 43 44 -39 -37 -41
		mu 0 7 36 35 10 11 33 30 32
		f 6 45 46 47 48 -42 -7
		mu 0 6 37 16 8 9 35 36
		f 4 49 50 51 52
		mu 0 4 38 46 45 44
		f 4 -12 53 54 55
		mu 0 4 27 17 41 42
		f 4 56 -27 -56 57
		mu 0 4 40 14 27 42
		f 5 -55 58 59 -52 60
		mu 0 5 42 41 39 44 45
		f 4 61 -58 -61 62
		mu 0 4 43 40 42 45
		f 3 63 -63 -51
		mu 0 3 46 43 45
		f 4 64 65 66 -6
		mu 0 4 15 6 47 37
		f 4 67 68 -46 -67
		mu 0 4 47 7 16 37
		f 4 69 -53 70 71
		mu 0 4 48 38 44 50
		f 4 -60 72 73 -71
		mu 0 4 44 39 49 50
		f 4 74 -4 75 76
		mu 0 4 0 51 52 53
		f 5 77 -74 78 79 -76
		mu 0 5 52 50 49 13 53
		f 5 80 81 -72 -78 -3
		mu 0 5 54 4 48 50 52
		f 3 82 83 84
		mu 0 3 55 56 57
		f 4 85 86 87 88
		mu 0 4 58 59 60 61
		f 5 89 90 91 92 93
		mu 0 5 62 63 64 65 66
		f 4 94 95 96 97
		mu 0 4 67 68 69 70
		f 3 98 99 100
		mu 0 3 71 72 73
		f 4 101 -98 102 -100
		mu 0 4 72 67 70 73
		f 5 103 104 105 106 -91
		mu 0 5 63 74 75 76 64
		f 4 107 -101 108 -107
		mu 0 4 76 71 73 64
		f 4 -97 109 110 111
		mu 0 4 70 69 77 78
		f 5 -109 -103 -112 112 -92
		mu 0 5 64 73 70 78 65
		f 3 113 114 115
		mu 0 3 79 80 81
		f 6 -96 116 117 118 119 120
		mu 0 6 69 68 82 83 84 85
		f 4 121 -116 122 -119
		mu 0 4 83 79 81 84
		f 4 -120 123 124 125
		mu 0 4 85 84 86 87
		f 5 -110 -121 -126 126 127
		mu 0 5 77 69 85 87 88
		f 5 128 -89 129 -115 130
		mu 0 5 89 58 61 81 80
		f 5 -124 -123 -130 131 132
		mu 0 5 86 84 81 61 90
		f 5 133 134 135 -132 -88
		mu 0 5 60 91 92 90 61
		f 4 136 137 138 139
		mu 0 4 93 94 95 96
		f 4 -90 140 141 142
		mu 0 4 63 62 97 98
		f 4 143 -104 -143 144
		mu 0 4 99 74 63 98
		f 3 145 146 147
		mu 0 3 100 101 102
		f 4 148 -145 149 -147
		mu 0 4 101 99 98 102
		f 4 150 151 -139 152
		mu 0 4 103 104 96 95
		f 5 -150 -142 153 -153 154
		mu 0 5 102 98 97 103 95
		f 4 155 -148 -155 -138
		mu 0 4 94 100 102 95
		f 4 156 157 158 -87
		mu 0 4 59 105 106 60
		f 4 159 160 -134 -159
		mu 0 4 106 107 91 60
		f 6 161 162 -140 163 164 165
		mu 0 6 108 109 93 96 110 111
		f 5 166 167 168 -165 169
		mu 0 5 112 113 114 111 110
		f 3 170 171 -168
		mu 0 3 113 115 114
		f 5 -152 172 173 -170 -164
		mu 0 5 96 104 116 112 110
		f 4 174 -85 175 -158
		mu 0 4 105 55 57 106
		f 6 176 -169 -172 177 -160 -176
		mu 0 6 57 111 114 115 107 106
		f 4 178 -166 -177 -84
		mu 0 4 56 108 111 57
		f 4 179 180 181 182
		mu 0 4 117 118 119 120
		f 4 183 184 -183 185
		mu 0 4 121 122 117 120
		f 4 186 -186 187 188
		mu 0 4 123 121 120 124
		f 4 189 190 -188 -182
		mu 0 4 119 125 124 120
		f 4 191 192 193 194
		mu 0 4 126 127 128 129
		f 4 195 196 197 198
		mu 0 4 130 131 132 133
		f 4 199 200 -196 201
		mu 0 4 134 135 131 130
		f 4 202 203 -202 204
		mu 0 4 136 137 134 130
		f 4 205 -205 -199 206
		mu 0 4 138 136 130 133
		f 4 207 208 209 210
		mu 0 4 139 140 141 142
		f 5 -198 211 212 -211 213
		mu 0 5 133 132 143 139 142
		f 5 214 -207 -214 215 216
		mu 0 5 144 138 133 142 145
		f 4 217 218 -216 -210
		mu 0 4 141 146 145 142
		f 4 219 -195 220 -209
		mu 0 4 140 126 129 141
		f 4 221 222 -218 -221
		mu 0 4 129 147 146 141
		f 4 223 224 -222 -194
		mu 0 4 128 148 147 129;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A109E860-0000-4ED2-572D-1E6800001BC4";
	setAttr -s 11 ".lnk";
	setAttr -s 11 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "A109E860-0000-4ED2-572D-1E6800001BC5";
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "C60237AE-44BE-A22B-09CF-31906F594D29";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A109E860-0000-4ED2-572D-1E6800001BC7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "20002A92-4C6A-3AF1-EA58-8C84DA128F03";
	setAttr ".g" yes;
createNode blinn -n "blinn1";
	rename -uid "46CDFF84-4D69-CBFE-4972-0480B08B99CC";
	setAttr ".c" -type "float3" 0 1 0 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "blinn1SG";
	rename -uid "ACD57A49-4DCA-E189-F20B-BD8918C1D133";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "B4E979A3-4DFE-5815-C0F7-199EED9675D3";
createNode blinn -n "blinn2";
	rename -uid "EAF83C13-45FA-3CCE-E34A-B599328177D7";
	setAttr ".it" -type "float3" 0.43902439 0.43902439 0.43902439 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "84BE37D5-429A-ECA2-8CB5-3188B65E6930";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "55E700DB-441F-C756-B86B-009F613BE8C8";
createNode blinn -n "blinn3";
	rename -uid "EAB9E9FF-40ED-199D-BCE8-75B058490DF2";
	setAttr ".c" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
createNode shadingEngine -n "blinn3SG";
	rename -uid "922A2F15-4A6B-2E34-15BB-AE9358D6BB16";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "B52A07A7-460D-085A-9E4F-55A9E782198F";
createNode groupId -n "groupId4";
	rename -uid "FB6210C0-4969-F7DF-6780-1584080BA3B4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "83654D76-4150-AB5E-2C1C-CD9798BE4233";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "3C537841-4BCC-2780-9F62-BE9BE16E54E0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "30C897A2-41A0-21C4-4649-018D0E22D7BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "FFEF77A2-4689-7151-8AEB-D5A3613E8B8E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "B5FFFBBB-46EC-8FF8-6E34-2E9571832A95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "C47FD305-4C39-5D26-3FBA-8D8195D167D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "F4542932-4A6D-A579-B203-F7A05353B7C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "B9549605-4CEE-94E1-C483-CEB9214B2228";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "1B1784BC-41C3-E040-35E5-1A8A997F585A";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D3AFD244-4930-2560-664C-599D0CBE23D5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"C_playerCamera_CAM\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 734\n                -height 423\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"C_playerCamera_CAM\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 734\n            -height 423\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 734\n                -height 422\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 734\n            -height 422\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 734\n                -height 422\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 734\n            -height 422\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1474\n                -height 890\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1474\n            -height 890\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab 0\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1474\\n    -height 890\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1474\\n    -height 890\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2718B2E2-43B9-68AF-0D67-A29D6A46774B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "blinn4SG";
	rename -uid "1BECC860-0000-2709-572B-B286000026B8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "1BECC860-0000-2709-572B-B286000026B9";
createNode surfaceShader -n "surfaceShader1";
	rename -uid "1BECC860-0000-2709-572B-B2E3000026F5";
	setAttr ".oc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "surfaceShader1SG";
	rename -uid "1BECC860-0000-2709-572B-B2E3000026F6";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo5";
	rename -uid "1BECC860-0000-2709-572B-B2E3000026F7";
createNode surfaceShader -n "surfaceShader2";
	rename -uid "1BECC860-0000-2709-572B-B2EE000026FC";
	setAttr ".oc" -type "float3" 1 0 0 ;
createNode groupId -n "groupId51";
	rename -uid "1BECC860-0000-2709-572B-B39A000027CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "1BECC860-0000-2709-572B-B39A000027CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "1BECC860-0000-2709-572B-B3800000276E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	rename -uid "1BECC860-0000-2709-572B-B6B800002E2F";
	setAttr ".ihi" 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "1BECC860-0000-2709-572B-BB2900003091";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode surfaceShader -n "surfaceShader3";
	rename -uid "1BECC860-0000-2709-572B-BB62000030A6";
createNode shadingEngine -n "surfaceShader3SG";
	rename -uid "1BECC860-0000-2709-572B-BB62000030A7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "1BECC860-0000-2709-572B-BB62000030A8";
createNode ramp -n "C_health_RMP";
	rename -uid "1BECC860-0000-2709-572B-BB67000030AB";
	setAttr ".in" 0;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ec" -type "float3" 1 0 0 ;
	setAttr ".cel[1].ep" 0;
	setAttr ".cel[1].ec" -type "float3" 0.52234036 1 0.21899998 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "1BECC860-0000-2709-572B-BB67000030AC";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "1BECC860-0000-2709-572B-BBC8000030D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.80000000000000004 0 0 0 0 1 0 0
		 0 0 9.8000000000000007 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.80000001192092896 9.8000001907348633 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode reverse -n "reverse1";
	rename -uid "1BECC860-0000-2709-572B-BCE40000316F";
createNode groupId -n "groupId54";
	rename -uid "1BECC860-0000-2709-572B-C0890000420A";
	setAttr ".ihi" 0;
createNode particleCloud -n "particleCloud2";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005590";
	setAttr ".d" 6.004000186920166;
	setAttr ".nf" 0.50410002470016479;
	setAttr ".na" -0.67479997873306274;
createNode shadingEngine -n "particleCloud2SG";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005591";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005592";
createNode expression -n "particleCloud2FireIntensityExpr";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005593";
	setAttr -k on ".nds";
	setAttr ".in[0]"  0.35;
	setAttr ".ixp" -type "string" ".O[0] = .I[0];";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005595";
createNode particleAgeMapper -n "particleAgeMapper1";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005596";
	setAttr ".rea" yes;
createNode place2dTexture -n "place2dTexture3";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005598";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "1BECC860-0000-2709-572B-C9BE0000559A";
createNode ramp -n "ramp4";
	rename -uid "1BECC860-0000-2709-572B-C9BE000055AD";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.10000000149011612;
	setAttr ".cel[2].ep" 1;
	setAttr ".n" 0.024399999529123306;
	setAttr ".nf" 0.63419997692108154;
createNode expression -n "ramp4FlameRadiusExpr";
	rename -uid "1BECC860-0000-2709-572B-C9BE000055AE";
	setAttr -k on ".nds";
	setAttr -s 3 ".in[0:2]"  0.19999999999999996 0.29999999999999993 0.4;
	setAttr -s 6 ".out";
	setAttr ".ixp" -type "string" "float $startRadius = .I[0] * .I[1];\nfloat $endRadius = .I[2] * .I[1];\n.O[0] =  $startRadius;\n.O[1] =  $startRadius;\n.O[2] =  $startRadius;\n.O[3] =  $endRadius;\n.O[4] =  $endRadius;\n.O[5] =  $endRadius;";
createNode ramp -n "ramp3";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005599";
	setAttr -s 5 ".cel";
	setAttr ".cel[0].ep" 1;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.85500001907348633;
	setAttr ".cel[1].ec" -type "float3" 0.11 0.083999999 0.011 ;
	setAttr ".cel[2].ep" 0.60000002384185791;
	setAttr ".cel[2].ec" -type "float3" 0.75599998 0.57499999 0.078000002 ;
	setAttr ".cel[3].ep" 0.4050000011920929;
	setAttr ".cel[3].ec" -type "float3" 0.71200001 0.43900001 0.184 ;
	setAttr ".cel[4].ep" 0;
	setAttr ".cel[4].ec" -type "float3" 0 0 0 ;
createNode ramp -n "ramp2";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005597";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 1;
	setAttr ".cel[0].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[1].ep" 0.47999998927116394;
	setAttr ".cel[1].ec" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".cel[2].ep" 0;
	setAttr ".cel[2].ec" -type "float3" 1 1 1 ;
createNode ramp -n "ramp1";
	rename -uid "1BECC860-0000-2709-572B-C9BE00005594";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 1;
	setAttr ".cel[0].ec" -type "float3" 0.574 0.27399999 0.148 ;
	setAttr ".cel[1].ep" 0.42500001192092896;
	setAttr ".cel[1].ec" -type "float3" 0.67500001 0.43900001 0.14300001 ;
	setAttr ".cel[2].ep" 0;
	setAttr ".cel[2].ec" -type "float3" 0.73900002 0.55900002 0.17200001 ;
createNode particleCloud -n "particleCloud3";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B75";
	setAttr ".d" 3.002000093460083;
	setAttr ".nf" 0.50410002470016479;
	setAttr ".na" -0.67479997873306274;
createNode shadingEngine -n "particleCloud3SG";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B76";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B77";
createNode expression -n "particleCloud3FireIntensityExpr";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B78";
	setAttr -k on ".nds";
	setAttr ".in[0]"  0.35;
	setAttr ".ixp" -type "string" ".O[0] = .I[0];";
createNode ramp -n "ramp5";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B79";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 1;
	setAttr ".cel[0].ec" -type "float3" 0.574 0.27399999 0.148 ;
	setAttr ".cel[1].ep" 0.42500001192092896;
	setAttr ".cel[1].ec" -type "float3" 0.67500001 0.43900001 0.14300001 ;
	setAttr ".cel[2].ep" 0;
	setAttr ".cel[2].ec" -type "float3" 0.73900002 0.55900002 0.17200001 ;
createNode place2dTexture -n "place2dTexture5";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B7A";
createNode particleAgeMapper -n "particleAgeMapper2";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B7B";
	setAttr ".rea" yes;
createNode ramp -n "ramp6";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B7C";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 1;
	setAttr ".cel[0].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[1].ep" 0.47999998927116394;
	setAttr ".cel[1].ec" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".cel[2].ep" 0;
	setAttr ".cel[2].ec" -type "float3" 1 1 1 ;
createNode place2dTexture -n "place2dTexture6";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B7D";
createNode ramp -n "ramp7";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B7E";
	setAttr -s 5 ".cel";
	setAttr ".cel[0].ep" 1;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.85500001907348633;
	setAttr ".cel[1].ec" -type "float3" 0.11 0.083999999 0.011 ;
	setAttr ".cel[2].ep" 0.60000002384185791;
	setAttr ".cel[2].ec" -type "float3" 0.75599998 0.57499999 0.078000002 ;
	setAttr ".cel[3].ep" 0.4050000011920929;
	setAttr ".cel[3].ec" -type "float3" 0.71200001 0.43900001 0.184 ;
	setAttr ".cel[4].ep" 0;
	setAttr ".cel[4].ec" -type "float3" 0 0 0 ;
createNode place2dTexture -n "place2dTexture7";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B7F";
createNode crater -n "crater1";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B80";
	setAttr ".sh" 14.416999816894531;
	setAttr ".c1" -type "float3" 1 0.68099999 0.329 ;
	setAttr ".c2" -type "float3" 0.25099999 0.13699999 0.086000003 ;
	setAttr ".c3" -type "float3" 0.219 0.12899999 0.043000001 ;
	setAttr ".m" 0.05000000074505806;
	setAttr ".ba" 0.569100022315979;
	setAttr ".fr" 0.73199999332427979;
createNode ramp -n "ramp8";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B8A";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.10000000149011612;
	setAttr ".cel[2].ep" 1;
	setAttr ".n" 0.024399999529123306;
	setAttr ".nf" 0.63419997692108154;
createNode expression -n "ramp8FlameRadiusExpr";
	rename -uid "1BECC860-0000-2709-572B-CD8500006B8B";
	setAttr -k on ".nds";
	setAttr -s 3 ".in[0:2]"  1 1 0.2;
	setAttr -s 6 ".out";
	setAttr ".ixp" -type "string" "float $startRadius = .I[0] * .I[1];\nfloat $endRadius = .I[2] * .I[1];\n.O[0] =  $startRadius;\n.O[1] =  $startRadius;\n.O[2] =  $startRadius;\n.O[3] =  $endRadius;\n.O[4] =  $endRadius;\n.O[5] =  $endRadius;";
createNode blinn -n "blinn5";
	rename -uid "E5B97860-0000-4679-572B-D5E600002D46";
	setAttr ".c" -type "float3" 0.42962962 0.42962962 0.42962962 ;
createNode shadingEngine -n "blinn5SG";
	rename -uid "E5B97860-0000-4679-572B-D5E600002D47";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "E5B97860-0000-4679-572B-D5E600002D48";
createNode ramp -n "ramp9";
	rename -uid "E5B97860-0000-4679-572B-D63800002D4A";
	setAttr -s 6 ".cel";
	setAttr ".cel[0].ep" 0.25079366564750671;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 1;
	setAttr ".cel[1].ec" -type "float3" 0.336 0.336 0.336 ;
	setAttr ".cel[2].ep" 0.069841273128986359;
	setAttr ".cel[2].ec" -type "float3" 1 0 0 ;
	setAttr ".cel[3].ep" 0.63174605369567871;
	setAttr ".cel[3].ec" -type "float3" 0.041000001 0.041000001 0.041000001 ;
	setAttr ".cel[4].ep" 0;
	setAttr ".cel[4].ec" -type "float3" 1 0.90969998 0 ;
	setAttr ".cel[5].ep" 0.14920635521411896;
	setAttr ".cel[5].ec" -type "float3" 0.088 0.088 0.088 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "E5B97860-0000-4679-572B-D8D400005CD2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -610.71426144668135 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 580.95235786740841 339.2857008037119 ;
	setAttr -s 3 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -223.57142639160156;
	setAttr ".tgi[0].ni[0].y" 142.61904907226562;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679688;
	setAttr ".tgi[0].ni[1].y" -115.71428680419922;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 564.28570556640625;
	setAttr ".tgi[0].ni[2].y" -230;
	setAttr ".tgi[0].ni[2].nvs" 1923;
createNode place2dTexture -n "place2dTexture8";
	rename -uid "A109E860-0000-4ED2-572D-1CAD00001986";
createNode multDoubleLinear -n "multDoubleLinear1";
	rename -uid "A109E860-0000-4ED2-572D-1D610000198D";
	setAttr ".i2" 0.01;
createNode reverse -n "reverse2";
	rename -uid "A109E860-0000-4ED2-572D-1DA500001996";
createNode blendShape -n "blendShape1";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C1F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 2 ".it";
	setAttr -s 2 ".it[0].itg";
	setAttr ".aal" -type "attributeAlias" {"C_carBody_PLY1","weight[0]"} ;
createNode groupId -n "groupId58";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:9]" "f[11]" "f[13]";
createNode groupId -n "groupId59";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[10]" "f[12]";
createNode tweak -n "tweak1";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C25";
createNode objectSet -n "blendShape1Set";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C26";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "blendShape1GroupId";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C27";
	setAttr ".ihi" 0;
createNode groupParts -n "blendShape1GroupParts";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId61";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C2A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "A109E860-0000-4ED2-572D-1EA600001C2B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId55";
	rename -uid "A109E860-0000-4ED2-572D-1E9300001C1C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "A109E860-0000-4ED2-572D-1E9300001C1E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "A109E860-0000-4ED2-572D-1E9300001C1D";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "A109E860-0000-4ED2-572D-1F1400001C82";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -454.515900405374 -796.75248384634438 ;
	setAttr ".tgi[0].vh" -type "double2" 637.11696646998121 -173.08251132927558 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1716.7679443359375;
	setAttr ".tgi[0].ni[0].y" -873.19781494140625;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 1552.857177734375;
	setAttr ".tgi[0].ni[1].y" -52.857143402099609;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 547.8604736328125;
	setAttr ".tgi[0].ni[2].y" -737.0633544921875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[3].y" -652.85711669921875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 64.019630432128906;
	setAttr ".tgi[0].ni[4].y" -26.95933723449707;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 945.3394775390625;
	setAttr ".tgi[0].ni[5].y" -649.66839599609375;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" 69.995658874511719;
	setAttr ".tgi[0].ni[6].y" -575.67803955078125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 411.83065795898438;
	setAttr ".tgi[0].ni[7].y" -244.08526611328125;
	setAttr ".tgi[0].ni[7].nvs" 18306;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 11 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 13 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 13 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".vtn" -type "string" "Rec 709 gamma";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "Rec 709 gamma";
	setAttr ".potn" -type "string" "Rec 709 gamma";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "C_bake_CTL_aimConstraint1.crx" "C_bake_CTL.rx";
connectAttr "C_bake_CTL_aimConstraint1.cry" "C_bake_CTL.ry";
connectAttr "C_bake_CTL_aimConstraint1.crz" "C_bake_CTL.rz";
connectAttr "C_steeringAxis_CTL.ry" "L_frontWheelSteer_GRP.ry";
connectAttr "C_steeringAxis_CTL.ry" "R_frontWheelSteer_GRP.ry";
connectAttr "C_bake_CTL.pim" "C_bake_CTL_aimConstraint1.cpim";
connectAttr "C_bake_CTL.t" "C_bake_CTL_aimConstraint1.ct";
connectAttr "C_bake_CTL.rp" "C_bake_CTL_aimConstraint1.crp";
connectAttr "C_bake_CTL.rpt" "C_bake_CTL_aimConstraint1.crt";
connectAttr "C_bake_CTL.ro" "C_bake_CTL_aimConstraint1.cro";
connectAttr "C_front_CTL.t" "C_bake_CTL_aimConstraint1.tg[0].tt";
connectAttr "C_front_CTL.rp" "C_bake_CTL_aimConstraint1.tg[0].trp";
connectAttr "C_front_CTL.rpt" "C_bake_CTL_aimConstraint1.tg[0].trt";
connectAttr "C_front_CTL.pm" "C_bake_CTL_aimConstraint1.tg[0].tpm";
connectAttr "C_bake_CTL_aimConstraint1.w0" "C_bake_CTL_aimConstraint1.tg[0].tw";
connectAttr "C_frontUp_CTL.wm" "C_bake_CTL_aimConstraint1.wum";
connectAttr "C_GEO_GRP_parentConstraint1.ctx" "C_GEO_GRP.tx";
connectAttr "C_GEO_GRP_parentConstraint1.cty" "C_GEO_GRP.ty";
connectAttr "C_GEO_GRP_parentConstraint1.ctz" "C_GEO_GRP.tz";
connectAttr "C_GEO_GRP_parentConstraint1.crx" "C_GEO_GRP.rx";
connectAttr "C_GEO_GRP_parentConstraint1.cry" "C_GEO_GRP.ry";
connectAttr "C_GEO_GRP_parentConstraint1.crz" "C_GEO_GRP.rz";
connectAttr "C_carBody_PLY_parentConstraint1.ctx" "C_carBody_PLY.tx";
connectAttr "C_carBody_PLY_parentConstraint1.cty" "C_carBody_PLY.ty";
connectAttr "C_carBody_PLY_parentConstraint1.ctz" "C_carBody_PLY.tz";
connectAttr "C_carBody_PLY_parentConstraint1.crx" "C_carBody_PLY.rx";
connectAttr "C_carBody_PLY_parentConstraint1.cry" "C_carBody_PLY.ry";
connectAttr "C_carBody_PLY_parentConstraint1.crz" "C_carBody_PLY.rz";
connectAttr "groupId58.id" "C_carBody_PLYShape.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "C_carBody_PLYShape.iog.og[0].gco";
connectAttr "groupId59.id" "C_carBody_PLYShape.iog.og[1].gid";
connectAttr "blinn2SG.mwc" "C_carBody_PLYShape.iog.og[1].gco";
connectAttr "blendShape1GroupId.id" "C_carBody_PLYShape.iog.og[2].gid";
connectAttr "blendShape1Set.mwc" "C_carBody_PLYShape.iog.og[2].gco";
connectAttr "groupId61.id" "C_carBody_PLYShape.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "C_carBody_PLYShape.iog.og[3].gco";
connectAttr "blendShape1.og[0]" "C_carBody_PLYShape.i";
connectAttr "tweak1.vl[0].vt[0]" "C_carBody_PLYShape.twl";
connectAttr "C_carBody_PLY.ro" "C_carBody_PLY_parentConstraint1.cro";
connectAttr "C_carBody_PLY.pim" "C_carBody_PLY_parentConstraint1.cpim";
connectAttr "C_carBody_PLY.rp" "C_carBody_PLY_parentConstraint1.crp";
connectAttr "C_carBody_PLY.rpt" "C_carBody_PLY_parentConstraint1.crt";
connectAttr "C_body_CTL.t" "C_carBody_PLY_parentConstraint1.tg[0].tt";
connectAttr "C_body_CTL.rp" "C_carBody_PLY_parentConstraint1.tg[0].trp";
connectAttr "C_body_CTL.rpt" "C_carBody_PLY_parentConstraint1.tg[0].trt";
connectAttr "C_body_CTL.r" "C_carBody_PLY_parentConstraint1.tg[0].tr";
connectAttr "C_body_CTL.ro" "C_carBody_PLY_parentConstraint1.tg[0].tro";
connectAttr "C_body_CTL.s" "C_carBody_PLY_parentConstraint1.tg[0].ts";
connectAttr "C_body_CTL.pm" "C_carBody_PLY_parentConstraint1.tg[0].tpm";
connectAttr "C_carBody_PLY_parentConstraint1.w0" "C_carBody_PLY_parentConstraint1.tg[0].tw"
		;
connectAttr "L_frontWheel_PLY_parentConstraint1.ctx" "L_frontWheel_PLY.tx";
connectAttr "L_frontWheel_PLY_parentConstraint1.cty" "L_frontWheel_PLY.ty";
connectAttr "L_frontWheel_PLY_parentConstraint1.ctz" "L_frontWheel_PLY.tz";
connectAttr "L_frontWheel_PLY_parentConstraint1.crx" "L_frontWheel_PLY.rx";
connectAttr "L_frontWheel_PLY_parentConstraint1.cry" "L_frontWheel_PLY.ry";
connectAttr "L_frontWheel_PLY_parentConstraint1.crz" "L_frontWheel_PLY.rz";
connectAttr "groupId51.id" "L_frontWheel_PLYShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "L_frontWheel_PLYShape.iog.og[0].gco";
connectAttr "groupId52.id" "L_frontWheel_PLYShape.iog.og[1].gid";
connectAttr "blinn3SG.mwc" "L_frontWheel_PLYShape.iog.og[1].gco";
connectAttr "groupId11.id" "L_frontWheel_PLYShape.ciog.cog[0].cgid";
connectAttr "L_frontWheel_PLY.ro" "L_frontWheel_PLY_parentConstraint1.cro";
connectAttr "L_frontWheel_PLY.pim" "L_frontWheel_PLY_parentConstraint1.cpim";
connectAttr "L_frontWheel_PLY.rp" "L_frontWheel_PLY_parentConstraint1.crp";
connectAttr "L_frontWheel_PLY.rpt" "L_frontWheel_PLY_parentConstraint1.crt";
connectAttr "L_frontWheel_CTL.t" "L_frontWheel_PLY_parentConstraint1.tg[0].tt";
connectAttr "L_frontWheel_CTL.rp" "L_frontWheel_PLY_parentConstraint1.tg[0].trp"
		;
connectAttr "L_frontWheel_CTL.rpt" "L_frontWheel_PLY_parentConstraint1.tg[0].trt"
		;
connectAttr "L_frontWheel_CTL.r" "L_frontWheel_PLY_parentConstraint1.tg[0].tr";
connectAttr "L_frontWheel_CTL.ro" "L_frontWheel_PLY_parentConstraint1.tg[0].tro"
		;
connectAttr "L_frontWheel_CTL.s" "L_frontWheel_PLY_parentConstraint1.tg[0].ts";
connectAttr "L_frontWheel_CTL.pm" "L_frontWheel_PLY_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_frontWheel_PLY_parentConstraint1.w0" "L_frontWheel_PLY_parentConstraint1.tg[0].tw"
		;
connectAttr "R_frontWheel_PLY_parentConstraint1.ctx" "R_frontWheel_PLY.tx";
connectAttr "R_frontWheel_PLY_parentConstraint1.cty" "R_frontWheel_PLY.ty";
connectAttr "R_frontWheel_PLY_parentConstraint1.ctz" "R_frontWheel_PLY.tz";
connectAttr "R_frontWheel_PLY_parentConstraint1.crx" "R_frontWheel_PLY.rx";
connectAttr "R_frontWheel_PLY_parentConstraint1.cry" "R_frontWheel_PLY.ry";
connectAttr "R_frontWheel_PLY_parentConstraint1.crz" "R_frontWheel_PLY.rz";
connectAttr "groupId6.id" "R_frontWheel_PLYShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "R_frontWheel_PLYShape.iog.og[0].gco";
connectAttr "groupId13.id" "R_frontWheel_PLYShape.iog.og[1].gid";
connectAttr "blinn3SG.mwc" "R_frontWheel_PLYShape.iog.og[1].gco";
connectAttr "groupId7.id" "R_frontWheel_PLYShape.ciog.cog[0].cgid";
connectAttr "R_frontWheel_PLY.ro" "R_frontWheel_PLY_parentConstraint1.cro";
connectAttr "R_frontWheel_PLY.pim" "R_frontWheel_PLY_parentConstraint1.cpim";
connectAttr "R_frontWheel_PLY.rp" "R_frontWheel_PLY_parentConstraint1.crp";
connectAttr "R_frontWheel_PLY.rpt" "R_frontWheel_PLY_parentConstraint1.crt";
connectAttr "R_frontWheel_CTL.t" "R_frontWheel_PLY_parentConstraint1.tg[0].tt";
connectAttr "R_frontWheel_CTL.rp" "R_frontWheel_PLY_parentConstraint1.tg[0].trp"
		;
connectAttr "R_frontWheel_CTL.rpt" "R_frontWheel_PLY_parentConstraint1.tg[0].trt"
		;
connectAttr "R_frontWheel_CTL.r" "R_frontWheel_PLY_parentConstraint1.tg[0].tr";
connectAttr "R_frontWheel_CTL.ro" "R_frontWheel_PLY_parentConstraint1.tg[0].tro"
		;
connectAttr "R_frontWheel_CTL.s" "R_frontWheel_PLY_parentConstraint1.tg[0].ts";
connectAttr "R_frontWheel_CTL.pm" "R_frontWheel_PLY_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_frontWheel_PLY_parentConstraint1.w0" "R_frontWheel_PLY_parentConstraint1.tg[0].tw"
		;
connectAttr "L_rearWheel_PLY_parentConstraint1.ctx" "L_rearWheel_PLY.tx";
connectAttr "L_rearWheel_PLY_parentConstraint1.cty" "L_rearWheel_PLY.ty";
connectAttr "L_rearWheel_PLY_parentConstraint1.ctz" "L_rearWheel_PLY.tz";
connectAttr "L_rearWheel_PLY_parentConstraint1.crx" "L_rearWheel_PLY.rx";
connectAttr "L_rearWheel_PLY_parentConstraint1.cry" "L_rearWheel_PLY.ry";
connectAttr "L_rearWheel_PLY_parentConstraint1.crz" "L_rearWheel_PLY.rz";
connectAttr "groupId8.id" "L_rearWheel_PLYShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "L_rearWheel_PLYShape.iog.og[0].gco";
connectAttr "groupId14.id" "L_rearWheel_PLYShape.iog.og[1].gid";
connectAttr "blinn3SG.mwc" "L_rearWheel_PLYShape.iog.og[1].gco";
connectAttr "groupId9.id" "L_rearWheel_PLYShape.ciog.cog[0].cgid";
connectAttr "L_rearWheel_PLY.ro" "L_rearWheel_PLY_parentConstraint1.cro";
connectAttr "L_rearWheel_PLY.pim" "L_rearWheel_PLY_parentConstraint1.cpim";
connectAttr "L_rearWheel_PLY.rp" "L_rearWheel_PLY_parentConstraint1.crp";
connectAttr "L_rearWheel_PLY.rpt" "L_rearWheel_PLY_parentConstraint1.crt";
connectAttr "L_rearWheel_CTL.t" "L_rearWheel_PLY_parentConstraint1.tg[0].tt";
connectAttr "L_rearWheel_CTL.rp" "L_rearWheel_PLY_parentConstraint1.tg[0].trp";
connectAttr "L_rearWheel_CTL.rpt" "L_rearWheel_PLY_parentConstraint1.tg[0].trt";
connectAttr "L_rearWheel_CTL.r" "L_rearWheel_PLY_parentConstraint1.tg[0].tr";
connectAttr "L_rearWheel_CTL.ro" "L_rearWheel_PLY_parentConstraint1.tg[0].tro";
connectAttr "L_rearWheel_CTL.s" "L_rearWheel_PLY_parentConstraint1.tg[0].ts";
connectAttr "L_rearWheel_CTL.pm" "L_rearWheel_PLY_parentConstraint1.tg[0].tpm";
connectAttr "L_rearWheel_PLY_parentConstraint1.w0" "L_rearWheel_PLY_parentConstraint1.tg[0].tw"
		;
connectAttr "R_rearWheel_PLY_parentConstraint1.ctx" "R_rearWheel_PLY.tx";
connectAttr "R_rearWheel_PLY_parentConstraint1.cty" "R_rearWheel_PLY.ty";
connectAttr "R_rearWheel_PLY_parentConstraint1.ctz" "R_rearWheel_PLY.tz";
connectAttr "R_rearWheel_PLY_parentConstraint1.crx" "R_rearWheel_PLY.rx";
connectAttr "R_rearWheel_PLY_parentConstraint1.cry" "R_rearWheel_PLY.ry";
connectAttr "R_rearWheel_PLY_parentConstraint1.crz" "R_rearWheel_PLY.rz";
connectAttr "groupId4.id" "R_rearWheel_PLYShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "R_rearWheel_PLYShape.iog.og[0].gco";
connectAttr "groupId12.id" "R_rearWheel_PLYShape.iog.og[1].gid";
connectAttr "blinn3SG.mwc" "R_rearWheel_PLYShape.iog.og[1].gco";
connectAttr "groupId5.id" "R_rearWheel_PLYShape.ciog.cog[0].cgid";
connectAttr "R_rearWheel_PLY.ro" "R_rearWheel_PLY_parentConstraint1.cro";
connectAttr "R_rearWheel_PLY.pim" "R_rearWheel_PLY_parentConstraint1.cpim";
connectAttr "R_rearWheel_PLY.rp" "R_rearWheel_PLY_parentConstraint1.crp";
connectAttr "R_rearWheel_PLY.rpt" "R_rearWheel_PLY_parentConstraint1.crt";
connectAttr "R_rearWheel_CTL.t" "R_rearWheel_PLY_parentConstraint1.tg[0].tt";
connectAttr "R_rearWheel_CTL.rp" "R_rearWheel_PLY_parentConstraint1.tg[0].trp";
connectAttr "R_rearWheel_CTL.rpt" "R_rearWheel_PLY_parentConstraint1.tg[0].trt";
connectAttr "R_rearWheel_CTL.r" "R_rearWheel_PLY_parentConstraint1.tg[0].tr";
connectAttr "R_rearWheel_CTL.ro" "R_rearWheel_PLY_parentConstraint1.tg[0].tro";
connectAttr "R_rearWheel_CTL.s" "R_rearWheel_PLY_parentConstraint1.tg[0].ts";
connectAttr "R_rearWheel_CTL.pm" "R_rearWheel_PLY_parentConstraint1.tg[0].tpm";
connectAttr "R_rearWheel_PLY_parentConstraint1.w0" "R_rearWheel_PLY_parentConstraint1.tg[0].tw"
		;
connectAttr "C_steeringWheel_PLY_parentConstraint1.ctx" "C_steeringWheel_PLY.tx"
		;
connectAttr "C_steeringWheel_PLY_parentConstraint1.cty" "C_steeringWheel_PLY.ty"
		;
connectAttr "C_steeringWheel_PLY_parentConstraint1.ctz" "C_steeringWheel_PLY.tz"
		;
connectAttr "C_steeringWheel_PLY_parentConstraint1.crx" "C_steeringWheel_PLY.rx"
		;
connectAttr "C_steeringWheel_PLY_parentConstraint1.cry" "C_steeringWheel_PLY.ry"
		;
connectAttr "C_steeringWheel_PLY_parentConstraint1.crz" "C_steeringWheel_PLY.rz"
		;
connectAttr "C_steeringWheel_PLY.ro" "C_steeringWheel_PLY_parentConstraint1.cro"
		;
connectAttr "C_steeringWheel_PLY.pim" "C_steeringWheel_PLY_parentConstraint1.cpim"
		;
connectAttr "C_steeringWheel_PLY.rp" "C_steeringWheel_PLY_parentConstraint1.crp"
		;
connectAttr "C_steeringWheel_PLY.rpt" "C_steeringWheel_PLY_parentConstraint1.crt"
		;
connectAttr "C_steeringWheel_CTL.t" "C_steeringWheel_PLY_parentConstraint1.tg[0].tt"
		;
connectAttr "C_steeringWheel_CTL.rp" "C_steeringWheel_PLY_parentConstraint1.tg[0].trp"
		;
connectAttr "C_steeringWheel_CTL.rpt" "C_steeringWheel_PLY_parentConstraint1.tg[0].trt"
		;
connectAttr "C_steeringWheel_CTL.r" "C_steeringWheel_PLY_parentConstraint1.tg[0].tr"
		;
connectAttr "C_steeringWheel_CTL.ro" "C_steeringWheel_PLY_parentConstraint1.tg[0].tro"
		;
connectAttr "C_steeringWheel_CTL.s" "C_steeringWheel_PLY_parentConstraint1.tg[0].ts"
		;
connectAttr "C_steeringWheel_CTL.pm" "C_steeringWheel_PLY_parentConstraint1.tg[0].tpm"
		;
connectAttr "C_steeringWheel_PLY_parentConstraint1.w0" "C_steeringWheel_PLY_parentConstraint1.tg[0].tw"
		;
connectAttr "C_GEO_GRP.ro" "C_GEO_GRP_parentConstraint1.cro";
connectAttr "C_GEO_GRP.pim" "C_GEO_GRP_parentConstraint1.cpim";
connectAttr "C_GEO_GRP.rp" "C_GEO_GRP_parentConstraint1.crp";
connectAttr "C_GEO_GRP.rpt" "C_GEO_GRP_parentConstraint1.crt";
connectAttr "C_bake_CTL.t" "C_GEO_GRP_parentConstraint1.tg[0].tt";
connectAttr "C_bake_CTL.rp" "C_GEO_GRP_parentConstraint1.tg[0].trp";
connectAttr "C_bake_CTL.rpt" "C_GEO_GRP_parentConstraint1.tg[0].trt";
connectAttr "C_bake_CTL.r" "C_GEO_GRP_parentConstraint1.tg[0].tr";
connectAttr "C_bake_CTL.ro" "C_GEO_GRP_parentConstraint1.tg[0].tro";
connectAttr "C_bake_CTL.s" "C_GEO_GRP_parentConstraint1.tg[0].ts";
connectAttr "C_bake_CTL.pm" "C_GEO_GRP_parentConstraint1.tg[0].tpm";
connectAttr "C_GEO_GRP_parentConstraint1.w0" "C_GEO_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "groupId55.id" "C_carBody_PLY1Shape.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "C_carBody_PLY1Shape.iog.og[0].gco";
connectAttr "groupId56.id" "C_carBody_PLY1Shape.iog.og[1].gid";
connectAttr "blinn2SG.mwc" "C_carBody_PLY1Shape.iog.og[1].gco";
connectAttr "groupId57.id" "C_carBody_PLY1Shape.ciog.cog[1].cgid";
connectAttr "pSphere1_parentConstraint1.ctx" "pSphere1.tx";
connectAttr "pSphere1_parentConstraint1.cty" "pSphere1.ty";
connectAttr "pSphere1_parentConstraint1.ctz" "pSphere1.tz";
connectAttr "pSphere1_parentConstraint1.crx" "pSphere1.rx";
connectAttr "pSphere1_parentConstraint1.cry" "pSphere1.ry";
connectAttr "pSphere1_parentConstraint1.crz" "pSphere1.rz";
connectAttr "pSphere1.ro" "pSphere1_parentConstraint1.cro";
connectAttr "pSphere1.pim" "pSphere1_parentConstraint1.cpim";
connectAttr "pSphere1.rp" "pSphere1_parentConstraint1.crp";
connectAttr "pSphere1.rpt" "pSphere1_parentConstraint1.crt";
connectAttr "C_bake_CTL.t" "pSphere1_parentConstraint1.tg[0].tt";
connectAttr "C_bake_CTL.rp" "pSphere1_parentConstraint1.tg[0].trp";
connectAttr "C_bake_CTL.rpt" "pSphere1_parentConstraint1.tg[0].trt";
connectAttr "C_bake_CTL.r" "pSphere1_parentConstraint1.tg[0].tr";
connectAttr "C_bake_CTL.ro" "pSphere1_parentConstraint1.tg[0].tro";
connectAttr "C_bake_CTL.s" "pSphere1_parentConstraint1.tg[0].ts";
connectAttr "C_bake_CTL.pm" "pSphere1_parentConstraint1.tg[0].tpm";
connectAttr "pSphere1_parentConstraint1.w0" "pSphere1_parentConstraint1.tg[0].tw"
		;
connectAttr "C_UI_GRP_parentConstraint1.ctx" "C_UI_GRP.tx";
connectAttr "C_UI_GRP_parentConstraint1.cty" "C_UI_GRP.ty";
connectAttr "C_UI_GRP_parentConstraint1.ctz" "C_UI_GRP.tz";
connectAttr "C_UI_GRP_parentConstraint1.crx" "C_UI_GRP.rx";
connectAttr "C_UI_GRP_parentConstraint1.cry" "C_UI_GRP.ry";
connectAttr "C_UI_GRP_parentConstraint1.crz" "C_UI_GRP.rz";
connectAttr "C_pointer_PLY_orientConstraint1.crx" "C_pointer_PLY.rx";
connectAttr "C_pointer_PLY_orientConstraint1.cry" "C_pointer_PLY.ry";
connectAttr "C_pointer_PLY_orientConstraint1.crz" "C_pointer_PLY.rz";
connectAttr "groupId17.id" "C_pointer_PLYShape.iog.og[0].gid";
connectAttr "blinn4SG.mwc" "C_pointer_PLYShape.iog.og[0].gco";
connectAttr "C_pointer_PLY.ro" "C_pointer_PLY_orientConstraint1.cro";
connectAttr "C_pointer_PLY.pim" "C_pointer_PLY_orientConstraint1.cpim";
connectAttr "C_pointer_CTL.r" "C_pointer_PLY_orientConstraint1.tg[0].tr";
connectAttr "C_pointer_CTL.ro" "C_pointer_PLY_orientConstraint1.tg[0].tro";
connectAttr "C_pointer_CTL.pm" "C_pointer_PLY_orientConstraint1.tg[0].tpm";
connectAttr "C_pointer_PLY_orientConstraint1.w0" "C_pointer_PLY_orientConstraint1.tg[0].tw"
		;
connectAttr "groupId53.id" "C_scale_PLYShape.iog.og[0].gid";
connectAttr "surfaceShader1SG.mwc" "C_scale_PLYShape.iog.og[0].gco";
connectAttr "C_UI_GRP.ro" "C_UI_GRP_parentConstraint1.cro";
connectAttr "C_UI_GRP.pim" "C_UI_GRP_parentConstraint1.cpim";
connectAttr "C_UI_GRP.rp" "C_UI_GRP_parentConstraint1.crp";
connectAttr "C_UI_GRP.rpt" "C_UI_GRP_parentConstraint1.crt";
connectAttr "C_playerCamera_CAM.t" "C_UI_GRP_parentConstraint1.tg[0].tt";
connectAttr "C_playerCamera_CAM.rp" "C_UI_GRP_parentConstraint1.tg[0].trp";
connectAttr "C_playerCamera_CAM.rpt" "C_UI_GRP_parentConstraint1.tg[0].trt";
connectAttr "C_playerCamera_CAM.r" "C_UI_GRP_parentConstraint1.tg[0].tr";
connectAttr "C_playerCamera_CAM.ro" "C_UI_GRP_parentConstraint1.tg[0].tro";
connectAttr "C_playerCamera_CAM.s" "C_UI_GRP_parentConstraint1.tg[0].ts";
connectAttr "C_playerCamera_CAM.pm" "C_UI_GRP_parentConstraint1.tg[0].tpm";
connectAttr "C_UI_GRP_parentConstraint1.w0" "C_UI_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "polyPlane1.out" "C_backdrop_PLYShape.i";
connectAttr "polyPlanarProj1.out" "C_health_PLYShape.i";
connectAttr "groupId54.id" "C_go_PLYShape.iog.og[0].gid";
connectAttr "surfaceShader1SG.mwc" "C_go_PLYShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "particleCloud2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "particleCloud3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "particleCloud2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "particleCloud3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "C_carBody_PLY1Shape.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "C_carBody_PLY1Shape.ciog.cog[1]" "blinn1SG.dsm" -na;
connectAttr "C_carBody_PLYShape.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "groupId55.msg" "blinn1SG.gn" -na;
connectAttr "groupId57.msg" "blinn1SG.gn" -na;
connectAttr "groupId58.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "groupId56.msg" "blinn2SG.gn" -na;
connectAttr "groupId59.msg" "blinn2SG.gn" -na;
connectAttr "C_carBody_PLY1Shape.iog.og[1]" "blinn2SG.dsm" -na;
connectAttr "C_carBody_PLYShape.iog.og[1]" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "blinn2.msg" "materialInfo2.m";
connectAttr "blinn3.oc" "blinn3SG.ss";
connectAttr "groupId12.msg" "blinn3SG.gn" -na;
connectAttr "groupId13.msg" "blinn3SG.gn" -na;
connectAttr "groupId14.msg" "blinn3SG.gn" -na;
connectAttr "groupId52.msg" "blinn3SG.gn" -na;
connectAttr "R_rearWheel_PLYShape.iog.og[1]" "blinn3SG.dsm" -na;
connectAttr "R_frontWheel_PLYShape.iog.og[1]" "blinn3SG.dsm" -na;
connectAttr "L_rearWheel_PLYShape.iog.og[1]" "blinn3SG.dsm" -na;
connectAttr "C_steeringWheel_PLYShape.iog" "blinn3SG.dsm" -na;
connectAttr "L_frontWheel_PLYShape.iog.og[1]" "blinn3SG.dsm" -na;
connectAttr "blinn3SG.msg" "materialInfo3.sg";
connectAttr "blinn3.msg" "materialInfo3.m";
connectAttr "surfaceShader2.oc" "blinn4SG.ss";
connectAttr "C_pointer_PLYShape.iog.og[0]" "blinn4SG.dsm" -na;
connectAttr "groupId17.msg" "blinn4SG.gn" -na;
connectAttr "blinn4SG.msg" "materialInfo4.sg";
connectAttr "surfaceShader2.msg" "materialInfo4.m";
connectAttr "surfaceShader2.msg" "materialInfo4.t" -na;
connectAttr "surfaceShader1.oc" "surfaceShader1SG.ss";
connectAttr "C_scale_PLYShape.iog.og[0]" "surfaceShader1SG.dsm" -na;
connectAttr "C_backdrop_PLYShape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "C_3_PLYShape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "C_2_PLYShape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "C_1_PLYShape.iog" "surfaceShader1SG.dsm" -na;
connectAttr "C_go_PLYShape.iog.og[0]" "surfaceShader1SG.dsm" -na;
connectAttr "groupId53.msg" "surfaceShader1SG.gn" -na;
connectAttr "groupId54.msg" "surfaceShader1SG.gn" -na;
connectAttr "surfaceShader1SG.msg" "materialInfo5.sg";
connectAttr "surfaceShader1.msg" "materialInfo5.m";
connectAttr "surfaceShader1.msg" "materialInfo5.t" -na;
connectAttr "C_health_RMP.oc" "surfaceShader3.oc";
connectAttr "surfaceShader3.oc" "surfaceShader3SG.ss";
connectAttr "C_health_PLYShape.iog" "surfaceShader3SG.dsm" -na;
connectAttr "surfaceShader3SG.msg" "materialInfo6.sg";
connectAttr "surfaceShader3.msg" "materialInfo6.m";
connectAttr "surfaceShader3.msg" "materialInfo6.t" -na;
connectAttr "place2dTexture1.o" "C_health_RMP.uv";
connectAttr "place2dTexture1.ofs" "C_health_RMP.fs";
connectAttr "reverse1.ox" "C_health_RMP.cel[0].ep";
connectAttr "polySurfaceShape1.o" "polyPlanarProj1.ip";
connectAttr "C_health_PLYShape.wm" "polyPlanarProj1.mp";
connectAttr "C_health_CTL.sx" "reverse1.ix";
connectAttr "particleCloud2FireIntensityExpr.out[0]" "particleCloud2.gi";
connectAttr "ramp1.oc" "particleCloud2.c";
connectAttr "ramp2.oc" "particleCloud2.t";
connectAttr "ramp3.oc" "particleCloud2.i";
connectAttr "particleCloud2.oi" "particleCloud2SG.vs";
connectAttr "particleCloud2SG.msg" "materialInfo7.sg";
connectAttr ":time1.o" "particleCloud2FireIntensityExpr.tim";
connectAttr "particleCloud2.msg" "particleCloud2FireIntensityExpr.obm";
connectAttr "particleAgeMapper1.ouv" "place2dTexture2.uv";
connectAttr "particleAgeMapper1.ouv" "place2dTexture3.uv";
connectAttr "particleAgeMapper1.ouv" "place2dTexture4.uv";
connectAttr "ramp4FlameRadiusExpr.out[0]" "ramp4.cel[1].ecr";
connectAttr "ramp4FlameRadiusExpr.out[1]" "ramp4.cel[1].ecg";
connectAttr "ramp4FlameRadiusExpr.out[2]" "ramp4.cel[1].ecb";
connectAttr "ramp4FlameRadiusExpr.out[3]" "ramp4.cel[2].ecr";
connectAttr "ramp4FlameRadiusExpr.out[4]" "ramp4.cel[2].ecg";
connectAttr "ramp4FlameRadiusExpr.out[5]" "ramp4.cel[2].ecb";
connectAttr ":time1.o" "ramp4FlameRadiusExpr.tim";
connectAttr "ramp4.msg" "ramp4FlameRadiusExpr.obm";
connectAttr "place2dTexture4.o" "ramp3.uv";
connectAttr "place2dTexture4.ofs" "ramp3.fs";
connectAttr "place2dTexture3.o" "ramp2.uv";
connectAttr "place2dTexture3.ofs" "ramp2.fs";
connectAttr "place2dTexture2.o" "ramp1.uv";
connectAttr "place2dTexture2.ofs" "ramp1.fs";
connectAttr "particleCloud3FireIntensityExpr.out[0]" "particleCloud3.gi";
connectAttr "ramp5.oc" "particleCloud3.c";
connectAttr "ramp6.oc" "particleCloud3.t";
connectAttr "ramp7.oc" "particleCloud3.i";
connectAttr "crater1.oc" "particleCloud3.m";
connectAttr "particleCloud3.oi" "particleCloud3SG.vs";
connectAttr "particleCloud3SG.msg" "materialInfo8.sg";
connectAttr ":time1.o" "particleCloud3FireIntensityExpr.tim";
connectAttr "particleCloud3.msg" "particleCloud3FireIntensityExpr.obm";
connectAttr "place2dTexture5.o" "ramp5.uv";
connectAttr "place2dTexture5.ofs" "ramp5.fs";
connectAttr "particleAgeMapper2.ouv" "place2dTexture5.uv";
connectAttr "place2dTexture6.o" "ramp6.uv";
connectAttr "place2dTexture6.ofs" "ramp6.fs";
connectAttr "particleAgeMapper2.ouv" "place2dTexture6.uv";
connectAttr "place2dTexture7.o" "ramp7.uv";
connectAttr "place2dTexture7.ofs" "ramp7.fs";
connectAttr "particleAgeMapper2.ouv" "place2dTexture7.uv";
connectAttr "ramp8FlameRadiusExpr.out[0]" "ramp8.cel[1].ecr";
connectAttr "ramp8FlameRadiusExpr.out[1]" "ramp8.cel[1].ecg";
connectAttr "ramp8FlameRadiusExpr.out[2]" "ramp8.cel[1].ecb";
connectAttr "ramp8FlameRadiusExpr.out[3]" "ramp8.cel[2].ecr";
connectAttr "ramp8FlameRadiusExpr.out[4]" "ramp8.cel[2].ecg";
connectAttr "ramp8FlameRadiusExpr.out[5]" "ramp8.cel[2].ecb";
connectAttr ":time1.o" "ramp8FlameRadiusExpr.tim";
connectAttr "ramp8.msg" "ramp8FlameRadiusExpr.obm";
connectAttr "blinn5.oc" "blinn5SG.ss";
connectAttr "blinn5SG.msg" "materialInfo9.sg";
connectAttr "blinn5.msg" "materialInfo9.m";
connectAttr "blinn5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blinn5SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ramp9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "C_main_CTL.damage" "multDoubleLinear1.i1";
connectAttr "multDoubleLinear1.o" "reverse2.ix";
connectAttr "blendShape1GroupParts.og" "blendShape1.ip[0].ig";
connectAttr "blendShape1GroupId.id" "blendShape1.ip[0].gi";
connectAttr "C_carBody_PLY1Shape.w" "blendShape1.it[0].itg[0].iti[6000].igt";
connectAttr "C_main_CTL.damage" "blendShape1.w[0]";
connectAttr "C_carBody_PLYShapeOrig.w" "groupParts1.ig";
connectAttr "groupId58.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId59.id" "groupParts2.gi";
connectAttr "groupParts4.og" "tweak1.ip[0].ig";
connectAttr "groupId61.id" "tweak1.ip[0].gi";
connectAttr "blendShape1GroupId.msg" "blendShape1Set.gn" -na;
connectAttr "C_carBody_PLYShape.iog.og[2]" "blendShape1Set.dsm" -na;
connectAttr "blendShape1.msg" "blendShape1Set.ub[0]";
connectAttr "tweak1.og[0]" "blendShape1GroupParts.ig";
connectAttr "blendShape1GroupId.id" "blendShape1GroupParts.gi";
connectAttr "groupId61.msg" "tweakSet1.gn" -na;
connectAttr "C_carBody_PLYShape.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts2.og" "groupParts4.ig";
connectAttr "groupId61.id" "groupParts4.gi";
connectAttr "blinn1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "particleCloud3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "multDoubleLinear1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "pSphereShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "C_main_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "reverse2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "C_main_CTLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "blendShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader3SG.pa" ":renderPartition.st" -na;
connectAttr "particleCloud2SG.pa" ":renderPartition.st" -na;
connectAttr "particleCloud3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn5SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "particleCloud2.msg" ":defaultShaderList1.s" -na;
connectAttr "particleCloud3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "particleAgeMapper1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "particleAgeMapper2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multDoubleLinear1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "C_health_RMP.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "particleAgeMapper1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp2.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp3.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp4.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp5.msg" ":defaultTextureList1.tx" -na;
connectAttr "particleAgeMapper2.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp6.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp7.msg" ":defaultTextureList1.tx" -na;
connectAttr "crater1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp8.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp9.msg" ":defaultTextureList1.tx" -na;
connectAttr "R_rearWheel_PLYShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "R_rearWheel_PLYShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "R_frontWheel_PLYShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "R_frontWheel_PLYShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "L_rearWheel_PLYShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "L_rearWheel_PLYShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "L_frontWheel_PLYShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "L_frontWheel_PLYShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
// End of GreenCar.ma
