SetFactory("OpenCASCADE");

//parameters
n_curve = 15;
n_straight = 13;
n_curve_cs = 13;
n_straight_cs = 13;


//+
Point(1) = {0, 50e-3, 0, 1.0};
//+
Point(2) = {0, -50e-3, 0, 1.0};
//+
Point(3) = {0, 0, 0, 1.0};
//+
Point(4) = {50e-3, 0, 0, 1.0};
//+
Point(5) = {-50e-3, 0, 0, 1.0};
//+
Point(6) = {-25e-3, 0, 0, 1.0};
//+
Point(7) = {25e-3, 0, 0, 1.0};
//+
Point(8) = {0, 25e-3, 0, 1.0};
//+
Point(9) = {0, -25e-3, 0, 1.0};
//+
Circle(1) = {5, 3, 1};
//+//+
Circle(2) = {1, 3, 4};
//+
Circle(3) = {4, 3, 2};
//+
Circle(4) = {2, 3, 5};
//+
Line(9) = {6, 5};
//+
Line(10) = {8, 1};
//+
Line(11) = {7, 4};
//+
Line(12) = {9, 2};
//+
Point(10) = {40e-3, 40e-3, 0, 1.0};
//+
Point(11) = {40e-3, -40e-3, 0, 1.0};
//+
Point(12) = {-40e-3, -40e-3, 0, 1.0};
//+
Point(13) = {-40e-3, 40e-3, 0, 1.0};
//+
Circle(13) = {9, 13, 7};
//+
Circle(14) = {7, 12, 8};
//+
Circle(15) = {8, 11, 6};
//+
Circle(16) = {6, 10, 9};
//+
Transfinite Curve {1, 2, 3, 4, 16, 15, 14, 13} = n_curve_cs Using Progression 1;
//+
Transfinite Curve {10, 11, 12, 9} = n_straight_cs Using Progression 1;
//+
Curve Loop(1) = {1, -10, 15, 9};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, -11, 14, 10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, -12, 13, 11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, -9, 16, 12};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {16, 13, 14, 15};
//+
Plane Surface(5) = {5};
//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Transfinite Surface {4};
//+
Transfinite Surface {5};
//+
Recombine Surface {1, 2, 3, 4, 5};
//+

//curve1
//+
Extrude {{0, 1, 0}, {117.5e-3, 0, 0}, Pi} {
  Surface{1}; Surface{2}; Surface{3}; Surface{5}; Surface{4}; Layers{n_curve*2}; Recombine;
}


//straight1
//+
Extrude {0, 0, -400e-3} {
  Surface{1}; Surface{2}; Surface{5}; Surface{3}; Surface{4}; Layers {n_straight*2}; Recombine;
}


//curve2
//+
Extrude {{0, 1, 0}, {117.5e-3, 0, -400e-3}, -Pi} {
  Surface{31}; Surface{37}; Surface{34}; Surface{27}; Surface{39}; Layers{n_curve*2}; Recombine;
}


//straight2
//+
Extrude {0, 0, 400e-3} {
  Surface{56}; Surface{48}; Surface{44}; Surface{54}; Surface{51}; Layers {n_straight*2}; Recombine;
}

Coherence;




Point(46) = {117.5e-3, 0, 17.5e-3, 1.0};
//+
Point(47) = {117.5e-3, 0, 67.5e-3, 1.0};
//+
Point(48) = {117.5e-3, 0, -32.5e-3, 1.0};
//+
Point(49) = {67.5e-3, 0, 17.5e-3, 1.0};
//+
Point(50) = {167.5e-3, 0, 17.5e-3, 1.0};
//+
Point(51) = {117.5e-3, 0, -417.5e-3, 1.0};
//+
Point(52) = {117.5e-3, 0, -467.5e-3, 1.0};
//+
Point(53) = {67.5e-3, 0, -417.5e-3, 1.0};
//+
Point(54) = {167.5e-3, 0, -417.5e-3, 1.0};
//+
Point(55) = {117.5e-3, 0, -367.5e-3, 1.0};
//+
Circle(105) = {52, 51, 54};
//+
Circle(106) = {51, 54, 55};
//+
Circle(106) = {54, 51, 55};
//+
Circle(107) = {55, 51, 53};
//+
Circle(108) = {53, 51, 52};
//+
Circle(109) = {48, 46, 50};
//+
Circle(110) = {50, 46, 47};
//+
Circle(111) = {48, 46, 49};
//+
Circle(112) = {49, 46, 47};
//+
Point(56) = {77.5e-3, 0, -22.5e-3, 1.0};
//+
Point(57) = {157.5e-3, 0, -22.5e-3, 1.0};
//+
Point(58) = {157.5e-3, 0, 57.5e-3, 1.0};
//+
Point(59) = {77.5e-3, 0, 57.5e-3, 1.0};
//+
Point(60) = {77.5e-3, 0, 57.5e-3, 1.0};
//+
Point(61) = {77.5e-3, 0, -377.5e-3, 1.0};
//+
Point(62) = {157.5e-3, 0, -377.5e-3, 1.0};
//+
Point(63) = {157.5e-3, 0, -457.5e-3, 1.0};
//+
Point(64) = {77.5e-3, 0, -457.5e-3, 1.0};
//+
Point(65) = {92.5e-3, 0, 17.5e-3, 1.0};
//+
Point(66) = {142.5e-3, 0, 17.5e-3, 1.0};
//+
Point(67) = {117.5e-3, 0, 42.5e-3, 1.0};
//+
Point(68) = {117.5e-3, 0, -7.5e-3, 1.0};
//+
Point(69) = {117.5e-3, 0, -442.5e-3, 1.0};
//+
Point(70) = {117.5e-3, 0, -392.5e-3, 1.0};
//+
Point(71) = {92.5e-3, 0, -417.5e-3, 1.0};
//+
Point(72) = {142.5e-3, 0, -417.5e-3, 1.0};
//+
Circle(113) = {69, 61, 72};
//+
Circle(114) = {71, 71, 63};
//+
Circle(114) = {71, 63, 70};
//+
Circle(115) = {69, 62, 71};
//+
Circle(116) = {72, 64, 70};
//+
Circle(117) = {65, 57, 67};
//+
Circle(118) = {68, 59, 66};
//+
Circle(119) = {65, 58, 68};
//+
Circle(120) = {66, 56, 67};
//+
Line(121) = {70, 55};
//+
Line(122) = {72, 54};
//+
Line(123) = {52, 69};
//+
Line(124) = {71, 53};
//+
Line(125) = {48, 68};
//+
Line(126) = {66, 50};
//+
Line(127) = {67, 47};
//+
Line(128) = {65, 49};
//+
Transfinite Curve {105, 106, 107, 108, 115, 113, 116, 114, 109, 110, 112, 111, 119, 118, 120, 117} = n_curve_cs Using Progression 1;
//+
Transfinite Curve {124, 121, 122, 123, 125, 128, 127, 126} = n_straight_cs Using Progression 1;
//+
Curve Loop(86) = {109, -126, -118, -125};
//+
Plane Surface(86) = {86};
//+
Curve Loop(87) = {126, 110, -127, -120};
//+
Plane Surface(87) = {87};
//+
Curve Loop(88) = {117, 127, -112, -128};
//+
Plane Surface(88) = {88};
//+
Curve Loop(89) = {111, -128, 119, -125};
//+
Plane Surface(89) = {89};
//+
Curve Loop(90) = {118, 120, -117, 119};
//+
Plane Surface(90) = {90};
//+
Curve Loop(91) = {123, 113, 122, -105};
//+
Plane Surface(91) = {91};
//+
Curve Loop(92) = {116, 121, -106, -122};
//+
Plane Surface(92) = {92};
//+
Curve Loop(93) = {114, 121, 107, -124};
//+
Plane Surface(93) = {93};
//+
Curve Loop(94) = {124, 108, 123, 115};
//+
Plane Surface(94) = {94};
//+
Curve Loop(95) = {113, 116, -114, -115};
//+
Plane Surface(95) = {95};

Transfinite Surface {86};
//+
Transfinite Surface {87};
//+
Transfinite Surface {88};
//+
Transfinite Surface {89};
//+
Transfinite Surface {90};
//+
Transfinite Surface {91};
//+
Transfinite Surface {92};
//+
Transfinite Surface {93};
//+
Transfinite Surface {94};
//+
Transfinite Surface {95};
//+
Recombine Surface {86:95};
//+
//+
Extrude {{1, 0, 0}, {117.5e-3, 0, 135e-3}, Pi/2} {
  Surface{88}; Surface{89}; Surface{87}; Surface{90}; Surface{86}; Layers{n_curve}; Recombine;
}
//+
Extrude {{1, 0, 0}, {117.5e-3, 0, 135e-3}, -Pi/2} {
  Surface{88}; Surface{89}; Surface{87}; Surface{90}; Surface{86}; Layers{n_curve}; Recombine;
}
//+
Extrude {{1, 0, 0}, {117.5e-3, 0, -535e-3}, Pi/2} {
  Surface{91}; Surface{92}; Surface{93}; Surface{94}; Surface{95}; Layers{n_curve}; Recombine;
}
//+
Extrude {{1, 0, 0}, {117.5e-3, 0, -535e-3}, -Pi/2} {
  Surface{91}; Surface{92}; Surface{93}; Surface{94}; Surface{95}; Layers{n_curve}; Recombine;
}

//+
Extrude {0, 0, 200e-3} {
  Surface{112}; Surface{108}; Surface{100}; Surface{104}; Surface{110}; Surface{129}; Surface{121}; Surface{117}; Surface{125}; Surface{127}; Layers {n_straight}; Recombine;
}
//+
Extrude {0, 0, -200e-3} {
  Surface{138}; Surface{142}; Surface{145}; Surface{134}; Surface{146}; Surface{159}; Surface{155}; Surface{163}; Surface{151}; Surface{162}; Layers {n_straight}; Recombine;
}

//+
Mesh 3;
Mesh.SaveAll = 0;
Mesh.SaveGroupsOfElements = -1000;
Mesh.SaveGroupsOfNodes = -0100;
Save "copy.inp";
