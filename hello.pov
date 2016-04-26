#include "colors.inc" // The include files contain
#include "stones.inc" // pre-defined scene elements
#include "textures.inc" // pre-defined scene elements
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"


camera{
    location<2, 2, -3>
    look_at <0, 0, 0>
}

#declare Inx = 0;
#while(Inx < 20)

sphere {
    <-2 + (Inx*Inx)*0.1, 1, 4>,0.5 
    texture{
        #if (Inx  > 3)
            pigment{ color Yellow}
        #else
            pigment{ color Blue}
        #end
    }
}


#declare Inx = Inx + 1;
#end


light_source { <2, 4, -3> color White}
//------------------------------------- ////////////
#macro Raster_Lines (RScale, LineW, Intensity_)
 pigment{ gradient x scale RScale
          color_map{
           [0.000   color rgbt<1,1,1,0>*Intensity_]
           [0+LineW color rgbt<1,1,1,0>*Intensity_]
           [0+LineW color rgbt<1,1,1,1>]
           [1-LineW color rgbt<1,1,1,1>]
           [1-LineW color rgbt<1,1,1,0>*Intensity_]
           [1.000   color rgbt<1,1,1,0>*Intensity_]
           } // end color_map
         } // end pigment
 #end// of Raster(RScale, HLine)-macro
//------------------------------------- ////////////
//------------------------------------- ////////////
#macro Raster_Plate(
    RD1, Width1,//primary raster distance/width,
    RD2, Width2,//secondary raster distance/width,
    Base_Texture, //  non = pigment { Clear }
    Intensity, // Line gray intensity
    Start_Box, End_Box, // vectors
  ) //------------------------------------------
//----------------------------------------------
box{ Start_Box,End_Box
     texture{ Base_Texture }
  #if (RD1 > 0 ) // raster big  RD1, Width1,
    texture { Raster_Lines(RD1,Width1,Intensity) }
    texture { Raster_Lines(RD1,Width1,Intensity)
              rotate<0,90,0>}
  #end
  #if (RD2 > 0 ) // raster small RD2, Width2,
    texture { Raster_Lines(RD2,Width2,Intensity) }
    texture { Raster_Lines(RD2,Width2,Intensity)
              rotate<0,90,0>}
  #end
} // end box -----------------------------------
#end // ------------------------------ end of macro
//------------------------------------- ////////////

// How to use:  ------------------------------------
#declare B_Tex =
  texture{ pigment{ color rgb<1,1,1>*1.2}}
//--------------------------------------------------
object{ Raster_Plate(
    1.0, 0.010,// RD1, Width1,// 1st distance/width,
    0.1, 0.045,// RD2, Width2,// 2nd distance/width,
    B_Tex, // Base_Texture, // non = pigment{Clear}
    0.6, // Intensity, // Line gray intensity
    <-2,-0.05,-2>, <2,0,2>, //Start/End
  ) //----------------------------------------------
  rotate<0,0,0>
  translate<0,0.001,0>
} //------------------------------------------------

union{
  sphere{<0,1,0>,0.35}
  cone{<0,0,0>,0.45,<0,1.2,0>,0}
  texture{T_Glass3} interior{I_Glass}
  translate <-0.5, 0, 0>
}
merge{ 
  sphere{<0,1,0>,0.35}
  cone{<0,0,0>,0.45,<0,1.2,0>,0}
  texture{T_Glass3} interior{I_Glass}
  translate < 0.5, 0, 0>
}


