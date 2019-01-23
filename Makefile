.PHONY: all
PLATFORM            ?= PLATFORM_DESKTOP
PATH         		?= ../..
PROJECT_NAME        ?= portalgame

# Library type used for raylib: STATIC (.a) or SHARED (.so/.dll)
RAYLIB_LIBTYPE      ?= STATIC

CC = gcc

CFLAGS += -O1 -s -Wall -std=c11 -D_DEFAULT_SOURCE -Wextra
LDLIBS = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11

PROJECT_SOURCE_FILES ?= main.c \
                        screens/screen_logo.c \
                        screens/screen_title.c \
                        screens/screen_options.c \
                        screens/screen_gameplay.c \
                        screens/screen_ending.c

# Define all object files from source files
OBJS = $(patsubst %.c, %.o, $(PROJECT_SOURCE_FILES))

all:
	$(MAKE) $(MAKEFILE_PARAMS)

$(PROJECT_NAME): $(OBJS)
	$(CC) -o $(PROJECT_NAME)$(EXT) $(OBJS) $(CFLAGS) $(LDLIBS) -D$(PLATFORM_DESKTOP)

# Compile source files
# NOTE: This pattern will compile every module defined on $(OBJS)
%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS) -D$(PLATFORM)
