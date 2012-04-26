.PHONY: all bnfc kappa clean distclean

NAME=Kappa

GRAMMARPATH=bnfc
GNAME=$(NAME)Grammar

all: bnfc $(NAME)

bnfc:
	cd $(GRAMMARPATH); make
	cp $(GRAMMARPATH)/Abs$(GNAME).o ./
	cp $(GRAMMARPATH)/Print$(GNAME).o ./
	cp $(GRAMMARPATH)/ErrM.o ./
	
$(NAME):
	ghc --make $(NAME).hs -o $(NAME)

clean:
	cd $(GRAMMARPATH); make clean
	-rm -f *$(GNAME)* *.o *.hi

distclean: clean
	cd $(GRAMMARPATH); make distclean
	-rm -f *.hi *.swp *~ $(NAME)
