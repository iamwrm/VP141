# type "make" command in Unix to create asme2e.pdf file 
all:
	xelatex p1ReportWR
	xelatex p1ReportWR
# 	bibtex g3_manual
	(rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *blg)
	open *.pdf