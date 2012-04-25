all:
	happy -gca ParC.y
	alex -g LexC.x
	latex DocC.tex; dvips DocC.dvi -o DocC.ps
	ghc --make TestC.hs -o TestC
clean:
	-rm -f *.log *.aux *.hi *.o *.dvi
	-rm -f DocC.ps
distclean: clean
	-rm -f DocC.* LexC.* ParC.* LayoutC.* SkelC.* PrintC.* TestC.* AbsC.* TestC ErrM.* SharedString.* C.dtd XMLC.* Makefile*

