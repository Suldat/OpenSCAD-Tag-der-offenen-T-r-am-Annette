/*

Mit # kann man innerhalb von difference, union o.ä.
das Ursprungsobjekt sichtbar machen.

*/
//Sphere hatte vorher 3 als Radius

translate([0,0,2.15])
wuerfel();

module wuerfel(tiefeAuge = 0.1, radiusAuge = 0.5) {
    laengeWuerfel = 4.3;
    difference() {
        intersection() {
            sphere(3,$fn=50);
            cube([laengeWuerfel,laengeWuerfel,laengeWuerfel],center=true);
        }
        //Augenzahl 3
        translate([0,0,laengeWuerfel/2-tiefeAuge])
            cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        translate([1,1,laengeWuerfel/2-tiefeAuge])
            cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        translate([-1,-1,laengeWuerfel/2-tiefeAuge])
            cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        //Augenzahl 4
        translate([1,1,-laengeWuerfel/2-tiefeAuge])
            cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        translate([-1,1,-laengeWuerfel/2-tiefeAuge])
            cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        translate([1,-1,-laengeWuerfel/2-tiefeAuge])
            cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        translate([-1,-1,-laengeWuerfel/2-tiefeAuge])
            cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        //Augenzahl 1 
        
        translate([0,laengeWuerfel/2-tiefeAuge,0]) 
            rotate([-90,0,0])
                cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        //Augenzahl 6
        translate([1,-(laengeWuerfel/2-tiefeAuge),1]) 
            rotate([90,0,0])
                cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        translate([0,-(laengeWuerfel/2-tiefeAuge),1]) 
            rotate([90,0,0])
                cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        translate([-1,-(laengeWuerfel/2-tiefeAuge),1]) 
            rotate([90,0,0])
                cylinder(h=tiefeAuge+0.1,r=radiusAuge,$fn=30);
        
        translate([1,-(laengeWuerfel/2-tiefeAuge),-1]) 
            rotate([90,0,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
        
        translate([0,-(laengeWuerfel/2-tiefeAuge),-1]) 
            rotate([90,0,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
        
        translate([-1,-(laengeWuerfel/2-tiefeAuge),-1]) 
            rotate([90,0,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
                
        //Augenzahl 2
        translate([laengeWuerfel/2-tiefeAuge,1,1])
            rotate([0,90,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
        
        translate([laengeWuerfel/2-tiefeAuge,-1,-1])
            rotate([0,90,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
        
        //Augenzahl 5
        translate([-laengeWuerfel/2-tiefeAuge,1,1])
            rotate([0,90,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
        
        translate([-laengeWuerfel/2-tiefeAuge,-1,1])
            rotate([0,90,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
        
        translate([-laengeWuerfel/2-tiefeAuge,1,-1])
            rotate([0,90,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
        
        translate([-laengeWuerfel/2-tiefeAuge,-1,-1])
            rotate([0,90,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
        
        translate([-laengeWuerfel/2-tiefeAuge,0,0])
            rotate([0,90,0])
                cylinder(h=tiefeAuge+0.1,r=0.5,$fn=30);
    }
}