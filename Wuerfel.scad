/*

Mit # kann man innerhalb von difference, union o.ä.
das Ursprungsobjekt sichtbar machen.

*/
laengeWuerfel = 4.3;
tiefeAuge = 0.1; //Tiefe der Augenzahl

difference() {
    intersection() {
        sphere(3,$fn=50);
        cube([laengeWuerfel,laengeWuerfel,laengeWuerfel],center=true);
    }
    
    translate([0,0,laengeWuerfel/2-tiefeAuge])
        cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
    
    translate([1,1,laengeWuerfel/2-tiefeAuge])
        cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
    
    translate([-1,-1,laengeWuerfel/2-tiefeAuge])
        cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
    
    
    translate([0,0,-(laengeWuerfel/2-tiefeAuge)])
        cylinder(h=-(tiefeAuge+0.1),r=0.5,$fn=30);
}