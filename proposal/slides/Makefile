all: slides.html

%.pdf: %.tex
	pdflatex $<

%.svg: %.pdf
	pdfcrop $< $<-cropped
	pdf2svg $<-cropped $@

slides.html: nqueens-states.svg  bnl-a.svg bnl-b.svg bnl-field.svg is.svg \
			 ctpmin.svg ctpmin-open.svg ctpmin-blocked.svg \
			 csp-random-problems.svg csp-benchmarks.svg \
			 rm-eu.svg rm-voi.svg
	touch $@


nqueens-states.tex: libnqueens.tex
	touch $@

bnl-a.tex: libbnl.tex
	touch $@

bnl-b.tex: libbnl.tex
	touch $@

bnl-field.tex: libbnl.tex
	touch $@

is.tex: libis.tex
	touch $@

ctpmin.tex: libctp.tex
ctpmin-open.tex: libctp.tex
ctpmin-blocked.tex: libctp.tex

clean:
	rm -f *cropped *~ *.aux *.log
