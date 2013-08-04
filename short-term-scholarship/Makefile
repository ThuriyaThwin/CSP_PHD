%.pdf: %.tex
	pdflatex $<
	bibtex `echo $< | sed 's/\.tex//'`
	pdflatex $<

all: research-summary.pdf

research-summary.pdf: research-summary.tex refs.bib

clean:
	rm -f *.aux *.log

distclean: clean
	rm -f research-summary.pdf
