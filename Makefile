OFILES := $(patsubst %.md,%.html,$(wildcard *.md))

all: $(OFILES)

%.html : %.md
	pandoc $< -o $@ -s -c styles.css

clean :
	rm $(OFILES)

rebuild : clean all
