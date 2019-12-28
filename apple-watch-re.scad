//body
difference(){
cube([25.94, 32.0, 10.5], center = true);
translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
//cylinders right, left
module xyzsc(xsc, ysc, zsc){
    rotate([xsc, ysc, zsc]){
/////fn alert!/////
cylinder(r = 10.5/2, h = 32.0, $fn = 700, center = true);
    }
}
difference(){
    translate([25.94/2, 0, 0]){
xyzsc(90, 0, 0);
    }
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
difference(){
difference(){    
    translate([-25.94/2, 0, 0]){
xyzsc(90, 0, 0);
    }
translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
//<bruh>
/////fn alert MINKOWSKI(<200)!/////
translate([-36.44/2, -7.78, 0.55]){
    rotate([0, 90, 0]){
        scale([1.04, 1.04, 1.04]){
            minkowski(){
                cylinder(r = 2.7, h = 0.716619, $fn = 200, center = true);
                sphere(r = 1.2, $fn = 200);
            }
        }
    }
}
//</bruh>
}
//cylinders top, bottom
module xyztc(xtc, ytc, ztc){
    rotate([xtc, ytc, ztc]){
/////fn alert!/////
cylinder(r = 10.5/2, h = 25.94, $fn = 700, center = true);
    }
}
difference(){
    translate([0, 32.0/2, 0]){
xyztc(0, 90, 0);
    }
translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
difference(){
    translate([0, -32.0/2, 0]){
xyztc(0, 90, 0);
    }
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
//corner spheres
module xyzts(xts, yts, zts){
    translate([xts, yts, zts]){
/////fn alert!/////        
    sphere(r = 10.5/2, $fn = 700);
    }
}
scale([1, 1, 1]){
difference(){
    xyzts(25.94/2, 32.0/2, 0);
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
difference(){
    xyzts(-25.94/2, 32.0/2, 0);
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
difference(){
    xyzts(25.94/2, -32.0/2, 0);
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
difference(){
    xyzts(-25.94/2, -32.0/2, 0);
translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
}
//crown
/////fn alert! MINKOWSKI(<200)/////
translate([-36.44/2, -7.78, 0.55]){
    rotate([0, 90, 0]){
        minkowski(){
            cylinder(r = 2.7, h = 0.716619, $fn = 200, center = true);
sphere(r = 1.2, $fn = 200);
        }
    }
}
//button
module bc(bc){
    translate([-17.72, bc, 0]){
        rotate([0, 90, 0]){
/////fn alert!/////
cylinder(r = 2.2, h = 15, $fn = 700, center = true);
        }
    }
}
intersection(){
 translate([-26.36/2, 0, 0]){
xyzsc(90, 0, 0);
 }
bc(3.09);
}
intersection(){
translate([-26.36/2, 0, 0]){
xyzsc(90, 0, 0);
}
bc(9.89);
}
intersection(){
    translate([-26.36/2, 0, 0]){
    xyzsc(90, 0, 0);
        }
    translate([-17.72, 6.49, 0]){
cube([15, 6.8, 4.4], center = true);
    }
}