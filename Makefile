SONGS=soldiers-joy sandy-river2 last-chance girl-blue saturday-night \
	devil-went-down cripple-creek2 miss-sawyer
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
#	scp $^ k2.csail.mit.edu:public_html/LiveMusic/
	rsync --chmod=a+r -avz $^ k2.csail.mit.edu:public_html/LiveMusic/
