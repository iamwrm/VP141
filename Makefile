# type "make" command in Unix to create asme2e.pdf file 
all:
	xelatex p5ReportWR
	xelatex p5ReportWR
# 	bibtex g3_manual
	(rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *blg)
	open *.pdf