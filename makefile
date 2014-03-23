CC=gcc
CFLAGS=-Wall 
BIN=siphash24_test siphash24_test_debug

all:		      $(BIN)

siphash24_test:	      siphash24.c main.c
		      $(CC) $(CFLAGS) $^ -o $@

siphash24_test_debug: siphash24.c main.c
		      $(CC) $(CFLAGS) $^ -o $@ -DDEBUG

clean:	      
		      rm -f *.o $(BIN)

dist:		      clean
		      cd ..; \
		      tar zcf SipHash-`date +%Y%m%d%H%M`.tgz SipHash/*

