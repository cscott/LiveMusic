%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% standard "guitar" chord notation

chExceptionMusic = {
  <c f g>1-\markup { \super "sus" }
  <c e g b>1-\markup { \super "maj7" }
  <c e g b d>1-\markup { \super "maj9" }
  <c ees ges>1-\markup { \super "dim" }
  <c ees ges beses>1-\markup { \super "dim7" }
}
chExceptionsShort =#(sequential-music-to-chord-exceptions chExceptionMusic #t)
chExceptions = #(append
  (sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

chordProperties = \sequential { 
    \set majorSevenSymbol = \markup { "maj7" }
    \set chordNameExceptions = #chExceptionsShort
}
