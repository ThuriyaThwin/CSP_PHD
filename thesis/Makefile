all: thesis.pdf

%.pdf: %.dot
	dot -Tpdf $< > $@

thesis.tex:
	intro.tex related.tex ratimeta.tex search.tex ramesrch.tex \
    cs-csp.tex cs-mcts.tex cs-rla.tex \
	summary.tex

thesis.pdf: thesis.tex thesis.bbl
	pdflatex thesis
	pdflatex thesis

thesis.bbl: thesis.tex refs.bib thesis.aux
	bibtex thesis

thesis.aux: thesis.tex
	pdflatex thesis

clean:
	rm *.bbl thesis.pdf *.log *.aux
