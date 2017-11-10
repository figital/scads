
$borderWidth = 20;

$st = 4; // shellThickness

$sw = 100; // shell
$sh = 72;
$sd = 10;

$fpd = 2; // front panel depth

$rw = 6; // rail width

$tftw = 77;
$tfth = 64;
$tftd = 3; // tft depth

$tfthw = 73; // tft hole width
$tfthh = 56; // tft hole height

difference(){
    cube([$sw, $sh, $sd]);


    translate([$st,$st,$fpd])
        cube([$sw - ($st*2), $sh - ($st*2), 65]);
        
        
    translate([($sw-$tfthw)/2,($sh-$tfthh)/2,-5])
    cube([$tfthw, $tfthh, 35]);    
    
}

// rails ...
translate([$st,0,0])
    cube([$rw, $sh, $fpd+$tftd]);

translate([$sw-($st)-$rw,0,0])
    cube([$rw, $sh, $fpd+$tftd]);

/*
color("red")
// tft ...
translate([($sw-$tftw)/2,$st,$fpd])
    cube([$tftw,$tfth,$tftd]);
*/