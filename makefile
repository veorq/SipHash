CC=gcc
CFLAGS=-Wall
SRC=siphash.c halfsiphash.c test.c
BIN=test debug

all:                    $(BIN)

test:                   $(SRC)
			$(CC) $(CFLAGS) $^ -o $@

debug:                  $(SRC) 
			$(CC) $(CFLAGS) $^ -o $@ -DDEBUG

clean:
			rm -f *.o $(BIN)

dist:                   clean
			cd ..; \
	                tar zcf SipHash-`date +%Y%m%d%H%M`.tgz SipHash/*
