include <threads.scad>
include <vars.scad>
include <plate_bolt.scad>

module Stem() {
  translate([
      0,
      stem_outer/2,
      0,
  ]) rotate([0,180,180]) difference() {
    cylinder(h=stem_height, d=stem_outer, $fn=fn);
    rotate([0,0,90]) translate([0,0,-1]) {
      cylinder(h=stem_height+1-cord_bend, d=stem_inner, $fn=fn);
      translate([-cord_diam/2,0,0]) cube([cord_diam, plate_y/2, stem_height+1]);
    }
  }
}

module Plate() {
  difference() {
    translate([
        -plate_x/2,
        body_y_offset,
        -stem_height-plate_z,
    ]) cube([plate_x,plate_y,plate_z]);
    PlateBolts();
  }
}

module Body() {
  union() {
    Plate();
    Stem();
  }
}
