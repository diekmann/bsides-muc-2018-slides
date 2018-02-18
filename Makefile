FILENAME = "sample"

build:
	lualatex $(FILENAME).tex
	lualatex $(FILENAME).tex

clean:
	- find . | egrep ".*((\.(pdfsync|aux|idx|ind|ilg|log|blg|bbl|toc|lof|lot|dvi|tlf|tlt|glo|out|tcp|nlo|nls|glo|gls|acn|acr|alg|glg|ist|loa|snm|nav))|~)$$" | xargs rm
	- rm -f $(FILENAME)-blx.bib
	- rm -f $(FILENAME).pdf
	- rm -f $(FILENAME).run.xml
	- rm -f $(FILENAME).synctex.gz
	- rm -f $(FILENAME).xdy
	#- rm -r $(FILENAME).ent


#end of Makefile


