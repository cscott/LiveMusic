SONGS=soldiers-joy sandy-river2 last-chance
all: $(foreach f,$(SONGS),$(f).mp3)

%.midi %.ps %.pdf: %.ly
	lilypond $<
%.wav: %.midi
	timidity -c timidity.cfg -OwS -o $@ $<
%.ogg: %.wav
	oggenc $<
%.mp3: %.wav
	lame $< $@

upload: $(foreach f,$(SONGS),$(f).mp3 $(f).ly $(f).pdf)
	scp $^ k2.csail.mit.edu:public_html/LiveMusic/
