OFILES := $(patsubst %.md,%.html,$(wildcard *.md))

all: $(OFILES)

%.html : %.md
	pandoc $< -o $@

clean :
	rm $(OFILES)

rebuild : clean all
