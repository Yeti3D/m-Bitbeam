// NAME: Sensor base
// CATEGORY: Electric

include <bitbeam-lib/bitbeam-lib.scad>

$fn=25;

translate([unit,0,0]) cube([unit*3,unit,unit/2],center=true);
translate([0,unit,0]) cube_arm(3, h=.5, side_holes=true, skip=[1]);
translate([unit,unit*2,0]) cube([unit*3,unit,unit/2],center=true);

translate([0,14,6]) rotate([90,0,0]) cube_arm(3, h=.5, side_holes=false);

translate([0,2,6]) rotate([90,0,0]) cube_arm(3, h=.5, side_holes=false);
