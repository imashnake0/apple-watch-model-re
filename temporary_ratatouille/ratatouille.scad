//<ratatouille>
//test cylinder(WORKS!)
//cylinder(r = 12.845, h = 14, $fn = 300, center = true);
rotate([180, 0, 0]){
	difference(){
difference(){
/////fn alert!/////
translate([0, 0, -5.68]){
	sphere(r = 17.46095, $fn = 400);
}
translate([0, 0, 152.959021829]){
/////fn alert!/////
	sphere(r = 147.379846641, $fn = 100);
	}
}
translate([0, 0, -9.7504]){
cube([50, 50, 30], center = true);
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
	translate([0, 0, -5.68]){
	sphere(r = 17.50095, $fn = 400);
}
translate([0, 0, 152.959021829]){
/////fn alert!/////
	sphere(r = 147.779846641, $fn = 100);
	}
}
translate([0, 0, -9.7504]){
cube([50, 50, 30], center = true);
}
}
}
//2
rotate([180, 0, 0]){
	difference(){
difference(){
/////fn alert!/////
	translate([0, 0, -5.68]){
	sphere(r = 17.52095, $fn = 400);
}
translate([0, 0, 152.959021829]){
/////fn alert!/////
	sphere(r = 148.179846641, $fn = 100);
	}
}
translate([0, 0, -9.7504]){
cube([50, 50, 30], center = true);
}
}
}
//</ratatouille>
intersection(){
translate([0, 0, 70.42501168]){
sphere(r = 77.6350166, $fn = 800);
}
translate([0, 0, -6]){
cylinder(r = 12.84, h = 10, $fn = 100, center = true);
}
}