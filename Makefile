all: soldiers-joy.wav

#soldiers-joy.midi soldiers-joy.ps soldiers-joy.pdf: soldiers-joy.ly
#	lilypond $<
%.midi %.ps %.pdf: %.ly
	lilypond $<
%.wav: %.midi
	timidity -c timidity.cfg -OwS -o $@ $<
