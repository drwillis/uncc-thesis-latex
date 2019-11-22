pdf	= phdthesis.pdf msthesis.pdf
#bib 	=  	$(tex:.tex=.bib)
#aux 	= 	$(tex:.tex=.aux)
tex 	=  	$(pdf:.pdf=.tex)

default: clean $(pdf)

all: $(pdf)

%.pdf: %.tex
	pdflatex $< 
	bibtex $(patsubst %.tex,%.aux,$<)
	NLOFILE=$(patsubst %.tex,%.nlo,$<)
ifneq ("$(wildcard $(NLOFILE))","")
#	echo "No LIST OF ABBREVIATIONS/SYMBOLS nlo nomenclature file not found."
else 
#	echo "A LIST OF ABBREVIATIONS/SYMBOLS has been found. Running makeindex."
	makeindex $(patsubst %.tex,%.nlo,$<)  -s nomencl.ist -o $(patsubst %.tex,%.nls,$<)
endif
	pdflatex $<
	pdflatex $<

clean: 
	rm -rf *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg	\
				*.inx *.toc *.lof *.lot *.out *.nlo *.nls *~



