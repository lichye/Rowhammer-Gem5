default:
	make -f Makefile.default

clean:
	make -f Makefile.default clean

gem5-fusion:
	make -f Makefile.gem5-fusion

clean-gem5-fusion:
	make -f Makefile.gem5-fusion clean

gem5-assembly:
	make -f Makefile.gem5-assembly 
	rm -rf *.bc *.cui *.o *.out *.txt *.hipfb *.stats

gem5-ir:
	make -f Makefile.gem5-ir

clean:
	rm -rf bin
	rm -rf *.bc *.cui *.o *.s *.out *.txt *.hipfb *.stats
	rm -rf *.ll