OFILES := $(patsubst %.md,%.html,$(wildcard *.md))

all: $(OFILES)

%.html : %.md
	pandoc $< -o $@ -s -H 'header.html' --metadata title=$(basename $@ .html)

clean :
	rm $(OFILES)

rebuild : clean all
