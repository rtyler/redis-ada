
GPRBUILD=gprbuild
GPRCLEAN=gprclean
TESTRUNNER=textrunner

lib: pre
	$(GPRBUILD) -p redis.gpr

pre:
	mkdir -p build
	mkdir -p obj

syntax: pre
	gnatmake -gnatc -gnat05 -P redis.gpr

test: lib
	$(GPRBUILD) -p test/unit.gpr
	./$(TESTRUNNER)

clean: pre
	$(GPRCLEAN) redis.gpr
	$(GPRCLEAN) test/unit.gpr
	rm -rf build obj
	rm -f *.so*

