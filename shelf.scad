include <vars.scad>

module ShelfPlate() {
  translate([
      0,
      -stem_center_to_wall/2 + shelf_wall_offset,
      -stem_height-2*plate_z,
  ]) cube([
    shelf_x,
    shelf_y,
    shelf_z,
  ]);
}

module Shelf1() {
  difference() {
    translate([
        0,
        0,
        0,
    ]) ShelfPlate();
    PlateBolts();
  }
}

module Shelf2() {
  difference() {
    translate([
        -shelf_x,
        0,
        0,
    ]) ShelfPlate();
    PlateBolts();
  }
}
