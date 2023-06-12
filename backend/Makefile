# Define the location of the include directory
# and the location to install the compiler binary
INCDIR=./build/include
BINDIR=./build

HSRCS= data.h decl.h defs.h incdir.h
SRCS= cg.c decl.c expr.c gen.c main.c misc.c \
	opt.c scan.c stmt.c sym.c tree.c types.c

MINIC: $(SRCS) $(HSRCS)
	cc -o MINIC -g -Wall $(SRCS)

incdir.h:
	echo "#define INCDIR \"$(INCDIR)\"" > incdir.h

install: MINIC
	mkdir -p $(INCDIR)
	rsync -a include/. $(INCDIR)
	cp MINIC $(BINDIR)
	chmod +x $(BINDIR)/MINIC

clean:
	rm -f MINIC MINIC[0-9] *.o *.s *.q out a.out incdir.h

test: install tests/runtests
	(cd tests; chmod +x runtests; ./runtests)

# Run the tests, stop on the first failure
stoptest: install tests/runtests
	(cd tests; chmod +x runtests; ./runtests stop)

# Run the tests with the
# compiler that compiled itself
test2: install tests/runtests2 MINIC2
	(cd tests; chmod +x runtests2; ./runtests2)

# Try to do the triple test
triple: MINIC3
	size MINIC[23]

# Paranoid: quadruple test
quad: MINIC4
	size MINIC[234]

MINIC4: MINIC3 $(SRCS) $(HSRCS)
	./MINIC3 -o MINIC4 $(SRCS)

MINIC3: MINIC2 $(SRCS) $(HSRCS)
	./MINIC2 -o MINIC3 $(SRCS)

MINIC2: install $(SRCS) $(HSRCS)
	./MINIC  -o MINIC2 $(SRCS)
