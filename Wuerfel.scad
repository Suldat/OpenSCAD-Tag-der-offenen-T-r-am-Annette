tiefeAuge = 0.1;

difference() {
    intersection() {
        sphere(3,$fn=50);
        cube([4.3,4.3,4.3],center=true);
    }
    translate([0,0,2.15-tiefeAuge]) cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
}