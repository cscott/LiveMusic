SONGS=soldiers-joy sandy-river2 last-chance girl-blue saturday-night \
	devil-went-down cripple-creek2 miss-sawyer rocky-top \
	kitchen-girl frosty-morn answer-me one-toke
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
#	scp $^ k2.csail.mit.edu:public_html/LiveMusic/
	rsync --chmod=a+r -avz $^ k2.csail.mit.edu:public_html/LiveMusic/

answer-me.ps answer-me.pdf: alt-chords.ly
