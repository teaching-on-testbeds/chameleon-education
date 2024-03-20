all: start_here.ipynb

clean:
	rm start_here.ipynb

CHI := chameleon-snippets/chi-config.md chameleon-snippets/reserve-resources.md chameleon-snippets/configure-resources.md chameleon-snippets/offload-off.md chameleon-snippets/draw-topo-detailed-labels.md chameleon-snippets/log-in.md chameleon-snippets/delete-slice.md

start_here.ipynb: $(CHI) custom-snippets/intro.md custom-snippets/exp-define.md custom-snippets/exp-exercises.md
	pandoc --wrap=none \
                -i custom-snippets/intro.md chameleon-snippets/chi-config.md \
                                custom-snippets/exp-define.md \
                                chameleon-snippets/configure-resources.md \
                                chameleon-snippets/offload-off.md \
                                chameleon-snippets/draw-topo-detailed-labels.md \
                                chameleon-snippets/log-in.md custom-snippets/exp-exercises.md \
                                chameleon-snippets/delete-slice.md \
                -o start_here.ipynb


