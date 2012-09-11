#-----------------------------------------------------------
# general use makefile file.
# for unix like OS, special for c language.
#-----------------------------------------------------------

#-----------------------------------------------------------
# to use this makefile, generally change variables below
#-----------------------------------------------------------
# binarys to be created
BINS := 

# libs to be created
LIBS := 
#-----------------------------------------------------------

# compiler tool
CC := gcc

# compile option to the executables
CFLAGS := -g -Wall -O3 -DLINUX -Iinc
CXXFLAGS := $(CFLAGS)

#compile option to .so
SOFLAG := -g -DLINUX -shared -fPIC -Iinc

LDFLAGS := -Wl,-rpath,bin,-rpath, \
  -Lbin \
	-lpthread -lreadline
	
# vpath indicate the searching path of the according file type
SRCDIR := $(shell ls -d src/*)
vpath %.c $(SRCDIR)
vpath %.h inc
vpath %.so bin
vpath % bin
vpath %.cpp $(SRCDIR)

.PHONY: all libs bins install uninstall

all : libs bins

libs : $(LIBS)

bins : $(BINS)

clean :
        cd bin;\
        rm -f $(LIBS);\
        rm -f $(BINS);\
        cd ..;
		
		
# common rules goes here, if the compiling procedure of your module matches one, 
# no need to list it in SpecialRules
%.so : %.c
        $(CC) $(SOFLAG) -o $@ $^
        mv $@ bin/

% : %.c
        $(CC) $(CCFLAG) $(LDFLAG) -o $@ $^
        mv $@ bin/
		
#-----------------------------------------------------------
# for special libs/bins, add some lines like below
#-----------------------------------------------------------
#so_example.so: so_example.c so_prerequisite1.c so_prerequisite2.c
#	$(CC) $(SOFLAG) -o $@ $^
#	mv $@ bin/

#bin_example : bin_example.c bin_prerequisite1.c bin_prerequisite2.c
#       $(CC) $(CCFLAG) $(LDFLAG) -o $@ $^
#       mv $@ bin/
#-----------------------------------------------------------


