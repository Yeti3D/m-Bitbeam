// NAME: Traffic light pedestrians
// CATEGORY: Electric

include <bitbeam-lib/bitbeam-lib.scad>
$fn=25;

translate([-unit,-unit*7,0]) cube_t(3,7,h=1);
translate([-unit/2,-unit/2,-unit/2]) cube([8,4,8]);

module led() {
  translate([0,0,-.1]) cylinder(d=5.9,h=4.9);
  translate([0,0,-.1]) cylinder(d=4.9,h=10.2);
}

module cover() {
  difference() {
    translate([0,0,10]) cylinder(d=7.6,h=4);
    translate([0,0,9.9]) cylinder(d=6,h=4.2);
    translate([-4,-3.8,10]) rotate([27.8,0,0]) cube(10);
  }
}

difference(){
  translate([-6,0,-unit/2]) cube([12,20,10]);
  translate([0,6,-unit/2]) led();
  translate([0,14,-unit/2]) led();
}

translate([0,6,-unit/2]) cover();
translate([0,14,-unit/2]) cover();