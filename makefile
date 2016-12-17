CC=gcc
CFLAGS=-Wall --std=c99 
SRC=siphash.c halfsiphash.c test.c
BIN=test debug vectors

all:                    $(BIN)

test:                   $(SRC)
			$(CC) $(CFLAGS) $^ -o $@

debug:                  $(SRC) 
			$(CC) $(CFLAGS) $^ -o $@ -DDEBUG

vectors:                $(SRC) 
			$(CC) $(CFLAGS) $^ -o $@ -DGETVECTORS


clean:
			rm -f *.o $(BIN)
format:
		        clang-format -style="{BasedOnStyle: llvm, IndentWidth: 4}" \
			-i *.c *.h 

dist:                   clean
			cd ..; \
	                tar zcf SipHash-`date +%Y%m%d%H%M`.tgz SipHash/*
