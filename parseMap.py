import sys
import Image

# Takes the image file to read as a command-line argument.
fname = sys.argv[1]

im = Image.open(fname)
pix = im.load()

# How big the image is
print im.size

# Loop through rows and columns...
for y in xrange(im.size[1]):
    for x in xrange(im.size[0]):
        # Printing things nicely!  Just some string formatting here.
        print '"{0},{1}" = "{2}"'.format(x, y, pix[x, y])
