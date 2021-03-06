#include "colors.inc" // The include files contain
#include "stones.inc" // pre-defined scene elements
#include "textures.inc" // pre-defined scene elements
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"
#include "shapesq.inc"

camera{
    location<2, 2, -3>
    look_at <0, 0, 0>
}

light_source { <2, 4, -3> color White}

isosurface { //-------------------------------------------------------------
  function{
    f_helical_torus (
        x,y,z,
        1, //P0: major radius,                       
        9, //P1: number of winding loops   
        5, //P2: Twistiness of winding. When zero, each winding loop is separate. 
           // When set to one, each loop twists into the next one. 
           // When set to two, each loop twists into the one after next
        0.25, //P3: Fatness of winding? 
        0.1,  //P4: Threshold. Setting this parameter to 1 and the threshold to zero has s similar effect 
                         // as setting this parameter to zero and the threshold to 1
       -0.15, //P5: P5 : Negative minor radius? Reducing this parameter increases the minor radius of the central torus. 
              //Increasing it can make the torus disappear and be replaced by a vertical column. 
              //The value at which the surface switches from one form to the other depends on several other parameters
        0, //P6: Another fatness of winding control? 

        1,    // P7: Groove period. Increase this for more grooves       
        1,  // P8: Groove amplitude. Increase this for deeper grooves   
        0     // P9: Groove phase. Set this to zero for symmetrical grooves   
      )
  }          
 contained_by {box {<-1.5,-1,-1.5>,<1.5,1,1.5>}}
 max_gradient 10

 texture{ pigment{ color rgb <1,1,1>} 
          finish { specular 0.1 roughness 0.1 phong 0.2 }
        }
 rotate<0,0,0>
 scale 1
 translate< 0,1.00, 0>
} // end of isosurface -------------------------------------------------------
