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

% "traditional" melody.  Doesn't go well w/ banjo part?
tradmel = \relative c''
{
  \tag #'key \key g \major
  \time 4/4

  \tag #'partial \partial 8*2
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
  } \alternative {
    { d8 e g a g2 | }
    { d8 e g a g4 }
  }
}
closerX = \relative c' { d8 e g b  g e d c | cis8 e g b  c, d fis a | }
closer = \relative c'' 
{
  r4 |
  \times 2/3 { g'8 fis e } d8 e d b a g |
  << \tag #'std \closerX
     \tag #'flute \transpose c c' \closerX
   >>
  \times 2/3 { g8 a b } \times 2/3 { d e fis } g4
  \bar "|."
}
jethro = \relative c''
{
  \tag #'key \key g \major
  \time 4/4

  \tag #'partial \partial 8*2
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
  } \alternative {
    { d8 e g a g2 | }
    { d8 e g a g4 }
  }
  % closer?
  \tag #'closer \keepWithTag #'std \closer
}
fjethro = \relative c''
{
  \tag #'key \key g \major
  \time 4/4

  \tag #'partial \partial 8*2
  e8 fis

  \repeat volta 2 {
  g8 fis g e d e d b |
  c8 b c e d g a ais |
  <b g>8 <b g> <b g> g a g e c |
  } \alternative {
    { d8 e g a g4 e8 fis }
    { d8 e g a g4 r4 }
  }
  \repeat volta 2 {
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g g g |
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g g g |
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g e c |
  } \alternative {
    { d8 e g a g2 | }
    { d8 e g a g4 }
  }
  % closer?
  \tag #'closer \keepWithTag #'flute \closer
}
melody = \relative c''
{
  \voiceOne
  \tag #'key \key g \major
  \time 4/4

  \tag #'partial \partial 8*2
  d8(e)
  \repeat volta 2 {
    g4 g d g | c,8 d e4 d2 |
    g4 g d e |
  } \alternative {
    { d8 b a4 g2 } { \voiceTwo d'8 b a4 g2 }
  }
  \repeat volta 2 {
    \grace s16
    ais8 b b4 a8 g g4 |
    ais8 b b4 d,8 e g4 |
    ais8 b b4 a8 g e d |
  } \alternative {
    { d8 e g a g2 | }
    { d8 e g a g4 }
  }
}
alternate = \relative c''
{
  \voiceTwo
  \tag #'key \key g \major
  \time 4/4

  \tag #'partial \partial 8*2
  b8(c)
  \repeat volta 2 {
    d4 d b d | g,8 a c4 b2 |
    d4 d b c |
  } \alternative {
    { a8 g fis4 d2 } { \voiceOne fis'8 g a4 g2 }
  }
  \repeat volta 2 {
    \grace s16
    cis,8 d d4 c8 b b4 |
    cis8 d d4 g,8 a b4 |
    cis8 d d4 c8 b a g |
  } \alternative {
    { fis8 g d' e d2 | }
    { fis,8 g d' e d4 }
  }
}

bass = \relative c,
{
  \tag #'key \key g \major
  \time 4/4
  \tag #'partial \partial 8*2
  r4
  \repeat volta 2 {
    g4 r d' r | c4 r g r |
    g4 r d' r |
  } \alternative {
    { d4 r g, r | }
    { d'4 r g, r | }
  }
  \repeat volta 2 {
    \grace s16 g4 r d' r | g,4 r d' r | g,4 r d' r |
  } \alternative {
    { d4 r g, r }
    { d'4 r g, }
  }
  \tag #'closer
  { r |
    g4 r d' r | g, r d' r | a r d r | g, r d'4
    \bar "|."
  }
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
   \time 4/4
   \tag #'partial \partial 8*2 r4
   \repeat volta 2 {
     \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
     \mark\default
     g2 g | c g |
     g2 g | 
   } \alternative {
     { d2 g }
     { d2 g }
   }
   \repeat volta 2 {
     \grace s16
     \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
     \mark\default
     g2 g | g g | g g |
   } \alternative {
     { d2 g | }
     { d2 g4 }
   }
   \tag #'closer
   { r4 |
     g2 g | g g | a:7 d:7 | g g4
     \bar "|."
   }
}

guitarA = \relative c
{
  \time 4/4
  \tag #'partial \partial 8*2
  r4
  \repeat volta 2 {
    g2 d' | c2 g | g2 d' |
  } \alternative {
    { d2 g, | }
    { d'2 g, | }
  }
  \repeat volta 2 {
    \grace s16
    g2 d' | g,2 d' | g,2 d' |
  } \alternative {
    {  d2 g, | }
    {  d'2 g,4-\tag #'closer ~ }
  }
  \tag #'closer
  {
    g4 |
    g2 d' | g, d' | a d | g, d'4
    \bar "|."
  }
}
guitarB = \relative c
{
  \time 4/4
  \tag #'partial \partial 8*2
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
  } \alternative {
    { s4 <a d fis>\arpeggio s4 <g d' g>\arpeggio | }
    { s4 <a d fis>\arpeggio s4 }
  }
  \tag #'closer
  {
    <g d' g>4\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <g cis e>\arpeggio s4 <a d fis>\arpeggio |
    s4  <g d' g>\arpeggio <g d' g>
    \bar "|."
  }
}
guitarC = \relative c
{
  \time 4/4
  \tag #'partial \partial 8*2
  s4 \arpeggioUp
  \repeat volta 2 {
    \repeat unfold 3 { r4 s4 r4 s4 | }
  } \alternative {
    { r4 s4 r4 s4 | }
    { r4 s4 r4 s4 | }
  }
  \repeat volta 2 {
    \grace s16
    \repeat unfold 3 { r4 s4 r4 s4 | }
  } \alternative {
    { r4 s4 r4 s4 }
    { r4 s4 r4 }
  }
  \tag #'closer
  { s4 |
    \repeat unfold 3 { r4 s4 r4 s4 | }
    r4 s4 s4
    \bar "|."
  }
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
    \new Staff <<
      \set Staff.instrument = "Trad. Mel."
      \set Staff.instr = "Tra."
      { \tradmel r4 \bar "||" \break }
    >>
    \new Staff << 
      \set Staff.instrument = "Melody "
      \set Staff.instr = "Mel."
      \set Staff.printPartCombineTexts = ##f
      \partcombine { \melody r4 \bar "||" } { \alternate r4 }

    >>
    \new Staff <<
      \set Staff.instrument = "Variant"
      \set Staff.instr = "Var."
      \jethro
    >>
    \new Staff <<
      \set Staff.instrument = "Guitar"
      \set Staff.instr = "Gui."
      \clef "treble_8"
      \key g \major
      \new Voice { \guitarA }
      \new Voice { \guitarB }
      \new Voice { \guitarC }
    >>
    \new Staff << \clef "bass_8"
      \set Staff.instrument = "Bass"
      \set Staff.instr = "Bas."
      \bass
    >>
  >>
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
      \melody \bar "||" \break
    }
    \context Staff = fluteB {
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \alternate
    }
    \context Staff = fluteC {
      \set Staff.instrument = "Variant"
      \set Staff.instr = "Var."
      \fjethro
    }
  >>
}

% cello score (octave-shifted)
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
      \transpose c c,, { \clef bass \melody  \bar "||" \break } % 2 octaves down
    }
    \context Staff = celloB {
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose c c,, { \clef bass \alternate } % 2 octaves down
    }
    \context Staff = celloC {
      \set Staff.instrument = "Variant"
      \set Staff.instr = "Var."
      \transpose c c,, { \clef bass \jethro } % 2 octaves down
    }
    \context Staff = celloD {
      \set Staff.instrument = "Bass"
      \set Staff.instr = "Bas."
      \transpose c c' { \clef bass \bass } % 1 octave up
    }
  >>
}

% guitar/bass score (tablature)
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
      \melody \break \keepWithTag #'std \closer
    }
    \new TabStaff << 
      \set TabStaff.instrument = "Guitar"
      \set TabStaff.instr = "Gui."
      \time 4/4
      \new TabVoice \guitarA
      \new TabVoice \guitarB
    >>
    \new TabStaff <<
      \set TabStaff.instrument = "Bass"
      \set TabStaff.instr = "Bas."
      \set TabStaff.stringTunings = #bass-tuning
      \removeWithTag #'key \bass
    >>
  >>
}

% piano part (same as guitar part)
\score {
  \header {
    instrument = "Piano"
    breakbefore=##t
  }
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new PianoStaff <<
      \new Staff {
	\set Staff.printPartCombineTexts = ##f
	\partcombine
	{ \transpose c c' \guitarB }
	{ \partcombine { \partial 8*2 r4 } \guitarC }
      }
      \new Staff { \clef bass \guitarA }
    >>
  >>
}

% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=trad <<
      \set Staff.midiInstrument = "flute"
      \transpose c c' \tradmel
    >>
    \context Staff=melody <<
      \set Staff.midiInstrument = "fiddle"
      {
	\partial 8*2
	s4 | s1*15 | s2 s4
	\removeWithTag #'partial \melody
      }
    >>
    \context Staff=harmony <<
      \set Staff.midiInstrument = "fiddle"
      {
	\partial 8*2
	s4 | s1*15 | s2 s4
	\removeWithTag #'partial \alternate
      }
    >>
    \context Staff=jethro <<
      \set Staff.midiInstrument = "flute"
      \transpose c c' {
	\partial 8*2
	s4 | s1*31 | s2 s4
	\removeWithTag #'partial \jethro % includes closer
      }
    >>
    \context Staff=guitar <<
      \set Staff.midiInstrument = "acoustic guitar (steel)"
      \time 4/4
      \new Voice {
	\repeat unfold 2 { \removeWithTag #'closer \guitarA }
	\removeWithTag #'partial \guitarA % includes closer
      }
      \new Voice {
	\repeat unfold 2 { \removeWithTag #'closer \guitarB }
	\removeWithTag #'partial \guitarB % includes closer
      }
    >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      \repeat unfold 2 { \removeWithTag #'closer \bass }
      \removeWithTag #'partial \bass % includes closer
    >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      \repeat unfold 2 { \removeWithTag #'closer \harmonies }
      \removeWithTag #'partial \harmonies % includes closer
    >>
%}
  >>
  \midi {
    \tempo 2=120
  }
}
