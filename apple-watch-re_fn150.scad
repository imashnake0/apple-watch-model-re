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
		scale([0.9864661,, 1, 1]){
cylinder(r = 10.5/2, h = 32.0, $fn = 150, center = true);
		}
	}
}
module rightcylinder(x){
difference(){
    translate([25.94/2, 0, 0]){
xyzsc(90, 0, 0);
    }
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
}
//module for bottom speaker
module speakerb(H){
    translate([16.17264, -9.375, -4.16]){
    rotate([0, -37.59142, 0]){
cube([0.85, 3.2, H], center = true);
        translate([0, 1.605, 0]){
/////fn alert!/////
cylinder(r = 0.425, center = true, h = H, $fn = 100)
;
        }
        translate([0, -1.605, 0]){
/////fn alert!/////
cylinder(r = 0.425, center = true, h = H, $fn = 150)
;
        }
}
}
//inside the speaker
translate([16.17264, -9.375, -4.16]){
    rotate([0, -37.59142, 0]){
scale([0.6/0.85, 0.9, 2]){
cube([0.85, 3.2, H + 0.4], center = true);
}
scale([0.6/0.85, 0.9, 2]){
    translate([0, 1.605, 0]){
/////fn alert!/////
cylinder(r = 0.425, center = true, h = H + 0.4, $fn = 150);
    }
}
scale([0.6/0.85, 0.9, 2]){
    translate([0, -1.605, 0]){
/////fn alert!/////
cylinder(r = 0.425, center = true, h = H + 0.4, $fn = 150)
;
    }
}
}
}
}
///module for bottom speaker
//module for top speaker
module speakert(H){
    translate([17.97818, -9.375, -1.575]){
    rotate([0, -72.5422, 0]){
cube([0.85, 3.2, H], center = true);
        translate([0, 1.605, 0]){
/////fn alert!/////
cylinder(r = 0.425, center = true, h = H, $fn = 150)
;
        }
        translate([0, -1.605, 0]){
/////fn alert!/////
cylinder(r = 0.425, center = true, h = H, $fn = 150)
;
        }
}
}
//inside the speaker
translate([17.97818, -9.375, -1.575]){
    rotate([0, -72.5422, 0]){
scale([0.6/0.85, 0.9, 2]){
cube([0.85, 3.2, H + 0.4], center = true);
}
scale([0.6/0.85, 0.9, 2]){
    translate([0, 1.605, 0]){
/////fn alert!/////
cylinder(r = 0.425, center = true, h = H + 0.4, $fn = 150);
    }
}
scale([0.6/0.85, 0.9, 2]){
    translate([0, -1.605, 0]){
/////fn alert!/////
cylinder(r = 0.425, center = true, h = H + 0.4, $fn = 150)
;
    }
}
}
}
}
///module for top speaker
module rightcylinderwbspeaker(x){
    difference(){
rightcylinder(0);
    speakerb(0.2);
    }
}
//left with two speakers 
module leftwtwospeakers(x){
difference(){
rightcylinderwbspeaker(0);
speakert(0.2);
}
}
///left with two speakers
//mic
    module mic(Hm){
        translate([17.278, 0, -3]){
            rotate([0, -55.15, 0]){
                translate([0, 9.05, 0]){
/////fn alert!/////
                    cylinder(r = 1.3/2, center = true, h = Hm, $fn = 150);
            }
        }
    }
    translate([17.278, 0, -3]){
        rotate([0, -55.15, 0]){
            translate([0, 9.05, 0]){
                scale([1/1.3, 1/1.3, 1.3]){
/////fn alert!/////
cylinder(r = 1.3/2, center = true, h = Hm + 1.2, $fn = 150)
;
                }
            }
        }
    }
}
///mic
//left with speakers and mic
difference(){
    leftwtwospeakers(0);
    mic(0.6);
}
///left with speakers and mic
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
                cylinder(r = 2.7, h = 0.716619, $fn = 80, center = true);
                sphere(r = 1.2, $fn = 80);
            }
        }
    }
}
}
//</bruh>
//cylinders top, bottom
module xyztc(xtc, ytc, ztc){
    rotate([xtc, ytc, ztc]){
/////fn alert!/////
		scale([1, 0.9864661, 1]){
cylinder(r = 10.5/2, h = 25.94, $fn = 150, center = true);
		}
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
difference(){
difference(){
buttonbottom(0);
translate([0, 17.72, -4.9607]){
    rotate([19.124, 0, 0]){
        difference(){
buttonfn(100);
//scale values such that  minimum accuracy is maintained; original = [0.98, 0.95, 1.1], these should work fine: [0.96, 0.87, 1.1]
            scale([0.96, 0.87, 1.1]){
/////fn alert!/////
buttonfn(150);
            }
        }
    }
}
}
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
difference(){
difference(){
buttontop(0);
translate([0, -17.72, -4.9607]){
    rotate([-19.124, 0, 0]){
        difference(){
buttonfn(80);
//scale values such that  minimum accuracy is maintained; original = [0.98, 0.95, 1.1], these should work fine: [0.96, 0.87, 1.1]
            scale([0.96, 0.87, 1.1]){
buttonfn(80);
            }
        }
    }
}
}
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
//corner spheres
module xyzts(xts, yts, zts){
    translate([xts, yts, zts]){
		rotate([0, 0, 45]){
			scale([1.08, 0.91369, 1]){
				sphere(r = 10.5/2, $fn = 130);
			}
		}
	}
}
module xyzbs(xts, yts, zts){
    translate([xts, yts, zts]){
		rotate([0, 0,-45]){
			scale([1.08, 0.91369, 1]){
				sphere(r = 10.5/2, $fn = 130);
			}
		}
	}
}
scale([1, 1, 1]){
difference(){
difference(){
difference(){
difference(){
difference(){
    xyzbs(25.94/2, 32.0/2, 0);
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
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
translate([0, 32.0/2, 0]){
cube([25.94, 10.5, 10.5], center = true);
}
}
translate([25.94/2, 0, 0]){
cube([10.5, 32.0, 10.5], center = true);
}
}
difference(){
difference(){
difference(){
difference(){
difference(){
    xyzts(-25.94/2, 32.0/2, 0);
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
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
translate([0, 32.0/2, 0]){
cube([25.94, 10.5, 10.5], center = true);
}
}
translate([-25.94/2, 0, 0]){
cube([10.5, 32.0, 10.5], center = true);
}
}
difference(){
difference(){
difference(){
difference(){
difference(){
    xyzts(25.94/2, -32.0/2, 0);
    translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
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
translate([0, -32.0/2, 0]){
cube([25.94, 10.5, 10.5], center = true);
}
}
translate([25.94/2, 0, 0]){
cube([10.5, 32.0, 10.5], center = true);
}
}
difference(){
difference(){
difference(){
difference(){
difference(){
    xyzbs(-25.94/2, -32.0/2, 0);
translate([0, 0, 3.86]){
cube([50, 50, 0.1], center = true);
}
}
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
translate([0, -32.0/2, 0]){
cube([25.94, 10.5, 10.5], center = true);
}
}
translate([-25.94/2, 0, 0]){
cube([10.5, 32.0, 10.5], center = true);
}
}
}
//crown
/////fn alert! MINKOWSKI(<200)/////
translate([-36.44/2, -7.78, 0.55]){
    rotate([0, 90, 0]){
        minkowski(){
            cylinder(r = 2.7, h = 0.716619, $fn = 80, center = true);
            sphere(r = 1.2, $fn = 80);
        }
    }
}
//button
module bc(bc){
    translate([-17.72, bc, 0]){
        rotate([0, 90, 0]){
/////fn alert!/////
cylinder(r = 2.2, h = 15, $fn = 150, center = true);
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
//volumed/////////////////////////////////////////////////////////////////////
cube([25, 25, 10], center = true);
translate([-33/2, -7.78, 0.55]){
cube([3, 1, 1], center = true);
}
///volumed////////////////////////////////////////////////////////////////////
//<ratatouille>
//test cylinder(WORKS!)
//cylinder(r = 12.845, h = 14, $fn = 300, center = true);
rotate([180, 0, 0]){
	difference(){
difference(){
/////fn alert!/////
	sphere(r = 14.23885, $fn = 100);
translate([0, 0, 152.959021829]){
/////fn alert!/////
	sphere(r = 147.379846641, $fn = 300);
	}
}
translate([0, 0, -9.7504]){
cube([30, 30, 30], center = true);
}
}
}
//test cube(WORKS!)
//translate([0, 0, -5.695]){
//cube([30, 30, 0.89], center = true);
//}
//<layers>
//1
rotate([180, 0, 0]){
	difference(){
difference(){
/////fn alert!/////
	sphere(r = 14.33885, $fn = 100);
translate([0, 0, 152.959021829]){
/////fn alert!/////
	sphere(r = 147.779846641, $fn = 100);
	}
}
translate([0, 0, -9.7504]){
cube([30, 30, 30], center = true);
}
}
}
//2
rotate([180, 0, 0]){
	difference(){
difference(){
/////fn alert!/////
	sphere(r = 14.37885, $fn = 100);
translate([0, 0, 152.959021829]){
/////fn alert!/////
	sphere(r = 148.179846641, $fn = 100);
	}
}
translate([0, 0, -9.7504]){
cube([30, 30, 30], center = true);
}
}
}
//</ratatouille>
//<sensor>
intersection(){
translate([0, 0, 70.42501168]){
sphere(r = 77.6350166, $fn = 800);
}
translate([0, 0, -6]){
cylinder(r = 12.845, h = 10, $fn = 100, center = true);
}
}
//</sensor>