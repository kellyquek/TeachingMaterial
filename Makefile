vectorisation.pdf: debugging.Rnw
	R --vanilla -e "library(knitr); knit('debugging.Rnw')"
	pdflatex debugging.tex

unittesting.md: unittesting.Rmd
		R --vanilla -e "library(knitr); knit('unittesting.Rmd')"

unittesting.html: unittesting.md
		R --vanilla -e " markdown::markdownToHTML('unittesting.md')"

testing.md: testing.Rmd
		R --vanilla -e "library(knitr); knit('testing.Rmd')"

testing.html: testing.md
		R --vanilla -e " markdown::markdownToHTML('testing.md')"

.PHONY: clean

clean:
	rm -f *~
	rm -f debugging.aux debugging.log debugging.nav debugging.org debugging.out debugging.snm debugging.tex debugging.toc debugging.vrb

allclean:
	make clean
	rm -rf cache figure

