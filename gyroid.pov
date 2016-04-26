#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"

#declare Boxy =
box{ <0,0,0>,< 1,1,1> scale 0.5
     texture{ pigment{ Jade}
              finish { specular 0.5 ambient 0.01 diffuse 0.9 }
             }
   }


camera{location 10 look_at 0}
light_source{10,1}
isosurface{
    function{
        cos(x)*sin(y)+cos(y)*sin(z)+cos(z)*sin(x)
    } threshold 0 max_gradient 2 contained_by{
        sphere{<0,0,0>,7}} open pigment{Red_Marble}
    }
