.PHONY: all bnfc kappa clean distclean

NAME=Kappa

GRAMMARPATH=bnfc
GNAME=$(NAME)Grammar

all: $(NAME)

bnfc:
	cp $(GRAMMARPATH)/Abs$(GNAME).hs ./
	cp $(GRAMMARPATH)/Lex$(GNAME).hs ./
	cp $(GRAMMARPATH)/Par$(GNAME).hs ./
	cp $(GRAMMARPATH)/Print$(GNAME).hs ./
	cp $(GRAMMARPATH)/ErrM.hs ./

$(NAME): bnfc Kappa.hs
	ghc --make $(NAME).hs -o $(NAME)

tests: $(NAME)
	cd ./tests && ./test_runner.sh

clean:
	-rm -f *$(GNAME)* *.o *.hi ErrM.hs

distclean: clean
	-rm -f *.hi *.swp *~ $(NAME)
