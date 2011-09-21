proj = student-presentation

all: $(proj).pdf

$(proj).pdf: *.tex
	ln -sf ../*.sty .
	xelatex $(proj).tex
	mv $(proj).pdf $(proj)-temp.pdf
	ps2pdf14 $(proj)-temp.pdf $(proj).pdf
	rm $(proj)-temp.pdf

view:
	evince $(proj).pdf &

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
	-rm $(proj).pdf
