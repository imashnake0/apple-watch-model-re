//body
cube([21.81, 27.87, 10.5], center = true);
//cylinders right, left
module xyzsc(xsc, ysc, zsc){
    rotate([xsc, ysc, zsc]){
cylinder(r = 7.315/2, h = 27.87, $fn = 500, center = true);
    }
}
scale([1, 1, 10.5/7.315]){
    translate([21.81/2, 0, 0]){
xyzsc(90, 0, 0);
    }
    translate([-21.81/2, 0, 0]){
xyzsc(90, 0, 0);
    }
}
//cylinders top, bottom
module xyztc(xtc, ytc, ztc){
    rotate([xtc, ytc, ztc]){
cylinder(r = 7.315/2, h = 21.81, $fn = 500, center = true);
    }
}
scale([1, 1, 10.5/7.315]){
    translate([0, 27.87/2, 0]){
xyztc(0, 90, 0);
    }
    translate([0, -27.87/2, 0]){
xyztc(0, 90, 0);
    }
}
module xyzts(xts, yts, zts){
    translate([xts, yts, zts]){
    sphere(r = 7.315/2, $fn = 500);
    }
}
scale([1, 1, 10.5/7.315]){
    xyzts(21.81/2, 27.87/2, 0);
    xyzts(-21.81/2, 27.87/2, 0);
    xyzts(21.81/2, -27.87/2, 0);
    xyzts(-21.81/2, -27.87/2, 0);
}