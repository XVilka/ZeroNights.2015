

all: slides-bib

slides: slides.tex
	xelatex slides.tex
	xelatex $< -o slides.pdf
	rm -f *.aux *.snm *.toc *.log *.nax *.out
	#evince slides.pdf

slides-bib: slides.tex
	pdflatex slides.tex
	biber slides
	pdflatex $< -o slides.pdf
	rm -f *.aux *.snm *.toc *.log *.naz *.out

slides-bib_en: slides_en.tex
	pdflatex slides_en.tex
	biber slides_en
	pdflatex $< -o slides_en.pdf
	rm -f *.aux *.snm *.toc *.log *.naz *.out

clean:
	rm -f *.aux *.snm *.toc *.log *.nax *.out *.nav *.blg *.bcf *.bbl *.vrb
