
GPRBUILD=gprbuild
GPRCLEAN=gprclean
TESTRUNNER=testrunner

lib: pre
	$(GPRBUILD) -p redis.gpr

pre:
	mkdir -p build
	mkdir -p obj

syntax: pre
	gnatmake -gnatc -gnat05 -P redis.gpr


clean: pre
	$(GPRCLEAN) redis.gpr
	rm -rf build obj
	rm -f *.so*

