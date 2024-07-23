default:
# builds project summary and project description only
	pdflatex -synctex=1 project-summary.tex
	pdflatex -synctex=1 main.tex
	bibtex main
	pdflatex -synctex=1 main.tex
appendix:
# build just the appendicies
	pdflatex -synctex=1 appendices/budget-justification.tex
	pdflatex -synctex=1 appendices/data-management-plan.tex
	pdflatex -synctex=1 appendices/facilities.tex
	pdflatex -synctex=1 appendices/mentoring-plan.tex
	pdflatex -synctex=1 appendices/references-cited.tex
pi:
# build synergistic activities
	pdflatex -synctex=1 pi-info/synergistic-activities.tex
all:
# build everything
	make default appendix pi
clean:
	rm -f *.synctex.gz *.synctex.gz\(busy\) *.out *.log *.blg *.bbl *.aux .DS_Store *.pdf