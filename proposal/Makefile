all: proposal.pdf

%.pdf: %.dot
	dot -Tpdf $< > $@

proposal.tex:
	intro.tex related.tex ratimeta.tex search.tex ramesrch.tex theory.tex \
	app-apt.tex  app-csp.tex app-bnlearn.tex  app-ctp.tex \
	summary.tex

proposal.pdf: proposal.tex proposal.bbl
	pdflatex proposal
	pdflatex proposal

proposal.bbl: proposal.tex refs.bib proposal.aux
	bibtex proposal

proposal.aux: proposal.tex
	pdflatex proposal

clean:
	rm *.bbl *.pdf *.log *.aux
