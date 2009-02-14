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

melodyintro = \transpose a g \relative c' { % middle c
  r4 a8 e'8 ~ e='4 cis='4 |
  r8 e,8 a e' ~ e=' bis' cis='' e\accent ~ |
  e1 ~ |
  e8 bis cis e ~ e e fis4 |
  cis8 a4. % partial measure
}
melodymain = \transpose a g \relative c' { % middle c
  % verse
  e='4 e |
  \repeat volta 2 {
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
    a2  \bar "||" \break

    \mark \markup { \musicglyph #"scripts.segno" }
    a='4 b4 |
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
    a2 a4
    % "To Coda" should go at end of line, not beginning; align right.
    \once \override TextScript #'self-alignment-X = #left
    \once \override TextScript #'extra-offset = #'( -2.0 . 0.0 )
    \once \override TextScript #'font-size = #2
    b^\markup{ "To Coda" } |
    \break
    a='1 ~ |
    a4 r4 r2 |
  }
  \alternative {
    { r2 e='4 e | }
    { r4 a='4 a a | gis2 a4 b | }
  }
  cis=''4 cis cis cis |
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
  d4
  % D.S. should go at end of line, not beginning; align right.
  % lilypond doesn't allow multiple marks on a single bar line, so
  % attach it to the final rest instead. (and skooch it over a bit)
  \once \override TextScript #'self-alignment-X = #right
  \once \override TextScript #'extra-offset = #'( -2.0 . 0.0 )
  \once \override TextScript #'font-size = #2
  r4^\markup{ "D.S. al Coda" }
  \bar "||"
  \break
  % coda symbol at start of tag
  \partial 4*0 % reset timing for coda
  \mark \markup { \musicglyph #"scripts.coda" }
  a='1 ~ |
  a4 r4 cis8( b) a4 |
  b1 ~ |
  b2 cis8( b) a4 |
  a1 ~ |
  a2 cis8( b) a4 |
  b1 ~ |
  b2 cis8( b) a4 |
  a1 ~ |
  a2 ~ a4\fermata r4 \bar ":|" |
}

melody = { \transpose a g {
  \tag #'key \key a \major
  \time 2/2 % cut time
}
  \melodyintro
  \melodymain
}

alto = \transpose a g \relative c' { % middle c
  \tag #'key \key a \major
  \time 2/2
  r1
}

% same as alto part, but some very low notes raised.
% I assume the clarinet can play E below middle C (but not Eb)
altoclar = \transpose a g \relative c' { % middle c
  \tag #'key \key a \major
  \time 2/2

  r1
}

lowa   = \relative c, { < \tag #'n a \tag #'l \tag #'s \tag #'c a' >4 }
lowbes = \relative c, { < \tag #'n bes \tag #'l \tag #'s \tag #'c bes' >4 }
lowb   = \relative c, { < \tag #'n b   \tag #'l \tag #'s \tag #'c b'   >4 }
lowcx  = \relative c, { < \tag #'n c   \tag #'l \tag #'s \tag #'c c'   >4 }
lowc   = \relative c, { < \tag #'n \tag #'l c   \tag #'s \tag #'c c'   >4 }
lowdes = \relative c, { < \tag #'n \tag #'l \tag #'s des \tag #'c des' >4 }
lowdx = \relative c,  { < \tag #'n \tag #'l \tag #'s d   \tag #'c d'   >4 }
bass = \transpose a g \relative c { % c below middle c
  \tag #'key \tag #'n \tag #'l \tag #'s \tag #'c \key a \major
  \time 2/2

  % intro
  a=,2 e | a e | a e | a e |
  a=,2 e |
  % verse
  \repeat volta 2 {
    a e | fis cis' | fis, fis |
    e=,2 b' | e, b' | d, d | a' e |
    a=,2 e | a e | fis cis' | fis, fis |
    e=,2 b' | e, b' | d2 cis4 b | a=,2
    % signo
    e=,2 | a e | a cis,4 d | e=,2 b' | e, b' |
    fis=,2 cis | fis fis4 e | d2 a' | d2 cis4 b | a=,2 e |
    a=,2 cis,4 d | e=,2 b' | e, b4 cis | d=,2 a' | d2 cis4 b |
    a=,2 e | a e |
  }
  \alternative {
    { a=,2 e | }
    { fis=,1 | e1 | }
  }
  % b part
  a=,2 e | a b4 cis | d2 cis4 b | a=,2 gis4 fis |
  e=,2 b' | e, b' | fis=,2 fis | g g | d' cis4 b |
  a=,2 gis4 fis | e=,2 b' | e, b' | e, b' | e4 r4
  % outro
  \partial 4*0 % reset timing for coda
  a,=,2 e | a gis4 fis | e=,2 b' | e, fis4 gis | a=,2 e |
  a=,2 gis4 fis | e=,2 b' | e, e | a e | a ~ a4\fermata r4 |
}

pianotop = <<
  \new Voice = "first" { \voiceOne \melody }
  \new Voice = "second" \transpose a g { \voiceTwo

  \tag #'key \key a \major
  \time 2/2

  % intro
  s4 s2 a4 | s1 | r8 e'8 a' cis'' ~ cis''4 <cis'' a'>4 |
  s8*3 cis''8 ~ cis'' cis'' <cis'' a'>4 |
  s2 <cis' a>4 <cis' a>4 
  % verse
  \repeat volta 2 {
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
  } \alternative {
    { r8 a8 b cis' ~ cis'4 <cis' a>4 | }
    { r8 cis'8 ~ <cis' fis'>4 <cis' fis'>4 <cis' fis'>4 |
      r8 b8 ~ <b e'>4 <d' fis'>4 <e' gis'>4 | }
  }
  % b part
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
  <e' gis'>4 r4
  % outro
  \partial 4*0 % reset timing for coda
  r8 a8 cis' e' ~ e'4 <e' cis'>4 |
  r8 cis'8 e' a' ~ a'4 e'4 |
  r8 d'8 e' gis' ~ gis'4 <gis' e'>4 |
  r8 d'8 e' gis' ~ gis'4 fis'4 |
  r8 a8 cis' e' ~ e'4 <e' cis'>4 |
  r8 cis'8 e' a' ~ a'4 e'4 |
  r8 d'8 e' gis' ~ gis'4 <gis' e'>4 |
  r8 d'8 e' gis' ~ gis'4 e'4 |
  r8 a8 cis' e' ~ e'4 <e' cis'>4 |
  r8 a8 cis' e' ~ \acciaccatura b8 <e' cis'>4\fermata r4 |
}
>>
pianobot = \bass

harmonies = \transpose a g \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \chordProperties
  \time 2/2

  % intro
  a4 a a a |
  a4 a a a |
  a4 a a a |
  a4 a a a | \break
  a4 a a a |

  % verse
  \repeat volta 2 {
    \mark \default % A part
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
    % to coda
    a4 a a a |
    a4 a a a |
  }
  \alternative {
    { a4 a a a | }
    { fis4:m fis:m fis:m fis:m | e4 e e e | }
  }

  \mark\default % B part
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
  % ds al coda
  %\mark\default % C part % multiple marks here not allowed.
  % outro
  \partial 4*0 % reset timing for coda
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

wordsA = \lyricmode {
  % intro
  "" "" ""
  "" "" "" "" "" ""
  "" "" "" "" "" |
  "" ""
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
  All my
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
  "" "" ""
  "" "" "" "" "" ""
  "" "" "" "" "" |
  "" "" "" ""
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
  %__
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
  %annotate-spacing = ##t
}

% combined score
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
      \context Voice = melody { \small\melody }
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
	\keepWithTag #'n \bass
      >>
    >>
%{
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
      \removeWithTag #'key \keepWithTag #'n \bass
    >>
%}
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

% clarinet score
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
	\transpose bes c {
	  \key g \major
	  \time 2/2
	  {\transpose c c' \melodyintro}
	  \melodymain
	}
      }
    }
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
%{
    \context Staff = clarinetB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose bes c { \altoclar }
    }
%}
    \context Staff = clarinetC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose bes c''
      \keepWithTag #'c \bass
    }
  >>
  \header {
    instrument = "Clarinet (Bb)"
    breakbefore=##t
  }
}

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
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
%{
    \context Staff = saxB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \new Voice = alto {
	\transpose ees c' { \alto }
      }
    }
%}
    \context Staff = saxC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose ees c''
      \keepWithTag #'s \bass
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
      \keepWithTag #'l \bass
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
      \removeWithTag #'key \keepWithTag #'n \bass
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
	\small{\melody}
      }
    >>
    \new Lyrics \lyricsto "melody" { \small\wordsA }
    %\new Lyrics \lyricsto "melody" { \small\wordsB }
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
      \keepWithTag #'n \bass
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
