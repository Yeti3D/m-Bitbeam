// NAME: Level crossing light
// CATEGORY: Electric

include <bitbeam-lib/bitbeam-lib.scad>
$fn=25;

translate([-unit,-unit*6,0]) cube_arm(3, h=1, side_holes=true, skip_side=[1]);
translate([0,-unit*6,-unit/4]) rotate(90) cube_arm(6, h=.5, side_holes=true, skip_side=[1]);

module led() {
  #translate([0,0,-.1]) cylinder(d=6,h=5.1);
  translate([0,0,-.1]) cylinder(d=4.9,h=10.2);
}

module cover() {
  difference() {
    translate([0,0,8]) cylinder(d=7.6,h=6);
    translate([0,0,7.9]) cylinder(d=6,h=6.2);
    translate([-4,-3.8,10]) rotate([27.8,0,0]) cube(10);
  }
}

difference(){
  rotate([90,0,90]) cube_arm(2, h=1, side_holes=false, skip=[1]);
  //#translate([-unit*.5,0,-unit/2]) cube([unit,20,6]);
  translate([0,unit,-unit+4]) led();
}

translate([0,unit,-unit+4]) cover();