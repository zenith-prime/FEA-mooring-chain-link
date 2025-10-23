SetFactory("OpenCASCADE");

//parameters
n_curve = 15;
n_straight = 10;
n_curve_cs = 15;
n_straight_cs = 10;

//+
Point(1) = {0, 50, 0, 1.0};
//+
Point(2) = {0, -50, 0, 1.0};
//+
Point(3) = {0, 0, 0, 1.0};
//+
Point(4) = {50, 0, 0, 1.0};
//+
Point(5) = {-50, 0, 0, 1.0};
//+
Point(6) = {-25, 0, 0, 1.0};
//+
Point(7) = {25, 0, 0, 1.0};
//+
Point(8) = {0, 25, 0, 1.0};
//+
Point(9) = {0, -25, 0, 1.0};
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
Point(10) = {40, 40, 0, 1.0};
//+
Point(11) = {40, -40, 0, 1.0};
//+
Point(12) = {-40, -40, 0, 1.0};
//+
Point(13) = {-40, 40, 0, 1.0};
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
Extrude {{0, 1, 0}, {117.5, 0, 0}, Pi} {
  Surface{1}; Surface{2}; Surface{3}; Surface{5}; Surface{4}; Layers{n_curve}; Recombine;
}

//straight1
//+
Extrude {0, 0, -400} {
  Surface{1}; Surface{2}; Surface{5}; Surface{3}; Surface{4}; Layers {n_straight}; Recombine;
}

//curve2
//+
Extrude {{0, 1, 0}, {117.5, 0, -400}, -Pi} {
  Surface{31}; Surface{37}; Surface{34}; Surface{27}; Surface{39}; Layers{n_curve}; Recombine;
}

//straight2
//+
Extrude {0, 0, 400} {
  Surface{56}; Surface{48}; Surface{44}; Surface{54}; Surface{51}; Layers {n_straight}; Recombine;
}

Point(46) = {117.5, 0, 17.5, 1.0};
//+
Point(47) = {117.5, 0, 67.5, 1.0};
//+
Point(48) = {117.5, 0, -32.5, 1.0};
//+
Point(49) = {67.5, 0, 17.5, 1.0};
//+
Point(50) = {167.5, 0, 17.5, 1.0};
//+
Point(51) = {117.5, 0, -417.5, 1.0};
//+
Point(52) = {117.5, 0, -467.5, 1.0};
//+
Point(53) = {67.5, 0, -417.5, 1.0};
//+
Point(54) = {167.5, 0, -417.5, 1.0};
//+
Point(55) = {117.5, 0, -367.5, 1.0};
//+
Physical Surface("FC_InnerCurve1", 97) = {11, 15};
//+
Physical Surface("FC_InnerCurve2", 98) = {45, 40};
//+
Circle(97) = {49, 46, 48};
//+
Circle(98) = {48, 46, 50};
//+
Circle(99) = {50, 46, 47};
//+
Circle(100) = {47, 46, 49};
//+
Circle(101) = {53, 51, 52};
//+
Circle(102) = {52, 51, 54};
//+
Circle(103) = {54, 51, 55};
//+
Circle(104) = {55, 51, 53};
//+
Point(56) = {77.5, 0, -22.5, 1.0};
//+
Point(57) = {157.5, 0, -22.5, 1.0};
//+
Point(58) = {157.5, 0, 57.5, 1.0};
//+
Point(59) = {77.5, 0, 57.5, 1.0};
//+
Point(60) = {77.5, 0, 57.5, 1.0};
//+
Point(61) = {77.5, 0, -377.5, 1.0};
//+
Point(62) = {157.5, 0, -377.5, 1.0};
//+
Point(63) = {157.5, 0, -457.5, 1.0};
//+
Point(64) = {77.5, 0, -457.5, 1.0};
//+
Point(65) = {92.5, 0, 17.5, 1.0};
//+
Point(66) = {142.5, 0, 17.5, 1.0};
//+
Point(67) = {117.5, 0, 42.5, 1.0};
//+
Point(68) = {117.5, 0, -7.5, 1.0};
//+
Point(69) = {117.5, 0, -442.5, 1.0};
//+
Point(70) = {117.5, 0, -392.5, 1.0};
//+
Point(71) = {92.5, 0, -417.5, 1.0};
//+
Point(72) = {142.5, 0, -417.5, 1.0};
//+
Circle(105) = {67, 57, 65};
//+
Circle(106) = {66, 56, 67};
//+
Circle(107) = {66, 59, 68};
//+
Circle(108) = {68, 58, 65};
//+
Circle(109) = {72, 61, 69};
//+
Circle(110) = {69, 62, 71};
//+
Circle(111) = {71, 63, 70};
//+
Circle(112) = {70, 64, 72};
//+
Line(113) = {49, 65};
//+
Line(114) = {68, 48};
//+
Line(115) = {50, 66};
//+
Line(116) = {67, 47};
//+
Line(117) = {55, 70};
//+
Line(118) = {71, 53};
//+
Line(119) = {52, 69};
//+
Line(120) = {54, 72};
//+
Transfinite Curve {97, 98, 99, 100, 105, 108, 107, 106} = n_curve_cs Using Progression 1;
//+
Transfinite Curve {113, 114, 115, 116} = n_straight_cs Using Progression 1;
//+
Transfinite Curve {104, 101, 102, 103, 111, 110, 109, 112} = n_curve_cs Using Progression 1;
//+
Transfinite Curve {117, 118, 119, 120} = n_straight_cs Using Progression 1;
//+
Curve Loop(74) = {100, 113, -105, 116};
//+
Plane Surface(74) = {74};
//+
Curve Loop(75) = {97, -114, 108, -113};
//+
Plane Surface(75) = {75};
//+
Curve Loop(76) = {114, 98, 115, 107};
//+
Plane Surface(76) = {76};
//+
Curve Loop(77) = {115, 106, 116, -99};
//+
Plane Surface(77) = {77};
//+
Curve Loop(78) = {105, -108, -107, 106};
//+
Plane Surface(78) = {78};
//+
Curve Loop(79) = {104, -118, 111, -117};
//+
Plane Surface(79) = {79};
//+
Curve Loop(80) = {118, 101, 119, 110};
//+
Plane Surface(80) = {80};
//+
Curve Loop(81) = {119, -109, -120, -102};
//+
Plane Surface(81) = {81};
//+
Curve Loop(82) = {120, -112, -117, -103};
//+
Plane Surface(82) = {82};
//+
Curve Loop(83) = {111, 112, 109, 110};
//+
Plane Surface(83) = {83};
//+
Transfinite Surface {74};
//+
Transfinite Surface {75};
//+
Transfinite Surface {76};
//+
Transfinite Surface {77};
//+
Transfinite Surface {78};
//+
Transfinite Surface {79};
//+
Transfinite Surface {80};
//+
Transfinite Surface {81};
//+
Transfinite Surface {82};
//+
Transfinite Surface {83};
//+
Recombine Surface {74, 75, 76, 77, 78, 79, 80, 83, 81, 82};
//+
Extrude {{1, 0, 0}, {117.5, 0, 135}, Pi/2} {
  Surface{74}; Surface{75}; Surface{78}; Surface{76}; Surface{77}; Layers{5}; Recombine;
}
//+
Extrude {{1, 0, 0}, {117.5, 0, 135}, -Pi/2} {
  Surface{75}; Surface{76}; Surface{78}; Surface{74}; Surface{77}; Layers{5}; Recombine;
}
//+
Extrude {{1, 0, 0}, {117.5, 0, -535}, -Pi/2} {
  Surface{79}; Surface{80}; Surface{83}; Surface{81}; Surface{82}; Layers{5}; Recombine;
}
//+
Extrude {{1, 0, 0}, {117.5, 0, -535}, Pi/2} {
  Surface{79}; Surface{80}; Surface{82}; Surface{81}; Surface{83}; Layers{5}; Recombine;
}
//+
Extrude {0, 0, 200} {
  Surface{105}; Surface{109}; Surface{112}; Surface{115}; Surface{117}; Surface{95}; Surface{92}; Surface{98}; Surface{88}; Surface{100}; Layers {5}; Recombine;
}
//+
Extrude {0, 0, -200} {
  Surface{139}; Surface{147}; Surface{151}; Surface{143}; Surface{150}; Surface{129}; Surface{134}; Surface{122}; Surface{126}; Surface{132}; Layers {5}; Recombine;
}
