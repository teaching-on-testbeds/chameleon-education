all: start_here.ipynb

clean:
	rm start_here.ipynb

SNIPPETS := chameleon-snippets/chi-config.md chameleon-snippets/reserve-resources.md chameleon-snippets/configure-resources.md chameleon-snippets/offload-off.md chameleon-snippets/draw-topo-detailed-labels.md chameleon-snippets/log-in.md chameleon-snippets/delete-slice.md
start_here.ipynb: $(SNIPPETS) intro.md exp-define.md
	pandoc --wrap=none \
                -i intro.md chameleon-snippets/chi-config.md \
				exp-define.md \
				chameleon-snippets/configure-resources.md \
				chameleon-snippets/offload-off.md \
				chameleon-snippets/draw-topo-detailed-labels.md \
				chameleon-snippets/log-in.md \
				chameleon-snippets/delete-slice.md \
                -o start_here.ipynb  
