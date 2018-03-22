from PIL import Image
import random

if __name__ == "__main__":

    '''
    Canvas size
    '''
    w, h = 500,500

    bitmap = Image.new("RGB", (w, h), "white")
    pix = bitmap.load()

    '''
    cx, cy = equation for the fractal
    maxIter = maximum number of iterations
    '''
    cX, cY = 0.285, 0.01
    maxIter = 199

    for x in range(w):
        for y in range(h):
            '''
            zx, zy = Scaled coordinates
            '''
            zx = 1.5*(x - w/2)/(0.5*w)
            zy = 1.0*(y - h/2)/(0.5*h)
            i = maxIter
            '''
            Break when iterations droped to 1 or the scaled coordinates
            achieve the size of the imaginary plane
            '''
            while zx*zx + zy*zy < 4 and i > 1:
                tmp = zx*zx - zy*zy + cX
                zy,zx = 2.0*zx*zy + cY, tmp
                i -= 1

            '''
            Assign a color to the specific pixel.
            '''
            pix[x,y] = (i << 21) + (i << 10) + i*8

    '''
    Print the pixels.
    '''
    bitmap.show()
