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
cylinder(r = 10.5/2, h = 32.0, $fn = 300, center = true);
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
                cylinder(r = 2.7, h = 0.716619, $fn = 100, center = true);
                sphere(r = 1.2, $fn = 100);
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
cylinder(r = 10.5/2, h = 25.94, $fn = 300, center = true);
    }
}
module buttonbottom(bb){
difference(){
    translate([0, 32.0/2, 0]){
xyztc(0, 90, 0);
    }
translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
}
  module buttonfn(fn){
translate([2.88, 0, 0]){
cylinder(r = 1.02, h = 0.25, center = true, $fn = fn);
}
translate([-2.88, 0, 0]){
cylinder(r = 1.02, h = 0.25, center = true, $fn = fn);
}
cube([5.76, 2.04, 0.25], center = true);
}
//band release bottom
difference(){
buttonbottom(0);
translate([0, 17.72, -4.9607]){
    rotate([19.124, 0, 0]){
        difference(){
buttonfn(100);
            scale([0.98, 0.95, 1.1]){
buttonfn(100);
            }
        }
    }
}
    }
    module buttontop(bt){
difference(){
    translate([0, -32.0/2, 0]){
xyztc(0, 90, 0);
    }
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
}
//bandrelease top
difference(){
buttontop(0);
translate([0, -17.72, -4.9607]){
    rotate([-19.124, 0, 0]){
        difference(){
buttonfn(70);
            scale([0.98, 0.95, 1.1]){
buttonfn(70);
            }
        }
    }
}
}
//corner spheres
module xyzts(xts, yts, zts){
    translate([xts, yts, zts]){
/////fn alert!/////        
    sphere(r = 10.5/2, $fn = 300);
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
            cylinder(r = 2.7, h = 0.716619, $fn = 100, center = true);
sphere(r = 1.2, $fn = 100);
        }
    }
}
//button
module bc(bc){
    translate([-17.72, bc, 0]){
        rotate([0, 90, 0]){
/////fn alert!/////
cylinder(r = 2.2, h = 15, $fn = 300, center = true);
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