all: report.pdf

report.pdf: report.tex report.bbl
	pdflatex report
	pdflatex report

report.bbl: report.tex refs.bib report.aux
	bibtex report

report.aux: report.tex
	pdflatex report

clean:
	rm *.bbl *.log *.aux
