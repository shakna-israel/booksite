OFILES := $(patsubst %.md,%.html,$(wildcard *.md))

all: $(OFILES)

index.html : index.md
	pandoc $< -t html5 -o $@ -s --template 'indextemplate.html' --metadata title="Home" --metadata author='James Milne'

%.html : %.md
	pandoc $< -t html5 -o $@ -s --template 'template.html' --metadata title=$(basename $@ .html) --metadata author='James Milne'

clean :
	rm $(OFILES)

rebuild : clean all
