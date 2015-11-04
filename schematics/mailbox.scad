width=50;
depth=80;
height=120;
thickness=1;
diameter=10;

difference() {
cube([width, depth, height]);
translate([
    width - thickness,
    diameter + 0.5 * diameter,
    height - (diameter + 0.5 * diameter)]) {
  rotate([0,90,0]) {
    cylinder(h = thickness, d = diameter, $fn = 32);
    translate([0,50,0]) {
      cylinder(h = thickness, d = diameter, $fn = 32);
    }
  }
}
translate([thickness, thickness, thickness]) {
cube([width - 2 * thickness, depth - 2 * thickness, height - thickness]);
}
}

rotate([90,0,-90]) {
  translate([-77,75,0]) {
    linear_extrude(height = 0.35) {
      text("makerspace", font = "Arial", size = 10);
      translate([0,-15,0]) {
        text("unibz.it", font = "Arial", size = 10);
      }
      translate([0,-30,0]) {
        text("Barbara R.", font = "Arial", size = 10);
      }
      translate([0,-45,0]) {
        text("Angelo V.", font = "Arial", size = 10);
      }
      translate([0,-60,0]) {
        text("Julian S.", font = "Arial", size = 10);
      }
    }
  }
}