#include "colors.inc"
#include "textures.inc"
#include "palm.inc"
#include "palm_2.inc"
#include "mountain.inc"
#include "glass.inc"

#declare mountain_view_left = camera {
    // Mountain View
    // TBD: La location correcta de la camara con el penthouse
    location <-25, 20, -35>
    look_at <0, 5, 10>
}

#declare penthouse_view = camera {
    // Penthouse view
    // Comentar la vista de la camara de Mountain View y descomentar el objecto Penthouse al ultimo
    location <0,15,50>
    look_at <0,10,20>
}

#declare mountain_view_right = camera {
    // Mountain View
    // TBD: La location correcta de la camara con el penthouse
    location <20, 20, -35>
    look_at <0, 5, 10>
}

camera {
    penthouse_view
}

light_source { <0,100,0> color White }

background {
  color rgb<114/255, 166/255, 249/255>
}

// ocean
box {
  <-300,0,-20>, <300,0,400>
  texture{ Polished_Chrome }
  normal{
    bumps 0.03
    scale <1,0.25,0.25>*1
    turbulence 0.6
  }
}

union {
  box {
    <-5,0,-10>, <5,1,10>
    texture {
      Polished_Chrome
      normal {
        bumps 0.1
        scale <1,0.5,0.35>*0.8
        turbulence 0.2
      }
    }
    /*
    texture {
      pigment {
        rgb <0.2,0.2,0.2>
      }
      finish {
        ambient 0.15
        diffuse 0.55
        brilliance 6.0
        phong 0.8
        phong_size 120
        reflection 0.6
      }
      normal {
        bumps 0.1
        scale <1,0.5,0.35>*0.8
        turbulence 0.2
      }
    }*/
  }
  box {
    <-15, 0, -10.5>, <-5.1, 1.1, 10.5>
    texture{
      Dark_Wood
    }
  }
  box {
    <15, 0, -10.5>, <5.1, 1.1, 10.5>
    texture{
      Dark_Wood
    }
  }
  box {
    <15, 0, -10>, <-15, 1.1, -35>
    texture{
      Dark_Wood
    }
  }
  box {
    <15, 0, 10>, <-15, 1.1, 25>
    texture{
      Dark_Wood
    }
  }
}
union{
  box {
    <-100,0,30>,<-15,1.1,-45>
    pigment {
      color rgb<247/255, 228/255, 160/255>
    }
  }
  box {
    <100,0,30>,<15,1.1,-45>
    pigment {
      color rgb<247/255, 228/255, 160/255>
    }
  }
  box {
    <-100,0,40>,<100,1.1,25>
    pigment {
      color rgb<247/255, 228/255, 160/255>
    }
  }
}
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    scale 1.5
    translate<-17, 0, 0>
}
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*45
    scale 1.5
    translate<-25, 0, -30>
}
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*45
    scale 1.5
    translate<25, 0, -30>
}
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*65
    scale 1.5
    translate<35, 0, -20>
}
union {
    object {
       palm_13_2_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_2_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*180
    scale 1.5
    translate<28, 0, -5>
}
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*180
    scale 1.5
    translate<25, 0, -10>
}
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    scale 1.5
    translate<17, 0, 0>
}

// ---------------
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*65
    scale 1.5
    translate<-35, 0, -20>
}
union {
    object {
       palm_13_2_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_2_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*40
    scale 1.5
    translate<-24, 0, -10>
}
union {
    object {
       palm_13_2_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_2_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*180
    scale 1.5
    translate<-28, 0, 0>
}
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    rotate y*180
    scale 1.5
    translate<-25, 0, -5>
}
union {
    object {
       palm_13_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    scale 1.5
    translate<-17, 0, -10>
}
//-----------

union {
    object {
       palm_13_2_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_2_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    scale 1.5
    translate<17, 0, -10>
}

union {
    object {
       palm_13_2_stems
       pigment { color rgb <144/255, 104/255, 78/255> } // brown
    }
    object {
       palm_13_2_leaves
       pigment { color rgb <0, 1, 0> } // green
    }
    scale 1.5
    translate<-17, 0, -10>
}
object {
    mountain
    translate <-110, -20, 180>
    texture {
      pigment { color rgb<93/255, 165/255, 21/255>}
      finish {
      phong 1
      diffuse 0.2}
    }
    scale 1.5*x
  }
object {
      mountain
      translate <-170, -20, 210>
      texture {
        pigment { color rgb<93/255, 165/255, 21/255>}
        finish {
        phong 1
        diffuse 0.1}
      }
      scale 1.5*x
      rotate 40*y
    }
object {
    mountain
    rotate 20*y
    translate <80, -20, 190>
    texture {
        pigment { color rgb<93/255, 165/255, 21/255>}
        finish {
        phong 1
        diffuse 0.1}
      }
    scale 1.5*x
  }
object {
    mountain
    rotate 20*y
    translate <0, -20, 180>
    texture {
      pigment { color rgb<93/255, 165/255, 21/255>}
      finish {
      phong 1
      diffuse 0.2}
    }
    scale 1.5*x
  }
object {
    mountain
    rotate 20*y
    translate <-200, -20, 190>
    texture {
        pigment { color rgb<93/255, 165/255, 21/255>}
        finish {
        phong 1
        diffuse 0.1}
      }
    scale 1.8*x
  }

sphere {
  <0, 40 ,160> 9
  pigment {
    image_map{
      png "199"
      map_type 1
    }
  }
}

// Short chair start --------------------------------------------------
#declare sit = box {
  <-1,-0.05,-1>,<1,0.05,1>
  rotate x*17
}

#declare chair_leg_long = cylinder {
  <0,0,0.5>, <0,0,-0.5>, 0.1
}

#declare chair_leg_short = cylinder {
  <0,0,0.25>, <0,0,-0.25>, 0.1
}

#declare respaldo = box {
  <-1,-0.06,-0.5>,<1,0.06,0.5>
  rotate x*-60
}


#declare chair = union {
  object {
    sit
    texture {pigment {color Blue}}
  }
  object {
    respaldo
    translate <0,0.9,1.42>
    texture {pigment {color Blue}}
  }
  object {
    chair_leg_long
    rotate x*-60
    translate <-0.9,-0.2,-1>
    texture {pigment {color White}}
  }
  object {
    chair_leg_long
    rotate x*-60
    translate <0.9,-0.2,-1>
    texture {pigment {color White}}
  }
  object {
    chair_leg_short
    rotate x*70
    translate <-0.9,-0.5,0.9>
    texture {pigment {color White}}
  }
  object {
    chair_leg_short
    rotate x*70
    translate <0.9,-0.5,0.9>
    texture {pigment {color White}}
  }
  cylinder {
    <0,0,0.45>, <0,0,-0.45>, 0.07
    rotate x*-60
    translate <-0.9, 0.15, 1>
    texture {pigment {color White}}
  }
  cylinder {
    <0,0,0.45>, <0,0,-0.45>, 0.07
    rotate x*-60
    translate <0.9, 0.15, 1>
    texture {pigment {color White}}
  }
}

object {
  chair
  rotate y*120
  translate <10,1.85,-12>
}
object {
  chair
  rotate y*150
  translate <7,1.85,-16>
}
// Short chair end ---------------------------------------------------------


#declare Hx = 2.00;
#declare Hy = 3.50;
#declare Hz = 4.00;
#declare Wall_D = 0.20;


#declare Window_Positon_1f = <-Hx*0.5,Wall_D/3>;
#declare Window_Positon_2f = < Hx*1.5,Wall_D/3>;

#declare Wall_Texture_1 = texture {
  pigment {
    color White*1.1
  }
  normal {
    bumps 0.5
    scale 0.005
  }
  finish {
    phong 1
  }
}
#declare Wall_Texture_2 = texture {
  pigment {
    color White*1.1
  }
  finish {
  phong 1
  }
}

#declare Window_Texture_1 =
texture{pigment{ color White*1.3}
        finish { phong 0.1}}
#declare Window_Texture_2 =
texture{pigment{ color White*1.2}
        finish { phong 0.1}}

#declare Window =
union{
 difference{
  box{<-0.50,0.80,-0.02>,< 0.50,1.80,0.02>}
  box{<-0.45,0.85,-0.03>,<-0.03,1.27,0.03>}
  box{< 0.03,0.85,-0.03>,< 0.45,1.27,0.03>}
  box{<-0.45,1.33,-0.03>,<-0.03,1.75,0.03>}
  box{< 0.03,1.33,-0.03>,< 0.45,1.75,0.03>}
  texture{Window_Texture_1}
  } // ---end of difference
 box{<-0.49,0.81,0.0>,< 0.49,1.79,0.001>
 texture{T_Glass3}}  // no interior!!!
 } // ---end of union
#declare Window_Hole =   //symmetric!!!
  box{<-0.50,0.80,-0.50>,< 0.50,1.80,0.50>
      texture{Window_Texture_2}}


#declare House = difference{
  box {
    <-Hx,0,0>,< Hx*2,Hy,Hz>
    pigment {
      color rgb <178/255, 207/255, 255/255>
    }
    }
 // inside caved out
  box {
    <-Hx+Wall_D,0.10,Wall_D>,
        <Hx-Wall_D,Hy,Hz-Wall_D>
        texture {
          Wall_Texture_2
        }
     }
// subtract window holes
  object {
    Window_Hole translate Window_Positon_2f
  }
  object {
    Window_Hole translate Window_Positon_1f
  }
}

#declare Penthouse = union {
  object {
    House
  }
  object {
    House translate <0, 3, 3>
  }

  object{ Window translate Window_Positon_2f}
  object {Window translate Window_Positon_1f}

  object {
    Window translate <-1,3.1,3>
  }

  object {
    Window translate <3, 3.1, 3>
  }
}


object {
  Penthouse
  scale 4
  translate <-4, 1.2, 24>
  rotate -180*y
}

// Long chair ----------------------------------------------------
// long chair single rectangle
#declare rect = box {
  <-0.8,-0.02,-0.1>,<0.8,0.02,0.1>
}

// long chair horizontal rectangles
#declare j = 0.4;
#declare horizontal = union {
  #for (i, 1.0, 8.0)
    object {
      rect
      translate <0, 0, i*j>
    }
  #end
  translate z*-1.75
}

// long chair diagonal rectangles
#declare diag = union {
  #for (i, 1.0, 3.0)
    object {
      rect
      translate <0, 0, 1.0+i*j>
    }
  #end
  rotate x*-75
  translate <0, -1.1, 1.2>
}

#declare long_chair = union {
  object {
    horizontal
    texture {pigment {color Yellow}}
  }
  object {
    diag
    texture {pigment {color Yellow}}
  }

  // long chair horizontal tubes
  cylinder {
    <-0.8, 0, 1.6>,<-0.8, 0, -1.5>,0.07
    texture {pigment {color White}}
  }
  cylinder {
    <0.8, 0, 1.6>,<0.8, 0, -1.5>,0.07
    texture {pigment {color White}}
  }

  // long chair legs
  cylinder {
    <-0.8, 0, 1.55>,<-0.8, -0.4, 1.55>,0.07
    texture {pigment {color White}}
  }
  cylinder {
    <-0.8, 0, -1.45>,<-0.8, -0.4, -1.45>,0.07
    texture {pigment {color White}}
  }
  cylinder {
    <0.8, 0, 1.55>,<0.8, -0.4, 1.55>,0.07
    texture {pigment {color White}}
  }
  cylinder {
    <0.8, 0, -1.45>,<0.8, -0.4, -1.45>,0.07
    texture {pigment {color White}}
  }

  // long chair diagonal tubes
  cylinder {
    <0.8, 0, 1.55>,<0.8, 1.1, 1.85>,0.07
    texture {pigment {color White}}
  }
  cylinder {
    <-0.8, 0, 1.55>,<-0.8, 1.1, 1.85>,0.07
    texture {pigment {color White}}
  }
}
object{
  long_chair
  scale <1.5,1.5,1.5>
  rotate y*-120
  translate<-10. 1.85, -11>
}
// long chair end ------------------------------------------------
