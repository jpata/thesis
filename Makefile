all: thesis

thesis:
	latexmk -pdf thesis

open:
	open thesis.pdf

clean:
	rm -f *.pdf *.aux *.log *.out

count:
	date >> count.txt
	texcount -sum *.tex | grep -A9 Total >> count.txt
	echo "---" >> count.txt

.PHONY: thesis clean
