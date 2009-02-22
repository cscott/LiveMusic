% -*- coding: utf-8; -*-
\version "2.10.33"
\include "alt-chords.ly"
\header {
  title = "Take Me Home, Country Roads"
  source = "John Denver version, additional arrangement by C. Scott"
  style = "Singing Call"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2009/Feb/2"
  meter = 240 % ???
}
#(set-default-paper-size "letter")
#(set-global-staff-size 18)

% \transpose a g
melodyintro = \relative c' { % middle c

    r2 cis'=''8( b) a4 |
    b='4 cis2.~ |
    cis2 cis8( b) a4 |
    a1 ~ |
    a2 a4 b |
    a='1 ~ |
    a4 r4 r2 |
}
melodytoA = \relative c' { % middle c
    r2 e='4 e |
}
melodypartA = \relative c' { % middle c
    fis='4. e8 ~ e2 |
    r2 fis='4 e8 fis ~ |
    fis='8 a4. ~ a2 |
    r2 b='8 b4. |
    cis=''4. b8 ~ b2 |
    fis='4 fis fis e |
    fis='8( a4) a8 ~ a2 |
    r2 e4 e='4 |
    fis4. e8 ~ e2 |
    fis4 a a cis |
    cis=''1 |
    b='4 b b b |
    cis4. b8 ~ b2 |
    fis='4 a4 a b8 a ~ |
    a2
}
melodychorus = \relative c' {
    a'='4 b4 |
    cis=''1 ~ |
    cis2 cis8( b) a4 |
    b1 ~ |
    b2 cis4 b |
    a1 ~ |
    a2 cis4 e |
    fis=''1 ~ |
    fis2 fis4 fis |
    e4 cis2. ~ |
    cis2 cis8( b) a4 |
    b='4 cis2.~ |
    cis2 cis8( b) a4 |
    a1 ~ |
    a2 a4 b |
    \break
    a='1 ~ |
    a4 r4 r2 |
}
melodytoB = \relative c' { % middle c
    r4 a'='4 a a | gis2 a4 b |
}
melodypartB = \relative c' { % middle c
  cis'=''4 cis cis cis |
  cis=''4( b) a4. a8 |
  d=''4. d8 d4 d |
  d=''4 cis b a |
  b='2 cis4. cis8 |
  b2. b4 |
  cis=''4 cis cis cis |
  b4 b b8 b4. |
  a='4 a a8 a4. |
  a='4. a8 a a4. |
  b='4 cis4 b2 ~ |
  b2 b4 cis |
  d=''1 ~ |
  d4 r4\breathe
}
melodycoda = \relative c' { % middle c
  a'='1 ~ |
  a4 r4 cis8( b) a4 |
  b1 ~ |
  b2 cis8( b) a4 |
  a1 ~ |
  a2 cis8( b) a4 |
  b1 ~ |
  b2 cis8( b) a4 |
  a1 ~ |
  a2 ~ a4\accent r4 \bar ":|" |
}

melody = \transpose a g {
  \tag #'key \key a \major
  \time 2/2 % cut time

  \melodyintro
  \melodytoA
  \melodypartA
  \melodychorus
  \repeat volta 2 {
    \melodytoB
    \melodypartB
    \melodychorus
  }
  \melodytoA

  \melodycoda
}

% alto part is written in G (not A, like the melody & other parts)
altointro = \relative c' { % middle c
    r2 g'='8( fis) e4 |
    d='4 d2.~ |
    d2 d8( d) d4 |
    c1 ~ |
    c2 c4 c |
    \break
    d1 ~ |
    d4 r4 r2 |
}
altotoA = \relative c' { % middle c
    r2 b4 b |
}
altopartA = \relative c' { % middle c
    b4. b8 ~ b2 |
    r2 b4 b8 b ~ |
    b8 e='4. ~ e2 |
    r2 d='8 d4. |
    d='4. d8 ~ d2 |
    c='4 c c b |
    b8( d4) d8 ~ d2 |
    r2 b4 b4 |
    b4. b8 ~ b2 |
    b4 e e g |
    e='1 |
    d='4 d d d |
    d4. d8 ~ d2 |
    c='4 e4 e e8 d ~ |
    d2
}
altochorus = \relative c' {
    d='4 fis4 |
    g='1 ~ |
    g2 g8( fis) e4 |
    d1 ~ |
    d2 d4 fis |
    e1 ~ |
    e2 g4 b |
    c=''1 ~ |
    c2 c4 c |
    b4 g2. ~ |
    g2 g8( fis) e4 |
    d='4 d2.~ |
    d2 d8( d) d4 |
    c1 ~ |
    c2 c4 c |
    \break
    d1 ~ |
    d4 r4 r2 |
}
altotoB = \relative c' { % middle c
    r4 e='4 e e | d2 e4 fis |
}
altopartB = \relative c' { % middle c
  g'='4 g g g |
  g='4( fis) d4. d8 |
  g='4. g8 g4 g |
  g='4 g fis e |
  d='2 d4. d8 |
  d2. d4 |
  e='4 e e e |
  f4 f f8 f4. |
  c='4 c c8 c4. |
  d='4. d8 d d4. |
  fis='4 g4 fis2 ~ |
  fis2 fis4 g |
  fis='1 ~ |
  fis4 r4\breathe
}
altocoda = \relative c' { % middle c
  d='1 ~ |
  d4 r4 g8( fis) e4 |
  d1 ~ |
  d2 g8( fis) e4 |
  d1 ~ |
  d2 g8( fis) e4 |
  d1 ~ |
  d2 g8( fis) e4 |
  g,1 ~ |
  g2 ~ g4\accent r4 \bar ":|" |
}

alto = {
  \tag #'key \key g \major
  \time 2/2 % cut time

  \altointro
  \altotoA
  \altopartA
  \altochorus
  \repeat volta 2 {
    \altotoB
    \altopartB
    \altochorus
  }
  \altotoA

  \altocoda
}

lowb = \relative c { < \tag #'lo b, \tag #'hi b' >4 }
lowcis = \relative c { < \tag #'lo cis, \tag #'hi cis' >4 }
lowciscis = \relative c { < \tag #'lo cis, \tag #'hi cis' >2 }
lowd = \relative c { < \tag #'lo d, \tag #'hi d' >4 }
lowdd = \relative c { < \tag #'lo d, \tag #'hi d' >2 }
lowe = \relative c { < \tag #'lo e, \tag #'hi e' >4 }
lowee = \relative c { < \tag #'lo e, \tag #'hi e' >2 }
lowfis = \relative c { < \tag #'lo fis, \tag #'hi fis' >4 }


bassintro = \relative c { % c below middle c
  r2 \lowcis \lowd | \lowee b=,2 | e,2 \lowb \lowcis | \lowdd a=,2 | d2 cis4 b |
  a=,2 e | a e |
}
basstoA = \relative c { % c below middle c
  a=,2 e |
}
basspartA = \relative c {
    a=,2 e | fis cis' | fis, fis |
    e=,2 b' | e, b' | \lowdd \lowdd | a=, e |
    a=,2 e | a e | fis cis' | fis, fis |
    e=,2 b' | e, b' | d2 cis4 b | a=,2
}
basschorus = \relative c {
    % signo
    e,=,2 | a e | a \lowcis \lowd | \lowee b=, | e, b' |
    fis=,2 \lowciscis | fis \lowfis \lowe | \lowdd a=, | d2 cis4 b | a=,2 e |
    a=,2 \lowcis \lowd | \lowee b=,2 | e,2 \lowb \lowcis | \lowdd a=,2 | d2 cis4 b |
    a=,2 e | a e |
}
basstoB = \relative c {
    fis,=,1 | e1 |
}
basspartB = \relative c {
  a=,2 e | a b4 cis | d2 cis4 b | a=,2 gis4 fis |
  e=,2 b' | e, b' | fis=,2 fis | g g | d' cis4 b |
  a=,2 gis4 fis | e=,2 b' | e, b' | e, b' | e4 r4\breathe
}
basscoda = \relative c {
  a=,2 e | a gis4 fis | e=,2 b' | e, fis4 gis | a=,2 e |
  a=,2 gis4 fis | e=,2 b' | e, e | a e | a ~ a4\accent r4 |
}
bass = \transpose a g {
  \tag #'key \key a \major
  \time 2/2

  \bassintro
  \basstoA
  \basspartA
  \basschorus
  \repeat volta 2 {
    \basstoB
    \basspartB
    \basschorus
  }
  \basstoA

  \basscoda
}

pianotopintro = {
  s1 |
  gis'8 e' gis' e' ~ e'4 <e' gis'>4 |
  r8 d'8 e' gis' ~ gis'4 e'4 |
  r8 d'8 e' fis' ~ fis'4 <fis' d'>4 |
  r8 d'8 e' fis' ~ fis'4 <fis' d'>4 |
  r8 cis'8 d' e' ~ e'4 <e' cis'>4 |
  r8 cis'8 d' e' ~ e'4 <e' cis'>4 |
}
pianotoptoA = {
  r8 a8 b cis' ~ cis'4 <cis' a>4 |
}
pianotoppartA = {
    r8 a8 ~ <a cis'>2 <a cis'>4 |
    r8 a8 ~ <a cis'>4 ~ <a cis'>2 |
    r8 a8 ~ <a cis'>2 <a cis'>4 |
    r8 e' ~ <e' gis'>2 <e' gis'>4 |
    r8 e' ~ <e' gis'>2 <e' gis'>4 |
    r8 a8 d'4 d' cis' |
    cis'8 <cis' e'>4 <cis' e'>8 ~ <cis' e'>4 <cis' e'>4 |
    r8 a8 ~ <a cis'>2 <a cis'>4 |
    r8 a8 ~ <a cis'>2 <a cis'>4 |
    r8 cis'8 ~ <cis' fis'>4 <cis' fis'> <cis' fis' a'> |
    r8 cis'8 ~ <cis' fis' a'>2 <cis' fis' a'>4 |
    % page 2
    r8 e'8 ~ <e' gis'>4 <e' gis'> <e' gis'> |
    r8 e' ~ <e' gis'>2 <e' gis'>4 |
    r8 d'8 ~ <d' fis'>4 <d' fis'> <d' fis'>8 <cis' e'> ~ |
    <cis' e'>8 cis' e'4
}
pianotopchorus = {
    % signo
    cis'4 d' |
    r8 cis'8 e' a' ~ a'4 <a' e' cis'>4 |
    r8 cis'8 e' a' ~ a'4 a' |
    r8 b8 e' gis' ~ gis'4 <gis' e' b>4 |
    r8 b8 e' gis' ~ gis'4 <gis' d'>4 |
    r8 a8 cis' fis' ~ fis'4 <fis' cis' a>4 |
    r8 cis'8 fis' a'~ a'4 <a' cis''>4 |
    r8 fis'8 a' d'' ~ d''4 <d'' a' fis'>4 |
    r8 fis'8 a' d'' ~ d''4 <d'' a'>4 |
    cis''8 e' a' e' ~ e'4 <e' cis'>4 |
    r8 cis'8 e' a'~ a'4 a'4 |
    gis'8 e' gis' e' ~ e'4 <e' gis'>4 |
    r8 d'8 e' gis' ~ gis'4 e'4 |
    r8 d'8 e' fis' ~ fis'4 <fis' d'>4 |
    r8 d'8 e' fis' ~ fis'4 <fis' d'>4 |
    r8 cis'8 d' e' ~ e'4 <e' cis'>4 |
    r8 cis'8 d' e' ~ e'4 <e' cis'>4 |
}
pianotoptoB = {
    r8 cis'8 ~ <cis' fis'>4 <cis' fis'>4 <cis' fis'>4 |
    r8 b8 ~ <b e'>4 <d' fis'>4 <e' gis'>4 |
}
pianotoppartB = {
  r8 e'8 ~ <e' a'>4 <e' a'>4 <e' a'>4 |
  r8 cis'8 ~ <cis' e'>2. |
  r8 fis'8 ~ <fis' a'>2. |
  r8 e'8 ~ <e' a'>4 <cis' e'>2 |
  r8 e'8 ~ <e' gis'>2 <e' gis'>4 |
  r8 e'8 ~ <e' gis'>2 <e' gis'>4 |
  r8 fis'8 ~ <fis' a'>4 <fis' a'>4 <fis' a'>4 |
  r8 d'8 ~ <d' g'>2 <d' g'>4 |
  r8 d'8 ~ <d' fis'>2. |
  r8 cis' ~ <cis' e'>2. |
  r8 e'8 ~ <e' gis'>2 <e' gis'>4 |
  r8 e'8 ~ <e' gis'>2 <e' gis'>4 |
  r8 e'8 ~ <e' gis'>2 <e' gis'>4 |
  <e' gis'>4 s4
}
pianotopcoda = {
  r8 a8 cis' e' ~ e'4 <e' cis'>4 |
  r8 cis'8 e' a' ~ a'4 e'4 |
  r8 d'8 e' gis' ~ gis'4 <gis' e'>4 |
  r8 d'8 e' gis' ~ gis'4 fis'4 |
  r8 a8 cis' e' ~ e'4 <e' cis'>4 |
  r8 cis'8 e' a' ~ a'4 e'4 |
  r8 d'8 e' gis' ~ gis'4 <gis' e'>4 |
  r8 d'8 e' gis' ~ gis'4 e'4 |
  r8 a8 cis' e' ~ e'4 <e' cis'>4 |
  r8 a8 cis' e' ~ \acciaccatura b8 <e' cis'>4\accent r4 |
}
pianotop = <<
  \new Voice = "first" { \voiceOne \melody }
  \new Voice = "second" \transpose a g { \voiceTwo

  \tag #'key \key a \major
  \time 2/2

  \pianotopintro
  \pianotoptoA
  \pianotoppartA
  \pianotopchorus
  \repeat volta 2 {
    \pianotoptoB
    \pianotoppartB
    \pianotopchorus
  }
  \pianotoptoA

  \pianotopcoda
}
>>
pianobot = \removeWithTag #'hi \bass

harmoniesintro = \chordmode { \chordProperties
  s1 |
  e4 e e e |
  e4 e e e |
  d4 d d d |
  d4 d d d |
  a4 a a a |
  a4 a a a | %\break
}
harmoniestoA = \chordmode { \chordProperties
  a4 a a a | 
}
harmoniespartA = \chordmode { \chordProperties
    a4 a a a |
    fis4:m fis:m fis:m fis:m |
    fis4:m fis:m fis:m fis:m |
    e4 e e e |
    e4 e e e |
    d4 d d d |
    a4 a a a |
    a4 a a a |
    a4 a a a |
    fis4:m fis:m fis:m fis:m |
    fis4:m fis:m fis:m fis:m |
    e4 e e e |
    e4 e e e |
    d4 d d d |
    a4 a 
}
harmonieschorus = \chordmode { \chordProperties
    % signo
    a a |
    a4 a a a |
    a4 a a a |
    e4 e e e |
    e4 e e e |
    fis4:m fis:m fis:m fis:m |
    fis4:m fis:m fis:m fis:m |
    d4 d d d |
    d4 d d d |
    a4 a a a |
    a4 a a a |
    e4 e e e |
    e4 e e e |
    d4 d d d |
    d4 d d d |
    \tag #'tocoda {    % to coda
      \once\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \once\override Score.RehearsalMark #'self-alignment-X = #RIGHT  
      \mark "To Coda"
    }
    a4 a a a |
    a4 a a a |
}
harmoniestoB = \chordmode { \chordProperties
  fis4:m fis:m fis:m fis:m | e4 e e e |
}
harmoniespartB = \chordmode { \chordProperties
  a4 a a a |
  a4 a a a |
  d4 d d d |
  a4 a a a |
  e4 e e e |
  e4 e e e |
  fis4:m fis:m fis:m fis:m |
  g4 g g g |
  d4 d d d |
  a4 a a a |
  e4 e e e |
  e4 e e e |
  e4:7 e:7 e:7 e:7 |
  e4:7 e:7
}
harmoniescoda = \chordmode { \chordProperties
  a4 a a a |
  a4 a a a |
  e4 e e e |
  e4 e e e |
  a4 a a a |
  a4 a a a |
  e4 e e e |
  e4 e e e |
  a4 a a a |
  a4 a a a |
}
harmonies = \transpose a g \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \chordProperties
  \time 2/2

  \harmoniesintro
  \mark \default % A part
  \harmoniestoA
  \mark \markup { \musicglyph #"scripts.segno" }
  \harmoniespartA
  \harmonieschorus
  \mark \default % B part
  \repeat volta 2 {
    \harmoniestoB
    \harmoniespartB
    \removeWithTag #'tocoda \harmonieschorus
  }
  % attach the 'al segno' to the penultimate note, to work
  % around a lilypond limitation which makes the al segno
  % conflict with the coda symbol on the next bar.
  %\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \chordmode { \chordProperties
    a4 a a
    \once\override Score.RehearsalMark #'self-alignment-X = #RIGHT  
    s8. \mark "Al Segno" s16
  }
  \bar "||"
  \break

  \mark \markup { \musicglyph #"scripts.coda" }
  \harmoniescoda
}

wordsA = \lyricmode {
  % intro
  "" "" "" ""
  "" "" ""
  "" "" ""
  % verse
  Al -- most
  heav -- en, __
  West Vir -- gin -- ia. __
  Blue Ridge
  Moun -- tains, __
  Shen -- an -- do -- ah
  Riv -- er. __
  __
  Life is
  old there, __
  old -- er than the
  trees, __
  young -- er than the
  moun -- tains __
  grow -- in' like a breeze.
  __

  Coun -- try
  Roads, __
  take __ me
  home __
  to the
  place __
  I be -- long: __
  West Vir --
  gin -- ia, __
  moun -- tain
  mom -- ma, __
  Take __ me
  home, __
  Coun -- try
  Roads. __

  % ending 2
  I hear her
  voice, in the
  morn -- in' hour she
  calls __ me, the
  ra -- di -- o re --
  minds me of my
  home far a --
  way, and
  driv -- in' down the
  road I get a
  feel -- in' that I
  should have been home
  yes -- ter -- day, __
  yes -- ter -- day. __


  Coun -- try
  Roads, __
  take __ me
  home __
  to the
  place __
  I be -- long: __
  West Vir --
  gin -- ia, __
  moun -- tain
  mom -- ma, __
  Take __ me
  home, __
  Coun -- try
  Roads. __

  All my

  % coda
  Roads, __
  take __ me
  home, __
  Coun -- try
  Roads, __
  take __ me
  home, __
  Coun -- try
  Roads. __
}
wordsB = \lyricmode {
  % intro
  "" "" "" ""
  "" "" ""
  "" "" "" All my
  % verse
  mem -- 'ries __
  gath -- er 'round __
  her, __
  min -- er's
  la -- dy, __
  stran -- ger to blue
  wa -- ter. __
  Dark and
  dust -- y, __
  paint -- ed on the
  sky, __
  mist -- y taste of
  moon -- shine, __
  tear -- drop in my eye.
  __
  "" ""
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
  %annotate-spacing = ##t
}

% combined score
%{
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = melody <<
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \context Voice = melody { \small \melody }
      \context Voice = alto { \small \alto }
      \context Lyrics = firstverse \lyricsto melody \wordsA
      \context Lyrics = secondverse \lyricsto melody \wordsB
    >>
    \context PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \context Staff = upper <<
	\set Staff.instrumentName = \markup{ \column { "Soprano/" "Alto" } }
	\set Staff.shortInstrumentName = "S/A"
	\set Staff.printPartCombineTexts = ##f
	\partcombine {\melody} {\alto}
      >>
      \context Staff = lower <<
	%\set Staff.printPartCombineTexts = ##f
	\set Staff.instrumentName = "Bass"
	\set Staff.shortInstrumentName = "Bas."
	\clef bass
	\bass
      >>
    >>
    \new Staff <<
	\clef bass
	\key bes \major \time 4/4
	\transpose c c,, \harmonies
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup{ \column{ "Banjo" "capo'd" "to A" } }
      \set Staff.shortInstrumentName = "Ban."
      \transpose bes a \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \bass
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." }
      \context Staff = upper << \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
  >>
  \layout { }
  \header {
    instrument = "Combined Score"
  }
}
%}

% flute score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = fluteA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose c c' \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
%{
    \context Staff = fluteB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose c c' { \alto }
    }
%}
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}

% flute + alto score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = fluteA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose c c' \melody
      }
    }
    \context Staff = fluteB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose c c' \alto
    }
    \new Lyrics \lyricsto "melody" { \wordsA }
  >>
  \header {
    instrument = "Flute w/ alto part"
    breakbefore=##t
  }
}

% clarinet score
%{
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c \harmonies
    }
    \context Staff = clarinetA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose bes c \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
% {
    \context Staff = clarinetB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose bes c { \altoclar }
    }
% }
    \context Staff = clarinetC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose bes c''
      \bass
    }
  >>
  \header {
    instrument = "Clarinet (Bb)"
    breakbefore=##t
  }
}
%}

% saxophone score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose ees c \harmonies
    }
    \context Staff = saxA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose ees c' { \melody }
      }
    }
    \context Staff = saxB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \new Voice = alto {
	\transpose ees c' { \alto }
      }
    }
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
    \context Staff = saxC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose ees c''
      \removeWithTag #'lo \bass
    }
  >>
  \header {
    instrument = "Saxophone (Eb)"
    breakbefore=##t
  }
}

% banjo/guitar score (capo'ed)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = guiA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	{ \melody }
      }
    }
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
%{
    \context Staff = guiB {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose bes a \bass
    }
%}
  >>
  \header {
    instrument = "Banjo/Guitar"
    breakbefore=##t
  }
}

% cello score (octave-shifted)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = celloA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      % 1 octave down
      \clef bass
      \transpose c c, { \melody }
    }
    \new Lyrics \lyricsto "celloA" { \wordsA }
    %\new Lyrics \lyricsto "celloA" { \wordsB }
%{
    \context Staff = celloB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      % 1 octave down
      \clef bass
      \transpose c c, { \alto }
    }
%}
    \context Staff = celloC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \clef bass 
      \removeWithTag #'lo \bass
    }
  >>
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
}

%{
% banjo/bass score (tablature)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes a \harmonies
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose bes a { \melody }
    }
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
    \new TabStaff <<
      \set Staff.instrumentName = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
      \set Staff.shortInstrumentName = "Ban."
      \set TabStaff.stringTunings = #banjo-open-g-tuning
      \removeWithTag #'key \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \bass
    >>
  >>
  \header {
    instrument = "Banjo/Guitar/Bass, capo'ed up 1 fret"
    breakbefore=##t
  }
}
%}

% piano/guitar score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new Staff <<
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \set Staff.printPartCombineTexts = ##f
      %\small\partcombine {\melody} {\alto}
      \new Voice = melody {
	\small \voiceOne \melody
      }
      \new Voice = alto {
	\small \voiceTwo \alto
      }
    >>
    \new Lyrics \lyricsto "melody" { \small\wordsA }
    \new Lyrics \lyricsto "melody" { \small\wordsB }
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." }
      \context Staff = upper << \time 4/4 \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
  >>
  \layout { }
  \header {
    instrument = "Piano/Guitar"
    breakbefore=##t
  }
}

% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << 
       \set Staff.midiInstrument = "fiddle"
       r1 { \melody }
     >>
    \context Staff=alto << 
       \set Staff.midiInstrument = "fiddle"
       r1 { \alto }
     >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1\ff
      %\transpose c c'
      \removeWithTag #'lo \bass
    >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      r1\pp
      \banjo
    >>
%}
    \context Staff=upper <<
      \set Staff.midiInstrument = "acoustic grand"
      r1
      \pianotop
    >>
    \context Staff=lower <<
      \set Staff.midiInstrument = "acoustic grand"
      r1
      \pianobot
    >>
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 220 4)
      }
    }
}
