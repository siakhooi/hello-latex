install:
	sudo apt update
	sudo apt install texlive-xetex texlive-lang-chinese texlive-latex-extra -y
	sudo apt install poppler-utils -y

xelatex-version:
	xelatex --version

build:
	mkdir -p output
	xelatex -output-directory=output src/hello-world.tex
pdfinfo:
	pdfinfo output/hello-world.pdf
