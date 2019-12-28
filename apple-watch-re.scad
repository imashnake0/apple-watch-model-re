//body
cube([25.94, 32.0, 10.5], center = true);
//cylinders right, left
module xyzsc(xsc, ysc, zsc){
    rotate([xsc, ysc, zsc]){
cylinder(r = 10.5/2, h = 32.0, $fn = 130, center = true);
    }
}
scale([1, 1, 1]){
    translate([25.94/2, 0, 0]){
xyzsc(90, 0, 0);
    }
    translate([-25.94/2, 0, 0]){
xyzsc(90, 0, 0);
    }
}
//cylinders top, bottom
module xyztc(xtc, ytc, ztc){
    rotate([xtc, ytc, ztc]){
cylinder(r = 10.5/2, h = 25.94, $fn = 130, center = true);
    }
}
scale([1, 1, 1]){
    translate([0, 32.0/2, 0]){
xyztc(0, 90, 0);
    }
    translate([0, -32.0/2, 0]){
xyztc(0, 90, 0);
    }
}
//corner spheres
module xyzts(xts, yts, zts){
    translate([xts, yts, zts]){
    sphere(r = 10.5/2, $fn = 130);
    }
}
scale([1, 1, 1]){
    xyzts(25.94/2, 32.0/2, 0);
    xyzts(-25.94/2, 32.0/2, 0);
    xyzts(25.94/2, -32.0/2, 0);
    xyzts(-25.94/2, -32.0/2, 0);
}
//crown
translate([-36.44/2, -7.78, 0.55]){
    rotate([0, 90, 0]){
        minkowski(){    
cylinder(r = 2.7, h = 0.716619, $fn = 300, center = true);
sphere(r = 1.2, $fn = 100);
}
}
}
//button
module bc(bc){
    translate([-17.72, bc, 0]){
        rotate([0, 90, 0]){
cylinder(r = 2.2, h = 15, $fn = 100, center = true);
        }
    }
}
intersection(){
 translate([-26.94/2, 0, 0]){
xyzsc(90, 0, 0);
 }
bc(3.09);
}
intersection(){
translate([-26.94/2, 0, 0]){
xyzsc(90, 0, 0);
}
bc(9.89);
}
intersection(){
    translate([-26.94/2, 0, 0]){
    xyzsc(90, 0, 0);
        }
    translate([-17.72, 6.49, 0]){
cube([15, 6.8, 4.4], center = true);
    }
}