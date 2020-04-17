// NAME: kbricks base
// CATEGORY: Electric

include <bitbeam-lib/bitbeam-lib.scad>

import("plate1x1.stl");

$fn=25;

translate([-unit,6,7]) rotate([90,0,0]) cube_arm(3, h=.5, side_holes=false, skip=[], skip_side=[]);

translate([-unit,-6,7]) rotate([90,0,0]) cube_arm(3, h=.5, side_holes=false, skip=[], skip_side=[]);
