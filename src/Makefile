main:
	cd figures; parallel -j12 asy -f pdf ::: *.asy; cd ..; latexmk -pdf main.tex; mv main.pdf ../out/entrenamiento_omapa.pdf
doc:
	latexmk -pdf main.tex; mv main.pdf ../out/entrenamiento_omapa.pdf
clean:
	rm -rf *.fls *.out *.asy *.aux *.fdb_latexmk *.toc *.pre *.log *.pdf *.hint figures/*.pdf chapters/*.aux
graphics:
	cd figures; parallel -j12 asy -f pdf ::: *.asy
