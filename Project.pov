#include "colors.inc"
#include "textures.inc"
#include "palm.inc"
#include "palm_2.inc"
#include "mountain.inc"
camera {
    location <0,15,-50>
    look_at <0,5,0>
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
