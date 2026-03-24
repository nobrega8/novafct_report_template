LATEXMK=latexmk

pdf:
	$(LATEXMK) -pdf -interaction=nonstopmode main.tex

clean:
	$(LATEXMK) -C

watch:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode main.tex
