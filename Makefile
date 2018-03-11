targets := $(sort $(basename $(wildcard *.S)))
all: $(targets)

%: %.S
	$(CC) $< -o $@

.PHONE: clean
clean:
	rm $(targets)
