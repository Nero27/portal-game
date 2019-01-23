.PHONY: all
CC = gcc
CFLAGS += -O1 -s -Wall -std=c11 -Wextra
LDLIBS = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11

all: portalgame

portalgame: $(OBJS)
	$(CC) -o portalgame main.o screen_logo.o screen_title.o screen_options.o screen_gameplay.o screen_ending.o $(CFLAGS) $(LDLIBS)

# Compile source files
# NOTE: This pattern will compile every module defined on $(OBJS)
%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
