include <threads.scad>
include <vars.scad>

module PlateBolt() {
  bolt_diam = 6;
  cube_side = bolt_diam*2;
  subtract_head = 0;

  translate([0,0,-subtract_head]) difference() {
    union() {
      MetricBolt(diameter=bolt_diam, length=plate_z*2);
    }
    cube([cube_side,cube_side,subtract_head*2], center=true);
  }
}

module PlateBolts() {
  rotate([0,180,0]) translate([
      0,
      0,
      stem_height-6
  ]) {
    tx = plate_x/2-6;
    ty = plate_y/2-6;
    translate([tx, ty, 0]) PlateBolt();
    translate([-tx, ty, 0]) PlateBolt();
    translate([tx, -ty, 0]) PlateBolt();
    translate([-tx, -ty, 0]) PlateBolt();
  }
}

