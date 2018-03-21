#include "colors.inc"
#include "textures.inc"
#include "palm.inc"
#include "palm_2.inc"
#include "mountain.inc"
#include "glass.inc"
camera {
    // Penthouse view
    // Comentar la vista de la camara de Mountain View y descomentar el objecto Penthouse al ultimo
    location <0,15,50>
    look_at <0,10,20>
    // Mountain View
    // TBD: La location correcta de la camara con el penthouse
    location <0, 15, -50>
    look_at <0, 5, 10>
}

light_source { <0,100,0> color White }

background {
  color rgb<114/255, 166/255, 249/255>
}

union {
  box {
    <-5,0,-10>, <5,1,10>
    texture {
      Polished_Chrome
      normal{ bumps 0.1
           scale <1,0.5,0.35>*0.8
           turbulence 0.2
         }
    }
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
    <15, 0, -10>, <-15, 1.1, -25>
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
    <-25,0,30>,<-15,1.1,-25>
    pigment {
      color rgb<247/255, 228/255, 160/255>
    }
  }
  box {
    <25,0,30>,<15,1.1,-25>
    pigment {
      color rgb<247/255, 228/255, 160/255>
    }
  }
  box {
    <-25,0,30>,<25,1.1,25>
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
    scale 1.5
    translate<17, 0, 0>
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

sphere {
  <0, 40 ,160> 9
  pigment {
    image_map{
      png "199"
      map_type 1
    }
  }
}

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

/*
object {
  Penthouse
  scale 4
  translate <-4, 1.2, 24>
  rotate -180*y
}*/
