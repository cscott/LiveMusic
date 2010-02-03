### updated for latest lilypond
SONGS=cripple-creek2 miss-sawyer kitchen-girl frosty-morn answer-me rocky-top\
	non-dimenticar one-toke girl-blue saturday-night sandy-river2 \
	june-apple country-roads maple-leaf-round \
	miss-sawyer-c kitchen-girl-c frosty-morn-f last-chance \
	brandy midnight
### not yet updated
#SONGS+=soldiers-joy devil-went-down
LAME=toolame
all: $(foreach f,$(SONGS),$(f).mp3)

%.midi %.ps %.pdf: %.ly
	lilypond $<
%.wav: %.midi
	timidity -c timidity.cfg -OwS -o $@ $<
%.ogg: %.wav
	oggenc $<
%.mp3: %.wav
	$(LAME) $< $@

upload: $(foreach f,$(SONGS),$(f).mp3 $(f).ly $(f).pdf) non-dimenticar-rg.mp3
	rsync --chmod=a+r -avz $^ cscott.net:public_html/LiveMusic/

answer-me.ps answer-me.pdf: alt-chords.ly
