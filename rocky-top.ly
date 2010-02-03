\version "2.12.0"
\header {
  title = "Rocky Top"
  piece = "Traditional"
  mutopiatitle = "Rocky Top"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar, Banjo, Piano"
  source = "Transcribed by ear (no copyright)"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2006/Jul/8"
  meter = 129
}
#(set-default-paper-size "letter")

melody = \transpose a g \relative c''
{
  \tag #'key \key a \major
  \time 4/4

  % intro
  a4 a a2 | b2 b | a1 | r1 | \break

  % verse
  \repeat volta 7 {
  e'2 e | e e | fis fis | e4 cis a2 |
  a2 a4 a | b a b2 | cis1 | r1 |
  e2 e | e e | fis fis | e4 cis a2 |
  a2 a | e'4 cis b2 | a1 | r1 | %\bar "||"

  % chorus
  fis'4 fis fis2~ | fis2 fis | e e | e1 |
  g2 g | g4( fis2) e4 | fis1 | r1 |
  fis1 | fis | e4 cis a2~ | a1 |
  a4 a a2 | b2 b | a1 | }
  \alternative { { r1 | } { r1 | } } \break

  % tag
  a4 a a2 | b2 b | cis1 | r1 |
  a4 a a2 | b2 b | a1( | g1 | a1) | \bar "|."
}
altonotag = \transpose a g \relative c'
{
  \tag #'key \key a \major
  \time 4/4

  % intro
  e4 e e2 | g2 fis | e1 | r1 | \break

  % verse
  \repeat volta 7 {
  cis'2 cis | cis cis | d d | cis4 a e2 |
  fis2 fis4 fis | gis fis gis2 | a1 | r1 |
  cis2 cis | cis cis | d d | cis4 a e2 |
  fis2 fis | b4 gis gis2 | e1 | r1 | %\bar "||"

  % chorus
  cis'4 cis cis2~ | cis2 cis | b b | b1 |
  d2 d | d4( d2) d4 | d1 | r1 |
  d1 | d | cis4 a e2~ | e1 |
  e4 e e2 | g2 fis | e1 | }
  \alternative { { r1 | } { r1 | } } \break
}
altotag =  \transpose a g \relative c' {
  % tag
  e4 e e2 | g2 fis | a1 | r1
  e4 e e2 | g2 fis | e1( | <\tag #'normal d \tag #'sax g >1 | e1) | \bar "|."
}
alto = { \altonotag \removeWithTag #'sax \altotag }
tenor = \transpose a g \relative c'
{
  \tag #'key \key a \major
  \time 4/4

  % intro
  cis4 cis cis2 | d2 d | cis1 | r1 | \break

  % verse
  \repeat volta 7 {
  a'2 a | a a | a a | a4 e cis2 |
  cis2 cis4 cis | e e e2 | e1 | r1 |
  a2 a | a a | a a | a4 e cis2 |
  cis2 cis | gis'4 e e2 | cis1 | r1 | %\bar "||"

  % chorus
  a'4 a a2~ | a2 a | gis gis | gis1 |
  b2 b | b4( b2) b4 | a1 | r1 |
  a1 | a | a4 e cis2~ | cis1 |
  cis4 cis cis2 | d2 d | cis1 | }
  \alternative { { r1 | } { r1 | } } \break

  % tag
  cis4 cis cis2 | d2 d | e1 | r1 |
  cis4 cis cis2 | d2 d | cis1( | b1 | cis1) | \bar "|."
}

bass = \transpose a g {
  \tag #'key \key a \major
  \time 4/4

  % intro
  a2 e | g d | a e | a4 e fis gis | \break

  % verse
  \repeat volta 7 {
    a2 e | a e | d a, | a gis | fis cis | e b, | a e |
    a2 e | a, b, | c cis | d a, | a gis | fis cis | e b, | a e |
    a2 gis | fis cis | fis cis | e b, | e fis | g d | g d |
    d2 e | f fis | d a, | d a, | a e | a e | a e |
    g d | a e | }
  \alternative { { a2 e | } { a2 e | } } \break

  a2 e | g d | a e | a4 e fis gis |
  g2 d | a e | a4 e fis gis | g4 d e fis | a1
}

basssax = \transpose a g {
  \tag #'key \key a \major
  \time 4/4

  % intro
  a2 e | g d' | a e | a4 e fis gis | \break

  % verse
  \repeat volta 7 {
    a2 e | a e | d' a | a gis | fis cis' | e b | a e |
    a2 e | a b | c' cis' | d' a | a gis | fis cis' | e b | a e |
    a2 gis | fis cis' | fis cis' | e b | e fis | g d' | g d' |
    d'2 e | f fis | d' a | d' a | a e | a e | a e |
    g d' | a e | }
  \alternative { { a2 e | } { a2 e | } } \break

  a2 e | g d' | a e | a4 e fis gis |
  g2 d' | a e | a4 e fis gis | g4 b a g | a1
}

words = \lyricmode {
  % intro
  "" "" "" "" "" ""
  % verse
  Wish that I was up on Rock -- y Top
  back in the Ten -- nes -- see hills.
  Ain't no smog -- gy smoke on Rock -- y Top
  Ain't no tel -- le -- phone bills.
  % chorus
  Rock -- y Top __ you'll al -- ways be
  home sweet home __ to me.
  Good ol' Rock -- y Top
  Rock -- y Top Ten -- ne -- see.
  % tag.
  Rock -- y Top Ten -- ne -- see.
  Rock -- y Top Ten -- ne -- see. __ __
}

harmonies = \transpose a g \chordmode {
   % intro
   a2 a | g d | a a | a a |

   % verse
  \repeat volta 7 {
   a2 a | a a | d d | a a |
   fis:m fis:m | e e | a a | a a |
   a a | a a | d d | a a |
   fis:m fis:m | e e | a a | a a |

   % chorus
   fis:m fis:m | fis:m fis:m | e e | e e |
   g g | g g | d d | d d |
   d d | d d | a a | a a | 
   a a | g d | a a | }
   \alternative { { a a } { a a } }

   % tag
   a a | g d | a a | a a |
   a a | g d | a a | g g | a a |
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
}

\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = melody <<
      \context Voice = melody { \small\melody }
      \context Lyrics = one \lyricsto melody \words
    >>
    \context PianoStaff <<
      \context Staff = upper <<
	\set Staff.printPartCombineTexts = ##f
	\partcombine \melody \alto
      >>
      \context Staff = lower <<
	\set Staff.printPartCombineTexts = ##f
	\clef bass
	\partcombine \tenor \bass
      >>
    >>
  >>
  \layout { }
  \header {
    instrument = "Combined Score"
  }
}

\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c' \harmonies
    }
    \new Staff << 
	\set Staff.instrumentName = "Melody "
	\set Staff.shortInstrumentName = "Mel. "
	\new Voice =  melody \transpose bes c \melody
      >>
    \new Lyrics \lyricsto melody \words
    \new Staff <<
      \set Staff.instrumentName = "Alto "
      \set Staff.shortInstrumentName = "Alt. "
      \transpose bes c' \alto
    >>
  >>
  \layout { }
 \header {
   instrument = "Clarinet"
   breakbefore=##t
 }
}

% saxophone score (transposed)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose ees c' \harmonies
    }
    \new Staff << 
	\set Staff.instrumentName = "Melody "
	\set Staff.shortInstrumentName = "Mel. "
	\new Voice =  melody \transpose ees c \melody
      >>
    \new Lyrics \lyricsto melody \words
    \new Staff <<
      \set Staff.instrumentName = "Alto "
      \set Staff.shortInstrumentName = "Alt. "
      \transpose ees c { \altonotag \removeWithTag #'normal \altotag }
    >>
    \new Staff <<
      \set Staff.instrumentName = "Bass "
      \set Staff.shortInstrumentName = "Bas. "
      \transpose ees c' \basssax
    >>
  >>
  \layout { }
 \header {
   instrument = "Saxophone"
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
    \new Staff << 
	\set Staff.instrumentName = "Melody "
	\set Staff.shortInstrumentName = "Mel. "
	\clef bass
	\new Voice =  melody \transpose c c,, \melody
      >>
    \new Lyrics \lyricsto melody \words
    \new Staff <<
      \clef bass
      \set Staff.instrumentName = "Alto "
      \set Staff.shortInstrumentName = "Alt. "
      \transpose c c,, \alto
    >>
    \new Staff <<
      \clef bass
      \set Staff.instrumentName = "Bass "
      \set Staff.shortInstrumentName = "Bas. "
      \bass
    >>
  >>
  \layout { }
 \header {
   instrument = "Cello"
   breakbefore=##t
 }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody <<
      \set Staff.midiInstrument = "fiddle"
      \melody
    >>
    \context Staff=alto <<
      \set Staff.midiInstrument = "fiddle"
      \alto
    >>
    \context Staff=tenor <<
      \set Staff.midiInstrument = "fiddle"
      \tenor
    >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      %\transpose c c'
      \bass
    >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      \harmonies
    >>
%}
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 125 2)
      }
    }
}
