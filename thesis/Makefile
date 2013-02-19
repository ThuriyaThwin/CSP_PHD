all: thesis.pdf

%.pdf: %.dot
	dot -Tpdf $< > $@

thesis.tex: \
	intro.tex related.tex ratimeta.tex search.tex ramesrch.tex \
	raticomp.tex \
	cs-csp.tex cs-mcts.tex cs-rla.tex \
	summary.tex \
	refs.bib
	touch thesis.tex

thesis.pdf: thesis.tex
	pdflatex thesis
	bibtex thesis
	pdflatex thesis

clean:
	rm *.bbl thesis.pdf *.log *.aux
