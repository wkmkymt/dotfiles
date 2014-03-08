CC       = gcc
CCFLAGS  = -Wall -O2 -std=c11

DEST     = /usr/local/bin
PROG     = app

SRCDIR   = ./src
SRCS     = $(shell ls $(SRCDIR)/*.c)
OBJS     = $(SRCS:.c=.o)

.SUFFIXES: .c .o

all: $(PROG)

$(PROG): $(OBJS)
				 $(CC) -o $@ $^

.c.o:
				 $(CC) $(CCFLAGS) -c $< -o $@

clean:
				 $(RM) $(PROG) $(OBJS)

install:
				 @if [ ! -e $(DEST)/$(PROG) ]; \
				 then \
					 sudo cp $(PROG) $(DEST); \
					 echo "Install $(PROG) in $(DEST) now.\n"; \
				 else \
					 echo "$(PROG) is already installed in $(DEST).\n"; \
				 fi