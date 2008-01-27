#SONGS=soldiers-joy sandy-river2 last-chance girl-blue saturday-night \
	devil-went-down cripple-creek2 miss-sawyer rocky-top \
	kitchen-girl frosty-morn answer-me one-toke non-dimenticar
### updated for latest lilypond
SONGS=cripple-creek2 miss-sawyer kitchen-girl frosty-morn answer-me rocky-top\
	non-dimenticar one-toke
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

upload: $(foreach f,$(SONGS),$(f).mp3 $(f).ly $(f).pdf)
	rsync --chmod=a+r -avz $^ cscott.net:public_html/LiveMusic/

answer-me.ps answer-me.pdf: alt-chords.ly
