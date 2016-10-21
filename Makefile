PDFS=phase1.pdf phase2.pdf phase3.pdf

all: $(PDFS)

phase1.pdf: phase1.tex p1content.tex $(wildcard graphs/*.png)

phase2.pdf: phase2.tex p2content.tex

phase3.pdf: phase3.tex p3content.tex

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	-rm -f $(PDFS)
