# Makefile para Presentacion

#LATEX = pdflatex -shell-escape -output-directory /tmp
LATEX = pdflatex -shell-escape
BIB = bibtex
GLOSSARIES = makeglossaries

## Sources
SRC = apunteBitwiseOperations.tex
PDF = $(SRC:%.tex=%.pdf)

.PHONY	: all clean

all 	:
#	$(LATEX) $(SRC) > /dev/null
	#$(GLOSSARIES) $(SRC:%.tex=%)
	#$(BIB) $(SRC:%.tex=%.aux)
	#$(LATEX) $(SRC) > /dev/null
	$(LATEX) $(SRC) | latex-errorfilter

clean	:
	-rm -f $(SRC:%.tex=%.log) $(SRC:%.tex=%.lof) $(SRC:%.tex=%.glsdefs) $(SRC:%.tex=%.aux) $(SRC:%.tex=%.out)
	-rm -f $(SRC:%.tex=%.toc) $(SRC:%.tex=%.xdy) $(SRC:%.tex=%.acn) $(SRC:%.tex=%.backup) $(SRC:%.tex=%.pdf)
	-rm -f $(SRC:%.tex=%.acr) $(SRC:%.tex=%.alg) $(SRC:%.tex=%.bbl) $(SRC:%.tex=%.blg) $(SRC:%.tex=%.pdf)
	-rm -f $(SRC:%.tex=%.nav) $(SRC:%.tex=%.snm) $(SRC:%.tex=%.pyg)
	-rm -rf _minted-*
