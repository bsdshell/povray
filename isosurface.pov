//=========================================
// Various examples of spheres modified by a pigment function
// -----------------------------------------
// Made for Persistence of vision 3.6
//==========================================  
// Copyright 2001-2004 Gilles Tran http://www.oyonale.com
// -----------------------------------------
// This work is licensed under the Creative Commons Attribution License. 
// To view a copy of this license, visit http://creativecommons.org/licenses/by/2.0/ 
// or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.
// You are free:
// - to copy, distribute, display, and perform the work
// - to make derivative works
// - to make commercial use of the work
// Under the following conditions:
// - Attribution. You must give the original author credit.
// - For any reuse or distribution, you must make clear to others the license terms of this work.
// - Any of these conditions can be waived if you get permission from the copyright holder.
// Your fair use and other rights are in no way affected by the above. 
//==========================================  
#include "colors.inc"

// ----------------------------------------
camera
{
  location  <0.1, 0.1, -3.0>
  direction 1*z
  right     4/3*x
  look_at   <0.0, 0,  0>
}

background{White}
light_source{<1,1,-1>*1000 color White*2}

// ----------------------------------------
// Max_gradient
// This parameter may need to be changed if some isosurfaces look strange (or don't appear at all)
// ----------------------------------------
#declare mxg=8; 

// ----------------------------------------
// Examples
// ----------------------------------------
// rock (agate)
#declare isoScale=0.8;   // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=0.4;   // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.2;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {agate turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_agate=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}
                 
// nugget (boxed)                 
#undef isoFunc
#declare isoScale=0.8;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=1;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.1;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=1;       // turbulence of the pigment modifier
#declare isoPig=pigment {boxed turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_boxed=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}

// nugget (bozo 1)
#undef isoFunc
#declare isoScale=4;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=0.5;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.4;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {bozo turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_bozo_1=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}

// smooth pebble (bozo 2)
#undef isoFunc
#declare isoScale=1;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=0.8;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.4;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {bozo triangle_wave turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_bozo_2=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}
// pineapple (crackle) - long render
#undef isoFunc
#declare isoScale=4;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=0.4;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.5;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {crackle turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_crackle=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}
// brain (dents)
#undef isoFunc
#declare isoScale=4;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=0.4;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.5;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {dents turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_dents=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}

// silex (granite)
#undef isoFunc
#declare isoScale=0.04;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=1.8;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.7;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {granite turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_granite=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}

// hole (leopard)
#undef isoFunc
#declare isoScale=8;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=0.7;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.3;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {leopard turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_leopard=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}
// shield (ripples) - long render
#undef isoFunc
#declare isoScale=20;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=1;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.6;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {ripples turbulence isoTurb color_map{[0  White][1 Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_ripples=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}

// submarine propeller (spiral1)
#undef isoFunc
#declare isoScale=0.3;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=1;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.1;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {spiral1 8 turbulence isoTurb color_map{[0  White][1 Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_spiral1=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}                        

// irregular submarine propeller (spiral2)
#undef isoFunc
#declare isoScale=0.3;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=1;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.1;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {spiral2 4 turbulence isoTurb color_map{[0  White][1 Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_spiral2=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}                        

                 
// rock (wrinkles)
#undef isoFunc
#declare isoScale=1;      // scale of pigment modifier (higher values=smaller scale)
#declare isoStrength=1;     // strength of pigment modifie (how much the shape is deformed)
#declare isoThreshold=0.6;  // threshold (radius of the sphere without deformation)
#declare isoBound=2.5;        // bounding sphere (should be larger than isoThreshold)
#declare isoTurb=0;       // turbulence of the pigment modifier
#declare isoPig=pigment {wrinkles turbulence isoTurb color_map{[0  White][1  Black]}}
#declare isoFunc=function{ pigment {isoPig}}
#declare isoSphere_wrinkles=isosurface{
        function{x*x+y*y+z*z -isoFunc(x*isoScale,y*isoScale,z*isoScale).gray*isoStrength}
        contained_by {box{-isoBound,isoBound}}
        max_gradient mxg
 
         threshold isoThreshold
}
                 
                 
                 
#declare xr=3;
#declare yr=3;
#declare txtIso=texture{pigment{onion color_map{[0 color Red*0.6][1 color Yellow]}} finish{ambient 0.3 specular 0.1 roughness 0.04}}
union{
// top row, from left to right
object{isoSphere_agate    texture{txtIso} translate <-xr*1.5, yr,0>}
object{isoSphere_boxed    texture{txtIso} translate <-xr*0.5, yr,0>}
object{isoSphere_bozo_1   texture{txtIso} translate < xr*0.5, yr,0>}
object{isoSphere_bozo_2   texture{txtIso} translate < xr*1.5, yr,0>}

// middle row, from left to right
object{isoSphere_crackle  texture{txtIso} translate <-xr*1.5,  0,0>}
object{isoSphere_dents    texture{txtIso} translate <-xr*0.5,  0,0>}
object{isoSphere_granite  texture{txtIso} translate < xr*0.5,  0,0>}
object{isoSphere_leopard  texture{txtIso} translate < xr*1.5,  0,0>}

// bottom row, from left to right
object{isoSphere_ripples  texture{txtIso} translate <-xr*1.5,-yr,0>}
object{isoSphere_spiral1  texture{txtIso} translate <-xr*0.5,-yr,0>}
object{isoSphere_spiral2  texture{txtIso} translate < xr*0.5,-yr,0>}
object{isoSphere_wrinkles texture{txtIso} translate < xr*1.5,-yr,0>}
bounded_by{box{<-8,-8,-4><8,8,4>}}
scale 0.3
}


//object{isoSphere_agate texture{pigment{Cyan}}}
//sphere{0,1 texture{pigment{Cyan}}}
