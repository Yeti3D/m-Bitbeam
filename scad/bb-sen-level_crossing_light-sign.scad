// NAME: Level crossing light
// CATEGORY: Electric

include <bitbeam-lib/bitbeam-lib.scad>
$fn=25;

rotate([90,0,90]) cube_arm(2, h=.5, side_holes=true, skip=[1]);
translate([unit*1.5,0,0]) rotate([90,0,90]) cube_arm(2, h=.5, side_holes=true, skip=[1]);

difference() {
  translate([-unit*1.25,-unit/2,-unit*.75]) cube([unit*4,unit*3,unit/4]);
  translate([unit*.75,unit,-unit]) cylinder(d=7.6,h=unit);
}