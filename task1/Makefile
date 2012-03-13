##/****************************************/
##/*  haskell Makefile JIPP task 1        */
##/*  author: Piotr Dobrowolski           */
##/*  2012                                */
##/*                                      */
##/*  Makefile                            */
##/*                                      */
##/****************************************/
SRC=./
COMPILER=ghc
PROJECT=jipp_task_1
MAIN_IN=connectedVer.hs
OBJECTS:=$(patsubst $(SRC)%.hs,%.o,$(wildcard $(SRC)*.hs))

all: $(PROJECT)

$(PROJECT): $(OBJECTS)
	$(COMPILER) --make $(MAIN_IN) -o $(PROJECT)
$(OBJECTS): %.o : $(SRC)%.hs
	$(COMPILER) --make $< -o $@

rebuild: clean all

run : rebuild
	./$(PROJECT)

clean:
	rm -f *~ *.o *.hi *.swp $(PROJECT)
	rm -f $(SRC)*~ *.o $(SRC)*.swp $(PROJECT)
