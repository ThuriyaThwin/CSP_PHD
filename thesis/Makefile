all: thesis.pdf acknowledgments.pdf abstract-hebrew.pdf

%.pdf: %.dot
	dot -Tpdf $< > $@

%.pdf: %.html
	prince $<

thesis.tex: \
	defs.tex \
    abstract.tex \
	intro.tex related.tex ratimeta.tex search.tex ramesrch.tex blinkered.tex \
	raticomp.tex raticomp-ackley.pdf raticomp-svmguide2.pdf \
	cs-csp.tex cs-mcts.tex cs-rla.tex \
	insights.tex \
	summary.tex \
	refs.bib
	touch thesis.tex

thesis.pdf: thesis.tex
	pdflatex thesis
	bibtex thesis
	pdflatex thesis

clean:
	rm -f *.bbl *.log *.aux *.lot *.lof *.out *.toc

distclean: clean
	rm -f thesis.pdf
