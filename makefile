CC=gcc
CFLAGS= -Iinclude
LDFLAGS= -lraylib -lm -lpthread
BIN = -o bin/app
OBJ=obj
#OBJS= $(OBJ)/Player.o

#$(OBJ)/%.o: src/%.c
	#$(CC) $(CFLAGS) -c $^ -o $@

all: $(OBJS)
	$(CC) $(CFLAGS) main.c $^ $(BIN) $(LDFLAGS)

preprocessor: $(OBJS)
	$(CC) $(CFLAGS) -E main.c $^ $(BIN) $(LDFLAGS)

debug: $(OBJS)
	$(CC) $(CFLAGS) -g main.c $^ $(BIN) $(LDFLAGS)

release: CFLAGS= -Iinclude -Wall -O3 -DNDEBUG
release: all

clean:
	rm obj/*
	rm bin/*

