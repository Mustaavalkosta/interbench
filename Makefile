CC=gcc
CFLAGS=-W -Wall -g -O2 -s -pipe
LDFLAGS=-lrt -lm -pthread

interbench: interbench.o hackbench.o
	$(CC) interbench.o hackbench.o $(LDFLAGS) -o interbench
interbench.o: interbench.c
	$(CC) interbench.c $(CFLAGS) -c -o interbench.o
hackbench.o: hackbench.c
	$(CC) hackbench.c $(CFLAGS) -c -o hackbench.o

clean:
	rm -f *.o interbench interbench.read interbench.write interbench.loops_per_ms *~
