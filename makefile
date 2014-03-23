CC=gcc
CFLAGS=-Wall 
BIN=siphash24_test siphash24_test_debug

all:		      $(BIN)

siphash24_test:	      siphash24.c main.c
		      gcc $(CFLAGS) $^ -o $@

siphash24_test_debug: siphash24.c main.c
		      gcc $(CFLAGS) $^ -o $@ -DDEBUG

clean:	      
		      rm -f *.o $(BIN)

