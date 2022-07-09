include <vars.scad>

module ShelfPlate() {
  translate([
      0,
      0,
      -stem_height-2*plate_z,
  ]) cube([
    shelf_x,
    shelf_y,
    shelf_z,
  ]);
}

module Shelf1() {
   difference() {
    translate([shelf_x/2+shelf_offset,0,0]) rotate([0,0,180]) ShelfPlate();
    PlateBolts();
  }
}

module Shelf2() {
   difference() {
    translate([-shelf_x/2+shelf_offset,0,0]) rotate([0,0,0]) ShelfPlate();
    PlateBolts();
  }
}
