PDFILES=projeto.pdf \
	relatorio_final.pdf

.SUFFIXES: .pdf

all: $(PDFILES)

%.pdf: relatorios/%.tex
	latexmk -pdf $^

clean:
	rm -f $(PDFILES)
