// NAME: Buzzer bracket
// CATEGORY: Electric

include <bitbeam-lib/bitbeam-lib.scad>

use <NopSCADlib/utils/sector.scad>

$fn=120;

difference() {
  union() {
    cube_t(3, 3, h=1);
    translate([unit,17.85,0]) cylinder(d=14.9, h=unit, center=true);
  }
  translate([unit,17.85,0]) cylinder(d=11.7, h=unit+.2, center=true);
  translate([unit,17.85,-.5*unit-.1]) linear_extrude(height=unit+.2) sector(unit,45,135);
}
