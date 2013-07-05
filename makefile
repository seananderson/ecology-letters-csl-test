all:	original mod

original:
	pandoc --bibliography=refs.bib --csl=ecology-letters.csl test.md -o test.pdf
	pandoc --bibliography=refs.bib --csl=ecology-letters.csl test.md -o test.docx

mod:
	pandoc -S --bibliography=refs.bib --csl=ecology-letters-mod.csl test.md -o test-mod.pdf
	pandoc -S --bibliography=refs.bib --csl=ecology-letters-mod.csl test.md -o test-mod.docx
