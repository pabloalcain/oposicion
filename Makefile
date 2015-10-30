# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
.PHONY: all clean clean-all

default:
	@echo "\
Hay tres opciones:\n\n\
  make install para instalar (sólo en Linux)\n\
  make test para compilar una prueba\n\
  make uninstall para desinstalar (sólo en Linux)"

install:
	mkdir -p ~/texmf/tex/latex/base
	cp oposicion.cls ~/texmf/tex/latex/base
	texhash

test: oposicion.pdf oposicion.tar.gz

uninstall:
	rm ~/texmf/tex/latex/base/oposicion.cls

# MAIN LATEXMK RULE

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.

# -interactive=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.

%.pdf: %.ps
	ps2pdf $< $@

%.ps: %.tex fig/*
	latexmk -ps -use-make $<

%.tar.gz: fig/* %.tex 
	tar czvf $@ $^

clean:
	mv oposicion.pdf tempXYZ
	latexmk -silent -CA
	mv tempXYZ oposicion.pdf

clean-all:
	latexmk -silent -CA
	rm oposicion.tar.gz
