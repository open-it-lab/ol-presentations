SOURCE = $(wildcard *.odp)
OUTPUT = $(SOURCE:.odp=.pdf)

all: $(OUTPUT)

%.pdf: %.odp
	soffice --nologo --invisible -convert-to pdf $<

clean:
	-rm $(OUTPUT) *~
