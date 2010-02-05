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

#upload: $(foreach f,$(SONGS),upload-$(f) )

# Tweak 'uploaded' line to record timestamp when uploading.
# for timestamp tried: git log --pretty="format:%aD" -1 $*.ly
# but it's not any more stable that this.
upload-%: %.ly
	sed -i~ -e '/^ *oddFooterMarkup/c\  oddFooterMarkup = \\markup { \\fill-line { $(shell date "+Uploaded %Y-%m-%d %H:%M") } }' $^
	$(MAKE) $*.mp3 $*.pdf
	rsync --chmod=a+r -avz $*.ly $*.mp3 $*.pdf cscott.net:public_html/LiveMusic/

answer-me.ps answer-me.pdf: alt-chords.ly
