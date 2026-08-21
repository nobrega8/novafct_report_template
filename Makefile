# Compila este relatório diretamente (não é preciso copiar o template
# para outra pasta): edita os ficheiros aqui e usa os alvos abaixo.

LATEXMK=latexmk

.PHONY: help pdf clean watch

help:
	@echo "make pdf   - compila o relatório para build/main.pdf"
	@echo "make watch - recompila automaticamente ao gravar ficheiros"
	@echo "make clean - remove os ficheiros de build"

pdf:
	$(LATEXMK) -pdf -interaction=nonstopmode main.tex

clean:
	$(LATEXMK) -C

watch:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode main.tex
