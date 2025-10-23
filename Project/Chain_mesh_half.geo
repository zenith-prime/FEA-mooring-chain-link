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
Extrude {0, 0, -200} {
  Surface{1}; Surface{2}; Surface{5}; Surface{3}; Surface{4}; Layers {n_straight/2}; Recombine;
}

//straight2
//+
Extrude {0, 0, -200} {
  Surface{14}; Surface{10}; Surface{20}; Surface{22}; Surface{18}; Layers {n_straight/2}; Recombine;
}
