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
//<slot>
difference(){
difference(){
xyztc(0, 90, 0);
translate([0, 20.86-(32/2), -1.99]){
	rotate([60, 0, 0]){
cube([40, 3.2, 4.81], center = true);
	}
}
}
translate([0, 20.86-2.083-(32/2), -1.99+1.2025]){
	rotate([0, 90, 0]){
cylinder(r = 3.2/2, h = 40, $fn = 100, center = true);
	}
}
}
//</slot>
	}
    translate([0, -32.0/2, 0]){
//<slot>
difference(){
difference(){
    xyztc(0, 90, 0);
translate([0, -20.86+(32/2), -1.99]){
	rotate([-60, 0, 0]){
cube([40, 3.2, 4.81], center = true);
	}
}
}
translate([0, -20.86+2.083+(32/2), -1.99+1.2025]){
	rotate([0, 90, 0]){
cylinder(r = 3.2/2, h = 40, $fn = 100, center = true);
	}
}
}
//</slot>
    }
}
//corner spheres
module xyzts(xts, yts, zts){
    translate([xts, yts, zts]){
    sphere(r = 10.5/2, $fn = 130);
    }
}
scale([1, 1, 1]){
//<slot>
difference(){
difference(){
	xyzts(25.94/2, 32.0/2, 0);
translate([0, 20.86, -1.99]){
	rotate([60, 0, 0]){
cube([40, 3.2, 4.81], center = true);
	}
}
}
translate([0, 20.86-2.083, -1.99+1.2025]){
	rotate([0, 90, 0]){
cylinder(r = 3.2/2, h = 40, $fn = 100, center = true);
	}
}
}
//</slot>
//<slot>
difference(){
difference(){
    xyzts(-25.94/2, 32.0/2, 0);
translate([0, 20.86, -1.99]){
	rotate([60, 0, 0]){
cube([40, 3.2, 4.81], center = true);
	}
}
}
translate([0, 20.86-2.083, -1.99+1.2025]){
	rotate([0, 90, 0]){
cylinder(r = 3.2/2, h = 40, $fn = 100, center = true);
	}
}
}
//</slot>
//<slot>
difference(){
difference(){
    xyzts(25.94/2, -32.0/2, 0);
translate([0, -20.86, -1.99]){
	rotate([-60, 0, 0]){
cube([40, 3.2, 4.81], center = true);
	}
}
}
translate([0, -20.86+2.083, -1.99+1.2025]){
	rotate([0, 90, 0]){
cylinder(r = 3.2/2, h = 40, $fn = 100, center = true);
	}
}
}
//</slot>
//<slot>
difference(){
difference(){
	xyzts(-25.94/2, -32.0/2, 0);
translate([0, -20.86, -1.99]){
	rotate([-60, 0, 0]){
cube([40, 3.2, 4.81], center = true);
	}
}
}
translate([0, -20.86+2.083, -1.99+1.2025]){
	rotate([0, 90, 0]){
cylinder(r = 3.2/2, h = 40, $fn = 100, center = true);
	}
}
}
//</slot>
}
/*
translate([0, -20.86, -1.99]){
	rotate([-60, 0, 0]){
cube([40, 3.2, 4.81], center = true);
	}
}
translate([0, -20.86+2.083, -1.99+1.2025]){
	rotate([0, 90, 0]){
cylinder(r = 3.2/2, h = 40, $fn = 100, center = true);
	}
}
translate([0, 20.86-2.083, -1.99+1.2025]){
	rotate([0, 90, 0]){
cylinder(r = 3.2/2, h = 40, $fn = 100, center = true);
	}
}
*/