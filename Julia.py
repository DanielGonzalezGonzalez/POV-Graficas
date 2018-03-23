from PIL import Image
import random

if __name__ == "__main__":

    '''
    Canvas size
    '''
    w, h = 4000,4000

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
            zx = 2*(x - w/2)/(w/2)
            zy = 2*(y - h/2)/(h/2)
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
            pix[x,y] = (i % 8 * 32, i % 16 * 16, i % 32 * 8)

    '''
    Print the pixels.
    '''
    bitmap.show()
