.PHONY: all
CC = gcc
CFLAGS += -O1 -s -Wall -std=c11 -Wextra
LDLIBS = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11

all: portalgame main.o screen_logo.o screen_title.o screen_options.o screen_gameplay.o screen_ending.o

portalgame: $(OBJS)
	$(CC) -o portalgame main.o screen_logo.o screen_title.o screen_options.o screen_gameplay.o screen_ending.o $(CFLAGS) $(LDLIBS)

# Compile source files
# NOTE: This pattern will compile every module defined on $(OBJS)
main.o: main.c
	$(CC) -c main.c -o main.o $(CFLAGS)
screen_logo.o: screens/screen_logo.c
	$(CC) -c screens/screen_logo.c -o screen_logo.o $(CFLAGS)
screen_title.o: screens/screen_title.c
	$(CC) -c screens/screen_title.c -o screen_title.o $(CFLAGS)
screen_options.o: screens/screen_options.c
	$(CC) -c screens/screen_options.c -o screen_options.o $(CFLAGS)
screen_gameplay.o: screens/screen_gameplay.c
	$(CC) -c screens/screen_gameplay.c -o screen_gameplay.o $(CFLAGS)
screen_ending.o: screens/screen_ending.c
	$(CC) -c screens/screen_ending.c -o screen_ending.o $(CFLAGS)
