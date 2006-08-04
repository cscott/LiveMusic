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

tradmel = \relative c''
{
  \set Staff.instrument = "Trad. "
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
}
closer = \relative c'' 
{
  \times 2/3 { g'8 fis e } d8 e d b a g |
  d8 e g b  g e d c |
  cis8 e g b  c, d fis a |
  \times 2/3 { g8 a b } \times 2/3 { d e fis } g4
  \bar "|."
}
jethro = \relative c''
{
  \key g \major
  \time 4/4

  \partial 8*2
  e8 fis

  \repeat volta 2 {
  g8 fis g e d e d b |
  c8 b c e d g, a ais |
  <b g>8 <b g> <b g> g a g e c |
  } \alternative {
    { d8 e g a g4 e'8 fis }
    { d,8 e g a g4 r4 }
  }
  \repeat volta 2 {
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g g g |
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g g g |
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g e c |
    d8 e g a g2 |
  }
  % closer?
  \closer
}
melody = \relative c''
{
  \key g \major
  \time 4/4

  \partial 8*2
  d8(e)
  \repeat volta 2 {
    g4 g d g | c,8 d e4 d2 |
    g4 g d g |
  } \alternative {
    { d8 b a4 g2 } { d'8 b a4 g2 }
  }
  \repeat volta 2 {
    \grace s16
    ais8 b b4 a8 g g4 |
    ais8 b b4 d,8 e g4 |
    ais8 b b4 a8 g e d |
    d8 e g a g2 |
  }
}
alternate = \relative c''
{
  \key g \major
  \time 4/4

  \partial 8*2
  b8(c)
  \repeat volta 2 {
    d4 d b d | g,8 a c4 b2 |
    d4 d b d |
  } \alternative {
    { a8 g fis4 d2 } { fis'8 g a4 g2 }
  }
  \repeat volta 2 {
    \grace s16
    cis,8 d d4 c8 b d,4 |
    cis'8 d d4 g,8 a b4 |
    cis8 d d4 c8 b a g |
    fis8 g d' e d2 |
  }
}

bass = \relative c,
{
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
  g4 r d' r | g, r d' r | a r d r | g, r d'4
  \bar "|."
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
   g2 g | g g | a:7 d:7 | g g4
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
  g2 d' | g, d' | a d | g, d'4
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
  s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
  s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
  s4 <g cis e>\arpeggio s4 <a d fis>\arpeggio |
  s4  <g d' g>\arpeggio <g d' g>
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  raggedbottom = ##t
}

% combined score
\score {
  \header {
    instrument = "Combined Score"
  }
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
%{
    \new Staff << \tradmel >>
%}
    \new Staff << 
      \set Staff.instrument = "Melody "
      \melody
    >>
    \new Staff <<
      \set Staff.instrument = "Alt. Melody "
      \alternate
    >>
    \new Staff <<
      \set Staff.instrument = "Variant"
      \jethro
    >>
%{
    \new Staff << \clef "treble_8"
		  \new Voice { \guitarA }
		  \new Voice { \guitarB }
		>>
%}
    \new TabStaff << 
      \set TabStaff.instrument = "Guitar"
      \time 4/4
      \partial 8*2
      \new TabVoice \guitarA
      \new TabVoice \guitarB
    >>
    \new TabStaff <<
      \set TabStaff.instrument = "Bass"
      \set TabStaff.stringTunings = #bass-tuning
      \bass
    >>
  >>
  \layout { }
}

% cello score
\score {
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = celloA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \transpose c c,, << \clef bass \melody >> % 2 octaves down
    }
    \context Staff = celloB {
      \set Staff.instrument = "Alt. Melody"
      \set Staff.instr = "Alt."
      \transpose c c,, << \clef bass \alternate >> % 2 octaves down
    }
    \context Staff = celloC {
      \set Staff.instrument = "Variant"
      \set Staff.instr = "Var."
      \transpose c c,, << \clef bass \jethro >> % 2 octaves down
    }
    \context Staff = celloD {
      \set Staff.instrument = "Bass"
      \set Staff.instr = "Bas."
      \transpose c c' << \clef bass \bass >> % 1 octave up
    }
  >>
  \layout { }
}
% flute score
\score {
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = fluteA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \melody
    }
    \context Staff = fluteB {
      \set Staff.instrument = "Alt. Melody"
      \set Staff.instr = "Alt."
      \alternate
    }
    \context Staff = fluteC {
      \set Staff.instrument = "Variant"
      \set Staff.instr = "Var."
      \jethro
    }
  >>
  \layout { }
}
% guitar/bass score
\score {
  \header {
    instrument = "Guitar/Bass"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = melody {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \melody \break \closer
    }
    \new Staff << \clef "treble_8"
		  \set Staff.instrument = "Guitar"
		  \set Staff.instr = "Gui."
		  \new Voice { \guitarA }
		  \new Voice { \guitarB }
		>>
    \new TabStaff << 
      \set TabStaff.instrument = "Guitar"
      \set TabStaff.instr = "Gui."
      \time 4/4
      \partial 8*2
      \new TabVoice \guitarA
      \new TabVoice \guitarB
    >>
    \new TabStaff <<
      \set TabStaff.instrument = "Bass"
      \set TabStaff.instr = "Bas."
      \set TabStaff.stringTunings = #bass-tuning
      \bass
    >>
  >>
  \layout { }
}

% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
%{
    \context Staff=trad << \tradmel >>
    \context Staff=jethro <<
      \set Staff.midiInstrument = "fiddle"
      \jethro
    >>
%}
    \context Staff=melody <<
      \set Staff.midiInstrument = "fiddle"
      \melody
    >>
    \context Staff=alternate <<
      \set Staff.midiInstrument = "fiddle"
      \alternate
    >>
    \context Staff=guitar <<
      \set Staff.midiInstrument = "acoustic guitar (steel)"
      \time 4/4
      \partial 8*2
      \new Voice \guitarA
      \new Voice \guitarB >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      \bass
    >>
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      \harmonies
    >>
  >>
  \midi {
    \tempo 2=120
  }
}
