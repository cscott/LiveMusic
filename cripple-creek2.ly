\version "2.6.3"
\header {
  title = "Cripple Creek"
  piece = "Traditional"
  mutopiatitle = "Cripple Creek"
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

melody = \relative c''
{
  \set Staff.instrument = "Melody "
  \set Staff.midiInstrument = "fiddle"
  \key g \major
  \time 4/4

  \partial 8*2
  e8 fis

  \repeat volta 2 {
  g4 g d b |
  c4 e d2 |
  b4 b a g |
  } \alternative {
    { e4 a g e'8 fis |}
    { e,4 a g2 |}
  }
  \repeat volta 2 {
    \appoggiatura a16 b4 a4 g2 |
    \appoggiatura a16 b2 d,2 |
    \appoggiatura a'16 b4 \appoggiatura a16 b4 a4 g |
    d8 e g a g2 |
  }
  \bar "|."
}
alternate = \relative c''
{
  \set Staff.instrument = "Alt. Melody "
  \set Staff.midiInstrument = "fiddle"
  \key g \major
  \time 4/4

  \partial 8*2
  d16(e)
  \repeat volta 2 {
    g8 g d g | c,16 d e8 d4 |
    g8 g d g |
  } \alternative {
    { d16 b a8 g4 } { d'16 b a8 g4 }
  }
}

bass = \relative c,
{
  \set Staff.midiInstrument = "acoustic bass"
  \key g \major
  \time 4/4
  \partial 8*2
  r4
  \repeat volta 2 {
    g4 r d' r | c4 r g r |
    g4 r d' r |
  } \alternative {
    { d4 r g, r | }
    { d'4 r g, r | }
  }
  \repeat volta 2 {
    \grace s16 g4 r d' r | g,4 r d' r | g,4 r d' r | d4 r g, r |
  }
}

harmonies = \chordmode {
   \set Staff.midiInstrument = "pizzicato strings"
   \time 4/4
   \partial 8*2 r4
   \repeat volta 2 {
   g2 g | c g |
   g2 g | 
   } \alternative {
     { d2 g }
     { d2 g }
   }
   \repeat volta 2 {
     \grace s16 g2 g | g g | g g | d g |
   }
}

guitarA = \relative c
{
  r4
  \repeat volta 2 {
    g2 d' | c2 g | g2 d' |
  } \alternative {
    { d2 g, | }
    { d'2 g, | }
  }
  \repeat volta 2 {
    \grace s16 g2 d' | g,2 d' | g,2 d' | d2 g, |
  }
}
guitarB = \relative c
{
  s4 \arpeggioUp
  \repeat volta 2 {
    s4 <g' d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <g c e>\arpeggio s4 <g d' g>\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
  } \alternative {
    { s4 <a d fis>\arpeggio s4 <g d' g>\arpeggio | }
    { s4 <a d fis>\arpeggio s4 <g d' g>\arpeggio | }
  }
  \repeat volta 2 {
    \grace s16
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <a d fis>\arpeggio s4 <g d' g>\arpeggio |
  }
}


\score {

  <<
    \context ChordNames {
      \set chordChanges = ##t
      \transpose g a \harmonies
    }
    \new Staff << \transpose g a \melody >>
%{
    \new Staff << \clef "treble_8"
		  \new Voice { \transpose g a \guitarA }
		  \new Voice { \transpose g a \guitarB }
		>>
%}
    \new TabStaff << 
      \set TabStaff.instrument = \markup{ \column{ "Guitar" "capo 2" } }
      \time 4/4
      \partial 8*2
      \new TabVoice \guitarA
      \new TabVoice \guitarB
    >>
    \new TabStaff <<
      \set TabStaff.instrument = "Bass"
      \set TabStaff.stringTunings = #bass-tuning
      \transpose g a \bass
    >>
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << \melody >>
    \context Staff=guitar <<
      \set Staff.midiInstrument = "acoustic guitar (steel)"
      \time 4/4
      \partial 8*2
      \new Voice \guitarA
      \new Voice \guitarB >>
    \context Staff=bass << \bass >>
%    \context Staff=chords << r4\p \harmonies >>
  >>
  \midi {
    \tempo 2=120
  }
}
