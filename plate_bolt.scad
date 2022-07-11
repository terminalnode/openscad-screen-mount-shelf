include <threads.scad>
include <vars.scad>

module PlateBolt() {
  MetricBolt(
      diameter=bolt_diam,
      length=plate_z + shelf_z + bolt_extra
      );
}

module PlateBolts() {
  rotate([0,180,0]) translate([
      0,
      plate_y/2 + body_y_offset,
      stem_height-9,
  ]) {
    tx = plate_x/2-10;
    ty = plate_y/2-10;
    translate([tx, ty, 0]) PlateBolt();
    translate([-tx, ty, 0]) PlateBolt();
    translate([tx, -ty, 0]) PlateBolt();
    translate([-tx, -ty, 0]) PlateBolt();
  }
}

