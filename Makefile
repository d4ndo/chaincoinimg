SVGFILES := $(wildcard *.svg)
PNGFILES := $(wildcard *.png)

all: $(SVGFILES:%.svg=%.png)

%.png : %.svg
	inkscape -C -e $*.png $*.svg

clean:
	@rm -f *.png
