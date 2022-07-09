include <threads.scad>
include <vars.scad>

module PlateBolt() {
  MetricBolt(diameter=bolt_diam, length=plate_z + shelf_z);
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

