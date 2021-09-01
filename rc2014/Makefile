############################################################################
#
# Semi universal Makefile for ZX Spectrum / CPM
# by Andrzej Borsuk
#
# See README to find information about tools used here
#
############################################################################

# Primary binaries
all:	mandc mandc.com mandz.com
all:	mandc1 mandc1.com
all:	mandb.com
all:	mand.com mand.hex
clean:
	rm -f *.tap *.hex *.com
	rm -f mandc *.prn *.rel

# Native clang
mandc:	mandc.c

# Hisoft-C clang 
mandc.com: mandc.c
	c.com -lf -o $< 
	chmod a+x $@

# Z88DK clang
mandz.com: mandc.c
	zcc +cpm -lm -o $@ $<
	rm -f zcc_opt.def
	chmod a+x $@

############################################################################

# HOWTO compile this stuff:
.SUFFIXES: .bas .asm .as
.SUFFIXES: .hex .com .rel
.SUFFIXES: .tap


# CP/M clang (Hisoft-C)
.c.com:
	c.com -lf $*.c
	chmod a+x $*.com

# CP/M bascom
.bas.rel:
	bascom.com $*,$*=$*/o/z
.rel.com:
	l80.com $*,$*/n/e
	chmod a+x $*.com

# CP/M executable
.asm.com:
	pasmo --bin $*.asm $*.com
	chmod a+x $*.com

# CP/M hex binary
.asm.hex:
	pasmo --hex $*.asm $*.hex

# ZX Spectrum TAPe for basic program
.bas.tap:
	zmakebas -l -a10 -i10 -n $* -o $*.tap $*.bas
	listbasic $*.tap

# ZX Spectrum ASM program with loader
.asm.tap:
	pasmo --tapbas $*.asm $*.tap
	listbasic $*.tap

# ZX Spectrum ASM without loader
.as.tap:
	pasmo --tap $*.asm $*.tap
