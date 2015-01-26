pdf	= phdthesis.pdf msthesis.pdf
#bib 	=  	$(tex:.tex=.bib)
#aux 	= 	$(tex:.tex=.aux)
tex 	=  	$(pdf:.pdf=.tex)

default: clean $(pdf)

all: $(pdf)

%.pdf: %.tex
	pdflatex $< 
	bibtex $(patsubst %.tex,%.aux,$<)
	pdflatex $<
	pdflatex $<

clean: 
	rm -rf *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg	\
				*.inx *.toc *.lof *.lot *.out *.pdf *~



