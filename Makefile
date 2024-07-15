all:
	latexmk -pdf -xelatex --shell-escape main.tex
	pdffonts main.pdf

diff:
	latexmk -c diff.tex
	rm -f diff.tex
	latexdiff --append-safecmd=subfile --flatten another_version_main_in_another_directory.tex main.tex > diff.tex
	latexmk -pdf -xelatex --shell-escape diff.tex

clean:
	latexmk -c
