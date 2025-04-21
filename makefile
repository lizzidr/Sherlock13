# Makefile pour le projet Sherlock 13

# Compilateur et options
CC       := gcc
CFLAGS   := -Wall -O2 $(shell pkg-config --cflags sdl2 SDL2_image SDL2_ttf)
LDFLAGS  := -pthread $(shell pkg-config --libs sdl2 SDL2_image SDL2_ttf)

# Cibles par défaut
all: server sh13

# Serveur
server: server.c
	$(CC) $(CFLAGS) server.c -o $@

# Client SDL2
sh13: sh13.c
	$(CC) $(CFLAGS) sh13.c -o $@ $(LDFLAGS)

# Nettoyage
clean:
	rm -f server sh13

.PHONY: all clean
