SOURCES = $(wildcard *.tex)
TARGETS = $(SOURCES:.tex=.pdf)

all: $(TARGETS)

%.pdf: %.tex
	ln -sf ../*.sty .
	xelatex $<
	# mv $*.pdf $*-temp.pdf
	# ps2pdf14 $*-temp.pdf $*.pdf
	# rm $*-temp.pdf
view:
	evince *.pdf &

clean:
	-rm *.aux
	-rm *.bbl
	-rm *.blg
	-rm *.brf
	-rm *.log
	-rm *.out
	-rm *.snm
	-rm *.toc
	-rm *.nav
	-rm *~
	-rm beamertheme*.sty
	-rm *.pdf
