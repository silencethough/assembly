CFLAGS := -O2 -Wall -W -Wextra -Wunused  -Wmissing-prototypes -Wstrict-prototypes
CC := clang
AS := nasm

exes := $(sort $(basename $(wildcard *.asm)))

all: $(exes)
%.o: %.asm
	$(AS) -felf64 $< -o $@
%: %.o
	$(CC) $(CFLAGS) $< -o $@
.PHONY: clean
clean:
	rm -f $(exes)
