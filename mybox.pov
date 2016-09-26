#include "colors.inc"

camera
{
  location  <5, 4, 6>
  direction 1*z
  right     4/3*x
  look_at   <0.0, 0,  0>
}

background{White}
light_source{<1,1,-1>*1000 color White*2}

#declare Pigment_1 =
pigment{ gradient <0,1,0>  sine_wave
         color_map{
            [ 0.0 color rgb<1,0.5,1> ]
            [ 1.0 color rgb<0.4,0,0.8> ]
         } // end color_map
         scale 0.35
       } // end pigment

isosurface {
    function {x}
    contained_by { box { <-2, -2, -2>, <2, 2, 2> } }
        texture{
            pigment{ pigment_pattern{ Pigment_1 }}
            finish { phong 0.5 }
        } // end of texture --
        translate<1,1,-2>
}

